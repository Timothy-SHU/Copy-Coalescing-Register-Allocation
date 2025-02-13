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
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.macro_arg = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"macro \22%s\22 is not used\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid built-in macro \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not determine file timestamp\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\22??? ??? ?? ??:??:?? ????\22\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\22%s %2d %4d\22\00", align 1
@reltable._cpp_builtin_macro_text = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable._cpp_builtin_macro_text to i64)) to i32)], align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"\22%02d:%02d:%02d\22\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"could not determine date and time\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\22??? ?? ????\22\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\22??:??:??\22\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"__COUNTER__ expanded inside directive with -fdirectives-only\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"ISO C99 requires rest arguments to be used\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"macro \22%s\22 requires %u arguments, but only %u given\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"macro \22%s\22 passed %u arguments, but takes just %u\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"duplicate macro parameter \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\22%s\22 redefined\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"this is the location of the previous definition\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"__STDC_\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"__STDC_FORMAT_MACROS\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"__STDC_LIMIT_MACROS\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"__STDC_CONSTANT_MACROS\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"invalid hash type %d in cpp_macro_definition\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"pasting \22%s\22 and \22%s\22 does not give a valid preprocessing token\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"function-like macro \22%s\22 must be used with arguments in traditional C\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@.str.37 = private unnamed_addr constant [92 x i8] c"invoking macro %s argument %d: empty macro arguments are undefined in ISO C90 and ISO C++98\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"invalid string literal, ignoring final '\\'\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"'##' cannot appear at either end of a macro expansion\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"ISO C99 requires whitespace after the macro name\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"!\22#%&'()*+,-./:;<=>?[\\]^{|}~\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"missing whitespace after the macro name\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"'#' is not followed by a macro parameter\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"\22%s\22 may not appear in macro parameter list\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"macro parameters must be comma-separated\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"parameter name missing\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"anonymous variadic macros were introduced in C99\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"ISO C does not permit named variadic macros\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"missing ')' in macro parameter list\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.50 = private unnamed_addr constant [58 x i8] c"macro argument \22%s\22 would be stringified in traditional C\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @_cpp_warn_if_unused_macro(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 319
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !27
  %20 = tail call ptr @linemap_lookup(ptr noundef %17, i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.line_map, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, ptr %18, align 8, !tbaa !27
  %26 = load ptr, ptr %1, align 8, !tbaa !31
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
define dso_local ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !5
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
  %7 = load ptr, ptr %1, align 8, !tbaa !31
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %7) #20
  br label %176

9:                                                ; preds = %2
  %10 = tail call ptr @cpp_get_buffer(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !34
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
  store i8 34, ptr %28, align 1, !tbaa !5
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %25) #20
  %31 = getelementptr inbounds i8, ptr %28, i64 %26
  store i8 34, ptr %31, align 1, !tbaa !5
  br label %34

32:                                               ; preds = %17, %20
  %33 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.2) #20
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ @.str.3, %32 ], [ %28, %24 ]
  store ptr %35, ptr %11, align 8, !tbaa !35
  br label %173

36:                                               ; preds = %2, %2
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !8
  %39 = getelementptr inbounds %struct.line_maps, ptr %38, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !37
  %41 = tail call ptr @linemap_lookup(ptr noundef %38, i32 noundef %40) #20
  %42 = load i32, ptr %4, align 8, !tbaa !5
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.line_map, ptr %41, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !29
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load ptr, ptr %37, align 8, !tbaa !8
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i32 [ %46, %48 ], [ %55, %51 ]
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.line_map, ptr %50, i64 %53, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !29
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %51, label %57, !llvm.loop !40

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.line_map, ptr %50, i64 %53
  br label %59

59:                                               ; preds = %57, %44, %36
  %60 = phi ptr [ %41, %36 ], [ %41, %44 ], [ %58, %57 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #21
  %63 = trunc i64 %62 to i32
  %64 = shl i64 %62, 1
  %65 = add i64 %64, 3
  %66 = and i64 %65, 4294967295
  %67 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %66) #20
  store i8 34, ptr %67, align 1, !tbaa !5
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = tail call ptr @cpp_quote_string(ptr noundef nonnull %68, ptr noundef %61, i32 noundef %63) #22
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 34, ptr %69, align 1, !tbaa !5
  store i8 0, ptr %70, align 1, !tbaa !5
  br label %180

71:                                               ; preds = %2
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !8
  %74 = getelementptr inbounds %struct.line_maps, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !43
  %76 = add i32 %75, -1
  br label %176

77:                                               ; preds = %2
  %78 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !8
  %80 = load ptr, ptr %79, align 8, !tbaa !39
  %81 = getelementptr inbounds %struct.line_maps, ptr %79, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !44
  %83 = add i32 %82, -1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %86 = load i8, ptr %85, align 2, !tbaa !45
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.line_maps, ptr %79, i64 0, i32 8
  br label %94

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = getelementptr inbounds %struct.cpp_token, ptr %92, i64 -1
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi ptr [ %89, %88 ], [ %93, %90 ]
  %96 = load i32, ptr %95, align 4, !tbaa !47
  %97 = getelementptr inbounds %struct.line_map, ptr %80, i64 %84, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !48
  %99 = sub i32 %96, %98
  %100 = getelementptr inbounds %struct.line_map, ptr %80, i64 %84, i32 6
  %101 = load i8, ptr %100, align 2
  %102 = zext nneg i8 %101 to i32
  %103 = lshr i32 %99, %102
  %104 = getelementptr inbounds %struct.line_map, ptr %80, i64 %84, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !49
  %106 = add i32 %103, %105
  br label %176

107:                                              ; preds = %2
  %108 = tail call fastcc i32 @cpp_in_system_header(ptr noundef %0) #22, !range !50
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  br label %176

111:                                              ; preds = %2, %2
  %112 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 41
  %113 = load ptr, ptr %112, align 8, !tbaa !51
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %151

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %116 = tail call ptr @__errno_location() #24
  store i32 0, ptr %116, align 4, !tbaa !47
  %117 = tail call i64 @time(ptr noundef null) #20
  store i64 %117, ptr %3, align 8, !tbaa !52
  %118 = icmp eq i64 %117, -1
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, ptr %116, align 4, !tbaa !47
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %115, %119
  %123 = call ptr @localtime(ptr noundef nonnull %3) #20
  %124 = icmp eq ptr %123, null
  br i1 %124, label %146, label %125

125:                                              ; preds = %122
  %126 = call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef 14) #20
  store ptr %126, ptr %112, align 8, !tbaa !51
  %127 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !53
  %129 = sext i32 %128 to i64
  %130 = shl i64 %129, 2
  %131 = call ptr @llvm.load.relative.i64(ptr @reltable._cpp_builtin_macro_text, i64 %130)
  %132 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !55
  %134 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 5
  %135 = load i32, ptr %134, align 4, !tbaa !56
  %136 = add nsw i32 %135, 1900
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %131, i32 noundef %133, i32 noundef %136) #20
  %138 = call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef 11) #20
  %139 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  store ptr %138, ptr %139, align 8, !tbaa !57
  %140 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !58
  %142 = getelementptr inbounds %struct.tm, ptr %123, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !59
  %144 = load i32, ptr %123, align 8, !tbaa !60
  %145 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %138, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %141, i32 noundef %143, i32 noundef %144) #20
  br label %149

146:                                              ; preds = %119, %122
  %147 = call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.6) #20
  store ptr @.str.7, ptr %112, align 8, !tbaa !51
  %148 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  store ptr @.str.8, ptr %148, align 8, !tbaa !57
  br label %149

149:                                              ; preds = %146, %125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  %150 = load i32, ptr %4, align 8, !tbaa !5
  br label %151

151:                                              ; preds = %149, %111
  %152 = phi i32 [ %150, %149 ], [ %5, %111 ]
  %153 = icmp eq i32 %152, 1
  %154 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  %155 = select i1 %153, ptr %112, ptr %154
  br label %170

156:                                              ; preds = %2
  %157 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %158 = load i8, ptr %157, align 4, !tbaa !61
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %162 = load i8, ptr %161, align 8, !tbaa !62
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.9) #20
  br label %166

166:                                              ; preds = %164, %160, %156
  %167 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %168 = load i32, ptr %167, align 8, !tbaa !63
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 8, !tbaa !63
  br label %176

170:                                              ; preds = %14, %151
  %171 = phi ptr [ %155, %151 ], [ %11, %14 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !34
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
define dso_local ptr @cpp_quote_string(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %14
  %6 = phi i32 [ %9, %14 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %14 ], [ %0, %3 ]
  %8 = phi ptr [ %10, %14 ], [ %1, %3 ]
  %9 = add i32 %6, -1
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %8, align 1, !tbaa !5
  switch i8 %11, label %14 [
    i8 92, label %12
    i8 34, label %12
  ]

12:                                               ; preds = %5, %5
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 92, ptr %7, align 1, !tbaa !5
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi i64 [ 2, %12 ], [ 1, %5 ]
  %16 = phi ptr [ %13, %12 ], [ %7, %5 ]
  %17 = getelementptr inbounds i8, ptr %7, i64 %15
  store i8 %11, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %19, label %5, !llvm.loop !64

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %0, %3 ], [ %17, %14 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cpp_in_system_header(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 15
  %6 = load i8, ptr %5, align 2, !tbaa !66
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
define dso_local noundef zeroext i8 @_cpp_arguments_ok(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !67
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
  %21 = load i8, ptr %20, align 1, !tbaa !68
  %22 = icmp ne i8 %21, 0
  %23 = and i8 %16, 4
  %24 = icmp eq i8 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.11) #20
  br label %34

28:                                               ; preds = %14, %11
  %29 = load ptr, ptr %2, align 8, !tbaa !31
  %30 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %29, i32 noundef %7, i32 noundef %3) #20
  br label %34

31:                                               ; preds = %9
  %32 = load ptr, ptr %2, align 8, !tbaa !31
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef %32, i32 noundef %3, i32 noundef %7) #20
  br label %34

34:                                               ; preds = %28, %31, %19, %26, %4
  %35 = phi i8 [ 1, %4 ], [ 1, %26 ], [ 1, %19 ], [ 0, %31 ], [ 0, %28 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_push_token_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @next_context(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 5
  store i8 1, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !5
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 %10
  %12 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_context(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call ptr @xmalloc(i64 noundef 56) #20
  %8 = load ptr, ptr %2, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.cpp_context, ptr %7, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !74
  store ptr null, ptr %7, align 8, !tbaa !73
  store ptr %7, ptr %8, align 8, !tbaa !73
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %7, %6 ], [ %4, %1 ]
  store ptr %11, ptr %2, align 8, !tbaa !72
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_push_text_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @next_context(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 5
  store i8 1, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %2, i64 %3
  %11 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = or i16 %13, 2048
  store i16 %14, ptr %12, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_pop_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !70
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
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %13) #20
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  store ptr %18, ptr %2, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @_cpp_release_buff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_get_token(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 4, !tbaa !75
  store i8 0, ptr %2, align 4, !tbaa !75
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %6 = icmp eq i8 %3, 0
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 11
  br label %10

10:                                               ; preds = %54, %1
  %11 = load ptr, ptr %4, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @_cpp_lex_token(ptr noundef nonnull %0) #20
  br label %46

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !69
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 1
  store ptr %28, ptr %18, align 8, !tbaa !5
  br label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds ptr, ptr %19, i64 1
  store ptr %30, ptr %18, align 8, !tbaa !5
  %31 = load ptr, ptr %19, align 8, !tbaa !34
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %19, %27 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.cpp_token, ptr %33, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !76
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  tail call fastcc void @paste_all_tokens(ptr noundef %0, ptr noundef nonnull %33) #22
  %39 = load i8, ptr %5, align 8, !tbaa !62
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %33) #22
  br label %143

43:                                               ; preds = %17
  tail call void @_cpp_pop_context(ptr noundef nonnull %0) #22
  %44 = load i8, ptr %5, align 8, !tbaa !62
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %141, label %54

46:                                               ; preds = %32, %15
  %47 = phi ptr [ %33, %32 ], [ %16, %15 ]
  %48 = load i8, ptr %5, align 8, !tbaa !62
  %49 = icmp ne i8 %48, 0
  %50 = getelementptr inbounds %struct.cpp_token, ptr %47, i64 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 68
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %123, %43, %38
  br label %10

55:                                               ; preds = %46
  %56 = icmp eq i8 %51, 53
  br i1 %56, label %57, label %143

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.cpp_token, ptr %47, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.cpp_hashnode, ptr %59, i64 0, i32 3
  %61 = load i16, ptr %60, align 2
  %62 = and i16 %61, 63
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %143

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.cpp_token, ptr %47, i64 0, i32 2
  %66 = load i16, ptr %65, align 2, !tbaa !76
  %67 = and i16 %66, 32
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %64
  %70 = and i16 %61, 2048
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %130

72:                                               ; preds = %69
  br i1 %6, label %79, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !70
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, ptr %47, align 8, !tbaa !77
  store i32 %78, ptr %7, align 8, !tbaa !78
  br label %79

79:                                               ; preds = %77, %73, %72
  %80 = load i8, ptr %8, align 8, !tbaa !79
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %143

82:                                               ; preds = %79
  %83 = load i16, ptr %60, align 2
  %84 = and i16 %83, 16384
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %119, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %9, align 8, !tbaa !80
  %88 = icmp eq ptr %87, null
  br i1 %88, label %143, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @cpp_peek_token(ptr noundef nonnull %0, i32 noundef 0) #20
  %91 = getelementptr inbounds %struct.cpp_token, ptr %90, i64 0, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 72
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.cpp_token, ptr %90, i64 0, i32 2
  %96 = load i16, ptr %95, align 2, !tbaa !76
  %97 = load ptr, ptr %9, align 8, !tbaa !80
  %98 = tail call ptr %97(ptr noundef nonnull %0, ptr noundef nonnull %47) #20
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %119

100:                                              ; preds = %89
  %101 = load ptr, ptr %9, align 8, !tbaa !80
  %102 = tail call ptr %101(ptr noundef nonnull %0, ptr noundef nonnull %47) #20
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %119

104:                                              ; preds = %94
  %105 = and i16 %96, 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %143, label %107

107:                                              ; preds = %100, %104
  %108 = tail call ptr @cpp_peek_token(ptr noundef nonnull %0, i32 noundef 0) #20
  %109 = getelementptr inbounds %struct.cpp_token, ptr %108, i64 0, i32 1
  %110 = load i8, ptr %109, align 4
  %111 = icmp eq i8 %110, 72
  br i1 %111, label %143, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.cpp_token, ptr %108, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !76
  %115 = and i16 %114, 1
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %112
  %118 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %108) #22
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef %118, i32 noundef 1) #22
  br label %143

119:                                              ; preds = %82, %94, %100
  %120 = phi ptr [ %102, %100 ], [ %98, %94 ], [ %59, %82 ]
  %121 = tail call fastcc i32 @enter_macro_context(ptr noundef nonnull %0, ptr noundef nonnull %120, ptr noundef nonnull %47) #22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %119
  %124 = load i8, ptr %5, align 8, !tbaa !62
  %125 = icmp ne i8 %124, 0
  %126 = icmp eq i32 %121, 2
  %127 = or i1 %126, %125
  br i1 %127, label %54, label %128

128:                                              ; preds = %123
  %129 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %47) #22
  br label %143

130:                                              ; preds = %69
  %131 = getelementptr inbounds %struct.cpp_token, ptr %47, i64 0, i32 1
  %132 = getelementptr inbounds %struct.cpp_token, ptr %47, i64 0, i32 3
  %133 = getelementptr inbounds %struct.cpp_token, ptr %47, i64 0, i32 2
  %134 = tail call ptr @_cpp_temp_token(ptr noundef nonnull %0) #20
  %135 = load i8, ptr %131, align 4
  %136 = getelementptr inbounds %struct.cpp_token, ptr %134, i64 0, i32 1
  store i8 %135, ptr %136, align 4
  %137 = load i16, ptr %133, align 2, !tbaa !76
  %138 = or i16 %137, 32
  %139 = getelementptr inbounds %struct.cpp_token, ptr %134, i64 0, i32 2
  store i16 %138, ptr %139, align 2, !tbaa !76
  %140 = getelementptr inbounds %struct.cpp_token, ptr %134, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef nonnull align 8 dereferenceable(16) %132, i64 16, i1 false), !tbaa.struct !81
  br label %143

141:                                              ; preds = %43
  %142 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  br label %143

143:                                              ; preds = %55, %64, %57, %119, %86, %79, %141, %128, %41, %104, %107, %112, %117, %130
  %144 = phi ptr [ %134, %130 ], [ %47, %117 ], [ %47, %112 ], [ %47, %107 ], [ %47, %104 ], [ %42, %41 ], [ %129, %128 ], [ %142, %141 ], [ %47, %79 ], [ %47, %86 ], [ %47, %119 ], [ %47, %57 ], [ %47, %64 ], [ %47, %55 ]
  ret ptr %144
}

; Function Attrs: optsize
declare ptr @_cpp_lex_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paste_all_tokens(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 5
  %7 = getelementptr inbounds %struct.cpp_context, ptr %5, i64 0, i32 2
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i8, ptr %6, align 8, !tbaa !69
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr %7, align 8, !tbaa !5
  br i1 %10, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !5
  br label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %7, align 8, !tbaa !5
  %16 = load ptr, ptr %11, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %11, %12 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 72
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !76
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void @abort() #25
  unreachable

28:                                               ; preds = %22, %17
  %29 = call fastcc zeroext i8 @paste_tokens(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %18) #22, !range !82
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !76
  %34 = and i16 %33, 8
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %8, !llvm.loop !83

36:                                               ; preds = %28, %31
  %37 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @_cpp_push_token_context(ptr noundef %0, ptr noundef null, ptr noundef %37, i32 noundef 1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @padding_token(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @_cpp_temp_token(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  store i8 72, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  store i16 0, ptr %6, align 2, !tbaa !76
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @cpp_peek_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 0, ptr %5, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %7, align 1, !tbaa !85
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 8448
  %11 = icmp eq i16 %10, 256
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = or disjoint i16 %9, 8192
  store i16 %13, ptr %8, align 2
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !87
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
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %72, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %34 = load i8, ptr %33, align 8, !tbaa !79
  %35 = add i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %37 = load i32, ptr %36, align 4, !tbaa !88
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !88
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  store i8 1, ptr %39, align 1, !tbaa !89
  %40 = call fastcc ptr @funlike_invocation_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #22
  store i8 0, ptr %39, align 1, !tbaa !89
  %41 = load i32, ptr %36, align 4, !tbaa !88
  %42 = add i32 %41, -1
  store i32 %42, ptr %36, align 4, !tbaa !88
  %43 = load i8, ptr %33, align 8, !tbaa !79
  %44 = add i8 %43, -1
  store i8 %44, ptr %33, align 8, !tbaa !79
  %45 = icmp eq ptr %40, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %48 = load i8, ptr %47, align 1, !tbaa !90
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %26, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %51, i64 0, i32 5
  %53 = load i8, ptr %52, align 2
  %54 = and i8 %53, 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load ptr, ptr %1, align 8, !tbaa !31
  %58 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef %57) #20
  br label %59

59:                                               ; preds = %56, %50, %46
  %60 = load ptr, ptr %4, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %126, label %62

62:                                               ; preds = %59
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %60) #20
  br label %126

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 4
  %65 = load i16, ptr %64, align 8, !tbaa !67
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._cpp_buff, ptr %40, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !91
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
  %80 = load ptr, ptr %79, align 8, !tbaa !86
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !87
  tail call void %80(ptr noundef nonnull %0, i32 noundef %84, ptr noundef nonnull %1) #20
  br label %85

85:                                               ; preds = %77, %82, %72
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %87 = load ptr, ptr %86, align 8, !tbaa !93
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %2, align 8, !tbaa !77
  tail call void %87(ptr noundef nonnull %0, i32 noundef %90, ptr noundef nonnull %1) #20
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i8, ptr %28, align 2
  %93 = or i8 %92, 8
  store i8 %93, ptr %28, align 2
  %94 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 4
  %95 = load i16, ptr %94, align 8, !tbaa !67
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.cpp_macro, ptr %27, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = tail call fastcc i32 @macro_real_token_count(ptr noundef nonnull %27) #22
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %99, i32 noundef %100) #22
  br label %101

101:                                              ; preds = %97, %91
  %102 = load ptr, ptr %4, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %101
  %105 = load i8, ptr %6, align 8, !tbaa !62
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef %2) #22
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef %108, i32 noundef 1) #22
  %109 = load ptr, ptr %4, align 8, !tbaa !34
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi ptr [ %102, %104 ], [ %109, %107 ]
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi ptr [ %114, %112 ], [ %111, %110 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !94
  store ptr null, ptr %113, align 8, !tbaa !94
  %115 = load ptr, ptr %4, align 8, !tbaa !34
  %116 = getelementptr inbounds %struct._cpp_buff, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !91
  %118 = getelementptr inbounds %struct._cpp_buff, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !95
  %120 = ptrtoint ptr %119 to i64
  %121 = ptrtoint ptr %117 to i64
  %122 = sub i64 %120, %121
  %123 = lshr exact i64 %122, 3
  %124 = trunc i64 %123 to i32
  tail call fastcc void @push_ptoken_context(ptr noundef %0, ptr noundef null, ptr noundef %115, ptr noundef %117, i32 noundef %124) #22
  store ptr %114, ptr %4, align 8, !tbaa !34
  %125 = icmp eq ptr %114, null
  br i1 %125, label %126, label %112, !llvm.loop !96

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_get_token_with_location(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 13
  store i8 1, ptr %3, align 4, !tbaa !75
  %4 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 12
  %11 = select i1 %9, ptr %4, ptr %10
  %12 = load i32, ptr %11, align 8, !tbaa !47
  store i32 %12, ptr %1, align 4, !tbaa !47
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_sys_macro_p(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !5
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
define dso_local void @cpp_scan_nooutput(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 4
  store i8 %5, ptr %3, align 1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 10
  %7 = load i8, ptr %6, align 2, !tbaa !97
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 2, !tbaa !97
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !79
  %11 = add i8 %10, 1
  store i8 %11, ptr %9, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %13 = load i8, ptr %12, align 2, !tbaa !45
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1, %15
  %16 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef nonnull %0) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %15, !llvm.loop !98

18:                                               ; preds = %1, %18
  %19 = tail call ptr @cpp_get_token(ptr noundef nonnull %0) #22
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 22
  br i1 %22, label %23, label %18, !llvm.loop !99

23:                                               ; preds = %15, %18
  %24 = load i8, ptr %6, align 2, !tbaa !97
  %25 = add i8 %24, -1
  store i8 %25, ptr %6, align 2, !tbaa !97
  %26 = load i8, ptr %9, align 8, !tbaa !79
  %27 = add i8 %26, -1
  store i8 %27, ptr %9, align 8, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_read_logical_line_trad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_backup_tokens_direct(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %4 = load i32, ptr %3, align 8, !tbaa !100
  %5 = add i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !100
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %8, align 8, !tbaa !46
  %11 = load ptr, ptr %9, align 8, !tbaa !101
  br label %12

12:                                               ; preds = %7, %28
  %13 = phi ptr [ %11, %7 ], [ %29, %28 ]
  %14 = phi ptr [ %10, %7 ], [ %30, %28 ]
  %15 = phi i32 [ %1, %7 ], [ %16, %28 ]
  %16 = add i32 %15, -1
  %17 = getelementptr inbounds %struct.cpp_token, ptr %14, i64 -1
  %18 = getelementptr inbounds %struct.tokenrun, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tokenrun, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  store ptr %23, ptr %9, align 8, !tbaa !101
  %26 = getelementptr inbounds %struct.tokenrun, ptr %23, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !104
  br label %28

28:                                               ; preds = %25, %21, %12
  %29 = phi ptr [ %23, %25 ], [ %13, %21 ], [ %13, %12 ]
  %30 = phi ptr [ %27, %25 ], [ %17, %21 ], [ %17, %12 ]
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %32, label %12, !llvm.loop !105

32:                                               ; preds = %28
  store ptr %30, ptr %8, align 8, !tbaa !46
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_backup_tokens(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

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
  %14 = load i8, ptr %13, align 8, !tbaa !69
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  br i1 %15, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 -1
  store ptr %19, ptr %16, align 8, !tbaa !5
  br label %22

20:                                               ; preds = %12
  %21 = getelementptr inbounds ptr, ptr %17, i64 -1
  store ptr %21, ptr %16, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %18, %20, %8
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_cpp_free_definition(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.cpp_hashnode, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, -10560
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !31
  %10 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef %9) #20
  br label %62

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !67
  %23 = zext i16 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %20, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %12, i64 noundef 8) #20
  %28 = load ptr, ptr %12, align 8, !tbaa !106
  %29 = getelementptr inbounds %struct._cpp_buff, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = load i16, ptr %21, align 8, !tbaa !67
  %32 = zext i16 %31 to i64
  br label %33

33:                                               ; preds = %27, %11
  %34 = phi i64 [ %32, %27 ], [ %23, %11 ]
  %35 = phi i16 [ %31, %27 ], [ %22, %11 ]
  %36 = phi ptr [ %30, %27 ], [ %17, %11 ]
  %37 = add i16 %35, 1
  store i16 %37, ptr %21, align 8, !tbaa !67
  %38 = getelementptr inbounds ptr, ptr %36, i64 %34
  store ptr %2, ptr %38, align 8, !tbaa !34
  %39 = load i16, ptr %4, align 2
  %40 = or i16 %39, 4096
  store i16 %40, ptr %4, align 2
  %41 = load i16, ptr %21, align 8, !tbaa !67
  %42 = zext i16 %41 to i32
  %43 = shl nuw nsw i32 %42, 3
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  %45 = load i32, ptr %44, align 8, !tbaa !108
  %46 = icmp ugt i32 %43, %45
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %48 = load ptr, ptr %47, align 8, !tbaa !109
  br i1 %46, label %49, label %53

49:                                               ; preds = %33
  %50 = zext nneg i32 %43 to i64
  %51 = tail call ptr @xrealloc(ptr noundef %48, i64 noundef %50) #20
  store ptr %51, ptr %47, align 8, !tbaa !109
  store i32 %43, ptr %44, align 8, !tbaa !108
  %52 = load i16, ptr %21, align 8, !tbaa !67
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
  %61 = load i16, ptr %21, align 8, !tbaa !67
  store i16 %61, ptr %59, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %53, %8
  %63 = phi i8 [ 1, %8 ], [ 0, %53 ]
  ret i8 %63
}

; Function Attrs: optsize
declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.ht, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr %6(i64 noundef 32) #20
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr @_cpp_aligned_alloc(ptr noundef nonnull %0, i64 noundef 32) #20
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !27
  store ptr null, ptr %13, align 8, !tbaa !113
  %17 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 4
  store i16 0, ptr %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 5
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, -3
  store i8 %20, ptr %18, align 2
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %22 = load i8, ptr %21, align 2, !tbaa !114
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i8 8, i8 0
  %25 = and i8 %19, -11
  %26 = or disjoint i8 %24, %25
  %27 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 3
  store i32 0, ptr %27, align 4, !tbaa !115
  %28 = and i8 %26, -36
  store i8 %28, ptr %18, align 2
  %29 = load ptr, ptr %0, align 8, !tbaa !65
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.cpp_buffer, ptr %29, i64 0, i32 15
  %33 = load i8, ptr %32, align 2, !tbaa !66
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 0, i8 4
  br label %36

36:                                               ; preds = %31, %12
  %37 = phi i8 [ 0, %12 ], [ %35, %31 ]
  %38 = and i8 %26, -40
  %39 = or disjoint i8 %37, %38
  store i8 %39, ptr %18, align 2
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %41 = load i8, ptr %40, align 2, !tbaa !45
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call zeroext i8 @_cpp_create_trad_definition(ptr noundef nonnull %0, ptr noundef nonnull %13) #20
  br label %48

45:                                               ; preds = %36
  %46 = tail call fastcc zeroext i8 @create_iso_definition(ptr noundef nonnull %0, ptr noundef nonnull %13) #22, !range !82
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  store i8 0, ptr %47, align 2, !tbaa !116
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i8 [ %44, %43 ], [ %46, %45 ]
  %50 = load i16, ptr %17, align 8, !tbaa !67
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %54 = zext i16 %50 to i64
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %54, %52 ], [ %57, %55 ]
  %57 = add nsw i64 %56, -1
  %58 = load ptr, ptr %13, align 8, !tbaa !113
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.cpp_hashnode, ptr %60, i64 0, i32 3
  %62 = load i16, ptr %61, align 2
  %63 = and i16 %62, -4097
  store i16 %63, ptr %61, align 2
  %64 = getelementptr inbounds %struct.cpp_hashnode, ptr %60, i64 0, i32 4
  %65 = load ptr, ptr %53, align 8, !tbaa !109
  %66 = getelementptr inbounds %union._cpp_hashnode_value, ptr %65, i64 %57
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %64, align 8
  %68 = icmp eq i64 %57, 0
  br i1 %68, label %69, label %55, !llvm.loop !117

69:                                               ; preds = %55, %48
  %70 = icmp eq i8 %49, 0
  br i1 %70, label %127, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = and i16 %73, 63
  %75 = icmp eq i16 %74, 1
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load i8, ptr %21, align 2, !tbaa !114
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
  %85 = load i32, ptr %14, align 8, !tbaa !87
  %86 = load ptr, ptr %1, align 8, !tbaa !31
  %87 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %85, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %86) #20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load i16, ptr %72, align 2
  %91 = and i16 %90, 319
  %92 = icmp eq i16 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.cpp_macro, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !27
  %98 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 5, i32 noundef %97, i32 noundef 0, ptr noundef nonnull @.str.16) #20
  br label %99

99:                                               ; preds = %84, %89, %93, %81, %71
  %100 = load i16, ptr %72, align 2
  %101 = and i16 %100, 63
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %105, label %103

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
  store ptr %13, ptr %109, align 8, !tbaa !5
  %110 = load ptr, ptr %1, align 8, !tbaa !31
  %111 = tail call fastcc i32 @ustrncmp(ptr noundef %110) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %105
  %114 = tail call fastcc i32 @ustrcmp(ptr noundef %110, ptr noundef nonnull @.str.18) #22
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @ustrcmp(ptr noundef %110, ptr noundef nonnull @.str.19) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @ustrcmp(ptr noundef %110, ptr noundef nonnull @.str.20) #22
  %121 = icmp eq i32 %120, 0
  %122 = or i16 %107, 1025
  %123 = select i1 %121, i16 %108, i16 %122
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
define internal fastcc noundef zeroext i8 @create_iso_definition(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @_cpp_lex_token(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %40 [
    i8 20, label %6
    i8 22, label %70
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !76
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %6
  %12 = tail call fastcc zeroext i8 @parse_params(ptr noundef %0, ptr noundef %1) #22
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  store ptr %16, ptr %1, align 8, !tbaa !113
  %17 = icmp eq i8 %12, 0
  br i1 %17, label %233, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  %21 = getelementptr inbounds %struct.ht, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !111
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !67
  %26 = zext i16 %25 to i64
  br i1 %23, label %34, label %27

27:                                               ; preds = %18
  %28 = shl nuw nsw i64 %26, 3
  %29 = tail call ptr %22(i64 noundef %28) #20
  %30 = load ptr, ptr %1, align 8, !tbaa !113
  %31 = load i16, ptr %24, align 8, !tbaa !67
  %32 = zext i16 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %30, i64 %33, i1 false)
  store ptr %29, ptr %1, align 8, !tbaa !113
  br label %36

34:                                               ; preds = %18
  %35 = getelementptr inbounds ptr, ptr %16, i64 %26
  store ptr %35, ptr %15, align 8, !tbaa !95
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
  %43 = load i16, ptr %42, align 2, !tbaa !76
  %44 = add nsw i32 %41, -52
  br label %45

45:                                               ; preds = %40, %6
  %46 = phi i16 [ %43, %40 ], [ %8, %6 ]
  %47 = phi i32 [ %44, %40 ], [ -32, %6 ]
  %48 = and i16 %46, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %52 = load i8, ptr %51, align 1, !tbaa !118
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.40) #20
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
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = zext i8 %62 to i32
  %64 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.41, i32 %63, i64 29)
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, i32 2, i32 0
  br label %67

67:                                               ; preds = %59, %56, %58
  %68 = phi i32 [ 0, %56 ], [ 2, %58 ], [ %66, %59 ]
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef %68, ptr noundef nonnull @.str.42) #20
  br label %70

70:                                               ; preds = %2, %36, %45, %67, %54
  %71 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %72 = load i8, ptr %71, align 2
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @lex_expansion_token(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %79

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @alloc_expansion_token(ptr noundef %0, ptr noundef nonnull %1) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !119
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %76, %75 ], [ %78, %77 ]
  %81 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %82 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  br label %83

83:                                               ; preds = %162, %79
  %84 = phi i32 [ 0, %79 ], [ %163, %162 ]
  %85 = phi i8 [ 0, %79 ], [ %166, %162 ]
  %86 = phi ptr [ %80, %79 ], [ %167, %162 ]
  %87 = load i32, ptr %81, align 4, !tbaa !115
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %124

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.cpp_token, ptr %86, i64 -1
  %91 = getelementptr %struct.cpp_token, ptr %86, i64 -1, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 37
  br i1 %93, label %94, label %124

94:                                               ; preds = %89
  %95 = load i8, ptr %71, align 2
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %124, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.cpp_token, ptr %86, i64 0, i32 1
  %100 = load i8, ptr %99, align 4
  %101 = icmp eq i8 %100, 69
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cpp_token, ptr %86, i64 0, i32 2
  %104 = load i16, ptr %103, align 2, !tbaa !76
  %105 = shl i16 %104, 9
  %106 = and i16 %105, 512
  %107 = getelementptr %struct.cpp_token, ptr %86, i64 -1, i32 2
  %108 = load i16, ptr %107, align 2, !tbaa !76
  %109 = shl i16 %108, 7
  %110 = and i16 %109, 256
  %111 = or disjoint i16 %106, %110
  %112 = and i16 %104, -6
  %113 = or i16 %111, %112
  %114 = or disjoint i16 %113, 4
  %115 = and i16 %108, 1
  %116 = or disjoint i16 %115, %114
  store i16 %116, ptr %103, align 2, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(24) %86, i64 24, i1 false), !tbaa.struct !119
  %117 = load i32, ptr %81, align 4, !tbaa !115
  %118 = add i32 %117, -1
  store i32 %118, ptr %81, align 4, !tbaa !115
  br label %124

119:                                              ; preds = %98
  %120 = load i32, ptr %82, align 4, !tbaa !121
  %121 = icmp eq i32 %120, 9
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.43) #20
  br label %233

124:                                              ; preds = %102, %119, %94, %89, %83
  %125 = phi i32 [ %118, %102 ], [ %87, %119 ], [ %87, %94 ], [ %87, %89 ], [ %87, %83 ]
  %126 = getelementptr inbounds %struct.cpp_token, ptr %86, i64 0, i32 1
  %127 = load i8, ptr %126, align 4
  switch i8 %127, label %162 [
    i8 22, label %128
    i8 38, label %132
  ]

128:                                              ; preds = %124
  %129 = icmp eq i8 %85, 0
  br i1 %129, label %168, label %130

130:                                              ; preds = %128
  %131 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.39) #20
  br label %233

132:                                              ; preds = %124
  %133 = icmp eq i32 %125, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.39) #20
  br label %233

136:                                              ; preds = %132
  %137 = getelementptr %struct.cpp_token, ptr %86, i64 -1, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !76
  %139 = and i16 %138, 8
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load i8, ptr %71, align 2
  %143 = or i8 %142, 32
  store i8 %143, ptr %71, align 2
  %144 = add i32 %84, 1
  %145 = add i32 %125, -1
  %146 = getelementptr inbounds %struct.cpp_token, ptr %86, i64 0, i32 3
  store i32 %145, ptr %146, align 8, !tbaa !5
  br label %162

147:                                              ; preds = %136
  %148 = add i32 %125, -1
  store i32 %148, ptr %81, align 4, !tbaa !115
  %149 = or disjoint i16 %138, 8
  store i16 %149, ptr %137, align 2, !tbaa !76
  %150 = getelementptr inbounds %struct.cpp_token, ptr %86, i64 0, i32 2
  %151 = load i16, ptr %150, align 2, !tbaa !76
  %152 = and i16 %151, 3
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %147
  %155 = and i16 %151, 2
  %156 = icmp eq i16 %155, 0
  %157 = or i16 %138, 264
  %158 = select i1 %156, i16 %149, i16 %157
  %159 = shl i16 %151, 9
  %160 = and i16 %159, 512
  %161 = or i16 %158, %160
  store i16 %161, ptr %137, align 2, !tbaa !76
  br label %162

162:                                              ; preds = %154, %147, %124, %141
  %163 = phi i32 [ %144, %141 ], [ %84, %124 ], [ %84, %147 ], [ %84, %154 ]
  %164 = load i8, ptr %126, align 4
  %165 = icmp eq i8 %164, 38
  %166 = zext i1 %165 to i8
  %167 = tail call fastcc ptr @lex_expansion_token(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %83

168:                                              ; preds = %128
  %169 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !106
  %171 = getelementptr inbounds %struct._cpp_buff, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !95
  %173 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !5
  %174 = load i8, ptr %71, align 2
  %175 = and i8 %174, -17
  store i8 %175, ptr %71, align 2
  %176 = add i32 %125, -1
  store i32 %176, ptr %81, align 4, !tbaa !115
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.cpp_token, ptr %172, i64 0, i32 2
  %180 = load i16, ptr %179, align 2, !tbaa !76
  %181 = and i16 %180, -2
  store i16 %181, ptr %179, align 2, !tbaa !76
  br label %182

182:                                              ; preds = %178, %168
  %183 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %184 = load ptr, ptr %183, align 8, !tbaa !110
  %185 = getelementptr inbounds %struct.ht, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !111
  %187 = icmp eq ptr %186, null
  br i1 %187, label %227, label %188

188:                                              ; preds = %182
  %189 = zext i32 %176 to i64
  %190 = mul nuw nsw i64 %189, 24
  %191 = tail call ptr %186(i64 noundef %190) #20
  %192 = icmp eq i32 %84, 0
  br i1 %192, label %221, label %193

193:                                              ; preds = %188
  %194 = load i32, ptr %81, align 4, !tbaa !115
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %226, label %196

196:                                              ; preds = %193
  %197 = zext i32 %194 to i64
  %198 = getelementptr inbounds %struct.cpp_token, ptr %191, i64 %197
  %199 = zext i32 %84 to i64
  %200 = sub nsw i64 0, %199
  %201 = getelementptr inbounds %struct.cpp_token, ptr %198, i64 %200
  br label %202

202:                                              ; preds = %196, %202
  %203 = phi i64 [ 0, %196 ], [ %217, %202 ]
  %204 = phi ptr [ %201, %196 ], [ %216, %202 ]
  %205 = phi ptr [ %191, %196 ], [ %213, %202 ]
  %206 = load ptr, ptr %173, align 8, !tbaa !5
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
  %218 = load i32, ptr %81, align 4, !tbaa !115
  %219 = zext i32 %218 to i64
  %220 = icmp ult i64 %217, %219
  br i1 %220, label %202, label %226, !llvm.loop !122

221:                                              ; preds = %188
  %222 = load ptr, ptr %173, align 8, !tbaa !5
  %223 = load i32, ptr %81, align 4, !tbaa !115
  %224 = zext i32 %223 to i64
  %225 = mul nuw nsw i64 %224, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %191, ptr align 8 %222, i64 %225, i1 false)
  br label %226

226:                                              ; preds = %202, %193, %221
  store ptr %191, ptr %173, align 8, !tbaa !5
  br label %233

227:                                              ; preds = %182
  %228 = load ptr, ptr %173, align 8, !tbaa !5
  %229 = zext i32 %176 to i64
  %230 = getelementptr inbounds %struct.cpp_token, ptr %228, i64 %229
  %231 = load ptr, ptr %169, align 8, !tbaa !106
  %232 = getelementptr inbounds %struct._cpp_buff, ptr %231, i64 0, i32 2
  store ptr %230, ptr %232, align 8, !tbaa !95
  br label %233

233:                                              ; preds = %11, %226, %227, %134, %130, %122
  %234 = phi i8 [ 0, %130 ], [ 0, %134 ], [ 0, %122 ], [ 1, %227 ], [ 1, %226 ], [ 0, %11 ]
  ret i8 %234
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @warn_of_redefinition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !67
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
  %32 = load ptr, ptr %15, align 8, !tbaa !113
  %33 = load ptr, ptr %2, align 8, !tbaa !113
  %34 = zext i16 %17 to i64
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %34
  br i1 %37, label %45, label %38, !llvm.loop !123

38:                                               ; preds = %31, %35
  %39 = phi i64 [ 0, %31 ], [ %36, %35 ]
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = getelementptr inbounds ptr, ptr %33, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %35, label %75

45:                                               ; preds = %35, %29
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %47 = load i8, ptr %46, align 2, !tbaa !45
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call zeroext i8 @_cpp_expansions_different_trad(ptr noundef nonnull %15, ptr noundef nonnull %2) #20
  br label %75

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !115
  %54 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !115
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
  %64 = load i32, ptr %52, align 4, !tbaa !115
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %75, !llvm.loop !124

67:                                               ; preds = %60, %62
  %68 = phi i64 [ 0, %60 ], [ %63, %62 ]
  %69 = load ptr, ptr %58, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 %68
  %71 = load ptr, ptr %61, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.cpp_token, ptr %71, i64 %68
  %73 = tail call i32 @_cpp_equiv_tokens(ptr noundef %70, ptr noundef %72) #20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %62

75:                                               ; preds = %38, %67, %62, %57, %51, %13, %21, %10, %3, %49
  %76 = phi i8 [ %50, %49 ], [ 1, %3 ], [ 0, %10 ], [ 1, %21 ], [ 1, %13 ], [ 1, %51 ], [ 0, %57 ], [ 1, %67 ], [ 0, %62 ], [ 1, %38 ]
  ret i8 %76
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrncmp(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.17, i64 noundef 7) #21
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #21
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_macro_definition(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 319
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = and i16 %6, 63
  %11 = zext nneg i16 %10 to i32
  %12 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %11) #20
  br label %245

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !125
  %16 = add i32 %15, 2
  %17 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 5
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %13
  %22 = add i32 %15, 6
  %23 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !67
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 8, !tbaa !113
  %28 = zext i16 %24 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %38, %29 ]
  %31 = phi i32 [ %22, %26 ], [ %37, %29 ]
  %32 = getelementptr inbounds ptr, ptr %27, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.ht_identifier, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !125
  %36 = add i32 %31, 1
  %37 = add i32 %36, %35
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %28
  br i1 %39, label %40, label %29, !llvm.loop !126

40:                                               ; preds = %29, %21, %13
  %41 = phi i32 [ %16, %13 ], [ %22, %21 ], [ %37, %29 ]
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %43 = load i8, ptr %42, align 2, !tbaa !45
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
  %58 = load ptr, ptr %53, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 69
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 8, !tbaa !113
  %64 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !5
  %66 = add i32 %65, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %63, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.ht_identifier, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !125
  br label %75

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56
  %74 = tail call i32 @cpp_token_len(ptr noundef %73) #20
  br label %75

75:                                               ; preds = %72, %62
  %76 = phi i32 [ %71, %62 ], [ %74, %72 ]
  %77 = add i32 %76, %57
  %78 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %56, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !76
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
  br i1 %92, label %93, label %55, !llvm.loop !127

93:                                               ; preds = %75, %49, %45
  %94 = phi i32 [ %48, %45 ], [ %41, %49 ], [ %90, %75 ]
  %95 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  %96 = load i32, ptr %95, align 8, !tbaa !108
  %97 = icmp ugt i32 %94, %96
  %98 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %99 = load ptr, ptr %98, align 8, !tbaa !109
  br i1 %97, label %100, label %103

100:                                              ; preds = %93
  %101 = zext i32 %94 to i64
  %102 = tail call ptr @xrealloc(ptr noundef %99, i64 noundef %101) #20
  store ptr %102, ptr %98, align 8, !tbaa !109
  store i32 %94, ptr %95, align 8, !tbaa !108
  br label %103

103:                                              ; preds = %93, %100
  %104 = phi ptr [ %102, %100 ], [ %99, %93 ]
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %106 = load ptr, ptr %1, align 8, !tbaa !31
  %107 = load i32, ptr %14, align 8, !tbaa !125
  %108 = zext i32 %107 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %106, i64 %108, i1 false)
  %109 = load i32, ptr %14, align 8, !tbaa !125
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %104, i64 %110
  %112 = load i8, ptr %17, align 2
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %164, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 40, ptr %111, align 1, !tbaa !5
  %117 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 4
  %118 = load i16, ptr %117, align 8, !tbaa !67
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %161, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  br label %122

122:                                              ; preds = %120, %156
  %123 = phi i16 [ %118, %120 ], [ %158, %156 ]
  %124 = phi i64 [ 0, %120 ], [ %143, %156 ]
  %125 = phi ptr [ %116, %120 ], [ %157, %156 ]
  %126 = load ptr, ptr %4, align 8, !tbaa !113
  %127 = getelementptr inbounds ptr, ptr %126, i64 %124
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = load ptr, ptr %121, align 8, !tbaa !128
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %122
  %132 = load ptr, ptr %128, align 8, !tbaa !31
  %133 = getelementptr inbounds %struct.ht_identifier, ptr %128, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !125
  %135 = zext i32 %134 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %132, i64 %135, i1 false)
  %136 = load i32, ptr %133, align 8, !tbaa !125
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %125, i64 %137
  %139 = load i16, ptr %117, align 8, !tbaa !67
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
  store i8 44, ptr %142, align 1, !tbaa !5
  br label %156

148:                                              ; preds = %140
  %149 = load i8, ptr %17, align 2
  %150 = and i8 %149, 2
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, ptr %142, i64 1
  store i8 46, ptr %142, align 1, !tbaa !5
  %154 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 46, ptr %153, align 1, !tbaa !5
  %155 = getelementptr inbounds i8, ptr %142, i64 3
  store i8 46, ptr %154, align 1, !tbaa !5
  br label %156

156:                                              ; preds = %148, %152, %146
  %157 = phi ptr [ %147, %146 ], [ %155, %152 ], [ %142, %148 ]
  %158 = load i16, ptr %117, align 8, !tbaa !67
  %159 = zext i16 %158 to i64
  %160 = icmp ult i64 %143, %159
  br i1 %160, label %122, label %161, !llvm.loop !129

161:                                              ; preds = %156, %115
  %162 = phi ptr [ %116, %115 ], [ %157, %156 ]
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  store i8 41, ptr %162, align 1, !tbaa !5
  br label %164

164:                                              ; preds = %161, %103
  %165 = phi ptr [ %163, %161 ], [ %111, %103 ]
  %166 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 32, ptr %165, align 1, !tbaa !5
  %167 = load i8, ptr %42, align 2, !tbaa !45
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = tail call ptr @_cpp_copy_replacement_text(ptr noundef nonnull %4, ptr noundef nonnull %166) #20
  br label %242

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !115
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
  %184 = load ptr, ptr %179, align 8, !tbaa !5
  %185 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182
  %186 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182, i32 2
  %187 = load i16, ptr %186, align 2, !tbaa !76
  %188 = and i16 %187, 1
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 32, ptr %183, align 1, !tbaa !5
  %192 = load i16, ptr %186, align 2, !tbaa !76
  br label %193

193:                                              ; preds = %190, %181
  %194 = phi i16 [ %192, %190 ], [ %187, %181 ]
  %195 = phi ptr [ %191, %190 ], [ %183, %181 ]
  %196 = and i16 %194, 4
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 35, ptr %195, align 1, !tbaa !5
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %195, %193 ]
  %202 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182, i32 1
  %203 = load i8, ptr %202, align 4
  %204 = icmp eq i8 %203, 69
  br i1 %204, label %205, label %227

205:                                              ; preds = %200
  %206 = load ptr, ptr %4, align 8, !tbaa !113
  %207 = getelementptr inbounds %struct.cpp_token, ptr %184, i64 %182, i32 3
  %208 = load i32, ptr %207, align 8, !tbaa !5
  %209 = add i32 %208, -1
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %206, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !34
  %213 = load ptr, ptr %212, align 8, !tbaa !31
  %214 = getelementptr inbounds %struct.ht_identifier, ptr %212, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !125
  %216 = zext i32 %215 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %201, ptr align 1 %213, i64 %216, i1 false)
  %217 = load ptr, ptr %4, align 8, !tbaa !113
  %218 = load i32, ptr %207, align 8, !tbaa !5
  %219 = add i32 %218, -1
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %217, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !34
  %223 = getelementptr inbounds %struct.ht_identifier, ptr %222, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !125
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %201, i64 %225
  br label %229

227:                                              ; preds = %200
  %228 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef nonnull %185, ptr noundef %201, i8 noundef zeroext 0) #20
  br label %229

229:                                              ; preds = %227, %205
  %230 = phi ptr [ %226, %205 ], [ %228, %227 ]
  %231 = load i16, ptr %186, align 2, !tbaa !76
  %232 = and i16 %231, 8
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds i8, ptr %230, i64 1
  store i8 32, ptr %230, align 1, !tbaa !5
  %236 = getelementptr inbounds i8, ptr %230, i64 2
  store i8 35, ptr %235, align 1, !tbaa !5
  %237 = getelementptr inbounds i8, ptr %230, i64 3
  store i8 35, ptr %236, align 1, !tbaa !5
  br label %238

238:                                              ; preds = %234, %229
  %239 = phi ptr [ %237, %234 ], [ %230, %229 ]
  %240 = add nuw nsw i64 %182, 1
  %241 = icmp eq i64 %240, %180
  br i1 %241, label %242, label %181, !llvm.loop !130

242:                                              ; preds = %238, %175, %171, %169
  %243 = phi ptr [ %170, %169 ], [ %166, %171 ], [ %166, %175 ], [ %239, %238 ]
  store i8 0, ptr %243, align 1, !tbaa !5
  %244 = load ptr, ptr %105, align 8, !tbaa !109
  br label %245

245:                                              ; preds = %242, %9
  %246 = phi ptr [ null, %9 ], [ %244, %242 ]
  ret ptr %246
}

; Function Attrs: optsize
declare i64 @_cpp_replacement_text_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @macro_real_token_count(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !115
  br i1 %5, label %23, label %8

8:                                                ; preds = %1
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
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
  br i1 %21, label %22, label %13, !llvm.loop !131

22:                                               ; preds = %19, %8
  tail call void @abort() #25
  unreachable

23:                                               ; preds = %13, %1
  %24 = phi i32 [ %7, %1 ], [ %14, %13 ]
  ret i32 %24
}

; Function Attrs: optsize
declare i32 @cpp_token_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_cpp_copy_replacement_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @paste_tokens(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @cpp_token_len(ptr noundef %4) #20
  %6 = tail call i32 @cpp_token_len(ptr noundef %2) #20
  %7 = add i32 %5, 1
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  %11 = load ptr, ptr %1, align 8, !tbaa !34
  %12 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %10, i8 noundef zeroext 0) #20
  %13 = load ptr, ptr %1, align 8, !tbaa !34
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
  store i8 32, ptr %12, align 1, !tbaa !5
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
  store i8 10, ptr %31, align 1, !tbaa !5
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %10 to i64
  %34 = sub i64 %32, %33
  %35 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %10, i64 noundef %34, i32 noundef 1) #20
  call void @_cpp_clean_line(ptr noundef %0) #20
  %36 = call ptr @_cpp_temp_token(ptr noundef %0) #20
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %36, ptr %37, align 8, !tbaa !46
  %38 = call ptr @_cpp_lex_direct(ptr noundef %0) #20
  %39 = load ptr, ptr %0, align 8, !tbaa !65
  %40 = load ptr, ptr %39, align 8, !tbaa !132
  %41 = getelementptr inbounds %struct.cpp_buffer, ptr %39, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !133
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %30
  %45 = load i32, ptr %38, align 8, !tbaa !77
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1) #22
  store i8 0, ptr %12, align 1, !tbaa !5
  %46 = load ptr, ptr %1, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !tbaa.struct !119
  store ptr %38, ptr %1, align 8, !tbaa !34
  store i32 %45, ptr %38, align 8, !tbaa !77
  %47 = getelementptr inbounds %struct.cpp_token, ptr %38, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !76
  %49 = and i16 %48, -9
  store i16 %49, ptr %47, align 2, !tbaa !76
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !121
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %55 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.34, ptr noundef nonnull %10, ptr noundef %54) #20
  br label %57

56:                                               ; preds = %30
  store ptr %38, ptr %1, align 8, !tbaa !34
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #20
  br label %57

57:                                               ; preds = %44, %53, %56
  %58 = phi i8 [ 1, %56 ], [ 0, %53 ], [ 0, %44 ]
  ret i8 %58
}

; Function Attrs: optsize
declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_cpp_lex_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @funlike_invocation_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
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
  %14 = load i16, ptr %7, align 2, !tbaa !76
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13
  br label %8

22:                                               ; preds = %17, %12
  br label %4

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  store i8 2, ptr %24, align 1, !tbaa !89
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
define internal fastcc void @replace_args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc i32 @macro_real_token_count(ptr noundef %2) #22
  %6 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
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
  %20 = load i32, ptr %19, align 8, !tbaa !5
  %21 = add i32 %20, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22
  %24 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !76
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @stringify_arg(ptr noundef %0, ptr noundef nonnull %23) #22
  store ptr %34, ptr %30, align 8, !tbaa !134
  br label %61

35:                                               ; preds = %17
  %36 = and i32 %26, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 8, !tbaa !5
  %40 = icmp ugt ptr %13, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = getelementptr %struct.cpp_token, ptr %13, i64 -1, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !76
  %44 = and i16 %43, 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41, %35
  %47 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !136
  %49 = add i32 %12, 1
  %50 = add i32 %49, %48
  br label %61

51:                                               ; preds = %41, %38
  %52 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !137
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call fastcc void @expand_arg(ptr noundef %0, ptr noundef nonnull %23) #22
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %22, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !138
  %59 = add i32 %12, 1
  %60 = add i32 %59, %58
  br label %61

61:                                               ; preds = %11, %46, %56, %29, %33
  %62 = phi i32 [ %18, %29 ], [ %18, %33 ], [ %50, %46 ], [ %60, %56 ], [ %12, %11 ]
  %63 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 1
  %64 = icmp ult ptr %63, %9
  br i1 %64, label %11, label %65, !llvm.loop !139

65:                                               ; preds = %61
  %66 = zext i32 %62 to i64
  %67 = shl nuw nsw i64 %66, 3
  br label %68

68:                                               ; preds = %65, %4
  %69 = phi i64 [ 0, %4 ], [ %67, %65 ]
  %70 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %69) #20
  %71 = getelementptr inbounds %struct._cpp_buff, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  %73 = load ptr, ptr %6, align 8, !tbaa !5
  %74 = icmp ult ptr %73, %9
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 5
  %77 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 4
  %78 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %82 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  br label %88

83:                                               ; preds = %236, %68
  %84 = phi ptr [ %72, %68 ], [ %237, %236 ]
  %85 = getelementptr inbounds %struct.cpp_macro, ptr %2, i64 0, i32 4
  %86 = load i16, ptr %85, align 8, !tbaa !67
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %253, label %240

88:                                               ; preds = %75, %236
  %89 = phi ptr [ %73, %75 ], [ %238, %236 ]
  %90 = phi ptr [ %72, %75 ], [ %237, %236 ]
  %91 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 69
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds ptr, ptr %90, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !34
  br label %236

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !5
  %99 = add i32 %98, -1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %100
  %102 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 2
  %103 = load i16, ptr %102, align 2, !tbaa !76
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %100, i32 2
  br label %155

109:                                              ; preds = %96
  %110 = and i32 %104, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %100, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !136
  %115 = load ptr, ptr %101, align 8, !tbaa !140
  br label %155

116:                                              ; preds = %109
  %117 = load ptr, ptr %6, align 8, !tbaa !5
  %118 = icmp eq ptr %89, %117
  br i1 %118, label %150, label %119

119:                                              ; preds = %116
  %120 = getelementptr %struct.cpp_token, ptr %89, i64 -1, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !76
  %122 = and i16 %121, 8
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %150, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %100, i32 3
  %126 = load i32, ptr %125, align 8, !tbaa !136
  %127 = load ptr, ptr %101, align 8, !tbaa !140
  %128 = icmp eq ptr %90, %72
  br i1 %128, label %155, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds ptr, ptr %90, i64 -1
  %131 = load ptr, ptr %130, align 8, !tbaa !34
  %132 = getelementptr inbounds %struct.cpp_token, ptr %131, i64 0, i32 1
  %133 = load i8, ptr %132, align 4
  %134 = icmp eq i8 %133, 19
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load i8, ptr %76, align 2
  %137 = and i8 %136, 2
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i16, ptr %77, align 8, !tbaa !67
  %141 = zext i16 %140 to i32
  %142 = icmp eq i32 %98, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = icmp eq ptr %127, null
  %145 = select i1 %144, ptr %130, ptr %90
  %146 = select i1 %144, ptr null, ptr %130
  br label %155

147:                                              ; preds = %139, %135, %129
  %148 = icmp eq i32 %126, 0
  %149 = select i1 %148, ptr %130, ptr null
  br label %155

150:                                              ; preds = %119, %116
  %151 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %100, i32 4
  %152 = load i32, ptr %151, align 4, !tbaa !138
  %153 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %100, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !137
  br label %155

155:                                              ; preds = %147, %143, %112, %124, %150, %107
  %156 = phi ptr [ %90, %107 ], [ %90, %112 ], [ %72, %124 ], [ %90, %150 ], [ %145, %143 ], [ %90, %147 ]
  %157 = phi i32 [ 1, %107 ], [ %114, %112 ], [ %126, %124 ], [ %152, %150 ], [ %126, %143 ], [ %126, %147 ]
  %158 = phi ptr [ %108, %107 ], [ %115, %112 ], [ %127, %124 ], [ %154, %150 ], [ %127, %143 ], [ %127, %147 ]
  %159 = phi ptr [ null, %107 ], [ null, %112 ], [ null, %124 ], [ null, %150 ], [ %146, %143 ], [ %149, %147 ]
  %160 = load i8, ptr %78, align 8, !tbaa !62
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load i8, ptr %79, align 1, !tbaa !141
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %162, %155
  %166 = load ptr, ptr %6, align 8, !tbaa !5
  %167 = icmp eq ptr %89, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  %169 = getelementptr %struct.cpp_token, ptr %89, i64 -1, i32 2
  %170 = load i16, ptr %169, align 2, !tbaa !76
  %171 = and i16 %170, 8
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = tail call fastcc ptr @padding_token(ptr noundef nonnull %0, ptr noundef nonnull %89) #22
  %175 = getelementptr inbounds ptr, ptr %156, i64 1
  store ptr %174, ptr %156, align 8, !tbaa !34
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
  %183 = load i16, ptr %102, align 2, !tbaa !76
  %184 = and i16 %183, 8
  %185 = icmp eq i16 %184, 0
  %186 = getelementptr inbounds ptr, ptr %182, i64 -1
  %187 = select i1 %185, ptr %159, ptr %186
  br label %205

188:                                              ; preds = %176
  %189 = load i8, ptr %80, align 1, !tbaa !68
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %188
  %192 = load i8, ptr %76, align 2
  %193 = and i8 %192, 4
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i8, ptr %81, align 1, !tbaa !118
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = tail call fastcc i32 @cpp_in_system_header(ptr noundef nonnull %0) #22, !range !50
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load ptr, ptr %1, align 8, !tbaa !31
  %203 = load i32, ptr %97, align 8, !tbaa !5
  %204 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %202, i32 noundef %203) #20
  br label %205

205:                                              ; preds = %179, %188, %191, %195, %198, %201
  %206 = phi ptr [ %177, %191 ], [ %177, %195 ], [ %177, %198 ], [ %177, %201 ], [ %177, %188 ], [ %182, %179 ]
  %207 = phi ptr [ %159, %191 ], [ %159, %195 ], [ %159, %198 ], [ %159, %201 ], [ %159, %188 ], [ %187, %179 ]
  %208 = load i8, ptr %78, align 8, !tbaa !62
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i16, ptr %102, align 2, !tbaa !76
  %212 = and i16 %211, 8
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = getelementptr inbounds ptr, ptr %206, i64 1
  store ptr %82, ptr %206, align 8, !tbaa !34
  br label %216

216:                                              ; preds = %214, %210, %205
  %217 = phi ptr [ %206, %205 ], [ %206, %210 ], [ %215, %214 ]
  %218 = icmp eq ptr %207, null
  br i1 %218, label %236, label %219

219:                                              ; preds = %216
  %220 = tail call ptr @_cpp_temp_token(ptr noundef nonnull %0) #20
  %221 = load ptr, ptr %207, align 8, !tbaa !34
  %222 = getelementptr inbounds %struct.cpp_token, ptr %221, i64 0, i32 1
  %223 = load i8, ptr %222, align 4
  %224 = getelementptr inbounds %struct.cpp_token, ptr %220, i64 0, i32 1
  store i8 %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.cpp_token, ptr %220, i64 0, i32 3
  %226 = load ptr, ptr %207, align 8, !tbaa !34
  %227 = getelementptr inbounds %struct.cpp_token, ptr %226, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %225, ptr noundef nonnull align 8 dereferenceable(16) %227, i64 16, i1 false), !tbaa.struct !81
  %228 = load i16, ptr %102, align 2, !tbaa !76
  %229 = and i16 %228, 8
  %230 = load ptr, ptr %207, align 8, !tbaa !34
  %231 = getelementptr inbounds %struct.cpp_token, ptr %230, i64 0, i32 2
  %232 = load i16, ptr %231, align 2, !tbaa !76
  %233 = and i16 %232, -9
  %234 = or disjoint i16 %233, %229
  %235 = getelementptr inbounds %struct.cpp_token, ptr %220, i64 0, i32 2
  store i16 %234, ptr %235, align 2
  store ptr %220, ptr %207, align 8, !tbaa !34
  br label %236

236:                                              ; preds = %216, %219, %94
  %237 = phi ptr [ %95, %94 ], [ %217, %219 ], [ %217, %216 ]
  %238 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 1
  %239 = icmp ult ptr %238, %9
  br i1 %239, label %88, label %83, !llvm.loop !142

240:                                              ; preds = %83, %248
  %241 = phi i16 [ %249, %248 ], [ %86, %83 ]
  %242 = phi i64 [ %250, %248 ], [ 0, %83 ]
  %243 = getelementptr inbounds %struct.macro_arg, ptr %3, i64 %242, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !137
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %240
  tail call void @free(ptr noundef nonnull %244) #20
  %247 = load i16, ptr %85, align 8, !tbaa !67
  br label %248

248:                                              ; preds = %240, %246
  %249 = phi i16 [ %241, %240 ], [ %247, %246 ]
  %250 = add nuw nsw i64 %242, 1
  %251 = zext i16 %249 to i64
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %240, label %253, !llvm.loop !143

253:                                              ; preds = %248, %83
  %254 = ptrtoint ptr %84 to i64
  %255 = ptrtoint ptr %72 to i64
  %256 = sub i64 %254, %255
  %257 = lshr exact i64 %256, 3
  %258 = trunc i64 %257 to i32
  tail call fastcc void @push_ptoken_context(ptr noundef %0, ptr noundef %1, ptr noundef %70, ptr noundef %72, i32 noundef %258) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_ptoken_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc ptr @next_context(ptr noundef %0) #22
  %7 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 5
  store i8 0, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 4
  store ptr %1, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 3
  store ptr %2, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !5
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds ptr, ptr %3, i64 %11
  %13 = getelementptr inbounds %struct.cpp_context, ptr %6, i64 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @builtin_macro(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !62
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
  store i8 10, ptr %17, align 1, !tbaa !5
  %18 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %16, i64 noundef %14, i32 noundef 1) #20
  call void @_cpp_clean_line(ptr noundef %0) #20
  %19 = call ptr @_cpp_temp_token(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %19, ptr %20, align 8, !tbaa !46
  %21 = call ptr @_cpp_lex_direct(ptr noundef %0) #20
  call void @_cpp_push_token_context(ptr noundef %0, ptr noundef null, ptr noundef %21, i32 noundef 1) #22
  %22 = load ptr, ptr %0, align 8, !tbaa !65
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load ptr, ptr %1, align 8, !tbaa !31
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
define internal fastcc ptr @collect_args(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.cpp_macro, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !67
  %8 = tail call i16 @llvm.umax.i16(i16 %7, i16 1)
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, 432
  %11 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %10) #20
  %12 = getelementptr inbounds %struct._cpp_buff, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = shl nuw nsw i64 %9, 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %14, i1 false)
  %15 = getelementptr inbounds %struct.macro_arg, ptr %13, i64 %9
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %11, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !95
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
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  store ptr %27, ptr %22, align 8, !tbaa !140
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
  %39 = load ptr, ptr %22, align 8, !tbaa !140
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  %41 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !107
  %43 = icmp ugt ptr %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = tail call ptr @_cpp_append_extend_buff(ptr noundef %0, ptr noundef nonnull %38, i64 noundef 8000) #20
  %46 = getelementptr inbounds %struct._cpp_buff, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  store ptr %47, ptr %22, align 8, !tbaa !140
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
  %67 = load i16, ptr %6, align 8, !tbaa !67
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %25, %68
  br i1 %69, label %121, label %127

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 0, i32 2
  %72 = load i16, ptr %71, align 2, !tbaa !76
  %73 = and i16 %72, 64
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %121, label %127

75:                                               ; preds = %48
  %76 = tail call ptr @_cpp_temp_token(ptr noundef %0) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false), !tbaa.struct !119
  br label %77

77:                                               ; preds = %111, %75
  %78 = phi ptr [ %76, %75 ], [ %112, %111 ]
  %79 = load ptr, ptr %2, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct._cpp_buff, ptr %79, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !107
  %84 = getelementptr inbounds %struct._cpp_buff, ptr %79, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !95
  %86 = ptrtoint ptr %83 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %92, label %100

90:                                               ; preds = %77
  %91 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef 256) #20
  store ptr %91, ptr %2, align 8, !tbaa !34
  br label %100

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct._cpp_buff, ptr %79, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !91
  %95 = ptrtoint ptr %94 to i64
  %96 = sub i64 %87, %95
  %97 = shl nsw i64 %96, 1
  %98 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %97) #20
  store ptr %98, ptr %2, align 8, !tbaa !34
  store ptr %79, ptr %98, align 8, !tbaa !94
  %99 = load ptr, ptr %2, align 8, !tbaa !34
  br label %100

100:                                              ; preds = %90, %92, %81
  %101 = phi ptr [ %91, %90 ], [ %99, %92 ], [ %79, %81 ]
  %102 = getelementptr inbounds %struct._cpp_buff, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !95
  store ptr %78, ptr %103, align 8, !tbaa !34
  %104 = load ptr, ptr %2, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct._cpp_buff, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !95
  %107 = getelementptr inbounds i8, ptr %106, i64 8
  store ptr %107, ptr %105, align 8, !tbaa !95
  %108 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 0, i32 1
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %109, 71
  br i1 %110, label %116, label %111

111:                                              ; preds = %100
  %112 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %113 = getelementptr inbounds %struct.cpp_token, ptr %112, i64 0, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = icmp eq i8 %114, 22
  br i1 %115, label %116, label %77, !llvm.loop !144

116:                                              ; preds = %100, %111
  %117 = phi ptr [ %78, %100 ], [ %112, %111 ]
  store i8 2, ptr %17, align 1, !tbaa !89
  store i8 1, ptr %18, align 8, !tbaa !79
  %118 = getelementptr inbounds %struct.cpp_token, ptr %117, i64 0, i32 1
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 22
  br i1 %120, label %127, label %37

121:                                              ; preds = %53, %48, %70, %55, %66, %60, %57
  %122 = phi i32 [ %56, %55 ], [ %58, %57 ], [ 0, %66 ], [ %29, %60 ], [ %29, %70 ], [ %29, %48 ], [ %29, %53 ]
  %123 = load ptr, ptr %22, align 8, !tbaa !140
  %124 = add i32 %33, 1
  %125 = zext i32 %33 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  store ptr %50, ptr %126, align 8, !tbaa !34
  br label %28

127:                                              ; preds = %70, %62, %66, %57, %48, %116
  %128 = phi ptr [ %50, %48 ], [ %117, %116 ], [ %50, %57 ], [ %50, %66 ], [ %50, %62 ], [ %50, %70 ]
  %129 = zext i32 %33 to i64
  %130 = load ptr, ptr %22, align 8, !tbaa !140
  br label %131

131:                                              ; preds = %134, %127
  %132 = phi i64 [ %135, %134 ], [ %129, %127 ]
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = add nsw i64 %132, -1
  %136 = getelementptr inbounds ptr, ptr %130, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = getelementptr inbounds %struct.cpp_token, ptr %137, i64 0, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 72
  br i1 %140, label %131, label %141, !llvm.loop !145

141:                                              ; preds = %134
  %142 = trunc i64 %132 to i32
  br label %143

143:                                              ; preds = %131, %141
  %144 = phi i32 [ %142, %141 ], [ 0, %131 ]
  %145 = getelementptr inbounds %struct.macro_arg, ptr %22, i64 0, i32 3
  store i32 %144, ptr %145, align 8, !tbaa !136
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds ptr, ptr %130, i64 %146
  store ptr %20, ptr %147, align 8, !tbaa !34
  %148 = load i16, ptr %6, align 8, !tbaa !67
  %149 = zext i16 %148 to i32
  %150 = icmp ugt i32 %25, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %143
  %152 = load ptr, ptr %22, align 8, !tbaa !140
  %153 = add i32 %144, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = getelementptr inbounds %struct._cpp_buff, ptr %49, i64 0, i32 2
  store ptr %155, ptr %156, align 8, !tbaa !95
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
  %170 = load ptr, ptr %169, align 8, !tbaa !72
  %171 = getelementptr inbounds %struct.cpp_context, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !74
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !62
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174, %168
  tail call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1) #22
  br label %179

179:                                              ; preds = %178, %174
  %180 = load ptr, ptr %1, align 8, !tbaa !31
  %181 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef %180) #20
  br label %217

182:                                              ; preds = %166
  %183 = icmp eq i32 %23, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = icmp eq i16 %148, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.macro_arg, ptr %13, i64 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !136
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i32
  br label %191

191:                                              ; preds = %186, %184, %182
  %192 = phi i32 [ 1, %184 ], [ %25, %182 ], [ %190, %186 ]
  %193 = tail call zeroext i8 @_cpp_arguments_ok(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i32 noundef %192) #22, !range !82
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %217, label %195

195:                                              ; preds = %191
  %196 = load i8, ptr %19, align 2
  %197 = and i8 %196, 2
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %218, label %199

199:                                              ; preds = %195
  %200 = load i16, ptr %6, align 8, !tbaa !67
  %201 = zext i16 %200 to i32
  %202 = icmp ult i32 %192, %201
  br i1 %202, label %213, label %203

203:                                              ; preds = %199
  %204 = icmp eq i32 %192, 1
  br i1 %204, label %205, label %218

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.macro_arg, ptr %13, i64 0, i32 3
  %207 = load i32, ptr %206, align 8, !tbaa !136
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %211 = load i8, ptr %210, align 4, !tbaa !146
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %209, %199
  %214 = zext i16 %200 to i64
  %215 = getelementptr %struct.macro_arg, ptr %13, i64 %214
  %216 = getelementptr %struct.macro_arg, ptr %215, i64 -1
  store ptr null, ptr %216, align 8, !tbaa !140
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare ptr @_cpp_append_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @stringify_arg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp ult i64 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 3) #20
  %14 = load ptr, ptr %3, align 8, !tbaa !147
  %15 = getelementptr inbounds %struct._cpp_buff, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi ptr [ %16, %13 ], [ %8, %2 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 34, ptr %18, align 1, !tbaa !5
  %20 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !136
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %128, label %23

23:                                               ; preds = %17, %114
  %24 = phi i64 [ %118, %114 ], [ 0, %17 ]
  %25 = phi ptr [ %117, %114 ], [ %19, %17 ]
  %26 = phi i32 [ %116, %114 ], [ 0, %17 ]
  %27 = phi ptr [ %115, %114 ], [ null, %17 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !140
  %29 = getelementptr inbounds ptr, ptr %28, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !34
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
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  br label %114

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cpp_token, ptr %27, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !76
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %114

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.cpp_token, ptr %30, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !5
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
  %59 = load ptr, ptr %3, align 8, !tbaa !147
  %60 = getelementptr inbounds %struct._cpp_buff, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !107
  %62 = ptrtoint ptr %61 to i64
  %63 = ptrtoint ptr %25 to i64
  %64 = sub i64 %62, %63
  %65 = icmp ult i64 %64, %58
  %66 = getelementptr inbounds %struct._cpp_buff, ptr %59, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !95
  br i1 %65, label %68, label %75

68:                                               ; preds = %55
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %63, %69
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef %58) #20
  %71 = load ptr, ptr %3, align 8, !tbaa !147
  %72 = getelementptr inbounds %struct._cpp_buff, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !95
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
  %84 = load i16, ptr %83, align 2, !tbaa !76
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 32, ptr %77, align 1, !tbaa !5
  br label %89

89:                                               ; preds = %80, %87, %75
  %90 = phi ptr [ %88, %87 ], [ %77, %80 ], [ %77, %75 ]
  br i1 %56, label %91, label %101

91:                                               ; preds = %89
  %92 = tail call ptr @_cpp_get_buff(ptr noundef nonnull %0, i64 noundef %58) #20
  %93 = getelementptr inbounds %struct._cpp_buff, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !95
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
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = load i8, ptr %109, align 1, !tbaa !5
  %111 = icmp eq i8 %110, 92
  %112 = add i32 %26, 1
  %113 = select i1 %111, i32 %112, i32 0
  br label %114

114:                                              ; preds = %43, %35, %107, %103, %38
  %115 = phi ptr [ %27, %38 ], [ null, %103 ], [ null, %107 ], [ %37, %35 ], [ %47, %43 ]
  %116 = phi i32 [ %26, %38 ], [ 0, %103 ], [ %113, %107 ], [ %26, %35 ], [ %26, %43 ]
  %117 = phi ptr [ %25, %38 ], [ %104, %103 ], [ %104, %107 ], [ %25, %35 ], [ %25, %43 ]
  %118 = add nuw nsw i64 %24, 1
  %119 = load i32, ptr %20, align 8, !tbaa !136
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %23, label %122, !llvm.loop !148

122:                                              ; preds = %114
  %123 = and i32 %116, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.38) #20
  %127 = getelementptr inbounds i8, ptr %117, i64 -1
  br label %128

128:                                              ; preds = %17, %125, %122
  %129 = phi ptr [ %127, %125 ], [ %117, %122 ], [ %19, %17 ]
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 34, ptr %129, align 1, !tbaa !5
  %131 = load ptr, ptr %3, align 8, !tbaa !147
  %132 = getelementptr inbounds %struct._cpp_buff, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !95
  %134 = ptrtoint ptr %130 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = getelementptr inbounds i8, ptr %129, i64 2
  store ptr %137, ptr %132, align 8, !tbaa !95
  %138 = sub i64 0, %136
  %139 = getelementptr inbounds i8, ptr %130, i64 %138
  %140 = trunc i64 %136 to i32
  %141 = tail call fastcc ptr @new_string_token(ptr noundef %0, ptr noundef nonnull %139, i32 noundef %140) #22
  ret ptr %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !136
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %8 = load i8, ptr %7, align 1, !tbaa !90
  store i8 0, ptr %7, align 1, !tbaa !90
  %9 = tail call ptr @xmalloc(i64 noundef 2048) #20
  %10 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !137
  %11 = load ptr, ptr %1, align 8, !tbaa !140
  %12 = load i32, ptr %3, align 8, !tbaa !136
  %13 = add i32 %12, 1
  tail call fastcc void @push_ptoken_context(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %11, i32 noundef %13) #22
  %14 = getelementptr inbounds %struct.macro_arg, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !138
  br label %16

16:                                               ; preds = %33, %6
  %17 = phi i32 [ %15, %6 ], [ %36, %33 ]
  %18 = phi i32 [ 256, %6 ], [ %28, %33 ]
  %19 = add i32 %17, 1
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = shl i32 %18, 1
  %23 = load ptr, ptr %10, align 8, !tbaa !137
  %24 = zext i32 %22 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %25) #20
  store ptr %26, ptr %10, align 8, !tbaa !137
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi i32 [ %22, %21 ], [ %18, %16 ]
  %29 = tail call ptr @cpp_get_token(ptr noundef %0) #22
  %30 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 22
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %10, align 8, !tbaa !137
  %35 = load i32, ptr %14, align 4, !tbaa !138
  %36 = add i32 %35, 1
  store i32 %36, ptr %14, align 4, !tbaa !138
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  store ptr %29, ptr %38, align 8, !tbaa !34
  br label %16

39:                                               ; preds = %27
  tail call void @_cpp_pop_context(ptr noundef %0) #22
  store i8 %8, ptr %7, align 1, !tbaa !90
  br label %40

40:                                               ; preds = %2, %39
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_string_token(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @_cpp_temp_token(ptr noundef %0) #20
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  store i8 0, ptr %6, align 1, !tbaa !5
  %7 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 1
  store i8 61, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3, i32 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 2
  store i16 0, ptr %10, align 2, !tbaa !76
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @_cpp_do__Pragma(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @parse_params(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi i32 [ 0, %2 ], [ %26, %25 ]
  br label %6

6:                                                ; preds = %4, %10
  %7 = tail call ptr @_cpp_lex_token(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %13 [
    i8 53, label %16
    i8 21, label %27
    i8 19, label %33
    i8 44, label %37
    i8 22, label %74
    i8 68, label %10
  ]

10:                                               ; preds = %6
  %11 = load i8, ptr %3, align 4, !tbaa !149
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %10
  %14 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %7) #20
  %15 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.44, ptr noundef %14) #20
  br label %76

16:                                               ; preds = %6
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.45) #20
  br label %76

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %22) #22, !range !82
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %20, %33
  %26 = phi i32 [ 0, %33 ], [ 1, %20 ]
  br label %4

27:                                               ; preds = %6
  %28 = icmp eq i32 %5, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !67
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %76, label %35

33:                                               ; preds = %6
  %34 = icmp eq i32 %5, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %33, %29
  %36 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.46) #20
  br label %76

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 2
  %40 = or i8 %39, 2
  store i8 %40, ptr %38, align 2
  %41 = icmp eq i32 %5, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %44) #22, !range !82
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  store i8 1, ptr %46, align 2, !tbaa !116
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %48 = load i8, ptr %47, align 1, !tbaa !118
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %52 = load i8, ptr %51, align 1, !tbaa !68
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 21
  %56 = load i8, ptr %55, align 1, !tbaa !150
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %69, label %66

58:                                               ; preds = %37
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %60 = load i8, ptr %59, align 1, !tbaa !68
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 21
  %64 = load i8, ptr %63, align 1, !tbaa !150
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %54
  %67 = phi ptr [ @.str.47, %54 ], [ @.str.48, %62 ]
  %68 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %67) #20
  br label %69

69:                                               ; preds = %66, %58, %62, %42, %50, %54
  %70 = tail call ptr @_cpp_lex_token(ptr noundef nonnull %0) #20
  %71 = getelementptr inbounds %struct.cpp_token, ptr %70, i64 0, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 21
  br i1 %73, label %76, label %74

74:                                               ; preds = %6, %69
  %75 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49) #20
  br label %76

76:                                               ; preds = %20, %69, %27, %29, %18, %35, %74, %13
  %77 = phi i8 [ 1, %69 ], [ 1, %27 ], [ 1, %29 ], [ 0, %18 ], [ 0, %35 ], [ 0, %74 ], [ 0, %13 ], [ 0, %20 ]
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_expansion_token(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call fastcc ptr @alloc_expansion_token(ptr noundef %0, ptr noundef %1) #22
  store ptr %5, ptr %3, align 8, !tbaa !46
  %6 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #20
  store ptr %4, ptr %3, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 53
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.cpp_hashnode, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 4096
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  store i8 69, ptr %7, align 4
  %18 = getelementptr inbounds %struct.cpp_hashnode, ptr %12, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !5
  %20 = zext i16 %19 to i32
  store i32 %20, ptr %11, align 8, !tbaa !5
  br label %32

21:                                               ; preds = %10, %2
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %23 = load i8, ptr %22, align 1, !tbaa !90
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !67
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
define internal fastcc ptr @alloc_expansion_token(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !115
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %15, 24
  %17 = icmp ult i64 %11, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 24) #20
  %19 = load ptr, ptr %3, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct._cpp_buff, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = load i32, ptr %12, align 4, !tbaa !115
  %23 = add i32 %22, 1
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ %23, %18 ], [ %14, %2 ]
  %26 = phi i32 [ %22, %18 ], [ %13, %2 ]
  %27 = phi ptr [ %21, %18 ], [ %8, %2 ]
  store i32 %25, ptr %12, align 4, !tbaa !115
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.cpp_token, ptr %27, i64 %28
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_trad_stringification(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_string, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  %6 = load i32, ptr %2, align 8, !tbaa !153
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
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !120
  %21 = and i16 %20, 512
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = icmp eq i8 %17, 36
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8, ptr %13, align 2, !tbaa !154
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1
  %30 = icmp ult ptr %29, %9
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %80
  %32 = phi ptr [ %29, %28 ], [ %53, %80 ]
  br label %15, !llvm.loop !155

33:                                               ; preds = %15, %28, %25
  %34 = phi ptr [ %16, %15 ], [ %29, %28 ], [ %16, %25 ]
  %35 = icmp ult ptr %34, %9
  br i1 %35, label %36, label %52

36:                                               ; preds = %33, %49
  %37 = phi ptr [ %50, %49 ], [ %34, %33 ]
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !120
  %42 = and i16 %41, 516
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = icmp eq i8 %38, 36
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = load i8, ptr %13, align 2, !tbaa !154
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %36, %46
  %50 = getelementptr inbounds i8, ptr %37, i64 1
  %51 = icmp ult ptr %50, %9
  br i1 %51, label %36, label %52, !llvm.loop !156

52:                                               ; preds = %46, %44, %49, %33
  %53 = phi ptr [ %34, %33 ], [ %50, %49 ], [ %37, %44 ], [ %37, %46 ]
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %34 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i16, ptr %14, align 8, !tbaa !67
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %1, align 8, !tbaa !113
  %62 = and i64 %56, 4294967295
  %63 = zext i16 %58 to i64
  br label %64

64:                                               ; preds = %60, %77
  %65 = phi i64 [ 0, %60 ], [ %78, %77 ]
  %66 = getelementptr inbounds ptr, ptr %61, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.ht_identifier, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !125
  %70 = icmp eq i32 %69, %57
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load ptr, ptr %67, align 8, !tbaa !31
  %73 = tail call i32 @bcmp(ptr nonnull %34, ptr %72, i64 %62)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %72) #20
  br label %80

77:                                               ; preds = %71, %64
  %78 = add nuw nsw i64 %65, 1
  %79 = icmp eq i64 %78, %63
  br i1 %79, label %80, label %64, !llvm.loop !157

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
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { noreturn nounwind optsize }

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
!8 = !{!9, !10, i64 40}
!9 = !{!"cpp_reader", !10, i64 0, !10, i64 8, !11, i64 16, !10, i64 40, !12, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !10, i64 136, !10, i64 144, !14, i64 152, !12, i64 176, !6, i64 180, !10, i64 184, !10, i64 192, !16, i64 200, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !18, i64 312, !6, i64 400, !6, i64 401, !10, i64 408, !10, i64 416, !6, i64 424, !10, i64 432, !19, i64 440, !10, i64 472, !12, i64 480, !12, i64 484, !10, i64 488, !12, i64 496, !20, i64 504, !20, i64 528, !20, i64 552, !20, i64 576, !20, i64 600, !10, i64 624, !10, i64 632, !14, i64 640, !14, i64 664, !10, i64 688, !18, i64 696, !18, i64 784, !10, i64 872, !21, i64 880, !10, i64 1016, !10, i64 1024, !10, i64 1032, !22, i64 1040, !24, i64 1168, !6, i64 1200, !25, i64 1208, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !12, i64 1272, !26, i64 1280, !10, i64 1296}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"lexer_state", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !6, i64 10, !12, i64 12, !6, i64 16, !6, i64 17}
!12 = !{!"int", !6, i64 0}
!13 = !{!"cpp_context", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 32, !10, i64 40, !6, i64 48}
!14 = !{!"cpp_token", !12, i64 0, !12, i64 4, !15, i64 6, !6, i64 8}
!15 = !{!"short", !6, i64 0}
!16 = !{!"cpp_dir", !10, i64 0, !10, i64 8, !12, i64 16, !6, i64 20, !6, i64 21, !10, i64 24, !10, i64 32, !10, i64 40, !17, i64 48, !17, i64 56}
!17 = !{!"long", !6, i64 0}
!18 = !{!"obstack", !17, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !17, i64 40, !12, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!19 = !{!"tokenrun", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!20 = !{!"cset_converter", !10, i64 0, !10, i64 8, !12, i64 16}
!21 = !{!"cpp_callbacks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!22 = !{!"cpp_options", !12, i64 0, !12, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !6, i64 24, !6, i64 25, !6, i64 26, !6, i64 27, !6, i64 28, !6, i64 29, !6, i64 30, !6, i64 31, !6, i64 32, !6, i64 33, !6, i64 34, !6, i64 35, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !6, i64 76, !6, i64 77, !23, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !6, i64 120, !6, i64 121, !6, i64 122, !6, i64 123, !6, i64 124}
!23 = !{!"", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!24 = !{!"spec_nodes", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!25 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24}
!26 = !{!"", !10, i64 0, !12, i64 8, !12, i64 12}
!27 = !{!28, !12, i64 16}
!28 = !{!"cpp_macro", !10, i64 0, !6, i64 8, !12, i64 16, !12, i64 20, !15, i64 24, !12, i64 26, !12, i64 26, !12, i64 26, !12, i64 26, !12, i64 26, !12, i64 26}
!29 = !{!30, !12, i64 16}
!30 = !{!"line_map", !10, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 21, !12, i64 22}
!31 = !{!32, !10, i64 0}
!32 = !{!"cpp_hashnode", !33, i64 0, !12, i64 16, !12, i64 16, !6, i64 17, !12, i64 18, !12, i64 18, !6, i64 24}
!33 = !{!"ht_identifier", !10, i64 0, !12, i64 8, !12, i64 12}
!34 = !{!10, !10, i64 0}
!35 = !{!36, !10, i64 80}
!36 = !{!"cpp_buffer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !12, i64 97, !12, i64 97, !12, i64 97, !6, i64 98, !16, i64 104, !20, i64 168}
!37 = !{!38, !12, i64 36}
!38 = !{!"line_maps", !10, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !6, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !10, i64 48}
!39 = !{!38, !10, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!30, !10, i64 0}
!43 = !{!38, !12, i64 24}
!44 = !{!38, !12, i64 12}
!45 = !{!9, !6, i64 1082}
!46 = !{!9, !10, i64 432}
!47 = !{!12, !12, i64 0}
!48 = !{!30, !12, i64 12}
!49 = !{!30, !12, i64 8}
!50 = !{i32 0, i32 256}
!51 = !{!9, !10, i64 624}
!52 = !{!17, !17, i64 0}
!53 = !{!54, !12, i64 16}
!54 = !{!"tm", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !17, i64 40, !10, i64 48}
!55 = !{!54, !12, i64 12}
!56 = !{!54, !12, i64 20}
!57 = !{!9, !10, i64 632}
!58 = !{!54, !12, i64 8}
!59 = !{!54, !12, i64 4}
!60 = !{!54, !12, i64 0}
!61 = !{!9, !6, i64 1164}
!62 = !{!9, !6, i64 16}
!63 = !{!9, !12, i64 1272}
!64 = distinct !{!64, !41}
!65 = !{!9, !10, i64 0}
!66 = !{!36, !6, i64 98}
!67 = !{!28, !15, i64 24}
!68 = !{!9, !6, i64 1077}
!69 = !{!13, !6, i64 48}
!70 = !{!13, !10, i64 40}
!71 = !{!13, !10, i64 32}
!72 = !{!9, !10, i64 136}
!73 = !{!13, !10, i64 0}
!74 = !{!13, !10, i64 8}
!75 = !{!9, !6, i64 180}
!76 = !{!14, !15, i64 6}
!77 = !{!14, !12, i64 0}
!78 = !{!9, !12, i64 176}
!79 = !{!9, !6, i64 24}
!80 = !{!9, !10, i64 968}
!81 = !{i64 0, i64 8, !34, i64 0, i64 8, !34, i64 0, i64 4, !47, i64 8, i64 8, !34, i64 0, i64 4, !47, i64 0, i64 4, !47, i64 0, i64 4, !47}
!82 = !{i8 0, i8 2}
!83 = distinct !{!83, !41}
!84 = !{!9, !6, i64 424}
!85 = !{!9, !6, i64 19}
!86 = !{!9, !10, i64 984}
!87 = !{!9, !12, i64 48}
!88 = !{!9, !12, i64 484}
!89 = !{!9, !6, i64 25}
!90 = !{!9, !6, i64 1063}
!91 = !{!92, !10, i64 8}
!92 = !{!"_cpp_buff", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!93 = !{!9, !10, i64 1008}
!94 = !{!92, !10, i64 0}
!95 = !{!92, !10, i64 16}
!96 = distinct !{!96, !41}
!97 = !{!9, !6, i64 26}
!98 = distinct !{!98, !41}
!99 = distinct !{!99, !41}
!100 = !{!9, !12, i64 480}
!101 = !{!9, !10, i64 472}
!102 = !{!19, !10, i64 16}
!103 = !{!19, !10, i64 8}
!104 = !{!19, !10, i64 24}
!105 = distinct !{!105, !41}
!106 = !{!9, !10, i64 56}
!107 = !{!92, !10, i64 24}
!108 = !{!9, !12, i64 496}
!109 = !{!9, !10, i64 488}
!110 = !{!9, !10, i64 1016}
!111 = !{!112, !10, i64 104}
!112 = !{!"ht", !18, i64 0, !10, i64 88, !10, i64 96, !10, i64 104, !12, i64 112, !12, i64 116, !10, i64 120, !12, i64 128, !12, i64 132, !6, i64 136}
!113 = !{!28, !10, i64 0}
!114 = !{!9, !6, i64 1074}
!115 = !{!28, !12, i64 20}
!116 = !{!9, !6, i64 22}
!117 = distinct !{!117, !41}
!118 = !{!9, !6, i64 1075}
!119 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 6, i64 2, !120, i64 8, i64 8, !34, i64 8, i64 8, !34, i64 8, i64 4, !47, i64 16, i64 8, !34, i64 8, i64 4, !47, i64 8, i64 4, !47, i64 8, i64 4, !47}
!120 = !{!15, !15, i64 0}
!121 = !{!9, !12, i64 1044}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = !{!32, !12, i64 8}
!126 = distinct !{!126, !41}
!127 = distinct !{!127, !41}
!128 = !{!9, !10, i64 1192}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = !{!36, !10, i64 0}
!133 = !{!36, !10, i64 32}
!134 = !{!135, !10, i64 16}
!135 = !{!"macro_arg", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !12, i64 28}
!136 = !{!135, !12, i64 24}
!137 = !{!135, !10, i64 8}
!138 = !{!135, !12, i64 28}
!139 = distinct !{!139, !41}
!140 = !{!135, !10, i64 0}
!141 = !{!9, !6, i64 17}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !41}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !41}
!146 = !{!9, !6, i64 1076}
!147 = !{!9, !10, i64 64}
!148 = distinct !{!148, !41}
!149 = !{!9, !6, i64 1052}
!150 = !{!9, !6, i64 1067}
!151 = !{!152, !10, i64 8}
!152 = !{!"cpp_string", !12, i64 0, !10, i64 8}
!153 = !{!152, !12, i64 0}
!154 = !{!9, !6, i64 1070}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !41}
