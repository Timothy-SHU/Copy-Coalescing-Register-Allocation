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
@init_library.initialized = internal unnamed_addr global i1 false, align 4
@operator_array = internal unnamed_addr constant [11 x %struct.builtin_operator] [%struct.builtin_operator { ptr @.str.2, i16 3, i16 15 }, %struct.builtin_operator { ptr @.str.3, i16 6, i16 32 }, %struct.builtin_operator { ptr @.str.4, i16 6, i16 9 }, %struct.builtin_operator { ptr @.str.5, i16 5, i16 10 }, %struct.builtin_operator { ptr @.str.6, i16 5, i16 14 }, %struct.builtin_operator { ptr @.str.7, i16 3, i16 1 }, %struct.builtin_operator { ptr @.str.8, i16 6, i16 24 }, %struct.builtin_operator { ptr @.str.9, i16 2, i16 16 }, %struct.builtin_operator { ptr @.str.10, i16 5, i16 33 }, %struct.builtin_operator { ptr @.str.11, i16 3, i16 11 }, %struct.builtin_operator { ptr @.str.12, i16 6, i16 34 }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"and_eq\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bitand\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"bitor\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"compl\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"not_eq\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"or_eq\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"xor_eq\00", align 1
@builtin_array = internal constant [10 x %struct.builtin_macro] [%struct.builtin_macro { ptr @.str.13, i16 13, i16 8, i8 0 }, %struct.builtin_macro { ptr @.str.14, i16 8, i16 5, i8 0 }, %struct.builtin_macro { ptr @.str.15, i16 8, i16 1, i8 0 }, %struct.builtin_macro { ptr @.str.16, i16 8, i16 2, i8 0 }, %struct.builtin_macro { ptr @.str.17, i16 13, i16 3, i8 0 }, %struct.builtin_macro { ptr @.str.18, i16 8, i16 0, i8 1 }, %struct.builtin_macro { ptr @.str.19, i16 17, i16 4, i8 1 }, %struct.builtin_macro { ptr @.str.20, i16 11, i16 9, i8 1 }, %struct.builtin_macro { ptr @.str.21, i16 7, i16 7, i8 1 }, %struct.builtin_macro { ptr @.str.22, i16 8, i16 6, i8 1 }], align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"__TIMESTAMP__\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"__TIME__\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__DATE__\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"__FILE__\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"__BASE_FILE__\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"__LINE__\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"__INCLUDE_LEVEL__\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"__COUNTER__\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"_Pragma\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"__STDC__\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"__STDC__ 1\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"__cplusplus 1\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"__ASSEMBLER__ 1\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199409L\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199901L\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 1\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 0\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"__OBJC__ 1\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @cpp_set_lang(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !55 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !56
  %6 = load i8, ptr %4, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  store i8 %6, ptr %7, align 1, !tbaa !79
  %8 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !80
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  store i8 %9, ptr %10, align 8, !tbaa !81
  %11 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 2
  %12 = load i8, ptr %11, align 2, !tbaa !82
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 9
  store i8 %12, ptr %13, align 1, !tbaa !83
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 25
  store i8 0, ptr %14, align 1, !tbaa !84
  %15 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 4
  %16 = load i8, ptr %15, align 4, !tbaa !85
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  store i8 %16, ptr %17, align 4, !tbaa !86
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  store i8 %16, ptr %18, align 1, !tbaa !87
  %19 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 5
  %20 = load i8, ptr %19, align 1, !tbaa !88
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  store i8 %20, ptr %21, align 1, !tbaa !89
  %22 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 6
  %23 = load i8, ptr %22, align 2, !tbaa !90
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 8
  store i8 %23, ptr %24, align 2, !tbaa !91
  %25 = getelementptr inbounds [10 x %struct.lang_flags], ptr @lang_defaults, i64 0, i64 %3, i32 7
  %26 = load i8, ptr %25, align 1, !tbaa !92
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 10
  store i8 %26, ptr %27, align 8, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cpp_create_reader(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !55 {
  tail call fastcc void @init_library() #9
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1304) #10
  tail call void @cpp_set_lang(ptr noundef %4, i32 noundef %0) #9
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 16
  store i8 1, ptr %6, align 2, !tbaa !94
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 5
  store i8 1, ptr %7, align 1, !tbaa !95
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 6
  store i8 1, ptr %8, align 4, !tbaa !96
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 33
  store i8 1, ptr %9, align 1, !tbaa !97
  store i32 8, ptr %5, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 34
  store i8 1, ptr %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 15
  store i8 2, ptr %11, align 1, !tbaa !100
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 19
  store i8 1, ptr %12, align 1, !tbaa !101
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 12
  store i8 1, ptr %13, align 2, !tbaa !102
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 18
  store i8 0, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 24
  store i8 1, ptr %15, align 2, !tbaa !104
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 26
  store i8 1, ptr %16, align 8, !tbaa !105
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 21
  store i8 1, ptr %17, align 1, !tbaa !106
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 22
  store i8 1, ptr %18, align 4, !tbaa !107
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 40
  store i32 1, ptr %19, align 8, !tbaa !108
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 44
  store i64 64, ptr %20, align 8, !tbaa !109
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 45
  store i64 8, ptr %21, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 47
  store i64 32, ptr %22, align 8, !tbaa !111
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 46
  store i64 32, ptr %23, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 48
  store i8 0, ptr %24, align 8, !tbaa !113
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 49
  store i8 1, ptr %25, align 1, !tbaa !114
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 50
  store i8 1, ptr %26, align 2, !tbaa !115
  %27 = tail call ptr @_cpp_default_encoding() #10
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 37
  store ptr %27, ptr %28, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 38
  store ptr null, ptr %29, align 8, !tbaa !117
  %30 = tail call ptr @_cpp_default_encoding() #10
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 53, i32 39
  store ptr %30, ptr %31, align 8, !tbaa !118
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 16, i32 1
  store ptr @.str, ptr %32, align 8, !tbaa !119
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 3
  store ptr %2, ptr %33, align 8, !tbaa !120
  %34 = load i8, ptr %7, align 1, !tbaa !95
  %35 = icmp eq i8 %34, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 2, i32 5
  store i8 %36, ptr %37, align 1, !tbaa !121
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 43, i32 1
  store i8 72, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 43, i32 3
  store ptr null, ptr %39, align 8, !tbaa !122
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 44, i32 1
  store i8 22, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 44, i32 2
  store i16 0, ptr %41, align 2, !tbaa !123
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 30
  tail call void @_cpp_init_tokenrun(ptr noundef nonnull %42, i32 noundef 250) #10
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 31
  store ptr %42, ptr %43, align 8, !tbaa !124
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 30, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !125
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 29
  store ptr %45, ptr %46, align 8, !tbaa !126
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 8
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !127
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 8, i32 4
  store ptr null, ptr %49, align 8, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %50 = tail call ptr @_cpp_get_buff(ptr noundef %4, i64 noundef 0) #10
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 5
  store ptr %50, ptr %51, align 8, !tbaa !129
  %52 = tail call ptr @_cpp_get_buff(ptr noundef %4, i64 noundef 0) #10
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 6
  store ptr %52, ptr %53, align 8, !tbaa !130
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 63
  store ptr null, ptr %54, align 8, !tbaa !131
  %55 = tail call ptr @_cpp_expand_op_stack(ptr noundef %4) #10
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %4, i64 0, i32 47
  %57 = tail call i32 @_obstack_begin(ptr noundef nonnull %56, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #10
  tail call void @_cpp_init_files(ptr noundef %4) #10
  tail call void @_cpp_init_hashtable(ptr noundef %4, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init_library() unnamed_addr #2 !prof !55 !PGOFuncName !132 {
  %1 = load i1, ptr @init_library.initialized, align 4
  br i1 %1, label %3, label %2, !prof !133

2:                                                ; preds = %0
  store i1 true, ptr @init_library.initialized, align 4
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @_cpp_default_encoding() local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_init_tokenrun(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @_cpp_get_buff(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @_cpp_expand_op_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: optsize
declare void @_cpp_init_files(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_init_hashtable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @cpp_set_line_map(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !134 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_destroy(ptr noundef %0) local_unnamed_addr #1 !prof !134 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  tail call void @free(ptr noundef %3) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !136
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1, %6
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !136
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %6, !llvm.loop !137

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %11) #10
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void @free(ptr noundef nonnull %16) #10
  store ptr null, ptr %15, align 8, !tbaa !140
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  store i32 0, ptr %19, align 8, !tbaa !141
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @deps_free(ptr noundef nonnull %22) #10
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = ptrtoint ptr %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 %30, ptr %31, align 8, !tbaa !144
  %32 = icmp sgt i64 %30, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !145
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %29
  %38 = icmp sgt i64 %37, %30
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, ptr %28, i64 %30
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !146
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  store ptr %40, ptr %42, align 8, !tbaa !147
  br label %45

43:                                               ; preds = %33, %25
  %44 = getelementptr inbounds i8, ptr %28, i64 %30
  tail call void @obstack_free(ptr noundef nonnull %26, ptr noundef %44) #10
  br label %45

45:                                               ; preds = %43, %39
  tail call void @_cpp_destroy_hashtable(ptr noundef nonnull %0) #10
  tail call void @_cpp_cleanup_files(ptr noundef nonnull %0) #10
  tail call void @_cpp_destroy_iconv(ptr noundef nonnull %0) #10
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !129
  tail call void @_cpp_free_buff(ptr noundef %47) #10
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  tail call void @_cpp_free_buff(ptr noundef %49) #10
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !148
  tail call void @_cpp_free_buff(ptr noundef %51) #10
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  br label %53

53:                                               ; preds = %45, %60
  %54 = phi ptr [ %52, %45 ], [ %55, %60 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !149
  %56 = getelementptr inbounds %struct.tokenrun, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !150
  tail call void @free(ptr noundef %57) #10
  %58 = icmp eq ptr %54, %52
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  tail call void @free(ptr noundef nonnull %54) #10
  br label %60

60:                                               ; preds = %53, %59
  %61 = icmp eq ptr %55, null
  br i1 %61, label %62, label %53, !llvm.loop !151

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !152
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %68, %66 ], [ %64, %62 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !153
  tail call void @free(ptr noundef nonnull %67) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %66, !llvm.loop !154

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62
  %72 = load ptr, ptr %71, align 8, !tbaa !155
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 62, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !156
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74, %78
  %79 = phi i64 [ %83, %78 ], [ 0, %74 ]
  %80 = load ptr, ptr %71, align 8, !tbaa !155
  %81 = getelementptr inbounds %struct.cpp_comment, ptr %80, i64 %79
  %82 = load ptr, ptr %81, align 8, !tbaa !157
  tail call void @free(ptr noundef %82) #10
  %83 = add nuw nsw i64 %79, 1
  %84 = load i32, ptr %75, align 8, !tbaa !156
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %78, label %87, !llvm.loop !159

87:                                               ; preds = %78
  %88 = load ptr, ptr %71, align 8, !tbaa !155
  br label %89

89:                                               ; preds = %87, %74
  %90 = phi ptr [ %88, %87 ], [ %72, %74 ]
  tail call void @free(ptr noundef %90) #10
  br label %91

91:                                               ; preds = %89, %70
  %92 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  %93 = load ptr, ptr %92, align 8, !tbaa !131
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %91, %95
  %96 = phi ptr [ %100, %95 ], [ %93, %91 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !160
  store ptr %97, ptr %92, align 8, !tbaa !131
  %98 = getelementptr inbounds %struct.def_pragma_macro, ptr %96, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !162
  tail call void @free(ptr noundef %99) #10
  tail call void @free(ptr noundef nonnull %96) #10
  %100 = load ptr, ptr %92, align 8, !tbaa !131
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %95, !llvm.loop !163

102:                                              ; preds = %95, %91
  tail call void @free(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @deps_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_destroy_hashtable(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_cleanup_files(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_destroy_iconv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_free_buff(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local ptr @cpp_named_operator2name(i32 noundef %0) local_unnamed_addr #5 !prof !134 {
  br label %6

2:                                                ; preds = %6
  %3 = add nuw nsw i64 %8, 16
  %4 = getelementptr inbounds i8, ptr @operator_array, i64 %3
  %5 = icmp ult i64 %8, 160
  br i1 %5, label %6, label %15, !llvm.loop !164

6:                                                ; preds = %1, %2
  %7 = phi ptr [ @operator_array, %1 ], [ %4, %2 ]
  %8 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.builtin_operator, ptr %7, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !165
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %2

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8, !tbaa !167
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_init_special_builtins(ptr noundef %0) local_unnamed_addr #1 !prof !55 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %3 = load i8, ptr %2, align 2, !tbaa !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14, !prof !169

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 51
  %7 = load i8, ptr %6, align 1, !tbaa !170
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !169

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %11 = load i8, ptr %10, align 4, !tbaa !86
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %13, %9, %1
  %15 = phi i64 [ 9, %13 ], [ 10, %9 ], [ 8, %1 ]
  %16 = getelementptr inbounds %struct.builtin_macro, ptr @builtin_array, i64 %15
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 22
  br label %18

18:                                               ; preds = %14, %37
  %19 = phi ptr [ @builtin_array, %14 ], [ %42, %37 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 0, i32 1
  %22 = load i16, ptr %21, align 8, !tbaa !173
  %23 = zext i16 %22 to i32
  %24 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %20, i32 noundef %23) #10
  %25 = getelementptr inbounds %struct.cpp_hashnode, ptr %24, i64 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, -320
  %28 = or disjoint i16 %27, 257
  store i16 %28, ptr %25, align 2
  %29 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 0, i32 3
  %30 = load i8, ptr %29, align 4, !tbaa !174
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !175

32:                                               ; preds = %18
  %33 = load i8, ptr %17, align 4, !tbaa !107
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35, !prof !176

35:                                               ; preds = %32, %18
  %36 = or i16 %27, 1281
  store i16 %36, ptr %25, align 2
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !177
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.cpp_hashnode, ptr %24, i64 0, i32 4
  store i32 %40, ptr %41, align 8, !tbaa !122
  %42 = getelementptr inbounds %struct.builtin_macro, ptr %19, i64 1
  %43 = icmp ult ptr %42, %16
  br i1 %43, label %18, label %44, !prof !178, !llvm.loop !179

44:                                               ; preds = %37
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_init_builtins(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !55 {
  tail call void @cpp_init_special_builtins(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %4 = load i8, ptr %3, align 2, !tbaa !168
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15, !prof !169

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 51
  %8 = load i8, ptr %7, align 1, !tbaa !170
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10, !prof !169

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %12 = load i8, ptr %11, align 4, !tbaa !86
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  tail call void @_cpp_define_builtin(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #10
  br label %15

15:                                               ; preds = %14, %10, %2
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !81
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27, !prof !169

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !56
  switch i32 %21, label %23 [
    i32 9, label %27
    i32 3, label %22
  ], !prof !180

22:                                               ; preds = %19
  br label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %25 = load i8, ptr %24, align 1, !tbaa !79
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27, !prof !169

27:                                               ; preds = %23, %19, %15, %22
  %28 = phi ptr [ @.str.26, %22 ], [ @.str.24, %15 ], [ @.str.25, %19 ], [ @.str.27, %23 ]
  tail call void @_cpp_define_builtin(ptr noundef nonnull %0, ptr noundef nonnull %28) #10
  br label %29

29:                                               ; preds = %27, %23
  %30 = icmp eq i32 %1, 0
  %31 = select i1 %30, ptr @.str.29, ptr @.str.28, !prof !133
  tail call void @_cpp_define_builtin(ptr noundef nonnull %0, ptr noundef nonnull %31) #10
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %33 = load i8, ptr %32, align 2, !tbaa !181
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !169

35:                                               ; preds = %29
  tail call void @_cpp_define_builtin(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #10
  br label %36

36:                                               ; preds = %35, %29
  ret void
}

; Function Attrs: optsize
declare void @_cpp_define_builtin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_post_options(ptr noundef %0) local_unnamed_addr #1 !prof !55 {
  tail call fastcc void @post_options(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !169

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 34
  %7 = load i8, ptr %6, align 8, !tbaa !99
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 35
  %13 = load i8, ptr %12, align 1, !tbaa !182
  %14 = icmp eq i8 %13, 0
  %15 = or disjoint i32 %11, 520
  %16 = select i1 %14, i32 %11, i32 %15, !prof !169
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !169

18:                                               ; preds = %10
  tail call fastcc void @mark_named_operators(ptr noundef nonnull %0, i32 noundef %16) #9
  br label %19

19:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @post_options(ptr nocapture noundef %0) unnamed_addr #6 !prof !55 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5, !prof !169

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  store i8 0, ptr %6, align 1, !tbaa !184
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %9 = load i8, ptr %8, align 2, !tbaa !185
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11, !prof !169

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %13 = load i8, ptr %12, align 4, !tbaa !186
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %16, align 8, !tbaa !187
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  store i8 0, ptr %18, align 2, !tbaa !168
  br label %19

19:                                               ; preds = %17, %7
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 15
  %21 = load i8, ptr %20, align 1, !tbaa !100
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %28, !prof !169

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !87
  %26 = icmp eq i8 %25, 0
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %20, align 1, !tbaa !100
  br label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %30 = load i8, ptr %29, align 2, !tbaa !168
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32, !prof !169

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 3
  store i8 0, ptr %33, align 1, !tbaa !89
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 33
  store i8 0, ptr %34, align 1, !tbaa !97
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 7
  store i8 0, ptr %35, align 1, !tbaa !87
  store i8 0, ptr %20, align 1, !tbaa !100
  br label %36

36:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_named_operators(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !134 !PGOFuncName !188 {
  %3 = trunc i32 %1 to i16
  %4 = shl i16 %3, 6
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %21, %5 ]
  %7 = getelementptr inbounds i8, ptr @operator_array, i64 %6
  %8 = load ptr, ptr %7, align 16, !tbaa !167
  %9 = getelementptr inbounds %struct.builtin_operator, ptr %7, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !189
  %11 = zext i16 %10 to i32
  %12 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %8, i32 noundef %11) #10
  %13 = getelementptr inbounds %struct.cpp_hashnode, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = or i16 %14, %4
  store i16 %15, ptr %13, align 2
  %16 = getelementptr inbounds %struct.cpp_hashnode, ptr %12, i64 0, i32 1
  %17 = getelementptr inbounds %struct.builtin_operator, ptr %7, i64 0, i32 2
  %18 = load i16, ptr %17, align 2, !tbaa !165
  %19 = trunc i16 %18 to i8
  %20 = shl i8 %19, 1
  store i8 %20, ptr %16, align 8
  %21 = add nuw nsw i64 %6, 16
  %22 = icmp ult i64 %6, 160
  br i1 %22, label %5, label %23, !llvm.loop !190

23:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_read_main_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !55 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %4 = load i32, ptr %3, align 8, !tbaa !191
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !169

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @deps_init() #10
  store ptr %11, ptr %7, align 8, !tbaa !142
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  tail call void @deps_add_default_target(ptr noundef %13, ptr noundef %1) #10
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 16
  %16 = tail call ptr @_cpp_find_file(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %15, i8 noundef zeroext 0, i32 noundef 0) #10
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 18
  store ptr %16, ptr %17, align 8, !tbaa !192
  %18 = tail call zeroext i8 @_cpp_find_failed(ptr noundef %16) #10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36, !prof !169

20:                                               ; preds = %14
  %21 = load ptr, ptr %17, align 8, !tbaa !192
  %22 = tail call zeroext i8 @_cpp_stack_file(ptr noundef nonnull %0, ptr noundef %21, i8 noundef zeroext 0) #10
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %24 = load i8, ptr %23, align 2, !tbaa !185
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26, !prof !169

26:                                               ; preds = %20
  tail call fastcc void @read_original_filename(ptr noundef nonnull %0) #9
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  %29 = load ptr, ptr %28, align 8, !tbaa !193
  %30 = getelementptr inbounds %struct.line_maps, ptr %28, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !195
  %32 = add i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.line_map, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !196
  br label %36

36:                                               ; preds = %20, %26, %14
  %37 = phi ptr [ null, %14 ], [ %35, %26 ], [ %1, %20 ]
  ret ptr %37
}

; Function Attrs: optsize
declare ptr @deps_init() local_unnamed_addr #3

; Function Attrs: optsize
declare void @deps_add_default_target(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @_cpp_find_file(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @_cpp_find_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @_cpp_stack_file(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_original_filename(ptr noundef %0) unnamed_addr #1 !prof !134 !PGOFuncName !198 {
  %2 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 37
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store i8 1, ptr %7, align 8, !tbaa !199
  %8 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #10
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #10
  store i8 0, ptr %7, align 8, !tbaa !199
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 55
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 2, !tbaa !200
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i32
  %17 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef %16) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call fastcc void @read_original_directory(ptr noundef nonnull %0) #9
  br label %21

20:                                               ; preds = %6, %12, %1
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #10
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: optsize
declare ptr @_cpp_lex_direct(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_backup_tokens(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_original_directory(ptr noundef %0) unnamed_addr #1 !prof !134 !PGOFuncName !201 {
  %2 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 37
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #10
  br label %47

7:                                                ; preds = %1
  %8 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 55
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 2) #10
  br label %47

13:                                               ; preds = %7
  %14 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #10
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
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 3) #10
  br label %47

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !202
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = alloca i8, i64 %32, align 16
  %43 = getelementptr inbounds i8, ptr %24, i64 1
  %44 = add i32 %20, -4
  %45 = zext i32 %44 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %42, ptr nonnull align 1 %43, i64 %45, i1 false)
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  store i8 0, ptr %46, align 1, !tbaa !122
  call void %39(ptr noundef nonnull %0, ptr noundef nonnull %42) #10
  br label %47

47:                                               ; preds = %37, %41, %36, %12, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_finish(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !55 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %4 = load i8, ptr %3, align 2, !tbaa !203
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !169

6:                                                ; preds = %2
  tail call void @cpp_forall_identifiers(ptr noundef nonnull %0, ptr noundef nonnull @_cpp_warn_if_unused_macro, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !136
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !204

10:                                               ; preds = %7, %10
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !136
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %10, !prof !205, !llvm.loop !206

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %15 = load i32, ptr %14, align 8, !tbaa !191
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %27, !prof !207

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  tail call void @deps_write(ptr noundef %21, ptr noundef nonnull %1, i32 noundef 72) #10
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !208
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !142
  tail call void @deps_phony_targets(ptr noundef %26, ptr noundef nonnull %1) #10
  br label %27

27:                                               ; preds = %19, %25, %13
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 11
  %29 = load i8, ptr %28, align 1, !tbaa !209
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31, !prof !169

31:                                               ; preds = %27
  tail call void @_cpp_report_missing_guards(ptr noundef nonnull %0) #10
  br label %32

32:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: optsize
declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @_cpp_warn_if_unused_macro(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @deps_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @deps_phony_targets(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_report_missing_guards(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!54}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!36 = !{ptr @cpp_create_reader, ptr @init_library, i64 1}
!37 = !{ptr @cpp_create_reader, ptr @xcalloc, i64 1}
!38 = !{ptr @cpp_create_reader, ptr @cpp_set_lang, i64 1}
!39 = !{ptr @cpp_create_reader, ptr @_cpp_default_encoding, i64 2}
!40 = !{ptr @cpp_create_reader, ptr @_cpp_init_tokenrun, i64 1}
!41 = !{ptr @cpp_create_reader, ptr @_cpp_get_buff, i64 2}
!42 = !{ptr @cpp_create_reader, ptr @_cpp_expand_op_stack, i64 1}
!43 = !{ptr @cpp_create_reader, ptr @_obstack_begin, i64 1}
!44 = !{ptr @cpp_create_reader, ptr @_cpp_init_files, i64 1}
!45 = !{ptr @cpp_create_reader, ptr @_cpp_init_hashtable, i64 1}
!46 = !{ptr @cpp_init_special_builtins, ptr @cpp_lookup, i64 5}
!47 = !{ptr @cpp_init_builtins, ptr @cpp_init_special_builtins, i64 1}
!48 = !{ptr @cpp_init_builtins, ptr @_cpp_define_builtin, i64 3}
!49 = !{ptr @cpp_post_options, ptr @post_options, i64 1}
!50 = !{ptr @cpp_read_main_file, ptr @_cpp_find_file, i64 1}
!51 = !{ptr @cpp_read_main_file, ptr @_cpp_find_failed, i64 1}
!52 = !{ptr @cpp_read_main_file, ptr @_cpp_stack_file, i64 1}
!53 = !{ptr @cpp_finish, ptr @_cpp_pop_buffer, i64 1}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 1}
!56 = !{!57, !62, i64 1044}
!57 = !{!"cpp_reader", !58, i64 0, !58, i64 8, !61, i64 16, !58, i64 40, !62, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !63, i64 80, !58, i64 136, !58, i64 144, !64, i64 152, !62, i64 176, !59, i64 180, !58, i64 184, !58, i64 192, !66, i64 200, !58, i64 264, !58, i64 272, !58, i64 280, !58, i64 288, !58, i64 296, !58, i64 304, !68, i64 312, !59, i64 400, !59, i64 401, !58, i64 408, !58, i64 416, !59, i64 424, !58, i64 432, !69, i64 440, !58, i64 472, !62, i64 480, !62, i64 484, !58, i64 488, !62, i64 496, !70, i64 504, !70, i64 528, !70, i64 552, !70, i64 576, !70, i64 600, !58, i64 624, !58, i64 632, !64, i64 640, !64, i64 664, !58, i64 688, !68, i64 696, !68, i64 784, !58, i64 872, !71, i64 880, !58, i64 1016, !58, i64 1024, !58, i64 1032, !72, i64 1040, !74, i64 1168, !59, i64 1200, !75, i64 1208, !58, i64 1240, !58, i64 1248, !58, i64 1256, !58, i64 1264, !62, i64 1272, !76, i64 1280, !58, i64 1296}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!"lexer_state", !59, i64 0, !59, i64 1, !59, i64 2, !59, i64 3, !59, i64 4, !59, i64 5, !59, i64 6, !59, i64 7, !59, i64 8, !59, i64 9, !59, i64 10, !62, i64 12, !59, i64 16, !59, i64 17}
!62 = !{!"int", !59, i64 0}
!63 = !{!"cpp_context", !58, i64 0, !58, i64 8, !59, i64 16, !58, i64 32, !58, i64 40, !59, i64 48}
!64 = !{!"cpp_token", !62, i64 0, !62, i64 4, !65, i64 6, !59, i64 8}
!65 = !{!"short", !59, i64 0}
!66 = !{!"cpp_dir", !58, i64 0, !58, i64 8, !62, i64 16, !59, i64 20, !59, i64 21, !58, i64 24, !58, i64 32, !58, i64 40, !67, i64 48, !67, i64 56}
!67 = !{!"long", !59, i64 0}
!68 = !{!"obstack", !67, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !67, i64 40, !62, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !62, i64 80, !62, i64 80, !62, i64 80}
!69 = !{!"tokenrun", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24}
!70 = !{!"cset_converter", !58, i64 0, !58, i64 8, !62, i64 16}
!71 = !{!"cpp_callbacks", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !58, i64 112, !58, i64 120, !58, i64 128}
!72 = !{!"cpp_options", !62, i64 0, !62, i64 4, !59, i64 8, !59, i64 9, !59, i64 10, !59, i64 11, !59, i64 12, !59, i64 13, !59, i64 14, !59, i64 15, !59, i64 16, !59, i64 17, !59, i64 18, !59, i64 19, !59, i64 20, !59, i64 21, !59, i64 22, !59, i64 23, !59, i64 24, !59, i64 25, !59, i64 26, !59, i64 27, !59, i64 28, !59, i64 29, !59, i64 30, !59, i64 31, !59, i64 32, !59, i64 33, !59, i64 34, !59, i64 35, !59, i64 36, !59, i64 37, !59, i64 38, !59, i64 39, !59, i64 40, !59, i64 41, !59, i64 42, !58, i64 48, !58, i64 56, !58, i64 64, !62, i64 72, !59, i64 76, !59, i64 77, !73, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !59, i64 120, !59, i64 121, !59, i64 122, !59, i64 123, !59, i64 124}
!73 = !{!"", !62, i64 0, !59, i64 4, !59, i64 5, !59, i64 6, !59, i64 7}
!74 = !{!"spec_nodes", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24}
!75 = !{!"", !58, i64 0, !58, i64 8, !58, i64 16, !62, i64 24}
!76 = !{!"", !58, i64 0, !62, i64 8, !62, i64 12}
!77 = !{!78, !59, i64 0}
!78 = !{!"lang_flags", !59, i64 0, !59, i64 1, !59, i64 2, !59, i64 3, !59, i64 4, !59, i64 5, !59, i64 6, !59, i64 7}
!79 = !{!57, !59, i64 1075}
!80 = !{!78, !59, i64 1}
!81 = !{!57, !59, i64 1048}
!82 = !{!78, !59, i64 2}
!83 = !{!57, !59, i64 1055}
!84 = !{!57, !59, i64 1071}
!85 = !{!78, !59, i64 4}
!86 = !{!57, !59, i64 1076}
!87 = !{!57, !59, i64 1053}
!88 = !{!78, !59, i64 5}
!89 = !{!57, !59, i64 1049}
!90 = !{!78, !59, i64 6}
!91 = !{!57, !59, i64 1054}
!92 = !{!78, !59, i64 7}
!93 = !{!57, !59, i64 1056}
!94 = !{!57, !59, i64 1062}
!95 = !{!57, !59, i64 1051}
!96 = !{!57, !59, i64 1052}
!97 = !{!57, !59, i64 1079}
!98 = !{!57, !62, i64 1040}
!99 = !{!57, !59, i64 1080}
!100 = !{!57, !59, i64 1061}
!101 = !{!57, !59, i64 1065}
!102 = !{!57, !59, i64 1058}
!103 = !{!57, !59, i64 1064}
!104 = !{!57, !59, i64 1070}
!105 = !{!57, !59, i64 1072}
!106 = !{!57, !59, i64 1067}
!107 = !{!57, !59, i64 1068}
!108 = !{!57, !62, i64 1112}
!109 = !{!57, !67, i64 1128}
!110 = !{!57, !67, i64 1136}
!111 = !{!57, !67, i64 1152}
!112 = !{!57, !67, i64 1144}
!113 = !{!57, !59, i64 1160}
!114 = !{!57, !59, i64 1161}
!115 = !{!57, !59, i64 1162}
!116 = !{!57, !58, i64 1088}
!117 = !{!57, !58, i64 1096}
!118 = !{!57, !58, i64 1104}
!119 = !{!57, !58, i64 208}
!120 = !{!57, !58, i64 40}
!121 = !{!57, !59, i64 21}
!122 = !{!59, !59, i64 0}
!123 = !{!57, !65, i64 670}
!124 = !{!57, !58, i64 472}
!125 = !{!57, !58, i64 456}
!126 = !{!57, !58, i64 432}
!127 = !{!57, !58, i64 136}
!128 = !{!57, !58, i64 120}
!129 = !{!57, !58, i64 56}
!130 = !{!57, !58, i64 64}
!131 = !{!57, !58, i64 1296}
!132 = !{!"cpp_init.c:init_library"}
!133 = !{!"branch_weights", i32 1, i32 2}
!134 = !{!"function_entry_count", i64 0}
!135 = !{!57, !58, i64 1024}
!136 = !{!57, !58, i64 0}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!57, !58, i64 1208}
!140 = !{!57, !58, i64 488}
!141 = !{!57, !62, i64 496}
!142 = !{!57, !58, i64 688}
!143 = !{!57, !58, i64 792}
!144 = !{!57, !67, i64 824}
!145 = !{!57, !58, i64 816}
!146 = !{!57, !58, i64 800}
!147 = !{!57, !58, i64 808}
!148 = !{!57, !58, i64 72}
!149 = !{!69, !58, i64 0}
!150 = !{!69, !58, i64 16}
!151 = distinct !{!151, !138}
!152 = !{!57, !58, i64 80}
!153 = !{!63, !58, i64 0}
!154 = distinct !{!154, !138}
!155 = !{!57, !58, i64 1280}
!156 = !{!57, !62, i64 1288}
!157 = !{!158, !58, i64 0}
!158 = !{!"", !58, i64 0, !62, i64 8}
!159 = distinct !{!159, !138}
!160 = !{!161, !58, i64 0}
!161 = !{!"def_pragma_macro", !58, i64 0, !58, i64 8, !58, i64 16}
!162 = !{!161, !58, i64 8}
!163 = distinct !{!163, !138}
!164 = distinct !{!164, !138}
!165 = !{!166, !65, i64 10}
!166 = !{!"builtin_operator", !58, i64 0, !65, i64 8, !65, i64 10}
!167 = !{!166, !58, i64 0}
!168 = !{!57, !59, i64 1082}
!169 = !{!"branch_weights", i32 2, i32 1}
!170 = !{!57, !59, i64 1163}
!171 = !{!172, !58, i64 0}
!172 = !{!"builtin_macro", !58, i64 0, !65, i64 8, !65, i64 10, !59, i64 12}
!173 = !{!172, !65, i64 8}
!174 = !{!172, !59, i64 12}
!175 = !{!"branch_weights", i32 6, i32 5}
!176 = !{!"branch_weights", i32 1, i32 6}
!177 = !{!172, !65, i64 10}
!178 = !{!"branch_weights", i32 513, i32 127}
!179 = distinct !{!179, !138}
!180 = !{!"branch_weights", i32 4, i32 3, i32 2}
!181 = !{!57, !59, i64 1050}
!182 = !{!57, !59, i64 1081}
!183 = !{!"cpp_init.c:post_options"}
!184 = !{!57, !59, i64 1063}
!185 = !{!57, !59, i64 1078}
!186 = !{!57, !59, i64 1164}
!187 = !{!57, !59, i64 24}
!188 = !{!"cpp_init.c:mark_named_operators"}
!189 = !{!166, !65, i64 8}
!190 = distinct !{!190, !138}
!191 = !{!57, !62, i64 1120}
!192 = !{!57, !58, i64 272}
!193 = !{!194, !58, i64 0}
!194 = !{!"line_maps", !58, i64 0, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !59, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !58, i64 48}
!195 = !{!194, !62, i64 12}
!196 = !{!197, !58, i64 0}
!197 = !{!"line_map", !58, i64 0, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !59, i64 21, !62, i64 22}
!198 = !{!"cpp_init.c:read_original_filename"}
!199 = !{!57, !59, i64 16}
!200 = !{!64, !65, i64 6}
!201 = !{!"cpp_init.c:read_original_directory"}
!202 = !{!57, !58, i64 896}
!203 = !{!57, !59, i64 1074}
!204 = !{!"branch_weights", i32 1, i32 1}
!205 = !{!"branch_weights", i32 1, i32 0}
!206 = distinct !{!206, !138}
!207 = !{!"branch_weights", i32 1, i32 5}
!208 = !{!57, !59, i64 1125}
!209 = !{!57, !59, i64 1057}
