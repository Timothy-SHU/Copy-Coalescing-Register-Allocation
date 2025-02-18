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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @_cpp_warn_if_unused_macro(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) local_unnamed_addr #2 !prof !45 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 319
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %10, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = tail call ptr @linemap_lookup(ptr noundef %17, i32 noundef %19) #22
  %21 = getelementptr inbounds %struct.line_map, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, ptr %18, align 8, !tbaa !70
  %26 = load ptr, ptr %1, align 8, !tbaa !74
  %27 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 0, i32 noundef %25, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %26) #22
  br label %28

28:                                               ; preds = %8, %15, %24, %3
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !45 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !52
  switch i32 %5, label %6 [
    i32 8, label %9
    i32 2, label %40
    i32 3, label %40
    i32 4, label %91
    i32 0, label %97
    i32 6, label %127
    i32 1, label %135
    i32 5, label %135
    i32 9, label %184
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !74
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %7) #22
  br label %198

9:                                                ; preds = %2
  %10 = tail call ptr @cpp_get_buffer(ptr noundef %0) #22
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = tail call ptr @cpp_get_file(ptr noundef %10) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @_cpp_get_file_stat(ptr noundef nonnull %15) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stat, ptr %18, i64 0, i32 12
  %22 = tail call ptr @localtime(ptr noundef nonnull %21) #22
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @asctime(ptr noundef nonnull %24) #22
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #23
  %29 = add i64 %28, 2
  %30 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %29) #22
  store i8 34, ptr %30, align 1, !tbaa !52
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %27) #22
  %33 = getelementptr inbounds i8, ptr %30, i64 %28
  store i8 34, ptr %33, align 1, !tbaa !52
  br label %36

34:                                               ; preds = %23
  %35 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.2) #22
  br label %36

36:                                               ; preds = %34, %26
  %37 = phi ptr [ @.str.3, %34 ], [ %30, %26 ]
  store ptr %37, ptr %11, align 8, !tbaa !77
  br label %38

38:                                               ; preds = %14, %36, %9
  %39 = load ptr, ptr %11, align 8, !tbaa !77
  br label %198

40:                                               ; preds = %2, %2
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.line_maps, ptr %42, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !79
  %45 = tail call ptr @linemap_lookup(ptr noundef %42, i32 noundef %44) #22
  %46 = load i32, ptr %4, align 8, !tbaa !52
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.line_map, ptr %45, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !72
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load ptr, ptr %41, align 8, !tbaa !53
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i32 [ %50, %52 ], [ %59, %55 ]
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.line_map, ptr %54, i64 %57, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !72
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %55, label %61, !llvm.loop !82

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.line_map, ptr %54, i64 %57
  br label %63

63:                                               ; preds = %61, %48, %40
  %64 = phi ptr [ %45, %40 ], [ %45, %48 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !85
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #23
  %67 = trunc i64 %66 to i32
  %68 = shl i64 %66, 1
  %69 = add i64 %68, 3
  %70 = and i64 %69, 4294967295
  %71 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %70) #22
  store i8 34, ptr %71, align 1, !tbaa !52
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %63, %83
  %75 = phi i32 [ %78, %83 ], [ %67, %63 ]
  %76 = phi ptr [ %86, %83 ], [ %72, %63 ]
  %77 = phi ptr [ %79, %83 ], [ %65, %63 ]
  %78 = add i32 %75, -1
  %79 = getelementptr inbounds i8, ptr %77, i64 1
  %80 = load i8, ptr %77, align 1, !tbaa !52
  switch i8 %80, label %83 [
    i8 92, label %81
    i8 34, label %81
  ]

81:                                               ; preds = %74, %74
  %82 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 92, ptr %76, align 1, !tbaa !52
  br label %83

83:                                               ; preds = %74, %81
  %84 = phi i64 [ 2, %81 ], [ 1, %74 ]
  %85 = phi ptr [ %82, %81 ], [ %76, %74 ]
  %86 = getelementptr inbounds i8, ptr %76, i64 %84
  store i8 %80, ptr %85, align 1, !tbaa !52
  %87 = icmp eq i32 %78, 0
  br i1 %87, label %88, label %74, !llvm.loop !86

88:                                               ; preds = %83, %63
  %89 = phi ptr [ %72, %63 ], [ %86, %83 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 34, ptr %89, align 1, !tbaa !52
  store i8 0, ptr %90, align 1, !tbaa !52
  br label %198

91:                                               ; preds = %2
  %92 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.line_maps, ptr %93, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !87
  %96 = add i32 %95, -1
  br label %198

97:                                               ; preds = %2
  %98 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !53
  %100 = load ptr, ptr %99, align 8, !tbaa !81
  %101 = getelementptr inbounds %struct.line_maps, ptr %99, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !88
  %103 = add i32 %102, -1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %106 = load i8, ptr %105, align 2, !tbaa !89
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.line_maps, ptr %99, i64 0, i32 8
  br label %114

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %112 = load ptr, ptr %111, align 8, !tbaa !90
  %113 = getelementptr inbounds %struct.cpp_token, ptr %112, i64 -1
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi ptr [ %109, %108 ], [ %113, %110 ]
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = getelementptr inbounds %struct.line_map, ptr %100, i64 %104, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !91
  %119 = sub i32 %116, %118
  %120 = getelementptr inbounds %struct.line_map, ptr %100, i64 %104, i32 6
  %121 = load i8, ptr %120, align 2
  %122 = zext nneg i8 %121 to i32
  %123 = lshr i32 %119, %122
  %124 = getelementptr inbounds %struct.line_map, ptr %100, i64 %104, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !92
  %126 = add i32 %123, %125
  br label %198

127:                                              ; preds = %2
  %128 = load ptr, ptr %0, align 8, !tbaa !93
  %129 = icmp eq ptr %128, null
  br i1 %129, label %198, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.cpp_buffer, ptr %128, i64 0, i32 15
  %132 = load i8, ptr %131, align 2, !tbaa !94
  %133 = icmp eq i8 %132, 0
  %134 = zext i1 %133 to i32
  br label %198

135:                                              ; preds = %2, %2
  %136 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 41
  %137 = load ptr, ptr %136, align 8, !tbaa !95
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %176

139:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %140 = tail call ptr @__errno_location() #24
  store i32 0, ptr %140, align 4, !tbaa !50
  %141 = tail call i64 @time(ptr noundef null) #22
  store i64 %141, ptr %3, align 8, !tbaa !96
  %142 = icmp eq i64 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, ptr %140, align 4, !tbaa !50
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %139
  %147 = call ptr @localtime(ptr noundef nonnull %3) #22
  br label %148

148:                                              ; preds = %146, %143
  %149 = phi ptr [ %147, %146 ], [ null, %143 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %172, label %151

151:                                              ; preds = %148
  %152 = call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef 14) #22
  store ptr %152, ptr %136, align 8, !tbaa !95
  %153 = getelementptr inbounds %struct.tm, ptr %149, i64 0, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !97
  %155 = sext i32 %154 to i64
  %156 = shl i64 %155, 2
  %157 = call ptr @llvm.load.relative.i64(ptr @reltable._cpp_builtin_macro_text, i64 %156)
  %158 = getelementptr inbounds %struct.tm, ptr %149, i64 0, i32 3
  %159 = load i32, ptr %158, align 4, !tbaa !99
  %160 = getelementptr inbounds %struct.tm, ptr %149, i64 0, i32 5
  %161 = load i32, ptr %160, align 4, !tbaa !100
  %162 = add nsw i32 %161, 1900
  %163 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %152, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %157, i32 noundef %159, i32 noundef %162) #22
  %164 = call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef 11) #22
  %165 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  store ptr %164, ptr %165, align 8, !tbaa !101
  %166 = getelementptr inbounds %struct.tm, ptr %149, i64 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !102
  %168 = getelementptr inbounds %struct.tm, ptr %149, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !103
  %170 = load i32, ptr %149, align 8, !tbaa !104
  %171 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %167, i32 noundef %169, i32 noundef %170) #22
  br label %175

172:                                              ; preds = %148
  %173 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.6) #22
  store ptr @.str.7, ptr %136, align 8, !tbaa !95
  %174 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  store ptr @.str.8, ptr %174, align 8, !tbaa !101
  br label %175

175:                                              ; preds = %172, %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %176

176:                                              ; preds = %175, %135
  %177 = load i32, ptr %4, align 8, !tbaa !52
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load ptr, ptr %136, align 8, !tbaa !95
  br label %198

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 42
  %183 = load ptr, ptr %182, align 8, !tbaa !101
  br label %198

184:                                              ; preds = %2
  %185 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %186 = load i8, ptr %185, align 4, !tbaa !105
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %190 = load i8, ptr %189, align 8, !tbaa !106
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9) #22
  br label %194

194:                                              ; preds = %192, %188, %184
  %195 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %196 = load i32, ptr %195, align 8, !tbaa !107
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 8, !tbaa !107
  br label %198

198:                                              ; preds = %130, %127, %179, %181, %194, %114, %91, %88, %38, %6
  %199 = phi i32 [ 1, %6 ], [ %196, %194 ], [ 1, %179 ], [ 1, %181 ], [ %126, %114 ], [ %96, %91 ], [ 1, %88 ], [ 1, %38 ], [ %134, %130 ], [ 1, %127 ]
  %200 = phi ptr [ null, %6 ], [ null, %194 ], [ %180, %179 ], [ %183, %181 ], [ null, %114 ], [ null, %91 ], [ %71, %88 ], [ %39, %38 ], [ null, %130 ], [ null, %127 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef 21) #22
  %204 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %203, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %199) #22
  br label %205

205:                                              ; preds = %202, %198
  %206 = phi ptr [ %203, %202 ], [ %200, %198 ]
  ret ptr %206
}

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @cpp_get_buffer(ptr noundef) local_unnamed_addr #1

declare ptr @cpp_get_file(ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_get_file_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @asctime(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @_cpp_unaligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @cpp_quote_string(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 !prof !45 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %14
  %6 = phi i32 [ %9, %14 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %14 ], [ %0, %3 ]
  %8 = phi ptr [ %10, %14 ], [ %1, %3 ]
  %9 = add i32 %6, -1
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %8, align 1, !tbaa !52
  switch i8 %11, label %14 [
    i8 92, label %12
    i8 34, label %12
  ]

12:                                               ; preds = %5, %5
  %13 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 92, ptr %7, align 1, !tbaa !52
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi i64 [ 2, %12 ], [ 1, %5 ]
  %16 = phi ptr [ %13, %12 ], [ %7, %5 ]
  %17 = getelementptr inbounds i8, ptr %7, i64 %15
  store i8 %11, ptr %16, align 1, !tbaa !52
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %19, label %5, !llvm.loop !86

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %0, %3 ], [ %17, %14 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_arguments_ok(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !prof !45 {
  %5 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !108
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
  %21 = load i8, ptr %20, align 1, !tbaa !109
  %22 = icmp ne i8 %21, 0
  %23 = and i8 %16, 4
  %24 = icmp eq i8 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.11) #22
  br label %34

28:                                               ; preds = %14, %11
  %29 = load ptr, ptr %2, align 8, !tbaa !74
  %30 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %29, i32 noundef %7, i32 noundef %3) #22
  br label %34

31:                                               ; preds = %9
  %32 = load ptr, ptr %2, align 8, !tbaa !74
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef %32, i32 noundef %3, i32 noundef %7) #22
  br label %34

34:                                               ; preds = %28, %31, %19, %26, %4
  %35 = phi i8 [ 1, %4 ], [ 1, %26 ], [ 1, %19 ], [ 0, %31 ], [ 0, %28 ]
  ret i8 %35
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_push_token_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 !prof !45 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @xmalloc(i64 noundef 56) #22
  %11 = load ptr, ptr %5, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !112
  store ptr null, ptr %10, align 8, !tbaa !111
  store ptr %10, ptr %11, align 8, !tbaa !111
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %10, %9 ], [ %7, %4 ]
  store ptr %14, ptr %5, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 5
  store i8 1, ptr %15, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 4
  store ptr %1, ptr %16, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !52
  %19 = zext i32 %3 to i64
  %20 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 %19
  %21 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 2, i32 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !52
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_push_text_context(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 !prof !45 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @xmalloc(i64 noundef 56) #22
  %11 = load ptr, ptr %5, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !112
  store ptr null, ptr %10, align 8, !tbaa !111
  store ptr %10, ptr %11, align 8, !tbaa !111
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %10, %9 ], [ %7, %4 ]
  store ptr %14, ptr %5, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 5
  store i8 1, ptr %15, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 4
  store ptr %1, ptr %16, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds i8, ptr %2, i64 %3
  %20 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 2, i32 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = or i16 %22, 2048
  store i16 %23, ptr %21, align 2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_pop_context(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !114
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
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %13) #22
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  store ptr %18, ptr %2, align 8, !tbaa !110
  ret void
}

declare void @_cpp_release_buff(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cpp_get_token(ptr noundef %0) local_unnamed_addr #10 !prof !116 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 13
  %4 = load i8, ptr %3, align 4, !tbaa !117
  store i8 0, ptr %3, align 4, !tbaa !117
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %234, %1
  %8 = phi ptr [ undef, %1 ], [ %236, %234 ]
  %9 = phi ptr [ undef, %1 ], [ %237, %234 ]
  %10 = load ptr, ptr %5, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !112
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !118

14:                                               ; preds = %7
  %15 = tail call ptr @_cpp_lex_token(ptr noundef %0) #22
  br label %116

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %95, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 5
  %24 = load i8, ptr %23, align 8, !tbaa !113
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 1
  store ptr %27, ptr %17, align 8, !tbaa !52
  br label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %29, ptr %17, align 8, !tbaa !52
  %30 = load ptr, ptr %18, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %18, %26 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.cpp_token, ptr %32, i64 0, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !119
  %35 = and i16 %34, 8
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %116, label %37

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %32, ptr %2, align 8, !tbaa !46
  %38 = load ptr, ptr %5, align 8, !tbaa !110
  %39 = getelementptr inbounds %struct.cpp_context, ptr %38, i64 0, i32 5
  %40 = getelementptr inbounds %struct.cpp_context, ptr %38, i64 0, i32 2
  %41 = getelementptr inbounds %struct.cpp_context, ptr %38, i64 0, i32 2
  br label %42

42:                                               ; preds = %66, %37
  %43 = load i8, ptr %39, align 8, !tbaa !113
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %40, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 1
  store ptr %47, ptr %40, align 8, !tbaa !52
  br label %52

48:                                               ; preds = %42
  %49 = load ptr, ptr %41, align 8, !tbaa !52
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %50, ptr %41, align 8, !tbaa !52
  %51 = load ptr, ptr %49, align 8, !tbaa !46
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi ptr [ %46, %45 ], [ %51, %48 ]
  %54 = getelementptr inbounds %struct.cpp_token, ptr %53, i64 0, i32 1
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 72
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.cpp_token, ptr %53, i64 0, i32 2
  %59 = load i16, ptr %58, align 2, !tbaa !119
  %60 = and i16 %59, 8
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @abort() #25
  unreachable

63:                                               ; preds = %57, %52
  %64 = call fastcc zeroext i8 @paste_tokens(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %53), !range !120
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.cpp_token, ptr %53, i64 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !119
  %69 = and i16 %68, 8
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %42, !llvm.loop !121

71:                                               ; preds = %66, %63
  %72 = load ptr, ptr %2, align 8, !tbaa !46
  %73 = load ptr, ptr %5, align 8, !tbaa !110
  %74 = load ptr, ptr %73, align 8, !tbaa !111
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = tail call ptr @xmalloc(i64 noundef 56) #22
  %78 = load ptr, ptr %5, align 8, !tbaa !110
  %79 = getelementptr inbounds %struct.cpp_context, ptr %77, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !112
  store ptr null, ptr %77, align 8, !tbaa !111
  store ptr %77, ptr %78, align 8, !tbaa !111
  br label %80

80:                                               ; preds = %71, %76
  %81 = phi ptr [ %77, %76 ], [ %74, %71 ]
  %82 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store ptr %81, ptr %5, align 8, !tbaa !110
  %83 = getelementptr inbounds %struct.cpp_context, ptr %81, i64 0, i32 5
  store i8 1, ptr %83, align 8, !tbaa !113
  %84 = getelementptr inbounds %struct.cpp_context, ptr %81, i64 0, i32 3
  %85 = getelementptr inbounds %struct.cpp_context, ptr %81, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  store ptr %72, ptr %85, align 8, !tbaa !52
  %86 = getelementptr inbounds %struct.cpp_token, ptr %72, i64 1
  %87 = getelementptr inbounds %struct.cpp_context, ptr %81, i64 0, i32 2, i32 0, i32 1
  store ptr %86, ptr %87, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %88 = load i8, ptr %82, align 8, !tbaa !106
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %234, !llvm.loop !122

90:                                               ; preds = %80
  %91 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %92 = getelementptr inbounds %struct.cpp_token, ptr %91, i64 0, i32 1
  store i8 72, ptr %92, align 4
  %93 = getelementptr inbounds %struct.cpp_token, ptr %91, i64 0, i32 3
  store ptr %32, ptr %93, align 8, !tbaa !52
  %94 = getelementptr inbounds %struct.cpp_token, ptr %91, i64 0, i32 2
  store i16 0, ptr %94, align 2, !tbaa !119
  br label %234

95:                                               ; preds = %16
  %96 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !114
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.cpp_hashnode, ptr %97, i64 0, i32 3
  %101 = load i16, ptr %100, align 2
  %102 = and i16 %101, -2049
  store i16 %102, ptr %100, align 2
  br label %103

103:                                              ; preds = %99, %95
  %104 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !115
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %105) #22
  br label %108

108:                                              ; preds = %103, %107
  %109 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %110 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  %111 = load ptr, ptr %11, align 8, !tbaa !112
  store ptr %111, ptr %5, align 8, !tbaa !110
  %112 = load i8, ptr %109, align 8, !tbaa !106
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 1, i32 3
  %115 = select i1 %113, ptr %110, ptr %9
  br label %234, !llvm.loop !122

116:                                              ; preds = %31, %14
  %117 = phi ptr [ %32, %31 ], [ %15, %14 ]
  %118 = load i8, ptr %6, align 8, !tbaa !106
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %124, label %120, !prof !123

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.cpp_token, ptr %117, i64 0, i32 1
  %122 = load i8, ptr %121, align 4
  %123 = icmp eq i8 %122, 68
  br i1 %123, label %234, label %124, !prof !124, !llvm.loop !122

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.cpp_token, ptr %117, i64 0, i32 1
  %126 = load i8, ptr %125, align 4
  %127 = icmp eq i8 %126, 53
  br i1 %127, label %128, label %234, !prof !125

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.cpp_token, ptr %117, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !52
  %131 = getelementptr inbounds %struct.cpp_hashnode, ptr %130, i64 0, i32 3
  %132 = load i16, ptr %131, align 2
  %133 = and i16 %132, 63
  %134 = icmp eq i16 %133, 1
  br i1 %134, label %135, label %234, !prof !126

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.cpp_token, ptr %117, i64 0, i32 2
  %137 = load i16, ptr %136, align 2, !tbaa !119
  %138 = and i16 %137, 32
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %234, !prof !127

140:                                              ; preds = %135
  %141 = and i16 %132, 2048
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %226, !prof !127

143:                                              ; preds = %140
  %144 = icmp eq i8 %4, 0
  br i1 %144, label %152, label %145, !prof !127

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !114
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 12
  %151 = load i32, ptr %117, align 8, !tbaa !128
  store i32 %151, ptr %150, align 8, !tbaa !129
  br label %152

152:                                              ; preds = %149, %145, %143
  %153 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %154 = load i8, ptr %153, align 8, !tbaa !130
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %234, !prof !131

156:                                              ; preds = %152
  %157 = load i16, ptr %131, align 2
  %158 = and i16 %157, 16384
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %211, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 11
  %162 = load ptr, ptr %161, align 8, !tbaa !132
  %163 = icmp eq ptr %162, null
  br i1 %163, label %213, label %164

164:                                              ; preds = %160
  %165 = tail call ptr @cpp_peek_token(ptr noundef %0, i32 noundef 0) #22
  %166 = getelementptr inbounds %struct.cpp_token, ptr %165, i64 0, i32 1
  %167 = load i8, ptr %166, align 4
  %168 = icmp eq i8 %167, 72
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.cpp_token, ptr %165, i64 0, i32 2
  %171 = load i16, ptr %170, align 2, !tbaa !119
  %172 = and i16 %171, 1
  %173 = icmp ne i16 %172, 0
  br label %174

174:                                              ; preds = %169, %164
  %175 = phi i1 [ true, %164 ], [ %173, %169 ]
  %176 = load ptr, ptr %161, align 8, !tbaa !132
  %177 = tail call ptr %176(ptr noundef %0, ptr noundef %117) #22
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = tail call fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef nonnull %177, ptr noundef %117)
  br label %213

181:                                              ; preds = %174
  br i1 %175, label %182, label %213

182:                                              ; preds = %181
  %183 = tail call ptr @cpp_peek_token(ptr noundef %0, i32 noundef 0) #22
  %184 = getelementptr inbounds %struct.cpp_token, ptr %183, i64 0, i32 1
  %185 = load i8, ptr %184, align 4
  %186 = icmp eq i8 %185, 72
  br i1 %186, label %213, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.cpp_token, ptr %183, i64 0, i32 2
  %189 = load i16, ptr %188, align 2, !tbaa !119
  %190 = and i16 %189, 1
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %187
  %193 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %194 = getelementptr inbounds %struct.cpp_token, ptr %193, i64 0, i32 1
  store i8 72, ptr %194, align 4
  %195 = getelementptr inbounds %struct.cpp_token, ptr %193, i64 0, i32 3
  store ptr %183, ptr %195, align 8, !tbaa !52
  %196 = getelementptr inbounds %struct.cpp_token, ptr %193, i64 0, i32 2
  store i16 0, ptr %196, align 2, !tbaa !119
  %197 = load ptr, ptr %5, align 8, !tbaa !110
  %198 = load ptr, ptr %197, align 8, !tbaa !111
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %192
  %201 = tail call ptr @xmalloc(i64 noundef 56) #22
  %202 = load ptr, ptr %5, align 8, !tbaa !110
  %203 = getelementptr inbounds %struct.cpp_context, ptr %201, i64 0, i32 1
  store ptr %202, ptr %203, align 8, !tbaa !112
  store ptr null, ptr %201, align 8, !tbaa !111
  store ptr %201, ptr %202, align 8, !tbaa !111
  br label %204

204:                                              ; preds = %192, %200
  %205 = phi ptr [ %201, %200 ], [ %198, %192 ]
  store ptr %205, ptr %5, align 8, !tbaa !110
  %206 = getelementptr inbounds %struct.cpp_context, ptr %205, i64 0, i32 5
  store i8 1, ptr %206, align 8, !tbaa !113
  %207 = getelementptr inbounds %struct.cpp_context, ptr %205, i64 0, i32 3
  %208 = getelementptr inbounds %struct.cpp_context, ptr %205, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %207, i8 0, i64 16, i1 false)
  store ptr %193, ptr %208, align 8, !tbaa !52
  %209 = getelementptr inbounds %struct.cpp_token, ptr %193, i64 1
  %210 = getelementptr inbounds %struct.cpp_context, ptr %205, i64 0, i32 2, i32 0, i32 1
  store ptr %209, ptr %210, align 8, !tbaa !52
  br label %213

211:                                              ; preds = %156
  %212 = tail call fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef %130, ptr noundef %117)
  br label %213

213:                                              ; preds = %179, %182, %187, %204, %181, %160, %211
  %214 = phi i32 [ 0, %160 ], [ %212, %211 ], [ %180, %179 ], [ 0, %204 ], [ 0, %187 ], [ 0, %182 ], [ 0, %181 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %213
  %217 = load i8, ptr %6, align 8, !tbaa !106
  %218 = icmp ne i8 %217, 0
  %219 = icmp eq i32 %214, 2
  %220 = or i1 %219, %218
  br i1 %220, label %234, label %221, !llvm.loop !122

221:                                              ; preds = %216
  %222 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %223 = getelementptr inbounds %struct.cpp_token, ptr %222, i64 0, i32 1
  store i8 72, ptr %223, align 4
  %224 = getelementptr inbounds %struct.cpp_token, ptr %222, i64 0, i32 3
  store ptr %117, ptr %224, align 8, !tbaa !52
  %225 = getelementptr inbounds %struct.cpp_token, ptr %222, i64 0, i32 2
  store i16 0, ptr %225, align 2, !tbaa !119
  br label %234

226:                                              ; preds = %140
  %227 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %228 = load i8, ptr %125, align 4
  %229 = getelementptr inbounds %struct.cpp_token, ptr %227, i64 0, i32 1
  store i8 %228, ptr %229, align 4
  %230 = load i16, ptr %136, align 2, !tbaa !119
  %231 = or i16 %230, 32
  %232 = getelementptr inbounds %struct.cpp_token, ptr %227, i64 0, i32 2
  store i16 %231, ptr %232, align 2, !tbaa !119
  %233 = getelementptr inbounds %struct.cpp_token, ptr %227, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %233, ptr noundef nonnull align 8 dereferenceable(16) %129, i64 16, i1 false), !tbaa.struct !133
  br label %234

234:                                              ; preds = %221, %152, %216, %213, %108, %226, %128, %135, %124, %120, %80, %90
  %235 = phi i32 [ 1, %90 ], [ 3, %80 ], [ 3, %120 ], [ 2, %124 ], [ 2, %135 ], [ 2, %128 ], [ 2, %226 ], [ %114, %108 ], [ 1, %221 ], [ 2, %152 ], [ 3, %216 ], [ 2, %213 ]
  %236 = phi ptr [ %32, %90 ], [ %32, %80 ], [ %117, %120 ], [ %117, %124 ], [ %117, %135 ], [ %117, %128 ], [ %227, %226 ], [ %8, %108 ], [ %117, %221 ], [ %117, %152 ], [ %117, %216 ], [ %117, %213 ]
  %237 = phi ptr [ %91, %90 ], [ %9, %80 ], [ %9, %120 ], [ %9, %124 ], [ %9, %135 ], [ %9, %128 ], [ %9, %226 ], [ %115, %108 ], [ %222, %221 ], [ %9, %152 ], [ %9, %216 ], [ %9, %213 ]
  switch i32 %235, label %239 [
    i32 3, label %7
    i32 2, label %238
  ], !prof !134

238:                                              ; preds = %234
  br label %239

239:                                              ; preds = %234, %238
  %240 = phi ptr [ %236, %238 ], [ %237, %234 ]
  ret ptr %240
}

declare ptr @_cpp_lex_token(ptr noundef) local_unnamed_addr #1

declare ptr @cpp_peek_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !45 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 0, ptr %4, align 8, !tbaa !135
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %6, align 1, !tbaa !136
  %7 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 8448
  %10 = icmp eq i16 %9, 256
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = or disjoint i16 %8, 8192
  store i16 %12, ptr %7, align 2
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !138
  tail call void %14(ptr noundef %0, i32 noundef %18, ptr noundef %1) #22
  br label %19

19:                                               ; preds = %11, %16, %3
  %20 = load i16, ptr %7, align 2
  %21 = and i16 %20, 256
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %968

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 5
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %849, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %32 = load i8, ptr %31, align 8, !tbaa !130
  %33 = add i8 %32, 1
  store i8 %33, ptr %31, align 8, !tbaa !130
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %35 = load i32, ptr %34, align 4, !tbaa !139
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !139
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  store i8 1, ptr %37, align 1, !tbaa !140
  br label %38

38:                                               ; preds = %56, %30
  %39 = phi ptr [ %43, %56 ], [ null, %30 ]
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.cpp_token, ptr %39, i64 0, i32 2
  br label %42

42:                                               ; preds = %55, %38
  %43 = tail call ptr @cpp_get_token(ptr noundef %0)
  %44 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 1
  %45 = load i8, ptr %44, align 4
  switch i8 %45, label %278 [
    i8 72, label %46
    i8 20, label %57
    i8 22, label %275
  ]

46:                                               ; preds = %42
  br i1 %40, label %56, label %47

47:                                               ; preds = %46
  %48 = load i16, ptr %41, align 2, !tbaa !119
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cpp_token, ptr %43, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %47
  br label %42, !llvm.loop !141

56:                                               ; preds = %51, %46
  br label %38, !llvm.loop !141

57:                                               ; preds = %42
  store i8 2, ptr %37, align 1, !tbaa !140
  %58 = load ptr, ptr %24, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct.cpp_macro, ptr %58, i64 0, i32 4
  %60 = load i16, ptr %59, align 8, !tbaa !108
  %61 = tail call i16 @llvm.umax.i16(i16 %60, i16 1)
  %62 = zext i16 %61 to i64
  %63 = mul nuw nsw i64 %62, 432
  %64 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %63) #22
  %65 = getelementptr inbounds %struct._cpp_buff, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !142
  %67 = shl nuw nsw i64 %62, 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %66, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds %struct.macro_arg, ptr %66, i64 %62
  %69 = getelementptr inbounds %struct._cpp_buff, ptr %64, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !144
  %70 = getelementptr inbounds %struct.cpp_macro, ptr %58, i64 0, i32 5
  %71 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 44
  br label %72

72:                                               ; preds = %217, %57
  %73 = phi ptr [ null, %57 ], [ %182, %217 ]
  %74 = phi ptr [ %66, %57 ], [ %218, %217 ]
  %75 = phi i32 [ 0, %57 ], [ %77, %217 ]
  %76 = phi ptr [ %64, %57 ], [ %104, %217 ]
  %77 = add i32 %75, 1
  %78 = getelementptr inbounds %struct._cpp_buff, ptr %76, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !144
  store ptr %79, ptr %74, align 8, !tbaa !145
  br label %80

80:                                               ; preds = %170, %72
  %81 = phi ptr [ %157, %170 ], [ %73, %72 ]
  %82 = phi i32 [ %86, %170 ], [ 0, %72 ]
  %83 = phi i32 [ %90, %170 ], [ 0, %72 ]
  %84 = phi ptr [ %104, %170 ], [ %76, %72 ]
  br label %85

85:                                               ; preds = %80, %175
  %86 = phi i32 [ %82, %80 ], [ %176, %175 ]
  %87 = phi i32 [ %83, %80 ], [ %178, %175 ]
  %88 = phi ptr [ %84, %80 ], [ %104, %175 ]
  br label %89

89:                                               ; preds = %85, %108
  %90 = phi i32 [ 0, %108 ], [ %87, %85 ]
  %91 = phi ptr [ %104, %108 ], [ %88, %85 ]
  %92 = load ptr, ptr %74, align 8, !tbaa !145
  %93 = add i32 %90, 2
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  %96 = getelementptr inbounds %struct._cpp_buff, ptr %91, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !147
  %98 = icmp ugt ptr %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = tail call ptr @_cpp_append_extend_buff(ptr noundef %0, ptr noundef %91, i64 noundef 8000) #22
  %101 = getelementptr inbounds %struct._cpp_buff, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !144
  store ptr %102, ptr %74, align 8, !tbaa !145
  br label %103

103:                                              ; preds = %99, %89
  %104 = phi ptr [ %100, %99 ], [ %91, %89 ]
  %105 = tail call ptr @cpp_get_token(ptr noundef %0)
  %106 = getelementptr inbounds %struct.cpp_token, ptr %105, i64 0, i32 1
  %107 = load i8, ptr %106, align 4
  switch i8 %107, label %175 [
    i8 72, label %108
    i8 20, label %110
    i8 21, label %112
    i8 19, label %115
    i8 22, label %181
    i8 37, label %125
    i8 70, label %132
  ]

108:                                              ; preds = %103
  %109 = icmp eq i32 %90, 0
  br i1 %109, label %89, label %175, !llvm.loop !148

110:                                              ; preds = %103
  %111 = add i32 %86, 1
  br label %175

112:                                              ; preds = %103
  %113 = add i32 %86, -1
  %114 = icmp eq i32 %86, 0
  br i1 %114, label %181, label %175

115:                                              ; preds = %103
  %116 = icmp eq i32 %86, 0
  br i1 %116, label %117, label %175

117:                                              ; preds = %115
  %118 = load i8, ptr %70, align 2
  %119 = and i8 %118, 2
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %181, label %121

121:                                              ; preds = %117
  %122 = load i16, ptr %59, align 8, !tbaa !108
  %123 = zext i16 %122 to i32
  %124 = icmp eq i32 %77, %123
  br i1 %124, label %175, label %181

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.cpp_token, ptr %105, i64 0, i32 2
  %127 = load i16, ptr %126, align 2, !tbaa !119
  %128 = and i16 %127, 64
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %181

130:                                              ; preds = %125
  %131 = icmp eq i8 %107, 70
  br i1 %131, label %132, label %175

132:                                              ; preds = %130, %103
  %133 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %133, ptr noundef nonnull align 8 dereferenceable(24) %105, i64 24, i1 false), !tbaa.struct !149
  br label %134

134:                                              ; preds = %165, %132
  %135 = phi ptr [ %81, %132 ], [ %157, %165 ]
  %136 = phi ptr [ %133, %132 ], [ %166, %165 ]
  %137 = icmp eq ptr %135, null
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct._cpp_buff, ptr %135, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !147
  %141 = getelementptr inbounds %struct._cpp_buff, ptr %135, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !144
  %143 = ptrtoint ptr %140 to i64
  %144 = ptrtoint ptr %142 to i64
  %145 = sub i64 %143, %144
  %146 = icmp ult i64 %145, 8
  br i1 %146, label %149, label %156

147:                                              ; preds = %134
  %148 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef 256) #22
  br label %156

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct._cpp_buff, ptr %135, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !142
  %152 = ptrtoint ptr %151 to i64
  %153 = sub i64 %144, %152
  %154 = shl nsw i64 %153, 1
  %155 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %154) #22
  store ptr %135, ptr %155, align 8, !tbaa !151
  br label %156

156:                                              ; preds = %149, %147, %138
  %157 = phi ptr [ %148, %147 ], [ %155, %149 ], [ %135, %138 ]
  %158 = getelementptr inbounds %struct._cpp_buff, ptr %157, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !144
  store ptr %136, ptr %159, align 8, !tbaa !46
  %160 = load ptr, ptr %158, align 8, !tbaa !144
  %161 = getelementptr inbounds i8, ptr %160, i64 8
  store ptr %161, ptr %158, align 8, !tbaa !144
  %162 = getelementptr inbounds %struct.cpp_token, ptr %136, i64 0, i32 1
  %163 = load i8, ptr %162, align 4
  %164 = icmp eq i8 %163, 71
  br i1 %164, label %170, label %165

165:                                              ; preds = %156
  %166 = tail call ptr @cpp_get_token(ptr noundef %0)
  %167 = getelementptr inbounds %struct.cpp_token, ptr %166, i64 0, i32 1
  %168 = load i8, ptr %167, align 4
  %169 = icmp eq i8 %168, 22
  br i1 %169, label %170, label %134, !llvm.loop !152

170:                                              ; preds = %165, %156
  %171 = phi ptr [ %136, %156 ], [ %166, %165 ]
  store i8 2, ptr %37, align 1, !tbaa !140
  store i8 1, ptr %31, align 8, !tbaa !130
  %172 = getelementptr inbounds %struct.cpp_token, ptr %171, i64 0, i32 1
  %173 = load i8, ptr %172, align 4
  %174 = icmp eq i8 %173, 22
  br i1 %174, label %181, label %80

175:                                              ; preds = %103, %108, %130, %121, %115, %112, %110
  %176 = phi i32 [ %111, %110 ], [ %113, %112 ], [ 0, %121 ], [ %86, %115 ], [ %86, %130 ], [ %86, %108 ], [ %86, %103 ]
  %177 = load ptr, ptr %74, align 8, !tbaa !145
  %178 = add i32 %90, 1
  %179 = zext i32 %90 to i64
  %180 = getelementptr inbounds ptr, ptr %177, i64 %179
  store ptr %105, ptr %180, align 8, !tbaa !46
  br label %85, !llvm.loop !148

181:                                              ; preds = %170, %125, %121, %112, %117, %103
  %182 = phi ptr [ %81, %103 ], [ %81, %117 ], [ %81, %112 ], [ %81, %121 ], [ %81, %125 ], [ %157, %170 ]
  %183 = phi ptr [ %105, %103 ], [ %105, %117 ], [ %105, %112 ], [ %105, %121 ], [ %105, %125 ], [ %171, %170 ]
  %184 = zext i32 %90 to i64
  br label %185

185:                                              ; preds = %188, %181
  %186 = phi i64 [ %190, %188 ], [ %184, %181 ]
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %74, align 8, !tbaa !145
  %190 = add nsw i64 %186, -1
  %191 = getelementptr ptr, ptr %189, i64 %186
  %192 = getelementptr ptr, ptr %191, i64 -1
  %193 = load ptr, ptr %192, align 8, !tbaa !46
  %194 = getelementptr inbounds %struct.cpp_token, ptr %193, i64 0, i32 1
  %195 = load i8, ptr %194, align 4
  %196 = icmp eq i8 %195, 72
  br i1 %196, label %185, label %197, !llvm.loop !153

197:                                              ; preds = %188
  %198 = trunc i64 %186 to i32
  br label %199

199:                                              ; preds = %185, %197
  %200 = phi i32 [ %198, %197 ], [ 0, %185 ]
  %201 = getelementptr inbounds %struct.macro_arg, ptr %74, i64 0, i32 3
  store i32 %200, ptr %201, align 8, !tbaa !154
  %202 = load ptr, ptr %74, align 8, !tbaa !145
  %203 = zext i32 %200 to i64
  %204 = getelementptr inbounds ptr, ptr %202, i64 %203
  store ptr %71, ptr %204, align 8, !tbaa !46
  %205 = load i16, ptr %59, align 8, !tbaa !108
  %206 = zext i16 %205 to i32
  %207 = icmp ugt i32 %77, %206
  br i1 %207, label %217, label %208

208:                                              ; preds = %199
  %209 = load ptr, ptr %74, align 8, !tbaa !145
  %210 = add i32 %200, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %209, i64 %211
  %213 = getelementptr inbounds %struct._cpp_buff, ptr %104, i64 0, i32 2
  store ptr %212, ptr %213, align 8, !tbaa !144
  %214 = icmp ne i32 %77, %206
  %215 = zext i1 %214 to i64
  %216 = getelementptr inbounds %struct.macro_arg, ptr %74, i64 %215
  br label %217

217:                                              ; preds = %208, %199
  %218 = phi ptr [ %74, %199 ], [ %216, %208 ]
  %219 = getelementptr inbounds %struct.cpp_token, ptr %183, i64 0, i32 1
  %220 = load i8, ptr %219, align 4
  %221 = add i8 %220, -21
  %222 = icmp ult i8 %221, 2
  br i1 %222, label %223, label %72

223:                                              ; preds = %217
  %224 = icmp eq i8 %220, 22
  br i1 %224, label %225, label %238

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %227 = load ptr, ptr %226, align 8, !tbaa !110
  %228 = getelementptr inbounds %struct.cpp_context, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !112
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load i8, ptr %5, align 8, !tbaa !106
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231, %225
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1)
  br label %235

235:                                              ; preds = %234, %231
  %236 = load ptr, ptr %1, align 8, !tbaa !74
  %237 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef %236) #22
  br label %274

238:                                              ; preds = %223
  %239 = icmp eq i32 %75, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %238
  %241 = icmp eq i16 %205, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.macro_arg, ptr %66, i64 0, i32 3
  %244 = load i32, ptr %243, align 8, !tbaa !154
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i32
  br label %247

247:                                              ; preds = %242, %240, %238
  %248 = phi i32 [ 1, %240 ], [ %77, %238 ], [ %246, %242 ]
  %249 = tail call zeroext i8 @_cpp_arguments_ok(ptr noundef %0, ptr noundef %58, ptr noundef %1, i32 noundef %248), !range !120
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %274, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.cpp_macro, ptr %58, i64 0, i32 5
  %253 = load i8, ptr %252, align 2
  %254 = and i8 %253, 2
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %296, label %256

256:                                              ; preds = %251
  %257 = load i16, ptr %59, align 8, !tbaa !108
  %258 = zext i16 %257 to i32
  %259 = icmp ult i32 %248, %258
  br i1 %259, label %270, label %260

260:                                              ; preds = %256
  %261 = icmp eq i32 %248, 1
  br i1 %261, label %262, label %296

262:                                              ; preds = %260
  %263 = getelementptr inbounds %struct.macro_arg, ptr %66, i64 0, i32 3
  %264 = load i32, ptr %263, align 8, !tbaa !154
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %296

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 30
  %268 = load i8, ptr %267, align 4, !tbaa !155
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %296

270:                                              ; preds = %266, %256
  %271 = zext i16 %257 to i64
  %272 = getelementptr %struct.macro_arg, ptr %66, i64 %271
  %273 = getelementptr %struct.macro_arg, ptr %272, i64 -1
  store ptr null, ptr %273, align 8, !tbaa !145
  br label %296

274:                                              ; preds = %247, %235
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef %64) #22
  br label %296

275:                                              ; preds = %42
  %276 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 44
  %277 = icmp eq ptr %43, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %42, %275
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1)
  %279 = icmp eq ptr %39, null
  br i1 %279, label %296, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %282 = load ptr, ptr %281, align 8, !tbaa !110
  %283 = load ptr, ptr %282, align 8, !tbaa !111
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = tail call ptr @xmalloc(i64 noundef 56) #22
  %287 = load ptr, ptr %281, align 8, !tbaa !110
  %288 = getelementptr inbounds %struct.cpp_context, ptr %286, i64 0, i32 1
  store ptr %287, ptr %288, align 8, !tbaa !112
  store ptr null, ptr %286, align 8, !tbaa !111
  store ptr %286, ptr %287, align 8, !tbaa !111
  br label %289

289:                                              ; preds = %280, %285
  %290 = phi ptr [ %286, %285 ], [ %283, %280 ]
  store ptr %290, ptr %281, align 8, !tbaa !110
  %291 = getelementptr inbounds %struct.cpp_context, ptr %290, i64 0, i32 5
  store i8 1, ptr %291, align 8, !tbaa !113
  %292 = getelementptr inbounds %struct.cpp_context, ptr %290, i64 0, i32 3
  %293 = getelementptr inbounds %struct.cpp_context, ptr %290, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %292, i8 0, i64 16, i1 false)
  store ptr %39, ptr %293, align 8, !tbaa !52
  %294 = getelementptr inbounds %struct.cpp_token, ptr %39, i64 1
  %295 = getelementptr inbounds %struct.cpp_context, ptr %290, i64 0, i32 2, i32 0, i32 1
  store ptr %294, ptr %295, align 8, !tbaa !52
  br label %296

296:                                              ; preds = %274, %270, %266, %262, %260, %251, %275, %278, %289
  %297 = phi ptr [ null, %278 ], [ null, %289 ], [ null, %275 ], [ %182, %251 ], [ %182, %260 ], [ %182, %262 ], [ %182, %266 ], [ %182, %270 ], [ %182, %274 ]
  %298 = phi ptr [ null, %278 ], [ null, %289 ], [ null, %275 ], [ %64, %251 ], [ %64, %260 ], [ %64, %262 ], [ %64, %266 ], [ %64, %270 ], [ null, %274 ]
  store i8 0, ptr %37, align 1, !tbaa !140
  %299 = load i32, ptr %34, align 4, !tbaa !139
  %300 = add i32 %299, -1
  store i32 %300, ptr %34, align 4, !tbaa !139
  %301 = load i8, ptr %31, align 8, !tbaa !130
  %302 = add i8 %301, -1
  store i8 %302, ptr %31, align 8, !tbaa !130
  %303 = icmp eq ptr %298, null
  br i1 %303, label %304, label %319

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %306 = load i8, ptr %305, align 1, !tbaa !156
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %317, label %308

308:                                              ; preds = %304
  %309 = load ptr, ptr %24, align 8, !tbaa !52
  %310 = getelementptr inbounds %struct.cpp_macro, ptr %309, i64 0, i32 5
  %311 = load i8, ptr %310, align 2
  %312 = and i8 %311, 4
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = load ptr, ptr %1, align 8, !tbaa !74
  %316 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef %315) #22
  br label %317

317:                                              ; preds = %314, %308, %304
  %318 = icmp eq ptr %297, null
  br i1 %318, label %848, label %846

319:                                              ; preds = %296
  %320 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 4
  %321 = load i16, ptr %320, align 8, !tbaa !108
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %846, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct._cpp_buff, ptr %298, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !142
  %326 = load i8, ptr %26, align 2
  %327 = and i8 %326, 32
  %328 = icmp eq i8 %327, 0
  %329 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 3
  %330 = load i32, ptr %329, align 4, !tbaa !157
  br i1 %328, label %346, label %331

331:                                              ; preds = %323
  %332 = icmp eq i32 %330, 0
  br i1 %332, label %345, label %333

333:                                              ; preds = %331
  %334 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !52
  br label %336

336:                                              ; preds = %333, %342
  %337 = phi i32 [ 0, %333 ], [ %343, %342 ]
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds %struct.cpp_token, ptr %335, i64 %338, i32 1
  %340 = load i8, ptr %339, align 4
  %341 = icmp eq i8 %340, 38
  br i1 %341, label %346, label %342

342:                                              ; preds = %336
  %343 = add nuw i32 %337, 1
  %344 = icmp eq i32 %343, %330
  br i1 %344, label %345, label %336, !llvm.loop !158

345:                                              ; preds = %342, %331
  tail call void @abort() #25
  unreachable

346:                                              ; preds = %336, %323
  %347 = phi i32 [ %330, %323 ], [ %337, %336 ]
  %348 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !52
  %350 = zext i32 %347 to i64
  %351 = getelementptr inbounds %struct.cpp_token, ptr %349, i64 %350
  %352 = icmp eq i32 %347, 0
  br i1 %352, label %633, label %353

353:                                              ; preds = %346
  %354 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 6
  br label %355

355:                                              ; preds = %353, %629
  %356 = phi i32 [ %347, %353 ], [ %630, %629 ]
  %357 = phi ptr [ %349, %353 ], [ %631, %629 ]
  %358 = getelementptr inbounds %struct.cpp_token, ptr %357, i64 0, i32 1
  %359 = load i8, ptr %358, align 4
  %360 = icmp eq i8 %359, 69
  br i1 %360, label %361, label %629

361:                                              ; preds = %355
  %362 = add i32 %356, 2
  %363 = getelementptr inbounds %struct.cpp_token, ptr %357, i64 0, i32 3
  %364 = load i32, ptr %363, align 8, !tbaa !52
  %365 = add i32 %364, -1
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366
  %368 = getelementptr inbounds %struct.cpp_token, ptr %357, i64 0, i32 2
  %369 = load i16, ptr %368, align 2, !tbaa !119
  %370 = zext i16 %369 to i32
  %371 = and i32 %370, 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %537, label %373

373:                                              ; preds = %361
  %374 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !159
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %629

377:                                              ; preds = %373
  %378 = load ptr, ptr %354, align 8, !tbaa !160
  %379 = getelementptr inbounds %struct._cpp_buff, ptr %378, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !147
  %381 = getelementptr inbounds %struct._cpp_buff, ptr %378, i64 0, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !144
  %383 = ptrtoint ptr %380 to i64
  %384 = ptrtoint ptr %382 to i64
  %385 = sub i64 %383, %384
  %386 = icmp ult i64 %385, 3
  br i1 %386, label %387, label %388

387:                                              ; preds = %377
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %354, i64 noundef 3) #22
  br label %388

388:                                              ; preds = %387, %377
  %389 = load ptr, ptr %354, align 8, !tbaa !160
  %390 = getelementptr inbounds %struct._cpp_buff, ptr %389, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !144
  %392 = getelementptr inbounds i8, ptr %391, i64 1
  store i8 34, ptr %391, align 1, !tbaa !52
  %393 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 3
  %394 = load i32, ptr %393, align 8, !tbaa !154
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %509, label %396

396:                                              ; preds = %388, %501
  %397 = phi i64 [ %505, %501 ], [ 0, %388 ]
  %398 = phi ptr [ %504, %501 ], [ %392, %388 ]
  %399 = phi i32 [ %503, %501 ], [ 0, %388 ]
  %400 = phi ptr [ %502, %501 ], [ null, %388 ]
  %401 = load ptr, ptr %367, align 8, !tbaa !145
  %402 = getelementptr inbounds ptr, ptr %401, i64 %397
  %403 = load ptr, ptr %402, align 8, !tbaa !46
  %404 = getelementptr inbounds %struct.cpp_token, ptr %403, i64 0, i32 1
  %405 = load i8, ptr %404, align 4
  switch i8 %405, label %420 [
    i8 72, label %406
    i8 61, label %421
    i8 56, label %421
    i8 62, label %421
    i8 57, label %421
    i8 64, label %421
    i8 59, label %421
    i8 63, label %421
    i8 58, label %421
    i8 65, label %421
  ]

406:                                              ; preds = %396
  %407 = icmp eq ptr %400, null
  br i1 %407, label %417, label %408

408:                                              ; preds = %406
  %409 = getelementptr inbounds %struct.cpp_token, ptr %400, i64 0, i32 2
  %410 = load i16, ptr %409, align 2, !tbaa !119
  %411 = and i16 %410, 1
  %412 = icmp eq i16 %411, 0
  br i1 %412, label %413, label %501

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.cpp_token, ptr %403, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !52
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %501

417:                                              ; preds = %413, %406
  %418 = getelementptr inbounds %struct.cpp_token, ptr %403, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !52
  br label %501

420:                                              ; preds = %396
  br label %421

421:                                              ; preds = %396, %396, %396, %396, %396, %396, %396, %396, %420, %396
  %422 = phi i1 [ false, %420 ], [ true, %396 ], [ true, %396 ], [ true, %396 ], [ true, %396 ], [ true, %396 ], [ true, %396 ], [ true, %396 ], [ true, %396 ], [ true, %396 ]
  %423 = tail call i32 @cpp_token_len(ptr noundef %403) #22
  %424 = zext i32 %423 to i64
  %425 = shl nuw nsw i64 %424, 2
  %426 = select i1 %422, i64 %425, i64 %424
  %427 = add nuw nsw i64 %426, 3
  %428 = load ptr, ptr %354, align 8, !tbaa !160
  %429 = getelementptr inbounds %struct._cpp_buff, ptr %428, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !147
  %431 = ptrtoint ptr %430 to i64
  %432 = ptrtoint ptr %398 to i64
  %433 = sub i64 %431, %432
  %434 = icmp ult i64 %433, %427
  br i1 %434, label %435, label %444

435:                                              ; preds = %421
  %436 = getelementptr inbounds %struct._cpp_buff, ptr %428, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !144
  %438 = ptrtoint ptr %437 to i64
  %439 = sub i64 %432, %438
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %354, i64 noundef %427) #22
  %440 = load ptr, ptr %354, align 8, !tbaa !160
  %441 = getelementptr inbounds %struct._cpp_buff, ptr %440, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !144
  %443 = getelementptr inbounds i8, ptr %442, i64 %439
  br label %444

444:                                              ; preds = %435, %421
  %445 = phi ptr [ %443, %435 ], [ %398, %421 ]
  %446 = getelementptr inbounds i8, ptr %445, i64 -1
  %447 = load ptr, ptr %354, align 8, !tbaa !160
  %448 = getelementptr inbounds %struct._cpp_buff, ptr %447, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !144
  %450 = icmp eq ptr %446, %449
  br i1 %450, label %460, label %451

451:                                              ; preds = %444
  %452 = icmp eq ptr %400, null
  %453 = select i1 %452, ptr %403, ptr %400
  %454 = getelementptr inbounds %struct.cpp_token, ptr %453, i64 0, i32 2
  %455 = load i16, ptr %454, align 2, !tbaa !119
  %456 = and i16 %455, 1
  %457 = icmp eq i16 %456, 0
  br i1 %457, label %460, label %458

458:                                              ; preds = %451
  %459 = getelementptr inbounds i8, ptr %445, i64 1
  store i8 32, ptr %445, align 1, !tbaa !52
  br label %460

460:                                              ; preds = %458, %451, %444
  %461 = phi ptr [ %459, %458 ], [ %445, %451 ], [ %445, %444 ]
  br i1 %422, label %462, label %488

462:                                              ; preds = %460
  %463 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %427) #22
  %464 = getelementptr inbounds %struct._cpp_buff, ptr %463, i64 0, i32 2
  %465 = load ptr, ptr %464, align 8, !tbaa !144
  %466 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %403, ptr noundef %465, i8 noundef zeroext 1) #22
  %467 = ptrtoint ptr %466 to i64
  %468 = ptrtoint ptr %465 to i64
  %469 = sub i64 %467, %468
  %470 = trunc i64 %469 to i32
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %486, label %472

472:                                              ; preds = %462, %481
  %473 = phi i32 [ %476, %481 ], [ %470, %462 ]
  %474 = phi ptr [ %484, %481 ], [ %461, %462 ]
  %475 = phi ptr [ %477, %481 ], [ %465, %462 ]
  %476 = add i32 %473, -1
  %477 = getelementptr inbounds i8, ptr %475, i64 1
  %478 = load i8, ptr %475, align 1, !tbaa !52
  switch i8 %478, label %481 [
    i8 92, label %479
    i8 34, label %479
  ]

479:                                              ; preds = %472, %472
  %480 = getelementptr inbounds i8, ptr %474, i64 1
  store i8 92, ptr %474, align 1, !tbaa !52
  br label %481

481:                                              ; preds = %472, %479
  %482 = phi i64 [ 2, %479 ], [ 1, %472 ]
  %483 = phi ptr [ %480, %479 ], [ %474, %472 ]
  %484 = getelementptr inbounds i8, ptr %474, i64 %482
  store i8 %478, ptr %483, align 1, !tbaa !52
  %485 = icmp eq i32 %476, 0
  br i1 %485, label %486, label %472, !llvm.loop !86

486:                                              ; preds = %481, %462
  %487 = phi ptr [ %461, %462 ], [ %484, %481 ]
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef %463) #22
  br label %490

488:                                              ; preds = %460
  %489 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %403, ptr noundef %461, i8 noundef zeroext 1) #22
  br label %490

490:                                              ; preds = %488, %486
  %491 = phi ptr [ %487, %486 ], [ %489, %488 ]
  %492 = load i8, ptr %404, align 4
  %493 = icmp eq i8 %492, 60
  br i1 %493, label %494, label %501

494:                                              ; preds = %490
  %495 = getelementptr inbounds %struct.cpp_token, ptr %403, i64 0, i32 3, i32 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !52
  %497 = load i8, ptr %496, align 1, !tbaa !52
  %498 = icmp eq i8 %497, 92
  %499 = add i32 %399, 1
  %500 = select i1 %498, i32 %499, i32 0
  br label %501

501:                                              ; preds = %494, %490, %417, %413, %408
  %502 = phi ptr [ %419, %417 ], [ %400, %408 ], [ %400, %413 ], [ null, %490 ], [ null, %494 ]
  %503 = phi i32 [ %399, %417 ], [ %399, %408 ], [ %399, %413 ], [ 0, %490 ], [ %500, %494 ]
  %504 = phi ptr [ %398, %417 ], [ %398, %408 ], [ %398, %413 ], [ %491, %490 ], [ %491, %494 ]
  %505 = add nuw nsw i64 %397, 1
  %506 = load i32, ptr %393, align 8, !tbaa !154
  %507 = zext i32 %506 to i64
  %508 = icmp ult i64 %505, %507
  br i1 %508, label %396, label %509, !llvm.loop !161

509:                                              ; preds = %501, %388
  %510 = phi i32 [ 0, %388 ], [ %503, %501 ]
  %511 = phi ptr [ %392, %388 ], [ %504, %501 ]
  %512 = and i32 %510, 1
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %517, label %514

514:                                              ; preds = %509
  %515 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.38) #22
  %516 = getelementptr inbounds i8, ptr %511, i64 -1
  br label %517

517:                                              ; preds = %509, %514
  %518 = phi ptr [ %516, %514 ], [ %511, %509 ]
  %519 = getelementptr inbounds i8, ptr %518, i64 1
  store i8 34, ptr %518, align 1, !tbaa !52
  %520 = load ptr, ptr %354, align 8, !tbaa !160
  %521 = getelementptr inbounds %struct._cpp_buff, ptr %520, i64 0, i32 2
  %522 = load ptr, ptr %521, align 8, !tbaa !144
  %523 = ptrtoint ptr %519 to i64
  %524 = ptrtoint ptr %522 to i64
  %525 = sub i64 %523, %524
  %526 = getelementptr inbounds i8, ptr %518, i64 2
  store ptr %526, ptr %521, align 8, !tbaa !144
  %527 = sub i64 0, %525
  %528 = getelementptr inbounds i8, ptr %519, i64 %527
  %529 = trunc i64 %525 to i32
  %530 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %531 = and i64 %525, 4294967295
  %532 = getelementptr inbounds i8, ptr %528, i64 %531
  store i8 0, ptr %532, align 1, !tbaa !52
  %533 = getelementptr inbounds %struct.cpp_token, ptr %530, i64 0, i32 1
  store i8 61, ptr %533, align 4
  %534 = getelementptr inbounds %struct.cpp_token, ptr %530, i64 0, i32 3
  store i32 %529, ptr %534, align 8, !tbaa !52
  %535 = getelementptr inbounds %struct.cpp_token, ptr %530, i64 0, i32 3, i32 0, i32 1
  store ptr %528, ptr %535, align 8, !tbaa !52
  %536 = getelementptr inbounds %struct.cpp_token, ptr %530, i64 0, i32 2
  store i16 0, ptr %536, align 2, !tbaa !119
  store ptr %530, ptr %374, align 8, !tbaa !159
  br label %629

537:                                              ; preds = %361
  %538 = and i32 %370, 8
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %548

540:                                              ; preds = %537
  %541 = load ptr, ptr %348, align 8, !tbaa !52
  %542 = icmp ugt ptr %357, %541
  br i1 %542, label %543, label %553

543:                                              ; preds = %540
  %544 = getelementptr %struct.cpp_token, ptr %357, i64 -1, i32 2
  %545 = load i16, ptr %544, align 2, !tbaa !119
  %546 = and i16 %545, 8
  %547 = icmp eq i16 %546, 0
  br i1 %547, label %553, label %548

548:                                              ; preds = %543, %537
  %549 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 3
  %550 = load i32, ptr %549, align 8, !tbaa !154
  %551 = add i32 %356, 1
  %552 = add i32 %551, %550
  br label %629

553:                                              ; preds = %543, %540
  %554 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 1
  %555 = load ptr, ptr %554, align 8, !tbaa !162
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %624

557:                                              ; preds = %553
  %558 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 3
  %559 = load i32, ptr %558, align 8, !tbaa !154
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %624, label %561

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %563 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %564 = load i8, ptr %562, align 1, !tbaa !156
  store i8 0, ptr %562, align 1, !tbaa !156
  %565 = tail call ptr @xmalloc(i64 noundef 2048) #22
  store ptr %565, ptr %554, align 8, !tbaa !162
  %566 = load ptr, ptr %367, align 8, !tbaa !145
  %567 = load i32, ptr %558, align 8, !tbaa !154
  %568 = add i32 %567, 1
  %569 = load ptr, ptr %563, align 8, !tbaa !110
  %570 = load ptr, ptr %569, align 8, !tbaa !111
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %576

572:                                              ; preds = %561
  %573 = tail call ptr @xmalloc(i64 noundef 56) #22
  %574 = load ptr, ptr %563, align 8, !tbaa !110
  %575 = getelementptr inbounds %struct.cpp_context, ptr %573, i64 0, i32 1
  store ptr %574, ptr %575, align 8, !tbaa !112
  store ptr null, ptr %573, align 8, !tbaa !111
  store ptr %573, ptr %574, align 8, !tbaa !111
  br label %576

576:                                              ; preds = %572, %561
  %577 = phi ptr [ %573, %572 ], [ %570, %561 ]
  store ptr %577, ptr %563, align 8, !tbaa !110
  %578 = getelementptr inbounds %struct.cpp_context, ptr %577, i64 0, i32 3
  %579 = getelementptr inbounds %struct.cpp_context, ptr %577, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %578, i8 0, i64 17, i1 false)
  store ptr %566, ptr %579, align 8, !tbaa !52
  %580 = zext i32 %568 to i64
  %581 = getelementptr inbounds ptr, ptr %566, i64 %580
  %582 = getelementptr inbounds %struct.cpp_context, ptr %577, i64 0, i32 2, i32 0, i32 1
  store ptr %581, ptr %582, align 8, !tbaa !52
  %583 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 4
  br label %584

584:                                              ; preds = %601, %576
  %585 = phi i32 [ 256, %576 ], [ %596, %601 ]
  %586 = load i32, ptr %583, align 4, !tbaa !163
  %587 = add i32 %586, 1
  %588 = icmp ult i32 %587, %585
  br i1 %588, label %595, label %589

589:                                              ; preds = %584
  %590 = shl i32 %585, 1
  %591 = load ptr, ptr %554, align 8, !tbaa !162
  %592 = zext i32 %590 to i64
  %593 = shl nuw nsw i64 %592, 3
  %594 = tail call ptr @xrealloc(ptr noundef %591, i64 noundef %593) #22
  store ptr %594, ptr %554, align 8, !tbaa !162
  br label %595

595:                                              ; preds = %589, %584
  %596 = phi i32 [ %590, %589 ], [ %585, %584 ]
  %597 = tail call ptr @cpp_get_token(ptr noundef %0)
  %598 = getelementptr inbounds %struct.cpp_token, ptr %597, i64 0, i32 1
  %599 = load i8, ptr %598, align 4
  %600 = icmp eq i8 %599, 22
  br i1 %600, label %607, label %601

601:                                              ; preds = %595
  %602 = load ptr, ptr %554, align 8, !tbaa !162
  %603 = load i32, ptr %583, align 4, !tbaa !163
  %604 = add i32 %603, 1
  store i32 %604, ptr %583, align 4, !tbaa !163
  %605 = zext i32 %603 to i64
  %606 = getelementptr inbounds ptr, ptr %602, i64 %605
  store ptr %597, ptr %606, align 8, !tbaa !46
  br label %584

607:                                              ; preds = %595
  %608 = load ptr, ptr %563, align 8, !tbaa !110
  %609 = getelementptr inbounds %struct.cpp_context, ptr %608, i64 0, i32 4
  %610 = load ptr, ptr %609, align 8, !tbaa !114
  %611 = icmp eq ptr %610, null
  br i1 %611, label %616, label %612

612:                                              ; preds = %607
  %613 = getelementptr inbounds %struct.cpp_hashnode, ptr %610, i64 0, i32 3
  %614 = load i16, ptr %613, align 2
  %615 = and i16 %614, -2049
  store i16 %615, ptr %613, align 2
  br label %616

616:                                              ; preds = %612, %607
  %617 = getelementptr inbounds %struct.cpp_context, ptr %608, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !115
  %619 = icmp eq ptr %618, null
  br i1 %619, label %621, label %620

620:                                              ; preds = %616
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %618) #22
  br label %621

621:                                              ; preds = %620, %616
  %622 = getelementptr inbounds %struct.cpp_context, ptr %608, i64 0, i32 1
  %623 = load ptr, ptr %622, align 8, !tbaa !112
  store ptr %623, ptr %563, align 8, !tbaa !110
  store i8 %564, ptr %562, align 1, !tbaa !156
  br label %624

624:                                              ; preds = %621, %557, %553
  %625 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %366, i32 4
  %626 = load i32, ptr %625, align 4, !tbaa !163
  %627 = add i32 %356, 1
  %628 = add i32 %627, %626
  br label %629

629:                                              ; preds = %624, %548, %517, %373, %355
  %630 = phi i32 [ %362, %373 ], [ %362, %517 ], [ %552, %548 ], [ %628, %624 ], [ %356, %355 ]
  %631 = getelementptr inbounds %struct.cpp_token, ptr %357, i64 1
  %632 = icmp ult ptr %631, %351
  br i1 %632, label %355, label %633, !llvm.loop !164

633:                                              ; preds = %629, %346
  %634 = phi i32 [ %347, %346 ], [ %630, %629 ]
  %635 = zext i32 %634 to i64
  %636 = shl nuw nsw i64 %635, 3
  %637 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %636) #22
  %638 = getelementptr inbounds %struct._cpp_buff, ptr %637, i64 0, i32 1
  %639 = load ptr, ptr %638, align 8, !tbaa !142
  %640 = load ptr, ptr %348, align 8, !tbaa !52
  %641 = icmp ult ptr %640, %351
  br i1 %641, label %642, label %647

642:                                              ; preds = %633
  %643 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  %644 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %645 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %646 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  br label %651

647:                                              ; preds = %809, %633
  %648 = phi ptr [ %639, %633 ], [ %810, %809 ]
  %649 = load i16, ptr %320, align 8, !tbaa !108
  %650 = icmp eq i16 %649, 0
  br i1 %650, label %824, label %813

651:                                              ; preds = %642, %809
  %652 = phi ptr [ %640, %642 ], [ %811, %809 ]
  %653 = phi ptr [ %639, %642 ], [ %810, %809 ]
  %654 = getelementptr inbounds %struct.cpp_token, ptr %652, i64 0, i32 1
  %655 = load i8, ptr %654, align 4
  %656 = icmp eq i8 %655, 69
  br i1 %656, label %659, label %657

657:                                              ; preds = %651
  %658 = getelementptr inbounds ptr, ptr %653, i64 1
  store ptr %652, ptr %653, align 8, !tbaa !46
  br label %809

659:                                              ; preds = %651
  %660 = getelementptr inbounds %struct.cpp_token, ptr %652, i64 0, i32 3
  %661 = load i32, ptr %660, align 8, !tbaa !52
  %662 = add i32 %661, -1
  %663 = zext i32 %662 to i64
  %664 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %663
  %665 = getelementptr inbounds %struct.cpp_token, ptr %652, i64 0, i32 2
  %666 = load i16, ptr %665, align 2, !tbaa !119
  %667 = zext i16 %666 to i32
  %668 = and i32 %667, 4
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %672, label %670

670:                                              ; preds = %659
  %671 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %663, i32 2
  br label %718

672:                                              ; preds = %659
  %673 = and i32 %667, 8
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %679, label %675

675:                                              ; preds = %672
  %676 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %663, i32 3
  %677 = load i32, ptr %676, align 8, !tbaa !154
  %678 = load ptr, ptr %664, align 8, !tbaa !145
  br label %718

679:                                              ; preds = %672
  %680 = load ptr, ptr %348, align 8, !tbaa !52
  %681 = icmp eq ptr %652, %680
  br i1 %681, label %713, label %682

682:                                              ; preds = %679
  %683 = getelementptr %struct.cpp_token, ptr %652, i64 -1, i32 2
  %684 = load i16, ptr %683, align 2, !tbaa !119
  %685 = and i16 %684, 8
  %686 = icmp eq i16 %685, 0
  br i1 %686, label %713, label %687

687:                                              ; preds = %682
  %688 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %663, i32 3
  %689 = load i32, ptr %688, align 8, !tbaa !154
  %690 = load ptr, ptr %664, align 8, !tbaa !145
  %691 = icmp eq ptr %653, %639
  br i1 %691, label %718, label %692

692:                                              ; preds = %687
  %693 = getelementptr inbounds ptr, ptr %653, i64 -1
  %694 = load ptr, ptr %693, align 8, !tbaa !46
  %695 = getelementptr inbounds %struct.cpp_token, ptr %694, i64 0, i32 1
  %696 = load i8, ptr %695, align 4
  %697 = icmp eq i8 %696, 19
  br i1 %697, label %698, label %710

698:                                              ; preds = %692
  %699 = load i8, ptr %26, align 2
  %700 = and i8 %699, 2
  %701 = icmp eq i8 %700, 0
  br i1 %701, label %710, label %702

702:                                              ; preds = %698
  %703 = load i16, ptr %320, align 8, !tbaa !108
  %704 = zext i16 %703 to i32
  %705 = icmp eq i32 %661, %704
  br i1 %705, label %706, label %710

706:                                              ; preds = %702
  %707 = icmp eq ptr %690, null
  %708 = select i1 %707, ptr %693, ptr %653
  %709 = select i1 %707, ptr null, ptr %693
  br label %718

710:                                              ; preds = %702, %698, %692
  %711 = icmp eq i32 %689, 0
  %712 = select i1 %711, ptr %693, ptr null
  br label %718

713:                                              ; preds = %682, %679
  %714 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %663, i32 4
  %715 = load i32, ptr %714, align 4, !tbaa !163
  %716 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %663, i32 1
  %717 = load ptr, ptr %716, align 8, !tbaa !162
  br label %718

718:                                              ; preds = %713, %710, %706, %687, %675, %670
  %719 = phi ptr [ %653, %670 ], [ %653, %675 ], [ %653, %687 ], [ %653, %713 ], [ %708, %706 ], [ %653, %710 ]
  %720 = phi i32 [ 1, %670 ], [ %677, %675 ], [ %689, %687 ], [ %715, %713 ], [ %689, %706 ], [ %689, %710 ]
  %721 = phi ptr [ %671, %670 ], [ %678, %675 ], [ %690, %687 ], [ %717, %713 ], [ %690, %706 ], [ %690, %710 ]
  %722 = phi ptr [ null, %670 ], [ null, %675 ], [ null, %687 ], [ null, %713 ], [ %709, %706 ], [ %712, %710 ]
  %723 = load i8, ptr %5, align 8, !tbaa !106
  %724 = icmp eq i8 %723, 0
  br i1 %724, label %728, label %725

725:                                              ; preds = %718
  %726 = load i8, ptr %643, align 1, !tbaa !165
  %727 = icmp eq i8 %726, 0
  br i1 %727, label %742, label %728

728:                                              ; preds = %725, %718
  %729 = load ptr, ptr %348, align 8, !tbaa !52
  %730 = icmp eq ptr %652, %729
  br i1 %730, label %742, label %731

731:                                              ; preds = %728
  %732 = getelementptr %struct.cpp_token, ptr %652, i64 -1, i32 2
  %733 = load i16, ptr %732, align 2, !tbaa !119
  %734 = and i16 %733, 8
  %735 = icmp eq i16 %734, 0
  br i1 %735, label %736, label %742

736:                                              ; preds = %731
  %737 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %738 = getelementptr inbounds %struct.cpp_token, ptr %737, i64 0, i32 1
  store i8 72, ptr %738, align 4
  %739 = getelementptr inbounds %struct.cpp_token, ptr %737, i64 0, i32 3
  store ptr %652, ptr %739, align 8, !tbaa !52
  %740 = getelementptr inbounds %struct.cpp_token, ptr %737, i64 0, i32 2
  store i16 0, ptr %740, align 2, !tbaa !119
  %741 = getelementptr inbounds ptr, ptr %719, i64 1
  store ptr %737, ptr %719, align 8, !tbaa !46
  br label %742

742:                                              ; preds = %725, %736, %731, %728
  %743 = phi ptr [ %719, %731 ], [ %741, %736 ], [ %719, %728 ], [ %719, %725 ]
  %744 = icmp eq i32 %720, 0
  br i1 %744, label %754, label %745

745:                                              ; preds = %742
  %746 = zext i32 %720 to i64
  %747 = shl nuw nsw i64 %746, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %743, ptr align 8 %721, i64 %747, i1 false)
  %748 = getelementptr inbounds ptr, ptr %743, i64 %746
  %749 = load i16, ptr %665, align 2, !tbaa !119
  %750 = and i16 %749, 8
  %751 = icmp eq i16 %750, 0
  %752 = getelementptr inbounds ptr, ptr %748, i64 -1
  %753 = select i1 %751, ptr %722, ptr %752
  br label %778

754:                                              ; preds = %742
  %755 = load i8, ptr %644, align 1, !tbaa !109
  %756 = icmp eq i8 %755, 0
  br i1 %756, label %778, label %757

757:                                              ; preds = %754
  %758 = load i8, ptr %26, align 2
  %759 = and i8 %758, 4
  %760 = icmp eq i8 %759, 0
  br i1 %760, label %761, label %778

761:                                              ; preds = %757
  %762 = load i8, ptr %645, align 1, !tbaa !166
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %764, label %778

764:                                              ; preds = %761
  %765 = load ptr, ptr %0, align 8, !tbaa !93
  %766 = icmp eq ptr %765, null
  br i1 %766, label %771, label %767

767:                                              ; preds = %764
  %768 = getelementptr inbounds %struct.cpp_buffer, ptr %765, i64 0, i32 15
  %769 = load i8, ptr %768, align 2, !tbaa !94
  %770 = zext i8 %769 to i32
  br label %771

771:                                              ; preds = %764, %767
  %772 = phi i32 [ %770, %767 ], [ 0, %764 ]
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %778

774:                                              ; preds = %771
  %775 = load ptr, ptr %1, align 8, !tbaa !74
  %776 = load i32, ptr %660, align 8, !tbaa !52
  %777 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef %775, i32 noundef %776) #22
  br label %778

778:                                              ; preds = %774, %771, %761, %757, %754, %745
  %779 = phi ptr [ %743, %757 ], [ %743, %761 ], [ %743, %771 ], [ %743, %774 ], [ %743, %754 ], [ %748, %745 ]
  %780 = phi ptr [ %722, %757 ], [ %722, %761 ], [ %722, %771 ], [ %722, %774 ], [ %722, %754 ], [ %753, %745 ]
  %781 = load i8, ptr %5, align 8, !tbaa !106
  %782 = icmp eq i8 %781, 0
  br i1 %782, label %783, label %789

783:                                              ; preds = %778
  %784 = load i16, ptr %665, align 2, !tbaa !119
  %785 = and i16 %784, 8
  %786 = icmp eq i16 %785, 0
  br i1 %786, label %787, label %789

787:                                              ; preds = %783
  %788 = getelementptr inbounds ptr, ptr %779, i64 1
  store ptr %646, ptr %779, align 8, !tbaa !46
  br label %789

789:                                              ; preds = %787, %783, %778
  %790 = phi ptr [ %779, %778 ], [ %779, %783 ], [ %788, %787 ]
  %791 = icmp eq ptr %780, null
  br i1 %791, label %809, label %792

792:                                              ; preds = %789
  %793 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %794 = load ptr, ptr %780, align 8, !tbaa !46
  %795 = getelementptr inbounds %struct.cpp_token, ptr %794, i64 0, i32 1
  %796 = load i8, ptr %795, align 4
  %797 = getelementptr inbounds %struct.cpp_token, ptr %793, i64 0, i32 1
  store i8 %796, ptr %797, align 4
  %798 = getelementptr inbounds %struct.cpp_token, ptr %793, i64 0, i32 3
  %799 = load ptr, ptr %780, align 8, !tbaa !46
  %800 = getelementptr inbounds %struct.cpp_token, ptr %799, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %798, ptr noundef nonnull align 8 dereferenceable(16) %800, i64 16, i1 false), !tbaa.struct !133
  %801 = load i16, ptr %665, align 2, !tbaa !119
  %802 = and i16 %801, 8
  %803 = load ptr, ptr %780, align 8, !tbaa !46
  %804 = getelementptr inbounds %struct.cpp_token, ptr %803, i64 0, i32 2
  %805 = load i16, ptr %804, align 2, !tbaa !119
  %806 = getelementptr inbounds %struct.cpp_token, ptr %793, i64 0, i32 2
  %807 = and i16 %805, -9
  %808 = or disjoint i16 %807, %802
  store i16 %808, ptr %806, align 2, !tbaa !119
  store ptr %793, ptr %780, align 8, !tbaa !46
  br label %809

809:                                              ; preds = %792, %789, %657
  %810 = phi ptr [ %658, %657 ], [ %790, %792 ], [ %790, %789 ]
  %811 = getelementptr inbounds %struct.cpp_token, ptr %652, i64 1
  %812 = icmp ult ptr %811, %351
  br i1 %812, label %651, label %647, !llvm.loop !167

813:                                              ; preds = %647, %819
  %814 = phi i64 [ %820, %819 ], [ 0, %647 ]
  %815 = getelementptr inbounds %struct.macro_arg, ptr %325, i64 %814, i32 1
  %816 = load ptr, ptr %815, align 8, !tbaa !162
  %817 = icmp eq ptr %816, null
  br i1 %817, label %819, label %818

818:                                              ; preds = %813
  tail call void @free(ptr noundef %816) #22
  br label %819

819:                                              ; preds = %818, %813
  %820 = add nuw nsw i64 %814, 1
  %821 = load i16, ptr %320, align 8, !tbaa !108
  %822 = zext i16 %821 to i64
  %823 = icmp ult i64 %820, %822
  br i1 %823, label %813, label %824, !llvm.loop !168

824:                                              ; preds = %819, %647
  %825 = ptrtoint ptr %648 to i64
  %826 = ptrtoint ptr %639 to i64
  %827 = sub i64 %825, %826
  %828 = lshr exact i64 %827, 3
  %829 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %830 = load ptr, ptr %829, align 8, !tbaa !110
  %831 = load ptr, ptr %830, align 8, !tbaa !111
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %837

833:                                              ; preds = %824
  %834 = tail call ptr @xmalloc(i64 noundef 56) #22
  %835 = load ptr, ptr %829, align 8, !tbaa !110
  %836 = getelementptr inbounds %struct.cpp_context, ptr %834, i64 0, i32 1
  store ptr %835, ptr %836, align 8, !tbaa !112
  store ptr null, ptr %834, align 8, !tbaa !111
  store ptr %834, ptr %835, align 8, !tbaa !111
  br label %837

837:                                              ; preds = %824, %833
  %838 = phi ptr [ %834, %833 ], [ %831, %824 ]
  store ptr %838, ptr %829, align 8, !tbaa !110
  %839 = getelementptr inbounds %struct.cpp_context, ptr %838, i64 0, i32 5
  store i8 0, ptr %839, align 8, !tbaa !113
  %840 = getelementptr inbounds %struct.cpp_context, ptr %838, i64 0, i32 4
  store ptr %1, ptr %840, align 8, !tbaa !114
  %841 = getelementptr inbounds %struct.cpp_context, ptr %838, i64 0, i32 3
  store ptr %637, ptr %841, align 8, !tbaa !115
  %842 = getelementptr inbounds %struct.cpp_context, ptr %838, i64 0, i32 2
  store ptr %639, ptr %842, align 8, !tbaa !52
  %843 = and i64 %828, 4294967295
  %844 = getelementptr inbounds ptr, ptr %639, i64 %843
  %845 = getelementptr inbounds %struct.cpp_context, ptr %838, i64 0, i32 2, i32 0, i32 1
  store ptr %844, ptr %845, align 8, !tbaa !52
  br label %846

846:                                              ; preds = %319, %837, %317
  %847 = phi ptr [ %297, %317 ], [ %298, %837 ], [ %298, %319 ]
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %847) #22
  br label %848

848:                                              ; preds = %846, %317
  br i1 %303, label %970, label %849

849:                                              ; preds = %848, %23
  %850 = phi ptr [ null, %23 ], [ %297, %848 ]
  %851 = load i16, ptr %7, align 2
  %852 = or i16 %851, 2048
  store i16 %852, ptr %7, align 2
  %853 = and i16 %851, 8192
  %854 = icmp eq i16 %853, 0
  br i1 %854, label %855, label %863

855:                                              ; preds = %849
  %856 = or i16 %851, 10240
  store i16 %856, ptr %7, align 2
  %857 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %858 = load ptr, ptr %857, align 8, !tbaa !137
  %859 = icmp eq ptr %858, null
  br i1 %859, label %863, label %860

860:                                              ; preds = %855
  %861 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %862 = load i32, ptr %861, align 8, !tbaa !138
  tail call void %858(ptr noundef %0, i32 noundef %862, ptr noundef %1) #22
  br label %863

863:                                              ; preds = %855, %860, %849
  %864 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %865 = load ptr, ptr %864, align 8, !tbaa !169
  %866 = icmp eq ptr %865, null
  br i1 %866, label %869, label %867

867:                                              ; preds = %863
  %868 = load i32, ptr %2, align 8, !tbaa !128
  tail call void %865(ptr noundef %0, i32 noundef %868, ptr noundef %1) #22
  br label %869

869:                                              ; preds = %867, %863
  %870 = load i8, ptr %26, align 2
  %871 = or i8 %870, 8
  store i8 %871, ptr %26, align 2
  %872 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 4
  %873 = load i16, ptr %872, align 8, !tbaa !108
  %874 = icmp eq i16 %873, 0
  br i1 %874, label %875, label %913

875:                                              ; preds = %869
  %876 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !52
  %878 = and i8 %870, 32
  %879 = icmp eq i8 %878, 0
  %880 = getelementptr inbounds %struct.cpp_macro, ptr %25, i64 0, i32 3
  %881 = load i32, ptr %880, align 4, !tbaa !157
  br i1 %879, label %894, label %882

882:                                              ; preds = %875
  %883 = icmp eq i32 %881, 0
  br i1 %883, label %893, label %884

884:                                              ; preds = %882, %890
  %885 = phi i32 [ %891, %890 ], [ 0, %882 ]
  %886 = zext i32 %885 to i64
  %887 = getelementptr inbounds %struct.cpp_token, ptr %877, i64 %886, i32 1
  %888 = load i8, ptr %887, align 4
  %889 = icmp eq i8 %888, 38
  br i1 %889, label %894, label %890

890:                                              ; preds = %884
  %891 = add nuw i32 %885, 1
  %892 = icmp eq i32 %891, %881
  br i1 %892, label %893, label %884, !llvm.loop !158

893:                                              ; preds = %890, %882
  tail call void @abort() #25
  unreachable

894:                                              ; preds = %884, %875
  %895 = phi i32 [ %881, %875 ], [ %885, %884 ]
  %896 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %897 = load ptr, ptr %896, align 8, !tbaa !110
  %898 = load ptr, ptr %897, align 8, !tbaa !111
  %899 = icmp eq ptr %898, null
  br i1 %899, label %900, label %904

900:                                              ; preds = %894
  %901 = tail call ptr @xmalloc(i64 noundef 56) #22
  %902 = load ptr, ptr %896, align 8, !tbaa !110
  %903 = getelementptr inbounds %struct.cpp_context, ptr %901, i64 0, i32 1
  store ptr %902, ptr %903, align 8, !tbaa !112
  store ptr null, ptr %901, align 8, !tbaa !111
  store ptr %901, ptr %902, align 8, !tbaa !111
  br label %904

904:                                              ; preds = %894, %900
  %905 = phi ptr [ %901, %900 ], [ %898, %894 ]
  store ptr %905, ptr %896, align 8, !tbaa !110
  %906 = getelementptr inbounds %struct.cpp_context, ptr %905, i64 0, i32 5
  store i8 1, ptr %906, align 8, !tbaa !113
  %907 = getelementptr inbounds %struct.cpp_context, ptr %905, i64 0, i32 4
  store ptr %1, ptr %907, align 8, !tbaa !114
  %908 = getelementptr inbounds %struct.cpp_context, ptr %905, i64 0, i32 3
  store ptr null, ptr %908, align 8, !tbaa !115
  %909 = getelementptr inbounds %struct.cpp_context, ptr %905, i64 0, i32 2
  store ptr %877, ptr %909, align 8, !tbaa !52
  %910 = zext i32 %895 to i64
  %911 = getelementptr inbounds %struct.cpp_token, ptr %877, i64 %910
  %912 = getelementptr inbounds %struct.cpp_context, ptr %905, i64 0, i32 2, i32 0, i32 1
  store ptr %911, ptr %912, align 8, !tbaa !52
  br label %913

913:                                              ; preds = %904, %869
  %914 = icmp eq ptr %850, null
  br i1 %914, label %970, label %915

915:                                              ; preds = %913
  %916 = load i8, ptr %5, align 8, !tbaa !106
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %918, label %938

918:                                              ; preds = %915
  %919 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %920 = getelementptr inbounds %struct.cpp_token, ptr %919, i64 0, i32 1
  store i8 72, ptr %920, align 4
  %921 = getelementptr inbounds %struct.cpp_token, ptr %919, i64 0, i32 3
  store ptr %2, ptr %921, align 8, !tbaa !52
  %922 = getelementptr inbounds %struct.cpp_token, ptr %919, i64 0, i32 2
  store i16 0, ptr %922, align 2, !tbaa !119
  %923 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %924 = load ptr, ptr %923, align 8, !tbaa !110
  %925 = load ptr, ptr %924, align 8, !tbaa !111
  %926 = icmp eq ptr %925, null
  br i1 %926, label %927, label %931

927:                                              ; preds = %918
  %928 = tail call ptr @xmalloc(i64 noundef 56) #22
  %929 = load ptr, ptr %923, align 8, !tbaa !110
  %930 = getelementptr inbounds %struct.cpp_context, ptr %928, i64 0, i32 1
  store ptr %929, ptr %930, align 8, !tbaa !112
  store ptr null, ptr %928, align 8, !tbaa !111
  store ptr %928, ptr %929, align 8, !tbaa !111
  br label %931

931:                                              ; preds = %918, %927
  %932 = phi ptr [ %928, %927 ], [ %925, %918 ]
  store ptr %932, ptr %923, align 8, !tbaa !110
  %933 = getelementptr inbounds %struct.cpp_context, ptr %932, i64 0, i32 5
  store i8 1, ptr %933, align 8, !tbaa !113
  %934 = getelementptr inbounds %struct.cpp_context, ptr %932, i64 0, i32 3
  %935 = getelementptr inbounds %struct.cpp_context, ptr %932, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %934, i8 0, i64 16, i1 false)
  store ptr %919, ptr %935, align 8, !tbaa !52
  %936 = getelementptr inbounds %struct.cpp_token, ptr %919, i64 1
  %937 = getelementptr inbounds %struct.cpp_context, ptr %932, i64 0, i32 2, i32 0, i32 1
  store ptr %936, ptr %937, align 8, !tbaa !52
  br label %938

938:                                              ; preds = %931, %915
  %939 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  br label %940

940:                                              ; preds = %958, %938
  %941 = phi ptr [ %850, %938 ], [ %942, %958 ]
  %942 = load ptr, ptr %941, align 8, !tbaa !151
  store ptr null, ptr %941, align 8, !tbaa !151
  %943 = getelementptr inbounds %struct._cpp_buff, ptr %941, i64 0, i32 1
  %944 = load ptr, ptr %943, align 8, !tbaa !142
  %945 = getelementptr inbounds %struct._cpp_buff, ptr %941, i64 0, i32 2
  %946 = load ptr, ptr %945, align 8, !tbaa !144
  %947 = ptrtoint ptr %946 to i64
  %948 = ptrtoint ptr %944 to i64
  %949 = sub i64 %947, %948
  %950 = lshr exact i64 %949, 3
  %951 = load ptr, ptr %939, align 8, !tbaa !110
  %952 = load ptr, ptr %951, align 8, !tbaa !111
  %953 = icmp eq ptr %952, null
  br i1 %953, label %954, label %958

954:                                              ; preds = %940
  %955 = tail call ptr @xmalloc(i64 noundef 56) #22
  %956 = load ptr, ptr %939, align 8, !tbaa !110
  %957 = getelementptr inbounds %struct.cpp_context, ptr %955, i64 0, i32 1
  store ptr %956, ptr %957, align 8, !tbaa !112
  store ptr null, ptr %955, align 8, !tbaa !111
  store ptr %955, ptr %956, align 8, !tbaa !111
  br label %958

958:                                              ; preds = %940, %954
  %959 = phi ptr [ %955, %954 ], [ %952, %940 ]
  store ptr %959, ptr %939, align 8, !tbaa !110
  %960 = getelementptr inbounds %struct.cpp_context, ptr %959, i64 0, i32 5
  store i8 0, ptr %960, align 8, !tbaa !113
  %961 = getelementptr inbounds %struct.cpp_context, ptr %959, i64 0, i32 4
  store ptr null, ptr %961, align 8, !tbaa !114
  %962 = getelementptr inbounds %struct.cpp_context, ptr %959, i64 0, i32 3
  store ptr %941, ptr %962, align 8, !tbaa !115
  %963 = getelementptr inbounds %struct.cpp_context, ptr %959, i64 0, i32 2
  store ptr %944, ptr %963, align 8, !tbaa !52
  %964 = and i64 %950, 4294967295
  %965 = getelementptr inbounds ptr, ptr %944, i64 %964
  %966 = getelementptr inbounds %struct.cpp_context, ptr %959, i64 0, i32 2, i32 0, i32 1
  store ptr %965, ptr %966, align 8, !tbaa !52
  %967 = icmp eq ptr %942, null
  br i1 %967, label %970, label %940, !llvm.loop !170

968:                                              ; preds = %19
  %969 = tail call fastcc i32 @builtin_macro(ptr noundef %0, ptr noundef %1)
  br label %970

970:                                              ; preds = %958, %848, %913, %968
  %971 = phi i32 [ %969, %968 ], [ 1, %913 ], [ 0, %848 ], [ 2, %958 ]
  ret i32 %971
}

declare ptr @_cpp_temp_token(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @cpp_get_token_with_location(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 !prof !171 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 13
  store i8 0, ptr %4, align 4, !tbaa !117
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 12
  br label %8

8:                                                ; preds = %228, %2
  %9 = phi ptr [ undef, %2 ], [ %230, %228 ]
  %10 = phi ptr [ undef, %2 ], [ %231, %228 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !118

15:                                               ; preds = %8
  %16 = tail call ptr @_cpp_lex_token(ptr noundef %0) #22
  br label %113

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %93, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !113
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 1
  store ptr %28, ptr %18, align 8, !tbaa !52
  br label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds ptr, ptr %19, i64 1
  store ptr %30, ptr %18, align 8, !tbaa !52
  %31 = load ptr, ptr %19, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %19, %27 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.cpp_token, ptr %33, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !119
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %113, label %38

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %33, ptr %3, align 8, !tbaa !46
  %39 = load ptr, ptr %5, align 8, !tbaa !110
  %40 = getelementptr inbounds %struct.cpp_context, ptr %39, i64 0, i32 5
  %41 = getelementptr inbounds %struct.cpp_context, ptr %39, i64 0, i32 2
  br label %42

42:                                               ; preds = %65, %38
  %43 = load i8, ptr %40, align 8, !tbaa !113
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr %41, align 8, !tbaa !52
  br i1 %44, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_token, ptr %45, i64 1
  store ptr %47, ptr %41, align 8, !tbaa !52
  br label %51

48:                                               ; preds = %42
  %49 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %49, ptr %41, align 8, !tbaa !52
  %50 = load ptr, ptr %45, align 8, !tbaa !46
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi ptr [ %45, %46 ], [ %50, %48 ]
  %53 = getelementptr inbounds %struct.cpp_token, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 72
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cpp_token, ptr %52, i64 0, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !119
  %59 = and i16 %58, 8
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void @abort() #25
  unreachable

62:                                               ; preds = %56, %51
  %63 = call fastcc zeroext i8 @paste_tokens(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %52), !range !120
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.cpp_token, ptr %52, i64 0, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !119
  %68 = and i16 %67, 8
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %42, !llvm.loop !121

70:                                               ; preds = %65, %62
  %71 = load ptr, ptr %3, align 8, !tbaa !46
  %72 = load ptr, ptr %5, align 8, !tbaa !110
  %73 = load ptr, ptr %72, align 8, !tbaa !111
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = tail call ptr @xmalloc(i64 noundef 56) #22
  %77 = load ptr, ptr %5, align 8, !tbaa !110
  %78 = getelementptr inbounds %struct.cpp_context, ptr %76, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !112
  store ptr null, ptr %76, align 8, !tbaa !111
  store ptr %76, ptr %77, align 8, !tbaa !111
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi ptr [ %76, %75 ], [ %73, %70 ]
  store ptr %80, ptr %5, align 8, !tbaa !110
  %81 = getelementptr inbounds %struct.cpp_context, ptr %80, i64 0, i32 5
  store i8 1, ptr %81, align 8, !tbaa !113
  %82 = getelementptr inbounds %struct.cpp_context, ptr %80, i64 0, i32 3
  %83 = getelementptr inbounds %struct.cpp_context, ptr %80, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 0, i64 16, i1 false)
  store ptr %71, ptr %83, align 8, !tbaa !52
  %84 = getelementptr inbounds %struct.cpp_token, ptr %71, i64 1
  %85 = getelementptr inbounds %struct.cpp_context, ptr %80, i64 0, i32 2, i32 0, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %86 = load i8, ptr %6, align 8, !tbaa !106
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %228, !llvm.loop !122

88:                                               ; preds = %79
  %89 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %90 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 1
  store i8 72, ptr %90, align 4
  %91 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3
  store ptr %33, ptr %91, align 8, !tbaa !52
  %92 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 2
  store i16 0, ptr %92, align 2, !tbaa !119
  br label %228

93:                                               ; preds = %17
  %94 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !114
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cpp_hashnode, ptr %95, i64 0, i32 3
  %99 = load i16, ptr %98, align 2
  %100 = and i16 %99, -2049
  store i16 %100, ptr %98, align 2
  br label %101

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !115
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %103) #22
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 43
  %108 = load ptr, ptr %12, align 8, !tbaa !112
  store ptr %108, ptr %5, align 8, !tbaa !110
  %109 = load i8, ptr %6, align 8, !tbaa !106
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 1, i32 3
  %112 = select i1 %110, ptr %107, ptr %10
  br label %228, !llvm.loop !122

113:                                              ; preds = %32, %15
  %114 = phi ptr [ %33, %32 ], [ %16, %15 ]
  %115 = load i8, ptr %6, align 8, !tbaa !106
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %121, label %117, !prof !123

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.cpp_token, ptr %114, i64 0, i32 1
  %119 = load i8, ptr %118, align 4
  %120 = icmp eq i8 %119, 68
  br i1 %120, label %228, label %121, !prof !124, !llvm.loop !122

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.cpp_token, ptr %114, i64 0, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 53
  br i1 %124, label %125, label %228, !prof !125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.cpp_token, ptr %114, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !52
  %128 = getelementptr inbounds %struct.cpp_hashnode, ptr %127, i64 0, i32 3
  %129 = load i16, ptr %128, align 2
  %130 = and i16 %129, 63
  %131 = icmp eq i16 %130, 1
  br i1 %131, label %132, label %228, !prof !126

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.cpp_token, ptr %114, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !119
  %135 = and i16 %134, 32
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %228, !prof !127

137:                                              ; preds = %132
  %138 = and i16 %129, 2048
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %220, !prof !127

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.cpp_context, ptr %11, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !114
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, ptr %114, align 8, !tbaa !128
  store i32 %145, ptr %7, align 8, !tbaa !129
  br label %146

146:                                              ; preds = %144, %140
  %147 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %148 = load i8, ptr %147, align 8, !tbaa !130
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %228, !prof !131

150:                                              ; preds = %146
  %151 = load i16, ptr %128, align 2
  %152 = and i16 %151, 16384
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %205, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 11
  %156 = load ptr, ptr %155, align 8, !tbaa !132
  %157 = icmp eq ptr %156, null
  br i1 %157, label %207, label %158

158:                                              ; preds = %154
  %159 = tail call ptr @cpp_peek_token(ptr noundef %0, i32 noundef 0) #22
  %160 = getelementptr inbounds %struct.cpp_token, ptr %159, i64 0, i32 1
  %161 = load i8, ptr %160, align 4
  %162 = icmp eq i8 %161, 72
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.cpp_token, ptr %159, i64 0, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !119
  %166 = and i16 %165, 1
  %167 = icmp ne i16 %166, 0
  br label %168

168:                                              ; preds = %163, %158
  %169 = phi i1 [ true, %158 ], [ %167, %163 ]
  %170 = load ptr, ptr %155, align 8, !tbaa !132
  %171 = tail call ptr %170(ptr noundef %0, ptr noundef %114) #22
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = tail call fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef nonnull %171, ptr noundef %114) #26
  br label %207

175:                                              ; preds = %168
  br i1 %169, label %176, label %207

176:                                              ; preds = %175
  %177 = tail call ptr @cpp_peek_token(ptr noundef %0, i32 noundef 0) #22
  %178 = getelementptr inbounds %struct.cpp_token, ptr %177, i64 0, i32 1
  %179 = load i8, ptr %178, align 4
  %180 = icmp eq i8 %179, 72
  br i1 %180, label %207, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.cpp_token, ptr %177, i64 0, i32 2
  %183 = load i16, ptr %182, align 2, !tbaa !119
  %184 = and i16 %183, 1
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %181
  %187 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %188 = getelementptr inbounds %struct.cpp_token, ptr %187, i64 0, i32 1
  store i8 72, ptr %188, align 4
  %189 = getelementptr inbounds %struct.cpp_token, ptr %187, i64 0, i32 3
  store ptr %177, ptr %189, align 8, !tbaa !52
  %190 = getelementptr inbounds %struct.cpp_token, ptr %187, i64 0, i32 2
  store i16 0, ptr %190, align 2, !tbaa !119
  %191 = load ptr, ptr %5, align 8, !tbaa !110
  %192 = load ptr, ptr %191, align 8, !tbaa !111
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = tail call ptr @xmalloc(i64 noundef 56) #22
  %196 = load ptr, ptr %5, align 8, !tbaa !110
  %197 = getelementptr inbounds %struct.cpp_context, ptr %195, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !112
  store ptr null, ptr %195, align 8, !tbaa !111
  store ptr %195, ptr %196, align 8, !tbaa !111
  br label %198

198:                                              ; preds = %194, %186
  %199 = phi ptr [ %195, %194 ], [ %192, %186 ]
  store ptr %199, ptr %5, align 8, !tbaa !110
  %200 = getelementptr inbounds %struct.cpp_context, ptr %199, i64 0, i32 5
  store i8 1, ptr %200, align 8, !tbaa !113
  %201 = getelementptr inbounds %struct.cpp_context, ptr %199, i64 0, i32 3
  %202 = getelementptr inbounds %struct.cpp_context, ptr %199, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %201, i8 0, i64 16, i1 false)
  store ptr %187, ptr %202, align 8, !tbaa !52
  %203 = getelementptr inbounds %struct.cpp_token, ptr %187, i64 1
  %204 = getelementptr inbounds %struct.cpp_context, ptr %199, i64 0, i32 2, i32 0, i32 1
  store ptr %203, ptr %204, align 8, !tbaa !52
  br label %207

205:                                              ; preds = %150
  %206 = tail call fastcc i32 @enter_macro_context(ptr noundef %0, ptr noundef %127, ptr noundef %114) #26
  br label %207

207:                                              ; preds = %205, %198, %181, %176, %175, %173, %154
  %208 = phi i32 [ 0, %154 ], [ %206, %205 ], [ %174, %173 ], [ 0, %198 ], [ 0, %181 ], [ 0, %176 ], [ 0, %175 ]
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %228, label %210

210:                                              ; preds = %207
  %211 = load i8, ptr %6, align 8, !tbaa !106
  %212 = icmp ne i8 %211, 0
  %213 = icmp eq i32 %208, 2
  %214 = or i1 %213, %212
  br i1 %214, label %228, label %215, !llvm.loop !122

215:                                              ; preds = %210
  %216 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %217 = getelementptr inbounds %struct.cpp_token, ptr %216, i64 0, i32 1
  store i8 72, ptr %217, align 4
  %218 = getelementptr inbounds %struct.cpp_token, ptr %216, i64 0, i32 3
  store ptr %114, ptr %218, align 8, !tbaa !52
  %219 = getelementptr inbounds %struct.cpp_token, ptr %216, i64 0, i32 2
  store i16 0, ptr %219, align 2, !tbaa !119
  br label %228

220:                                              ; preds = %137
  %221 = tail call ptr @_cpp_temp_token(ptr noundef %0) #22
  %222 = load i8, ptr %122, align 4
  %223 = getelementptr inbounds %struct.cpp_token, ptr %221, i64 0, i32 1
  store i8 %222, ptr %223, align 4
  %224 = load i16, ptr %133, align 2, !tbaa !119
  %225 = or i16 %224, 32
  %226 = getelementptr inbounds %struct.cpp_token, ptr %221, i64 0, i32 2
  store i16 %225, ptr %226, align 2, !tbaa !119
  %227 = getelementptr inbounds %struct.cpp_token, ptr %221, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %227, ptr noundef nonnull align 8 dereferenceable(16) %126, i64 16, i1 false), !tbaa.struct !133
  br label %228

228:                                              ; preds = %220, %215, %210, %207, %146, %132, %125, %121, %117, %106, %88, %79
  %229 = phi i32 [ 1, %88 ], [ 3, %79 ], [ 3, %117 ], [ 2, %121 ], [ 2, %132 ], [ 2, %125 ], [ 2, %220 ], [ %111, %106 ], [ 1, %215 ], [ 2, %146 ], [ 3, %210 ], [ 2, %207 ]
  %230 = phi ptr [ %33, %88 ], [ %33, %79 ], [ %114, %117 ], [ %114, %121 ], [ %114, %132 ], [ %114, %125 ], [ %221, %220 ], [ %9, %106 ], [ %114, %215 ], [ %114, %146 ], [ %114, %210 ], [ %114, %207 ]
  %231 = phi ptr [ %89, %88 ], [ %10, %79 ], [ %10, %117 ], [ %10, %121 ], [ %10, %132 ], [ %10, %125 ], [ %10, %220 ], [ %112, %106 ], [ %216, %215 ], [ %10, %146 ], [ %10, %210 ], [ %10, %207 ]
  switch i32 %229, label %233 [
    i32 3, label %8
    i32 2, label %232
  ], !prof !134

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %228, %232
  %234 = phi ptr [ %230, %232 ], [ %231, %228 ]
  %235 = load ptr, ptr %5, align 8, !tbaa !110
  %236 = getelementptr inbounds %struct.cpp_context, ptr %235, i64 0, i32 4
  %237 = load ptr, ptr %236, align 8, !tbaa !114
  %238 = icmp eq ptr %237, null
  %239 = select i1 %238, ptr %234, ptr %7, !prof !172
  %240 = load i32, ptr %239, align 8, !tbaa !50
  store i32 %240, ptr %1, align 4, !tbaa !50
  ret ptr %234
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cpp_sys_macro_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !45 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !52
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

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_scan_nooutput(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 4
  store i8 %5, ptr %3, align 1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 10
  %7 = load i8, ptr %6, align 2, !tbaa !173
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 2, !tbaa !173
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !130
  %11 = add i8 %10, 1
  store i8 %11, ptr %9, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %13 = load i8, ptr %12, align 2, !tbaa !89
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1, %15
  %16 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef nonnull %0) #22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %15, !llvm.loop !174

18:                                               ; preds = %1, %18
  %19 = tail call ptr @cpp_get_token(ptr noundef nonnull %0)
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 22
  br i1 %22, label %23, label %18, !llvm.loop !175

23:                                               ; preds = %15, %18
  %24 = load i8, ptr %6, align 2, !tbaa !173
  %25 = add i8 %24, -1
  store i8 %25, ptr %6, align 2, !tbaa !173
  %26 = load i8, ptr %9, align 8, !tbaa !130
  %27 = add i8 %26, -1
  store i8 %27, ptr %9, align 8, !tbaa !130
  ret void
}

declare zeroext i8 @_cpp_read_logical_line_trad(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_backup_tokens_direct(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !45 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %4 = load i32, ptr %3, align 8, !tbaa !176
  %5 = add i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !176
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %8, align 8, !tbaa !90
  %11 = load ptr, ptr %9, align 8, !tbaa !177
  br label %12

12:                                               ; preds = %7, %28
  %13 = phi ptr [ %11, %7 ], [ %29, %28 ]
  %14 = phi ptr [ %10, %7 ], [ %30, %28 ]
  %15 = phi i32 [ %1, %7 ], [ %16, %28 ]
  %16 = add i32 %15, -1
  %17 = getelementptr inbounds %struct.cpp_token, ptr %14, i64 -1
  %18 = getelementptr inbounds %struct.tokenrun, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tokenrun, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !179
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  store ptr %23, ptr %9, align 8, !tbaa !177
  %26 = getelementptr inbounds %struct.tokenrun, ptr %23, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !180
  br label %28

28:                                               ; preds = %25, %21, %12
  %29 = phi ptr [ %23, %25 ], [ %13, %21 ], [ %13, %12 ]
  %30 = phi ptr [ %27, %25 ], [ %17, %21 ], [ %17, %12 ]
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %32, label %12, !llvm.loop !181

32:                                               ; preds = %28
  store ptr %30, ptr %8, align 8, !tbaa !90
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_backup_tokens(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !182 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %38, !prof !183

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 32
  %10 = load i32, ptr %9, align 8, !tbaa !176
  %11 = add i32 %10, %1
  store i32 %11, ptr %9, align 8, !tbaa !176
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %52, label %13, !prof !184

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %16 = load ptr, ptr %14, align 8, !tbaa !90
  %17 = load ptr, ptr %15, align 8, !tbaa !177
  br label %18

18:                                               ; preds = %13, %34
  %19 = phi ptr [ %17, %13 ], [ %35, %34 ]
  %20 = phi ptr [ %16, %13 ], [ %36, %34 ]
  %21 = phi i32 [ %1, %13 ], [ %22, %34 ]
  %22 = add i32 %21, -1
  %23 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 -1
  %24 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %34, !prof !185

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.tokenrun, ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !179
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  store ptr %29, ptr %15, align 8, !tbaa !177
  %32 = getelementptr inbounds %struct.tokenrun, ptr %29, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  br label %34

34:                                               ; preds = %31, %27, %18
  %35 = phi ptr [ %29, %31 ], [ %19, %27 ], [ %19, %18 ]
  %36 = phi ptr [ %33, %31 ], [ %23, %27 ], [ %23, %18 ]
  %37 = icmp eq i32 %22, 0
  br i1 %37, label %51, label %18, !prof !186, !llvm.loop !181

38:                                               ; preds = %2
  %39 = icmp eq i32 %1, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @abort() #25
  unreachable

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !113
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  br i1 %44, label %49, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 -1
  store ptr %48, ptr %45, align 8, !tbaa !52
  br label %52

49:                                               ; preds = %41
  %50 = getelementptr inbounds ptr, ptr %46, i64 -1
  store ptr %50, ptr %45, align 8, !tbaa !52
  br label %52

51:                                               ; preds = %34
  store ptr %36, ptr %14, align 8, !tbaa !90
  br label %52

52:                                               ; preds = %8, %51, %47, %49
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_cpp_free_definition(ptr nocapture noundef %0) local_unnamed_addr #16 !prof !45 {
  %2 = getelementptr inbounds %struct.cpp_hashnode, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, -10560
  store i16 %4, ptr %2, align 2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !187 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8, !prof !188

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !74
  %10 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef %9) #22
  br label %59

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !189
  %14 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct._cpp_buff, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !144
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !108
  %23 = zext i16 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = icmp ult i64 %20, %25
  br i1 %26, label %27, label %28, !prof !190

27:                                               ; preds = %11
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %12, i64 noundef 8) #22
  br label %28

28:                                               ; preds = %27, %11
  %29 = load ptr, ptr %12, align 8, !tbaa !189
  %30 = getelementptr inbounds %struct._cpp_buff, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  %32 = load i16, ptr %21, align 8, !tbaa !108
  %33 = add i16 %32, 1
  store i16 %33, ptr %21, align 8, !tbaa !108
  %34 = zext i16 %32 to i64
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34
  store ptr %2, ptr %35, align 8, !tbaa !46
  %36 = load i16, ptr %4, align 2
  %37 = or i16 %36, 4096
  store i16 %37, ptr %4, align 2
  %38 = load i16, ptr %21, align 8, !tbaa !108
  %39 = zext i16 %38 to i32
  %40 = shl nuw nsw i32 %39, 3
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  %42 = load i32, ptr %41, align 8, !tbaa !191
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %49, !prof !192

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %46 = load ptr, ptr %45, align 8, !tbaa !193
  %47 = zext nneg i32 %40 to i64
  %48 = tail call ptr @xrealloc(ptr noundef %46, i64 noundef %47) #22
  store ptr %48, ptr %45, align 8, !tbaa !193
  store i32 %40, ptr %41, align 8, !tbaa !191
  br label %49

49:                                               ; preds = %44, %28
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %51 = load ptr, ptr %50, align 8, !tbaa !193
  %52 = load i16, ptr %21, align 8, !tbaa !108
  %53 = zext i16 %52 to i64
  %54 = getelementptr %union._cpp_hashnode_value, ptr %51, i64 %53
  %55 = getelementptr %union._cpp_hashnode_value, ptr %54, i64 -1
  %56 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 4
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %55, align 8
  %58 = load i16, ptr %21, align 8, !tbaa !108
  store i16 %58, ptr %56, align 8, !tbaa !52
  br label %59

59:                                               ; preds = %49, %8
  %60 = phi i8 [ 1, %8 ], [ 0, %49 ]
  ret i8 %60
}

declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #14 !prof !194 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.ht, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !198

8:                                                ; preds = %2
  %9 = tail call ptr %6(i64 noundef 32) #22, !prof !199
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr @_cpp_aligned_alloc(ptr noundef %0, i64 noundef 32) #22
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !138
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !70
  store ptr null, ptr %13, align 8, !tbaa !200
  %17 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 4
  store i16 0, ptr %17, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 5
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, -3
  store i8 %20, ptr %18, align 2
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %22 = load i8, ptr %21, align 2, !tbaa !201
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i8 8, i8 0, !prof !202
  %25 = and i8 %19, -11
  %26 = or disjoint i8 %24, %25
  store i8 %26, ptr %18, align 2
  %27 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 3
  store i32 0, ptr %27, align 4, !tbaa !157
  %28 = and i8 %26, -36
  store i8 %28, ptr %18, align 2
  %29 = load ptr, ptr %0, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !198

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.cpp_buffer, ptr %29, i64 0, i32 15
  %33 = load i8, ptr %32, align 2, !tbaa !94
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 0, i8 4, !prof !202
  br label %36

36:                                               ; preds = %31, %12
  %37 = phi i8 [ 0, %12 ], [ %35, %31 ]
  %38 = and i8 %26, -40
  %39 = or disjoint i8 %37, %38
  store i8 %39, ptr %18, align 2
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %41 = load i8, ptr %40, align 2, !tbaa !89
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43, !prof !202

43:                                               ; preds = %36
  %44 = tail call zeroext i8 @_cpp_create_trad_definition(ptr noundef nonnull %0, ptr noundef nonnull %13) #22
  br label %377

45:                                               ; preds = %36
  %46 = tail call ptr @_cpp_lex_token(ptr noundef %0) #22
  %47 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 1
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 20
  br i1 %49, label %50, label %154, !prof !203

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !119
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %154, !prof !204

55:                                               ; preds = %50, %125
  %56 = phi i8 [ %126, %125 ], [ undef, %50 ]
  %57 = phi i32 [ %127, %125 ], [ 0, %50 ]
  %58 = tail call ptr @_cpp_lex_token(ptr noundef %0) #22
  %59 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 0, i32 1
  %60 = load i8, ptr %59, align 4
  switch i8 %60, label %65 [
    i8 53, label %68
    i8 21, label %78
    i8 19, label %83
    i8 44, label %87
    i8 22, label %123
    i8 68, label %61
  ], !prof !205

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %63 = load i8, ptr %62, align 4, !tbaa !206
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %125, label %65, !llvm.loop !207

65:                                               ; preds = %61, %55
  %66 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %58) #22
  %67 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.44, ptr noundef %66) #22
  br label %125

68:                                               ; preds = %55
  %69 = icmp eq i32 %57, 0
  br i1 %69, label %72, label %70, !prof !188

70:                                               ; preds = %68
  %71 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.45) #22
  br label %125

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %74), !range !120
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %76, i8 %56, i8 0, !prof !188
  br label %125, !llvm.loop !207

78:                                               ; preds = %55
  %79 = icmp eq i32 %57, 0
  br i1 %79, label %80, label %125, !prof !190

80:                                               ; preds = %78
  %81 = load i16, ptr %17, align 8, !tbaa !108
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %125, label %83

83:                                               ; preds = %80, %55
  %84 = icmp eq i32 %57, 0
  br i1 %84, label %85, label %125, !llvm.loop !207

85:                                               ; preds = %83
  %86 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.46) #22
  br label %125

87:                                               ; preds = %55
  %88 = load i8, ptr %18, align 2
  %89 = or i8 %88, 2
  store i8 %89, ptr %18, align 2
  %90 = icmp eq i32 %57, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  %93 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  %94 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %95 = load ptr, ptr %92, align 8, !tbaa !208
  %96 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %95), !range !120
  store i8 1, ptr %93, align 2, !tbaa !209
  %97 = load i8, ptr %94, align 1, !tbaa !166
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %101 = load i8, ptr %100, align 1, !tbaa !109
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 21
  %105 = load i8, ptr %104, align 1, !tbaa !210
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %118, label %115

107:                                              ; preds = %87
  %108 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %109 = load i8, ptr %108, align 1, !tbaa !109
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 21
  %113 = load i8, ptr %112, align 1, !tbaa !210
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111, %103
  %116 = phi ptr [ @.str.47, %103 ], [ @.str.48, %111 ]
  %117 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %116) #22
  br label %118

118:                                              ; preds = %115, %111, %107, %103, %99, %91
  %119 = tail call ptr @_cpp_lex_token(ptr noundef %0) #22
  %120 = getelementptr inbounds %struct.cpp_token, ptr %119, i64 0, i32 1
  %121 = load i8, ptr %120, align 4
  %122 = icmp eq i8 %121, 21
  br i1 %122, label %125, label %123

123:                                              ; preds = %118, %55
  %124 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49) #22
  br label %125

125:                                              ; preds = %83, %80, %61, %123, %118, %85, %78, %72, %70, %65
  %126 = phi i8 [ 0, %65 ], [ 0, %123 ], [ 0, %85 ], [ 0, %70 ], [ %77, %72 ], [ 1, %78 ], [ 1, %118 ], [ %56, %61 ], [ 1, %80 ], [ %56, %83 ]
  %127 = phi i32 [ %57, %65 ], [ %57, %123 ], [ 0, %85 ], [ 1, %70 ], [ 1, %72 ], [ %57, %78 ], [ %57, %118 ], [ %57, %61 ], [ %57, %80 ], [ 0, %83 ]
  %128 = phi i1 [ false, %65 ], [ false, %123 ], [ false, %85 ], [ false, %70 ], [ %76, %72 ], [ false, %78 ], [ false, %118 ], [ true, %61 ], [ false, %80 ], [ true, %83 ]
  br i1 %128, label %55, label %129, !prof !211

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !189
  %132 = getelementptr inbounds %struct._cpp_buff, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !144
  store ptr %133, ptr %13, align 8, !tbaa !200
  %134 = icmp eq i8 %126, 0
  br i1 %134, label %374, label %135, !prof !190

135:                                              ; preds = %129
  %136 = load ptr, ptr %3, align 8, !tbaa !195
  %137 = getelementptr inbounds %struct.ht, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !196
  %139 = icmp eq ptr %138, null
  %140 = load i16, ptr %17, align 8, !tbaa !108
  %141 = zext i16 %140 to i64
  br i1 %139, label %149, label %142, !prof !190

142:                                              ; preds = %135
  %143 = shl nuw nsw i64 %141, 3
  %144 = tail call ptr %138(i64 noundef %143) #22, !prof !212
  %145 = load ptr, ptr %13, align 8, !tbaa !200
  %146 = load i16, ptr %17, align 8, !tbaa !108
  %147 = zext i16 %146 to i64
  %148 = shl nuw nsw i64 %147, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %144, ptr align 8 %145, i64 %148, i1 false), !prof !213
  store ptr %144, ptr %13, align 8, !tbaa !200
  br label %151

149:                                              ; preds = %135
  %150 = getelementptr inbounds ptr, ptr %133, i64 %141
  store ptr %150, ptr %132, align 8, !tbaa !144
  br label %151

151:                                              ; preds = %149, %142
  %152 = load i8, ptr %18, align 2
  %153 = or i8 %152, 1
  store i8 %153, ptr %18, align 2
  br label %183

154:                                              ; preds = %50, %45
  %155 = zext i8 %48 to i32
  %156 = icmp eq i8 %48, 22
  br i1 %156, label %183, label %157, !prof !214

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 2
  %159 = load i16, ptr %158, align 2, !tbaa !119
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %183, !prof !215

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %164 = load i8, ptr %163, align 1, !tbaa !166
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.40) #22
  br label %183

168:                                              ; preds = %162
  %169 = add nsw i32 %155, -52
  %170 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 31)
  switch i32 %170, label %180 [
    i32 0, label %171
    i32 1, label %171
    i32 7, label %171
    i32 4, label %172
  ]

171:                                              ; preds = %168, %168, %168
  br label %180

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 0, i32 3, i32 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !52
  %175 = load i8, ptr %174, align 1, !tbaa !52
  %176 = zext i8 %175 to i32
  %177 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.41, i32 %176, i64 29)
  %178 = icmp eq ptr %177, null
  %179 = select i1 %178, i32 2, i32 0
  br label %180

180:                                              ; preds = %172, %171, %168
  %181 = phi i32 [ 0, %168 ], [ 2, %171 ], [ %179, %172 ]
  %182 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef %181, ptr noundef nonnull @.str.42) #22
  br label %183

183:                                              ; preds = %180, %166, %157, %154, %151
  %184 = load i8, ptr %18, align 2
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %189, label %187, !prof !216

187:                                              ; preds = %183
  %188 = tail call fastcc ptr @lex_expansion_token(ptr noundef %0, ptr noundef nonnull %13)
  br label %213

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !189
  %192 = getelementptr inbounds %struct._cpp_buff, ptr %191, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !147
  %194 = getelementptr inbounds %struct._cpp_buff, ptr %191, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !144
  %196 = ptrtoint ptr %193 to i64
  %197 = ptrtoint ptr %195 to i64
  %198 = sub i64 %196, %197
  %199 = load i32, ptr %27, align 4, !tbaa !157
  %200 = add i32 %199, 1
  %201 = zext i32 %200 to i64
  %202 = mul nuw nsw i64 %201, 24
  %203 = icmp ult i64 %198, %202
  br i1 %203, label %204, label %205, !prof !217

204:                                              ; preds = %189
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %190, i64 noundef 24) #22
  br label %205

205:                                              ; preds = %189, %204
  %206 = load ptr, ptr %190, align 8, !tbaa !189
  %207 = getelementptr inbounds %struct._cpp_buff, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !144
  %209 = load i32, ptr %27, align 4, !tbaa !157
  %210 = add i32 %209, 1
  store i32 %210, ptr %27, align 4, !tbaa !157
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds %struct.cpp_token, ptr %208, i64 %211
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %212, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !tbaa.struct !149
  br label %213

213:                                              ; preds = %205, %187
  %214 = phi ptr [ %188, %187 ], [ %212, %205 ]
  br label %215

215:                                              ; preds = %303, %213
  %216 = phi i32 [ 0, %213 ], [ %304, %303 ]
  %217 = phi i8 [ 0, %213 ], [ %307, %303 ]
  %218 = phi ptr [ %214, %213 ], [ %308, %303 ]
  %219 = load i32, ptr %27, align 4, !tbaa !157
  %220 = icmp ugt i32 %219, 1
  br i1 %220, label %221, label %264, !prof !218

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.cpp_token, ptr %218, i64 -1
  %223 = getelementptr %struct.cpp_token, ptr %218, i64 -1, i32 1
  %224 = load i8, ptr %223, align 4
  %225 = icmp eq i8 %224, 37
  br i1 %225, label %226, label %264, !prof !219

226:                                              ; preds = %221
  %227 = load i8, ptr %18, align 2
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %264, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.cpp_token, ptr %218, i64 0, i32 1
  %232 = load i8, ptr %231, align 4
  %233 = icmp eq i8 %232, 69
  br i1 %233, label %234, label %258

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.cpp_token, ptr %218, i64 0, i32 2
  %236 = load i16, ptr %235, align 2, !tbaa !119
  %237 = and i16 %236, 1
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = or i16 %236, 512
  store i16 %240, ptr %235, align 2, !tbaa !119
  br label %241

241:                                              ; preds = %239, %234
  %242 = getelementptr %struct.cpp_token, ptr %218, i64 -1, i32 2
  %243 = load i16, ptr %242, align 2, !tbaa !119
  %244 = and i16 %243, 2
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = load i16, ptr %235, align 2, !tbaa !119
  %248 = or i16 %247, 256
  store i16 %248, ptr %235, align 2, !tbaa !119
  br label %249

249:                                              ; preds = %246, %241
  %250 = load i16, ptr %235, align 2, !tbaa !119
  %251 = and i16 %250, -6
  %252 = or disjoint i16 %251, 4
  store i16 %252, ptr %235, align 2, !tbaa !119
  %253 = load i16, ptr %242, align 2, !tbaa !119
  %254 = and i16 %253, 1
  %255 = or disjoint i16 %254, %252
  store i16 %255, ptr %235, align 2, !tbaa !119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %222, ptr noundef nonnull align 8 dereferenceable(24) %218, i64 24, i1 false), !tbaa.struct !149
  %256 = load i32, ptr %27, align 4, !tbaa !157
  %257 = add i32 %256, -1
  store i32 %257, ptr %27, align 4, !tbaa !157
  br label %264

258:                                              ; preds = %230
  %259 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !220
  %261 = icmp eq i32 %260, 9
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.43) #22
  br label %374

264:                                              ; preds = %258, %249, %226, %221, %215
  %265 = getelementptr inbounds %struct.cpp_token, ptr %218, i64 0, i32 1
  %266 = load i8, ptr %265, align 4
  switch i8 %266, label %303 [
    i8 22, label %267
    i8 38, label %271
  ], !prof !221

267:                                              ; preds = %264
  %268 = icmp eq i8 %217, 0
  br i1 %268, label %309, label %269, !prof !202

269:                                              ; preds = %267
  %270 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.39) #22
  br label %374

271:                                              ; preds = %264
  %272 = load i32, ptr %27, align 4, !tbaa !157
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %276, !prof !222

274:                                              ; preds = %271
  %275 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.39) #22
  br label %374

276:                                              ; preds = %271
  %277 = getelementptr %struct.cpp_token, ptr %218, i64 -1, i32 2
  %278 = load i16, ptr %277, align 2, !tbaa !119
  %279 = and i16 %278, 8
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %287, label %281, !prof !223

281:                                              ; preds = %276
  %282 = load i8, ptr %18, align 2
  %283 = or i8 %282, 32
  store i8 %283, ptr %18, align 2
  %284 = add i32 %216, 1
  %285 = add i32 %272, -1
  %286 = getelementptr inbounds %struct.cpp_token, ptr %218, i64 0, i32 3
  store i32 %285, ptr %286, align 8, !tbaa !52
  br label %303

287:                                              ; preds = %276
  %288 = add i32 %272, -1
  store i32 %288, ptr %27, align 4, !tbaa !157
  %289 = or disjoint i16 %278, 8
  store i16 %289, ptr %277, align 2, !tbaa !119
  %290 = getelementptr inbounds %struct.cpp_token, ptr %218, i64 0, i32 2
  %291 = load i16, ptr %290, align 2, !tbaa !119
  %292 = and i16 %291, 2
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %296, label %294, !prof !223

294:                                              ; preds = %287
  %295 = or i16 %278, 264
  store i16 %295, ptr %277, align 2, !tbaa !119
  br label %296

296:                                              ; preds = %294, %287
  %297 = load i16, ptr %290, align 2, !tbaa !119
  %298 = and i16 %297, 1
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %303, label %300, !prof !222

300:                                              ; preds = %296
  %301 = load i16, ptr %277, align 2, !tbaa !119
  %302 = or i16 %301, 512
  store i16 %302, ptr %277, align 2, !tbaa !119
  br label %303

303:                                              ; preds = %300, %296, %281, %264
  %304 = phi i32 [ %284, %281 ], [ %216, %300 ], [ %216, %296 ], [ %216, %264 ]
  %305 = load i8, ptr %265, align 4
  %306 = icmp eq i8 %305, 38
  %307 = zext i1 %306 to i8
  %308 = tail call fastcc ptr @lex_expansion_token(ptr noundef %0, ptr noundef nonnull %13)
  br label %215, !llvm.loop !224

309:                                              ; preds = %267
  %310 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %311 = load ptr, ptr %310, align 8, !tbaa !189
  %312 = getelementptr inbounds %struct._cpp_buff, ptr %311, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !144
  %314 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 1
  store ptr %313, ptr %314, align 8, !tbaa !52
  %315 = load i8, ptr %18, align 2
  %316 = and i8 %315, -17
  store i8 %316, ptr %18, align 2
  %317 = load i32, ptr %27, align 4, !tbaa !157
  %318 = add i32 %317, -1
  store i32 %318, ptr %27, align 4, !tbaa !157
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %324, label %320, !prof !225

320:                                              ; preds = %309
  %321 = getelementptr inbounds %struct.cpp_token, ptr %313, i64 0, i32 2
  %322 = load i16, ptr %321, align 2, !tbaa !119
  %323 = and i16 %322, -2
  store i16 %323, ptr %321, align 2, !tbaa !119
  br label %324

324:                                              ; preds = %320, %309
  %325 = load ptr, ptr %3, align 8, !tbaa !195
  %326 = getelementptr inbounds %struct.ht, ptr %325, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !196
  %328 = icmp eq ptr %327, null
  br i1 %328, label %368, label %329, !prof !198

329:                                              ; preds = %324
  %330 = zext i32 %318 to i64
  %331 = mul nuw nsw i64 %330, 24
  %332 = tail call ptr %327(i64 noundef %331) #22, !prof !199
  %333 = icmp eq i32 %216, 0
  br i1 %333, label %362, label %334, !prof !202

334:                                              ; preds = %329
  %335 = load i32, ptr %27, align 4, !tbaa !157
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %367, label %337

337:                                              ; preds = %334
  %338 = zext i32 %335 to i64
  %339 = getelementptr inbounds %struct.cpp_token, ptr %332, i64 %338
  %340 = zext i32 %216 to i64
  %341 = sub nsw i64 0, %340
  %342 = getelementptr inbounds %struct.cpp_token, ptr %339, i64 %341
  br label %343

343:                                              ; preds = %337, %343
  %344 = phi i64 [ 0, %337 ], [ %358, %343 ]
  %345 = phi ptr [ %342, %337 ], [ %357, %343 ]
  %346 = phi ptr [ %332, %337 ], [ %354, %343 ]
  %347 = load ptr, ptr %314, align 8, !tbaa !52
  %348 = getelementptr inbounds %struct.cpp_token, ptr %347, i64 %344
  %349 = getelementptr inbounds %struct.cpp_token, ptr %347, i64 %344, i32 1
  %350 = load i8, ptr %349, align 4
  %351 = icmp ne i8 %350, 38
  %352 = select i1 %351, ptr %346, ptr %345
  %353 = zext i1 %351 to i64
  %354 = getelementptr inbounds %struct.cpp_token, ptr %346, i64 %353
  %355 = xor i1 %351, true
  %356 = zext i1 %355 to i64
  %357 = getelementptr inbounds %struct.cpp_token, ptr %345, i64 %356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %352, ptr noundef nonnull align 8 dereferenceable(24) %348, i64 24, i1 false)
  %358 = add nuw nsw i64 %344, 1
  %359 = load i32, ptr %27, align 4, !tbaa !157
  %360 = zext i32 %359 to i64
  %361 = icmp ult i64 %358, %360
  br i1 %361, label %343, label %367, !llvm.loop !226

362:                                              ; preds = %329
  %363 = load ptr, ptr %314, align 8, !tbaa !52
  %364 = load i32, ptr %27, align 4, !tbaa !157
  %365 = zext i32 %364 to i64
  %366 = mul nuw nsw i64 %365, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %332, ptr align 8 %363, i64 %366, i1 false), !prof !227
  br label %367

367:                                              ; preds = %343, %334, %362
  store ptr %332, ptr %314, align 8, !tbaa !52
  br label %374

368:                                              ; preds = %324
  %369 = load ptr, ptr %314, align 8, !tbaa !52
  %370 = zext i32 %318 to i64
  %371 = getelementptr inbounds %struct.cpp_token, ptr %369, i64 %370
  %372 = load ptr, ptr %310, align 8, !tbaa !189
  %373 = getelementptr inbounds %struct._cpp_buff, ptr %372, i64 0, i32 2
  store ptr %371, ptr %373, align 8, !tbaa !144
  br label %374

374:                                              ; preds = %129, %262, %269, %274, %367, %368
  %375 = phi i8 [ 0, %269 ], [ 0, %274 ], [ 0, %262 ], [ 1, %368 ], [ 1, %367 ], [ 0, %129 ]
  %376 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 6
  store i8 0, ptr %376, align 2, !tbaa !209
  br label %377

377:                                              ; preds = %374, %43
  %378 = phi i8 [ %44, %43 ], [ %375, %374 ]
  %379 = load i16, ptr %17, align 8, !tbaa !108
  %380 = icmp eq i16 %379, 0
  br i1 %380, label %399, label %381, !prof !216

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %383 = zext i16 %379 to i64
  br label %384

384:                                              ; preds = %381, %384
  %385 = phi i64 [ %383, %381 ], [ %387, %384 ]
  %386 = add nsw i64 %385, -1
  %387 = add nsw i64 %385, -1
  %388 = load ptr, ptr %13, align 8, !tbaa !200
  %389 = getelementptr inbounds ptr, ptr %388, i64 %386
  %390 = load ptr, ptr %389, align 8, !tbaa !46
  %391 = getelementptr inbounds %struct.cpp_hashnode, ptr %390, i64 0, i32 3
  %392 = load i16, ptr %391, align 2
  %393 = and i16 %392, -4097
  store i16 %393, ptr %391, align 2
  %394 = getelementptr inbounds %struct.cpp_hashnode, ptr %390, i64 0, i32 4
  %395 = load ptr, ptr %382, align 8, !tbaa !193
  %396 = getelementptr inbounds %union._cpp_hashnode_value, ptr %395, i64 %386
  %397 = load i64, ptr %396, align 8
  store i64 %397, ptr %394, align 8
  %398 = icmp eq i64 %386, 0
  br i1 %398, label %399, label %384, !prof !188, !llvm.loop !228

399:                                              ; preds = %384, %377
  %400 = icmp eq i8 %378, 0
  br i1 %400, label %523, label %401, !prof !198

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %403 = load i16, ptr %402, align 2
  %404 = and i16 %403, 63
  %405 = icmp eq i16 %404, 1
  br i1 %405, label %406, label %495, !prof !198

406:                                              ; preds = %401
  %407 = load i8, ptr %21, align 2, !tbaa !201
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %406
  %410 = tail call i32 @_cpp_warn_if_unused_macro(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  br label %411

411:                                              ; preds = %409, %406
  %412 = load i16, ptr %402, align 2
  %413 = lshr i16 %412, 6
  %414 = zext nneg i16 %413 to i32
  %415 = and i32 %414, 16
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %480

417:                                              ; preds = %411
  %418 = and i32 %414, 260
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %495

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %422 = load ptr, ptr %421, align 8, !tbaa !52
  %423 = getelementptr inbounds %struct.cpp_macro, ptr %422, i64 0, i32 4
  %424 = load i16, ptr %423, align 8, !tbaa !108
  %425 = load i16, ptr %17, align 8, !tbaa !108
  %426 = icmp eq i16 %424, %425
  br i1 %426, label %427, label %480

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.cpp_macro, ptr %422, i64 0, i32 5
  %429 = load i8, ptr %428, align 2
  %430 = load i8, ptr %18, align 2
  %431 = xor i8 %430, %429
  %432 = and i8 %431, 3
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %434, label %480

434:                                              ; preds = %427
  %435 = icmp eq i16 %424, 0
  br i1 %435, label %450, label %436

436:                                              ; preds = %434
  %437 = load ptr, ptr %422, align 8, !tbaa !200
  %438 = load ptr, ptr %13, align 8, !tbaa !200
  %439 = zext i16 %424 to i64
  br label %443

440:                                              ; preds = %443
  %441 = add nuw nsw i64 %444, 1
  %442 = icmp eq i64 %441, %439
  br i1 %442, label %450, label %443, !llvm.loop !229

443:                                              ; preds = %436, %440
  %444 = phi i64 [ 0, %436 ], [ %441, %440 ]
  %445 = getelementptr inbounds ptr, ptr %437, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !46
  %447 = getelementptr inbounds ptr, ptr %438, i64 %444
  %448 = load ptr, ptr %447, align 8, !tbaa !46
  %449 = icmp eq ptr %446, %448
  br i1 %449, label %440, label %480

450:                                              ; preds = %440, %434
  %451 = load i8, ptr %40, align 2, !tbaa !89
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %456, label %453

453:                                              ; preds = %450
  %454 = tail call zeroext i8 @_cpp_expansions_different_trad(ptr noundef %422, ptr noundef nonnull %13) #22
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %495, label %480

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.cpp_macro, ptr %422, i64 0, i32 3
  %458 = load i32, ptr %457, align 4, !tbaa !157
  %459 = load i32, ptr %27, align 4, !tbaa !157
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %480

461:                                              ; preds = %456
  %462 = load i32, ptr %457, align 4, !tbaa !157
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %495, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.cpp_macro, ptr %422, i64 0, i32 1
  %466 = getelementptr inbounds %struct.cpp_macro, ptr %13, i64 0, i32 1
  br label %472

467:                                              ; preds = %472
  %468 = add nuw nsw i64 %473, 1
  %469 = load i32, ptr %457, align 4, !tbaa !157
  %470 = zext i32 %469 to i64
  %471 = icmp ult i64 %468, %470
  br i1 %471, label %472, label %495, !llvm.loop !230

472:                                              ; preds = %464, %467
  %473 = phi i64 [ 0, %464 ], [ %468, %467 ]
  %474 = load ptr, ptr %465, align 8, !tbaa !52
  %475 = getelementptr inbounds %struct.cpp_token, ptr %474, i64 %473
  %476 = load ptr, ptr %466, align 8, !tbaa !52
  %477 = getelementptr inbounds %struct.cpp_token, ptr %476, i64 %473
  %478 = tail call i32 @_cpp_equiv_tokens(ptr noundef %475, ptr noundef %477) #22
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %467

480:                                              ; preds = %443, %472, %411, %427, %420, %456, %453
  %481 = load i32, ptr %14, align 8, !tbaa !138
  %482 = load ptr, ptr %1, align 8, !tbaa !74
  %483 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %481, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %482) #22
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %495, label %485

485:                                              ; preds = %480
  %486 = load i16, ptr %402, align 2
  %487 = and i16 %486, 319
  %488 = icmp eq i16 %487, 1
  br i1 %488, label %489, label %495

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %491 = load ptr, ptr %490, align 8, !tbaa !52
  %492 = getelementptr inbounds %struct.cpp_macro, ptr %491, i64 0, i32 2
  %493 = load i32, ptr %492, align 8, !tbaa !70
  %494 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 5, i32 noundef %493, i32 noundef 0, ptr noundef nonnull @.str.16) #22
  br label %495

495:                                              ; preds = %467, %461, %417, %480, %485, %489, %453, %401
  %496 = load i16, ptr %402, align 2
  %497 = and i16 %496, 63
  %498 = icmp eq i16 %497, 0
  br i1 %498, label %501, label %499, !prof !202

499:                                              ; preds = %495
  %500 = and i16 %496, -10560
  store i16 %500, ptr %402, align 2
  br label %501

501:                                              ; preds = %499, %495
  %502 = load i16, ptr %402, align 2
  %503 = and i16 %502, -64
  %504 = or disjoint i16 %503, 1
  store i16 %504, ptr %402, align 2
  %505 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  store ptr %13, ptr %505, align 8, !tbaa !52
  %506 = load ptr, ptr %1, align 8, !tbaa !74
  %507 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %506, ptr noundef nonnull dereferenceable(8) @.str.17, i64 noundef 7) #23
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %520, !prof !225

509:                                              ; preds = %501
  %510 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %506, ptr noundef nonnull dereferenceable(21) @.str.18) #23
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %520, label %512, !prof !131

512:                                              ; preds = %509
  %513 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %506, ptr noundef nonnull dereferenceable(20) @.str.19) #23
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %520, label %515, !prof !131

515:                                              ; preds = %512
  %516 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %506, ptr noundef nonnull dereferenceable(23) @.str.20) #23
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %520, label %518, !prof !131

518:                                              ; preds = %515
  %519 = or i16 %503, 1025
  store i16 %519, ptr %402, align 2
  br label %520

520:                                              ; preds = %518, %515, %512, %509, %501
  %521 = load i16, ptr %402, align 2
  %522 = and i16 %521, -16385
  store i16 %522, ptr %402, align 2
  br label %523

523:                                              ; preds = %399, %520
  ret i8 %378
}

declare ptr @_cpp_aligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_create_trad_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_macro_definition(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 319
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = and i16 %6, 63
  %11 = zext nneg i16 %10 to i32
  %12 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %11) #22
  br label %279

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !231
  %16 = add i32 %15, 2
  %17 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 5
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %13
  %22 = add i32 %15, 6
  %23 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !108
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 8, !tbaa !200
  %28 = zext i16 %24 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %38, %29 ]
  %31 = phi i32 [ %22, %26 ], [ %37, %29 ]
  %32 = getelementptr inbounds ptr, ptr %27, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.ht_identifier, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !231
  %36 = add i32 %31, 1
  %37 = add i32 %36, %35
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %28
  br i1 %39, label %40, label %29, !llvm.loop !232

40:                                               ; preds = %29, %21, %13
  %41 = phi i32 [ %16, %13 ], [ %22, %21 ], [ %37, %29 ]
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %43 = load i8, ptr %42, align 2, !tbaa !89
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = tail call i64 @_cpp_replacement_text_len(ptr noundef %4) #22
  %47 = trunc i64 %46 to i32
  %48 = add i32 %41, %47
  br label %113

49:                                               ; preds = %40
  %50 = and i8 %18, 32
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !157
  br i1 %51, label %69, label %54

54:                                               ; preds = %49
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  br label %59

59:                                               ; preds = %56, %65
  %60 = phi i32 [ 0, %56 ], [ %66, %65 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.cpp_token, ptr %58, i64 %61, i32 1
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 38
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = add nuw i32 %60, 1
  %67 = icmp eq i32 %66, %53
  br i1 %67, label %68, label %59, !llvm.loop !158

68:                                               ; preds = %65, %54
  tail call void @abort() #25
  unreachable

69:                                               ; preds = %59, %49
  %70 = phi i32 [ %53, %49 ], [ %60, %59 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %113, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 1
  %74 = zext i32 %70 to i64
  br label %75

75:                                               ; preds = %72, %95
  %76 = phi i64 [ 0, %72 ], [ %111, %95 ]
  %77 = phi i32 [ %41, %72 ], [ %110, %95 ]
  %78 = load ptr, ptr %73, align 8, !tbaa !52
  %79 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 %76, i32 1
  %80 = load i8, ptr %79, align 4
  %81 = icmp eq i8 %80, 69
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load ptr, ptr %4, align 8, !tbaa !200
  %84 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 %76, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !52
  %86 = add i32 %85, -1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %83, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.ht_identifier, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !231
  br label %95

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 %76
  %94 = tail call i32 @cpp_token_len(ptr noundef %93) #22
  br label %95

95:                                               ; preds = %92, %82
  %96 = phi i32 [ %91, %82 ], [ %94, %92 ]
  %97 = add i32 %96, %77
  %98 = getelementptr inbounds %struct.cpp_token, ptr %78, i64 %76, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !119
  %100 = lshr i16 %99, 2
  %101 = and i16 %100, 1
  %102 = zext nneg i16 %101 to i32
  %103 = add i32 %97, %102
  %104 = and i16 %99, 8
  %105 = icmp eq i16 %104, 0
  %106 = add i32 %103, 3
  %107 = select i1 %105, i32 %103, i32 %106
  %108 = and i16 %99, 1
  %109 = zext nneg i16 %108 to i32
  %110 = add i32 %107, %109
  %111 = add nuw nsw i64 %76, 1
  %112 = icmp eq i64 %111, %74
  br i1 %112, label %113, label %75, !llvm.loop !233

113:                                              ; preds = %95, %69, %45
  %114 = phi i32 [ %48, %45 ], [ %41, %69 ], [ %110, %95 ]
  %115 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 35
  %116 = load i32, ptr %115, align 8, !tbaa !191
  %117 = icmp ugt i32 %114, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %120 = load ptr, ptr %119, align 8, !tbaa !193
  %121 = zext i32 %114 to i64
  %122 = tail call ptr @xrealloc(ptr noundef %120, i64 noundef %121) #22
  store ptr %122, ptr %119, align 8, !tbaa !193
  store i32 %114, ptr %115, align 8, !tbaa !191
  br label %123

123:                                              ; preds = %118, %113
  %124 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 34
  %125 = load ptr, ptr %124, align 8, !tbaa !193
  %126 = load ptr, ptr %1, align 8, !tbaa !74
  %127 = load i32, ptr %14, align 8, !tbaa !231
  %128 = zext i32 %127 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %126, i64 %128, i1 false)
  %129 = load i32, ptr %14, align 8, !tbaa !231
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %125, i64 %130
  %132 = load i8, ptr %17, align 2
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %182, label %135

135:                                              ; preds = %123
  %136 = getelementptr inbounds i8, ptr %131, i64 1
  store i8 40, ptr %131, align 1, !tbaa !52
  %137 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 4
  %138 = load i16, ptr %137, align 8, !tbaa !108
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %179, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  br label %142

142:                                              ; preds = %140, %174
  %143 = phi i64 [ 0, %140 ], [ %160, %174 ]
  %144 = phi ptr [ %136, %140 ], [ %175, %174 ]
  %145 = load ptr, ptr %4, align 8, !tbaa !200
  %146 = getelementptr inbounds ptr, ptr %145, i64 %143
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  %148 = load ptr, ptr %141, align 8, !tbaa !208
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %142
  %151 = load ptr, ptr %147, align 8, !tbaa !74
  %152 = getelementptr inbounds %struct.ht_identifier, ptr %147, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !231
  %154 = zext i32 %153 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %151, i64 %154, i1 false)
  %155 = load i32, ptr %152, align 8, !tbaa !231
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %144, i64 %156
  br label %158

158:                                              ; preds = %150, %142
  %159 = phi ptr [ %157, %150 ], [ %144, %142 ]
  %160 = add nuw nsw i64 %143, 1
  %161 = load i16, ptr %137, align 8, !tbaa !108
  %162 = zext i16 %161 to i64
  %163 = icmp ult i64 %160, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = getelementptr inbounds i8, ptr %159, i64 1
  store i8 44, ptr %159, align 1, !tbaa !52
  br label %174

166:                                              ; preds = %158
  %167 = load i8, ptr %17, align 2
  %168 = and i8 %167, 2
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds i8, ptr %159, i64 1
  store i8 46, ptr %159, align 1, !tbaa !52
  %172 = getelementptr inbounds i8, ptr %159, i64 2
  store i8 46, ptr %171, align 1, !tbaa !52
  %173 = getelementptr inbounds i8, ptr %159, i64 3
  store i8 46, ptr %172, align 1, !tbaa !52
  br label %174

174:                                              ; preds = %166, %170, %164
  %175 = phi ptr [ %165, %164 ], [ %173, %170 ], [ %159, %166 ]
  %176 = load i16, ptr %137, align 8, !tbaa !108
  %177 = zext i16 %176 to i64
  %178 = icmp ult i64 %160, %177
  br i1 %178, label %142, label %179, !llvm.loop !234

179:                                              ; preds = %174, %135
  %180 = phi ptr [ %136, %135 ], [ %175, %174 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 1
  store i8 41, ptr %180, align 1, !tbaa !52
  br label %182

182:                                              ; preds = %179, %123
  %183 = phi ptr [ %181, %179 ], [ %131, %123 ]
  %184 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 32, ptr %183, align 1, !tbaa !52
  %185 = load i8, ptr %42, align 2, !tbaa !89
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  %188 = tail call ptr @_cpp_copy_replacement_text(ptr noundef %4, ptr noundef nonnull %184) #22
  br label %276

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 3
  %191 = load i32, ptr %190, align 4, !tbaa !157
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %276, label %193

193:                                              ; preds = %189
  %194 = load i8, ptr %17, align 2
  %195 = and i8 %194, 32
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %210, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !52
  br label %200

200:                                              ; preds = %197, %206
  %201 = phi i32 [ 0, %197 ], [ %207, %206 ]
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.cpp_token, ptr %199, i64 %202, i32 1
  %204 = load i8, ptr %203, align 4
  %205 = icmp eq i8 %204, 38
  br i1 %205, label %210, label %206

206:                                              ; preds = %200
  %207 = add nuw i32 %201, 1
  %208 = icmp eq i32 %207, %191
  br i1 %208, label %209, label %200, !llvm.loop !158

209:                                              ; preds = %206
  tail call void @abort() #25
  unreachable

210:                                              ; preds = %200, %193
  %211 = phi i32 [ %191, %193 ], [ %201, %200 ]
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %276, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.cpp_macro, ptr %4, i64 0, i32 1
  %215 = zext i32 %211 to i64
  br label %216

216:                                              ; preds = %213, %272
  %217 = phi i64 [ 0, %213 ], [ %274, %272 ]
  %218 = phi ptr [ %184, %213 ], [ %273, %272 ]
  %219 = load ptr, ptr %214, align 8, !tbaa !52
  %220 = getelementptr inbounds %struct.cpp_token, ptr %219, i64 %217
  %221 = getelementptr inbounds %struct.cpp_token, ptr %219, i64 %217, i32 2
  %222 = load i16, ptr %221, align 2, !tbaa !119
  %223 = and i16 %222, 1
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %216
  %226 = getelementptr inbounds i8, ptr %218, i64 1
  store i8 32, ptr %218, align 1, !tbaa !52
  br label %227

227:                                              ; preds = %225, %216
  %228 = phi ptr [ %226, %225 ], [ %218, %216 ]
  %229 = load i16, ptr %221, align 2, !tbaa !119
  %230 = and i16 %229, 4
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds i8, ptr %228, i64 1
  store i8 35, ptr %228, align 1, !tbaa !52
  br label %234

234:                                              ; preds = %232, %227
  %235 = phi ptr [ %233, %232 ], [ %228, %227 ]
  %236 = getelementptr inbounds %struct.cpp_token, ptr %219, i64 %217, i32 1
  %237 = load i8, ptr %236, align 4
  %238 = icmp eq i8 %237, 69
  br i1 %238, label %239, label %261

239:                                              ; preds = %234
  %240 = load ptr, ptr %4, align 8, !tbaa !200
  %241 = getelementptr inbounds %struct.cpp_token, ptr %219, i64 %217, i32 3
  %242 = load i32, ptr %241, align 8, !tbaa !52
  %243 = add i32 %242, -1
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %240, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = load ptr, ptr %246, align 8, !tbaa !74
  %248 = getelementptr inbounds %struct.ht_identifier, ptr %246, i64 0, i32 1
  %249 = load i32, ptr %248, align 8, !tbaa !231
  %250 = zext i32 %249 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %235, ptr align 1 %247, i64 %250, i1 false)
  %251 = load ptr, ptr %4, align 8, !tbaa !200
  %252 = load i32, ptr %241, align 8, !tbaa !52
  %253 = add i32 %252, -1
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %251, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = getelementptr inbounds %struct.ht_identifier, ptr %256, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !231
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %235, i64 %259
  br label %263

261:                                              ; preds = %234
  %262 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %220, ptr noundef %235, i8 noundef zeroext 0) #22
  br label %263

263:                                              ; preds = %261, %239
  %264 = phi ptr [ %260, %239 ], [ %262, %261 ]
  %265 = load i16, ptr %221, align 2, !tbaa !119
  %266 = and i16 %265, 8
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds i8, ptr %264, i64 1
  store i8 32, ptr %264, align 1, !tbaa !52
  %270 = getelementptr inbounds i8, ptr %264, i64 2
  store i8 35, ptr %269, align 1, !tbaa !52
  %271 = getelementptr inbounds i8, ptr %264, i64 3
  store i8 35, ptr %270, align 1, !tbaa !52
  br label %272

272:                                              ; preds = %268, %263
  %273 = phi ptr [ %271, %268 ], [ %264, %263 ]
  %274 = add nuw nsw i64 %217, 1
  %275 = icmp eq i64 %274, %215
  br i1 %275, label %276, label %216, !llvm.loop !235

276:                                              ; preds = %272, %210, %189, %187
  %277 = phi ptr [ %188, %187 ], [ %184, %189 ], [ %184, %210 ], [ %273, %272 ]
  store i8 0, ptr %277, align 1, !tbaa !52
  %278 = load ptr, ptr %124, align 8, !tbaa !193
  br label %279

279:                                              ; preds = %276, %9
  %280 = phi ptr [ null, %9 ], [ %278, %276 ]
  ret ptr %280
}

declare i64 @_cpp_replacement_text_len(ptr noundef) local_unnamed_addr #1

declare i32 @cpp_token_len(ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_copy_replacement_text(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @paste_tokens(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #2 !prof !45 {
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = tail call i32 @cpp_token_len(ptr noundef %4) #22
  %6 = tail call i32 @cpp_token_len(ptr noundef %2) #22
  %7 = add i32 %5, 1
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  %11 = load ptr, ptr %1, align 8, !tbaa !46
  %12 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %10, i8 noundef zeroext 0) #22
  %13 = load ptr, ptr %1, align 8, !tbaa !46
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
  store i8 32, ptr %12, align 1, !tbaa !52
  br label %23

23:                                               ; preds = %21, %17, %3
  %24 = phi ptr [ %22, %21 ], [ %12, %17 ], [ %12, %3 ]
  %25 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 72
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %2, ptr noundef %24, i8 noundef zeroext 0) #22
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi ptr [ %29, %28 ], [ %24, %23 ]
  store i8 10, ptr %31, align 1, !tbaa !52
  %32 = ptrtoint ptr %31 to i64
  %33 = ptrtoint ptr %10 to i64
  %34 = sub i64 %32, %33
  %35 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %10, i64 noundef %34, i32 noundef 1) #22
  call void @_cpp_clean_line(ptr noundef %0) #22
  %36 = call ptr @_cpp_temp_token(ptr noundef %0) #22
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %36, ptr %37, align 8, !tbaa !90
  %38 = call ptr @_cpp_lex_direct(ptr noundef %0) #22
  %39 = load ptr, ptr %0, align 8, !tbaa !93
  %40 = load ptr, ptr %39, align 8, !tbaa !236
  %41 = getelementptr inbounds %struct.cpp_buffer, ptr %39, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !237
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %30
  %45 = load i32, ptr %38, align 8, !tbaa !128
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #22
  call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1)
  store i8 0, ptr %12, align 1, !tbaa !52
  %46 = load ptr, ptr %1, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !tbaa.struct !149
  store ptr %38, ptr %1, align 8, !tbaa !46
  store i32 %45, ptr %38, align 8, !tbaa !128
  %47 = getelementptr inbounds %struct.cpp_token, ptr %38, i64 0, i32 2
  %48 = load i16, ptr %47, align 2, !tbaa !119
  %49 = and i16 %48, -9
  store i16 %49, ptr %47, align 2, !tbaa !119
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !220
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef %2) #22
  %55 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.34, ptr noundef nonnull %10, ptr noundef %54) #22
  br label %57

56:                                               ; preds = %30
  store ptr %38, ptr %1, align 8, !tbaa !46
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #22
  br label %57

57:                                               ; preds = %44, %53, %56
  %58 = phi i8 [ 1, %56 ], [ 0, %53 ], [ 0, %44 ]
  ret i8 %58
}

declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_lex_direct(ptr noundef) local_unnamed_addr #1

declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @builtin_macro(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !106
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = tail call i32 @_cpp_do__Pragma(ptr noundef %0) #22
  br label %46

12:                                               ; preds = %2
  %13 = tail call ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr noundef %1)
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #23
  %15 = add i64 %14, 1
  %16 = alloca i8, i64 %15, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %16, ptr align 1 %13, i64 %14, i1 false)
  %17 = getelementptr inbounds i8, ptr %16, i64 %14
  store i8 10, ptr %17, align 1, !tbaa !52
  %18 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %16, i64 noundef %14, i32 noundef 1) #22
  call void @_cpp_clean_line(ptr noundef %0) #22
  %19 = call ptr @_cpp_temp_token(ptr noundef %0) #22
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %19, ptr %20, align 8, !tbaa !90
  %21 = call ptr @_cpp_lex_direct(ptr noundef %0) #22
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = call ptr @xmalloc(i64 noundef 56) #22
  %28 = load ptr, ptr %22, align 8, !tbaa !110
  %29 = getelementptr inbounds %struct.cpp_context, ptr %27, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !112
  store ptr null, ptr %27, align 8, !tbaa !111
  store ptr %27, ptr %28, align 8, !tbaa !111
  br label %30

30:                                               ; preds = %12, %26
  %31 = phi ptr [ %27, %26 ], [ %24, %12 ]
  store ptr %31, ptr %22, align 8, !tbaa !110
  %32 = getelementptr inbounds %struct.cpp_context, ptr %31, i64 0, i32 5
  store i8 1, ptr %32, align 8, !tbaa !113
  %33 = getelementptr inbounds %struct.cpp_context, ptr %31, i64 0, i32 3
  %34 = getelementptr inbounds %struct.cpp_context, ptr %31, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  store ptr %21, ptr %34, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.cpp_token, ptr %21, i64 1
  %36 = getelementptr inbounds %struct.cpp_context, ptr %31, i64 0, i32 2, i32 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !52
  %37 = load ptr, ptr %0, align 8, !tbaa !93
  %38 = load ptr, ptr %37, align 8, !tbaa !236
  %39 = getelementptr inbounds %struct.cpp_buffer, ptr %37, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !237
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load ptr, ptr %1, align 8, !tbaa !74
  %44 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %43) #22
  br label %45

45:                                               ; preds = %42, %30
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #22
  br label %46

46:                                               ; preds = %6, %45, %10
  %47 = phi i32 [ %11, %10 ], [ 1, %45 ], [ 0, %6 ]
  ret i32 %47
}

declare ptr @_cpp_get_buff(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare ptr @_cpp_append_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

declare i32 @_cpp_do__Pragma(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lex_expansion_token(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !238 !PGOFuncName !239 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct._cpp_buff, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = getelementptr inbounds %struct._cpp_buff, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !157
  %16 = add i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = mul nuw nsw i64 %17, 24
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %20, label %21, !prof !217

20:                                               ; preds = %2
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 24) #22
  br label %21

21:                                               ; preds = %2, %20
  %22 = load ptr, ptr %5, align 8, !tbaa !189
  %23 = getelementptr inbounds %struct._cpp_buff, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !144
  %25 = load i32, ptr %14, align 4, !tbaa !157
  %26 = add i32 %25, 1
  store i32 %26, ptr %14, align 4, !tbaa !157
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.cpp_token, ptr %24, i64 %27
  store ptr %28, ptr %3, align 8, !tbaa !90
  %29 = tail call ptr @_cpp_lex_direct(ptr noundef %0) #22
  store ptr %4, ptr %3, align 8, !tbaa !90
  %30 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 53
  br i1 %32, label %33, label %44, !prof !240

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.cpp_hashnode, ptr %35, i64 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = and i16 %37, 4096
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40, !prof !241

40:                                               ; preds = %33
  store i8 69, ptr %30, align 4
  %41 = getelementptr inbounds %struct.cpp_hashnode, ptr %35, i64 0, i32 4
  %42 = load i16, ptr %41, align 8, !tbaa !52
  %43 = zext i16 %42 to i32
  store i32 %43, ptr %34, align 8, !tbaa !52
  br label %133

44:                                               ; preds = %33, %21
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %46 = load i8, ptr %45, align 1, !tbaa !156
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %133, label %48, !prof !242

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %50 = load i16, ptr %49, align 8, !tbaa !108
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %133, label %52

52:                                               ; preds = %48
  switch i8 %31, label %133 [
    i8 61, label %53
    i8 56, label %53
  ]

53:                                               ; preds = %52, %52
  %54 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 3
  %55 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 3, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !243
  %57 = load i32, ptr %54, align 8, !tbaa !245
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, ptr %56, i64 %58
  %60 = getelementptr i8, ptr %59, i64 -1
  %61 = icmp ugt i32 %57, 2
  br i1 %61, label %62, label %133

62:                                               ; preds = %53
  %63 = getelementptr inbounds i8, ptr %56, i64 1
  %64 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  br label %66

66:                                               ; preds = %82, %62
  %67 = phi ptr [ %63, %62 ], [ %83, %82 ]
  %68 = load i8, ptr %67, align 1, !tbaa !52
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !150
  %72 = and i16 %71, 512
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = icmp eq i8 %68, 36
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8, ptr %64, align 2, !tbaa !246
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76, %74
  %80 = getelementptr inbounds i8, ptr %67, i64 1
  %81 = icmp ult ptr %80, %60
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %131
  %83 = phi ptr [ %80, %79 ], [ %104, %131 ]
  br label %66, !llvm.loop !247

84:                                               ; preds = %76, %66, %79
  %85 = phi ptr [ %67, %76 ], [ %67, %66 ], [ %80, %79 ]
  %86 = icmp ult ptr %85, %60
  br i1 %86, label %87, label %103

87:                                               ; preds = %84, %100
  %88 = phi ptr [ %101, %100 ], [ %85, %84 ]
  %89 = load i8, ptr %88, align 1, !tbaa !52
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !150
  %93 = and i16 %92, 516
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = icmp eq i8 %89, 36
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = load i8, ptr %65, align 2, !tbaa !246
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97, %87
  %101 = getelementptr inbounds i8, ptr %88, i64 1
  %102 = icmp ult ptr %101, %60
  br i1 %102, label %87, label %103, !llvm.loop !248

103:                                              ; preds = %100, %95, %97, %84
  %104 = phi ptr [ %85, %84 ], [ %101, %100 ], [ %88, %95 ], [ %88, %97 ]
  %105 = ptrtoint ptr %104 to i64
  %106 = ptrtoint ptr %85 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load i16, ptr %49, align 8, !tbaa !108
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %103
  %112 = load ptr, ptr %1, align 8, !tbaa !200
  %113 = and i64 %107, 4294967295
  %114 = zext i16 %109 to i64
  br label %115

115:                                              ; preds = %111, %128
  %116 = phi i64 [ 0, %111 ], [ %129, %128 ]
  %117 = getelementptr inbounds ptr, ptr %112, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.ht_identifier, ptr %118, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !231
  %121 = icmp eq i32 %120, %108
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load ptr, ptr %118, align 8, !tbaa !74
  %124 = tail call i32 @bcmp(ptr nonnull %85, ptr %123, i64 %113)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %123) #22
  br label %131

128:                                              ; preds = %115, %122
  %129 = add nuw nsw i64 %116, 1
  %130 = icmp eq i64 %129, %114
  br i1 %130, label %131, label %115, !llvm.loop !249

131:                                              ; preds = %128, %103, %126
  %132 = icmp ult ptr %104, %60
  br i1 %132, label %82, label %133

133:                                              ; preds = %131, %53, %52, %44, %48, %40
  ret ptr %29
}

declare zeroext i8 @_cpp_expansions_different_trad(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cpp_equiv_tokens(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #20

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #21

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { noreturn nounwind }
attributes #26 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @cpp_get_token, ptr @_cpp_lex_token, i64 88}
!36 = !{ptr @cpp_get_token_with_location, ptr @_cpp_lex_token, i64 2660351}
!37 = !{ptr @_cpp_save_parameter, ptr @xrealloc, i64 1}
!38 = !{ptr @_cpp_create_definition, ptr @_cpp_lex_token, i64 209}
!39 = !{ptr @_cpp_create_definition, ptr @_cpp_save_parameter, i64 10}
!40 = !{ptr @_cpp_create_definition, ptr @lex_expansion_token, i64 307}
!41 = !{ptr @_cpp_create_definition, ptr @strncmp, i64 189}
!42 = !{ptr @_cpp_create_definition, ptr @strcmp, i64 6}
!43 = !{ptr @lex_expansion_token, ptr @_cpp_lex_direct, i64 307}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !48, i64 0}
!52 = !{!48, !48, i64 0}
!53 = !{!54, !47, i64 40}
!54 = !{!"cpp_reader", !47, i64 0, !47, i64 8, !55, i64 16, !47, i64 40, !51, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !56, i64 80, !47, i64 136, !47, i64 144, !57, i64 152, !51, i64 176, !48, i64 180, !47, i64 184, !47, i64 192, !59, i64 200, !47, i64 264, !47, i64 272, !47, i64 280, !47, i64 288, !47, i64 296, !47, i64 304, !61, i64 312, !48, i64 400, !48, i64 401, !47, i64 408, !47, i64 416, !48, i64 424, !47, i64 432, !62, i64 440, !47, i64 472, !51, i64 480, !51, i64 484, !47, i64 488, !51, i64 496, !63, i64 504, !63, i64 528, !63, i64 552, !63, i64 576, !63, i64 600, !47, i64 624, !47, i64 632, !57, i64 640, !57, i64 664, !47, i64 688, !61, i64 696, !61, i64 784, !47, i64 872, !64, i64 880, !47, i64 1016, !47, i64 1024, !47, i64 1032, !65, i64 1040, !67, i64 1168, !48, i64 1200, !68, i64 1208, !47, i64 1240, !47, i64 1248, !47, i64 1256, !47, i64 1264, !51, i64 1272, !69, i64 1280, !47, i64 1296}
!55 = !{!"lexer_state", !48, i64 0, !48, i64 1, !48, i64 2, !48, i64 3, !48, i64 4, !48, i64 5, !48, i64 6, !48, i64 7, !48, i64 8, !48, i64 9, !48, i64 10, !51, i64 12, !48, i64 16, !48, i64 17}
!56 = !{!"cpp_context", !47, i64 0, !47, i64 8, !48, i64 16, !47, i64 32, !47, i64 40, !48, i64 48}
!57 = !{!"cpp_token", !51, i64 0, !51, i64 4, !58, i64 6, !48, i64 8}
!58 = !{!"short", !48, i64 0}
!59 = !{!"cpp_dir", !47, i64 0, !47, i64 8, !51, i64 16, !48, i64 20, !48, i64 21, !47, i64 24, !47, i64 32, !47, i64 40, !60, i64 48, !60, i64 56}
!60 = !{!"long", !48, i64 0}
!61 = !{!"obstack", !60, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !60, i64 40, !51, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !51, i64 80, !51, i64 80, !51, i64 80}
!62 = !{!"tokenrun", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!63 = !{!"cset_converter", !47, i64 0, !47, i64 8, !51, i64 16}
!64 = !{!"cpp_callbacks", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128}
!65 = !{!"cpp_options", !51, i64 0, !51, i64 4, !48, i64 8, !48, i64 9, !48, i64 10, !48, i64 11, !48, i64 12, !48, i64 13, !48, i64 14, !48, i64 15, !48, i64 16, !48, i64 17, !48, i64 18, !48, i64 19, !48, i64 20, !48, i64 21, !48, i64 22, !48, i64 23, !48, i64 24, !48, i64 25, !48, i64 26, !48, i64 27, !48, i64 28, !48, i64 29, !48, i64 30, !48, i64 31, !48, i64 32, !48, i64 33, !48, i64 34, !48, i64 35, !48, i64 36, !48, i64 37, !48, i64 38, !48, i64 39, !48, i64 40, !48, i64 41, !48, i64 42, !47, i64 48, !47, i64 56, !47, i64 64, !51, i64 72, !48, i64 76, !48, i64 77, !66, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !48, i64 120, !48, i64 121, !48, i64 122, !48, i64 123, !48, i64 124}
!66 = !{!"", !51, i64 0, !48, i64 4, !48, i64 5, !48, i64 6, !48, i64 7}
!67 = !{!"spec_nodes", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!68 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16, !51, i64 24}
!69 = !{!"", !47, i64 0, !51, i64 8, !51, i64 12}
!70 = !{!71, !51, i64 16}
!71 = !{!"cpp_macro", !47, i64 0, !48, i64 8, !51, i64 16, !51, i64 20, !58, i64 24, !51, i64 26, !51, i64 26, !51, i64 26, !51, i64 26, !51, i64 26, !51, i64 26}
!72 = !{!73, !51, i64 16}
!73 = !{!"line_map", !47, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !48, i64 21, !51, i64 22}
!74 = !{!75, !47, i64 0}
!75 = !{!"cpp_hashnode", !76, i64 0, !51, i64 16, !51, i64 16, !48, i64 17, !51, i64 18, !51, i64 18, !48, i64 24}
!76 = !{!"ht_identifier", !47, i64 0, !51, i64 8, !51, i64 12}
!77 = !{!78, !47, i64 80}
!78 = !{!"cpp_buffer", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !51, i64 48, !51, i64 52, !51, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !48, i64 96, !51, i64 97, !51, i64 97, !51, i64 97, !48, i64 98, !59, i64 104, !63, i64 168}
!79 = !{!80, !51, i64 36}
!80 = !{!"line_maps", !47, i64 0, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !48, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !47, i64 48}
!81 = !{!80, !47, i64 0}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!73, !47, i64 0}
!86 = distinct !{!86, !83, !84}
!87 = !{!80, !51, i64 24}
!88 = !{!80, !51, i64 12}
!89 = !{!54, !48, i64 1082}
!90 = !{!54, !47, i64 432}
!91 = !{!73, !51, i64 12}
!92 = !{!73, !51, i64 8}
!93 = !{!54, !47, i64 0}
!94 = !{!78, !48, i64 98}
!95 = !{!54, !47, i64 624}
!96 = !{!60, !60, i64 0}
!97 = !{!98, !51, i64 16}
!98 = !{!"tm", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !60, i64 40, !47, i64 48}
!99 = !{!98, !51, i64 12}
!100 = !{!98, !51, i64 20}
!101 = !{!54, !47, i64 632}
!102 = !{!98, !51, i64 8}
!103 = !{!98, !51, i64 4}
!104 = !{!98, !51, i64 0}
!105 = !{!54, !48, i64 1164}
!106 = !{!54, !48, i64 16}
!107 = !{!54, !51, i64 1272}
!108 = !{!71, !58, i64 24}
!109 = !{!54, !48, i64 1077}
!110 = !{!54, !47, i64 136}
!111 = !{!56, !47, i64 0}
!112 = !{!56, !47, i64 8}
!113 = !{!56, !48, i64 48}
!114 = !{!56, !47, i64 40}
!115 = !{!56, !47, i64 32}
!116 = !{!"function_entry_count", i64 88}
!117 = !{!54, !48, i64 180}
!118 = !{!"branch_weights", i32 2660439, i32 0}
!119 = !{!57, !58, i64 6}
!120 = !{i8 0, i8 2}
!121 = distinct !{!121, !83, !84}
!122 = distinct !{!122, !84}
!123 = !{!"branch_weights", i32 2660419, i32 20}
!124 = !{!"branch_weights", i32 0, i32 20}
!125 = !{!"branch_weights", i32 581261, i32 2079178}
!126 = !{!"branch_weights", i32 2, i32 581259}
!127 = !{!"branch_weights", i32 2, i32 0}
!128 = !{!57, !51, i64 0}
!129 = !{!54, !51, i64 176}
!130 = !{!54, !48, i64 24}
!131 = !{!"branch_weights", i32 0, i32 2}
!132 = !{!54, !47, i64 968}
!133 = !{i64 0, i64 8, !46, i64 0, i64 8, !46, i64 0, i64 4, !50, i64 8, i64 8, !46, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50}
!134 = !{!"branch_weights", i32 0, i32 0, i32 2660439}
!135 = !{!54, !48, i64 424}
!136 = !{!54, !48, i64 19}
!137 = !{!54, !47, i64 984}
!138 = !{!54, !51, i64 48}
!139 = !{!54, !51, i64 484}
!140 = !{!54, !48, i64 25}
!141 = distinct !{!141, !84}
!142 = !{!143, !47, i64 8}
!143 = !{!"_cpp_buff", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!144 = !{!143, !47, i64 16}
!145 = !{!146, !47, i64 0}
!146 = !{!"macro_arg", !47, i64 0, !47, i64 8, !47, i64 16, !51, i64 24, !51, i64 28}
!147 = !{!143, !47, i64 24}
!148 = distinct !{!148, !84}
!149 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 6, i64 2, !150, i64 8, i64 8, !46, i64 8, i64 8, !46, i64 8, i64 4, !50, i64 16, i64 8, !46, i64 8, i64 4, !50, i64 8, i64 4, !50, i64 8, i64 4, !50}
!150 = !{!58, !58, i64 0}
!151 = !{!143, !47, i64 0}
!152 = distinct !{!152, !83, !84}
!153 = distinct !{!153, !83, !84}
!154 = !{!146, !51, i64 24}
!155 = !{!54, !48, i64 1076}
!156 = !{!54, !48, i64 1063}
!157 = !{!71, !51, i64 20}
!158 = distinct !{!158, !83, !84}
!159 = !{!146, !47, i64 16}
!160 = !{!54, !47, i64 64}
!161 = distinct !{!161, !83, !84}
!162 = !{!146, !47, i64 8}
!163 = !{!146, !51, i64 28}
!164 = distinct !{!164, !83, !84}
!165 = !{!54, !48, i64 17}
!166 = !{!54, !48, i64 1075}
!167 = distinct !{!167, !83, !84}
!168 = distinct !{!168, !83, !84}
!169 = !{!54, !47, i64 1008}
!170 = distinct !{!170, !83, !84}
!171 = !{!"function_entry_count", i64 2660351}
!172 = !{!"branch_weights", i32 2660351, i32 0}
!173 = !{!54, !48, i64 26}
!174 = distinct !{!174, !83, !84}
!175 = distinct !{!175, !83, !84}
!176 = !{!54, !51, i64 480}
!177 = !{!54, !47, i64 472}
!178 = !{!62, !47, i64 16}
!179 = !{!62, !47, i64 8}
!180 = !{!62, !47, i64 24}
!181 = distinct !{!181, !83, !84}
!182 = !{!"function_entry_count", i64 68}
!183 = !{!"branch_weights", i32 68, i32 0}
!184 = !{!"branch_weights", i32 1, i32 135}
!185 = !{!"branch_weights", i32 0, i32 68}
!186 = !{!"branch_weights", i32 135, i32 1}
!187 = !{!"function_entry_count", i64 10}
!188 = !{!"branch_weights", i32 10, i32 0}
!189 = !{!54, !47, i64 56}
!190 = !{!"branch_weights", i32 0, i32 10}
!191 = !{!54, !51, i64 496}
!192 = !{!"branch_weights", i32 1, i32 9}
!193 = !{!54, !47, i64 488}
!194 = !{!"function_entry_count", i64 189}
!195 = !{!54, !47, i64 1016}
!196 = !{!197, !47, i64 104}
!197 = !{!"ht", !61, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !51, i64 112, !51, i64 116, !47, i64 120, !51, i64 128, !51, i64 132, !48, i64 136}
!198 = !{!"branch_weights", i32 0, i32 189}
!199 = !{!"VP", i32 0, i64 189, i64 440498917606777698, i64 189}
!200 = !{!71, !47, i64 0}
!201 = !{!54, !48, i64 1074}
!202 = !{!"branch_weights", i32 189, i32 0}
!203 = !{!"branch_weights", i32 25, i32 164}
!204 = !{!"branch_weights", i32 10, i32 15}
!205 = !{!"branch_weights", i32 0, i32 10, i32 10, i32 0, i32 0, i32 0, i32 0}
!206 = !{!54, !48, i64 1052}
!207 = distinct !{!207, !84}
!208 = !{!54, !47, i64 1192}
!209 = !{!54, !48, i64 22}
!210 = !{!54, !48, i64 1067}
!211 = !{!"branch_weights", i32 10, i32 10}
!212 = !{!"VP", i32 0, i64 10, i64 440498917606777698, i64 10}
!213 = !{!"VP", i32 1, i64 10, i64 8, i64 10}
!214 = !{!"branch_weights", i32 2, i32 177}
!215 = !{!"branch_weights", i32 0, i32 177}
!216 = !{!"branch_weights", i32 179, i32 10}
!217 = !{!"branch_weights", i32 0, i32 486}
!218 = !{!"branch_weights", i32 297, i32 189}
!219 = !{!"branch_weights", i32 0, i32 297}
!220 = !{!54, !51, i64 1044}
!221 = !{!"branch_weights", i32 292, i32 189, i32 5}
!222 = !{!"branch_weights", i32 0, i32 5}
!223 = !{!"branch_weights", i32 5, i32 0}
!224 = distinct !{!224, !84}
!225 = !{!"branch_weights", i32 2, i32 187}
!226 = distinct !{!226, !83, !84}
!227 = !{!"VP", i32 1, i64 189, i64 17, i64 139, i64 33, i64 22, i64 65, i64 20, i64 129, i64 6}
!228 = distinct !{!228, !83, !84}
!229 = distinct !{!229, !83, !84}
!230 = distinct !{!230, !83, !84}
!231 = !{!75, !51, i64 8}
!232 = distinct !{!232, !83, !84}
!233 = distinct !{!233, !83, !84}
!234 = distinct !{!234, !83, !84}
!235 = distinct !{!235, !83, !84}
!236 = !{!78, !47, i64 0}
!237 = !{!78, !47, i64 32}
!238 = !{!"function_entry_count", i64 307}
!239 = !{!"cpp_macro.c;lex_expansion_token"}
!240 = !{!"branch_weights", i32 64, i32 243}
!241 = !{!"branch_weights", i32 54, i32 10}
!242 = !{!"branch_weights", i32 297, i32 0}
!243 = !{!244, !47, i64 8}
!244 = !{!"cpp_string", !51, i64 0, !47, i64 8}
!245 = !{!244, !51, i64 0}
!246 = !{!54, !48, i64 1070}
!247 = distinct !{!247, !83, !84}
!248 = distinct !{!248, !83, !84}
!249 = distinct !{!249, !83, !84}
