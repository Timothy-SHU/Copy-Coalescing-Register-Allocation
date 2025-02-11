; ModuleID = 'tree-chrec.c'
source_filename = "tree-chrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"(chrec_apply \0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  (varying_loop = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c")\0A  (chrec = \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c")\0A  (x = \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c")\0A  (res = \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tree-chrec.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_not_analyzed_yet = external local_unnamed_addr global ptr, align 8
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@dconstm1 = external global %struct.real_value, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dconst2 = external global %struct.real_value, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %3
  %10 = tail call fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef %1, ptr noundef %2) #11
  br label %30

11:                                               ; preds = %6
  %12 = tail call i32 @integer_zerop(ptr noundef %1) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @chrec_convert(ptr noundef %0, ptr noundef %2, ptr noundef null) #11
  br label %30

16:                                               ; preds = %11
  %17 = tail call i32 @integer_zerop(ptr noundef %2) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @chrec_convert(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %30

21:                                               ; preds = %16
  %22 = load i64, ptr %0, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -10
  %26 = and i32 %25, -3
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 66, i32 63
  %29 = tail call fastcc ptr @chrec_fold_plus_1(i32 noundef %28, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #11
  br label %30

30:                                               ; preds = %21, %19, %14, %9
  %31 = phi ptr [ %10, %9 ], [ %15, %14 ], [ %20, %19 ], [ %29, %21 ]
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #2 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef readnone %0, ptr noundef readnone %1) unnamed_addr #2 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  %4 = icmp eq ptr %3, %0
  %5 = icmp eq ptr %3, %1
  %6 = or i1 %4, %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @chrec_known, align 8, !tbaa !6
  %9 = icmp eq ptr %8, %0
  %10 = icmp eq ptr %8, %1
  %11 = or i1 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @chrec_not_analyzed_yet, align 8
  %14 = icmp eq ptr %13, %0
  %15 = icmp eq ptr %13, %1
  %16 = or i1 %14, %15
  %17 = select i1 %16, ptr %13, ptr %3
  br label %18

18:                                               ; preds = %7, %2, %12
  %19 = phi ptr [ %17, %12 ], [ %3, %2 ], [ %8, %7 ]
  ret ptr %19
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_fold_plus_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %0, 66
  %7 = load ptr, ptr @sizetype_tab, align 16
  %8 = select i1 %6, ptr %7, ptr %1
  %9 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %3) #11, !range !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %4
  %15 = tail call fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef %2, ptr noundef %3) #11
  br label %133

16:                                               ; preds = %11
  %17 = load i64, ptr %2, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %59 [
    i16 146, label %19
    i16 116, label %54
    i16 113, label %54
  ]

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %29 [
    i16 146, label %22
    i16 116, label %24
    i16 113, label %24
  ]

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @chrec_fold_plus_poly_poly(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  br label %133

24:                                               ; preds = %19, %19
  %25 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef null) #11, !range !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %133

29:                                               ; preds = %24, %19
  switch i32 %0, label %42 [
    i32 66, label %30
    i32 63, label %30
  ]

30:                                               ; preds = %29, %29
  %31 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.tree_int_cst, ptr %32, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !10
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %37, ptr noundef nonnull %3) #11
  %39 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %35, ptr noundef %38, ptr noundef %40) #11
  br label %133

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !10
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  %50 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %49, ptr noundef nonnull %3) #11
  %51 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !10
  %53 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %47, ptr noundef %50, ptr noundef %52) #11
  br label %133

54:                                               ; preds = %16, %16
  %55 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null) #11, !range !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %133

59:                                               ; preds = %54, %16
  %60 = load i64, ptr %3, align 8
  %61 = trunc i64 %60 to i16
  switch i16 %61, label %102 [
    i16 146, label %62
    i16 116, label %97
    i16 113, label %97
  ]

62:                                               ; preds = %59
  switch i32 %0, label %75 [
    i32 66, label %63
    i32 63, label %63
  ]

63:                                               ; preds = %62, %62
  %64 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.tree_int_cst, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !10
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %70) #11
  %72 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %68, ptr noundef %71, ptr noundef %73) #11
  br label %133

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !10
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %82) #11
  %84 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !10
  %86 = load i64, ptr %1, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 9
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = tail call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 @dconstm1) #12
  br label %93

91:                                               ; preds = %75
  %92 = tail call ptr @build_int_cst_type(ptr noundef nonnull %1, i64 noundef -1) #12
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi ptr [ %90, %89 ], [ %92, %91 ]
  %95 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %1, ptr noundef %85, ptr noundef %94) #11
  %96 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %80, ptr noundef %83, ptr noundef %95) #11
  br label %133

97:                                               ; preds = %59, %59
  %98 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef null) #11, !range !5
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %133

102:                                              ; preds = %97, %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !11
  %103 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef nonnull %5) #11, !range !5
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef nonnull %5) #11, !range !5
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, ptr %5, align 4, !tbaa !11
  %110 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.param_info, ptr %110, i64 63, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !13
  br label %121

113:                                              ; preds = %105, %102
  %114 = load i32, ptr %5, align 4, !tbaa !11
  %115 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %116 = getelementptr inbounds %struct.param_info, ptr %115, i64 63, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !13
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call ptr @build2_stat(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  br label %131

121:                                              ; preds = %108, %113
  %122 = phi i32 [ %112, %108 ], [ %117, %113 ]
  %123 = phi i32 [ %109, %108 ], [ %114, %113 ]
  %124 = icmp slt i32 %123, %122
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2) #12
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef nonnull %3) #12
  %128 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %126, ptr noundef %127) #12
  br label %131

129:                                              ; preds = %121
  %130 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %131

131:                                              ; preds = %129, %125, %119
  %132 = phi ptr [ %120, %119 ], [ %128, %125 ], [ %130, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %133

133:                                              ; preds = %131, %100, %93, %63, %57, %42, %30, %27, %22, %14
  %134 = phi ptr [ %15, %14 ], [ %132, %131 ], [ %101, %100 ], [ %74, %63 ], [ %96, %93 ], [ %58, %57 ], [ %41, %30 ], [ %53, %42 ], [ %28, %27 ], [ %23, %22 ]
  ret ptr %134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_fold_minus(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %3
  %10 = tail call fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef %1, ptr noundef %2) #11
  br label %16

11:                                               ; preds = %6
  %12 = tail call i32 @integer_zerop(ptr noundef %2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @chrec_fold_plus_1(i32 noundef 64, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %16

16:                                               ; preds = %11, %14, %9
  %17 = phi ptr [ %10, %9 ], [ %15, %14 ], [ %1, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %3
  %10 = tail call fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef %1, ptr noundef %2) #11
  br label %32

11:                                               ; preds = %6
  %12 = load i64, ptr %1, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %52 [
    i16 146, label %14
    i16 116, label %47
    i16 113, label %47
  ]

14:                                               ; preds = %11
  %15 = load i64, ptr %2, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %24 [
    i16 146, label %17
    i16 116, label %19
    i16 113, label %19
  ]

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @chrec_fold_multiply_poly_poly(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  br label %32

19:                                               ; preds = %14, %14
  %20 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null) #11, !range !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %32

24:                                               ; preds = %19, %14
  %25 = tail call i32 @integer_onep(ptr noundef nonnull %2) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #12
  br label %32

32:                                               ; preds = %81, %52, %24, %89, %87, %79, %58, %50, %30, %22, %17, %9, %63, %34
  %33 = phi ptr [ %46, %34 ], [ %75, %63 ], [ %10, %9 ], [ %59, %58 ], [ %88, %87 ], [ %90, %89 ], [ %80, %79 ], [ %51, %50 ], [ %31, %30 ], [ %23, %22 ], [ %18, %17 ], [ %1, %24 ], [ %2, %52 ], [ %1, %81 ]
  ret ptr %33

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct.tree_int_cst, ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !10
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %41, ptr noundef nonnull %2) #11
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %44, ptr noundef nonnull %2) #11
  %46 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %39, ptr noundef %42, ptr noundef %45) #11
  br label %32

47:                                               ; preds = %11, %11
  %48 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %1, ptr noundef null) #11, !range !5
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %32

52:                                               ; preds = %47, %11
  %53 = tail call i32 @integer_onep(ptr noundef nonnull %1) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %32

55:                                               ; preds = %52
  %56 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #12
  br label %32

60:                                               ; preds = %55
  %61 = load i64, ptr %2, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %81 [
    i16 146, label %63
    i16 116, label %76
    i16 113, label %76
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.tree_int_cst, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !10
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !10
  %71 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %1) #11
  %72 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %73, ptr noundef nonnull %1) #11
  %75 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %68, ptr noundef %71, ptr noundef %74) #11
  br label %32

76:                                               ; preds = %60, %60
  %77 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null) #11, !range !5
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %32

81:                                               ; preds = %76, %60
  %82 = tail call i32 @integer_onep(ptr noundef nonnull %2) #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %32

84:                                               ; preds = %81
  %85 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #12
  br label %32

89:                                               ; preds = %84
  %90 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  br label %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_fold_multiply_poly_poly(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #11
  %5 = tail call fastcc ptr @get_chrec_loop(ptr noundef %2) #11
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 192, ptr noundef nonnull @.str.7) #12
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 193, ptr noundef nonnull @.str.7) #12
  br label %11

11:                                               ; preds = %8, %10
  %12 = load i64, ptr %1, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 146
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 194, ptr noundef nonnull @.str.7) #12
  br label %16

16:                                               ; preds = %11, %15
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 146
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 195, ptr noundef nonnull @.str.7) #12
  br label %21

21:                                               ; preds = %16, %20
  %22 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #11
  %23 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #11
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 196, ptr noundef nonnull @.str.7) #12
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #11
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 197, ptr noundef nonnull @.str.7) #12
  br label %30

30:                                               ; preds = %26, %29
  %31 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %4, ptr noundef %5) #12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.tree_int_cst, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !10
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %1) #11
  %42 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %38, ptr noundef %41, ptr noundef %43) #11
  br label %99

45:                                               ; preds = %30
  %46 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %5, ptr noundef %4) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !10
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !10
  %56 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %55, ptr noundef nonnull %2) #11
  %57 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %53, ptr noundef %56, ptr noundef %58) #11
  br label %99

60:                                               ; preds = %45
  %61 = icmp eq ptr %4, %5
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 216, ptr noundef nonnull @.str.7) #12
  br label %63

63:                                               ; preds = %60, %62
  %64 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  %69 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %66, ptr noundef %68) #11
  %70 = load ptr, ptr %65, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !10
  %73 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %70, ptr noundef %72) #11
  %74 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !10
  %76 = load ptr, ptr %67, align 8, !tbaa !10
  %77 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %75, ptr noundef %76) #11
  %78 = tail call ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %73, ptr noundef %77) #11
  %79 = load ptr, ptr %74, align 8, !tbaa !10
  %80 = load ptr, ptr %71, align 8, !tbaa !10
  %81 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %79, ptr noundef %80) #11
  %82 = tail call ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %78, ptr noundef %81) #11
  %83 = load i64, ptr %0, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 9
  br i1 %85, label %86, label %88

86:                                               ; preds = %63
  %87 = tail call ptr @build_real(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst2) #12
  br label %90

88:                                               ; preds = %63
  %89 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 2) #12
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi ptr [ %87, %86 ], [ %89, %88 ]
  %92 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %0, ptr noundef %91, ptr noundef %81) #11
  %93 = load ptr, ptr %64, align 8, !tbaa !10
  %94 = getelementptr inbounds %struct.tree_int_cst, ptr %93, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !10
  %96 = trunc i64 %95 to i32
  %97 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %96, ptr noundef %82, ptr noundef %92) #11
  %98 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %96, ptr noundef %69, ptr noundef %97) #11
  br label %99

99:                                               ; preds = %90, %48, %33
  %100 = phi ptr [ %44, %33 ], [ %59, %48 ], [ %98, %90 ]
  ret ptr %100
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @tree_contains_chrecs(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4, !tbaa !11
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !11
  br label %9

9:                                                ; preds = %6, %4
  %10 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef nonnull %0) #11, !range !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #11
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = zext nneg i32 %13 to i64
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, %16
  br i1 %19, label %26, label %20, !llvm.loop !15

20:                                               ; preds = %15, %17
  %21 = phi i64 [ 0, %15 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %23, ptr noundef %1) #11, !range !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %17, label %26

26:                                               ; preds = %20, %17, %12, %9, %2
  %27 = phi i8 [ 0, %2 ], [ 1, %9 ], [ 0, %12 ], [ 1, %20 ], [ 0, %17 ]
  ret i8 %27
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  %5 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  %6 = icmp eq ptr %5, %1
  %7 = icmp eq ptr %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef %1, i32 noundef %0, ptr noundef nonnull %4) #11, !range !5
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %4, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %45

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %23 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %17, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 143, ptr noundef nonnull @.str.7) #12
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %32 [
    i16 10, label %28
    i16 12, label %28
  ]

28:                                               ; preds = %23, %23
  %29 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %30 = load ptr, ptr %18, align 8, !tbaa !10
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %37, label %35

32:                                               ; preds = %23
  %33 = load ptr, ptr %18, align 8, !tbaa !10
  %34 = icmp eq ptr %25, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ 147, %28 ], [ 149, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %36, ptr noundef nonnull @.str.7) #12
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = tail call fastcc zeroext i8 @chrec_zerop(ptr noundef nonnull %2) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load ptr, ptr %24, align 8, !tbaa !10
  %42 = zext i32 %0 to i64
  %43 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %42) #12
  %44 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %41, ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  br label %45

45:                                               ; preds = %3, %37, %40, %15
  %46 = phi ptr [ %44, %40 ], [ %16, %15 ], [ %1, %37 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_apply(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %5 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %1, i32 noundef %0) #12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %7, %3
  %14 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %85

15:                                               ; preds = %10
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !11
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @fwrite(ptr nonnull @.str, i64 14, i64 1, ptr nonnull %16)
  br label %24

24:                                               ; preds = %22, %18, %15
  %25 = load i64, ptr %2, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, ptr %4, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 9
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call ptr @build_real_from_int_cst(ptr noundef nonnull %4, ptr noundef nonnull %2) #12
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = phi ptr [ %33, %32 ], [ %2, %28 ], [ %2, %24 ]
  %36 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef %1) #11, !range !5
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @chrec_convert_rhs(ptr noundef %4, ptr noundef %35, ptr noundef null) #11
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = tail call ptr @chrec_fold_multiply(ptr noundef %41, ptr noundef %43, ptr noundef %39) #11
  %45 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = tail call ptr @chrec_fold_plus(ptr noundef %4, ptr noundef %46, ptr noundef %44) #11
  br label %63

48:                                               ; preds = %34
  %49 = load i64, ptr %1, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 146
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i64, ptr %35, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 23
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %35) #12
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %35, i32 noundef 0) #11
  br label %63

61:                                               ; preds = %56, %52
  %62 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %48, %61, %59, %38
  %64 = phi ptr [ %39, %38 ], [ %35, %59 ], [ %35, %61 ], [ %35, %48 ]
  %65 = phi ptr [ %47, %38 ], [ %60, %59 ], [ %62, %61 ], [ %1, %48 ]
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !11
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %66, ptr noundef nonnull @.str.1, i32 noundef %0) #11
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %75 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 13, i64 1, ptr %74)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %76, ptr noundef nonnull %1, i32 noundef 0) #12
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %78 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 9, i64 1, ptr %77)
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %79, ptr noundef %64, i32 noundef 0) #12
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %81 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 11, i64 1, ptr %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef %65, i32 noundef 0) #12
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %84 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %63, %68, %72, %13
  %86 = phi ptr [ %14, %13 ], [ %65, %72 ], [ %65, %68 ], [ %65, %63 ]
  ret ptr %86
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @chrec_type(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_real_from_int_cst(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @evolution_function_is_affine_p(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = load ptr, ptr %8, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %14 = trunc i64 %13 to i32
  %15 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %10, i32 noundef %14) #11, !range !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = load ptr, ptr %8, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !10
  %23 = trunc i64 %22 to i32
  %24 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %19, i32 noundef %23) #11, !range !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %7
  br label %27

27:                                               ; preds = %3, %17, %1, %26
  %28 = phi i8 [ 0, %26 ], [ 0, %1 ], [ 1, %17 ], [ 0, %3 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_convert_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %8 [
    i16 10, label %6
    i16 12, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %0, %3 ]
  %10 = tail call ptr @chrec_convert(ptr noundef %9, ptr noundef %1, ptr noundef %2) #11
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = tail call fastcc ptr @get_loop(i32 noundef %0) #11
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 146
  br i1 %10, label %11, label %24

11:                                               ; preds = %4, %18
  %12 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %13 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %12) #11
  %14 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %7, ptr noundef %13) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, ptr %12, align 8
  br label %24

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %11, label %24, !llvm.loop !17

24:                                               ; preds = %18, %16, %4
  %25 = phi i64 [ %8, %4 ], [ %17, %16 ], [ %21, %18 ]
  %26 = phi ptr [ %1, %4 ], [ %12, %16 ], [ %20, %18 ]
  %27 = and i64 %25, 65535
  %28 = icmp eq i64 %27, 146
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.tree_int_cst, ptr %31, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !10
  %34 = zext i32 %0 to i64
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = add i32 %3, 1
  %40 = tail call fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef %38, ptr noundef %2, i32 noundef %39) #11
  %41 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %36
  %44 = tail call fastcc ptr @tree_fold_binomial(ptr noundef %6, ptr noundef %2, i32 noundef %3) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %60

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %6, ptr noundef %50, ptr noundef nonnull %44) #12
  %52 = tail call ptr @chrec_fold_plus(ptr noundef %6, ptr noundef %51, ptr noundef %40) #11
  br label %60

53:                                               ; preds = %29, %24
  %54 = tail call fastcc ptr @tree_fold_binomial(ptr noundef %6, ptr noundef %2, i32 noundef %3) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  br label %60

58:                                               ; preds = %53
  %59 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %6, ptr noundef nonnull %26, ptr noundef nonnull %54) #12
  br label %60

60:                                               ; preds = %36, %58, %56, %48, %46
  %61 = phi ptr [ %52, %48 ], [ %47, %46 ], [ %59, %58 ], [ %57, %56 ], [ %40, %36 ]
  ret ptr %61
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_replace_initial_condition(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @chrec_type(ptr noundef %0) #11
  %7 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 645, ptr noundef nonnull @.str.7) #12
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %2, %16
  %15 = phi ptr [ %27, %16 ], [ %0, %2 ], [ %1, %10 ]
  ret ptr %15

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !10
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = tail call ptr @chrec_replace_initial_condition(ptr noundef %23, ptr noundef %1) #11
  %25 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %21, ptr noundef %24, ptr noundef %26) #11
  br label %14
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @initial_condition(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %11) #11, !range !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %4, label %14

14:                                               ; preds = %9, %4, %1
  %15 = phi ptr [ %0, %1 ], [ %5, %4 ], [ %11, %9 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @hide_evolution_in_other_loops_than_loop(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  br label %7

7:                                                ; preds = %5, %34
  %8 = phi ptr [ %37, %34 ], [ %6, %5 ]
  %9 = phi ptr [ %36, %34 ], [ %0, %5 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 146
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %9) #11
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %18, label %25

16:                                               ; preds = %28, %2, %34, %7, %18
  %17 = phi ptr [ %24, %18 ], [ %29, %28 ], [ %0, %2 ], [ %9, %7 ], [ %36, %34 ]
  ret ptr %17

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %20, i32 noundef %1) #11
  %22 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %1, ptr noundef %21, ptr noundef %23) #11
  br label %16

25:                                               ; preds = %13
  %26 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %14, ptr noundef %8) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @initial_condition(ptr noundef nonnull %9) #11
  br label %16

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %8, ptr noundef %14) #12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 703, ptr noundef nonnull @.str.7) #12
  br label %34

34:                                               ; preds = %30, %33
  %35 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  %38 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %36) #11, !range !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %7, label %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #11
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #11
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @evolution_part_in_loop_num(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_component_in_loop_num(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  br label %8

8:                                                ; preds = %6, %49
  %9 = phi ptr [ %52, %49 ], [ %7, %6 ]
  %10 = phi ptr [ %51, %49 ], [ %0, %6 ]
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %10) #11
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = icmp eq i8 %2, 0
  %19 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = load ptr, ptr %20, align 8, !tbaa !10
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 146
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %29 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !10
  %33 = load ptr, ptr %28, align 8, !tbaa !10
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !10
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %55, %17, %27, %3, %49, %42, %39
  %38 = phi ptr [ %41, %39 ], [ %22, %27 ], [ %22, %17 ], [ %57, %55 ], [ %0, %3 ], [ null, %42 ], [ %51, %49 ]
  ret ptr %38

39:                                               ; preds = %27
  %40 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef nonnull %23, i32 noundef %1, i8 noundef zeroext %2) #11
  %41 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %1, ptr noundef %40, ptr noundef %22) #11
  br label %37

42:                                               ; preds = %14
  %43 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %15, ptr noundef %9) #12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %37

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %9, ptr noundef %15) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 758, ptr noundef nonnull @.str.7) #12
  br label %49

49:                                               ; preds = %45, %48
  %50 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  %53 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %51) #11, !range !5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %8, label %37

55:                                               ; preds = %8
  %56 = icmp eq i8 %2, 0
  %57 = select i1 %56, ptr %10, ptr null
  br label %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @initial_condition_in_loop_num(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @get_loop(i32 noundef %0) #11
  %5 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %12 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %10 = tail call fastcc ptr @chrec_type(ptr noundef %2) #11
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %17, label %15

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @chrec_type(ptr noundef %2) #11
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 807, %8 ], [ 809, %12 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %16, ptr noundef nonnull @.str.7) #12
  br label %17

17:                                               ; preds = %15, %12, %8
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 146
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %1) #11
  %23 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %4, ptr noundef %22) #12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, ptr %1, align 8
  br label %44

27:                                               ; preds = %29, %63
  %28 = phi ptr [ %65, %63 ], [ %43, %29 ]
  ret ptr %28

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = tail call ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %32, ptr noundef %2) #11
  %34 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = tail call ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %35, ptr noundef %2) #11
  %37 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = load ptr, ptr %30, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.tree_int_cst, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !10
  %42 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %41) #12
  %43 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %38, ptr noundef %42, ptr noundef %33, ptr noundef %36) #12
  br label %27

44:                                               ; preds = %25, %17
  %45 = phi i64 [ %26, %25 ], [ %18, %17 ]
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 146
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = zext i32 %0 to i64
  br label %50

50:                                               ; preds = %48, %57
  %51 = phi ptr [ %1, %48 ], [ %59, %57 ]
  %52 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = getelementptr inbounds %struct.tree_int_cst, ptr %53, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !10
  %56 = icmp eq i64 %55, %49
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 146
  br i1 %62, label %50, label %63, !llvm.loop !22

63:                                               ; preds = %50, %57, %44
  %64 = phi ptr [ %1, %44 ], [ %59, %57 ], [ %51, %50 ]
  %65 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef nonnull %64, ptr noundef %2) #11
  br label %27
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  %4 = icmp eq ptr %3, %0
  %5 = icmp eq ptr %3, %1
  %6 = or i1 %4, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @chrec_known, align 8, !tbaa !6
  %9 = icmp eq ptr %8, %0
  %10 = icmp eq ptr %8, %1
  %11 = or i1 %9, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !6
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, %1
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) #11
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr @chrec_dont_know, align 8
  %21 = select i1 %19, ptr %20, ptr %0
  br label %22

22:                                               ; preds = %7, %2, %17, %15, %12
  %23 = phi ptr [ %1, %12 ], [ %0, %15 ], [ %21, %17 ], [ %3, %2 ], [ %8, %7 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = load i64, ptr %1, align 8
  %9 = xor i64 %8, %7
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = trunc i64 %7 to i16
  switch i16 %15, label %36 [
    i16 23, label %16
    i16 146, label %19
  ]

16:                                               ; preds = %14
  %17 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #12
  %18 = trunc i32 %17 to i8
  br label %36

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !10
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  %34 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %31, ptr noundef %33) #11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %14, %19, %29, %12, %2, %6, %16, %38
  %37 = phi i8 [ %45, %38 ], [ %18, %16 ], [ 0, %6 ], [ 0, %2 ], [ 1, %12 ], [ 0, %29 ], [ 0, %19 ], [ 0, %14 ]
  ret i8 %37

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !10
  %43 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %40, ptr noundef %42) #11
  %44 = icmp ne i8 %43, 0
  %45 = zext i1 %44 to i8
  br label %36
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @is_multivariate_chrec(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = load ptr, ptr %8, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %10, i32 noundef %14) #11, !range !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %19, i32 noundef %14) #11, !range !5
  br label %21

21:                                               ; preds = %3, %7, %17, %1
  %22 = phi i8 [ 0, %1 ], [ 1, %7 ], [ %20, %17 ], [ 0, %3 ]
  ret i8 %22
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_multivariate_chrec_rec(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %22
  %7 = phi ptr [ %0, %4 ], [ %24, %22 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 146
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !10
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %19, i32 noundef %1) #11, !range !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6

26:                                               ; preds = %22, %11, %17, %6, %2
  %27 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %17 ], [ 1, %11 ], [ 0, %22 ]
  ret i8 %27
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @chrec_contains_symbols(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 141, label %20
    i16 32, label %20
    i16 34, label %20
    i16 29, label %20
    i16 30, label %20
    i16 36, label %20
    i16 31, label %20
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %20, label %14, !llvm.loop !23

14:                                               ; preds = %9, %11
  %15 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %17) #11, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %20

20:                                               ; preds = %14, %11, %6, %3, %3, %3, %3, %3, %3, %3, %1
  %21 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 0, %6 ], [ 1, %14 ], [ 0, %11 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !10
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @chrec_contains_undetermined(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !6
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %20, label %14, !llvm.loop !24

14:                                               ; preds = %9, %11
  %15 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %17) #11, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %20

20:                                               ; preds = %14, %11, %6, %4, %1
  %21 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %6 ], [ 1, %14 ], [ 0, %11 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #11, !range !5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @evolution_function_is_invariant_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %0, i32 noundef %1) #11, !range !5
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %0) #11, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %37
  %9 = phi ptr [ %0, %5 ], [ %39, %37 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  br i1 %6, label %51, label %14

14:                                               ; preds = %13
  %15 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  %16 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %15, ptr noundef nonnull %9) #12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load i64, ptr %9, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i64 [ %19, %18 ], [ %10, %8 ]
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !10
  %29 = icmp eq i64 %28, %7
  br i1 %29, label %51, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %32, i32 noundef %1) #11, !range !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  br label %37

37:                                               ; preds = %35, %49
  %38 = phi ptr [ %36, %35 ], [ %50, %49 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %39) #11, !range !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %8, label %51

42:                                               ; preds = %20
  %43 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %9) #11
  switch i32 %43, label %51 [
    i32 2, label %44
    i32 1, label %49
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %46, i32 noundef %1) #11, !range !5
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %42
  %50 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  br label %37

51:                                               ; preds = %37, %14, %13, %30, %24, %44, %42, %2
  %52 = phi i8 [ 1, %2 ], [ 0, %42 ], [ 0, %44 ], [ 0, %24 ], [ 0, %30 ], [ 1, %13 ], [ 1, %14 ], [ 1, %37 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 146
  br i1 %7, label %8, label %56

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %11, i32 noundef %1) #11, !range !5
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %15, i32 noundef %1) #11, !range !5
  %17 = icmp eq i8 %16, 0
  br i1 %13, label %37, label %18

18:                                               ; preds = %8
  br i1 %17, label %19, label %56

19:                                               ; preds = %18
  %20 = load ptr, ptr %14, align 8, !tbaa !10
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !10
  %29 = load ptr, ptr %9, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !10
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %20, i32 noundef %1) #11, !range !5
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33, %24, %19
  br label %56

37:                                               ; preds = %8
  br i1 %17, label %55, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %10, align 8, !tbaa !10
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 146
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.tree_int_cst, ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !10
  %48 = load ptr, ptr %9, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !10
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %39, i32 noundef %1) #11, !range !5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %43, %38, %37
  br label %56

56:                                               ; preds = %4, %52, %33, %18, %2, %55, %36
  %57 = phi i8 [ 0, %36 ], [ 0, %55 ], [ 0, %2 ], [ 1, %18 ], [ 1, %33 ], [ 1, %52 ], [ 0, %4 ]
  ret i8 %57
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @evolution_function_is_univariate_p(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !10
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %10) #11, !range !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %7, %23
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !tbaa !10
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !10
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %28) #11, !range !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %26, %3
  br label %45

45:                                               ; preds = %41, %32, %23, %14, %1, %44
  %46 = phi i8 [ 1, %44 ], [ 1, %1 ], [ 0, %14 ], [ 0, %23 ], [ 0, %32 ], [ 0, %41 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nb_vars_in_chrec(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %15, %9 ], [ %0, %1 ]
  %5 = phi i32 [ %16, %9 ], [ 0, %1 ]
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %4, i32 noundef %14) #11
  %16 = add i32 %5, 1
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %3

18:                                               ; preds = %9, %3, %1
  %19 = phi i32 [ 0, %1 ], [ %5, %3 ], [ %16, %9 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @convert_affine_scev(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %3, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %14 [
    i16 10, label %12
    i16 12, label %12
  ]

12:                                               ; preds = %6, %6
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi ptr [ %13, %12 ], [ %1, %6 ]
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1023
  %22 = icmp ult i32 %18, %21
  %23 = icmp eq i8 %5, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %14
  %25 = tail call zeroext i8 @nowrap_type_p(ptr noundef nonnull %1) #12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  br i1 %22, label %28, label %37

28:                                               ; preds = %27
  %29 = load i64, ptr %1, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %9, align 8
  %34 = and i64 %33, 2097152
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %32, %28
  br label %50

37:                                               ; preds = %27
  %38 = load i64, ptr %9, align 8
  %39 = load i64, ptr %1, align 8
  %40 = xor i64 %39, %38
  %41 = and i64 %40, 2097152
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i32, ptr %16, align 4
  %45 = load i32, ptr %19, align 4
  %46 = xor i32 %45, %44
  %47 = and i32 %46, 1023
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %56

49:                                               ; preds = %24, %14
  br i1 %22, label %50, label %56

50:                                               ; preds = %43, %32, %36, %49
  %51 = phi i1 [ true, %49 ], [ true, %43 ], [ false, %32 ], [ true, %36 ]
  %52 = load ptr, ptr %2, align 8, !tbaa !6
  %53 = load ptr, ptr %3, align 8, !tbaa !6
  %54 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %52, ptr noundef %53, ptr noundef %4, ptr noundef %0, i8 noundef zeroext %5) #12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %43, %37, %50, %49
  %57 = phi i1 [ %51, %50 ], [ true, %49 ], [ false, %37 ], [ false, %43 ]
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  %59 = tail call fastcc ptr @chrec_convert_1(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %4, i8 noundef zeroext %5) #11
  %60 = load ptr, ptr %3, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1023
  %64 = load i32, ptr %16, align 4
  %65 = and i32 %64, 1023
  %66 = icmp ugt i32 %63, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load i64, ptr %9, align 8
  %69 = and i64 %68, 2097152
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = tail call ptr @signed_type_for(ptr noundef nonnull %9) #12
  %73 = tail call fastcc ptr @chrec_convert_1(ptr noundef %72, ptr noundef %60, ptr noundef %4, i8 noundef zeroext %5) #11
  br label %74

74:                                               ; preds = %71, %67, %56
  %75 = phi ptr [ %73, %71 ], [ %60, %67 ], [ %60, %56 ]
  %76 = tail call fastcc ptr @chrec_convert_1(ptr noundef nonnull %15, ptr noundef %75, ptr noundef %4, i8 noundef zeroext %5) #11
  %77 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %59) #11, !range !5
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %76) #11, !range !5
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  br i1 %57, label %86, label %83

83:                                               ; preds = %82
  %84 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %59, ptr noundef %76, ptr noundef %4, ptr noundef %0, i8 noundef zeroext 0) #12
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %82
  store ptr %59, ptr %2, align 8, !tbaa !6
  store ptr %76, ptr %3, align 8, !tbaa !6
  br label %87

87:                                               ; preds = %83, %74, %79, %50, %86
  %88 = phi i8 [ 1, %86 ], [ 0, %50 ], [ 0, %79 ], [ 0, %74 ], [ 0, %83 ]
  ret i8 %88
}

; Function Attrs: optsize
declare zeroext i8 @nowrap_type_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @scev_probably_wraps_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %96

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %96, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef %1) #11, !range !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #11
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  store ptr %18, ptr %5, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %20, ptr %6, align 8, !tbaa !6
  %21 = call zeroext i8 @convert_affine_scev(ptr noundef %16, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, i8 noundef zeroext %3) #11, !range !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %16, align 8, !tbaa !25
  %25 = load ptr, ptr %5, align 8, !tbaa !6
  %26 = load ptr, ptr %6, align 8, !tbaa !6
  %27 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %24, ptr noundef %25, ptr noundef %26) #11
  br label %96

28:                                               ; preds = %15, %12
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %28
  %31 = load i64, ptr %1, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -63
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i64, ptr %10, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1023
  %48 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = and i64 %41, 2097152
  %54 = icmp eq i64 %53, 0
  %55 = load i32, ptr @flag_wrapv, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  %58 = load i32, ptr @flag_trapv, align 4
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  %61 = load i32, ptr @flag_strict_overflow, align 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %66) #12
  %68 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  %70 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %69) #12
  %71 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %33, ptr noundef nonnull %0, ptr noundef %67, ptr noundef %70) #12
  br label %74

72:                                               ; preds = %30, %52, %44, %40, %36, %28
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #12
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %71, %64 ], [ %73, %72 ]
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !11
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = and i64 %76, -134217729
  store i64 %82, ptr %75, align 8
  br label %83

83:                                               ; preds = %81, %74
  %84 = phi i64 [ %82, %81 ], [ %76, %74 ]
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 23
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, ptr %0, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 8
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = tail call i32 @int_fits_type_p(ptr noundef nonnull %75, ptr noundef nonnull %0) #12
  %93 = icmp eq i32 %92, 0
  %94 = load ptr, ptr @chrec_dont_know, align 8
  %95 = select i1 %93, ptr %94, ptr %75
  br label %96

96:                                               ; preds = %91, %83, %87, %9, %4, %23
  %97 = phi ptr [ %27, %23 ], [ %1, %4 ], [ %1, %9 ], [ %75, %87 ], [ %75, %83 ], [ %95, %91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %97
}

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_convert_aggressive(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %48, label %19

19:                                               ; preds = %9
  %20 = load i64, ptr %0, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %24 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi ptr [ %23, %22 ], [ %0, %19 ]
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = tail call ptr @chrec_convert_aggressive(ptr noundef nonnull %0, ptr noundef %28) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = tail call ptr @chrec_convert(ptr noundef nonnull %0, ptr noundef %28, ptr noundef null) #11
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %31, %24 ], [ %34, %33 ]
  %37 = tail call ptr @chrec_convert_aggressive(ptr noundef %25, ptr noundef %30) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call ptr @chrec_convert(ptr noundef %25, ptr noundef %30, ptr noundef null) #11
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %37, %35 ], [ %40, %39 ]
  %43 = load ptr, ptr %26, align 8, !tbaa !10
  %44 = getelementptr inbounds %struct.tree_int_cst, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !10
  %46 = trunc i64 %45 to i32
  %47 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %46, ptr noundef %36, ptr noundef %42) #11
  br label %48

48:                                               ; preds = %9, %2, %5, %41
  %49 = phi ptr [ %47, %41 ], [ null, %5 ], [ null, %2 ], [ null, %9 ]
  ret ptr %49
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @scev_direction(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef %0) #11, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = tail call i32 @tree_int_cst_sign_bit(ptr noundef nonnull %6) #12
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %10, %4, %1
  %15 = phi i32 [ 2, %1 ], [ 2, %4 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @tree_int_cst_sign_bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @for_each_scev_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !10
  switch i8 %8, label %19 [
    i8 3, label %9
    i8 2, label %12
    i8 1, label %16
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  tail call void @for_each_scev_op(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #11
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %4, %3 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  tail call void @for_each_scev_op(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2) #11
  %15 = load ptr, ptr %0, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %3, %12
  %17 = phi ptr [ %4, %3 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  tail call void @for_each_scev_op(ptr noundef nonnull %18, ptr noundef %1, ptr noundef %2) #11
  br label %19

19:                                               ; preds = %3, %16
  %20 = tail call zeroext i8 %1(ptr noundef nonnull %0, ptr noundef %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @scev_is_linear_expression(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %61, label %3

3:                                                ; preds = %1, %47
  %4 = phi ptr [ %49, %47 ], [ %0, %1 ]
  %5 = tail call fastcc zeroext i8 @operator_is_linear(ptr noundef nonnull %4) #11, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %30 [
    i16 65, label %10
    i16 146, label %20
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %12, ptr noundef null) #11, !range !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %61, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %17, ptr noundef null) #11, !range !5
  %19 = xor i8 %18, 1
  br label %61

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.tree_int_cst, ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !10
  %25 = trunc i64 %24 to i32
  %26 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %4, i32 noundef %25) #11, !range !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %20
  %29 = load i64, ptr %4, align 8
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ %29, %28 ], [ %8, %7 ]
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !10
  switch i8 %34, label %61 [
    i8 3, label %35
    i8 2, label %51
    i8 1, label %58
    i8 0, label %60
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %37) #11, !range !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !10
  %43 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %42) #11, !range !5
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  br label %47

47:                                               ; preds = %45, %56, %58
  %48 = phi ptr [ %46, %45 ], [ %57, %56 ], [ %59, %58 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %3

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %53) #11, !range !5
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  br label %47

58:                                               ; preds = %30
  %59 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  br label %47

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %3, %47, %20, %40, %35, %51, %30, %60, %1, %10, %15
  %62 = phi i8 [ 1, %10 ], [ %19, %15 ], [ 0, %1 ], [ 1, %60 ], [ 0, %30 ], [ 0, %51 ], [ 0, %35 ], [ 0, %40 ], [ 0, %20 ], [ 0, %47 ], [ 0, %3 ]
  ret i8 %62
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @operator_is_linear(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 23, label %5
    i16 146, label %5
    i16 63, label %5
    i16 66, label %5
    i16 65, label %5
    i16 64, label %5
    i16 79, label %5
    i16 141, label %5
    i16 117, label %5
    i16 90, label %5
    i16 116, label %5
    i16 113, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @evolution_function_right_is_integer_cst(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1, %22
  %4 = phi ptr [ %23, %22 ], [ %0, %1 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %26 [
    i16 23, label %25
    i16 146, label %7
    i16 116, label %19
    i16 113, label %19
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 23
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %22, label %26

19:                                               ; preds = %3, %3
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %15, %13 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %3

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %22, %13, %7, %3, %25, %1
  %27 = phi i8 [ 0, %1 ], [ 0, %3 ], [ 0, %22 ], [ 1, %13 ], [ 0, %7 ], [ 1, %25 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_fold_plus_poly_poly(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @get_chrec_loop(ptr noundef %2) #11
  %6 = tail call fastcc ptr @get_chrec_loop(ptr noundef %3) #11
  %7 = icmp eq i32 %0, 66
  %8 = load ptr, ptr @sizetype_tab, align 16
  %9 = select i1 %7, ptr %8, ptr %1
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 107, ptr noundef nonnull @.str.7) #12
  br label %12

12:                                               ; preds = %4, %11
  %13 = icmp eq ptr %3, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 108, ptr noundef nonnull @.str.7) #12
  br label %15

15:                                               ; preds = %12, %14
  %16 = load i64, ptr %2, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 109, ptr noundef nonnull @.str.7) #12
  br label %20

20:                                               ; preds = %15, %19
  %21 = load i64, ptr %3, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 110, ptr noundef nonnull @.str.7) #12
  br label %25

25:                                               ; preds = %20, %24
  %26 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #11
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %33 [
    i16 10, label %29
    i16 12, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %3) #11
  %31 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %38, label %36

33:                                               ; preds = %25
  %34 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %3) #11
  %35 = icmp eq ptr %26, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 112, %29 ], [ 114, %33 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef %37, ptr noundef nonnull @.str.7) #12
  br label %38

38:                                               ; preds = %36, %33, %29
  %39 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #11
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 115, ptr noundef nonnull @.str.7) #12
  br label %42

42:                                               ; preds = %38, %41
  %43 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %5, ptr noundef %6) #12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %80, label %45

45:                                               ; preds = %42
  switch i32 %0, label %58 [
    i32 66, label %46
    i32 63, label %46
  ]

46:                                               ; preds = %45, %45
  %47 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !10
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %53) #11
  %55 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  %57 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %51, ptr noundef %54, ptr noundef %56) #11
  br label %146

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.tree_int_cst, ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !10
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !10
  %66 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %65) #11
  %67 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  %69 = load i64, ptr %1, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 9
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = tail call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 @dconstm1) #12
  br label %76

74:                                               ; preds = %58
  %75 = tail call ptr @build_int_cst_type(ptr noundef nonnull %1, i64 noundef -1) #12
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ]
  %78 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %1, ptr noundef %68, ptr noundef %77) #11
  %79 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %63, ptr noundef %66, ptr noundef %78) #11
  br label %146

80:                                               ; preds = %42
  %81 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %6, ptr noundef %5) #12
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  switch i32 %0, label %96 [
    i32 66, label %84
    i32 63, label %84
  ]

84:                                               ; preds = %83, %83
  %85 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !10
  %87 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !10
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %91, ptr noundef nonnull %3) #11
  %93 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !10
  %95 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %89, ptr noundef %92, ptr noundef %94) #11
  br label %146

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !10
  %99 = getelementptr inbounds %struct.tree_int_cst, ptr %98, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !10
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !10
  %104 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %103, ptr noundef nonnull %3) #11
  %105 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !10
  %107 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %101, ptr noundef %104, ptr noundef %106) #11
  br label %146

108:                                              ; preds = %80
  %109 = icmp eq ptr %5, %6
  br i1 %109, label %111, label %110

110:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 154, ptr noundef nonnull @.str.7) #12
  br label %111

111:                                              ; preds = %108, %110
  switch i32 %0, label %123 [
    i32 66, label %112
    i32 63, label %112
  ]

112:                                              ; preds = %111, %111
  %113 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !10
  %115 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !10
  %117 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %114, ptr noundef %116) #11
  %118 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !10
  %120 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !10
  %122 = tail call ptr @chrec_fold_plus(ptr noundef %9, ptr noundef %119, ptr noundef %121) #11
  br label %134

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !10
  %126 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !10
  %128 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %125, ptr noundef %127) #11
  %129 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !10
  %131 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !10
  %133 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %130, ptr noundef %132) #11
  br label %134

134:                                              ; preds = %123, %112
  %135 = phi ptr [ %122, %112 ], [ %133, %123 ]
  %136 = phi ptr [ %117, %112 ], [ %128, %123 ]
  %137 = tail call fastcc zeroext i8 @chrec_zerop(ptr noundef %135) #11
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !10
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %141, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !10
  %144 = trunc i64 %143 to i32
  %145 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %144, ptr noundef %136, ptr noundef %135) #11
  br label %146

146:                                              ; preds = %134, %139, %96, %84, %76, %46
  %147 = phi ptr [ %57, %46 ], [ %79, %76 ], [ %95, %84 ], [ %107, %96 ], [ %145, %139 ], [ %136, %134 ]
  ret ptr %147
}

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @chrec_zerop(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #12
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @no_evolution_in_loop_p(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !6
  %5 = icmp eq ptr %4, %0
  %6 = load ptr, ptr @chrec_dont_know, align 8
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %0, i32 noundef %1) #12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #12
  %14 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %13, i32 noundef %1) #11
  %15 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef %14) #11, !range !5
  %16 = xor i8 %15, 1
  store i8 %16, ptr %2, align 1, !tbaa !10
  br label %17

17:                                               ; preds = %3, %9, %12
  %18 = phi i8 [ 1, %12 ], [ 0, %9 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_fold_binomial(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  switch i32 %2, label %16 [
    i32 0, label %12
    i32 1, label %14
  ]

12:                                               ; preds = %3
  %13 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 1) #12
  br label %68

14:                                               ; preds = %3
  %15 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #12
  br label %68

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !10
  %20 = icmp eq i64 %19, 0
  %21 = load i64, ptr %17, align 8, !tbaa !10
  %22 = zext i32 %2 to i64
  %23 = icmp ult i64 %21, %22
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %68, label %25

25:                                               ; preds = %16
  store i64 %21, ptr %4, align 8, !tbaa !30
  store i64 %19, ptr %8, align 8, !tbaa !30
  store i64 2, ptr %5, align 8, !tbaa !30
  store i64 0, ptr %9, align 8, !tbaa !30
  %26 = icmp eq i64 %21, 0
  %27 = add i64 %21, -1
  %28 = sext i1 %26 to i64
  %29 = add nsw i64 %19, %28
  %30 = call i32 @mul_double_with_sign(i64 noundef %21, i64 noundef %19, i64 noundef %27, i64 noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 0) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %25
  %33 = icmp ult i32 %2, 3
  br i1 %33, label %56, label %34

34:                                               ; preds = %32, %46
  %35 = phi i32 [ %51, %46 ], [ 3, %32 ]
  %36 = phi i64 [ %41, %46 ], [ %29, %32 ]
  %37 = phi i64 [ %39, %46 ], [ %27, %32 ]
  %38 = icmp eq i64 %37, 0
  %39 = add i64 %37, -1
  %40 = sext i1 %38 to i64
  %41 = add nsw i64 %36, %40
  %42 = load i64, ptr %4, align 8, !tbaa !30
  %43 = load i64, ptr %8, align 8, !tbaa !30
  %44 = call i32 @mul_double_with_sign(i64 noundef %42, i64 noundef %43, i64 noundef %39, i64 noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 0) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %34
  %47 = load i64, ptr %5, align 8, !tbaa !30
  %48 = load i64, ptr %9, align 8, !tbaa !30
  %49 = zext i32 %35 to i64
  %50 = call i32 @mul_double_with_sign(i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, i8 noundef zeroext 0) #12
  %51 = add i32 %35, 1
  %52 = icmp ugt i32 %51, %2
  br i1 %52, label %53, label %34, !llvm.loop !31

53:                                               ; preds = %46
  %54 = load i64, ptr %5, align 8, !tbaa !30
  %55 = load i64, ptr %9, align 8, !tbaa !30
  br label %56

56:                                               ; preds = %53, %32
  %57 = phi i64 [ %55, %53 ], [ 0, %32 ]
  %58 = phi i64 [ %54, %53 ], [ 2, %32 ]
  %59 = load i64, ptr %4, align 8, !tbaa !30
  %60 = load i64, ptr %8, align 8, !tbaa !30
  %61 = call i32 @div_and_round_double(i32 noundef 76, i32 noundef 1, i64 noundef %59, i64 noundef %60, i64 noundef %58, i64 noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %11) #12
  %62 = load i64, ptr %6, align 8, !tbaa !30
  %63 = load i64, ptr %10, align 8, !tbaa !30
  %64 = call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %62, i64 noundef %63) #12
  %65 = call i32 @int_fits_type_p(ptr noundef %64, ptr noundef %0) #12
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr null, ptr %64
  br label %68

68:                                               ; preds = %34, %16, %25, %56, %14, %12
  %69 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %67, %56 ], [ null, %25 ], [ null, %16 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %69
}

; Function Attrs: optsize
declare i32 @mul_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  %6 = add i16 %5, -23
  %7 = icmp ult i16 %6, 2
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @expr_invariant_in_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i8 0, i8 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !12, i64 8}
!14 = !{!"param_info", !7, i64 0, !12, i64 8, !8, i64 12, !12, i64 16, !12, i64 20, !7, i64 24}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !7, i64 32}
!19 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!20 = !{!21, !7, i64 8}
!21 = !{!"loops", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = !{!26, !12, i64 0}
!26 = !{!"loop", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !27, i64 24, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !28, i64 80, !28, i64 96, !8, i64 112, !8, i64 113, !12, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!27 = !{!"lpt_decision", !12, i64 0, !12, i64 4}
!28 = !{!"", !29, i64 0, !29, i64 8}
!29 = !{!"long", !8, i64 0}
!30 = !{!29, !29, i64 0}
!31 = distinct !{!31, !16}
