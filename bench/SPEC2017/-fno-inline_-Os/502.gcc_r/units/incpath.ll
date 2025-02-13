; ModuleID = 'incpath.c'
source_filename = "incpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.target_c_incpath_s = type { ptr, ptr }
%struct.default_include = type { ptr, ptr, i8, i8, i8, i8 }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@heads = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@tails = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@quote_ignores_source_dir = internal unnamed_addr global i1 false, align 1
@reltable.register_include_chains = internal unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32)], align 4
@.str = private unnamed_addr constant [15 x i8] c"C_INCLUDE_PATH\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CPLUS_INCLUDE_PATH\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OBJC_INCLUDE_PATH\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"OBJCPLUS_INCLUDE_PATH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CPATH\00", align 1
@target_c_incpath = dso_local local_unnamed_addr global %struct.target_c_incpath_s { ptr @hook_void_charptr_charptr_int, ptr @hook_void_charptr_charptr_int }, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@cpp_GCC_INCLUDE_DIR_len = external local_unnamed_addr constant i64, align 8
@cpp_include_defaults = external local_unnamed_addr constant [0 x %struct.default_include], align 8
@cpp_GCC_INCLUDE_DIR = external constant [0 x i8], align 1
@dir_separator_str = internal constant [2 x i8] c"/\00", align 1
@cpp_PREFIX = external constant [0 x i8], align 1
@cpp_PREFIX_len = external local_unnamed_addr constant i64, align 8
@add_standard_paths.relocated_prefix = internal unnamed_addr global ptr null, align 8
@gcc_exec_prefix = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@cpp_EXEC_PREFIX = external constant [0 x i8], align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"#include \22...\22 search starts here:\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"#include <...> search starts here:\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"End of search list.\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: not a directory\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ignoring duplicate directory \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"  as it is a non-system directory that duplicates a system directory\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"ignoring nonexistent directory \22%s\22\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @split_quote_chain() local_unnamed_addr #0 !prof !57 {
  %1 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !58
  store ptr %1, ptr @heads, align 16, !tbaa !58
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 1), align 8, !tbaa !58
  store ptr %2, ptr @tails, align 16, !tbaa !58
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !58
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 1), align 8, !tbaa !58
  store i1 true, ptr @quote_ignores_source_dir, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @add_cpp_dir_path(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !62 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x ptr], ptr @tails, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds [4 x ptr], ptr @heads, i64 0, i64 %3
  %8 = select i1 %6, ptr %7, ptr %5, !prof !63
  store ptr %0, ptr %8, align 8, !tbaa !58
  store ptr %0, ptr %4, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_path(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 !prof !62 {
  %5 = tail call ptr @xmalloc(i64 noundef 64) #13
  store ptr null, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !68
  %7 = and i32 %1, -2
  %8 = icmp eq i32 %7, 2
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i8 2, i8 1
  %11 = select i1 %8, i8 %10, i8 0, !prof !69
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 3
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 4
  store i8 %3, ptr %14, align 1, !tbaa !71
  tail call void @add_cpp_dir_path(ptr noundef nonnull %5, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_include_chains(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 !prof !62 {
  %8 = tail call ptr @cpp_get_options(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 4
  %10 = load i8, ptr %9, align 2, !tbaa !72
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i64 0, i64 2
  %13 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !75
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i64
  %17 = or disjoint i64 %12, %16
  tail call fastcc void @add_env_var_paths(ptr noundef nonnull @.str.4, i32 noundef 1) #14
  %18 = shl i64 %17, 2
  %19 = call ptr @llvm.load.relative.i64(ptr @reltable.register_include_chains, i64 %18)
  tail call fastcc void @add_env_var_paths(ptr noundef %19, i32 noundef 2) #14
  %20 = load ptr, ptr @target_c_incpath, align 8, !tbaa !76
  tail call void %20(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %24, label %22, !prof !78

22:                                               ; preds = %7
  %23 = select i1 %15, i32 %5, i32 0, !prof !78
  tail call fastcc void @add_standard_paths(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %23) #14
  br label %24

24:                                               ; preds = %22, %7
  %25 = load ptr, ptr getelementptr inbounds (%struct.target_c_incpath_s, ptr @target_c_incpath, i64 0, i32 1), align 8, !tbaa !79
  tail call void %25(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  tail call fastcc void @merge_include_chains(ptr noundef %1, ptr noundef %0, i32 noundef %6) #14
  %26 = load ptr, ptr @heads, align 16, !tbaa !58
  %27 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !58
  %28 = load i1, ptr @quote_ignores_source_dir, align 1
  %29 = zext i1 %28 to i32
  tail call void @cpp_set_include_chains(ptr noundef %0, ptr noundef %26, ptr noundef %27, i32 noundef %29) #13
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_env_var_paths(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !80 !PGOFuncName !81 {
  %3 = tail call ptr @getenv(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5, !prof !82

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !83
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 2
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %3, %8 ], [ %31, %29 ]
  br label %13

13:                                               ; preds = %11, %16
  %14 = phi ptr [ %17, %16 ], [ %12, %11 ]
  %15 = load i8, ptr %14, align 1, !tbaa !83
  switch i8 %15, label %16 [
    i8 0, label %18
    i8 58, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  br label %13, !llvm.loop !84

18:                                               ; preds = %13, %13
  %19 = icmp eq ptr %12, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr @xstrdup(ptr noundef nonnull @.str.5) #13
  br label %29

22:                                               ; preds = %18
  %23 = ptrtoint ptr %14 to i64
  %24 = ptrtoint ptr %12 to i64
  %25 = sub i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = tail call ptr @xmalloc(i64 noundef %26) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr nonnull align 1 %12, i64 %25, i1 false)
  %28 = getelementptr inbounds i8, ptr %27, i64 %25
  store i8 0, ptr %28, align 1, !tbaa !83
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi ptr [ %21, %20 ], [ %27, %22 ]
  tail call void @add_path(ptr noundef %30, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 0) #14
  %31 = getelementptr inbounds i8, ptr %14, i64 1
  %32 = load i8, ptr %14, align 1, !tbaa !83
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %11, !llvm.loop !86

34:                                               ; preds = %29, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_standard_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 !prof !62 !PGOFuncName !87 {
  %5 = tail call zeroext i8 @cpp_relocated() #13
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9, !prof !63

7:                                                ; preds = %4
  %8 = load ptr, ptr @cpp_include_defaults, align 8, !tbaa !88
  br label %52

9:                                                ; preds = %4
  %10 = load i64, ptr @cpp_GCC_INCLUDE_DIR_len, align 8, !tbaa !90
  %11 = icmp eq i64 %10, 0
  %12 = load ptr, ptr @cpp_include_defaults, align 8, !tbaa !88
  br i1 %11, label %52, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %12, null
  br i1 %14, label %117, label %15

15:                                               ; preds = %13
  %16 = icmp ne i32 %3, 0
  %17 = icmp eq ptr %0, null
  %18 = icmp ne ptr %2, null
  br label %19

19:                                               ; preds = %15, %48
  %20 = phi ptr [ %12, %15 ], [ %50, %48 ]
  %21 = phi ptr [ @cpp_include_defaults, %15 ], [ %49, %48 ]
  %22 = getelementptr inbounds %struct.default_include, ptr %21, i64 0, i32 2
  %23 = load i8, ptr %22, align 8, !tbaa !91
  %24 = icmp eq i8 %23, 0
  %25 = or i1 %16, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  br i1 %17, label %31, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.default_include, ptr %21, i64 0, i32 4
  %29 = load i8, ptr %28, align 2, !tbaa !92
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27, %26
  %32 = tail call i32 @strncmp(ptr noundef nonnull %20, ptr noundef nonnull @cpp_GCC_INCLUDE_DIR, i64 noundef %10) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %20, i64 %10
  %36 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %35, ptr noundef null) #13
  %37 = getelementptr inbounds %struct.default_include, ptr %21, i64 0, i32 5
  %38 = load i8, ptr %37, align 1, !tbaa !93
  %39 = icmp ne i8 %38, 0
  %40 = and i1 %18, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = tail call ptr (ptr, ...) @concat(ptr noundef %36, ptr noundef nonnull @dir_separator_str, ptr noundef nonnull %2, ptr noundef null) #13
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %42, %41 ], [ %36, %34 ]
  %45 = getelementptr inbounds %struct.default_include, ptr %21, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !94
  %47 = sext i8 %46 to i32
  tail call void @add_path(ptr noundef %44, i32 noundef 2, i32 noundef %47, i8 noundef zeroext 0) #14
  br label %48

48:                                               ; preds = %19, %43, %31, %27
  %49 = getelementptr inbounds %struct.default_include, ptr %21, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %19, !llvm.loop !95

52:                                               ; preds = %48, %7, %9
  %53 = phi ptr [ %8, %7 ], [ %12, %9 ], [ %12, %48 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %117, label %55, !prof !96

55:                                               ; preds = %52
  %56 = icmp ne i32 %3, 0
  br label %57

57:                                               ; preds = %55, %113
  %58 = phi ptr [ %53, %55 ], [ %115, %113 ]
  %59 = phi ptr [ @cpp_include_defaults, %55 ], [ %114, %113 ]
  %60 = getelementptr inbounds %struct.default_include, ptr %59, i64 0, i32 2
  %61 = load i8, ptr %60, align 8, !tbaa !91
  %62 = icmp eq i8 %61, 0
  %63 = or i1 %56, %62
  br i1 %63, label %64, label %113, !prof !69

64:                                               ; preds = %57
  %65 = icmp eq ptr %0, null
  %66 = getelementptr inbounds %struct.default_include, ptr %59, i64 0, i32 4
  %67 = load i8, ptr %66, align 2, !tbaa !92
  br i1 %65, label %72, label %68, !prof !63

68:                                               ; preds = %64
  %69 = icmp eq i8 %67, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %68
  %71 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef null) #13
  br label %99

72:                                               ; preds = %64, %68
  %73 = phi i8 [ 0, %68 ], [ %67, %64 ]
  %74 = icmp ne i8 %5, 0
  %75 = icmp eq i8 %73, 0
  %76 = select i1 %75, i1 %74, i1 false
  br i1 %76, label %77, label %95, !prof !97

77:                                               ; preds = %72
  %78 = load i64, ptr @cpp_PREFIX_len, align 8
  %79 = tail call i32 @strncmp(ptr noundef nonnull %58, ptr noundef nonnull @cpp_PREFIX, i64 noundef %78) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load ptr, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !58
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load ptr, ptr @gcc_exec_prefix, align 8, !tbaa !58
  %86 = tail call ptr (ptr, ...) @concat(ptr noundef %85, ptr noundef nonnull @.str.6, ptr noundef null) #13
  %87 = tail call ptr @make_relative_prefix(ptr noundef %86, ptr noundef nonnull @cpp_EXEC_PREFIX, ptr noundef nonnull @cpp_PREFIX) #13
  store ptr %87, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !58
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi ptr [ %87, %84 ], [ %82, %81 ]
  %90 = getelementptr inbounds i8, ptr %58, i64 %78
  %91 = tail call ptr (ptr, ...) @concat(ptr noundef %89, ptr noundef nonnull %90, ptr noundef null) #13
  %92 = getelementptr inbounds %struct.default_include, ptr %59, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !98
  %94 = tail call ptr @update_path(ptr noundef %91, ptr noundef %93) #13
  br label %99

95:                                               ; preds = %77, %72
  %96 = getelementptr inbounds %struct.default_include, ptr %59, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !98
  %98 = tail call ptr @update_path(ptr noundef nonnull %58, ptr noundef %97) #13
  br label %99

99:                                               ; preds = %88, %95, %70
  %100 = phi ptr [ %71, %70 ], [ %94, %88 ], [ %98, %95 ]
  %101 = icmp ne ptr %2, null
  %102 = getelementptr inbounds %struct.default_include, ptr %59, i64 0, i32 5
  %103 = load i8, ptr %102, align 1, !tbaa !93
  %104 = icmp ne i8 %103, 0
  %105 = and i1 %101, %104
  br i1 %105, label %106, label %108, !prof !97

106:                                              ; preds = %99
  %107 = tail call ptr (ptr, ...) @concat(ptr noundef %100, ptr noundef nonnull @dir_separator_str, ptr noundef nonnull %2, ptr noundef null) #13
  br label %108

108:                                              ; preds = %106, %99
  %109 = phi ptr [ %107, %106 ], [ %100, %99 ]
  %110 = getelementptr inbounds %struct.default_include, ptr %59, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !94
  %112 = sext i8 %111 to i32
  tail call void @add_path(ptr noundef %109, i32 noundef 2, i32 noundef %112, i8 noundef zeroext 0) #14
  br label %113

113:                                              ; preds = %108, %57
  %114 = getelementptr inbounds %struct.default_include, ptr %59, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !88
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %57, !prof !99, !llvm.loop !100

117:                                              ; preds = %113, %13, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_include_chains(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !62 !PGOFuncName !101 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5, !prof !63

5:                                                ; preds = %3
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 0) #14
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 1) #14
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 2) #14
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 3) #14
  br label %6

6:                                                ; preds = %5, %3
  %7 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !58
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 3), align 8, !tbaa !58
  br i1 %8, label %13, label %10, !prof !78

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !58
  store ptr %9, ptr %11, align 8, !tbaa !64
  %12 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !58
  br label %14

13:                                               ; preds = %6
  store ptr %9, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !58
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %9, %13 ], [ %12, %10 ]
  %16 = tail call fastcc ptr @remove_duplicates(ptr noundef %1, ptr noundef %15, ptr noundef null, ptr noundef null, i32 noundef %2) #14
  store ptr %16, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !58
  %17 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !58
  %18 = tail call fastcc ptr @remove_duplicates(ptr noundef %1, ptr noundef %17, ptr noundef %16, ptr noundef %16, i32 noundef %2) #14
  store ptr %18, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !58
  %19 = load ptr, ptr @heads, align 16, !tbaa !58
  %20 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !58
  %21 = tail call fastcc ptr @remove_duplicates(ptr noundef %1, ptr noundef %19, ptr noundef %20, ptr noundef %18, i32 noundef %2) #14
  store ptr %21, ptr @heads, align 16, !tbaa !58
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %43, label %23, !prof !63

23:                                               ; preds = %14
  %24 = load ptr, ptr @stderr, align 8, !tbaa !58
  %25 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 35, i64 1, ptr %24) #15
  br label %26

26:                                               ; preds = %37, %23
  %27 = phi ptr [ @heads, %23 ], [ %28, %37 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !58
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load ptr, ptr @stderr, align 8, !tbaa !58
  %33 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 35, i64 1, ptr %32) #15
  br label %34

34:                                               ; preds = %31, %26
  %35 = icmp eq ptr %28, null
  %36 = load ptr, ptr @stderr, align 8, !tbaa !58
  br i1 %35, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.cpp_dir, ptr %28, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef %39) #16
  br label %26

41:                                               ; preds = %34
  %42 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 20, i64 1, ptr %36) #15
  br label %43

43:                                               ; preds = %41, %14
  ret void
}

; Function Attrs: optsize
declare void @cpp_set_include_chains(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @hook_void_charptr_charptr_int(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #5 !prof !80 !PGOFuncName !102 {
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare zeroext i8 @cpp_relocated() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_relative_prefix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @update_path(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_sysroot_to_chain(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !57 !PGOFuncName !103 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds [4 x ptr], ptr @heads, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %21, %20 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = load i8, ptr %10, align 1, !tbaa !83
  %12 = icmp eq i8 %11, 61
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !71
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  %19 = tail call ptr (ptr, ...) @concat(ptr noundef %0, ptr noundef nonnull %18, ptr noundef null) #13
  store ptr %19, ptr %9, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %7, %13, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !104

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remove_duplicates(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 !prof !105 !PGOFuncName !106 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.stat, align 8
  store ptr %1, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #17
  %8 = icmp eq ptr %1, null
  br i1 %8, label %118, label %9, !prof !107

9:                                                ; preds = %5, %114
  %10 = phi ptr [ %116, %114 ], [ %6, %5 ]
  %11 = phi ptr [ %115, %114 ], [ %1, %5 ]
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = call i32 @stat(ptr noundef %13, ptr noundef nonnull %7) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16, !prof !63

16:                                               ; preds = %9
  %17 = tail call ptr @__errno_location() #13
  %18 = load i32, ptr %17, align 4, !tbaa !108
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %12, align 8, !tbaa !68
  %22 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef %21) #13
  br label %108

23:                                               ; preds = %16
  %24 = tail call ptr @cpp_get_options(ptr noundef %0) #13
  %25 = getelementptr inbounds %struct.cpp_options, ptr %24, i64 0, i32 14
  %26 = load i8, ptr %25, align 4, !tbaa !109
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %108, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 4
  %30 = load i8, ptr %29, align 1, !tbaa !71
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %108, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %12, align 8, !tbaa !68
  %34 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef %33) #13
  br label %108

35:                                               ; preds = %9
  %36 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !110
  %38 = and i32 %37, 61440
  %39 = icmp eq i32 %38, 16384
  br i1 %39, label %43, label %40, !prof !63

40:                                               ; preds = %35
  %41 = load ptr, ptr %12, align 8, !tbaa !68
  %42 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %41) #13
  br label %108

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1
  %45 = icmp eq ptr %2, null
  %46 = load i64, ptr %44, align 8, !tbaa !113
  %47 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 8
  store i64 %46, ptr %47, align 8, !tbaa !114
  %48 = load i64, ptr %7, align 8, !tbaa !115
  %49 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 9
  store i64 %48, ptr %49, align 8, !tbaa !116
  br i1 %45, label %50, label %53, !prof !117

50:                                               ; preds = %68, %43
  %51 = load ptr, ptr %6, align 8, !tbaa !58
  %52 = icmp eq ptr %51, %11
  br i1 %52, label %89, label %71, !prof !117

53:                                               ; preds = %43, %68
  %54 = phi ptr [ %69, %68 ], [ %2, %43 ]
  %55 = getelementptr inbounds %struct.cpp_dir, ptr %54, i64 0, i32 9
  %56 = load i64, ptr %55, align 8, !tbaa !116
  %57 = icmp eq i64 %56, %48
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.cpp_dir, ptr %54, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !114
  %61 = icmp eq i64 %60, %46
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = getelementptr inbounds %struct.cpp_dir, ptr %54, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %108, label %68

68:                                               ; preds = %53, %58, %62
  %69 = load ptr, ptr %54, align 8, !tbaa !64
  %70 = icmp eq ptr %69, null
  br i1 %70, label %50, label %53, !prof !118, !llvm.loop !119

71:                                               ; preds = %50, %86
  %72 = phi ptr [ %87, %86 ], [ %51, %50 ]
  %73 = getelementptr inbounds %struct.cpp_dir, ptr %72, i64 0, i32 9
  %74 = load i64, ptr %73, align 8, !tbaa !116
  %75 = icmp eq i64 %48, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.cpp_dir, ptr %72, i64 0, i32 8
  %78 = load i64, ptr %77, align 8, !tbaa !114
  %79 = icmp eq i64 %46, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !70
  %83 = getelementptr inbounds %struct.cpp_dir, ptr %72, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %108, label %86

86:                                               ; preds = %71, %76, %80
  %87 = load ptr, ptr %72, align 8, !tbaa !58
  %88 = icmp eq ptr %87, %11
  br i1 %88, label %89, label %71, !prof !118, !llvm.loop !120

89:                                               ; preds = %86, %50
  %90 = icmp ne ptr %3, null
  %91 = load ptr, ptr %11, align 8, !tbaa !58
  %92 = icmp eq ptr %91, null
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %114, !prof !121, !llvm.loop !122

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 9
  %96 = load i64, ptr %95, align 8, !tbaa !116
  %97 = icmp eq i64 %48, %96
  br i1 %97, label %98, label %118, !llvm.loop !122

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 8
  %100 = load i64, ptr %99, align 8, !tbaa !114
  %101 = icmp eq i64 %46, %100
  br i1 %101, label %102, label %118, !llvm.loop !122

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 7
  %104 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = load ptr, ptr %103, align 8, !tbaa !70
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %118, !llvm.loop !122

108:                                              ; preds = %62, %80, %23, %28, %32, %40, %102, %20
  %109 = phi i32 [ 0, %20 ], [ 2, %102 ], [ 0, %40 ], [ 1, %32 ], [ 1, %28 ], [ 1, %23 ], [ 2, %80 ], [ 3, %62 ]
  %110 = icmp eq i32 %4, 0
  %111 = load ptr, ptr %11, align 8, !tbaa !64
  store ptr %111, ptr %10, align 8, !tbaa !58
  %112 = select i1 %110, i32 0, i32 %109
  tail call fastcc void @free_path(ptr noundef nonnull %11, i32 noundef %112) #14
  %113 = load ptr, ptr %10, align 8, !tbaa !58
  br label %114

114:                                              ; preds = %89, %108
  %115 = phi ptr [ %113, %108 ], [ %91, %89 ]
  %116 = phi ptr [ %10, %108 ], [ %11, %89 ]
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %9, !prof !123

118:                                              ; preds = %94, %98, %102, %114, %5
  %119 = phi ptr [ %6, %5 ], [ %11, %94 ], [ %11, %98 ], [ %11, %102 ], [ %116, %114 ]
  store ptr %3, ptr %119, align 8, !tbaa !58
  %120 = load ptr, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #17
  ret ptr %120
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_path(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !57 !PGOFuncName !124 {
  switch i32 %1, label %17 [
    i32 2, label %3
    i32 3, label %3
    i32 1, label %12
  ]

3:                                                ; preds = %2, %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %6) #16
  %8 = icmp eq i32 %1, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !58
  %11 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 69, i64 1, ptr %10) #15
  br label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr @stderr, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef %15) #16
  br label %17

17:                                               ; preds = %2, %3, %9, %12
  %18 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  tail call void @free(ptr noundef %19) #14
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { cold }
attributes #16 = { cold optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!56}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @add_path, ptr @xmalloc, i64 1}
!36 = !{ptr @add_path, ptr @add_cpp_dir_path, i64 1}
!37 = !{ptr @register_include_chains, ptr @cpp_get_options, i64 1}
!38 = !{ptr @register_include_chains, ptr @add_env_var_paths, i64 2}
!39 = !{ptr @register_include_chains, ptr @add_standard_paths, i64 1}
!40 = !{ptr @register_include_chains, ptr @merge_include_chains, i64 1}
!41 = !{ptr @register_include_chains, ptr @cpp_set_include_chains, i64 1}
!42 = !{ptr @add_env_var_paths, ptr @getenv, i64 2}
!43 = !{ptr @add_env_var_paths, ptr @xstrdup, i64 4}
!44 = !{ptr @add_env_var_paths, ptr @xmalloc, i64 6}
!45 = !{ptr @add_env_var_paths, ptr @add_path, i64 10}
!46 = !{ptr @add_standard_paths, ptr @cpp_relocated, i64 1}
!47 = !{ptr @add_standard_paths, ptr @strncmp, i64 1}
!48 = !{ptr @add_standard_paths, ptr @update_path, i64 1}
!49 = !{ptr @add_standard_paths, ptr @add_path, i64 1}
!50 = !{ptr @merge_include_chains, ptr @remove_duplicates, i64 3}
!51 = !{ptr @merge_include_chains, ptr @fwrite, i64 5}
!52 = !{ptr @merge_include_chains, ptr @fprintf, i64 10}
!53 = !{ptr @remove_duplicates, ptr @stat, i64 2}
!54 = !{ptr @remove_duplicates, ptr @__errno_location, i64 1}
!55 = !{ptr @remove_duplicates, ptr @free_path, i64 1}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!"function_entry_count", i64 1}
!63 = !{!"branch_weights", i32 2, i32 1}
!64 = !{!65, !59, i64 0}
!65 = !{!"cpp_dir", !59, i64 0, !59, i64 8, !66, i64 16, !60, i64 20, !60, i64 21, !59, i64 24, !59, i64 32, !59, i64 40, !67, i64 48, !67, i64 56}
!66 = !{!"int", !60, i64 0}
!67 = !{!"long", !60, i64 0}
!68 = !{!65, !59, i64 8}
!69 = !{!"branch_weights", i32 5, i32 1}
!70 = !{!65, !59, i64 40}
!71 = !{!65, !60, i64 21}
!72 = !{!73, !60, i64 10}
!73 = !{!"cpp_options", !66, i64 0, !66, i64 4, !60, i64 8, !60, i64 9, !60, i64 10, !60, i64 11, !60, i64 12, !60, i64 13, !60, i64 14, !60, i64 15, !60, i64 16, !60, i64 17, !60, i64 18, !60, i64 19, !60, i64 20, !60, i64 21, !60, i64 22, !60, i64 23, !60, i64 24, !60, i64 25, !60, i64 26, !60, i64 27, !60, i64 28, !60, i64 29, !60, i64 30, !60, i64 31, !60, i64 32, !60, i64 33, !60, i64 34, !60, i64 35, !60, i64 36, !60, i64 37, !60, i64 38, !60, i64 39, !60, i64 40, !60, i64 41, !60, i64 42, !59, i64 48, !59, i64 56, !59, i64 64, !66, i64 72, !60, i64 76, !60, i64 77, !74, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !60, i64 120, !60, i64 121, !60, i64 122, !60, i64 123, !60, i64 124}
!74 = !{!"", !66, i64 0, !60, i64 4, !60, i64 5, !60, i64 6, !60, i64 7}
!75 = !{!73, !60, i64 8}
!76 = !{!77, !59, i64 0}
!77 = !{!"target_c_incpath_s", !59, i64 0, !59, i64 8}
!78 = !{!"branch_weights", i32 1, i32 2}
!79 = !{!77, !59, i64 8}
!80 = !{!"function_entry_count", i64 2}
!81 = !{!"incpath.c:add_env_var_paths"}
!82 = !{!"branch_weights", i32 3, i32 1}
!83 = !{!60, !60, i64 0}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = distinct !{!86, !85}
!87 = !{!"incpath.c:add_standard_paths"}
!88 = !{!89, !59, i64 0}
!89 = !{!"default_include", !59, i64 0, !59, i64 8, !60, i64 16, !60, i64 17, !60, i64 18, !60, i64 19}
!90 = !{!67, !67, i64 0}
!91 = !{!89, !60, i64 16}
!92 = !{!89, !60, i64 18}
!93 = !{!89, !60, i64 19}
!94 = !{!89, !60, i64 17}
!95 = distinct !{!95, !85}
!96 = !{!"branch_weights", i32 0, i32 -2147483648}
!97 = !{!"branch_weights", i32 1, i32 5}
!98 = !{!89, !59, i64 8}
!99 = !{!"branch_weights", i32 127, i32 1}
!100 = distinct !{!100, !85}
!101 = !{!"incpath.c:merge_include_chains"}
!102 = !{!"incpath.c:hook_void_charptr_charptr_int"}
!103 = !{!"incpath.c:add_sysroot_to_chain"}
!104 = distinct !{!104, !85}
!105 = !{!"function_entry_count", i64 3}
!106 = !{!"incpath.c:remove_duplicates"}
!107 = !{!"branch_weights", i32 2, i32 2}
!108 = !{!66, !66, i64 0}
!109 = !{!73, !60, i64 20}
!110 = !{!111, !66, i64 24}
!111 = !{!"stat", !67, i64 0, !67, i64 8, !67, i64 16, !66, i64 24, !66, i64 28, !66, i64 32, !66, i64 36, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !112, i64 72, !112, i64 88, !112, i64 104, !60, i64 120}
!112 = !{!"timespec", !67, i64 0, !67, i64 8}
!113 = !{!111, !67, i64 8}
!114 = !{!65, !67, i64 48}
!115 = !{!111, !67, i64 0}
!116 = !{!65, !67, i64 56}
!117 = !{!"branch_weights", i32 1, i32 1}
!118 = !{!"branch_weights", i32 1, i32 0}
!119 = distinct !{!119, !85}
!120 = distinct !{!120, !85}
!121 = !{!"branch_weights", i32 2, i32 7}
!122 = distinct !{!122, !85}
!123 = !{!"branch_weights", i32 -2147483648, i32 0}
!124 = !{!"incpath.c:free_path"}
