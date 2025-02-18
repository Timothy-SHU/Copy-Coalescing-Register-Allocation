; ModuleID = 'cpp_init.c'
source_filename = "cpp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_flags = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.builtin_operator = type { ptr, i16, i16 }
%struct.builtin_macro = type { ptr, i16, i16, i8 }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cset_converter = type { ptr, ptr, i32 }
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
%struct.cpp_comment = type { ptr, i32 }
%struct.def_pragma_macro = type { ptr, ptr, ptr }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }

@_cpp_trigraph_map = dso_local local_unnamed_addr constant <{ [63 x i8], [193 x i8] }> <{ [63 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00|\00\00\00\00\00^[]\00\00\00~\00\\\00\00\00\00\00\00\00\00\00\00\00\00{#}", [193 x i8] zeroinitializer }>, align 16
@lang_defaults = internal unnamed_addr constant [10 x %struct.lang_flags] [%struct.lang_flags { i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0 }, %struct.lang_flags { i8 1, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 1, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0 }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@operator_array = internal unnamed_addr constant [11 x %struct.builtin_operator] [%struct.builtin_operator { ptr @.str.9, i16 3, i16 15 }, %struct.builtin_operator { ptr @.str.10, i16 6, i16 32 }, %struct.builtin_operator { ptr @.str.11, i16 6, i16 9 }, %struct.builtin_operator { ptr @.str.12, i16 5, i16 10 }, %struct.builtin_operator { ptr @.str.13, i16 5, i16 14 }, %struct.builtin_operator { ptr @.str.14, i16 3, i16 1 }, %struct.builtin_operator { ptr @.str.15, i16 6, i16 24 }, %struct.builtin_operator { ptr @.str.16, i16 2, i16 16 }, %struct.builtin_operator { ptr @.str.17, i16 5, i16 33 }, %struct.builtin_operator { ptr @.str.18, i16 3, i16 11 }, %struct.builtin_operator { ptr @.str.19, i16 6, i16 34 }], align 16
@builtin_array = internal constant [10 x %struct.builtin_macro] [%struct.builtin_macro { ptr @.str.20, i16 13, i16 8, i8 0 }, %struct.builtin_macro { ptr @.str.21, i16 8, i16 5, i8 0 }, %struct.builtin_macro { ptr @.str.22, i16 8, i16 1, i8 0 }, %struct.builtin_macro { ptr @.str.23, i16 8, i16 2, i8 0 }, %struct.builtin_macro { ptr @.str.24, i16 13, i16 3, i8 0 }, %struct.builtin_macro { ptr @.str.25, i16 8, i16 0, i8 1 }, %struct.builtin_macro { ptr @.str.26, i16 17, i16 4, i8 1 }, %struct.builtin_macro { ptr @.str.27, i16 11, i16 9, i8 1 }, %struct.builtin_macro { ptr @.str.28, i16 7, i16 7, i8 1 }, %struct.builtin_macro { ptr @.str.29, i16 8, i16 6, i8 1 }], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"__STDC__ 1\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"__cplusplus 1\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"__ASSEMBLER__ 1\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199409L\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199901L\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 1\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 0\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__OBJC__ 1\00", align 1
@init_library.initialized = internal unnamed_addr global i1 false, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"and_eq\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"bitand\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"bitor\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"compl\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"not_eq\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"or_eq\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"xor_eq\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"__TIMESTAMP__\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"__TIME__\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"__DATE__\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"__FILE__\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"__BASE_FILE__\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__LINE__\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"__INCLUDE_LEVEL__\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"__COUNTER__\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"_Pragma\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"__STDC__\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !50 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #8
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
  %5 = tail call ptr @__ctype_toupper_loc() #8
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cpp_set_lang(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !57
  %6 = load i8, ptr %4, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  store i8 %6, ptr %7, align 1, !tbaa !76
  %8 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !77
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  store i8 %9, ptr %10, align 8, !tbaa !78
  %11 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 2
  %12 = load i8, ptr %11, align 2, !tbaa !79
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  store i8 %12, ptr %13, align 1, !tbaa !80
  %14 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !81
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  store i8 %15, ptr %16, align 1, !tbaa !82
  %17 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 4
  %18 = load i8, ptr %17, align 4, !tbaa !83
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  store i8 %18, ptr %19, align 4, !tbaa !84
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  store i8 %18, ptr %20, align 1, !tbaa !85
  %21 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 5
  %22 = load i8, ptr %21, align 1, !tbaa !86
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  store i8 %22, ptr %23, align 1, !tbaa !87
  %24 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 6
  %25 = load i8, ptr %24, align 2, !tbaa !88
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  store i8 %25, ptr %26, align 2, !tbaa !89
  %27 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 7
  %28 = load i8, ptr %27, align 1, !tbaa !90
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  store i8 %28, ptr %29, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_create_reader(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !92 {
  %4 = load i1, ptr @init_library.initialized, align 4
  br i1 %4, label %6, label %5, !prof !93

5:                                                ; preds = %3
  store i1 true, ptr @init_library.initialized, align 4
  br label %6

6:                                                ; preds = %3, %5
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1304) #8
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 1
  store i32 %0, ptr %10, align 4, !tbaa !57
  %11 = load i8, ptr %9, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 29
  store i8 %11, ptr %12, align 1, !tbaa !76
  %13 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 1
  %14 = load i8, ptr %13, align 1, !tbaa !77
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 2
  store i8 %14, ptr %15, align 8, !tbaa !78
  %16 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 2
  %17 = load i8, ptr %16, align 2, !tbaa !79
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 9
  store i8 %17, ptr %18, align 1, !tbaa !80
  %19 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !81
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 25
  store i8 %20, ptr %21, align 1, !tbaa !82
  %22 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 4
  %23 = load i8, ptr %22, align 4, !tbaa !83
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 30
  store i8 %23, ptr %24, align 4, !tbaa !84
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 7
  store i8 %23, ptr %25, align 1, !tbaa !85
  %26 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !86
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 3
  store i8 %27, ptr %28, align 1, !tbaa !87
  %29 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 6
  %30 = load i8, ptr %29, align 2, !tbaa !88
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 8
  store i8 %30, ptr %31, align 2, !tbaa !89
  %32 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %8, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !90
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 10
  store i8 %33, ptr %34, align 8, !tbaa !91
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 16
  store i8 1, ptr %36, align 2, !tbaa !94
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 5
  store i8 1, ptr %37, align 1, !tbaa !95
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 6
  store i8 1, ptr %38, align 4, !tbaa !96
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 33
  store i8 1, ptr %39, align 1, !tbaa !97
  store i32 8, ptr %35, align 8, !tbaa !98
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 34
  store i8 1, ptr %40, align 8, !tbaa !99
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 15
  store i8 2, ptr %41, align 1, !tbaa !100
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 19
  store i8 1, ptr %42, align 1, !tbaa !101
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 12
  store i8 1, ptr %43, align 2, !tbaa !102
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 18
  store i8 0, ptr %44, align 8, !tbaa !103
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 24
  store i8 1, ptr %45, align 2, !tbaa !104
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 26
  store i8 1, ptr %46, align 8, !tbaa !105
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 21
  store i8 1, ptr %47, align 1, !tbaa !106
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 22
  store i8 1, ptr %48, align 4, !tbaa !107
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 40
  store i32 1, ptr %49, align 8, !tbaa !108
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 44
  store i64 64, ptr %50, align 8, !tbaa !109
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 45
  store i64 8, ptr %51, align 8, !tbaa !110
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 47
  store i64 32, ptr %52, align 8, !tbaa !111
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 46
  store i64 32, ptr %53, align 8, !tbaa !112
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 48
  store i8 0, ptr %54, align 8, !tbaa !113
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 49
  store i8 1, ptr %55, align 1, !tbaa !114
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 50
  store i8 1, ptr %56, align 2, !tbaa !115
  %57 = tail call ptr @_cpp_default_encoding() #8
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 37
  store ptr %57, ptr %58, align 8, !tbaa !116
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 38
  store ptr null, ptr %59, align 8, !tbaa !117
  %60 = tail call ptr @_cpp_default_encoding() #8
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 53, i32 39
  store ptr %60, ptr %61, align 8, !tbaa !118
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 16, i32 1
  store ptr @.str, ptr %62, align 8, !tbaa !119
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 3
  store ptr %2, ptr %63, align 8, !tbaa !120
  %64 = load i8, ptr %37, align 1, !tbaa !95
  %65 = icmp eq i8 %64, 0
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 2, i32 5
  store i8 %66, ptr %67, align 1, !tbaa !121
  %68 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 43, i32 1
  store i8 72, ptr %68, align 4
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 43, i32 3
  store ptr null, ptr %69, align 8, !tbaa !122
  %70 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 44, i32 1
  store i8 22, ptr %70, align 4
  %71 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 44, i32 2
  store i16 0, ptr %71, align 2, !tbaa !123
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 30
  tail call void @_cpp_init_tokenrun(ptr noundef nonnull %72, i32 noundef 250) #8
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 31
  store ptr %72, ptr %73, align 8, !tbaa !124
  %74 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 30, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !125
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 29
  store ptr %75, ptr %76, align 8, !tbaa !126
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 8
  %78 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 9
  store ptr %77, ptr %78, align 8, !tbaa !127
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 8, i32 4
  store ptr null, ptr %79, align 8, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %80 = tail call ptr @_cpp_get_buff(ptr noundef %7, i64 noundef 0) #8
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 5
  store ptr %80, ptr %81, align 8, !tbaa !129
  %82 = tail call ptr @_cpp_get_buff(ptr noundef %7, i64 noundef 0) #8
  %83 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 6
  store ptr %82, ptr %83, align 8, !tbaa !130
  %84 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 63
  store ptr null, ptr %84, align 8, !tbaa !131
  %85 = tail call ptr @_cpp_expand_op_stack(ptr noundef %7) #8
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %7, i64 0, i32 47
  %87 = tail call i32 @_obstack_begin(ptr noundef nonnull %86, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #8
  tail call void @_cpp_init_files(ptr noundef %7) #8
  tail call void @_cpp_init_hashtable(ptr noundef %7, ptr noundef %1) #8
  ret ptr %7
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_cpp_default_encoding() local_unnamed_addr #1

declare void @_cpp_init_tokenrun(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_cpp_get_buff(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_cpp_expand_op_stack(ptr noundef) local_unnamed_addr #1

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

declare void @_cpp_init_files(ptr noundef) local_unnamed_addr #1

declare void @_cpp_init_hashtable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cpp_set_line_map(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #2 !prof !50 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !120
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_destroy(ptr noundef %0) local_unnamed_addr #3 !prof !50 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  tail call void @free(ptr noundef %3) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1, %6
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !133
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %6, !llvm.loop !134

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @free(ptr noundef %11) #8
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void @free(ptr noundef %16) #8
  store ptr null, ptr %15, align 8, !tbaa !138
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  store i32 0, ptr %19, align 8, !tbaa !139
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @deps_free(ptr noundef nonnull %22) #8
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !141
  %29 = ptrtoint ptr %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 %30, ptr %31, align 8, !tbaa !142
  %32 = icmp sgt i64 %30, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !143
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %29
  %38 = icmp sgt i64 %37, %30
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %28, i64 %30
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !144
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  store ptr %40, ptr %42, align 8, !tbaa !145
  br label %45

43:                                               ; preds = %33, %25
  %44 = getelementptr inbounds i8, ptr %28, i64 %30
  tail call void @obstack_free(ptr noundef nonnull %26, ptr noundef %44) #8
  br label %45

45:                                               ; preds = %43, %39
  tail call void @_cpp_destroy_hashtable(ptr noundef nonnull %0) #8
  tail call void @_cpp_cleanup_files(ptr noundef nonnull %0) #8
  tail call void @_cpp_destroy_iconv(ptr noundef nonnull %0) #8
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !129
  tail call void @_cpp_free_buff(ptr noundef %47) #8
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  tail call void @_cpp_free_buff(ptr noundef %49) #8
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !146
  tail call void @_cpp_free_buff(ptr noundef %51) #8
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  br label %53

53:                                               ; preds = %45, %60
  %54 = phi ptr [ %52, %45 ], [ %55, %60 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !147
  %56 = getelementptr inbounds %struct.tokenrun, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !148
  tail call void @free(ptr noundef %57) #8
  %58 = icmp eq ptr %54, %52
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  tail call void @free(ptr noundef %54) #8
  br label %60

60:                                               ; preds = %53, %59
  %61 = icmp eq ptr %55, null
  br i1 %61, label %62, label %53, !llvm.loop !149

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !150
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %68, %66 ], [ %64, %62 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !151
  tail call void @free(ptr noundef %67) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %66, !llvm.loop !152

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  %72 = load ptr, ptr %71, align 8, !tbaa !153
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !154
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74, %78
  %79 = phi i64 [ %83, %78 ], [ 0, %74 ]
  %80 = load ptr, ptr %71, align 8, !tbaa !153
  %81 = getelementptr inbounds %struct.cpp_comment, ptr %80, i64 %79
  %82 = load ptr, ptr %81, align 8, !tbaa !155
  tail call void @free(ptr noundef %82) #8
  %83 = add nuw nsw i64 %79, 1
  %84 = load i32, ptr %75, align 8, !tbaa !154
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %78, label %87, !llvm.loop !157

87:                                               ; preds = %78, %74
  %88 = load ptr, ptr %71, align 8, !tbaa !153
  tail call void @free(ptr noundef %88) #8
  br label %89

89:                                               ; preds = %87, %70
  %90 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  %91 = load ptr, ptr %90, align 8, !tbaa !131
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %89, %93
  %94 = load ptr, ptr %90, align 8, !tbaa !131
  %95 = load ptr, ptr %94, align 8, !tbaa !158
  store ptr %95, ptr %90, align 8, !tbaa !131
  %96 = getelementptr inbounds %struct.def_pragma_macro, ptr %94, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !160
  tail call void @free(ptr noundef %97) #8
  tail call void @free(ptr noundef %94) #8
  %98 = load ptr, ptr %90, align 8, !tbaa !131
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93, !llvm.loop !161

100:                                              ; preds = %93, %89
  tail call void @free(ptr noundef %0) #8
  ret void
}

declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

declare void @deps_free(ptr noundef) local_unnamed_addr #1

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cpp_destroy_hashtable(ptr noundef) local_unnamed_addr #1

declare void @_cpp_cleanup_files(ptr noundef) local_unnamed_addr #1

declare void @_cpp_destroy_iconv(ptr noundef) local_unnamed_addr #1

declare void @_cpp_free_buff(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define dso_local ptr @cpp_named_operator2name(i32 noundef %0) local_unnamed_addr #5 !prof !50 {
  br label %6

2:                                                ; preds = %6
  %3 = add nuw nsw i64 %8, 16
  %4 = getelementptr inbounds i8, ptr @operator_array, i64 %3
  %5 = icmp ult i64 %8, 160
  br i1 %5, label %6, label %15, !llvm.loop !162

6:                                                ; preds = %1, %2
  %7 = phi ptr [ @operator_array, %1 ], [ %4, %2 ]
  %8 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.builtin_operator, ptr %7, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !163
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %2

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8, !tbaa !165
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_init_special_builtins(ptr noundef %0) local_unnamed_addr #3 !prof !92 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %3 = load i8, ptr %2, align 2, !tbaa !166
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14, !prof !167

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 51
  %7 = load i8, ptr %6, align 1, !tbaa !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !167

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %11 = load i8, ptr %10, align 4, !tbaa !84
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %1, %9, %13
  %15 = phi i64 [ 9, %13 ], [ 10, %9 ], [ 8, %1 ]
  %16 = getelementptr inbounds %struct.builtin_macro, ptr @builtin_array, i64 %15
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 22
  br label %18

18:                                               ; preds = %14, %37
  %19 = phi ptr [ @builtin_array, %14 ], [ %42, %37 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !171
  %23 = zext i16 %22 to i32
  %24 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %20, i32 noundef %23) #8
  %25 = getelementptr inbounds %struct.cpp_hashnode, ptr %24, i64 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, -320
  %28 = or disjoint i16 %27, 257
  store i16 %28, ptr %25, align 2
  %29 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 0, i32 3
  %30 = load i8, ptr %29, align 4, !tbaa !172
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !173

32:                                               ; preds = %18
  %33 = load i8, ptr %17, align 4, !tbaa !107
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35, !prof !174

35:                                               ; preds = %32, %18
  %36 = or i16 %27, 1281
  store i16 %36, ptr %25, align 2
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !175
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.cpp_hashnode, ptr %24, i64 0, i32 4
  store i32 %40, ptr %41, align 8, !tbaa !122
  %42 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 1
  %43 = icmp ult ptr %42, %16
  br i1 %43, label %18, label %44, !prof !176, !llvm.loop !177

44:                                               ; preds = %37
  ret void
}

declare ptr @cpp_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_init_builtins(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !92 {
  tail call void @cpp_init_special_builtins(ptr noundef %0)
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %4 = load i8, ptr %3, align 2, !tbaa !166
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15, !prof !167

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 51
  %8 = load i8, ptr %7, align 1, !tbaa !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10, !prof !167

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %12 = load i8, ptr %11, align 4, !tbaa !84
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  tail call void @_cpp_define_builtin(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  br label %15

15:                                               ; preds = %14, %10, %2
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !78
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27, !prof !167

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !57
  switch i32 %21, label %23 [
    i32 9, label %27
    i32 3, label %22
  ], !prof !178

22:                                               ; preds = %19
  br label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %25 = load i8, ptr %24, align 1, !tbaa !76
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27, !prof !167

27:                                               ; preds = %23, %19, %15, %22
  %28 = phi ptr [ @.str.4, %22 ], [ @.str.2, %15 ], [ @.str.3, %19 ], [ @.str.5, %23 ]
  tail call void @_cpp_define_builtin(ptr noundef %0, ptr noundef nonnull %28) #8
  br label %29

29:                                               ; preds = %27, %23
  %30 = icmp eq i32 %1, 0
  %31 = select i1 %30, ptr @.str.7, ptr @.str.6, !prof !93
  tail call void @_cpp_define_builtin(ptr noundef %0, ptr noundef nonnull %31) #8
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %33 = load i8, ptr %32, align 2, !tbaa !179
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !167

35:                                               ; preds = %29
  tail call void @_cpp_define_builtin(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  br label %36

36:                                               ; preds = %35, %29
  ret void
}

declare void @_cpp_define_builtin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_post_options(ptr noundef %0) local_unnamed_addr #3 !prof !92 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5, !prof !167

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  store i8 0, ptr %6, align 1, !tbaa !180
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %9 = load i8, ptr %8, align 2, !tbaa !181
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11, !prof !167

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %13 = load i8, ptr %12, align 4, !tbaa !182
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %16, align 8, !tbaa !183
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  store i8 0, ptr %18, align 2, !tbaa !166
  br label %19

19:                                               ; preds = %17, %7
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 15
  %21 = load i8, ptr %20, align 1, !tbaa !100
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %28, !prof !167

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !85
  %26 = icmp eq i8 %25, 0
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %20, align 1, !tbaa !100
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %30 = load i8, ptr %29, align 2, !tbaa !166
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32, !prof !167

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  store i8 0, ptr %33, align 1, !tbaa !87
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 33
  store i8 0, ptr %34, align 1, !tbaa !97
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  store i8 0, ptr %35, align 1, !tbaa !85
  store i8 0, ptr %20, align 1, !tbaa !100
  br label %36

36:                                               ; preds = %28, %32
  br i1 %4, label %42, label %37, !prof !167

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 34
  %39 = load i8, ptr %38, align 8, !tbaa !99
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i32 [ 0, %36 ], [ %41, %37 ]
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 35
  %45 = load i8, ptr %44, align 1, !tbaa !184
  %46 = icmp eq i8 %45, 0
  %47 = or disjoint i32 %43, 520
  %48 = select i1 %46, i32 %43, i32 %47, !prof !167
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %73, label %50, !prof !167

50:                                               ; preds = %42
  %51 = trunc i32 %48 to i16
  %52 = shl nuw i16 %51, 6
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ 0, %50 ], [ %71, %53 ]
  %55 = getelementptr inbounds i8, ptr @operator_array, i64 %54
  %56 = load ptr, ptr %55, align 16, !tbaa !165
  %57 = getelementptr inbounds %struct.builtin_operator, ptr %55, i64 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !185
  %59 = zext i16 %58 to i32
  %60 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %56, i32 noundef %59) #8
  %61 = getelementptr inbounds %struct.cpp_hashnode, ptr %60, i64 0, i32 3
  %62 = load i16, ptr %61, align 2
  %63 = or i16 %62, %52
  store i16 %63, ptr %61, align 2
  %64 = getelementptr inbounds %struct.cpp_hashnode, ptr %60, i64 0, i32 1
  %65 = load i8, ptr %64, align 8
  %66 = and i8 %65, -2
  store i8 %66, ptr %64, align 8
  %67 = getelementptr inbounds %struct.builtin_operator, ptr %55, i64 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !163
  %69 = trunc i16 %68 to i8
  %70 = shl i8 %69, 1
  store i8 %70, ptr %64, align 8
  %71 = add nuw nsw i64 %54, 16
  %72 = icmp ult i64 %54, 160
  br i1 %72, label %53, label %73, !llvm.loop !186

73:                                               ; preds = %53, %42
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_read_main_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !92 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %4 = load i32, ptr %3, align 8, !tbaa !187
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !167

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @deps_init() #8
  store ptr %11, ptr %7, align 8, !tbaa !140
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr %7, align 8, !tbaa !140
  tail call void @deps_add_default_target(ptr noundef %13, ptr noundef %1) #8
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 16
  %16 = tail call ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, i8 noundef zeroext 0, i32 noundef 0) #8
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 18
  store ptr %16, ptr %17, align 8, !tbaa !188
  %18 = tail call zeroext i8 @_cpp_find_failed(ptr noundef %16) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %56, !prof !167

20:                                               ; preds = %14
  %21 = load ptr, ptr %17, align 8, !tbaa !188
  %22 = tail call zeroext i8 @_cpp_stack_file(ptr noundef %0, ptr noundef %21, i8 noundef zeroext 0) #8
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %24 = load i8, ptr %23, align 2, !tbaa !181
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %56, label %26, !prof !167

26:                                               ; preds = %20
  %27 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #8
  %28 = getelementptr inbounds %struct.cpp_token, ptr %27, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 37
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store i8 1, ptr %32, align 8, !tbaa !189
  %33 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #8
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #8
  store i8 0, ptr %32, align 8, !tbaa !189
  %34 = getelementptr inbounds %struct.cpp_token, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 55
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cpp_token, ptr %27, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !190
  %40 = and i16 %39, 1
  %41 = zext nneg i16 %40 to i32
  %42 = tail call i32 @_cpp_handle_directive(ptr noundef %0, i32 noundef %41) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call fastcc void @read_original_directory(ptr noundef %0)
  br label %46

45:                                               ; preds = %37, %31, %26
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #8
  br label %46

46:                                               ; preds = %44, %45
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !120
  %49 = load ptr, ptr %48, align 8, !tbaa !191
  %50 = getelementptr inbounds %struct.line_maps, ptr %48, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !193
  %52 = add i32 %51, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.line_map, ptr %49, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !194
  br label %56

56:                                               ; preds = %20, %46, %14
  %57 = phi ptr [ null, %14 ], [ %55, %46 ], [ %1, %20 ]
  ret ptr %57
}

declare ptr @deps_init() local_unnamed_addr #1

declare void @deps_add_default_target(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_find_file(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_find_failed(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_stack_file(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !92 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %4 = load i8, ptr %3, align 2, !tbaa !196
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !167

6:                                                ; preds = %2
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @_cpp_warn_if_unused_macro, ptr noundef null) #8
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !167

10:                                               ; preds = %7, %10
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #8
  %11 = load ptr, ptr %0, align 8, !tbaa !133
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %10, !prof !167, !llvm.loop !197

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %15 = load i32, ptr %14, align 8, !tbaa !187
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %27, !prof !93

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  tail call void @deps_write(ptr noundef %21, ptr noundef nonnull %1, i32 noundef 72) #8
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !198
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !140
  tail call void @deps_phony_targets(ptr noundef %26, ptr noundef nonnull %1) #8
  br label %27

27:                                               ; preds = %19, %25, %13
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 11
  %29 = load i8, ptr %28, align 1, !tbaa !199
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31, !prof !167

31:                                               ; preds = %27
  tail call void @_cpp_report_missing_guards(ptr noundef nonnull %0) #8
  br label %32

32:                                               ; preds = %31, %27
  ret void
}

declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cpp_warn_if_unused_macro(ptr noundef, ptr noundef, ptr noundef) #1

declare void @deps_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @deps_phony_targets(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cpp_report_missing_guards(ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_lex_direct(ptr noundef) local_unnamed_addr #1

declare void @_cpp_backup_tokens(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @read_original_directory(ptr noundef %0) unnamed_addr #3 !prof !50 {
  %2 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 37
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #8
  br label %50

7:                                                ; preds = %1
  %8 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 55
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 2) #8
  br label %50

13:                                               ; preds = %7
  %14 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.cpp_token, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 61
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.cpp_token, ptr %14, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !122
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cpp_token, ptr %14, i64 0, i32 3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = add i32 %20, -2
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !122
  %29 = icmp eq i8 %28, 47
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = add i32 %20, -3
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %24, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !122
  %35 = icmp eq i8 %34, 47
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %22, %18, %13
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 3) #8
  br label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !200
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = alloca i8, i64 %32, align 16
  %43 = getelementptr inbounds i8, ptr %24, i64 1
  %44 = add i32 %20, -4
  %45 = zext i32 %44 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %42, ptr nonnull align 1 %43, i64 %45, i1 false)
  %46 = load i32, ptr %19, align 8, !tbaa !122
  %47 = add i32 %46, -4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %42, i64 %48
  store i8 0, ptr %49, align 1, !tbaa !122
  call void %39(ptr noundef %0, ptr noundef nonnull %42) #8
  br label %50

50:                                               ; preds = %37, %41, %36, %12, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!35 = !{ptr @cpp_create_reader, ptr @xcalloc, i64 1}
!36 = !{ptr @cpp_create_reader, ptr @_cpp_default_encoding, i64 2}
!37 = !{ptr @cpp_create_reader, ptr @_cpp_init_tokenrun, i64 1}
!38 = !{ptr @cpp_create_reader, ptr @_cpp_get_buff, i64 2}
!39 = !{ptr @cpp_create_reader, ptr @_cpp_expand_op_stack, i64 1}
!40 = !{ptr @cpp_create_reader, ptr @_obstack_begin, i64 1}
!41 = !{ptr @cpp_create_reader, ptr @_cpp_init_files, i64 1}
!42 = !{ptr @cpp_create_reader, ptr @_cpp_init_hashtable, i64 1}
!43 = !{ptr @cpp_init_special_builtins, ptr @cpp_lookup, i64 9}
!44 = !{ptr @cpp_init_builtins, ptr @cpp_init_special_builtins, i64 1}
!45 = !{ptr @cpp_init_builtins, ptr @_cpp_define_builtin, i64 2}
!46 = !{ptr @cpp_read_main_file, ptr @_cpp_find_file, i64 1}
!47 = !{ptr @cpp_read_main_file, ptr @_cpp_find_failed, i64 1}
!48 = !{ptr @cpp_read_main_file, ptr @_cpp_stack_file, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !53, i64 0}
!57 = !{!58, !56, i64 1044}
!58 = !{!"cpp_reader", !52, i64 0, !52, i64 8, !59, i64 16, !52, i64 40, !56, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !60, i64 80, !52, i64 136, !52, i64 144, !61, i64 152, !56, i64 176, !53, i64 180, !52, i64 184, !52, i64 192, !63, i64 200, !52, i64 264, !52, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !65, i64 312, !53, i64 400, !53, i64 401, !52, i64 408, !52, i64 416, !53, i64 424, !52, i64 432, !66, i64 440, !52, i64 472, !56, i64 480, !56, i64 484, !52, i64 488, !56, i64 496, !67, i64 504, !67, i64 528, !67, i64 552, !67, i64 576, !67, i64 600, !52, i64 624, !52, i64 632, !61, i64 640, !61, i64 664, !52, i64 688, !65, i64 696, !65, i64 784, !52, i64 872, !68, i64 880, !52, i64 1016, !52, i64 1024, !52, i64 1032, !69, i64 1040, !71, i64 1168, !53, i64 1200, !72, i64 1208, !52, i64 1240, !52, i64 1248, !52, i64 1256, !52, i64 1264, !56, i64 1272, !73, i64 1280, !52, i64 1296}
!59 = !{!"lexer_state", !53, i64 0, !53, i64 1, !53, i64 2, !53, i64 3, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7, !53, i64 8, !53, i64 9, !53, i64 10, !56, i64 12, !53, i64 16, !53, i64 17}
!60 = !{!"cpp_context", !52, i64 0, !52, i64 8, !53, i64 16, !52, i64 32, !52, i64 40, !53, i64 48}
!61 = !{!"cpp_token", !56, i64 0, !56, i64 4, !62, i64 6, !53, i64 8}
!62 = !{!"short", !53, i64 0}
!63 = !{!"cpp_dir", !52, i64 0, !52, i64 8, !56, i64 16, !53, i64 20, !53, i64 21, !52, i64 24, !52, i64 32, !52, i64 40, !64, i64 48, !64, i64 56}
!64 = !{!"long", !53, i64 0}
!65 = !{!"obstack", !64, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !64, i64 40, !56, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !56, i64 80, !56, i64 80, !56, i64 80}
!66 = !{!"tokenrun", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!67 = !{!"cset_converter", !52, i64 0, !52, i64 8, !56, i64 16}
!68 = !{!"cpp_callbacks", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128}
!69 = !{!"cpp_options", !56, i64 0, !56, i64 4, !53, i64 8, !53, i64 9, !53, i64 10, !53, i64 11, !53, i64 12, !53, i64 13, !53, i64 14, !53, i64 15, !53, i64 16, !53, i64 17, !53, i64 18, !53, i64 19, !53, i64 20, !53, i64 21, !53, i64 22, !53, i64 23, !53, i64 24, !53, i64 25, !53, i64 26, !53, i64 27, !53, i64 28, !53, i64 29, !53, i64 30, !53, i64 31, !53, i64 32, !53, i64 33, !53, i64 34, !53, i64 35, !53, i64 36, !53, i64 37, !53, i64 38, !53, i64 39, !53, i64 40, !53, i64 41, !53, i64 42, !52, i64 48, !52, i64 56, !52, i64 64, !56, i64 72, !53, i64 76, !53, i64 77, !70, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !53, i64 120, !53, i64 121, !53, i64 122, !53, i64 123, !53, i64 124}
!70 = !{!"", !56, i64 0, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7}
!71 = !{!"spec_nodes", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!72 = !{!"", !52, i64 0, !52, i64 8, !52, i64 16, !56, i64 24}
!73 = !{!"", !52, i64 0, !56, i64 8, !56, i64 12}
!74 = !{!75, !53, i64 0}
!75 = !{!"lang_flags", !53, i64 0, !53, i64 1, !53, i64 2, !53, i64 3, !53, i64 4, !53, i64 5, !53, i64 6, !53, i64 7}
!76 = !{!58, !53, i64 1075}
!77 = !{!75, !53, i64 1}
!78 = !{!58, !53, i64 1048}
!79 = !{!75, !53, i64 2}
!80 = !{!58, !53, i64 1055}
!81 = !{!75, !53, i64 3}
!82 = !{!58, !53, i64 1071}
!83 = !{!75, !53, i64 4}
!84 = !{!58, !53, i64 1076}
!85 = !{!58, !53, i64 1053}
!86 = !{!75, !53, i64 5}
!87 = !{!58, !53, i64 1049}
!88 = !{!75, !53, i64 6}
!89 = !{!58, !53, i64 1054}
!90 = !{!75, !53, i64 7}
!91 = !{!58, !53, i64 1056}
!92 = !{!"function_entry_count", i64 1}
!93 = !{!"branch_weights", i32 0, i32 1}
!94 = !{!58, !53, i64 1062}
!95 = !{!58, !53, i64 1051}
!96 = !{!58, !53, i64 1052}
!97 = !{!58, !53, i64 1079}
!98 = !{!58, !56, i64 1040}
!99 = !{!58, !53, i64 1080}
!100 = !{!58, !53, i64 1061}
!101 = !{!58, !53, i64 1065}
!102 = !{!58, !53, i64 1058}
!103 = !{!58, !53, i64 1064}
!104 = !{!58, !53, i64 1070}
!105 = !{!58, !53, i64 1072}
!106 = !{!58, !53, i64 1067}
!107 = !{!58, !53, i64 1068}
!108 = !{!58, !56, i64 1112}
!109 = !{!58, !64, i64 1128}
!110 = !{!58, !64, i64 1136}
!111 = !{!58, !64, i64 1152}
!112 = !{!58, !64, i64 1144}
!113 = !{!58, !53, i64 1160}
!114 = !{!58, !53, i64 1161}
!115 = !{!58, !53, i64 1162}
!116 = !{!58, !52, i64 1088}
!117 = !{!58, !52, i64 1096}
!118 = !{!58, !52, i64 1104}
!119 = !{!58, !52, i64 208}
!120 = !{!58, !52, i64 40}
!121 = !{!58, !53, i64 21}
!122 = !{!53, !53, i64 0}
!123 = !{!58, !62, i64 670}
!124 = !{!58, !52, i64 472}
!125 = !{!58, !52, i64 456}
!126 = !{!58, !52, i64 432}
!127 = !{!58, !52, i64 136}
!128 = !{!58, !52, i64 120}
!129 = !{!58, !52, i64 56}
!130 = !{!58, !52, i64 64}
!131 = !{!58, !52, i64 1296}
!132 = !{!58, !52, i64 1024}
!133 = !{!58, !52, i64 0}
!134 = distinct !{!134, !135, !136}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!58, !52, i64 1208}
!138 = !{!58, !52, i64 488}
!139 = !{!58, !56, i64 496}
!140 = !{!58, !52, i64 688}
!141 = !{!58, !52, i64 792}
!142 = !{!58, !64, i64 824}
!143 = !{!58, !52, i64 816}
!144 = !{!58, !52, i64 800}
!145 = !{!58, !52, i64 808}
!146 = !{!58, !52, i64 72}
!147 = !{!66, !52, i64 0}
!148 = !{!66, !52, i64 16}
!149 = distinct !{!149, !135, !136}
!150 = !{!58, !52, i64 80}
!151 = !{!60, !52, i64 0}
!152 = distinct !{!152, !135, !136}
!153 = !{!58, !52, i64 1280}
!154 = !{!58, !56, i64 1288}
!155 = !{!156, !52, i64 0}
!156 = !{!"", !52, i64 0, !56, i64 8}
!157 = distinct !{!157, !135, !136}
!158 = !{!159, !52, i64 0}
!159 = !{!"def_pragma_macro", !52, i64 0, !52, i64 8, !52, i64 16}
!160 = !{!159, !52, i64 8}
!161 = distinct !{!161, !135, !136}
!162 = distinct !{!162, !135, !136}
!163 = !{!164, !62, i64 10}
!164 = !{!"builtin_operator", !52, i64 0, !62, i64 8, !62, i64 10}
!165 = !{!164, !52, i64 0}
!166 = !{!58, !53, i64 1082}
!167 = !{!"branch_weights", i32 1, i32 0}
!168 = !{!58, !53, i64 1163}
!169 = !{!170, !52, i64 0}
!170 = !{!"builtin_macro", !52, i64 0, !62, i64 8, !62, i64 10, !53, i64 12}
!171 = !{!170, !62, i64 8}
!172 = !{!170, !53, i64 12}
!173 = !{!"branch_weights", i32 5, i32 4}
!174 = !{!"branch_weights", i32 0, i32 5}
!175 = !{!170, !62, i64 10}
!176 = !{!"branch_weights", i32 1025, i32 127}
!177 = distinct !{!177, !135, !136}
!178 = !{!"branch_weights", i32 1, i32 0, i32 0}
!179 = !{!58, !53, i64 1050}
!180 = !{!58, !53, i64 1063}
!181 = !{!58, !53, i64 1078}
!182 = !{!58, !53, i64 1164}
!183 = !{!58, !53, i64 24}
!184 = !{!58, !53, i64 1081}
!185 = !{!164, !62, i64 8}
!186 = distinct !{!186, !135, !136}
!187 = !{!58, !56, i64 1120}
!188 = !{!58, !52, i64 272}
!189 = !{!58, !53, i64 16}
!190 = !{!61, !62, i64 6}
!191 = !{!192, !52, i64 0}
!192 = !{!"line_maps", !52, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !53, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !52, i64 48}
!193 = !{!192, !56, i64 12}
!194 = !{!195, !52, i64 0}
!195 = !{!"line_map", !52, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !53, i64 21, !56, i64 22}
!196 = !{!58, !53, i64 1074}
!197 = distinct !{!197, !135, !136}
!198 = !{!58, !53, i64 1125}
!199 = !{!58, !53, i64 1057}
!200 = !{!58, !52, i64 896}
