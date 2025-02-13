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
define dso_local void @split_quote_chain() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !5
  store ptr %1, ptr @heads, align 16, !tbaa !5
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 1), align 8, !tbaa !5
  store ptr %2, ptr @tails, align 16, !tbaa !5
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !5
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 1), align 8, !tbaa !5
  store i1 true, ptr @quote_ignores_source_dir, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @add_cpp_dir_path(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x ptr], ptr @tails, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds [4 x ptr], ptr @heads, i64 0, i64 %3
  %8 = select i1 %6, ptr %7, ptr %5
  store ptr %0, ptr %8, align 8, !tbaa !5
  store ptr %0, ptr %4, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_path(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = tail call ptr @xmalloc(i64 noundef 64) #13
  store ptr null, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !13
  %7 = and i32 %1, -2
  %8 = icmp eq i32 %7, 2
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i8 2, i8 1
  %11 = select i1 %8, i8 %10, i8 0
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 3
  store i8 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 4
  store i8 %3, ptr %14, align 1, !tbaa !15
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
define dso_local void @register_include_chains(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = tail call ptr @cpp_get_options(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 4
  %10 = load i8, ptr %9, align 2, !tbaa !16
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i64 0, i64 2
  %13 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !19
  %15 = icmp ne i8 %14, 0
  %16 = zext i1 %15 to i64
  %17 = or disjoint i64 %12, %16
  tail call fastcc void @add_env_var_paths(ptr noundef nonnull @.str.4, i32 noundef 1) #14
  %18 = shl i64 %17, 2
  %19 = call ptr @llvm.load.relative.i64(ptr @reltable.register_include_chains, i64 %18)
  tail call fastcc void @add_env_var_paths(ptr noundef %19, i32 noundef 2) #14
  %20 = load ptr, ptr @target_c_incpath, align 8, !tbaa !20
  tail call void %20(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  %23 = select i1 %15, i32 %5, i32 0
  tail call fastcc void @add_standard_paths(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %23) #14
  br label %24

24:                                               ; preds = %22, %7
  %25 = load ptr, ptr getelementptr inbounds (%struct.target_c_incpath_s, ptr @target_c_incpath, i64 0, i32 1), align 8, !tbaa !22
  tail call void %25(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  tail call fastcc void @merge_include_chains(ptr noundef %1, ptr noundef %0, i32 noundef %6) #14
  %26 = load ptr, ptr @heads, align 16, !tbaa !5
  %27 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !5
  %28 = load i1, ptr @quote_ignores_source_dir, align 1
  %29 = zext i1 %28 to i32
  tail call void @cpp_set_include_chains(ptr noundef %0, ptr noundef %26, ptr noundef %27, i32 noundef %29) #13
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_env_var_paths(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @getenv(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !23
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
  %15 = load i8, ptr %14, align 1, !tbaa !23
  switch i8 %15, label %16 [
    i8 0, label %18
    i8 58, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  br label %13, !llvm.loop !24

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
  store i8 0, ptr %28, align 1, !tbaa !23
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi ptr [ %21, %20 ], [ %27, %22 ]
  tail call void @add_path(ptr noundef %30, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 0) #14
  %31 = getelementptr inbounds i8, ptr %14, i64 1
  %32 = load i8, ptr %14, align 1, !tbaa !23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %11, !llvm.loop !26

34:                                               ; preds = %29, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_standard_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = tail call zeroext i8 @cpp_relocated() #13
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load ptr, ptr @cpp_include_defaults, align 8, !tbaa !27
  br label %52

9:                                                ; preds = %4
  %10 = load i64, ptr @cpp_GCC_INCLUDE_DIR_len, align 8, !tbaa !29
  %11 = icmp eq i64 %10, 0
  %12 = load ptr, ptr @cpp_include_defaults, align 8, !tbaa !27
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
  %23 = load i8, ptr %22, align 8, !tbaa !30
  %24 = icmp eq i8 %23, 0
  %25 = or i1 %16, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  br i1 %17, label %31, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.default_include, ptr %21, i64 0, i32 4
  %29 = load i8, ptr %28, align 2, !tbaa !31
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
  %38 = load i8, ptr %37, align 1, !tbaa !32
  %39 = icmp ne i8 %38, 0
  %40 = and i1 %18, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = tail call ptr (ptr, ...) @concat(ptr noundef %36, ptr noundef nonnull @dir_separator_str, ptr noundef nonnull %2, ptr noundef null) #13
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %42, %41 ], [ %36, %34 ]
  %45 = getelementptr inbounds %struct.default_include, ptr %21, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !33
  %47 = sext i8 %46 to i32
  tail call void @add_path(ptr noundef %44, i32 noundef 2, i32 noundef %47, i8 noundef zeroext 0) #14
  br label %48

48:                                               ; preds = %19, %43, %31, %27
  %49 = getelementptr inbounds %struct.default_include, ptr %21, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !27
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %19, !llvm.loop !34

52:                                               ; preds = %48, %7, %9
  %53 = phi ptr [ %8, %7 ], [ %12, %9 ], [ %12, %48 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %117, label %55

55:                                               ; preds = %52
  %56 = icmp ne i32 %3, 0
  %57 = icmp eq ptr %0, null
  %58 = icmp ne i8 %5, 0
  %59 = load i64, ptr @cpp_PREFIX_len, align 8
  %60 = icmp ne ptr %2, null
  br label %61

61:                                               ; preds = %55, %113
  %62 = phi ptr [ %53, %55 ], [ %115, %113 ]
  %63 = phi ptr [ @cpp_include_defaults, %55 ], [ %114, %113 ]
  %64 = getelementptr inbounds %struct.default_include, ptr %63, i64 0, i32 2
  %65 = load i8, ptr %64, align 8, !tbaa !30
  %66 = icmp eq i8 %65, 0
  %67 = or i1 %56, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.default_include, ptr %63, i64 0, i32 4
  %70 = load i8, ptr %69, align 2, !tbaa !31
  br i1 %57, label %75, label %71

71:                                               ; preds = %68
  %72 = icmp eq i8 %70, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %0, ptr noundef nonnull %62, ptr noundef null) #13
  br label %100

75:                                               ; preds = %68, %71
  %76 = phi i8 [ 0, %71 ], [ %70, %68 ]
  %77 = icmp eq i8 %76, 0
  %78 = select i1 %77, i1 %58, i1 false
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = tail call i32 @strncmp(ptr noundef nonnull %62, ptr noundef nonnull @cpp_PREFIX, i64 noundef %59) #14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load ptr, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load ptr, ptr @gcc_exec_prefix, align 8, !tbaa !5
  %87 = tail call ptr (ptr, ...) @concat(ptr noundef %86, ptr noundef nonnull @.str.6, ptr noundef null) #13
  %88 = tail call ptr @make_relative_prefix(ptr noundef %87, ptr noundef nonnull @cpp_EXEC_PREFIX, ptr noundef nonnull @cpp_PREFIX) #13
  store ptr %88, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !5
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi ptr [ %88, %85 ], [ %83, %82 ]
  %91 = getelementptr inbounds i8, ptr %62, i64 %59
  %92 = tail call ptr (ptr, ...) @concat(ptr noundef %90, ptr noundef nonnull %91, ptr noundef null) #13
  %93 = getelementptr inbounds %struct.default_include, ptr %63, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  %95 = tail call ptr @update_path(ptr noundef %92, ptr noundef %94) #13
  br label %100

96:                                               ; preds = %79, %75
  %97 = getelementptr inbounds %struct.default_include, ptr %63, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = tail call ptr @update_path(ptr noundef nonnull %62, ptr noundef %98) #13
  br label %100

100:                                              ; preds = %89, %96, %73
  %101 = phi ptr [ %74, %73 ], [ %95, %89 ], [ %99, %96 ]
  %102 = getelementptr inbounds %struct.default_include, ptr %63, i64 0, i32 5
  %103 = load i8, ptr %102, align 1, !tbaa !32
  %104 = icmp ne i8 %103, 0
  %105 = and i1 %60, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = tail call ptr (ptr, ...) @concat(ptr noundef %101, ptr noundef nonnull @dir_separator_str, ptr noundef nonnull %2, ptr noundef null) #13
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi ptr [ %107, %106 ], [ %101, %100 ]
  %110 = getelementptr inbounds %struct.default_include, ptr %63, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !33
  %112 = sext i8 %111 to i32
  tail call void @add_path(ptr noundef %109, i32 noundef 2, i32 noundef %112, i8 noundef zeroext 0) #14
  br label %113

113:                                              ; preds = %108, %61
  %114 = getelementptr inbounds %struct.default_include, ptr %63, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !27
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %61, !llvm.loop !36

117:                                              ; preds = %113, %13, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_include_chains(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 0) #14
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 1) #14
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 2) #14
  tail call fastcc void @add_sysroot_to_chain(ptr noundef nonnull %0, i32 noundef 3) #14
  br label %6

6:                                                ; preds = %5, %3
  %7 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !5
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 3), align 8, !tbaa !5
  br i1 %8, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !5
  store ptr %9, ptr %11, align 8, !tbaa !9
  %12 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !5
  br label %14

13:                                               ; preds = %6
  store ptr %9, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !5
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %9, %13 ], [ %12, %10 ]
  %16 = tail call fastcc ptr @remove_duplicates(ptr noundef %1, ptr noundef %15, ptr noundef null, ptr noundef null, i32 noundef %2) #14
  store ptr %16, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !5
  %17 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !5
  %18 = tail call fastcc ptr @remove_duplicates(ptr noundef %1, ptr noundef %17, ptr noundef %16, ptr noundef %16, i32 noundef %2) #14
  store ptr %18, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !5
  %19 = load ptr, ptr @heads, align 16, !tbaa !5
  %20 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !5
  %21 = tail call fastcc ptr @remove_duplicates(ptr noundef %1, ptr noundef %19, ptr noundef %20, ptr noundef %18, i32 noundef %2) #14
  store ptr %21, ptr @heads, align 16, !tbaa !5
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %25 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 35, i64 1, ptr %24) #15
  br label %26

26:                                               ; preds = %37, %23
  %27 = phi ptr [ @heads, %23 ], [ %28, %37 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !5
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 35, i64 1, ptr %32) #15
  br label %34

34:                                               ; preds = %31, %26
  %35 = icmp eq ptr %28, null
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  br i1 %35, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.cpp_dir, ptr %28, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !13
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
define internal void @hook_void_charptr_charptr_int(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #5 {
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
define internal fastcc void @add_sysroot_to_chain(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds [4 x ptr], ptr @heads, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %21, %20 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = load i8, ptr %10, align 1, !tbaa !23
  %12 = icmp eq i8 %11, 61
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  %19 = tail call ptr (ptr, ...) @concat(ptr noundef %0, ptr noundef nonnull %18, ptr noundef null) #13
  store ptr %19, ptr %9, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %7, %13, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !37

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remove_duplicates(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.stat, align 8
  store ptr %1, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #17
  %8 = icmp eq ptr %1, null
  br i1 %8, label %121, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 3
  %11 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1
  %12 = icmp eq ptr %2, null
  %13 = icmp ne ptr %3, null
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 9
  %15 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 8
  %16 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 7
  %17 = icmp eq i32 %4, 0
  br label %18

18:                                               ; preds = %9, %117
  %19 = phi ptr [ %6, %9 ], [ %119, %117 ]
  %20 = phi ptr [ %1, %9 ], [ %118, %117 ]
  %21 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = call i32 @stat(ptr noundef %22, ptr noundef nonnull %7) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %18
  %26 = tail call ptr @__errno_location() #13
  %27 = load i32, ptr %26, align 4, !tbaa !38
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %21, align 8, !tbaa !13
  %31 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef %30) #13
  br label %112

32:                                               ; preds = %25
  %33 = tail call ptr @cpp_get_options(ptr noundef %0) #13
  %34 = getelementptr inbounds %struct.cpp_options, ptr %33, i64 0, i32 14
  %35 = load i8, ptr %34, align 4, !tbaa !39
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %112, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 4
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %112, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %21, align 8, !tbaa !13
  %43 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef %42) #13
  br label %112

44:                                               ; preds = %18
  %45 = load i32, ptr %10, align 8, !tbaa !40
  %46 = and i32 %45, 61440
  %47 = icmp eq i32 %46, 16384
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !13
  %50 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %49) #13
  br label %112

51:                                               ; preds = %44
  %52 = load i64, ptr %11, align 8, !tbaa !43
  %53 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 8
  store i64 %52, ptr %53, align 8, !tbaa !44
  %54 = load i64, ptr %7, align 8, !tbaa !45
  %55 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 9
  store i64 %54, ptr %55, align 8, !tbaa !46
  br i1 %12, label %58, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 7
  br label %63

58:                                               ; preds = %77, %51
  %59 = load ptr, ptr %6, align 8, !tbaa !5
  %60 = icmp eq ptr %59, %20
  br i1 %60, label %97, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 7
  br label %80

63:                                               ; preds = %56, %77
  %64 = phi ptr [ %2, %56 ], [ %78, %77 ]
  %65 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 9
  %66 = load i64, ptr %65, align 8, !tbaa !46
  %67 = icmp eq i64 %66, %54
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 8
  %70 = load i64, ptr %69, align 8, !tbaa !44
  %71 = icmp eq i64 %70, %52
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load ptr, ptr %57, align 8, !tbaa !14
  %74 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %112, label %77

77:                                               ; preds = %63, %68, %72
  %78 = load ptr, ptr %64, align 8, !tbaa !9
  %79 = icmp eq ptr %78, null
  br i1 %79, label %58, label %63, !llvm.loop !47

80:                                               ; preds = %61, %94
  %81 = phi ptr [ %59, %61 ], [ %95, %94 ]
  %82 = getelementptr inbounds %struct.cpp_dir, ptr %81, i64 0, i32 9
  %83 = load i64, ptr %82, align 8, !tbaa !46
  %84 = icmp eq i64 %54, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.cpp_dir, ptr %81, i64 0, i32 8
  %87 = load i64, ptr %86, align 8, !tbaa !44
  %88 = icmp eq i64 %52, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load ptr, ptr %62, align 8, !tbaa !14
  %91 = getelementptr inbounds %struct.cpp_dir, ptr %81, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %112, label %94

94:                                               ; preds = %80, %85, %89
  %95 = load ptr, ptr %81, align 8, !tbaa !5
  %96 = icmp eq ptr %95, %20
  br i1 %96, label %97, label %80, !llvm.loop !48

97:                                               ; preds = %94, %58
  %98 = load ptr, ptr %20, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  %100 = and i1 %13, %99
  br i1 %100, label %101, label %117, !llvm.loop !49

101:                                              ; preds = %97
  %102 = load i64, ptr %14, align 8, !tbaa !46
  %103 = icmp eq i64 %54, %102
  br i1 %103, label %104, label %121, !llvm.loop !49

104:                                              ; preds = %101
  %105 = load i64, ptr %15, align 8, !tbaa !44
  %106 = icmp eq i64 %52, %105
  br i1 %106, label %107, label %121, !llvm.loop !49

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !14
  %110 = load ptr, ptr %16, align 8, !tbaa !14
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %112, label %121, !llvm.loop !49

112:                                              ; preds = %72, %89, %32, %37, %41, %48, %107, %29
  %113 = phi i32 [ 0, %29 ], [ 2, %107 ], [ 0, %48 ], [ 1, %41 ], [ 1, %37 ], [ 1, %32 ], [ 2, %89 ], [ 3, %72 ]
  %114 = load ptr, ptr %20, align 8, !tbaa !9
  store ptr %114, ptr %19, align 8, !tbaa !5
  %115 = select i1 %17, i32 0, i32 %113
  tail call fastcc void @free_path(ptr noundef nonnull %20, i32 noundef %115) #14
  %116 = load ptr, ptr %19, align 8, !tbaa !5
  br label %117

117:                                              ; preds = %97, %112
  %118 = phi ptr [ %116, %112 ], [ %98, %97 ]
  %119 = phi ptr [ %19, %112 ], [ %20, %97 ]
  %120 = icmp eq ptr %118, null
  br i1 %120, label %121, label %18

121:                                              ; preds = %101, %104, %107, %117, %5
  %122 = phi ptr [ %6, %5 ], [ %20, %101 ], [ %20, %104 ], [ %20, %107 ], [ %119, %117 ]
  store ptr %3, ptr %122, align 8, !tbaa !5
  %123 = load ptr, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #17
  ret ptr %123
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
define internal fastcc void @free_path(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %17 [
    i32 2, label %3
    i32 3, label %3
    i32 1, label %12
  ]

3:                                                ; preds = %2, %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %6) #16
  %8 = icmp eq i32 %1, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 69, i64 1, ptr %10) #15
  br label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef %15) #16
  br label %17

17:                                               ; preds = %2, %3, %9, %12
  %18 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
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
!9 = !{!10, !6, i64 0}
!10 = !{!"cpp_dir", !6, i64 0, !6, i64 8, !11, i64 16, !7, i64 20, !7, i64 21, !6, i64 24, !6, i64 32, !6, i64 40, !12, i64 48, !12, i64 56}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !6, i64 40}
!15 = !{!10, !7, i64 21}
!16 = !{!17, !7, i64 10}
!17 = !{!"cpp_options", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !6, i64 48, !6, i64 56, !6, i64 64, !11, i64 72, !7, i64 76, !7, i64 77, !18, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !7, i64 120, !7, i64 121, !7, i64 122, !7, i64 123, !7, i64 124}
!18 = !{!"", !11, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!19 = !{!17, !7, i64 8}
!20 = !{!21, !6, i64 0}
!21 = !{!"target_c_incpath_s", !6, i64 0, !6, i64 8}
!22 = !{!21, !6, i64 8}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!28, !6, i64 0}
!28 = !{!"default_include", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19}
!29 = !{!12, !12, i64 0}
!30 = !{!28, !7, i64 16}
!31 = !{!28, !7, i64 18}
!32 = !{!28, !7, i64 19}
!33 = !{!28, !7, i64 17}
!34 = distinct !{!34, !25}
!35 = !{!28, !6, i64 8}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = !{!11, !11, i64 0}
!39 = !{!17, !7, i64 20}
!40 = !{!41, !11, i64 24}
!41 = !{!"stat", !12, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !42, i64 72, !42, i64 88, !42, i64 104, !7, i64 120}
!42 = !{!"timespec", !12, i64 0, !12, i64 8}
!43 = !{!41, !12, i64 8}
!44 = !{!10, !12, i64 48}
!45 = !{!41, !12, i64 0}
!46 = !{!10, !12, i64 56}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
