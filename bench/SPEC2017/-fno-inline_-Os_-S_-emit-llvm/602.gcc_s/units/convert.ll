; ModuleID = 'convert.c'
source_filename = "convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot convert to a pointer type\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"pointer value used where a floating point value was expected\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"aggregate value used where a float was expected\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"conversion to incomplete type\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@linux_uclibc = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@flag_wrapv = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"can't convert between vector values of different size\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"aggregate value used where an integer was expected\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"pointer value used where a complex was expected\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"aggregate value used where a complex was expected\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"can't convert value to a vector\00", align 1
@fconst0 = external global [18 x %struct.fixed_value], align 16
@fconst1 = external global [8 x %struct.fixed_value], align 16
@.str.9 = private unnamed_addr constant [54 x i8] c"aggregate value used where a fixed-point was expected\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_pointer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %61, %2
  %4 = phi ptr [ %1, %2 ], [ %62, %61 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %16 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %63, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @integer_zerop(ptr noundef nonnull %4) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 27
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = tail call ptr @force_fit_type_double(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 0, i8 noundef zeroext %27) #4
  br label %63

29:                                               ; preds = %19
  %30 = load ptr, ptr %16, align 8, !tbaa !10
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %61 [
    i16 10, label %33
    i16 12, label %33
    i16 8, label %46
    i16 6, label %46
    i16 7, label %46
  ]

33:                                               ; preds = %29, %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = load i64, ptr %38, align 8
  %40 = xor i64 %39, %36
  %41 = icmp ult i64 %40, 72057594037927936
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 116, ptr noundef nonnull %0, ptr noundef nonnull %4) #4
  br label %63

44:                                               ; preds = %33
  %45 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 114, ptr noundef nonnull %0, ptr noundef nonnull %4) #4
  br label %63

46:                                               ; preds = %29, %29, %29
  %47 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1023
  %50 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = icmp eq i32 %52, %49
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !11
  %56 = tail call ptr %55(i32 noundef %49, i32 noundef 0) #4
  %57 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 116, ptr noundef %56, ptr noundef nonnull %4) #4
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi ptr [ %57, %54 ], [ %4, %46 ]
  %60 = tail call ptr @fold_build1_stat_loc(i32 noundef %15, i32 noundef 113, ptr noundef nonnull %0, ptr noundef %59) #4
  br label %63

61:                                               ; preds = %29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #4
  %62 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !21
  br label %3

63:                                               ; preds = %14, %42, %44, %58, %22
  %64 = phi ptr [ %28, %22 ], [ %60, %58 ], [ %43, %42 ], [ %45, %44 ], [ %4, %14 ]
  ret ptr %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_fit_type_double(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @strip_float_extensions(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.real_value, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 24
  br i1 %6, label %7, label %89

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 9
  %13 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %15, label %22

15:                                               ; preds = %7
  %16 = lshr i32 %14, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %21 = icmp eq i8 %20, 9
  br i1 %21, label %89, label %22

22:                                               ; preds = %7, %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %23 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !22
  %25 = and i32 %14, 1023
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = icmp ugt i32 %25, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load i64, ptr %26, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i32 @vector_type_mode(ptr noundef nonnull %26) #4
  br label %40

37:                                               ; preds = %31
  %38 = lshr i32 %28, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = call zeroext i8 @exact_real_truncate(i32 noundef %41, ptr noundef nonnull %2) #4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load ptr, ptr %8, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1023
  br label %49

49:                                               ; preds = %44, %22
  %50 = phi i32 [ %48, %44 ], [ %25, %22 ]
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !21
  %52 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1023
  %55 = icmp ugt i32 %50, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %49
  %57 = load i64, ptr %51, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 14
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @vector_type_mode(ptr noundef nonnull %51) #4
  br label %65

62:                                               ; preds = %56
  %63 = lshr i32 %53, 16
  %64 = and i32 %63, 255
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %61, %60 ], [ %64, %62 ]
  %67 = call zeroext i8 @exact_real_truncate(i32 noundef %66, ptr noundef nonnull %2) #4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %40, %65
  %70 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), %65 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), %40 ]
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load i64, ptr %71, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 14
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @vector_type_mode(ptr noundef nonnull %71) #4
  br label %86

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tree_type, ptr %71, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  br label %86

84:                                               ; preds = %69, %49, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  %85 = load i64, ptr %0, align 8
  br label %89

86:                                               ; preds = %77, %79
  %87 = phi i32 [ %78, %77 ], [ %83, %79 ]
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %3, i32 noundef %87, ptr noundef nonnull byval(%struct.real_value) align 8 %2) #4
  %88 = call ptr @build_real(ptr noundef nonnull %71, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  br label %148

89:                                               ; preds = %84, %15, %1
  %90 = phi i64 [ %85, %84 ], [ %4, %15 ], [ %4, %1 ]
  %91 = trunc i64 %90 to i16
  switch i16 %91, label %148 [
    i16 116, label %92
    i16 113, label %92
  ]

92:                                               ; preds = %89, %89
  %93 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !10
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  %97 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !10
  %99 = load i64, ptr %96, align 8
  %100 = trunc i64 %99 to i16
  switch i16 %100, label %148 [
    i16 9, label %107
    i16 13, label %101
    i16 14, label %101
  ]

101:                                              ; preds = %92, %92
  %102 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !10
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 9
  br i1 %106, label %107, label %148

107:                                              ; preds = %92, %101
  %108 = load i64, ptr %98, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 9
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !10
  %119 = icmp eq i8 %118, 9
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %111, %107
  %122 = phi i32 [ 0, %107 ], [ %120, %111 ]
  %123 = and i64 %99, 65535
  %124 = icmp eq i64 %123, 9
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !10
  %133 = icmp eq i8 %132, 9
  %134 = zext i1 %133 to i32
  br label %135

135:                                              ; preds = %125, %121
  %136 = phi i32 [ 0, %121 ], [ %134, %125 ]
  %137 = icmp eq i32 %122, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 1023
  %142 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1023
  %145 = icmp ugt i32 %141, %144
  br i1 %145, label %148, label %146

146:                                              ; preds = %138
  %147 = call ptr @strip_float_extensions(ptr noundef nonnull %94) #6
  br label %148

148:                                              ; preds = %86, %138, %135, %101, %92, %89, %146
  %149 = phi ptr [ %147, %146 ], [ %88, %86 ], [ %0, %89 ], [ %0, %92 ], [ %0, %101 ], [ %0, %135 ], [ %0, %138 ]
  ret ptr %149
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare zeroext i8 @exact_real_truncate(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_value_truncate(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_real(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %629, %2
  %6 = phi ptr [ %1, %2 ], [ %631, %629 ]
  %7 = tail call i32 @builtin_mathfn_code(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = load i32, ptr @optimize, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %261, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %22

18:                                               ; preds = %12
  %19 = load i32, ptr %3, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %17, %16 ], [ %21, %18 ]
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !21
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 14
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #4
  br label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi i32 [ %29, %28 ], [ %34, %30 ]
  %37 = icmp eq i32 %23, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %35
  %39 = load i64, ptr %0, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %48

44:                                               ; preds = %38
  %45 = load i32, ptr %3, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ %43, %42 ], [ %47, %44 ]
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !21
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 14
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = tail call i32 @vector_type_mode(ptr noundef nonnull %50) #4
  br label %61

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ]
  %63 = icmp eq i32 %49, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %61, %35
  switch i32 %7, label %156 [
    i32 32, label %65
    i32 34, label %65
    i32 45, label %65
    i32 53, label %65
    i32 46, label %65
    i32 48, label %65
    i32 49, label %65
    i32 51, label %65
    i32 54, label %65
    i32 56, label %65
    i32 81, label %65
    i32 83, label %65
    i32 102, label %65
    i32 104, label %65
    i32 105, label %65
    i32 107, label %65
    i32 120, label %65
    i32 122, label %65
    i32 181, label %65
    i32 183, label %65
    i32 224, label %65
    i32 226, label %65
    i32 237, label %65
    i32 239, label %65
    i32 243, label %65
    i32 245, label %65
    i32 246, label %65
    i32 248, label %65
    i32 0, label %68
    i32 5, label %68
    i32 2, label %68
    i32 4, label %68
    i32 6, label %68
    i32 11, label %68
    i32 8, label %68
    i32 10, label %68
    i32 12, label %68
    i32 20, label %68
    i32 17, label %68
    i32 19, label %68
    i32 21, label %68
    i32 23, label %68
    i32 30, label %68
    i32 35, label %68
    i32 39, label %68
    i32 44, label %68
    i32 40, label %68
    i32 42, label %68
    i32 57, label %68
    i32 59, label %68
    i32 138, label %68
    i32 152, label %68
    i32 139, label %68
    i32 141, label %68
    i32 145, label %68
    i32 147, label %68
    i32 142, label %68
    i32 144, label %68
    i32 148, label %68
    i32 150, label %68
    i32 219, label %68
    i32 227, label %68
    i32 228, label %68
    i32 230, label %68
    i32 231, label %68
    i32 236, label %68
    i32 233, label %68
    i32 235, label %68
  ]

65:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %66 = load i32, ptr @flag_errno_math, align 4, !tbaa !6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %156

68:                                               ; preds = %65, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %69 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = tail call ptr @strip_float_extensions(ptr noundef %70) #6
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 1023
  %77 = load i32, ptr %3, align 4
  %78 = and i32 %77, 1023
  %79 = icmp ugt i32 %76, %78
  %80 = select i1 %79, ptr %73, ptr %0
  %81 = load i64, ptr %73, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %156 [
    i16 9, label %89
    i16 13, label %83
    i16 14, label %83
  ]

83:                                               ; preds = %68, %68
  %84 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !10
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 9
  br i1 %88, label %89, label %156

89:                                               ; preds = %68, %83
  %90 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 1023
  %93 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 1023
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %156

97:                                               ; preds = %89
  %98 = load i64, ptr %80, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 14
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = tail call i32 @vector_type_mode(ptr noundef nonnull %80) #4
  br label %106

103:                                              ; preds = %97
  %104 = lshr i32 %91, 16
  %105 = and i32 %104, 255
  br label %106

106:                                              ; preds = %103, %101
  %107 = phi i32 [ %102, %101 ], [ %105, %103 ]
  %108 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !21
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 14
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = tail call i32 @vector_type_mode(ptr noundef nonnull %108) #4
  br label %119

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.tree_type, ptr %108, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  br label %119

119:                                              ; preds = %114, %112
  %120 = phi i32 [ %113, %112 ], [ %118, %114 ]
  %121 = icmp eq i32 %107, %120
  br i1 %121, label %148, label %122

122:                                              ; preds = %119
  %123 = load i64, ptr %80, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 14
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = tail call i32 @vector_type_mode(ptr noundef nonnull %80) #4
  br label %132

128:                                              ; preds = %122
  %129 = load i32, ptr %90, align 4
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  br label %132

132:                                              ; preds = %128, %126
  %133 = phi i32 [ %127, %126 ], [ %131, %128 ]
  %134 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !21
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 14
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = tail call i32 @vector_type_mode(ptr noundef nonnull %134) #4
  br label %145

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.tree_type, ptr %134, i64 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 16
  %144 = and i32 %143, 255
  br label %145

145:                                              ; preds = %140, %138
  %146 = phi i32 [ %139, %138 ], [ %144, %140 ]
  %147 = icmp eq i32 %133, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %145, %119
  %149 = tail call ptr @mathfn_built_in(ptr noundef nonnull %80, i32 noundef %7) #4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = tail call ptr @convert_to_real(ptr noundef nonnull %80, ptr noundef nonnull %71) #6
  %153 = tail call ptr @fold(ptr noundef %152) #4
  %154 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %149, i32 noundef 1, ptr noundef %153) #4
  %155 = icmp eq ptr %80, %0
  br i1 %155, label %255, label %156

156:                                              ; preds = %148, %83, %89, %145, %68, %65, %151, %64, %61
  %157 = phi ptr [ %6, %61 ], [ %6, %65 ], [ %154, %151 ], [ %6, %64 ], [ %6, %68 ], [ %6, %145 ], [ %6, %89 ], [ %6, %83 ], [ %6, %148 ]
  %158 = load i32, ptr @optimize, align 4, !tbaa !6
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %261, label %160

160:                                              ; preds = %156
  switch i32 %7, label %261 [
    i32 242, label %161
    i32 200, label %161
    i32 197, label %161
    i32 173, label %161
    i32 65, label %161
    i32 26, label %161
    i32 240, label %214
    i32 198, label %214
    i32 195, label %214
    i32 171, label %214
    i32 63, label %214
    i32 24, label %214
  ]

161:                                              ; preds = %160, %160, %160, %160, %160, %160
  %162 = load i64, ptr %0, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 14
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %171

167:                                              ; preds = %161
  %168 = load i32, ptr %3, align 4
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  br label %171

171:                                              ; preds = %167, %165
  %172 = phi i32 [ %166, %165 ], [ %170, %167 ]
  %173 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !21
  %174 = load i64, ptr %173, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = tail call i32 @vector_type_mode(ptr noundef nonnull %173) #4
  br label %184

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.tree_type, ptr %173, i64 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  br label %184

184:                                              ; preds = %179, %177
  %185 = phi i32 [ %178, %177 ], [ %183, %179 ]
  %186 = icmp eq i32 %172, %185
  br i1 %186, label %240, label %187

187:                                              ; preds = %184
  %188 = load i64, ptr %0, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %197

193:                                              ; preds = %187
  %194 = load i32, ptr %3, align 4
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  br label %197

197:                                              ; preds = %193, %191
  %198 = phi i32 [ %192, %191 ], [ %196, %193 ]
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !21
  %200 = load i64, ptr %199, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 14
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = tail call i32 @vector_type_mode(ptr noundef nonnull %199) #4
  br label %210

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.tree_type, ptr %199, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  br label %210

210:                                              ; preds = %205, %203
  %211 = phi i32 [ %204, %203 ], [ %209, %205 ]
  %212 = icmp eq i32 %198, %211
  br i1 %212, label %240, label %213

213:                                              ; preds = %210
  switch i32 %7, label %261 [
    i32 240, label %214
    i32 198, label %214
    i32 195, label %214
    i32 171, label %214
    i32 63, label %214
  ]

214:                                              ; preds = %160, %160, %160, %160, %160, %160, %213, %213, %213, %213, %213
  %215 = load i64, ptr %0, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 14
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %224

220:                                              ; preds = %214
  %221 = load i32, ptr %3, align 4
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  br label %224

224:                                              ; preds = %220, %218
  %225 = phi i32 [ %219, %218 ], [ %223, %220 ]
  %226 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !21
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 14
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = tail call i32 @vector_type_mode(ptr noundef nonnull %226) #4
  br label %237

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.tree_type, ptr %226, i64 0, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 255
  br label %237

237:                                              ; preds = %232, %230
  %238 = phi i32 [ %231, %230 ], [ %236, %232 ]
  %239 = icmp eq i32 %225, %238
  br i1 %239, label %240, label %261

240:                                              ; preds = %237, %210, %184
  %241 = tail call ptr @mathfn_built_in(ptr noundef nonnull %0, i32 noundef %7) #4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %261, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.tree_exp, ptr %157, i64 1, i32 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !10
  %246 = tail call ptr @strip_float_extensions(ptr noundef %245) #6
  %247 = load i32, ptr %3, align 4
  %248 = and i32 %247, 1023
  %249 = getelementptr inbounds %struct.tree_common, ptr %246, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !10
  %251 = getelementptr inbounds %struct.tree_type, ptr %250, i64 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 1023
  %254 = icmp ult i32 %248, %253
  br i1 %254, label %261, label %257

255:                                              ; preds = %623, %621, %619, %616, %501, %571, %151, %287, %257
  %256 = phi ptr [ %260, %257 ], [ %294, %287 ], [ %627, %623 ], [ %622, %621 ], [ %620, %619 ], [ %618, %616 ], [ %509, %501 ], [ %579, %571 ], [ %154, %151 ]
  ret ptr %256

257:                                              ; preds = %243
  %258 = tail call ptr @convert_to_real(ptr noundef nonnull %0, ptr noundef nonnull %246) #6
  %259 = tail call ptr @fold(ptr noundef %258) #4
  %260 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %241, i32 noundef 1, ptr noundef %259) #4
  br label %255

261:                                              ; preds = %243, %240, %5, %160, %213, %237, %156
  %262 = phi ptr [ %157, %237 ], [ %157, %213 ], [ %157, %156 ], [ %157, %160 ], [ %6, %5 ], [ %157, %240 ], [ %157, %243 ]
  %263 = icmp eq ptr %9, %0
  br i1 %263, label %581, label %264

264:                                              ; preds = %261
  %265 = load i64, ptr %0, align 8
  %266 = trunc i64 %265 to i16
  switch i16 %266, label %581 [
    i16 9, label %272
    i16 13, label %267
    i16 14, label %267
  ]

267:                                              ; preds = %264, %264
  %268 = load ptr, ptr %4, align 8, !tbaa !10
  %269 = load i64, ptr %268, align 8
  %270 = and i64 %269, 65535
  %271 = icmp eq i64 %270, 9
  br i1 %271, label %272, label %581

272:                                              ; preds = %264, %267
  %273 = load i64, ptr %262, align 8
  %274 = trunc i64 %273 to i16
  switch i16 %274, label %581 [
    i16 82, label %275
    i16 79, label %275
    i16 63, label %295
    i16 64, label %295
    i16 65, label %295
    i16 75, label %295
  ]

275:                                              ; preds = %272, %272
  %276 = load i32, ptr @flag_rounding_math, align 4, !tbaa !6
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %581

278:                                              ; preds = %275
  %279 = load i32, ptr %3, align 4
  %280 = and i32 %279, 1023
  %281 = getelementptr inbounds %struct.tree_common, ptr %262, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !10
  %283 = getelementptr inbounds %struct.tree_type, ptr %282, i64 0, i32 6
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, 1023
  %286 = icmp ult i32 %280, %285
  br i1 %286, label %287, label %581

287:                                              ; preds = %278
  %288 = trunc i64 %273 to i32
  %289 = and i32 %288, 65535
  %290 = getelementptr inbounds %struct.tree_exp, ptr %262, i64 0, i32 3
  %291 = load ptr, ptr %290, align 8, !tbaa !10
  %292 = tail call ptr @convert_to_real(ptr noundef nonnull %0, ptr noundef %291) #6
  %293 = tail call ptr @fold(ptr noundef %292) #4
  %294 = tail call ptr @build1_stat(i32 noundef %289, ptr noundef nonnull %0, ptr noundef %293) #4
  br label %255

295:                                              ; preds = %272, %272, %272, %272
  %296 = getelementptr inbounds %struct.tree_exp, ptr %262, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !10
  %298 = tail call ptr @strip_float_extensions(ptr noundef %297) #6
  %299 = getelementptr inbounds %struct.tree_exp, ptr %262, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !10
  %301 = tail call ptr @strip_float_extensions(ptr noundef %300) #6
  %302 = getelementptr inbounds %struct.tree_common, ptr %298, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !10
  %304 = load i64, ptr %303, align 8
  %305 = trunc i64 %304 to i16
  switch i16 %305, label %581 [
    i16 9, label %312
    i16 13, label %306
    i16 14, label %306
  ]

306:                                              ; preds = %295, %295
  %307 = getelementptr inbounds %struct.tree_common, ptr %303, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !10
  %309 = load i64, ptr %308, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 9
  br i1 %311, label %312, label %581

312:                                              ; preds = %295, %306
  %313 = getelementptr inbounds %struct.tree_common, ptr %301, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !10
  %315 = load i64, ptr %314, align 8
  %316 = trunc i64 %315 to i16
  switch i16 %316, label %581 [
    i16 9, label %323
    i16 13, label %317
    i16 14, label %317
  ]

317:                                              ; preds = %312, %312
  %318 = getelementptr inbounds %struct.tree_common, ptr %314, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !10
  %320 = load i64, ptr %319, align 8
  %321 = and i64 %320, 65535
  %322 = icmp eq i64 %321, 9
  br i1 %322, label %323, label %581

323:                                              ; preds = %312, %317
  %324 = load i64, ptr %9, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 9
  br i1 %326, label %327, label %339

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = lshr i32 %329, 16
  %331 = and i32 %330, 255
  %332 = zext nneg i32 %331 to i64
  %333 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !10
  %335 = icmp eq i8 %334, 9
  %336 = load i64, ptr %0, align 8
  %337 = and i64 %336, 65535
  %338 = icmp eq i64 %337, 9
  br i1 %338, label %344, label %343

339:                                              ; preds = %323
  %340 = load i64, ptr %0, align 8
  %341 = and i64 %340, 65535
  %342 = icmp eq i64 %341, 9
  br i1 %342, label %344, label %354

343:                                              ; preds = %327
  br i1 %335, label %581, label %354

344:                                              ; preds = %339, %327
  %345 = phi i1 [ false, %339 ], [ %335, %327 ]
  %346 = load i32, ptr %3, align 4
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !10
  %352 = icmp eq i8 %351, 9
  %353 = xor i1 %345, %352
  br i1 %353, label %581, label %354

354:                                              ; preds = %339, %343, %344
  %355 = and i64 %304, 65535
  %356 = icmp eq i64 %355, 14
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = tail call i32 @vector_type_mode(ptr noundef nonnull %303) #4
  br label %364

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 6
  %361 = load i32, ptr %360, align 4
  %362 = lshr i32 %361, 16
  %363 = and i32 %362, 255
  br label %364

364:                                              ; preds = %359, %357
  %365 = phi i32 [ %358, %357 ], [ %363, %359 ]
  %366 = icmp eq i32 %365, 42
  br i1 %366, label %395, label %367

367:                                              ; preds = %364
  %368 = load ptr, ptr %313, align 8, !tbaa !10
  %369 = load i64, ptr %368, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 14
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  %373 = tail call i32 @vector_type_mode(ptr noundef nonnull %368) #4
  br label %379

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.tree_type, ptr %368, i64 0, i32 6
  %376 = load i32, ptr %375, align 4
  %377 = lshr i32 %376, 16
  %378 = and i32 %377, 255
  br label %379

379:                                              ; preds = %374, %372
  %380 = phi i32 [ %373, %372 ], [ %378, %374 ]
  %381 = icmp eq i32 %380, 42
  br i1 %381, label %395, label %382

382:                                              ; preds = %379
  %383 = load i64, ptr %0, align 8
  %384 = and i64 %383, 65535
  %385 = icmp eq i64 %384, 14
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %392

388:                                              ; preds = %382
  %389 = load i32, ptr %3, align 4
  %390 = lshr i32 %389, 16
  %391 = and i32 %390, 255
  br label %392

392:                                              ; preds = %388, %386
  %393 = phi i32 [ %387, %386 ], [ %391, %388 ]
  %394 = icmp eq i32 %393, 42
  br i1 %394, label %395, label %397

395:                                              ; preds = %392, %379, %364
  %396 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !21
  br label %397

397:                                              ; preds = %395, %392
  %398 = phi ptr [ %396, %395 ], [ %0, %392 ]
  %399 = load ptr, ptr %302, align 8, !tbaa !10
  %400 = load i64, ptr %399, align 8
  %401 = and i64 %400, 65535
  %402 = icmp eq i64 %401, 14
  br i1 %402, label %403, label %405

403:                                              ; preds = %397
  %404 = tail call i32 @vector_type_mode(ptr noundef nonnull %399) #4
  br label %410

405:                                              ; preds = %397
  %406 = getelementptr inbounds %struct.tree_type, ptr %399, i64 0, i32 6
  %407 = load i32, ptr %406, align 4
  %408 = lshr i32 %407, 16
  %409 = and i32 %408, 255
  br label %410

410:                                              ; preds = %405, %403
  %411 = phi i32 [ %404, %403 ], [ %409, %405 ]
  %412 = icmp eq i32 %411, 43
  br i1 %412, label %441, label %413

413:                                              ; preds = %410
  %414 = load ptr, ptr %313, align 8, !tbaa !10
  %415 = load i64, ptr %414, align 8
  %416 = and i64 %415, 65535
  %417 = icmp eq i64 %416, 14
  br i1 %417, label %418, label %420

418:                                              ; preds = %413
  %419 = tail call i32 @vector_type_mode(ptr noundef nonnull %414) #4
  br label %425

420:                                              ; preds = %413
  %421 = getelementptr inbounds %struct.tree_type, ptr %414, i64 0, i32 6
  %422 = load i32, ptr %421, align 4
  %423 = lshr i32 %422, 16
  %424 = and i32 %423, 255
  br label %425

425:                                              ; preds = %420, %418
  %426 = phi i32 [ %419, %418 ], [ %424, %420 ]
  %427 = icmp eq i32 %426, 43
  br i1 %427, label %441, label %428

428:                                              ; preds = %425
  %429 = load i64, ptr %0, align 8
  %430 = and i64 %429, 65535
  %431 = icmp eq i64 %430, 14
  br i1 %431, label %432, label %434

432:                                              ; preds = %428
  %433 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %438

434:                                              ; preds = %428
  %435 = load i32, ptr %3, align 4
  %436 = lshr i32 %435, 16
  %437 = and i32 %436, 255
  br label %438

438:                                              ; preds = %434, %432
  %439 = phi i32 [ %433, %432 ], [ %437, %434 ]
  %440 = icmp eq i32 %439, 43
  br i1 %440, label %441, label %443

441:                                              ; preds = %438, %425, %410
  %442 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !21
  br label %443

443:                                              ; preds = %441, %438
  %444 = phi ptr [ %442, %441 ], [ %398, %438 ]
  %445 = load ptr, ptr %302, align 8, !tbaa !10
  %446 = load i64, ptr %445, align 8
  %447 = and i64 %446, 65535
  %448 = icmp eq i64 %447, 14
  br i1 %448, label %449, label %451

449:                                              ; preds = %443
  %450 = tail call i32 @vector_type_mode(ptr noundef nonnull %445) #4
  br label %456

451:                                              ; preds = %443
  %452 = getelementptr inbounds %struct.tree_type, ptr %445, i64 0, i32 6
  %453 = load i32, ptr %452, align 4
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  br label %456

456:                                              ; preds = %451, %449
  %457 = phi i32 [ %450, %449 ], [ %455, %451 ]
  %458 = icmp eq i32 %457, 44
  br i1 %458, label %489, label %459

459:                                              ; preds = %456
  %460 = load ptr, ptr %313, align 8, !tbaa !10
  %461 = load i64, ptr %460, align 8
  %462 = and i64 %461, 65535
  %463 = icmp eq i64 %462, 14
  br i1 %463, label %464, label %466

464:                                              ; preds = %459
  %465 = tail call i32 @vector_type_mode(ptr noundef nonnull %460) #4
  br label %471

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.tree_type, ptr %460, i64 0, i32 6
  %468 = load i32, ptr %467, align 4
  %469 = lshr i32 %468, 16
  %470 = and i32 %469, 255
  br label %471

471:                                              ; preds = %466, %464
  %472 = phi i32 [ %465, %464 ], [ %470, %466 ]
  %473 = icmp eq i32 %472, 44
  br i1 %473, label %489, label %474

474:                                              ; preds = %471
  %475 = load i64, ptr %0, align 8
  %476 = and i64 %475, 65535
  %477 = icmp eq i64 %476, 14
  br i1 %477, label %478, label %480

478:                                              ; preds = %474
  %479 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %484

480:                                              ; preds = %474
  %481 = load i32, ptr %3, align 4
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  br label %484

484:                                              ; preds = %480, %478
  %485 = phi i32 [ %479, %478 ], [ %483, %480 ]
  %486 = icmp eq i32 %485, 44
  br i1 %486, label %489, label %487

487:                                              ; preds = %484
  %488 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8
  br label %491

489:                                              ; preds = %484, %471, %456
  %490 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8
  br label %491

491:                                              ; preds = %487, %489
  %492 = phi ptr [ %490, %489 ], [ %488, %487 ]
  %493 = phi ptr [ %490, %489 ], [ %444, %487 ]
  %494 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !21
  %495 = icmp eq ptr %493, %494
  %496 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16
  %497 = icmp eq ptr %493, %496
  %498 = select i1 %495, i1 true, i1 %497
  %499 = icmp eq ptr %493, %492
  %500 = select i1 %498, i1 true, i1 %499
  br i1 %500, label %501, label %511

501:                                              ; preds = %491
  %502 = load i64, ptr %262, align 8
  %503 = trunc i64 %502 to i32
  %504 = and i32 %503, 65535
  %505 = tail call ptr @convert_to_real(ptr noundef %493, ptr noundef nonnull %298) #6
  %506 = tail call ptr @fold(ptr noundef %505) #4
  %507 = tail call ptr @convert_to_real(ptr noundef %493, ptr noundef nonnull %301) #6
  %508 = tail call ptr @fold(ptr noundef %507) #4
  %509 = tail call ptr @build2_stat(i32 noundef %504, ptr noundef %493, ptr noundef %506, ptr noundef %508) #4
  %510 = icmp eq ptr %493, %0
  br i1 %510, label %255, label %581

511:                                              ; preds = %491
  %512 = load ptr, ptr %302, align 8, !tbaa !10
  %513 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 6
  %514 = load i32, ptr %513, align 4
  %515 = and i32 %514, 1023
  %516 = getelementptr inbounds %struct.tree_type, ptr %493, i64 0, i32 6
  %517 = load i32, ptr %516, align 4
  %518 = and i32 %517, 1023
  %519 = icmp ugt i32 %515, %518
  %520 = select i1 %519, ptr %512, ptr %493
  %521 = load ptr, ptr %313, align 8, !tbaa !10
  %522 = getelementptr inbounds %struct.tree_type, ptr %521, i64 0, i32 6
  %523 = load i32, ptr %522, align 4
  %524 = and i32 %523, 1023
  %525 = getelementptr inbounds %struct.tree_type, ptr %520, i64 0, i32 6
  %526 = load i32, ptr %525, align 4
  %527 = and i32 %526, 1023
  %528 = icmp ugt i32 %524, %527
  %529 = select i1 %528, ptr %521, ptr %520
  %530 = getelementptr inbounds %struct.tree_type, ptr %529, i64 0, i32 6
  %531 = load i32, ptr %530, align 4
  %532 = and i32 %531, 1023
  %533 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %534 = load i32, ptr %533, align 4
  %535 = and i32 %534, 1023
  %536 = icmp ult i32 %532, %535
  br i1 %536, label %537, label %581

537:                                              ; preds = %511
  %538 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !6
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %571

540:                                              ; preds = %537
  %541 = load i32, ptr %3, align 4
  %542 = and i32 %541, 1023
  %543 = icmp eq i32 %532, %542
  br i1 %543, label %544, label %581

544:                                              ; preds = %540
  %545 = load i64, ptr %9, align 8
  %546 = and i64 %545, 65535
  %547 = icmp eq i64 %546, 14
  br i1 %547, label %548, label %550

548:                                              ; preds = %544
  %549 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #4
  br label %553

550:                                              ; preds = %544
  %551 = lshr i32 %534, 16
  %552 = and i32 %551, 255
  br label %553

553:                                              ; preds = %550, %548
  %554 = phi i32 [ %549, %548 ], [ %552, %550 ]
  %555 = load i64, ptr %0, align 8
  %556 = and i64 %555, 65535
  %557 = icmp eq i64 %556, 14
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %564

560:                                              ; preds = %553
  %561 = load i32, ptr %3, align 4
  %562 = lshr i32 %561, 16
  %563 = and i32 %562, 255
  br label %564

564:                                              ; preds = %560, %558
  %565 = phi i32 [ %559, %558 ], [ %563, %560 ]
  %566 = tail call zeroext i8 @real_can_shorten_arithmetic(i32 noundef %554, i32 noundef %565) #4
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %581, label %568

568:                                              ; preds = %564
  %569 = tail call ptr @excess_precision_type(ptr noundef nonnull %529) #4
  %570 = icmp eq ptr %569, null
  br i1 %570, label %571, label %581

571:                                              ; preds = %568, %537
  %572 = load i64, ptr %262, align 8
  %573 = trunc i64 %572 to i32
  %574 = and i32 %573, 65535
  %575 = tail call ptr @convert_to_real(ptr noundef nonnull %529, ptr noundef nonnull %298) #6
  %576 = tail call ptr @fold(ptr noundef %575) #4
  %577 = tail call ptr @convert_to_real(ptr noundef nonnull %529, ptr noundef nonnull %301) #6
  %578 = tail call ptr @fold(ptr noundef %577) #4
  %579 = tail call ptr @build2_stat(i32 noundef %574, ptr noundef nonnull %529, ptr noundef %576, ptr noundef %578) #4
  %580 = icmp eq ptr %529, %0
  br i1 %580, label %255, label %581

581:                                              ; preds = %571, %511, %540, %564, %568, %501, %343, %306, %317, %344, %295, %312, %264, %278, %275, %272, %267, %261
  %582 = phi ptr [ %262, %272 ], [ %262, %275 ], [ %262, %278 ], [ %262, %267 ], [ %262, %261 ], [ %262, %264 ], [ %262, %568 ], [ %262, %564 ], [ %262, %540 ], [ %262, %511 ], [ %509, %501 ], [ %262, %343 ], [ %262, %312 ], [ %262, %295 ], [ %262, %306 ], [ %262, %317 ], [ %262, %344 ], [ %579, %571 ]
  %583 = getelementptr inbounds %struct.tree_common, ptr %582, i64 0, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !10
  %585 = load i64, ptr %584, align 8
  %586 = trunc i64 %585 to i16
  switch i16 %586, label %629 [
    i16 9, label %587
    i16 8, label %619
    i16 6, label %619
    i16 7, label %619
    i16 11, label %621
    i16 13, label %623
    i16 10, label %628
    i16 12, label %628
  ]

587:                                              ; preds = %581
  %588 = load i32, ptr @flag_float_store, align 4, !tbaa !6
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %616

590:                                              ; preds = %587
  %591 = load i64, ptr %0, align 8
  %592 = and i64 %591, 65535
  %593 = icmp eq i64 %592, 9
  br i1 %593, label %594, label %602

594:                                              ; preds = %590
  %595 = load i32, ptr %3, align 4
  %596 = lshr i32 %595, 16
  %597 = and i32 %596, 255
  %598 = zext nneg i32 %597 to i64
  %599 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %598
  %600 = load i8, ptr %599, align 1, !tbaa !10
  %601 = icmp eq i8 %600, 9
  br i1 %601, label %616, label %602

602:                                              ; preds = %594, %590
  %603 = load i64, ptr %9, align 8
  %604 = and i64 %603, 65535
  %605 = icmp eq i64 %604, 9
  br i1 %605, label %606, label %616

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %608 = load i32, ptr %607, align 4
  %609 = lshr i32 %608, 16
  %610 = and i32 %609, 255
  %611 = zext nneg i32 %610 to i64
  %612 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !10
  %614 = icmp eq i8 %613, 9
  %615 = select i1 %614, i32 113, i32 116
  br label %616

616:                                              ; preds = %602, %606, %594, %587
  %617 = phi i32 [ 113, %594 ], [ 113, %587 ], [ 116, %602 ], [ %615, %606 ]
  %618 = tail call ptr @build1_stat(i32 noundef %617, ptr noundef %0, ptr noundef nonnull %582) #4
  br label %255

619:                                              ; preds = %581, %581, %581
  %620 = tail call ptr @build1_stat(i32 noundef 78, ptr noundef %0, ptr noundef nonnull %582) #4
  br label %255

621:                                              ; preds = %581
  %622 = tail call ptr @build1_stat(i32 noundef 115, ptr noundef %0, ptr noundef nonnull %582) #4
  br label %255

623:                                              ; preds = %581
  %624 = getelementptr inbounds %struct.tree_common, ptr %584, i64 0, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !10
  %626 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %625, ptr noundef nonnull %582) #4
  %627 = tail call ptr @convert(ptr noundef %0, ptr noundef %626) #4
  br label %255

628:                                              ; preds = %581, %581
  br label %629

629:                                              ; preds = %581, %628
  %630 = phi ptr [ @.str.1, %628 ], [ @.str.2, %581 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %630) #4
  %631 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !21
  br label %5
}

; Function Attrs: optsize
declare i32 @builtin_mathfn_code(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mathfn_built_in(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_can_shorten_arithmetic(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @excess_precision_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_integer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %138, %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3) #4
  %8 = load ptr, ptr @global_trees, align 16, !tbaa !21
  br label %583

9:                                                ; preds = %2, %138
  %10 = phi ptr [ %139, %138 ], [ %1, %2 ]
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 1023
  %18 = load i32, ptr @optimize, align 4, !tbaa !6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %150, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %150, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = icmp ult i32 %17, %29
  br i1 %30, label %150, label %31

31:                                               ; preds = %26, %20
  %32 = tail call ptr @strip_float_extensions(ptr noundef nonnull %10) #6
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = tail call i32 @builtin_mathfn_code(ptr noundef %32) #4
  switch i32 %35, label %150 [
    i32 24, label %36
    i32 25, label %36
    i32 26, label %36
    i32 63, label %62
    i32 64, label %62
    i32 65, label %62
    i32 198, label %88
    i32 199, label %88
    i32 200, label %88
    i32 171, label %110
    i32 172, label %110
    i32 173, label %110
    i32 195, label %113
    i32 196, label %113
    i32 197, label %113
    i32 240, label %135
    i32 241, label %135
    i32 242, label %135
  ]

36:                                               ; preds = %31, %31, %31
  %37 = load i32, ptr @linux_uclibc, align 4, !tbaa !6
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %150

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1023
  %45 = icmp ult i32 %17, %44
  br i1 %45, label %142, label %46

46:                                               ; preds = %40
  %47 = icmp eq i32 %17, %44
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load i64, ptr %0, align 8
  %50 = and i64 %49, 2097152
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %142, label %52

52:                                               ; preds = %48, %46
  %53 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1023
  %57 = icmp eq i32 %17, %56
  br i1 %57, label %58, label %150

58:                                               ; preds = %52
  %59 = load i64, ptr %0, align 8
  %60 = and i64 %59, 2097152
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %142, label %150

62:                                               ; preds = %31, %31, %31
  %63 = load i32, ptr @linux_uclibc, align 4, !tbaa !6
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %150

66:                                               ; preds = %62
  %67 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !21
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1023
  %71 = icmp ult i32 %17, %70
  br i1 %71, label %142, label %72

72:                                               ; preds = %66
  %73 = icmp eq i32 %17, %70
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = load i64, ptr %0, align 8
  %76 = and i64 %75, 2097152
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %142, label %78

78:                                               ; preds = %74, %72
  %79 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1023
  %83 = icmp eq i32 %17, %82
  br i1 %83, label %84, label %150

84:                                               ; preds = %78
  %85 = load i64, ptr %0, align 8
  %86 = and i64 %85, 2097152
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %142, label %150

88:                                               ; preds = %31, %31, %31
  %89 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !21
  %90 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 1023
  %93 = icmp ult i32 %17, %92
  br i1 %93, label %142, label %94

94:                                               ; preds = %88
  %95 = icmp eq i32 %17, %92
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = load i64, ptr %0, align 8
  %98 = and i64 %97, 2097152
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %142, label %100

100:                                              ; preds = %96, %94
  %101 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !21
  %102 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 1023
  %105 = icmp eq i32 %17, %104
  br i1 %105, label %106, label %150

106:                                              ; preds = %100
  %107 = load i64, ptr %0, align 8
  %108 = and i64 %107, 2097152
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %142, label %150

110:                                              ; preds = %31, %31, %31
  %111 = load i32, ptr @flag_trapping_math, align 4, !tbaa !6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %150

113:                                              ; preds = %110, %31, %31, %31
  %114 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !21
  %115 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 1023
  %118 = icmp ult i32 %17, %117
  br i1 %118, label %142, label %119

119:                                              ; preds = %113
  %120 = icmp eq i32 %17, %117
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  %122 = load i64, ptr %0, align 8
  %123 = and i64 %122, 2097152
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %121, %119
  %126 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !21
  %127 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 1023
  %130 = icmp eq i32 %17, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %125
  %132 = load i64, ptr %0, align 8
  %133 = and i64 %132, 2097152
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %142, label %150

135:                                              ; preds = %31, %31, %31
  %136 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !10
  br label %138

138:                                              ; preds = %135, %146, %189
  %139 = phi ptr [ %137, %135 ], [ %149, %146 ], [ %192, %189 ]
  %140 = load ptr, ptr %4, align 8, !tbaa !10
  %141 = icmp eq ptr %140, null
  br i1 %141, label %7, label %9

142:                                              ; preds = %131, %113, %121, %106, %88, %96, %84, %66, %74, %58, %40, %48
  %143 = phi i32 [ 111, %48 ], [ 111, %40 ], [ 126, %58 ], [ 117, %74 ], [ 117, %66 ], [ 129, %84 ], [ 156, %96 ], [ 156, %88 ], [ 135, %106 ], [ 153, %121 ], [ 153, %113 ], [ 132, %131 ]
  %144 = tail call ptr @mathfn_built_in(ptr noundef %34, i32 noundef %143) #4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !10
  %149 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %144, i32 noundef 1, ptr noundef %148) #4
  br label %138

150:                                              ; preds = %36, %52, %58, %62, %78, %84, %100, %106, %110, %125, %131, %31, %142, %26, %23, %9
  %151 = load i32, ptr @optimize, align 4, !tbaa !6
  %152 = icmp ne i32 %151, 0
  %153 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %154 = icmp ne i32 %153, 0
  %155 = select i1 %152, i1 %154, i1 false
  %156 = load i32, ptr @flag_trapping_math, align 4
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %155, i1 %157, i1 false
  %159 = load i32, ptr @flag_errno_math, align 4
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %158, i1 %160, i1 false
  %162 = load i32, ptr @flag_finite_math_only, align 4
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %161, i1 %163, i1 false
  %165 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %166 = icmp ne ptr %165, null
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %193

168:                                              ; preds = %150
  %169 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 1023
  %172 = icmp ugt i32 %17, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = icmp eq i32 %17, %171
  br i1 %174, label %175, label %193

175:                                              ; preds = %173
  %176 = load i64, ptr %0, align 8
  %177 = and i64 %176, 2097152
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %175, %168
  %180 = tail call ptr @strip_float_extensions(ptr noundef nonnull %10) #6
  %181 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !10
  %183 = tail call i32 @builtin_mathfn_code(ptr noundef %180) #4
  %184 = add i32 %183, -148
  %185 = icmp ult i32 %184, 3
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = tail call ptr @mathfn_built_in(ptr noundef %182, i32 noundef 93) #4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.tree_exp, ptr %180, i64 1, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !10
  %192 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %187, i32 noundef 1, ptr noundef %191) #4
  br label %138

193:                                              ; preds = %179, %186, %175, %173, %150
  %194 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %195 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %196 = trunc i64 %11 to i32
  %197 = and i32 %196, 65535
  %198 = and i32 %15, 1023
  %199 = load i64, ptr %13, align 8
  %200 = trunc i64 %199 to i16
  switch i16 %200, label %580 [
    i16 10, label %201
    i16 12, label %201
    i16 8, label %213
    i16 6, label %213
    i16 7, label %213
    i16 5, label %213
    i16 9, label %559
    i16 11, label %561
    i16 13, label %563
    i16 14, label %569
  ]

201:                                              ; preds = %193, %193
  %202 = tail call i32 @integer_zerop(ptr noundef nonnull %10) #4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  %205 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 0) #4
  br label %583

206:                                              ; preds = %201
  %207 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !11
  %208 = load i32, ptr %195, align 4
  %209 = and i32 %208, 1023
  %210 = tail call ptr %207(i32 noundef %209, i32 noundef 0) #4
  %211 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 113, ptr noundef %210, ptr noundef nonnull %10) #4
  %212 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %211) #4
  br label %583

213:                                              ; preds = %193, %193, %193, %193
  %214 = and i64 %11, 65535
  %215 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !6
  %217 = icmp eq i32 %216, 5
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = tail call ptr @copy_node_stat(ptr noundef nonnull %10) #4
  %220 = getelementptr inbounds %struct.tree_common, ptr %219, i64 0, i32 2
  store ptr %0, ptr %220, align 8, !tbaa !10
  br label %583

221:                                              ; preds = %213
  %222 = icmp ult i32 %17, %198
  %223 = load i64, ptr %0, align 8
  br i1 %222, label %258, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %194, align 8, !tbaa !10
  %226 = load i64, ptr %225, align 8
  %227 = xor i64 %226, %223
  %228 = and i64 %227, 2097152
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %249, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.tree_type, ptr %225, i64 0, i32 6
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, 1023
  %234 = and i64 %226, 65535
  %235 = icmp eq i64 %234, 14
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = tail call i32 @vector_type_mode(ptr noundef nonnull %225) #4
  br label %241

238:                                              ; preds = %230
  %239 = lshr i32 %232, 16
  %240 = and i32 %239, 255
  br label %241

241:                                              ; preds = %238, %236
  %242 = phi i32 [ %237, %236 ], [ %240, %238 ]
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !10
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 3
  %248 = icmp eq i32 %233, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %241, %224
  br label %250

250:                                              ; preds = %241, %249
  %251 = phi i32 [ 116, %249 ], [ 113, %241 ]
  %252 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %251, ptr noundef nonnull %0, ptr noundef nonnull %10) #4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %583

254:                                              ; preds = %250
  %255 = tail call ptr @build1_stat(i32 noundef %251, ptr noundef nonnull %0, ptr noundef nonnull %10) #4
  %256 = load i64, ptr %255, align 8
  %257 = or i64 %256, 8388608
  store i64 %257, ptr %255, align 8
  br label %583

258:                                              ; preds = %221
  %259 = trunc i64 %223 to i16
  switch i16 %259, label %262 [
    i16 6, label %276
    i16 14, label %260
  ]

260:                                              ; preds = %258
  %261 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %266

262:                                              ; preds = %258
  %263 = load i32, ptr %3, align 4
  %264 = lshr i32 %263, 16
  %265 = and i32 %264, 255
  br label %266

266:                                              ; preds = %262, %260
  %267 = phi i32 [ %261, %260 ], [ %265, %262 ]
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !10
  %271 = zext i8 %270 to i32
  %272 = shl nuw nsw i32 %271, 3
  %273 = icmp eq i32 %17, %272
  br i1 %273, label %297, label %274

274:                                              ; preds = %266
  %275 = load i64, ptr %0, align 8
  br label %276

276:                                              ; preds = %274, %258
  %277 = phi i64 [ %275, %274 ], [ %223, %258 ]
  %278 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !23
  %279 = and i64 %277, 65535
  %280 = icmp eq i64 %279, 14
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  %283 = load i64, ptr %0, align 8
  br label %288

284:                                              ; preds = %276
  %285 = load i32, ptr %3, align 4
  %286 = lshr i32 %285, 16
  %287 = and i32 %286, 255
  br label %288

288:                                              ; preds = %284, %281
  %289 = phi i64 [ %283, %281 ], [ %277, %284 ]
  %290 = phi i32 [ %282, %281 ], [ %287, %284 ]
  %291 = trunc i64 %289 to i32
  %292 = lshr i32 %291, 21
  %293 = and i32 %292, 1
  %294 = tail call ptr %278(i32 noundef %290, i32 noundef %293) #4
  %295 = tail call ptr @convert(ptr noundef %294, ptr noundef nonnull %10) #4
  %296 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef nonnull %0, ptr noundef %295) #4
  br label %583

297:                                              ; preds = %266
  %298 = trunc i64 %11 to i16
  switch i16 %298, label %557 [
    i16 84, label %299
    i16 83, label %308
    i16 67, label %337
    i16 81, label %383
    i16 80, label %383
    i16 65, label %383
    i16 63, label %409
    i16 64, label %409
    i16 89, label %409
    i16 87, label %409
    i16 88, label %409
    i16 79, label %481
    i16 90, label %481
    i16 116, label %497
    i16 56, label %531
  ]

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !10
  %302 = load i64, ptr %301, align 8
  %303 = and i64 %302, 65535
  %304 = icmp eq i64 %303, 23
  br i1 %304, label %305, label %557

305:                                              ; preds = %299
  %306 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %301) #4
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %409, label %557

308:                                              ; preds = %297
  %309 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !10
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 65535
  %313 = icmp eq i64 %312, 23
  br i1 %313, label %314, label %557

314:                                              ; preds = %308
  %315 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %310) #4
  %316 = icmp sgt i32 %315, -1
  br i1 %316, label %317, label %557

317:                                              ; preds = %314
  %318 = load i64, ptr %0, align 8
  %319 = and i64 %318, 2097152
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %557, label %321

321:                                              ; preds = %317
  %322 = load ptr, ptr %4, align 8, !tbaa !10
  %323 = load i64, ptr %322, align 8
  %324 = and i64 %323, 65535
  %325 = icmp eq i64 %324, 23
  br i1 %325, label %326, label %557

326:                                              ; preds = %321
  %327 = load ptr, ptr %309, align 8, !tbaa !10
  %328 = tail call i32 @tree_int_cst_lt(ptr noundef %327, ptr noundef nonnull %322) #4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %409

330:                                              ; preds = %326
  %331 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 0) #4
  %332 = load i64, ptr %10, align 8
  %333 = and i64 %332, 65536
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %583, label %335

335:                                              ; preds = %330
  %336 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %331) #4
  br label %583

337:                                              ; preds = %297
  %338 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !10
  %340 = tail call ptr @get_unwidened(ptr noundef %339, ptr noundef nonnull %0) #4
  %341 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !10
  %343 = tail call ptr @get_unwidened(ptr noundef %342, ptr noundef nonnull %0) #4
  %344 = getelementptr inbounds %struct.tree_common, ptr %340, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !10
  %346 = getelementptr inbounds %struct.tree_type, ptr %345, i64 0, i32 6
  %347 = load i32, ptr %346, align 4
  %348 = and i32 %347, 1023
  %349 = icmp ult i32 %17, %348
  br i1 %349, label %557, label %350

350:                                              ; preds = %337
  %351 = getelementptr inbounds %struct.tree_common, ptr %343, i64 0, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !10
  %353 = getelementptr inbounds %struct.tree_type, ptr %352, i64 0, i32 6
  %354 = load i32, ptr %353, align 4
  %355 = and i32 %354, 1023
  %356 = icmp ult i32 %17, %355
  br i1 %356, label %557, label %357

357:                                              ; preds = %350
  %358 = load i64, ptr %345, align 8
  %359 = trunc i64 %358 to i32
  %360 = lshr i32 %359, 21
  %361 = and i32 %360, 1
  %362 = load i64, ptr %352, align 8
  %363 = trunc i64 %362 to i32
  %364 = lshr i32 %363, 21
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %361, %365
  br i1 %366, label %367, label %557

367:                                              ; preds = %357
  %368 = load ptr, ptr %194, align 8, !tbaa !10
  %369 = load i64, ptr %368, align 8
  %370 = trunc i64 %369 to i32
  %371 = lshr i32 %370, 21
  %372 = and i32 %371, 1
  %373 = icmp eq i32 %372, %361
  br i1 %373, label %374, label %557

374:                                              ; preds = %367
  %375 = icmp eq i32 %361, 0
  br i1 %375, label %376, label %409

376:                                              ; preds = %374
  %377 = load i64, ptr %343, align 8
  %378 = and i64 %377, 65535
  %379 = icmp eq i64 %378, 23
  br i1 %379, label %380, label %557

380:                                              ; preds = %376
  %381 = tail call i32 @integer_all_onesp(ptr noundef nonnull %343) #4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %409, label %557

383:                                              ; preds = %297, %297, %297
  %384 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !10
  %386 = tail call ptr @get_unwidened(ptr noundef %385, ptr noundef nonnull %0) #4
  %387 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !10
  %389 = tail call ptr @get_unwidened(ptr noundef %388, ptr noundef nonnull %0) #4
  %390 = getelementptr inbounds %struct.tree_common, ptr %386, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !10
  %392 = getelementptr inbounds %struct.tree_type, ptr %391, i64 0, i32 6
  %393 = load i32, ptr %392, align 4
  %394 = and i32 %393, 1023
  %395 = icmp ult i32 %17, %394
  br i1 %395, label %557, label %396

396:                                              ; preds = %383
  %397 = getelementptr inbounds %struct.tree_common, ptr %389, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !10
  %399 = getelementptr inbounds %struct.tree_type, ptr %398, i64 0, i32 6
  %400 = load i32, ptr %399, align 4
  %401 = and i32 %400, 1023
  %402 = icmp ult i32 %17, %401
  br i1 %402, label %557, label %403

403:                                              ; preds = %396
  %404 = load i64, ptr %391, align 8
  %405 = load i64, ptr %398, align 8
  %406 = xor i64 %405, %404
  %407 = and i64 %406, 2097152
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %557

409:                                              ; preds = %403, %374, %380, %297, %297, %297, %297, %297, %326, %305
  %410 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !10
  %412 = tail call ptr @get_unwidened(ptr noundef %411, ptr noundef nonnull %0) #4
  %413 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !10
  %415 = tail call ptr @get_unwidened(ptr noundef %414, ptr noundef nonnull %0) #4
  %416 = load i64, ptr %0, align 8
  %417 = and i64 %416, 65535
  %418 = icmp eq i64 %417, 6
  br i1 %418, label %419, label %427

419:                                              ; preds = %409
  %420 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !11
  %421 = load i32, ptr %3, align 4
  %422 = and i32 %421, 1023
  %423 = trunc i64 %416 to i32
  %424 = lshr i32 %423, 21
  %425 = and i32 %424, 1
  %426 = tail call ptr %420(i32 noundef %422, i32 noundef %425) #4
  br label %427

427:                                              ; preds = %419, %409
  %428 = phi ptr [ %426, %419 ], [ %0, %409 ]
  %429 = getelementptr inbounds %struct.tree_type, ptr %428, i64 0, i32 6
  %430 = load i32, ptr %429, align 4
  %431 = and i32 %430, 1023
  %432 = icmp eq i32 %431, %198
  br i1 %432, label %557, label %433

433:                                              ; preds = %427
  %434 = load ptr, ptr %194, align 8, !tbaa !10
  %435 = load i64, ptr %434, align 8
  %436 = and i64 %435, 2097152
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %471

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.tree_common, ptr %412, i64 0, i32 2
  %440 = load ptr, ptr %439, align 8, !tbaa !10
  %441 = load i64, ptr %440, align 8
  %442 = and i64 %441, 2097152
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %454, label %444

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.tree_common, ptr %415, i64 0, i32 2
  %446 = load ptr, ptr %445, align 8, !tbaa !10
  %447 = load i64, ptr %446, align 8
  %448 = freeze i64 %447
  %449 = and i64 %448, 2097152
  %450 = icmp ne i64 %449, 0
  %451 = add nsw i32 %197, -83
  %452 = icmp ult i32 %451, 4
  %453 = select i1 %450, i1 true, i1 %452
  br i1 %453, label %471, label %462

454:                                              ; preds = %438
  %455 = icmp eq i32 %197, 83
  br i1 %455, label %471, label %456

456:                                              ; preds = %454
  %457 = load i32, ptr @flag_wrapv, align 4
  %458 = icmp eq i32 %457, 0
  %459 = add nsw i32 %197, -63
  %460 = icmp ult i32 %459, 2
  %461 = select i1 %458, i1 %460, i1 false
  br i1 %461, label %471, label %473

462:                                              ; preds = %444
  %463 = load i32, ptr @flag_wrapv, align 4
  %464 = icmp ne i32 %463, 0
  %465 = and i64 %448, 2097152
  %466 = icmp ne i64 %465, 0
  %467 = select i1 %466, i1 true, i1 %464
  %468 = add nsw i32 %197, -65
  %469 = icmp ult i32 %468, -2
  %470 = select i1 %467, i1 true, i1 %469
  br i1 %470, label %473, label %471

471:                                              ; preds = %456, %462, %444, %454, %433
  %472 = tail call ptr @unsigned_type_for(ptr noundef nonnull %428) #4
  br label %475

473:                                              ; preds = %456, %462
  %474 = tail call ptr @signed_type_for(ptr noundef nonnull %428) #4
  br label %475

475:                                              ; preds = %471, %473
  %476 = phi ptr [ %472, %471 ], [ %474, %473 ]
  %477 = tail call ptr @convert(ptr noundef %476, ptr noundef %412) #4
  %478 = tail call ptr @convert(ptr noundef %476, ptr noundef %415) #4
  %479 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %197, ptr noundef %476, ptr noundef %477, ptr noundef %478) #4
  %480 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef %479) #4
  br label %583

481:                                              ; preds = %297, %297
  %482 = load ptr, ptr %194, align 8, !tbaa !10
  %483 = load i64, ptr %482, align 8
  %484 = and i64 %483, 2097152
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %481
  %487 = tail call ptr @unsigned_type_for(ptr noundef nonnull %0) #4
  br label %490

488:                                              ; preds = %481
  %489 = tail call ptr @signed_type_for(ptr noundef nonnull %0) #4
  br label %490

490:                                              ; preds = %488, %486
  %491 = phi ptr [ %487, %486 ], [ %489, %488 ]
  %492 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !10
  %494 = tail call ptr @convert(ptr noundef %491, ptr noundef %493) #4
  %495 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %197, ptr noundef %491, ptr noundef %494) #4
  %496 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef %495) #4
  br label %583

497:                                              ; preds = %297
  %498 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %499 = load ptr, ptr %498, align 8, !tbaa !10
  %500 = getelementptr inbounds %struct.tree_common, ptr %499, i64 0, i32 2
  %501 = load ptr, ptr %500, align 8, !tbaa !10
  %502 = load i64, ptr %501, align 8
  %503 = and i64 %502, 65535
  %504 = icmp eq i64 %503, 14
  br i1 %504, label %505, label %527

505:                                              ; preds = %497
  %506 = tail call i32 @vector_type_mode(ptr noundef nonnull %501) #4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !10
  %510 = load i64, ptr %0, align 8
  %511 = and i64 %510, 65535
  %512 = icmp eq i64 %511, 14
  br i1 %512, label %513, label %515

513:                                              ; preds = %505
  %514 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %519

515:                                              ; preds = %505
  %516 = load i32, ptr %3, align 4
  %517 = lshr i32 %516, 16
  %518 = and i32 %517, 255
  br label %519

519:                                              ; preds = %515, %513
  %520 = phi i32 [ %514, %513 ], [ %518, %515 ]
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !10
  %524 = icmp eq i8 %509, %523
  br i1 %524, label %525, label %557

525:                                              ; preds = %519
  %526 = load ptr, ptr %498, align 8, !tbaa !10
  br label %527

527:                                              ; preds = %525, %497
  %528 = phi ptr [ %526, %525 ], [ %499, %497 ]
  %529 = tail call ptr @get_unwidened(ptr noundef %528, ptr noundef nonnull %0) #4
  %530 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef %529) #4
  br label %583

531:                                              ; preds = %297
  %532 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %533 = load ptr, ptr %532, align 8, !tbaa !10
  %534 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %535 = load ptr, ptr %534, align 8, !tbaa !10
  %536 = getelementptr inbounds %struct.tree_common, ptr %535, i64 0, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !10
  %538 = load i64, ptr %537, align 8
  %539 = and i64 %538, 65535
  %540 = icmp eq i64 %539, 19
  br i1 %540, label %543, label %541

541:                                              ; preds = %531
  %542 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef nonnull %535) #4
  br label %543

543:                                              ; preds = %531, %541
  %544 = phi ptr [ %542, %541 ], [ %535, %531 ]
  %545 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !10
  %547 = getelementptr inbounds %struct.tree_common, ptr %546, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !10
  %549 = load i64, ptr %548, align 8
  %550 = and i64 %549, 65535
  %551 = icmp eq i64 %550, 19
  br i1 %551, label %554, label %552

552:                                              ; preds = %543
  %553 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef nonnull %546) #4
  br label %554

554:                                              ; preds = %543, %552
  %555 = phi ptr [ %553, %552 ], [ %546, %543 ]
  %556 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 56, ptr noundef nonnull %0, ptr noundef %533, ptr noundef %544, ptr noundef %555) #4
  br label %583

557:                                              ; preds = %380, %376, %367, %357, %350, %337, %427, %403, %396, %383, %297, %519, %308, %314, %317, %321, %299, %305
  %558 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef nonnull %0, ptr noundef nonnull %10) #4
  br label %583

559:                                              ; preds = %193
  %560 = tail call ptr @build1_stat(i32 noundef 77, ptr noundef nonnull %0, ptr noundef nonnull %10) #4
  br label %583

561:                                              ; preds = %193
  %562 = tail call ptr @build1_stat(i32 noundef 115, ptr noundef nonnull %0, ptr noundef nonnull %10) #4
  br label %583

563:                                              ; preds = %193
  %564 = load ptr, ptr %194, align 8, !tbaa !10
  %565 = getelementptr inbounds %struct.tree_common, ptr %564, i64 0, i32 2
  %566 = load ptr, ptr %565, align 8, !tbaa !10
  %567 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %566, ptr noundef nonnull %10) #4
  %568 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef %567) #4
  br label %583

569:                                              ; preds = %193
  %570 = load ptr, ptr %4, align 8, !tbaa !10
  %571 = load ptr, ptr %194, align 8, !tbaa !10
  %572 = getelementptr inbounds %struct.tree_type, ptr %571, i64 0, i32 2
  %573 = load ptr, ptr %572, align 8, !tbaa !10
  %574 = tail call i32 @tree_int_cst_equal(ptr noundef %570, ptr noundef %573) #4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %569
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #4
  %577 = load ptr, ptr @global_trees, align 16, !tbaa !21
  br label %583

578:                                              ; preds = %569
  %579 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef nonnull %0, ptr noundef nonnull %10) #4
  br label %583

580:                                              ; preds = %193
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #4
  %581 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !21
  %582 = tail call ptr @convert(ptr noundef nonnull %0, ptr noundef %581) #4
  br label %583

583:                                              ; preds = %475, %335, %330, %254, %250, %580, %578, %576, %563, %561, %559, %557, %554, %527, %490, %288, %218, %206, %204, %7
  %584 = phi ptr [ %582, %580 ], [ %579, %578 ], [ %577, %576 ], [ %568, %563 ], [ %562, %561 ], [ %560, %559 ], [ %219, %218 ], [ %296, %288 ], [ %558, %557 ], [ %556, %554 ], [ %530, %527 ], [ %496, %490 ], [ %480, %475 ], [ %205, %204 ], [ %212, %206 ], [ %8, %7 ], [ %255, %254 ], [ %252, %250 ], [ %336, %335 ], [ %331, %330 ]
  ret ptr %584
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_unwidened(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_complex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %51, %2
  %5 = phi ptr [ %1, %2 ], [ %53, %51 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %51 [
    i16 9, label %11
    i16 11, label %11
    i16 8, label %11
    i16 6, label %11
    i16 7, label %11
    i16 13, label %16
    i16 10, label %50
    i16 12, label %50
  ]

11:                                               ; preds = %4, %4, %4, %4, %4
  %12 = tail call ptr @convert(ptr noundef %6, ptr noundef nonnull %5) #4
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !21
  %14 = tail call ptr @convert(ptr noundef %6, ptr noundef %13) #4
  %15 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef nonnull %0, ptr noundef %12, ptr noundef %14) #4
  br label %54

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %54, label %24

24:                                               ; preds = %16
  %25 = load i64, ptr %5, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 123
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = tail call ptr @convert(ptr noundef nonnull %6, ptr noundef %30) #4
  %32 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  %34 = tail call ptr @convert(ptr noundef nonnull %6, ptr noundef %33) #4
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 123, ptr noundef nonnull %0, ptr noundef %31, ptr noundef %34) #4
  br label %54

36:                                               ; preds = %24
  %37 = tail call ptr @save_expr(ptr noundef nonnull %5) #4
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %41, ptr noundef %37) #4
  %43 = tail call ptr @convert(ptr noundef nonnull %6, ptr noundef %42) #4
  %44 = load ptr, ptr %38, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef %46, ptr noundef %37) #4
  %48 = tail call ptr @convert(ptr noundef nonnull %6, ptr noundef %47) #4
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 123, ptr noundef nonnull %0, ptr noundef %43, ptr noundef %48) #4
  br label %54

50:                                               ; preds = %4, %4
  br label %51

51:                                               ; preds = %4, %50
  %52 = phi ptr [ @.str.6, %50 ], [ @.str.7, %4 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %52) #4
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !21
  br label %4

54:                                               ; preds = %28, %36, %16, %11
  %55 = phi ptr [ %15, %11 ], [ %35, %28 ], [ %49, %36 ], [ %5, %16 ]
  ret ptr %55
}

; Function Attrs: optsize
declare ptr @save_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_vector(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %18 [
    i16 8, label %7
    i16 14, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call i32 @tree_int_cst_equal(ptr noundef %9, ptr noundef %11) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #4
  %15 = load ptr, ptr @global_trees, align 16, !tbaa !21
  br label %20

16:                                               ; preds = %7
  %17 = tail call ptr @build1_stat(i32 noundef 118, ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  br label %20

18:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #4
  %19 = load ptr, ptr @global_trees, align 16, !tbaa !21
  br label %20

20:                                               ; preds = %18, %16, %14
  %21 = phi ptr [ %19, %18 ], [ %17, %16 ], [ %15, %14 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_fixed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @integer_zerop(ptr noundef %1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = add i32 %17, -20
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %19
  %21 = tail call ptr @build_fixed(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fixed_value) align 8 %20) #4
  br label %93

22:                                               ; preds = %2
  %23 = tail call i32 @integer_onep(ptr noundef %1) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %79, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr %0, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  %31 = load i64, ptr %0, align 8
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i64 [ %31, %29 ], [ %26, %32 ]
  %39 = phi i32 [ %30, %29 ], [ %36, %32 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !10
  %43 = icmp eq i8 %42, 6
  br i1 %43, label %62, label %44

44:                                               ; preds = %37
  %45 = and i64 %38, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i32 [ %48, %47 ], [ %53, %49 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !10
  %59 = icmp eq i8 %58, 7
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load i64, ptr %0, align 8
  br label %62

62:                                               ; preds = %60, %37
  %63 = phi i64 [ %61, %60 ], [ %38, %37 ]
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 14
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #4
  br label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = add i32 %74, -30
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %76
  %78 = tail call ptr @build_fixed(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fixed_value) align 8 %77) #4
  br label %93

79:                                               ; preds = %22, %54
  %80 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !10
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i16
  switch i16 %83, label %91 [
    i16 11, label %84
    i16 8, label %84
    i16 6, label %84
    i16 7, label %84
    i16 9, label %84
    i16 13, label %86
  ]

84:                                               ; preds = %79, %79, %79, %79, %79
  %85 = tail call ptr @build1_stat(i32 noundef 115, ptr noundef %0, ptr noundef nonnull %1) #4
  br label %93

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !10
  %89 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %88, ptr noundef nonnull %1) #4
  %90 = tail call ptr @convert(ptr noundef %0, ptr noundef %89) #4
  br label %93

91:                                               ; preds = %79
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #4
  %92 = load ptr, ptr @global_trees, align 16, !tbaa !21
  br label %93

93:                                               ; preds = %91, %86, %84, %73, %16
  %94 = phi ptr [ %21, %16 ], [ %78, %73 ], [ %92, %91 ], [ %90, %86 ], [ %85, %84 ]
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @build_fixed(ptr noundef, ptr noundef byval(%struct.fixed_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !13, i64 456}
!12 = !{!"lang_hooks", !13, i64 0, !14, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !15, i64 240, !16, i64 248, !17, i64 256, !18, i64 272, !19, i64 432, !20, i64 560, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !13, i64 616, !13, i64 624, !13, i64 632, !13, i64 640, !13, i64 648, !13, i64 656, !13, i64 664, !8, i64 672}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"lang_hooks_for_tree_inlining", !13, i64 0}
!16 = !{!"lang_hooks_for_callgraph", !13, i64 0}
!17 = !{!"lang_hooks_for_tree_dump", !13, i64 0, !13, i64 8}
!18 = !{!"lang_hooks_for_decls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!19 = !{!"lang_hooks_for_types", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !8, i64 120}
!20 = !{!"lang_hooks_for_lto", !13, i64 0, !13, i64 8, !13, i64 16}
!21 = !{!13, !13, i64 0}
!22 = !{i64 0, i64 4, !6, i64 0, i64 4, !6, i64 0, i64 4, !6, i64 0, i64 4, !6, i64 0, i64 4, !6, i64 0, i64 4, !6, i64 8, i64 24, !10}
!23 = !{!12, !13, i64 448}
