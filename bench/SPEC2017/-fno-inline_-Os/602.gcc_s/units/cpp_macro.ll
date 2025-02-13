; ModuleID = 'cpp_macro.c'
source_filename = "cpp_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.cpp_macro = type { ptr, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { ptr }
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
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct._cpp_buff = type { ptr, ptr, ptr, ptr }
%struct.macro_arg = type { ptr, ptr, ptr, i32, i32 }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }

@.str = private unnamed_addr constant [23 x i8] c"macro \22%s\22 is not used\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid built-in macro \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not determine file timestamp\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\22??? ??? ?? ??:??:?? ????\22\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\22%s %2d %4d\22\00", align 1
@reltable._cpp_builtin_macro_text = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32)], align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"\22%02d:%02d:%02d\22\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"could not determine date and time\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\22??? ?? ????\22\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\22??:??:??\22\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"__COUNTER__ expanded inside directive with -fdirectives-only\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"ISO C99 requires rest arguments to be used\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"macro \22%s\22 requires %u arguments, but only %u given\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"macro \22%s\22 passed %u arguments, but takes just %u\00", align 1
@.str.26 = private unnamed_addr constant [64 x i8] c"pasting \22%s\22 and \22%s\22 does not give a valid preprocessing token\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"function-like macro \22%s\22 must be used with arguments in traditional C\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [92 x i8] c"invoking macro %s argument %d: empty macro arguments are undefined in ISO C90 and ISO C++98\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"invalid string literal, ignoring final '\\'\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"duplicate macro parameter \22%s\22\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"\22%s\22 redefined\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"this is the location of the previous definition\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"__STDC_\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"__STDC_FORMAT_MACROS\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"__STDC_LIMIT_MACROS\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"__STDC_CONSTANT_MACROS\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"'##' cannot appear at either end of a macro expansion\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"ISO C99 requires whitespace after the macro name\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"!\22#%&'()*+,-./:;<=>?[\\]^{|}~\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"missing whitespace after the macro name\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"'#' is not followed by a macro parameter\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"\22%s\22 may not appear in macro parameter list\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"macro parameters must be comma-separated\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"parameter name missing\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"anonymous variadic macros were introduced in C99\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"ISO C does not permit named variadic macros\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"missing ')' in macro parameter list\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.49 = private unnamed_addr constant [58 x i8] c"macro argument \22%s\22 would be stringified in traditional C\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"invalid hash type %d in cpp_macro_definition\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @_cpp_warn_if_unused_macro(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) local_unnamed_addr #0 !prof !66 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 319
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = tail call ptr @linemap_lookup(ptr noundef %17, i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.line_map, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, ptr %18, align 8, !tbaa !89
  %26 = load ptr, ptr %1, align 8, !tbaa !93
  %27 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %25, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %26) #20
  br label %28

28:                                               ; preds = %8, %15, %24, %3
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !66 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !67
  switch i32 %5, label %6 [
    i32 8, label %9
    i32 2, label %36
    i32 3, label %36
    i32 4, label %71
    i32 0, label %77
    i32 6, label %107
    i32 1, label %111
    i32 5, label %111
    i32 9, label %156
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !93
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %7) #20
  br label %176

9:                                                ; preds = %2
  %10 = tail call ptr @cpp_get_buffer(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %180

14:                                               ; preds = %9
  %15 = tail call ptr @cpp_get_file(ptr noundef nonnull %10) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %170, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @_cpp_get_file_stat(ptr noundef nonnull %15) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stat, ptr %18, i64 0, i32 12
  %22 = tail call ptr @localtime(ptr noundef nonnull %21) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @asctime(ptr noundef nonnull %22) #20
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #21
  %27 = add i64 %26, 2
  %28 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %27) #20
  store i8 34, ptr %28, align 1, !tbaa !67
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %25) #20
  %31 = getelementptr inbounds i8, ptr %28, i64 %26
  store i8 34, ptr %31, align 1, !tbaa !67
  br label %34

32:                                               ; preds = %17, %20
  %33 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.2) #20
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ @.str.3, %32 ], [ %28, %24 ]
  store ptr %35, ptr %11, align 8, !tbaa !97
  br label %173

36:                                               ; preds = %2, %2
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.line_maps, ptr %38, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !99
  %41 = tail call ptr @linemap_lookup(ptr noundef %38, i32 noundef %40) #20
  %42 = load i32, ptr %4, align 8, !tbaa !67
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.line_map, ptr %41, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !91
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load ptr, ptr %37, align 8, !tbaa !70
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i32 [ %46, %48 ], [ %55, %51 ]
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.line_map, ptr %50, i64 %53, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !91
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %51, label %57, !llvm.loop !102

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.line_map, ptr %50, i64 %53
  br label %59

59:                                               ; preds = %57, %44, %36
  %60 = phi ptr [ %41, %36 ], [ %41, %44 ], [ %58, %57 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !104
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #21
  %63 = trunc i64 %62 to i32
  %64 = shl i64 %62, 1
  %65 = add i64 %64, 3
  %66 = and i64 %65, 4294967295
  %67 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %66) #20
  store i8 34, ptr %67, align 1, !tbaa !67
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = tail call ptr @cpp_quote_string(ptr noundef nonnull %68, ptr noundef %61, i32 noundef %63) #22
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 34, ptr %69, align 1, !tbaa !67
  store i8 0, ptr %70, align 1, !tbaa !67
  br label %180

71:                                               ; preds = %2
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !70
  %74 = getelementptr inbounds %struct.line_maps, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !105
  %76 = add i32 %75, -1
  br label %176

77:                                               ; preds = %2
  %78 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  %80 = load ptr, ptr %79, align 8, !tbaa !101
  %81 = getelementptr inbounds %struct.line_maps, ptr %79, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !106
  %83 = add i32 %82, -1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %86 = load i8, ptr %85, align 2, !tbaa !107
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.line_maps, ptr %79, i64 0, i32 8
  br label %94

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %92 = load ptr, ptr %91, align 8, !tbaa !108
  %93 = getelementptr inbounds %struct.cpp_token, ptr %92, i64 -1
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi ptr [ %89, %88 ], [ %93, %90 ]
  %96 = load i32, ptr %95, align 4, !tbaa !109
  %97 = getelementptr inbounds %struct.line_map, ptr %80, i64 %84, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !110
  %99 = sub i32 %96, %98
  %100 = getelementptr inbounds %struct.line_map, ptr %80, i64 %84, i32 6
  %101 = load i8, ptr %100, align 2
  %102 = zext nneg i8 %101 to i32
  %103 = lshr i32 %99, %102
  %104 = getelementptr inbounds %struct.line_map, ptr %80, i64 %84, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !111
  %106 = add i32 %103, %105
  br label %176

107:                                              ; preds = %2
  %108 = tail call fastcc i32 @cpp_in_system_header(ptr noundef %0) #22, !range !112
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  br label %176

111:                                              ; preds = %2, %2
  %112 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 41
  %113 = load ptr, ptr %112, align 8, !tbaa !113
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %151

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %116 = tail call ptr @__errno_location() #24
  store i32 0, ptr %116, align 4, !tbaa !109
  %117 = tail call i64 @time(ptr noundef null) #20
  store i64 %117, ptr %3, align 8, !tbaa !114
  %118 = icmp eq i64 %117, -1
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, ptr %116, align 4, !tbaa !109
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %115, %119
  %123 = call ptr @localtime(ptr noundef nonnull %3) #20
  %124 = icmp eq ptr %123, null
  br i1 %124, label %146, label %125

125:                                              ; preds = %122
  %126 = call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef 14) #20
  store ptr %126, ptr %112, align 8, !tbaa !113
  %127 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !115
  %129 = sext i32 %128 to i64
  %130 = shl i64 %129, 2
  %131 = call ptr @llvm.load.relative.i64(ptr @reltable._cpp_builtin_macro_text, i64 %130)
  %132 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !117
  %134 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 5
  %135 = load i32, ptr %134, align 4, !tbaa !118
  %136 = add nsw i32 %135, 1900
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %131, i32 noundef %133, i32 noundef %136) #20
  %138 = call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef 11) #20
  %139 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  store ptr %138, ptr %139, align 8, !tbaa !119
  %140 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !120
  %142 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !121
  %144 = load i32, ptr %123, align 8, !tbaa !122
  %145 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %138, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %141, i32 noundef %143, i32 noundef %144) #20
  br label %149

146:                                              ; preds = %119, %122
  %147 = call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.6) #20
  store ptr @.str.7, ptr %112, align 8, !tbaa !113
  %148 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  store ptr @.str.8, ptr %148, align 8, !tbaa !119
  br label %149

149:                                              ; preds = %146, %125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  %150 = load i32, ptr %4, align 8, !tbaa !67
  br label %151

151:                                              ; preds = %149, %111
  %152 = phi i32 [ %150, %149 ], [ %5, %111 ]
  %153 = icmp eq i32 %152, 1
  %154 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  %155 = select i1 %153, ptr %112, ptr %154
  br label %170

156:                                              ; preds = %2
  %157 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %158 = load i8, ptr %157, align 4, !tbaa !123
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %162 = load i8, ptr %161, align 8, !tbaa !124
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.9) #20
  br label %166

166:                                              ; preds = %164, %160, %156
  %167 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %168 = load i32, ptr %167, align 8, !tbaa !125
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 8, !tbaa !125
  br label %176

170:                                              ; preds = %14, %151
  %171 = phi ptr [ %155, %151 ], [ %11, %14 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !96
  br label %173

173:                                              ; preds = %170, %34
  %174 = phi ptr [ %172, %170 ], [ %35, %34 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %107, %71, %94, %166, %6, %173
  %177 = phi i32 [ 1, %173 ], [ %110, %107 ], [ %76, %71 ], [ %106, %94 ], [ %168, %166 ], [ 1, %6 ]
  %178 = call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef 21) #20
  %179 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %178, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %177) #20
  br label %180

180:                                              ; preds = %9, %59, %176, %173
  %181 = phi ptr [ %178, %176 ], [ %174, %173 ], [ %67, %59 ], [ %12, %9 ]
  ret ptr %181
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_cpp_get_file_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare ptr @asctime(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @_cpp_unaligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @cpp_quote_string(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 !prof !66 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %14
  %6 = phi i32 [ %9, %14 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %14 ], [ %0, %3 ]
  %8 = phi ptr [ %10, %14 ], [ %1, %3 ]
  %9 = add i32 %6, -1
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %8, align 1, !tbaa !67
  switch i8 %11, label %14 [
    i8 92, label %12
    i8 34, label %12
  ]

12:                                               ; preds = %5, %5
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 92, ptr %7, align 1, !tbaa !67
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi i64 [ 2, %12 ], [ 1, %5 ]
  %16 = phi ptr [ %13, %12 ], [ %7, %5 ]
  %17 = getelementptr inbounds i8, ptr %7, i64 %15
  store i8 %11, ptr %16, align 1, !tbaa !67
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %19, label %5, !llvm.loop !126

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %0, %3 ], [ %17, %14 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cpp_in_system_header(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !66 !PGOFuncName !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !128
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 15
  %6 = load i8, ptr %5, align 2, !tbaa !129
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_arguments_ok(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !130
  %7 = zext i16 %6 to i32
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = icmp ugt i32 %7, %3
  br i1 %10, label %11, label %31

11:                                               ; preds = %9
  %12 = add nuw nsw i32 %3, 1
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %21 = load i8, ptr %20, align 1, !tbaa !131
  %22 = icmp ne i8 %21, 0
  %23 = and i8 %16, 4
  %24 = icmp eq i8 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.23) #20
  br label %34

28:                                               ; preds = %14, %11
  %29 = load ptr, ptr %2, align 8, !tbaa !93
  %30 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef %29, i32 noundef %7, i32 noundef %3) #20
  br label %34

31:                                               ; preds = %9
  %32 = load ptr, ptr %2, align 8, !tbaa !93
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef %32, i32 noundef %3, i32 noundef %7) #20
  br label %34

34:                                               ; preds = %28, %31, %19, %26, %4
  %35 = phi i8 [ 1, %4 ], [ 1, %26 ], [ 1, %19 ], [ 0, %31 ], [ 0, %28 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_push_token_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = tail call fastcc ptr @next_context(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 5
  store i8 1, ptr %6, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !67
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 %10
  %12 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_context(ptr nocapture noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call ptr @xmalloc(i64 noundef 56) #20
  %8 = load ptr, ptr %2, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !138
  store ptr null, ptr %7, align 8, !tbaa !137
  store ptr %7, ptr %8, align 8, !tbaa !137
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %7, %6 ], [ %4, %1 ]
  store ptr %11, ptr %2, align 8, !tbaa !136
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_push_text_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = tail call fastcc ptr @next_context(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 5
  store i8 1, ptr %6, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds i8, ptr %2, i64 %3
  %11 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = or i16 %13, 2048
  store i16 %14, ptr %12, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_pop_context(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, -2049
  store i16 %10, ptr %8, align 2
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %13) #20
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  store ptr %18, ptr %2, align 8, !tbaa !136
  ret void
}

; Function Attrs: optsize
declare void @_cpp_release_buff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_get_token(ptr noundef %0) local_unnamed_addr #0 !prof !139 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 4, !tbaa !140
  store i8 0, ptr %2, align 4, !tbaa !140
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %49, %1
  %7 = load ptr, ptr %4, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !141

11:                                               ; preds = %6
  %12 = tail call ptr @_cpp_lex_token(ptr noundef nonnull %0) #20
  br label %42

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 5
  %21 = load i8, ptr %20, align 8, !tbaa !132
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 1
  store ptr %24, ptr %14, align 8, !tbaa !67
  br label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds ptr, ptr %15, i64 1
  store ptr %26, ptr %14, align 8, !tbaa !67
  %27 = load ptr, ptr %15, align 8, !tbaa !96
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi ptr [ %15, %23 ], [ %27, %25 ]
  %30 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !142
  %32 = and i16 %31, 8
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  tail call fastcc void @paste_all_tokens(ptr noundef %0, ptr noundef nonnull %29) #22
  %35 = load i8, ptr %5, align 8, !tbaa !124
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %29) #22
  br label %142

39:                                               ; preds = %13
  tail call void @_cpp_pop_context(ptr noundef nonnull %0) #22
  %40 = load i8, ptr %5, align 8, !tbaa !124
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %140, label %49

42:                                               ; preds = %28, %11
  %43 = phi ptr [ %29, %28 ], [ %12, %11 ]
  %44 = load i8, ptr %5, align 8, !tbaa !124
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 1
  %47 = load i8, ptr %46, align 4
  br i1 %45, label %50, label %48, !prof !143

48:                                               ; preds = %42
  switch i8 %47, label %142 [
    i8 68, label %49
    i8 53, label %52
  ], !prof !144

49:                                               ; preds = %48, %122, %39, %34
  br label %6

50:                                               ; preds = %42
  %51 = icmp eq i8 %47, 53
  br i1 %51, label %52, label %142, !prof !145

52:                                               ; preds = %48, %50
  %53 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.cpp_hashnode, ptr %54, i64 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = and i16 %56, 63
  %58 = icmp eq i16 %57, 1
  br i1 %58, label %59, label %142, !prof !146

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !142
  %62 = and i16 %61, 32
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %142, !prof !147

64:                                               ; preds = %59
  %65 = and i16 %56, 2048
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %129, !prof !147

67:                                               ; preds = %64
  %68 = icmp eq i8 %3, 0
  br i1 %68, label %76, label %69, !prof !147

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !133
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 12
  %75 = load i32, ptr %43, align 8, !tbaa !148
  store i32 %75, ptr %74, align 8, !tbaa !149
  br label %76

76:                                               ; preds = %73, %69, %67
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %78 = load i8, ptr %77, align 8, !tbaa !150
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %142, !prof !151

80:                                               ; preds = %76
  %81 = load i16, ptr %55, align 2
  %82 = and i16 %81, 16384
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %118, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !152
  %87 = icmp eq ptr %86, null
  br i1 %87, label %142, label %88

88:                                               ; preds = %84
  %89 = tail call ptr @cpp_peek_token(ptr noundef nonnull %0, i32 noundef 0) #20
  %90 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = icmp eq i8 %91, 72
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 2
  %95 = load i16, ptr %94, align 2, !tbaa !142
  %96 = load ptr, ptr %85, align 8, !tbaa !152
  %97 = tail call ptr %96(ptr noundef nonnull %0, ptr noundef nonnull %43) #20
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %118

99:                                               ; preds = %88
  %100 = load ptr, ptr %85, align 8, !tbaa !152
  %101 = tail call ptr %100(ptr noundef nonnull %0, ptr noundef nonnull %43) #20
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %118

103:                                              ; preds = %93
  %104 = and i16 %95, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %142, label %106

106:                                              ; preds = %99, %103
  %107 = tail call ptr @cpp_peek_token(ptr noundef nonnull %0, i32 noundef 0) #20
  %108 = getelementptr inbounds %struct.cpp_token, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %109, 72
  br i1 %110, label %142, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.cpp_token, ptr %107, i64 0, i32 2
  %113 = load i16, ptr %112, align 2, !tbaa !142
  %114 = and i16 %113, 1
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %107) #22
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef %117, i32 noundef 1) #22
  br label %142

118:                                              ; preds = %80, %93, %99
  %119 = phi ptr [ %101, %99 ], [ %97, %93 ], [ %54, %80 ]
  %120 = tail call fastcc i32 @enter_macro_context(ptr noundef nonnull %0, ptr noundef nonnull %119, ptr noundef nonnull %43) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %118
  %123 = load i8, ptr %5, align 8, !tbaa !124
  %124 = icmp ne i8 %123, 0
  %125 = icmp eq i32 %120, 2
  %126 = or i1 %125, %124
  br i1 %126, label %49, label %127

127:                                              ; preds = %122
  %128 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %43) #22
  br label %142

129:                                              ; preds = %64
  %130 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 1
  %131 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 3
  %132 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 2
  %133 = tail call ptr @_cpp_temp_token(ptr noundef nonnull %0) #20
  %134 = load i8, ptr %130, align 4
  %135 = getelementptr inbounds %struct.cpp_token, ptr %133, i64 0, i32 1
  store i8 %134, ptr %135, align 4
  %136 = load i16, ptr %132, align 2, !tbaa !142
  %137 = or i16 %136, 32
  %138 = getelementptr inbounds %struct.cpp_token, ptr %133, i64 0, i32 2
  store i16 %137, ptr %138, align 2, !tbaa !142
  %139 = getelementptr inbounds %struct.cpp_token, ptr %133, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %139, ptr noundef nonnull align 8 dereferenceable(16) %131, i64 16, i1 false), !tbaa.struct !153
  br label %142

140:                                              ; preds = %39
  %141 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  br label %142

142:                                              ; preds = %50, %59, %52, %118, %84, %76, %48, %140, %127, %37, %103, %106, %111, %116, %129
  %143 = phi ptr [ %133, %129 ], [ %43, %116 ], [ %43, %111 ], [ %43, %106 ], [ %43, %103 ], [ %38, %37 ], [ %128, %127 ], [ %141, %140 ], [ %43, %48 ], [ %43, %76 ], [ %43, %84 ], [ %43, %118 ], [ %43, %52 ], [ %43, %59 ], [ %43, %50 ]
  ret ptr %143
}

; Function Attrs: optsize
declare ptr @_cpp_lex_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paste_all_tokens(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !66 !PGOFuncName !154 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 5
  %7 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i8, ptr %6, align 8, !tbaa !132
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr %7, align 8, !tbaa !67
  br i1 %10, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !67
  br label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %7, align 8, !tbaa !67
  %16 = load ptr, ptr %11, align 8, !tbaa !96
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %11, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 72
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !142
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @abort() #25
  unreachable

28:                                               ; preds = %22, %17
  %29 = call fastcc zeroext i8 @paste_tokens(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %18) #22, !range !155
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !142
  %34 = and i16 %33, 8
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %8, !llvm.loop !156

36:                                               ; preds = %28, %31
  %37 = load ptr, ptr %3, align 8, !tbaa !96
  tail call void @_cpp_push_token_context(ptr noundef %0, ptr noundef null, ptr noundef %37, i32 noundef 1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @padding_token(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !66 !PGOFuncName !157 {
  %3 = tail call ptr @_cpp_temp_token(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  store i8 72, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  store i16 0, ptr %6, align 2, !tbaa !142
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @cpp_peek_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !158 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 0, ptr %5, align 8, !tbaa !159
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %7, align 1, !tbaa !160
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 8448
  %11 = icmp eq i16 %10, 256
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = or disjoint i16 %9, 8192
  store i16 %13, ptr %8, align 2
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !162
  tail call void %15(ptr noundef nonnull %0, i32 noundef %19, ptr noundef nonnull %1) #20
  %20 = load i16, ptr %8, align 2
  br label %21

21:                                               ; preds = %12, %17, %3
  %22 = phi i16 [ %13, %12 ], [ %20, %17 ], [ %9, %3 ]
  %23 = and i16 %22, 256
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %128

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %72, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %34 = load i8, ptr %33, align 8, !tbaa !150
  %35 = add i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !150
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %37 = load i32, ptr %36, align 4, !tbaa !163
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !163
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  store i8 1, ptr %39, align 1, !tbaa !164
  %40 = call fastcc ptr @funlike_invocation_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #22
  store i8 0, ptr %39, align 1, !tbaa !164
  %41 = load i32, ptr %36, align 4, !tbaa !163
  %42 = add i32 %41, -1
  store i32 %42, ptr %36, align 4, !tbaa !163
  %43 = load i8, ptr %33, align 8, !tbaa !150
  %44 = add i8 %43, -1
  store i8 %44, ptr %33, align 8, !tbaa !150
  %45 = icmp eq ptr %40, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %48 = load i8, ptr %47, align 1, !tbaa !165
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %26, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %51, i64 0, i32 5
  %53 = load i8, ptr %52, align 2
  %54 = and i8 %53, 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load ptr, ptr %1, align 8, !tbaa !93
  %58 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %57) #20
  br label %59

59:                                               ; preds = %56, %50, %46
  %60 = load ptr, ptr %4, align 8, !tbaa !96
  %61 = icmp eq ptr %60, null
  br i1 %61, label %126, label %62

62:                                               ; preds = %59
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %60) #20
  br label %126

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 4
  %65 = load i16, ptr %64, align 8, !tbaa !130
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._cpp_buff, ptr %40, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !166
  tail call fastcc void @replace_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %27, ptr noundef %69) #22
  br label %70

70:                                               ; preds = %63, %67
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %40) #20
  %71 = load i16, ptr %8, align 2
  br label %72

72:                                               ; preds = %70, %25
  %73 = phi i16 [ %71, %70 ], [ %22, %25 ]
  %74 = or i16 %73, 2048
  store i16 %74, ptr %8, align 2
  %75 = and i16 %73, 8192
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = or i16 %73, 10240
  store i16 %78, ptr %8, align 2
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !161
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !162
  tail call void %80(ptr noundef nonnull %0, i32 noundef %84, ptr noundef nonnull %1) #20
  br label %85

85:                                               ; preds = %77, %82, %72
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %87 = load ptr, ptr %86, align 8, !tbaa !168
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %2, align 8, !tbaa !148
  tail call void %87(ptr noundef nonnull %0, i32 noundef %90, ptr noundef nonnull %1) #20
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i8, ptr %28, align 2
  %93 = or i8 %92, 8
  store i8 %93, ptr %28, align 2
  %94 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 4
  %95 = load i16, ptr %94, align 8, !tbaa !130
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !67
  %100 = tail call fastcc i32 @macro_real_token_count(ptr noundef nonnull %27) #22
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %99, i32 noundef %100) #22
  br label %101

101:                                              ; preds = %97, %91
  %102 = load ptr, ptr %4, align 8, !tbaa !96
  %103 = icmp eq ptr %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %101
  %105 = load i8, ptr %6, align 8, !tbaa !124
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef %2) #22
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef %108, i32 noundef 1) #22
  %109 = load ptr, ptr %4, align 8, !tbaa !96
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi ptr [ %102, %104 ], [ %109, %107 ]
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi ptr [ %114, %112 ], [ %111, %110 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !169
  store ptr null, ptr %113, align 8, !tbaa !169
  %115 = load ptr, ptr %4, align 8, !tbaa !96
  %116 = getelementptr inbounds %struct._cpp_buff, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !166
  %118 = getelementptr inbounds %struct._cpp_buff, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !170
  %120 = ptrtoint ptr %119 to i64
  %121 = ptrtoint ptr %117 to i64
  %122 = sub i64 %120, %121
  %123 = lshr exact i64 %122, 3
  %124 = trunc i64 %123 to i32
  tail call fastcc void @push_ptoken_context(ptr noundef %0, ptr noundef null, ptr noundef %115, ptr noundef %117, i32 noundef %124) #22
  store ptr %114, ptr %4, align 8, !tbaa !96
  %125 = icmp eq ptr %114, null
  br i1 %125, label %126, label %112, !llvm.loop !171

126:                                              ; preds = %112, %62, %59, %101
  %127 = phi i32 [ 1, %101 ], [ 0, %59 ], [ 0, %62 ], [ 2, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %130

128:                                              ; preds = %21
  %129 = tail call fastcc i32 @builtin_macro(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %129, %128 ], [ %127, %126 ]
  ret i32 %131
}

; Function Attrs: optsize
declare ptr @_cpp_temp_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @paste_tokens(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !172 {
  %4 = load ptr, ptr %1, align 8, !tbaa !96
  %5 = tail call i32 @cpp_token_len(ptr noundef %4) #20
  %6 = tail call i32 @cpp_token_len(ptr noundef %2) #20
  %7 = add i32 %5, 1
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  %11 = load ptr, ptr %1, align 8, !tbaa !96
  %12 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %10, i8 noundef zeroext 0) #20
  %13 = load ptr, ptr %1, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 7
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 32, ptr %12, align 1, !tbaa !67
  br label %23

23:                                               ; preds = %21, %17, %3
  %24 = phi ptr [ %22, %21 ], [ %12, %17 ], [ %12, %3 ]
  %25 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 72
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %24, i8 noundef zeroext 0) #20
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi ptr [ %29, %28 ], [ %24, %23 ]
  store i8 10, ptr %31, align 1, !tbaa !67
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %10 to i64
  %34 = sub i64 %32, %33
  %35 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %10, i64 noundef %34, i32 noundef 1) #20
  call void @_cpp_clean_line(ptr noundef %0) #20
  %36 = call ptr @_cpp_temp_token(ptr noundef %0) #20
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %36, ptr %37, align 8, !tbaa !108
  %38 = call ptr @_cpp_lex_direct(ptr noundef %0) #20
  %39 = load ptr, ptr %0, align 8, !tbaa !128
  %40 = load ptr, ptr %39, align 8, !tbaa !173
  %41 = getelementptr inbounds %struct.cpp_buffer, ptr %39, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !174
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %30
  %45 = load i32, ptr %38, align 8, !tbaa !148
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1) #22
  store i8 0, ptr %12, align 1, !tbaa !67
  %46 = load ptr, ptr %1, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !tbaa.struct !175
  store ptr %38, ptr %1, align 8, !tbaa !96
  store i32 %45, ptr %38, align 8, !tbaa !148
  %47 = getelementptr inbounds %struct.cpp_token, ptr %38, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !142
  %49 = and i16 %48, -9
  store i16 %49, ptr %47, align 2, !tbaa !142
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !177
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %55 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef nonnull %10, ptr noundef %54) #20
  br label %57

56:                                               ; preds = %30
  store ptr %38, ptr %1, align 8, !tbaa !96
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  br label %57

57:                                               ; preds = %44, %53, %56
  %58 = phi i8 [ 1, %56 ], [ 0, %53 ], [ 0, %44 ]
  ret i8 %58
}

; Function Attrs: optsize
declare i32 @cpp_token_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_cpp_lex_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_backup_tokens(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !178 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !179

8:                                                ; preds = %2
  tail call void @_cpp_backup_tokens_direct(ptr noundef nonnull %0, i32 noundef %1) #22
  br label %22

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @abort() #25
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !132
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  br i1 %15, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 -1
  store ptr %19, ptr %16, align 8, !tbaa !67
  br label %22

20:                                               ; preds = %12
  %21 = getelementptr inbounds ptr, ptr %17, i64 -1
  store ptr %21, ptr %16, align 8, !tbaa !67
  br label %22

22:                                               ; preds = %18, %20, %8
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @funlike_invocation_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !180 {
  br label %4

4:                                                ; preds = %22, %3
  %5 = phi ptr [ %9, %22 ], [ null, %3 ]
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 0, i32 2
  br label %8

8:                                                ; preds = %21, %4
  %9 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %10 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %29 [
    i8 72, label %12
    i8 20, label %23
    i8 22, label %26
  ]

12:                                               ; preds = %8
  br i1 %6, label %22, label %13

13:                                               ; preds = %12
  %14 = load i16, ptr %7, align 2, !tbaa !142
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  br label %8

22:                                               ; preds = %17, %12
  br label %4

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  store i8 2, ptr %24, align 1, !tbaa !164
  %25 = tail call fastcc ptr @collect_args(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  br label %32

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 44
  %28 = icmp eq ptr %9, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %8, %26
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #22
  %30 = icmp eq ptr %5, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @_cpp_push_token_context(ptr noundef %0, ptr noundef null, ptr noundef nonnull %5, i32 noundef 1) #22
  br label %32

32:                                               ; preds = %26, %31, %29, %23
  %33 = phi ptr [ %25, %23 ], [ null, %29 ], [ null, %31 ], [ null, %26 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !66 !PGOFuncName !181 {
  %5 = tail call fastcc i32 @macro_real_token_count(ptr noundef %2) #22
  %6 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %4, %61
  %12 = phi i32 [ %62, %61 ], [ %5, %4 ]
  %13 = phi ptr [ %63, %61 ], [ %7, %4 ]
  %14 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 69
  br i1 %16, label %17, label %61

17:                                               ; preds = %11
  %18 = add i32 %12, 2
  %19 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !67
  %21 = add i32 %20, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22
  %24 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !142
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !182
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @stringify_arg(ptr noundef %0, ptr noundef nonnull %23) #22
  store ptr %34, ptr %30, align 8, !tbaa !182
  br label %61

35:                                               ; preds = %17
  %36 = and i32 %26, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 8, !tbaa !67
  %40 = icmp ugt ptr %13, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = getelementptr %struct.cpp_token, ptr %13, i64 -1, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !142
  %44 = and i16 %43, 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41, %35
  %47 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !184
  %49 = add i32 %12, 1
  %50 = add i32 %49, %48
  br label %61

51:                                               ; preds = %41, %38
  %52 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !185
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call fastcc void @expand_arg(ptr noundef %0, ptr noundef nonnull %23) #22
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !186
  %59 = add i32 %12, 1
  %60 = add i32 %59, %58
  br label %61

61:                                               ; preds = %11, %46, %56, %29, %33
  %62 = phi i32 [ %18, %29 ], [ %18, %33 ], [ %50, %46 ], [ %60, %56 ], [ %12, %11 ]
  %63 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 1
  %64 = icmp ult ptr %63, %9
  br i1 %64, label %11, label %65, !llvm.loop !187

65:                                               ; preds = %61
  %66 = zext i32 %62 to i64
  %67 = shl nuw nsw i64 %66, 3
  br label %68

68:                                               ; preds = %65, %4
  %69 = phi i64 [ 0, %4 ], [ %67, %65 ]
  %70 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %69) #20
  %71 = getelementptr inbounds %struct._cpp_buff, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !166
  %73 = load ptr, ptr %6, align 8, !tbaa !67
  %74 = icmp ult ptr %73, %9
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 5
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %78 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  br label %87

82:                                               ; preds = %236, %68
  %83 = phi ptr [ %72, %68 ], [ %237, %236 ]
  %84 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 4
  %85 = load i16, ptr %84, align 8, !tbaa !130
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %253, label %240

87:                                               ; preds = %75, %236
  %88 = phi ptr [ %73, %75 ], [ %238, %236 ]
  %89 = phi ptr [ %72, %75 ], [ %237, %236 ]
  %90 = getelementptr inbounds %struct.cpp_token, ptr %88, i64 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = icmp eq i8 %91, 69
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds ptr, ptr %89, i64 1
  store ptr %88, ptr %89, align 8, !tbaa !96
  br label %236

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.cpp_token, ptr %88, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !67
  %98 = add i32 %97, -1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %99
  %101 = getelementptr inbounds %struct.cpp_token, ptr %88, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !142
  %103 = zext i16 %102 to i32
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %99, i32 2
  br label %155

108:                                              ; preds = %95
  %109 = and i32 %103, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %99, i32 3
  %113 = load i32, ptr %112, align 8, !tbaa !184
  %114 = load ptr, ptr %100, align 8, !tbaa !188
  br label %155

115:                                              ; preds = %108
  %116 = load ptr, ptr %6, align 8, !tbaa !67
  %117 = icmp eq ptr %88, %116
  br i1 %117, label %150, label %118

118:                                              ; preds = %115
  %119 = getelementptr %struct.cpp_token, ptr %88, i64 -1, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !142
  %121 = and i16 %120, 8
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %150, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %99, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !184
  %126 = load ptr, ptr %100, align 8, !tbaa !188
  %127 = icmp eq ptr %89, %72
  br i1 %127, label %155, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds ptr, ptr %89, i64 -1
  %130 = load ptr, ptr %129, align 8, !tbaa !96
  %131 = getelementptr inbounds %struct.cpp_token, ptr %130, i64 0, i32 1
  %132 = load i8, ptr %131, align 4
  %133 = icmp eq i8 %132, 19
  br i1 %133, label %134, label %147

134:                                              ; preds = %128
  %135 = load i8, ptr %76, align 2
  %136 = and i8 %135, 2
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 4
  %140 = load i16, ptr %139, align 8, !tbaa !130
  %141 = zext i16 %140 to i32
  %142 = icmp eq i32 %97, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = icmp eq ptr %126, null
  %145 = select i1 %144, ptr %129, ptr %89
  %146 = select i1 %144, ptr null, ptr %129
  br label %155

147:                                              ; preds = %138, %134, %128
  %148 = icmp eq i32 %125, 0
  %149 = select i1 %148, ptr %129, ptr null
  br label %155

150:                                              ; preds = %118, %115
  %151 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %99, i32 4
  %152 = load i32, ptr %151, align 4, !tbaa !186
  %153 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %99, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !185
  br label %155

155:                                              ; preds = %147, %143, %111, %123, %150, %106
  %156 = phi ptr [ %89, %106 ], [ %89, %111 ], [ %72, %123 ], [ %89, %150 ], [ %145, %143 ], [ %89, %147 ]
  %157 = phi i32 [ 1, %106 ], [ %113, %111 ], [ %125, %123 ], [ %152, %150 ], [ %125, %143 ], [ %125, %147 ]
  %158 = phi ptr [ %107, %106 ], [ %114, %111 ], [ %126, %123 ], [ %154, %150 ], [ %126, %143 ], [ %126, %147 ]
  %159 = phi ptr [ null, %106 ], [ null, %111 ], [ null, %123 ], [ null, %150 ], [ %146, %143 ], [ %149, %147 ]
  %160 = load i8, ptr %77, align 8, !tbaa !124
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load i8, ptr %78, align 1, !tbaa !189
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %162, %155
  %166 = load ptr, ptr %6, align 8, !tbaa !67
  %167 = icmp eq ptr %88, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  %169 = getelementptr %struct.cpp_token, ptr %88, i64 -1, i32 2
  %170 = load i16, ptr %169, align 2, !tbaa !142
  %171 = and i16 %170, 8
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %88) #22
  %175 = getelementptr inbounds ptr, ptr %156, i64 1
  store ptr %174, ptr %156, align 8, !tbaa !96
  br label %176

176:                                              ; preds = %173, %168, %165, %162
  %177 = phi ptr [ %156, %168 ], [ %175, %173 ], [ %156, %165 ], [ %156, %162 ]
  %178 = icmp eq i32 %157, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %176
  %180 = zext i32 %157 to i64
  %181 = shl nuw nsw i64 %180, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %177, ptr align 8 %158, i64 %181, i1 false)
  %182 = getelementptr inbounds ptr, ptr %177, i64 %180
  %183 = load i16, ptr %101, align 2, !tbaa !142
  %184 = and i16 %183, 8
  %185 = icmp eq i16 %184, 0
  %186 = getelementptr inbounds ptr, ptr %182, i64 -1
  %187 = select i1 %185, ptr %159, ptr %186
  br label %205

188:                                              ; preds = %176
  %189 = load i8, ptr %79, align 1, !tbaa !131
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %188
  %192 = load i8, ptr %76, align 2
  %193 = and i8 %192, 4
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i8, ptr %80, align 1, !tbaa !190
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = tail call fastcc i32 @cpp_in_system_header(ptr noundef nonnull %0) #22, !range !112
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load ptr, ptr %1, align 8, !tbaa !93
  %203 = load i32, ptr %96, align 8, !tbaa !67
  %204 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %202, i32 noundef %203) #20
  br label %205

205:                                              ; preds = %179, %188, %191, %195, %198, %201
  %206 = phi ptr [ %177, %191 ], [ %177, %195 ], [ %177, %198 ], [ %177, %201 ], [ %177, %188 ], [ %182, %179 ]
  %207 = phi ptr [ %159, %191 ], [ %159, %195 ], [ %159, %198 ], [ %159, %201 ], [ %159, %188 ], [ %187, %179 ]
  %208 = load i8, ptr %77, align 8, !tbaa !124
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i16, ptr %101, align 2, !tbaa !142
  %212 = and i16 %211, 8
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = getelementptr inbounds ptr, ptr %206, i64 1
  store ptr %81, ptr %206, align 8, !tbaa !96
  br label %216

216:                                              ; preds = %214, %210, %205
  %217 = phi ptr [ %206, %205 ], [ %206, %210 ], [ %215, %214 ]
  %218 = icmp eq ptr %207, null
  br i1 %218, label %236, label %219

219:                                              ; preds = %216
  %220 = tail call ptr @_cpp_temp_token(ptr noundef nonnull %0) #20
  %221 = load ptr, ptr %207, align 8, !tbaa !96
  %222 = getelementptr inbounds %struct.cpp_token, ptr %221, i64 0, i32 1
  %223 = load i8, ptr %222, align 4
  %224 = getelementptr inbounds %struct.cpp_token, ptr %220, i64 0, i32 1
  store i8 %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.cpp_token, ptr %220, i64 0, i32 3
  %226 = load ptr, ptr %207, align 8, !tbaa !96
  %227 = getelementptr inbounds %struct.cpp_token, ptr %226, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, ptr noundef nonnull align 8 dereferenceable(16) %227, i64 16, i1 false), !tbaa.struct !153
  %228 = load i16, ptr %101, align 2, !tbaa !142
  %229 = and i16 %228, 8
  %230 = load ptr, ptr %207, align 8, !tbaa !96
  %231 = getelementptr inbounds %struct.cpp_token, ptr %230, i64 0, i32 2
  %232 = load i16, ptr %231, align 2, !tbaa !142
  %233 = and i16 %232, -9
  %234 = or disjoint i16 %233, %229
  %235 = getelementptr inbounds %struct.cpp_token, ptr %220, i64 0, i32 2
  store i16 %234, ptr %235, align 2
  store ptr %220, ptr %207, align 8, !tbaa !96
  br label %236

236:                                              ; preds = %216, %219, %93
  %237 = phi ptr [ %94, %93 ], [ %217, %219 ], [ %217, %216 ]
  %238 = getelementptr inbounds %struct.cpp_token, ptr %88, i64 1
  %239 = icmp ult ptr %238, %9
  br i1 %239, label %87, label %82, !llvm.loop !191

240:                                              ; preds = %82, %248
  %241 = phi i16 [ %249, %248 ], [ %85, %82 ]
  %242 = phi i64 [ %250, %248 ], [ 0, %82 ]
  %243 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %242, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !185
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %240
  tail call void @free(ptr noundef nonnull %244) #20
  %247 = load i16, ptr %84, align 8, !tbaa !130
  br label %248

248:                                              ; preds = %240, %246
  %249 = phi i16 [ %241, %240 ], [ %247, %246 ]
  %250 = add nuw nsw i64 %242, 1
  %251 = zext i16 %249 to i64
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %240, label %253, !llvm.loop !192

253:                                              ; preds = %248, %82
  %254 = ptrtoint ptr %83 to i64
  %255 = ptrtoint ptr %72 to i64
  %256 = sub i64 %254, %255
  %257 = lshr exact i64 %256, 3
  %258 = trunc i64 %257 to i32
  tail call fastcc void @push_ptoken_context(ptr noundef %0, ptr noundef %1, ptr noundef %70, ptr noundef %72, i32 noundef %258) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @macro_real_token_count(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !66 !PGOFuncName !193 {
  %2 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !194
  br i1 %5, label %23, label %8

8:                                                ; preds = %1
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %10, %19
  %14 = phi i32 [ 0, %10 ], [ %20, %19 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 %15, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 38
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = add nuw i32 %14, 1
  %21 = icmp eq i32 %20, %7
  br i1 %21, label %22, label %13, !llvm.loop !195

22:                                               ; preds = %19, %8
  tail call void @abort() #25
  unreachable

23:                                               ; preds = %13, %1
  %24 = phi i32 [ %7, %1 ], [ %14, %13 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_ptoken_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !66 !PGOFuncName !196 {
  %6 = tail call fastcc ptr @next_context(ptr noundef %0) #22
  %7 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 5
  store i8 0, ptr %7, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 4
  store ptr %1, ptr %8, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !67
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds ptr, ptr %3, i64 %11
  %13 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @builtin_macro(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !66 !PGOFuncName !197 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !124
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = tail call i32 @_cpp_do__Pragma(ptr noundef nonnull %0) #20
  br label %31

12:                                               ; preds = %2
  %13 = tail call ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr noundef nonnull %1) #22
  %14 = tail call fastcc i64 @ustrlen(ptr noundef %13) #22
  %15 = add i64 %14, 1
  %16 = alloca i8, i64 %15, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %16, ptr align 1 %13, i64 %14, i1 false)
  %17 = getelementptr inbounds i8, ptr %16, i64 %14
  store i8 10, ptr %17, align 1, !tbaa !67
  %18 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %16, i64 noundef %14, i32 noundef 1) #20
  call void @_cpp_clean_line(ptr noundef %0) #20
  %19 = call ptr @_cpp_temp_token(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %19, ptr %20, align 8, !tbaa !108
  %21 = call ptr @_cpp_lex_direct(ptr noundef %0) #20
  call void @_cpp_push_token_context(ptr noundef %0, ptr noundef null, ptr noundef %21, i32 noundef 1) #22
  %22 = load ptr, ptr %0, align 8, !tbaa !128
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !174
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load ptr, ptr %1, align 8, !tbaa !93
  %29 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %28) #20
  br label %30

30:                                               ; preds = %27, %12
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  br label %31

31:                                               ; preds = %6, %30, %10
  %32 = phi i32 [ %11, %10 ], [ 1, %30 ], [ 0, %6 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @collect_args(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !198 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.cpp_macro, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !130
  %8 = tail call i16 @llvm.umax.i16(i16 %7, i16 1)
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, 432
  %11 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %10) #20
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = shl nuw nsw i64 %9, 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %14, i1 false)
  %15 = getelementptr inbounds %struct.macro_arg, ptr %13, i64 %9
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %11, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !170
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %5, i64 0, i32 5
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 44
  br label %21

21:                                               ; preds = %160, %3
  %22 = phi ptr [ %13, %3 ], [ %161, %160 ]
  %23 = phi i32 [ 0, %3 ], [ %25, %160 ]
  %24 = phi ptr [ %11, %3 ], [ %49, %160 ]
  %25 = add i32 %23, 1
  %26 = getelementptr inbounds %struct._cpp_buff, ptr %24, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  store ptr %27, ptr %22, align 8, !tbaa !188
  br label %28

28:                                               ; preds = %121, %21
  %29 = phi i32 [ %122, %121 ], [ 0, %21 ]
  %30 = phi i32 [ %124, %121 ], [ 0, %21 ]
  %31 = phi ptr [ %49, %121 ], [ %24, %21 ]
  br label %32

32:                                               ; preds = %28, %53
  %33 = phi i32 [ %30, %28 ], [ 0, %53 ]
  %34 = phi ptr [ %31, %28 ], [ %49, %53 ]
  %35 = add i32 %33, 2
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %32, %116
  %38 = phi ptr [ %49, %116 ], [ %34, %32 ]
  %39 = load ptr, ptr %22, align 8, !tbaa !188
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  %41 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = icmp ugt ptr %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = tail call ptr @_cpp_append_extend_buff(ptr noundef %0, ptr noundef nonnull %38, i64 noundef 8000) #20
  %46 = getelementptr inbounds %struct._cpp_buff, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !170
  store ptr %47, ptr %22, align 8, !tbaa !188
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi ptr [ %45, %44 ], [ %38, %37 ]
  %50 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %51 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 4
  switch i8 %52, label %121 [
    i8 72, label %53
    i8 20, label %55
    i8 21, label %57
    i8 19, label %60
    i8 22, label %127
    i8 37, label %70
    i8 70, label %75
  ]

53:                                               ; preds = %48
  %54 = icmp eq i32 %33, 0
  br i1 %54, label %32, label %121

55:                                               ; preds = %48
  %56 = add i32 %29, 1
  br label %121

57:                                               ; preds = %48
  %58 = add i32 %29, -1
  %59 = icmp eq i32 %29, 0
  br i1 %59, label %127, label %121

60:                                               ; preds = %48
  %61 = icmp eq i32 %29, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %60
  %63 = load i8, ptr %19, align 2
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %127, label %66

66:                                               ; preds = %62
  %67 = load i16, ptr %6, align 8, !tbaa !130
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %25, %68
  br i1 %69, label %121, label %127

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 2
  %72 = load i16, ptr %71, align 2, !tbaa !142
  %73 = and i16 %72, 64
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %121, label %127

75:                                               ; preds = %48
  %76 = tail call ptr @_cpp_temp_token(ptr noundef %0) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false), !tbaa.struct !175
  br label %77

77:                                               ; preds = %111, %75
  %78 = phi ptr [ %76, %75 ], [ %112, %111 ]
  %79 = load ptr, ptr %2, align 8, !tbaa !96
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct._cpp_buff, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !199
  %84 = getelementptr inbounds %struct._cpp_buff, ptr %79, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !170
  %86 = ptrtoint ptr %83 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %92, label %100

90:                                               ; preds = %77
  %91 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef 256) #20
  store ptr %91, ptr %2, align 8, !tbaa !96
  br label %100

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct._cpp_buff, ptr %79, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !166
  %95 = ptrtoint ptr %94 to i64
  %96 = sub i64 %87, %95
  %97 = shl nsw i64 %96, 1
  %98 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %97) #20
  store ptr %98, ptr %2, align 8, !tbaa !96
  store ptr %79, ptr %98, align 8, !tbaa !169
  %99 = load ptr, ptr %2, align 8, !tbaa !96
  br label %100

100:                                              ; preds = %90, %92, %81
  %101 = phi ptr [ %91, %90 ], [ %99, %92 ], [ %79, %81 ]
  %102 = getelementptr inbounds %struct._cpp_buff, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !170
  store ptr %78, ptr %103, align 8, !tbaa !96
  %104 = load ptr, ptr %2, align 8, !tbaa !96
  %105 = getelementptr inbounds %struct._cpp_buff, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !170
  %107 = getelementptr inbounds i8, ptr %106, i64 8
  store ptr %107, ptr %105, align 8, !tbaa !170
  %108 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 0, i32 1
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %109, 71
  br i1 %110, label %116, label %111

111:                                              ; preds = %100
  %112 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %113 = getelementptr inbounds %struct.cpp_token, ptr %112, i64 0, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = icmp eq i8 %114, 22
  br i1 %115, label %116, label %77, !llvm.loop !200

116:                                              ; preds = %100, %111
  %117 = phi ptr [ %78, %100 ], [ %112, %111 ]
  store i8 2, ptr %17, align 1, !tbaa !164
  store i8 1, ptr %18, align 8, !tbaa !150
  %118 = getelementptr inbounds %struct.cpp_token, ptr %117, i64 0, i32 1
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 22
  br i1 %120, label %127, label %37

121:                                              ; preds = %53, %48, %70, %55, %66, %60, %57
  %122 = phi i32 [ %56, %55 ], [ %58, %57 ], [ 0, %66 ], [ %29, %60 ], [ %29, %70 ], [ %29, %48 ], [ %29, %53 ]
  %123 = load ptr, ptr %22, align 8, !tbaa !188
  %124 = add i32 %33, 1
  %125 = zext i32 %33 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  store ptr %50, ptr %126, align 8, !tbaa !96
  br label %28

127:                                              ; preds = %70, %62, %66, %57, %48, %116
  %128 = phi ptr [ %50, %48 ], [ %117, %116 ], [ %50, %57 ], [ %50, %66 ], [ %50, %62 ], [ %50, %70 ]
  %129 = zext i32 %33 to i64
  %130 = load ptr, ptr %22, align 8, !tbaa !188
  br label %131

131:                                              ; preds = %134, %127
  %132 = phi i64 [ %135, %134 ], [ %129, %127 ]
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = add nsw i64 %132, -1
  %136 = getelementptr inbounds ptr, ptr %130, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !96
  %138 = getelementptr inbounds %struct.cpp_token, ptr %137, i64 0, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 72
  br i1 %140, label %131, label %141, !llvm.loop !201

141:                                              ; preds = %134
  %142 = trunc i64 %132 to i32
  br label %143

143:                                              ; preds = %131, %141
  %144 = phi i32 [ %142, %141 ], [ 0, %131 ]
  %145 = getelementptr inbounds %struct.macro_arg, ptr %22, i64 0, i32 3
  store i32 %144, ptr %145, align 8, !tbaa !184
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds ptr, ptr %130, i64 %146
  store ptr %20, ptr %147, align 8, !tbaa !96
  %148 = load i16, ptr %6, align 8, !tbaa !130
  %149 = zext i16 %148 to i32
  %150 = icmp ugt i32 %25, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr %22, align 8, !tbaa !188
  %153 = add i32 %144, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = getelementptr inbounds %struct._cpp_buff, ptr %49, i64 0, i32 2
  store ptr %155, ptr %156, align 8, !tbaa !170
  %157 = icmp ne i32 %25, %149
  %158 = zext i1 %157 to i64
  %159 = getelementptr inbounds %struct.macro_arg, ptr %22, i64 %158
  br label %160

160:                                              ; preds = %151, %143
  %161 = phi ptr [ %22, %143 ], [ %159, %151 ]
  %162 = getelementptr inbounds %struct.cpp_token, ptr %128, i64 0, i32 1
  %163 = load i8, ptr %162, align 4
  %164 = add i8 %163, -21
  %165 = icmp ult i8 %164, 2
  br i1 %165, label %166, label %21

166:                                              ; preds = %160
  %167 = icmp eq i8 %163, 22
  br i1 %167, label %168, label %182

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %170 = load ptr, ptr %169, align 8, !tbaa !136
  %171 = getelementptr inbounds %struct.cpp_context, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !138
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !124
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174, %168
  tail call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1) #22
  br label %179

179:                                              ; preds = %178, %174
  %180 = load ptr, ptr %1, align 8, !tbaa !93
  %181 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef %180) #20
  br label %217

182:                                              ; preds = %166
  %183 = icmp eq i32 %23, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = icmp eq i16 %148, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.macro_arg, ptr %13, i64 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !184
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i32
  br label %191

191:                                              ; preds = %186, %184, %182
  %192 = phi i32 [ 1, %184 ], [ %25, %182 ], [ %190, %186 ]
  %193 = tail call zeroext i8 @_cpp_arguments_ok(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i32 noundef %192) #22, !range !155
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %217, label %195

195:                                              ; preds = %191
  %196 = load i8, ptr %19, align 2
  %197 = and i8 %196, 2
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %218, label %199

199:                                              ; preds = %195
  %200 = load i16, ptr %6, align 8, !tbaa !130
  %201 = zext i16 %200 to i32
  %202 = icmp ult i32 %192, %201
  br i1 %202, label %213, label %203

203:                                              ; preds = %199
  %204 = icmp eq i32 %192, 1
  br i1 %204, label %205, label %218

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.macro_arg, ptr %13, i64 0, i32 3
  %207 = load i32, ptr %206, align 8, !tbaa !184
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %211 = load i8, ptr %210, align 4, !tbaa !202
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209, %199
  %214 = zext i16 %200 to i64
  %215 = getelementptr %struct.macro_arg, ptr %13, i64 %214
  %216 = getelementptr %struct.macro_arg, ptr %215, i64 -1
  store ptr null, ptr %216, align 8, !tbaa !188
  br label %218

217:                                              ; preds = %191, %179
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef %11) #20
  br label %218

218:                                              ; preds = %195, %203, %205, %209, %213, %217
  %219 = phi ptr [ null, %217 ], [ %11, %213 ], [ %11, %209 ], [ %11, %205 ], [ %11, %203 ], [ %11, %195 ]
  ret ptr %219
}

; Function Attrs: optsize
declare ptr @_cpp_get_buff(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare ptr @_cpp_append_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @stringify_arg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !66 !PGOFuncName !203 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 3) #20
  %14 = load ptr, ptr %3, align 8, !tbaa !204
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi ptr [ %16, %13 ], [ %8, %2 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 34, ptr %18, align 1, !tbaa !67
  %20 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !184
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %128, label %23

23:                                               ; preds = %17, %114
  %24 = phi i64 [ %118, %114 ], [ 0, %17 ]
  %25 = phi ptr [ %117, %114 ], [ %19, %17 ]
  %26 = phi i32 [ %116, %114 ], [ 0, %17 ]
  %27 = phi ptr [ %115, %114 ], [ null, %17 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !188
  %29 = getelementptr inbounds ptr, ptr %28, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = getelementptr inbounds %struct.cpp_token, ptr %30, i64 0, i32 1
  %32 = load i8, ptr %31, align 4
  switch i8 %32, label %48 [
    i8 72, label %33
    i8 61, label %51
    i8 56, label %51
    i8 62, label %51
    i8 57, label %51
    i8 64, label %51
    i8 59, label %51
    i8 63, label %51
    i8 58, label %51
    i8 65, label %51
  ]

33:                                               ; preds = %23
  %34 = icmp eq ptr %27, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cpp_token, ptr %30, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  br label %114

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cpp_token, ptr %27, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !142
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %114

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.cpp_token, ptr %30, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr null, ptr %27
  br label %114

48:                                               ; preds = %23
  %49 = tail call i32 @cpp_token_len(ptr noundef nonnull %30) #20
  %50 = zext i32 %49 to i64
  br label %55

51:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23
  %52 = tail call i32 @cpp_token_len(ptr noundef nonnull %30) #20
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 2
  br label %55

55:                                               ; preds = %48, %51
  %56 = phi i1 [ true, %51 ], [ false, %48 ]
  %57 = phi i64 [ %54, %51 ], [ %50, %48 ]
  %58 = add nuw nsw i64 %57, 3
  %59 = load ptr, ptr %3, align 8, !tbaa !204
  %60 = getelementptr inbounds %struct._cpp_buff, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !199
  %62 = ptrtoint ptr %61 to i64
  %63 = ptrtoint ptr %25 to i64
  %64 = sub i64 %62, %63
  %65 = icmp ult i64 %64, %58
  %66 = getelementptr inbounds %struct._cpp_buff, ptr %59, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !170
  br i1 %65, label %68, label %75

68:                                               ; preds = %55
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %63, %69
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %58) #20
  %71 = load ptr, ptr %3, align 8, !tbaa !204
  %72 = getelementptr inbounds %struct._cpp_buff, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !170
  %74 = getelementptr inbounds i8, ptr %73, i64 %70
  br label %75

75:                                               ; preds = %55, %68
  %76 = phi ptr [ %73, %68 ], [ %67, %55 ]
  %77 = phi ptr [ %74, %68 ], [ %25, %55 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 -1
  %79 = icmp eq ptr %78, %76
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = icmp eq ptr %27, null
  %82 = select i1 %81, ptr %30, ptr %27
  %83 = getelementptr inbounds %struct.cpp_token, ptr %82, i64 0, i32 2
  %84 = load i16, ptr %83, align 2, !tbaa !142
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 32, ptr %77, align 1, !tbaa !67
  br label %89

89:                                               ; preds = %80, %87, %75
  %90 = phi ptr [ %88, %87 ], [ %77, %80 ], [ %77, %75 ]
  br i1 %56, label %91, label %101

91:                                               ; preds = %89
  %92 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %58) #20
  %93 = getelementptr inbounds %struct._cpp_buff, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !170
  %95 = tail call ptr @cpp_spell_token(ptr noundef nonnull %0, ptr noundef nonnull %30, ptr noundef %94, i8 noundef zeroext 1) #20
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %94 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = tail call ptr @cpp_quote_string(ptr noundef %90, ptr noundef %94, i32 noundef %99) #22
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef %92) #20
  br label %103

101:                                              ; preds = %89
  %102 = tail call ptr @cpp_spell_token(ptr noundef nonnull %0, ptr noundef nonnull %30, ptr noundef %90, i8 noundef zeroext 1) #20
  br label %103

103:                                              ; preds = %101, %91
  %104 = phi ptr [ %100, %91 ], [ %102, %101 ]
  %105 = load i8, ptr %31, align 4
  %106 = icmp eq i8 %105, 60
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.cpp_token, ptr %30, i64 0, i32 3, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !67
  %110 = load i8, ptr %109, align 1, !tbaa !67
  %111 = icmp eq i8 %110, 92
  %112 = add i32 %26, 1
  %113 = select i1 %111, i32 %112, i32 0
  br label %114

114:                                              ; preds = %43, %35, %107, %103, %38
  %115 = phi ptr [ %27, %38 ], [ null, %103 ], [ null, %107 ], [ %37, %35 ], [ %47, %43 ]
  %116 = phi i32 [ %26, %38 ], [ 0, %103 ], [ %113, %107 ], [ %26, %35 ], [ %26, %43 ]
  %117 = phi ptr [ %25, %38 ], [ %104, %103 ], [ %104, %107 ], [ %25, %35 ], [ %25, %43 ]
  %118 = add nuw nsw i64 %24, 1
  %119 = load i32, ptr %20, align 8, !tbaa !184
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %23, label %122, !llvm.loop !205

122:                                              ; preds = %114
  %123 = and i32 %116, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.30) #20
  %127 = getelementptr inbounds i8, ptr %117, i64 -1
  br label %128

128:                                              ; preds = %17, %125, %122
  %129 = phi ptr [ %127, %125 ], [ %117, %122 ], [ %19, %17 ]
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 34, ptr %129, align 1, !tbaa !67
  %131 = load ptr, ptr %3, align 8, !tbaa !204
  %132 = getelementptr inbounds %struct._cpp_buff, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !170
  %134 = ptrtoint ptr %130 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = getelementptr inbounds i8, ptr %129, i64 2
  store ptr %137, ptr %132, align 8, !tbaa !170
  %138 = sub i64 0, %136
  %139 = getelementptr inbounds i8, ptr %130, i64 %138
  %140 = trunc i64 %136 to i32
  %141 = tail call fastcc ptr @new_string_token(ptr noundef %0, ptr noundef nonnull %139, i32 noundef %140) #22
  ret ptr %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !66 !PGOFuncName !206 {
  %3 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !184
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %8 = load i8, ptr %7, align 1, !tbaa !165
  store i8 0, ptr %7, align 1, !tbaa !165
  %9 = tail call ptr @xmalloc(i64 noundef 2048) #20
  %10 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !185
  %11 = load ptr, ptr %1, align 8, !tbaa !188
  %12 = load i32, ptr %3, align 8, !tbaa !184
  %13 = add i32 %12, 1
  tail call fastcc void @push_ptoken_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %11, i32 noundef %13) #22
  %14 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !186
  br label %16

16:                                               ; preds = %33, %6
  %17 = phi i32 [ %15, %6 ], [ %36, %33 ]
  %18 = phi i32 [ 256, %6 ], [ %28, %33 ]
  %19 = add i32 %17, 1
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = shl i32 %18, 1
  %23 = load ptr, ptr %10, align 8, !tbaa !185
  %24 = zext i32 %22 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %25) #20
  store ptr %26, ptr %10, align 8, !tbaa !185
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi i32 [ %22, %21 ], [ %18, %16 ]
  %29 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %30 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 22
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %10, align 8, !tbaa !185
  %35 = load i32, ptr %14, align 4, !tbaa !186
  %36 = add i32 %35, 1
  store i32 %36, ptr %14, align 4, !tbaa !186
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  store ptr %29, ptr %38, align 8, !tbaa !96
  br label %16

39:                                               ; preds = %27
  tail call void @_cpp_pop_context(ptr noundef %0) #22
  store i8 %8, ptr %7, align 1, !tbaa !165
  br label %40

40:                                               ; preds = %2, %39
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_string_token(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !207 {
  %4 = tail call ptr @_cpp_temp_token(ptr noundef %0) #20
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  store i8 0, ptr %6, align 1, !tbaa !67
  %7 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 1
  store i8 61, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3, i32 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 2
  store i16 0, ptr %10, align 2, !tbaa !142
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_cpp_do__Pragma(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !66 !PGOFuncName !208 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_get_token_with_location(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !209 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 13
  store i8 1, ptr %3, align 4, !tbaa !140
  %4 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !210

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 12
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ %4, %2 ]
  %14 = load i32, ptr %13, align 8, !tbaa !109
  store i32 %14, ptr %1, align 4, !tbaa !109
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_sys_macro_p(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !66 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 2
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 1
  %16 = zext nneg i8 %15 to i32
  br label %17

17:                                               ; preds = %11, %7, %1
  %18 = phi i32 [ 0, %7 ], [ 0, %1 ], [ %16, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_scan_nooutput(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = load ptr, ptr %0, align 8, !tbaa !128
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 4
  store i8 %5, ptr %3, align 1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 10
  %7 = load i8, ptr %6, align 2, !tbaa !211
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 2, !tbaa !211
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !150
  %11 = add i8 %10, 1
  store i8 %11, ptr %9, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %13 = load i8, ptr %12, align 2, !tbaa !107
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1, %15
  %16 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef nonnull %0) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %15, !llvm.loop !212

18:                                               ; preds = %1, %18
  %19 = tail call ptr @cpp_get_token(ptr noundef nonnull %0) #22
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 22
  br i1 %22, label %23, label %18, !llvm.loop !213

23:                                               ; preds = %15, %18
  %24 = load i8, ptr %6, align 2, !tbaa !211
  %25 = add i8 %24, -1
  store i8 %25, ptr %6, align 2, !tbaa !211
  %26 = load i8, ptr %9, align 8, !tbaa !150
  %27 = add i8 %26, -1
  store i8 %27, ptr %9, align 8, !tbaa !150
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_read_logical_line_trad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_backup_tokens_direct(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !178 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %4 = load i32, ptr %3, align 8, !tbaa !214
  %5 = add i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !214
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %33, label %7, !prof !215

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %8, align 8, !tbaa !108
  %11 = load ptr, ptr %9, align 8, !tbaa !216
  br label %12

12:                                               ; preds = %7, %28
  %13 = phi ptr [ %11, %7 ], [ %29, %28 ]
  %14 = phi ptr [ %10, %7 ], [ %30, %28 ]
  %15 = phi i32 [ %1, %7 ], [ %16, %28 ]
  %16 = add i32 %15, -1
  %17 = getelementptr inbounds %struct.cpp_token, ptr %14, i64 -1
  %18 = getelementptr inbounds %struct.tokenrun, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !217
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28, !prof !218

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tokenrun, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !219
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !220

25:                                               ; preds = %21
  store ptr %23, ptr %9, align 8, !tbaa !216
  %26 = getelementptr inbounds %struct.tokenrun, ptr %23, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !221
  br label %28

28:                                               ; preds = %25, %21, %12
  %29 = phi ptr [ %23, %25 ], [ %13, %21 ], [ %13, %12 ]
  %30 = phi ptr [ %27, %25 ], [ %17, %21 ], [ %17, %12 ]
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %32, label %12, !prof !222, !llvm.loop !223

32:                                               ; preds = %28
  store ptr %30, ptr %8, align 8, !tbaa !108
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_cpp_free_definition(ptr nocapture noundef %0) local_unnamed_addr #16 !prof !66 {
  %2 = getelementptr inbounds %struct.cpp_hashnode, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, -10560
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !224 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8, !prof !225

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !93
  %10 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.31, ptr noundef %9) #20
  br label %62

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !199
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !170
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !130
  %23 = zext i16 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %20, %25
  br i1 %26, label %27, label %33, !prof !227

27:                                               ; preds = %11
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %12, i64 noundef 8) #20
  %28 = load ptr, ptr %12, align 8, !tbaa !226
  %29 = getelementptr inbounds %struct._cpp_buff, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !170
  %31 = load i16, ptr %21, align 8, !tbaa !130
  %32 = zext i16 %31 to i64
  br label %33

33:                                               ; preds = %27, %11
  %34 = phi i64 [ %32, %27 ], [ %23, %11 ]
  %35 = phi i16 [ %31, %27 ], [ %22, %11 ]
  %36 = phi ptr [ %30, %27 ], [ %17, %11 ]
  %37 = add i16 %35, 1
  store i16 %37, ptr %21, align 8, !tbaa !130
  %38 = getelementptr inbounds ptr, ptr %36, i64 %34
  store ptr %2, ptr %38, align 8, !tbaa !96
  %39 = load i16, ptr %4, align 2
  %40 = or i16 %39, 4096
  store i16 %40, ptr %4, align 2
  %41 = load i16, ptr %21, align 8, !tbaa !130
  %42 = zext i16 %41 to i32
  %43 = shl nuw nsw i32 %42, 3
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  %45 = load i32, ptr %44, align 8, !tbaa !228
  %46 = icmp ugt i32 %43, %45
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !229
  br i1 %46, label %49, label %53, !prof !230

49:                                               ; preds = %33
  %50 = zext nneg i32 %43 to i64
  %51 = tail call ptr @xrealloc(ptr noundef %48, i64 noundef %50) #20
  store ptr %51, ptr %47, align 8, !tbaa !229
  store i32 %43, ptr %44, align 8, !tbaa !228
  %52 = load i16, ptr %21, align 8, !tbaa !130
  br label %53

53:                                               ; preds = %33, %49
  %54 = phi i16 [ %52, %49 ], [ %41, %33 ]
  %55 = phi ptr [ %51, %49 ], [ %48, %33 ]
  %56 = zext i16 %54 to i64
  %57 = getelementptr %union._cpp_hashnode_value, ptr %55, i64 %56
  %58 = getelementptr %union._cpp_hashnode_value, ptr %57, i64 -1
  %59 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 4
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %58, align 8
  %61 = load i16, ptr %21, align 8, !tbaa !130
  store i16 %61, ptr %59, align 8, !tbaa !67
  br label %62

62:                                               ; preds = %53, %8
  %63 = phi i8 [ 1, %8 ], [ 0, %53 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !231 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %4 = load ptr, ptr %3, align 8, !tbaa !232
  %5 = getelementptr inbounds %struct.ht, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !233
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !235

8:                                                ; preds = %2
  %9 = tail call ptr %6(i64 noundef 32) #20
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr @_cpp_aligned_alloc(ptr noundef nonnull %0, i64 noundef 32) #20
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !162
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !89
  store ptr null, ptr %13, align 8, !tbaa !236
  %17 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 4
  store i16 0, ptr %17, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 5
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, -3
  store i8 %20, ptr %18, align 2
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %22 = load i8, ptr %21, align 2, !tbaa !237
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i8 8, i8 0
  %25 = and i8 %19, -11
  %26 = or disjoint i8 %24, %25
  %27 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 3
  store i32 0, ptr %27, align 4, !tbaa !194
  %28 = and i8 %26, -36
  store i8 %28, ptr %18, align 2
  %29 = load ptr, ptr %0, align 8, !tbaa !128
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !235

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.cpp_buffer, ptr %29, i64 0, i32 15
  %33 = load i8, ptr %32, align 2, !tbaa !129
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 0, i8 4
  br label %36

36:                                               ; preds = %31, %12
  %37 = phi i8 [ 0, %12 ], [ %35, %31 ]
  %38 = and i8 %26, -40
  %39 = or disjoint i8 %37, %38
  store i8 %39, ptr %18, align 2
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %41 = load i8, ptr %40, align 2, !tbaa !107
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43, !prof !238

43:                                               ; preds = %36
  %44 = tail call zeroext i8 @_cpp_create_trad_definition(ptr noundef nonnull %0, ptr noundef nonnull %13) #20
  br label %48

45:                                               ; preds = %36
  %46 = tail call fastcc zeroext i8 @create_iso_definition(ptr noundef nonnull %0, ptr noundef nonnull %13) #22, !range !155
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  store i8 0, ptr %47, align 2, !tbaa !239
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i8 [ %44, %43 ], [ %46, %45 ]
  %50 = load i16, ptr %17, align 8, !tbaa !130
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %69, label %52, !prof !240

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %54 = zext i16 %50 to i64
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %54, %52 ], [ %57, %55 ]
  %57 = add nsw i64 %56, -1
  %58 = load ptr, ptr %13, align 8, !tbaa !236
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !96
  %61 = getelementptr inbounds %struct.cpp_hashnode, ptr %60, i64 0, i32 3
  %62 = load i16, ptr %61, align 2
  %63 = and i16 %62, -4097
  store i16 %63, ptr %61, align 2
  %64 = getelementptr inbounds %struct.cpp_hashnode, ptr %60, i64 0, i32 4
  %65 = load ptr, ptr %53, align 8, !tbaa !229
  %66 = getelementptr inbounds %union._cpp_hashnode_value, ptr %65, i64 %57
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %64, align 8
  %68 = icmp eq i64 %57, 0
  br i1 %68, label %69, label %55, !prof !241, !llvm.loop !242

69:                                               ; preds = %55, %48
  %70 = icmp eq i8 %49, 0
  br i1 %70, label %127, label %71, !prof !235

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = and i16 %73, 63
  %75 = icmp eq i16 %74, 1
  br i1 %75, label %76, label %99, !prof !235

76:                                               ; preds = %71
  %77 = load i8, ptr %21, align 2, !tbaa !237
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @_cpp_warn_if_unused_macro(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr poison) #22
  br label %81

81:                                               ; preds = %79, %76
  %82 = tail call fastcc zeroext i8 @warn_of_redefinition(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %13) #22
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %14, align 8, !tbaa !162
  %86 = load ptr, ptr %1, align 8, !tbaa !93
  %87 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %85, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef %86) #20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load i16, ptr %72, align 2
  %91 = and i16 %90, 319
  %92 = icmp eq i16 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !67
  %96 = getelementptr inbounds %struct.cpp_macro, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !89
  %98 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 5, i32 noundef %97, i32 noundef 0, ptr noundef nonnull @.str.33) #20
  br label %99

99:                                               ; preds = %84, %89, %93, %81, %71
  %100 = load i16, ptr %72, align 2
  %101 = and i16 %100, 63
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %105, label %103, !prof !238

103:                                              ; preds = %99
  tail call void @_cpp_free_definition(ptr noundef nonnull %1) #22
  %104 = load i16, ptr %72, align 2
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i16 [ %104, %103 ], [ %100, %99 ]
  %107 = and i16 %106, -64
  %108 = or disjoint i16 %107, 1
  store i16 %108, ptr %72, align 2
  %109 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  store ptr %13, ptr %109, align 8, !tbaa !67
  %110 = load ptr, ptr %1, align 8, !tbaa !93
  %111 = tail call fastcc i32 @ustrncmp(ptr noundef %110) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124, !prof !243

113:                                              ; preds = %105
  %114 = tail call fastcc i32 @ustrcmp(ptr noundef %110, ptr noundef nonnull @.str.35) #22
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %124, label %116, !prof !151

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @ustrcmp(ptr noundef %110, ptr noundef nonnull @.str.36) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119, !prof !151

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @ustrcmp(ptr noundef %110, ptr noundef nonnull @.str.37) #22
  %121 = icmp eq i32 %120, 0
  %122 = or i16 %107, 1025
  %123 = select i1 %121, i16 %108, i16 %122, !prof !151
  br label %124

124:                                              ; preds = %119, %116, %113, %105
  %125 = phi i16 [ %108, %116 ], [ %108, %113 ], [ %108, %105 ], [ %123, %119 ]
  %126 = and i16 %125, -16385
  store i16 %126, ptr %72, align 2
  br label %127

127:                                              ; preds = %69, %124
  ret i8 %49
}

; Function Attrs: optsize
declare ptr @_cpp_aligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @_cpp_create_trad_definition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @create_iso_definition(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !231 !PGOFuncName !244 {
  %3 = tail call ptr @_cpp_lex_token(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %40 [
    i8 20, label %6
    i8 22, label %70
  ], !prof !245

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !142
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %45, !prof !246

11:                                               ; preds = %6
  %12 = tail call fastcc zeroext i8 @parse_params(ptr noundef %0, ptr noundef %1) #22
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  store ptr %16, ptr %1, align 8, !tbaa !236
  %17 = icmp eq i8 %12, 0
  br i1 %17, label %233, label %18, !prof !227

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %20 = load ptr, ptr %19, align 8, !tbaa !232
  %21 = getelementptr inbounds %struct.ht, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !233
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !130
  %26 = zext i16 %25 to i64
  br i1 %23, label %34, label %27, !prof !227

27:                                               ; preds = %18
  %28 = shl nuw nsw i64 %26, 3
  %29 = tail call ptr %22(i64 noundef %28) #20
  %30 = load ptr, ptr %1, align 8, !tbaa !236
  %31 = load i16, ptr %24, align 8, !tbaa !130
  %32 = zext i16 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %30, i64 %33, i1 false)
  store ptr %29, ptr %1, align 8, !tbaa !236
  br label %36

34:                                               ; preds = %18
  %35 = getelementptr inbounds ptr, ptr %16, i64 %26
  store ptr %35, ptr %15, align 8, !tbaa !170
  br label %36

36:                                               ; preds = %34, %27
  %37 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %38 = load i8, ptr %37, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %37, align 2
  br label %70

40:                                               ; preds = %2
  %41 = zext i8 %5 to i32
  %42 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !142
  %44 = add nsw i32 %41, -52
  br label %45

45:                                               ; preds = %40, %6
  %46 = phi i16 [ %43, %40 ], [ %8, %6 ]
  %47 = phi i32 [ %44, %40 ], [ -32, %6 ]
  %48 = and i16 %46, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %70, !prof !247

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %52 = load i8, ptr %51, align 1, !tbaa !190
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.39) #20
  br label %70

56:                                               ; preds = %50
  %57 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 31)
  switch i32 %57, label %67 [
    i32 0, label %58
    i32 1, label %58
    i32 7, label %58
    i32 4, label %59
  ]

58:                                               ; preds = %56, %56, %56
  br label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  %62 = load i8, ptr %61, align 1, !tbaa !67
  %63 = zext i8 %62 to i32
  %64 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.40, i32 %63, i64 29)
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, i32 2, i32 0
  br label %67

67:                                               ; preds = %59, %56, %58
  %68 = phi i32 [ 0, %56 ], [ 2, %58 ], [ %66, %59 ]
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef %68, ptr noundef nonnull @.str.41) #20
  br label %70

70:                                               ; preds = %2, %36, %45, %67, %54
  %71 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %72 = load i8, ptr %71, align 2
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75, !prof !248

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @lex_expansion_token(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %79

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @alloc_expansion_token(ptr noundef %0, ptr noundef nonnull %1) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !175
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %76, %75 ], [ %78, %77 ]
  %81 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  br label %82

82:                                               ; preds = %162, %79
  %83 = phi i32 [ 0, %79 ], [ %163, %162 ]
  %84 = phi i8 [ 0, %79 ], [ %166, %162 ]
  %85 = phi ptr [ %80, %79 ], [ %167, %162 ]
  %86 = load i32, ptr %81, align 4, !tbaa !194
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %124, !prof !249

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.cpp_token, ptr %85, i64 -1
  %90 = getelementptr %struct.cpp_token, ptr %85, i64 -1, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = icmp eq i8 %91, 37
  br i1 %92, label %93, label %124, !prof !250

93:                                               ; preds = %88
  %94 = load i8, ptr %71, align 2
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cpp_token, ptr %85, i64 0, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = icmp eq i8 %99, 69
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.cpp_token, ptr %85, i64 0, i32 2
  %103 = load i16, ptr %102, align 2, !tbaa !142
  %104 = shl i16 %103, 9
  %105 = and i16 %104, 512
  %106 = getelementptr %struct.cpp_token, ptr %85, i64 -1, i32 2
  %107 = load i16, ptr %106, align 2, !tbaa !142
  %108 = shl i16 %107, 7
  %109 = and i16 %108, 256
  %110 = or disjoint i16 %105, %109
  %111 = and i16 %103, -6
  %112 = or i16 %110, %111
  %113 = or disjoint i16 %112, 4
  %114 = and i16 %107, 1
  %115 = or disjoint i16 %114, %113
  store i16 %115, ptr %102, align 2, !tbaa !142
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull align 8 dereferenceable(24) %85, i64 24, i1 false), !tbaa.struct !175
  %116 = load i32, ptr %81, align 4, !tbaa !194
  %117 = add i32 %116, -1
  store i32 %117, ptr %81, align 4, !tbaa !194
  br label %124

118:                                              ; preds = %97
  %119 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !177
  %121 = icmp eq i32 %120, 9
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.42) #20
  br label %233

124:                                              ; preds = %101, %118, %93, %88, %82
  %125 = phi i32 [ %117, %101 ], [ %86, %118 ], [ %86, %93 ], [ %86, %88 ], [ %86, %82 ]
  %126 = getelementptr inbounds %struct.cpp_token, ptr %85, i64 0, i32 1
  %127 = load i8, ptr %126, align 4
  switch i8 %127, label %162 [
    i8 22, label %128
    i8 38, label %132
  ], !prof !251

128:                                              ; preds = %124
  %129 = icmp eq i8 %84, 0
  br i1 %129, label %168, label %130, !prof !238

130:                                              ; preds = %128
  %131 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.38) #20
  br label %233

132:                                              ; preds = %124
  %133 = icmp eq i32 %125, 1
  br i1 %133, label %134, label %136, !prof !252

134:                                              ; preds = %132
  %135 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.38) #20
  br label %233

136:                                              ; preds = %132
  %137 = getelementptr %struct.cpp_token, ptr %85, i64 -1, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !142
  %139 = and i16 %138, 8
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %147, label %141, !prof !253

141:                                              ; preds = %136
  %142 = load i8, ptr %71, align 2
  %143 = or i8 %142, 32
  store i8 %143, ptr %71, align 2
  %144 = add i32 %83, 1
  %145 = add i32 %125, -1
  %146 = getelementptr inbounds %struct.cpp_token, ptr %85, i64 0, i32 3
  store i32 %145, ptr %146, align 8, !tbaa !67
  br label %162

147:                                              ; preds = %136
  %148 = add i32 %125, -1
  store i32 %148, ptr %81, align 4, !tbaa !194
  %149 = or disjoint i16 %138, 8
  store i16 %149, ptr %137, align 2, !tbaa !142
  %150 = getelementptr inbounds %struct.cpp_token, ptr %85, i64 0, i32 2
  %151 = load i16, ptr %150, align 2, !tbaa !142
  %152 = and i16 %151, 3
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = and i16 %151, 2
  %156 = icmp eq i16 %155, 0
  %157 = or i16 %138, 264
  %158 = select i1 %156, i16 %149, i16 %157, !prof !253
  %159 = shl i16 %151, 9
  %160 = and i16 %159, 512
  %161 = or i16 %158, %160
  store i16 %161, ptr %137, align 2, !tbaa !142
  br label %162

162:                                              ; preds = %154, %147, %124, %141
  %163 = phi i32 [ %144, %141 ], [ %83, %124 ], [ %83, %147 ], [ %83, %154 ]
  %164 = load i8, ptr %126, align 4
  %165 = icmp eq i8 %164, 38
  %166 = zext i1 %165 to i8
  %167 = tail call fastcc ptr @lex_expansion_token(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %82

168:                                              ; preds = %128
  %169 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !226
  %171 = getelementptr inbounds %struct._cpp_buff, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !170
  %173 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !67
  %174 = load i8, ptr %71, align 2
  %175 = and i8 %174, -17
  store i8 %175, ptr %71, align 2
  %176 = add i32 %125, -1
  store i32 %176, ptr %81, align 4, !tbaa !194
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178, !prof !243

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.cpp_token, ptr %172, i64 0, i32 2
  %180 = load i16, ptr %179, align 2, !tbaa !142
  %181 = and i16 %180, -2
  store i16 %181, ptr %179, align 2, !tbaa !142
  br label %182

182:                                              ; preds = %178, %168
  %183 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %184 = load ptr, ptr %183, align 8, !tbaa !232
  %185 = getelementptr inbounds %struct.ht, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !233
  %187 = icmp eq ptr %186, null
  br i1 %187, label %227, label %188, !prof !235

188:                                              ; preds = %182
  %189 = zext i32 %176 to i64
  %190 = mul nuw nsw i64 %189, 24
  %191 = tail call ptr %186(i64 noundef %190) #20
  %192 = icmp eq i32 %83, 0
  br i1 %192, label %221, label %193, !prof !238

193:                                              ; preds = %188
  %194 = load i32, ptr %81, align 4, !tbaa !194
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %226, label %196

196:                                              ; preds = %193
  %197 = zext i32 %194 to i64
  %198 = getelementptr inbounds %struct.cpp_token, ptr %191, i64 %197
  %199 = zext i32 %83 to i64
  %200 = sub nsw i64 0, %199
  %201 = getelementptr inbounds %struct.cpp_token, ptr %198, i64 %200
  br label %202

202:                                              ; preds = %196, %202
  %203 = phi i64 [ 0, %196 ], [ %217, %202 ]
  %204 = phi ptr [ %201, %196 ], [ %216, %202 ]
  %205 = phi ptr [ %191, %196 ], [ %213, %202 ]
  %206 = load ptr, ptr %173, align 8, !tbaa !67
  %207 = getelementptr inbounds %struct.cpp_token, ptr %206, i64 %203
  %208 = getelementptr inbounds %struct.cpp_token, ptr %206, i64 %203, i32 1
  %209 = load i8, ptr %208, align 4
  %210 = icmp ne i8 %209, 38
  %211 = select i1 %210, ptr %205, ptr %204
  %212 = zext i1 %210 to i64
  %213 = getelementptr inbounds %struct.cpp_token, ptr %205, i64 %212
  %214 = xor i1 %210, true
  %215 = zext i1 %214 to i64
  %216 = getelementptr inbounds %struct.cpp_token, ptr %204, i64 %215
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %211, ptr noundef nonnull align 8 dereferenceable(24) %207, i64 24, i1 false)
  %217 = add nuw nsw i64 %203, 1
  %218 = load i32, ptr %81, align 4, !tbaa !194
  %219 = zext i32 %218 to i64
  %220 = icmp ult i64 %217, %219
  br i1 %220, label %202, label %226, !llvm.loop !254

221:                                              ; preds = %188
  %222 = load ptr, ptr %173, align 8, !tbaa !67
  %223 = load i32, ptr %81, align 4, !tbaa !194
  %224 = zext i32 %223 to i64
  %225 = mul nuw nsw i64 %224, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %191, ptr align 8 %222, i64 %225, i1 false)
  br label %226

226:                                              ; preds = %202, %193, %221
  store ptr %191, ptr %173, align 8, !tbaa !67
  br label %233

227:                                              ; preds = %182
  %228 = load ptr, ptr %173, align 8, !tbaa !67
  %229 = zext i32 %176 to i64
  %230 = getelementptr inbounds %struct.cpp_token, ptr %228, i64 %229
  %231 = load ptr, ptr %169, align 8, !tbaa !226
  %232 = getelementptr inbounds %struct._cpp_buff, ptr %231, i64 0, i32 2
  store ptr %230, ptr %232, align 8, !tbaa !170
  br label %233

233:                                              ; preds = %11, %226, %227, %134, %130, %122
  %234 = phi i8 [ 0, %130 ], [ 0, %134 ], [ 0, %122 ], [ 1, %227 ], [ 1, %226 ], [ 0, %11 ]
  ret i8 %234
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @warn_of_redefinition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !255 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = lshr i16 %5, 6
  %7 = zext nneg i16 %6 to i32
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %75

10:                                               ; preds = %3
  %11 = and i32 %7, 260
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !130
  %20 = icmp eq i16 %17, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 5
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 5
  %25 = load i8, ptr %24, align 2
  %26 = xor i8 %25, %23
  %27 = and i8 %26, 3
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %21
  %30 = icmp eq i16 %17, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %15, align 8, !tbaa !236
  %33 = load ptr, ptr %2, align 8, !tbaa !236
  %34 = zext i16 %17 to i64
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %34
  br i1 %37, label %45, label %38, !llvm.loop !256

38:                                               ; preds = %31, %35
  %39 = phi i64 [ 0, %31 ], [ %36, %35 ]
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = getelementptr inbounds ptr, ptr %33, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %35, label %75

45:                                               ; preds = %35, %29
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %47 = load i8, ptr %46, align 2, !tbaa !107
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call zeroext i8 @_cpp_expansions_different_trad(ptr noundef nonnull %15, ptr noundef nonnull %2) #20
  br label %75

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !194
  %54 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !194
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 1
  %59 = icmp eq i32 %53, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 1
  br label %67

62:                                               ; preds = %67
  %63 = add nuw nsw i64 %68, 1
  %64 = load i32, ptr %52, align 4, !tbaa !194
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %75, !llvm.loop !257

67:                                               ; preds = %60, %62
  %68 = phi i64 [ 0, %60 ], [ %63, %62 ]
  %69 = load ptr, ptr %58, align 8, !tbaa !67
  %70 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 %68
  %71 = load ptr, ptr %61, align 8, !tbaa !67
  %72 = getelementptr inbounds %struct.cpp_token, ptr %71, i64 %68
  %73 = tail call i32 @_cpp_equiv_tokens(ptr noundef %70, ptr noundef %72) #20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %62

75:                                               ; preds = %38, %67, %62, %57, %51, %13, %21, %10, %3, %49
  %76 = phi i8 [ %50, %49 ], [ 1, %3 ], [ 0, %10 ], [ 1, %21 ], [ 1, %13 ], [ 1, %51 ], [ 0, %57 ], [ 1, %67 ], [ 0, %62 ], [ 1, %38 ]
  ret i8 %76
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrncmp(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !231 !PGOFuncName !258 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.34, i64 noundef 7) #21
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !259 !PGOFuncName !260 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #21
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @parse_params(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !224 !PGOFuncName !261 {
  br label %3

3:                                                ; preds = %25, %2
  %4 = phi i32 [ 0, %2 ], [ %26, %25 ]
  br label %5

5:                                                ; preds = %3, %9
  %6 = tail call ptr @_cpp_lex_token(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  switch i8 %8, label %13 [
    i8 53, label %16
    i8 21, label %27
    i8 19, label %33
    i8 44, label %37
    i8 22, label %74
    i8 68, label %9
  ], !prof !262

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %11 = load i8, ptr %10, align 4, !tbaa !263
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %5, %9
  %14 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %6) #20
  %15 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.43, ptr noundef %14) #20
  br label %76

16:                                               ; preds = %5
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %20, label %18, !prof !225

18:                                               ; preds = %16
  %19 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.44) #20
  br label %76

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %22) #22, !range !155
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %20, %33
  %26 = phi i32 [ 0, %33 ], [ 1, %20 ]
  br label %3

27:                                               ; preds = %5
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %29, label %76, !prof !227

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !130
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %76, label %35

33:                                               ; preds = %5
  %34 = icmp eq i32 %4, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %33, %29
  %36 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.45) #20
  br label %76

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 2
  %40 = or i8 %39, 2
  store i8 %40, ptr %38, align 2
  %41 = icmp eq i32 %4, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !264
  %45 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %44) #22, !range !155
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  store i8 1, ptr %46, align 2, !tbaa !239
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %48 = load i8, ptr %47, align 1, !tbaa !190
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %52 = load i8, ptr %51, align 1, !tbaa !131
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 21
  %56 = load i8, ptr %55, align 1, !tbaa !265
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %69, label %66

58:                                               ; preds = %37
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %60 = load i8, ptr %59, align 1, !tbaa !131
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 21
  %64 = load i8, ptr %63, align 1, !tbaa !265
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %54
  %67 = phi ptr [ @.str.46, %54 ], [ @.str.47, %62 ]
  %68 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %67) #20
  br label %69

69:                                               ; preds = %66, %58, %62, %42, %50, %54
  %70 = tail call ptr @_cpp_lex_token(ptr noundef nonnull %0) #20
  %71 = getelementptr inbounds %struct.cpp_token, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 21
  br i1 %73, label %76, label %74

74:                                               ; preds = %5, %69
  %75 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.48) #20
  br label %76

76:                                               ; preds = %20, %69, %27, %29, %18, %35, %74, %13
  %77 = phi i8 [ 1, %69 ], [ 1, %27 ], [ 1, %29 ], [ 0, %18 ], [ 0, %35 ], [ 0, %74 ], [ 0, %13 ], [ 0, %20 ]
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_expansion_token(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !266 !PGOFuncName !267 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = tail call fastcc ptr @alloc_expansion_token(ptr noundef %0, ptr noundef %1) #22
  store ptr %5, ptr %3, align 8, !tbaa !108
  %6 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #20
  store ptr %4, ptr %3, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 53
  br i1 %9, label %10, label %21, !prof !268

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.cpp_hashnode, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 4096
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17, !prof !269

17:                                               ; preds = %10
  store i8 69, ptr %7, align 4
  %18 = getelementptr inbounds %struct.cpp_hashnode, ptr %12, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !67
  %20 = zext i16 %19 to i32
  store i32 %20, ptr %11, align 8, !tbaa !67
  br label %32

21:                                               ; preds = %10, %2
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %23 = load i8, ptr %22, align 1, !tbaa !165
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !270

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !130
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  switch i8 %8, label %32 [
    i8 61, label %30
    i8 56, label %30
  ]

30:                                               ; preds = %29, %29
  %31 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 3
  tail call fastcc void @check_trad_stringification(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %31) #22
  br label %32

32:                                               ; preds = %29, %21, %25, %30, %17
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_expansion_token(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !271 !PGOFuncName !272 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !194
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %15, 24
  %17 = icmp ult i64 %11, %16
  br i1 %17, label %18, label %24, !prof !273

18:                                               ; preds = %2
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 24) #20
  %19 = load ptr, ptr %3, align 8, !tbaa !226
  %20 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !170
  %22 = load i32, ptr %12, align 4, !tbaa !194
  %23 = add i32 %22, 1
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ %23, %18 ], [ %14, %2 ]
  %26 = phi i32 [ %22, %18 ], [ %13, %2 ]
  %27 = phi ptr [ %21, %18 ], [ %8, %2 ]
  store i32 %25, ptr %12, align 4, !tbaa !194
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.cpp_token, ptr %27, i64 %28
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_trad_stringification(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !66 !PGOFuncName !274 {
  %4 = getelementptr inbounds %struct.cpp_string, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !275
  %6 = load i32, ptr %2, align 8, !tbaa !277
  %7 = zext i32 %6 to i64
  %8 = getelementptr i8, ptr %5, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = icmp ugt i32 %6, 2
  br i1 %10, label %11, label %82

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %14 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  br label %15

15:                                               ; preds = %31, %11
  %16 = phi ptr [ %12, %11 ], [ %32, %31 ]
  %17 = load i8, ptr %16, align 1, !tbaa !67
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !176
  %21 = and i16 %20, 512
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = icmp eq i8 %17, 36
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8, ptr %13, align 2, !tbaa !278
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1
  %30 = icmp ult ptr %29, %9
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %80
  %32 = phi ptr [ %29, %28 ], [ %53, %80 ]
  br label %15, !llvm.loop !279

33:                                               ; preds = %15, %28, %25
  %34 = phi ptr [ %16, %15 ], [ %29, %28 ], [ %16, %25 ]
  %35 = icmp ult ptr %34, %9
  br i1 %35, label %36, label %52

36:                                               ; preds = %33, %49
  %37 = phi ptr [ %50, %49 ], [ %34, %33 ]
  %38 = load i8, ptr %37, align 1, !tbaa !67
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !176
  %42 = and i16 %41, 516
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = icmp eq i8 %38, 36
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = load i8, ptr %13, align 2, !tbaa !278
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %36, %46
  %50 = getelementptr inbounds i8, ptr %37, i64 1
  %51 = icmp ult ptr %50, %9
  br i1 %51, label %36, label %52, !llvm.loop !280

52:                                               ; preds = %46, %44, %49, %33
  %53 = phi ptr [ %34, %33 ], [ %50, %49 ], [ %37, %44 ], [ %37, %46 ]
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %34 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i16, ptr %14, align 8, !tbaa !130
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %1, align 8, !tbaa !236
  %62 = and i64 %56, 4294967295
  %63 = zext i16 %58 to i64
  br label %64

64:                                               ; preds = %60, %77
  %65 = phi i64 [ 0, %60 ], [ %78, %77 ]
  %66 = getelementptr inbounds ptr, ptr %61, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = getelementptr inbounds %struct.ht_identifier, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !281
  %70 = icmp eq i32 %69, %57
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load ptr, ptr %67, align 8, !tbaa !93
  %73 = tail call i32 @bcmp(ptr nonnull %34, ptr %72, i64 %62)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef %72) #20
  br label %80

77:                                               ; preds = %71, %64
  %78 = add nuw nsw i64 %65, 1
  %79 = icmp eq i64 %78, %63
  br i1 %79, label %80, label %64, !llvm.loop !282

80:                                               ; preds = %77, %52, %75
  %81 = icmp ult ptr %53, %9
  br i1 %81, label %31, label %82

82:                                               ; preds = %80, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_expansions_different_trad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_cpp_equiv_tokens(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_macro_definition(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !66 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 319
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = and i16 %6, 63
  %11 = zext nneg i16 %10 to i32
  %12 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.50, i32 noundef %11) #20
  br label %245

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !281
  %16 = add i32 %15, 2
  %17 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 5
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %13
  %22 = add i32 %15, 6
  %23 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !130
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 8, !tbaa !236
  %28 = zext i16 %24 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %38, %29 ]
  %31 = phi i32 [ %22, %26 ], [ %37, %29 ]
  %32 = getelementptr inbounds ptr, ptr %27, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = getelementptr inbounds %struct.ht_identifier, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !281
  %36 = add i32 %31, 1
  %37 = add i32 %36, %35
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %28
  br i1 %39, label %40, label %29, !llvm.loop !283

40:                                               ; preds = %29, %21, %13
  %41 = phi i32 [ %16, %13 ], [ %22, %21 ], [ %37, %29 ]
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %43 = load i8, ptr %42, align 2, !tbaa !107
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = tail call i64 @_cpp_replacement_text_len(ptr noundef nonnull %4) #20
  %47 = trunc i64 %46 to i32
  %48 = add i32 %41, %47
  br label %93

49:                                               ; preds = %40
  %50 = tail call fastcc i32 @macro_real_token_count(ptr noundef nonnull %4) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %93, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 1
  %54 = zext i32 %50 to i64
  br label %55

55:                                               ; preds = %52, %75
  %56 = phi i64 [ 0, %52 ], [ %91, %75 ]
  %57 = phi i32 [ %41, %52 ], [ %90, %75 ]
  %58 = load ptr, ptr %53, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 69
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 8, !tbaa !236
  %64 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !67
  %66 = add i32 %65, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %63, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !96
  %70 = getelementptr inbounds %struct.ht_identifier, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !281
  br label %75

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56
  %74 = tail call i32 @cpp_token_len(ptr noundef %73) #20
  br label %75

75:                                               ; preds = %72, %62
  %76 = phi i32 [ %71, %62 ], [ %74, %72 ]
  %77 = add i32 %76, %57
  %78 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !142
  %80 = lshr i16 %79, 2
  %81 = and i16 %80, 1
  %82 = zext nneg i16 %81 to i32
  %83 = add i32 %77, %82
  %84 = and i16 %79, 8
  %85 = icmp eq i16 %84, 0
  %86 = add i32 %83, 3
  %87 = select i1 %85, i32 %83, i32 %86
  %88 = and i16 %79, 1
  %89 = zext nneg i16 %88 to i32
  %90 = add i32 %87, %89
  %91 = add nuw nsw i64 %56, 1
  %92 = icmp eq i64 %91, %54
  br i1 %92, label %93, label %55, !llvm.loop !284

93:                                               ; preds = %75, %49, %45
  %94 = phi i32 [ %48, %45 ], [ %41, %49 ], [ %90, %75 ]
  %95 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  %96 = load i32, ptr %95, align 8, !tbaa !228
  %97 = icmp ugt i32 %94, %96
  %98 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %99 = load ptr, ptr %98, align 8, !tbaa !229
  br i1 %97, label %100, label %103

100:                                              ; preds = %93
  %101 = zext i32 %94 to i64
  %102 = tail call ptr @xrealloc(ptr noundef %99, i64 noundef %101) #20
  store ptr %102, ptr %98, align 8, !tbaa !229
  store i32 %94, ptr %95, align 8, !tbaa !228
  br label %103

103:                                              ; preds = %93, %100
  %104 = phi ptr [ %102, %100 ], [ %99, %93 ]
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %106 = load ptr, ptr %1, align 8, !tbaa !93
  %107 = load i32, ptr %14, align 8, !tbaa !281
  %108 = zext i32 %107 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %106, i64 %108, i1 false)
  %109 = load i32, ptr %14, align 8, !tbaa !281
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %104, i64 %110
  %112 = load i8, ptr %17, align 2
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %164, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 40, ptr %111, align 1, !tbaa !67
  %117 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 4
  %118 = load i16, ptr %117, align 8, !tbaa !130
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %161, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  br label %122

122:                                              ; preds = %120, %156
  %123 = phi i16 [ %118, %120 ], [ %158, %156 ]
  %124 = phi i64 [ 0, %120 ], [ %143, %156 ]
  %125 = phi ptr [ %116, %120 ], [ %157, %156 ]
  %126 = load ptr, ptr %4, align 8, !tbaa !236
  %127 = getelementptr inbounds ptr, ptr %126, i64 %124
  %128 = load ptr, ptr %127, align 8, !tbaa !96
  %129 = load ptr, ptr %121, align 8, !tbaa !264
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %122
  %132 = load ptr, ptr %128, align 8, !tbaa !93
  %133 = getelementptr inbounds %struct.ht_identifier, ptr %128, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !281
  %135 = zext i32 %134 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %132, i64 %135, i1 false)
  %136 = load i32, ptr %133, align 8, !tbaa !281
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %125, i64 %137
  %139 = load i16, ptr %117, align 8, !tbaa !130
  br label %140

140:                                              ; preds = %131, %122
  %141 = phi i16 [ %139, %131 ], [ %123, %122 ]
  %142 = phi ptr [ %138, %131 ], [ %125, %122 ]
  %143 = add nuw nsw i64 %124, 1
  %144 = zext i16 %141 to i64
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = getelementptr inbounds i8, ptr %142, i64 1
  store i8 44, ptr %142, align 1, !tbaa !67
  br label %156

148:                                              ; preds = %140
  %149 = load i8, ptr %17, align 2
  %150 = and i8 %149, 2
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, ptr %142, i64 1
  store i8 46, ptr %142, align 1, !tbaa !67
  %154 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 46, ptr %153, align 1, !tbaa !67
  %155 = getelementptr inbounds i8, ptr %142, i64 3
  store i8 46, ptr %154, align 1, !tbaa !67
  br label %156

156:                                              ; preds = %148, %152, %146
  %157 = phi ptr [ %147, %146 ], [ %155, %152 ], [ %142, %148 ]
  %158 = load i16, ptr %117, align 8, !tbaa !130
  %159 = zext i16 %158 to i64
  %160 = icmp ult i64 %143, %159
  br i1 %160, label %122, label %161, !llvm.loop !285

161:                                              ; preds = %156, %115
  %162 = phi ptr [ %116, %115 ], [ %157, %156 ]
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  store i8 41, ptr %162, align 1, !tbaa !67
  br label %164

164:                                              ; preds = %161, %103
  %165 = phi ptr [ %163, %161 ], [ %111, %103 ]
  %166 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 32, ptr %165, align 1, !tbaa !67
  %167 = load i8, ptr %42, align 2, !tbaa !107
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = tail call ptr @_cpp_copy_replacement_text(ptr noundef nonnull %4, ptr noundef nonnull %166) #20
  br label %242

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !194
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %242, label %175

175:                                              ; preds = %171
  %176 = tail call fastcc i32 @macro_real_token_count(ptr noundef nonnull %4) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %242, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 1
  %180 = zext i32 %176 to i64
  br label %181

181:                                              ; preds = %178, %238
  %182 = phi i64 [ 0, %178 ], [ %240, %238 ]
  %183 = phi ptr [ %166, %178 ], [ %239, %238 ]
  %184 = load ptr, ptr %179, align 8, !tbaa !67
  %185 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182
  %186 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182, i32 2
  %187 = load i16, ptr %186, align 2, !tbaa !142
  %188 = and i16 %187, 1
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 32, ptr %183, align 1, !tbaa !67
  %192 = load i16, ptr %186, align 2, !tbaa !142
  br label %193

193:                                              ; preds = %190, %181
  %194 = phi i16 [ %192, %190 ], [ %187, %181 ]
  %195 = phi ptr [ %191, %190 ], [ %183, %181 ]
  %196 = and i16 %194, 4
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 35, ptr %195, align 1, !tbaa !67
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %195, %193 ]
  %202 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182, i32 1
  %203 = load i8, ptr %202, align 4
  %204 = icmp eq i8 %203, 69
  br i1 %204, label %205, label %227

205:                                              ; preds = %200
  %206 = load ptr, ptr %4, align 8, !tbaa !236
  %207 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182, i32 3
  %208 = load i32, ptr %207, align 8, !tbaa !67
  %209 = add i32 %208, -1
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %206, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !96
  %213 = load ptr, ptr %212, align 8, !tbaa !93
  %214 = getelementptr inbounds %struct.ht_identifier, ptr %212, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !281
  %216 = zext i32 %215 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %201, ptr align 1 %213, i64 %216, i1 false)
  %217 = load ptr, ptr %4, align 8, !tbaa !236
  %218 = load i32, ptr %207, align 8, !tbaa !67
  %219 = add i32 %218, -1
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %217, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !96
  %223 = getelementptr inbounds %struct.ht_identifier, ptr %222, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !281
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %201, i64 %225
  br label %229

227:                                              ; preds = %200
  %228 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef nonnull %185, ptr noundef %201, i8 noundef zeroext 0) #20
  br label %229

229:                                              ; preds = %227, %205
  %230 = phi ptr [ %226, %205 ], [ %228, %227 ]
  %231 = load i16, ptr %186, align 2, !tbaa !142
  %232 = and i16 %231, 8
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds i8, ptr %230, i64 1
  store i8 32, ptr %230, align 1, !tbaa !67
  %236 = getelementptr inbounds i8, ptr %230, i64 2
  store i8 35, ptr %235, align 1, !tbaa !67
  %237 = getelementptr inbounds i8, ptr %230, i64 3
  store i8 35, ptr %236, align 1, !tbaa !67
  br label %238

238:                                              ; preds = %234, %229
  %239 = phi ptr [ %237, %234 ], [ %230, %229 ]
  %240 = add nuw nsw i64 %182, 1
  %241 = icmp eq i64 %240, %180
  br i1 %241, label %242, label %181, !llvm.loop !286

242:                                              ; preds = %238, %175, %171, %169
  %243 = phi ptr [ %170, %169 ], [ %166, %171 ], [ %166, %175 ], [ %239, %238 ]
  store i8 0, ptr %243, align 1, !tbaa !67
  %244 = load ptr, ptr %105, align 8, !tbaa !229
  br label %245

245:                                              ; preds = %242, %9
  %246 = phi ptr [ null, %9 ], [ %244, %242 ]
  ret ptr %246
}

; Function Attrs: optsize
declare i64 @_cpp_replacement_text_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_cpp_copy_replacement_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!65}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!36 = !{ptr @cpp_get_token, ptr @_cpp_lex_token, i64 4338431}
!37 = !{ptr @cpp_get_token, ptr @_cpp_temp_token, i64 1}
!38 = !{ptr @_cpp_backup_tokens, ptr @_cpp_backup_tokens_direct, i64 24982}
!39 = !{ptr @cpp_get_token_with_location, ptr @cpp_get_token, i64 4310356}
!40 = !{ptr @_cpp_save_parameter, ptr @cpp_error, i64 1}
!41 = !{ptr @_cpp_save_parameter, ptr @_cpp_extend_buff, i64 1}
!42 = !{ptr @_cpp_save_parameter, ptr @xrealloc, i64 2}
!43 = !{ptr @_cpp_create_definition, ptr @_cpp_aligned_alloc, i64 1}
!44 = !{ptr @_cpp_create_definition, ptr @_cpp_create_trad_definition, i64 1}
!45 = !{ptr @_cpp_create_definition, ptr @create_iso_definition, i64 188}
!46 = !{ptr @_cpp_create_definition, ptr @_cpp_warn_if_unused_macro, i64 1}
!47 = !{ptr @_cpp_create_definition, ptr @warn_of_redefinition, i64 1}
!48 = !{ptr @_cpp_create_definition, ptr @cpp_error_with_line, i64 1}
!49 = !{ptr @_cpp_create_definition, ptr @_cpp_free_definition, i64 1}
!50 = !{ptr @_cpp_create_definition, ptr @ustrncmp, i64 188}
!51 = !{ptr @_cpp_create_definition, ptr @ustrcmp, i64 7}
!52 = !{ptr @create_iso_definition, ptr @_cpp_lex_token, i64 189}
!53 = !{ptr @create_iso_definition, ptr @parse_params, i64 10}
!54 = !{ptr @create_iso_definition, ptr @cpp_error, i64 3}
!55 = !{ptr @create_iso_definition, ptr @lex_expansion_token, i64 304}
!56 = !{ptr @create_iso_definition, ptr @alloc_expansion_token, i64 177}
!57 = !{ptr @ustrncmp, ptr @strncmp, i64 189}
!58 = !{ptr @ustrcmp, ptr @strcmp, i64 6}
!59 = !{ptr @parse_params, ptr @_cpp_lex_token, i64 19}
!60 = !{ptr @parse_params, ptr @cpp_error, i64 2}
!61 = !{ptr @parse_params, ptr @_cpp_save_parameter, i64 7}
!62 = !{ptr @lex_expansion_token, ptr @alloc_expansion_token, i64 307}
!63 = !{ptr @lex_expansion_token, ptr @_cpp_lex_direct, i64 307}
!64 = !{ptr @alloc_expansion_token, ptr @_cpp_extend_buff, i64 1}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !{!71, !72, i64 40}
!71 = !{!"cpp_reader", !72, i64 0, !72, i64 8, !73, i64 16, !72, i64 40, !74, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !75, i64 80, !72, i64 136, !72, i64 144, !76, i64 152, !74, i64 176, !68, i64 180, !72, i64 184, !72, i64 192, !78, i64 200, !72, i64 264, !72, i64 272, !72, i64 280, !72, i64 288, !72, i64 296, !72, i64 304, !80, i64 312, !68, i64 400, !68, i64 401, !72, i64 408, !72, i64 416, !68, i64 424, !72, i64 432, !81, i64 440, !72, i64 472, !74, i64 480, !74, i64 484, !72, i64 488, !74, i64 496, !82, i64 504, !82, i64 528, !82, i64 552, !82, i64 576, !82, i64 600, !72, i64 624, !72, i64 632, !76, i64 640, !76, i64 664, !72, i64 688, !80, i64 696, !80, i64 784, !72, i64 872, !83, i64 880, !72, i64 1016, !72, i64 1024, !72, i64 1032, !84, i64 1040, !86, i64 1168, !68, i64 1200, !87, i64 1208, !72, i64 1240, !72, i64 1248, !72, i64 1256, !72, i64 1264, !74, i64 1272, !88, i64 1280, !72, i64 1296}
!72 = !{!"any pointer", !68, i64 0}
!73 = !{!"lexer_state", !68, i64 0, !68, i64 1, !68, i64 2, !68, i64 3, !68, i64 4, !68, i64 5, !68, i64 6, !68, i64 7, !68, i64 8, !68, i64 9, !68, i64 10, !74, i64 12, !68, i64 16, !68, i64 17}
!74 = !{!"int", !68, i64 0}
!75 = !{!"cpp_context", !72, i64 0, !72, i64 8, !68, i64 16, !72, i64 32, !72, i64 40, !68, i64 48}
!76 = !{!"cpp_token", !74, i64 0, !74, i64 4, !77, i64 6, !68, i64 8}
!77 = !{!"short", !68, i64 0}
!78 = !{!"cpp_dir", !72, i64 0, !72, i64 8, !74, i64 16, !68, i64 20, !68, i64 21, !72, i64 24, !72, i64 32, !72, i64 40, !79, i64 48, !79, i64 56}
!79 = !{!"long", !68, i64 0}
!80 = !{!"obstack", !79, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !79, i64 40, !74, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !74, i64 80, !74, i64 80, !74, i64 80}
!81 = !{!"tokenrun", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!82 = !{!"cset_converter", !72, i64 0, !72, i64 8, !74, i64 16}
!83 = !{!"cpp_callbacks", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128}
!84 = !{!"cpp_options", !74, i64 0, !74, i64 4, !68, i64 8, !68, i64 9, !68, i64 10, !68, i64 11, !68, i64 12, !68, i64 13, !68, i64 14, !68, i64 15, !68, i64 16, !68, i64 17, !68, i64 18, !68, i64 19, !68, i64 20, !68, i64 21, !68, i64 22, !68, i64 23, !68, i64 24, !68, i64 25, !68, i64 26, !68, i64 27, !68, i64 28, !68, i64 29, !68, i64 30, !68, i64 31, !68, i64 32, !68, i64 33, !68, i64 34, !68, i64 35, !68, i64 36, !68, i64 37, !68, i64 38, !68, i64 39, !68, i64 40, !68, i64 41, !68, i64 42, !72, i64 48, !72, i64 56, !72, i64 64, !74, i64 72, !68, i64 76, !68, i64 77, !85, i64 80, !79, i64 88, !79, i64 96, !79, i64 104, !79, i64 112, !68, i64 120, !68, i64 121, !68, i64 122, !68, i64 123, !68, i64 124}
!85 = !{!"", !74, i64 0, !68, i64 4, !68, i64 5, !68, i64 6, !68, i64 7}
!86 = !{!"spec_nodes", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!87 = !{!"", !72, i64 0, !72, i64 8, !72, i64 16, !74, i64 24}
!88 = !{!"", !72, i64 0, !74, i64 8, !74, i64 12}
!89 = !{!90, !74, i64 16}
!90 = !{!"cpp_macro", !72, i64 0, !68, i64 8, !74, i64 16, !74, i64 20, !77, i64 24, !74, i64 26, !74, i64 26, !74, i64 26, !74, i64 26, !74, i64 26, !74, i64 26}
!91 = !{!92, !74, i64 16}
!92 = !{!"line_map", !72, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !68, i64 21, !74, i64 22}
!93 = !{!94, !72, i64 0}
!94 = !{!"cpp_hashnode", !95, i64 0, !74, i64 16, !74, i64 16, !68, i64 17, !74, i64 18, !74, i64 18, !68, i64 24}
!95 = !{!"ht_identifier", !72, i64 0, !74, i64 8, !74, i64 12}
!96 = !{!72, !72, i64 0}
!97 = !{!98, !72, i64 80}
!98 = !{!"cpp_buffer", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !74, i64 48, !74, i64 52, !74, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !68, i64 96, !74, i64 97, !74, i64 97, !74, i64 97, !68, i64 98, !78, i64 104, !82, i64 168}
!99 = !{!100, !74, i64 36}
!100 = !{!"line_maps", !72, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !68, i64 28, !74, i64 32, !74, i64 36, !74, i64 40, !72, i64 48}
!101 = !{!100, !72, i64 0}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!92, !72, i64 0}
!105 = !{!100, !74, i64 24}
!106 = !{!100, !74, i64 12}
!107 = !{!71, !68, i64 1082}
!108 = !{!71, !72, i64 432}
!109 = !{!74, !74, i64 0}
!110 = !{!92, !74, i64 12}
!111 = !{!92, !74, i64 8}
!112 = !{i32 0, i32 256}
!113 = !{!71, !72, i64 624}
!114 = !{!79, !79, i64 0}
!115 = !{!116, !74, i64 16}
!116 = !{!"tm", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28, !74, i64 32, !79, i64 40, !72, i64 48}
!117 = !{!116, !74, i64 12}
!118 = !{!116, !74, i64 20}
!119 = !{!71, !72, i64 632}
!120 = !{!116, !74, i64 8}
!121 = !{!116, !74, i64 4}
!122 = !{!116, !74, i64 0}
!123 = !{!71, !68, i64 1164}
!124 = !{!71, !68, i64 16}
!125 = !{!71, !74, i64 1272}
!126 = distinct !{!126, !103}
!127 = !{!"cpp_macro.c:cpp_in_system_header"}
!128 = !{!71, !72, i64 0}
!129 = !{!98, !68, i64 98}
!130 = !{!90, !77, i64 24}
!131 = !{!71, !68, i64 1077}
!132 = !{!75, !68, i64 48}
!133 = !{!75, !72, i64 40}
!134 = !{!75, !72, i64 32}
!135 = !{!"cpp_macro.c:next_context"}
!136 = !{!71, !72, i64 136}
!137 = !{!75, !72, i64 0}
!138 = !{!75, !72, i64 8}
!139 = !{!"function_entry_count", i64 4338430}
!140 = !{!71, !68, i64 180}
!141 = !{!"branch_weights", i32 4338431, i32 1}
!142 = !{!76, !77, i64 6}
!143 = !{!"branch_weights", i32 4338411, i32 21}
!144 = !{!"branch_weights", i32 62852958, i32 4338432, i32 28254114}
!145 = !{!"branch_weights", i32 1345434, i32 2992998}
!146 = !{!"branch_weights", i32 3, i32 1345432}
!147 = !{!"branch_weights", i32 3, i32 1}
!148 = !{!76, !74, i64 0}
!149 = !{!71, !74, i64 176}
!150 = !{!71, !68, i64 24}
!151 = !{!"branch_weights", i32 1, i32 3}
!152 = !{!71, !72, i64 968}
!153 = !{i64 0, i64 8, !96, i64 0, i64 8, !96, i64 0, i64 4, !109, i64 8, i64 8, !96, i64 0, i64 4, !109, i64 0, i64 4, !109, i64 0, i64 4, !109}
!154 = !{!"cpp_macro.c:paste_all_tokens"}
!155 = !{i8 0, i8 2}
!156 = distinct !{!156, !103}
!157 = !{!"cpp_macro.c:padding_token"}
!158 = !{!"cpp_macro.c:enter_macro_context"}
!159 = !{!71, !68, i64 424}
!160 = !{!71, !68, i64 19}
!161 = !{!71, !72, i64 984}
!162 = !{!71, !74, i64 48}
!163 = !{!71, !74, i64 484}
!164 = !{!71, !68, i64 25}
!165 = !{!71, !68, i64 1063}
!166 = !{!167, !72, i64 8}
!167 = !{!"_cpp_buff", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!168 = !{!71, !72, i64 1008}
!169 = !{!167, !72, i64 0}
!170 = !{!167, !72, i64 16}
!171 = distinct !{!171, !103}
!172 = !{!"cpp_macro.c:paste_tokens"}
!173 = !{!98, !72, i64 0}
!174 = !{!98, !72, i64 32}
!175 = !{i64 0, i64 4, !109, i64 4, i64 4, !109, i64 6, i64 2, !176, i64 8, i64 8, !96, i64 8, i64 8, !96, i64 8, i64 4, !109, i64 16, i64 8, !96, i64 8, i64 4, !109, i64 8, i64 4, !109, i64 8, i64 4, !109}
!176 = !{!77, !77, i64 0}
!177 = !{!71, !74, i64 1044}
!178 = !{!"function_entry_count", i64 24983}
!179 = !{!"branch_weights", i32 24984, i32 1}
!180 = !{!"cpp_macro.c:funlike_invocation_p"}
!181 = !{!"cpp_macro.c:replace_args"}
!182 = !{!183, !72, i64 16}
!183 = !{!"macro_arg", !72, i64 0, !72, i64 8, !72, i64 16, !74, i64 24, !74, i64 28}
!184 = !{!183, !74, i64 24}
!185 = !{!183, !72, i64 8}
!186 = !{!183, !74, i64 28}
!187 = distinct !{!187, !103}
!188 = !{!183, !72, i64 0}
!189 = !{!71, !68, i64 17}
!190 = !{!71, !68, i64 1075}
!191 = distinct !{!191, !103}
!192 = distinct !{!192, !103}
!193 = !{!"cpp_macro.c:macro_real_token_count"}
!194 = !{!90, !74, i64 20}
!195 = distinct !{!195, !103}
!196 = !{!"cpp_macro.c:push_ptoken_context"}
!197 = !{!"cpp_macro.c:builtin_macro"}
!198 = !{!"cpp_macro.c:collect_args"}
!199 = !{!167, !72, i64 24}
!200 = distinct !{!200, !103}
!201 = distinct !{!201, !103}
!202 = !{!71, !68, i64 1076}
!203 = !{!"cpp_macro.c:stringify_arg"}
!204 = !{!71, !72, i64 64}
!205 = distinct !{!205, !103}
!206 = !{!"cpp_macro.c:expand_arg"}
!207 = !{!"cpp_macro.c:new_string_token"}
!208 = !{!"cpp_macro.c:ustrlen"}
!209 = !{!"function_entry_count", i64 4310356}
!210 = !{!"branch_weights", i32 4310357, i32 1}
!211 = !{!71, !68, i64 26}
!212 = distinct !{!212, !103}
!213 = distinct !{!213, !103}
!214 = !{!71, !74, i64 480}
!215 = !{!"branch_weights", i32 1, i32 24983}
!216 = !{!71, !72, i64 472}
!217 = !{!81, !72, i64 16}
!218 = !{!"branch_weights", i32 63, i32 24922}
!219 = !{!81, !72, i64 8}
!220 = !{!"branch_weights", i32 62, i32 2}
!221 = !{!81, !72, i64 24}
!222 = !{!"branch_weights", i32 24983, i32 1}
!223 = distinct !{!223, !103}
!224 = !{!"function_entry_count", i64 10}
!225 = !{!"branch_weights", i32 11, i32 1}
!226 = !{!71, !72, i64 56}
!227 = !{!"branch_weights", i32 1, i32 11}
!228 = !{!71, !74, i64 496}
!229 = !{!71, !72, i64 488}
!230 = !{!"branch_weights", i32 2, i32 10}
!231 = !{!"function_entry_count", i64 189}
!232 = !{!71, !72, i64 1016}
!233 = !{!234, !72, i64 104}
!234 = !{!"ht", !80, i64 0, !72, i64 88, !72, i64 96, !72, i64 104, !74, i64 112, !74, i64 116, !72, i64 120, !74, i64 128, !74, i64 132, !68, i64 136}
!235 = !{!"branch_weights", i32 1, i32 190}
!236 = !{!90, !72, i64 0}
!237 = !{!71, !68, i64 1074}
!238 = !{!"branch_weights", i32 190, i32 1}
!239 = !{!71, !68, i64 22}
!240 = !{!"branch_weights", i32 179, i32 11}
!241 = !{!"branch_weights", i32 11, i32 0}
!242 = distinct !{!242, !103}
!243 = !{!"branch_weights", i32 3, i32 188}
!244 = !{!"cpp_macro.c:create_iso_definition"}
!245 = !{!"branch_weights", i32 -1576893519, i32 436207616, i32 50166862}
!246 = !{!"branch_weights", i32 11, i32 16}
!247 = !{!"branch_weights", i32 1, i32 178}
!248 = !{!"branch_weights", i32 180, i32 11}
!249 = !{!"branch_weights", i32 298, i32 190}
!250 = !{!"branch_weights", i32 1, i32 298}
!251 = !{!"branch_weights", i32 87314, i32 56810, i32 1788}
!252 = !{!"branch_weights", i32 1, i32 6}
!253 = !{!"branch_weights", i32 6, i32 1}
!254 = distinct !{!254, !103}
!255 = !{!"cpp_macro.c:warn_of_redefinition"}
!256 = distinct !{!256, !103}
!257 = distinct !{!257, !103}
!258 = !{!"cpp_macro.c:ustrncmp"}
!259 = !{!"function_entry_count", i64 6}
!260 = !{!"cpp_macro.c:ustrcmp"}
!261 = !{!"cpp_macro.c:parse_params"}
!262 = !{!"branch_weights", i32 1, i32 22, i32 22, i32 2, i32 2, i32 2, i32 1}
!263 = !{!71, !68, i64 1052}
!264 = !{!71, !72, i64 1192}
!265 = !{!71, !68, i64 1067}
!266 = !{!"function_entry_count", i64 307}
!267 = !{!"cpp_macro.c:lex_expansion_token"}
!268 = !{!"branch_weights", i32 65, i32 244}
!269 = !{!"branch_weights", i32 55, i32 11}
!270 = !{!"branch_weights", i32 298, i32 1}
!271 = !{!"function_entry_count", i64 486}
!272 = !{!"cpp_macro.c:alloc_expansion_token"}
!273 = !{!"branch_weights", i32 1, i32 487}
!274 = !{!"cpp_macro.c:check_trad_stringification"}
!275 = !{!276, !72, i64 8}
!276 = !{!"cpp_string", !74, i64 0, !72, i64 8}
!277 = !{!276, !74, i64 0}
!278 = !{!71, !68, i64 1070}
!279 = distinct !{!279, !103}
!280 = distinct !{!280, !103}
!281 = !{!94, !74, i64 8}
!282 = distinct !{!282, !103}
!283 = distinct !{!283, !103}
!284 = distinct !{!284, !103}
!285 = distinct !{!285, !103}
!286 = distinct !{!286, !103}
