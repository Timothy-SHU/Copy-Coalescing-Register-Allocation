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
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_not_analyzed_yet = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@dconstm1 = external global %struct.real_value, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"tree-chrec.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@dconst2 = external global %struct.real_value, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"(chrec_apply \0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  (varying_loop = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c")\0A  (chrec = \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c")\0A  (x = \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c")\0A  (res = \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !168 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !169
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !170

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !169
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !171

9:                                                ; preds = %6, %3
  %10 = tail call fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef %1, ptr noundef %2) #11
  br label %30

11:                                               ; preds = %6
  %12 = tail call i32 @integer_zerop(ptr noundef %1) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !172

14:                                               ; preds = %11
  %15 = tail call ptr @chrec_convert(ptr noundef %0, ptr noundef %2, ptr noundef null) #11
  br label %30

16:                                               ; preds = %11
  %17 = tail call i32 @integer_zerop(ptr noundef %2) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !173

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
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #2 !prof !174 !PGOFuncName !175 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !180
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef readnone %0, ptr noundef readnone %1) unnamed_addr #2 !prof !181 !PGOFuncName !182 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  %4 = icmp eq ptr %3, %0
  %5 = icmp eq ptr %3, %1
  %6 = or i1 %4, %5
  br i1 %6, label %18, label %7, !prof !183

7:                                                ; preds = %2
  %8 = load ptr, ptr @chrec_known, align 8, !tbaa !176
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
define dso_local ptr @chrec_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !184 {
  %4 = tail call fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_fold_plus_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !185 !PGOFuncName !186 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %0, 66
  %7 = load ptr, ptr @sizetype_tab, align 16
  %8 = select i1 %6, ptr %7, ptr %1, !prof !187
  %9 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !169
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !188

11:                                               ; preds = %4
  %12 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %3) #11, !range !169
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14, !prof !188

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
  ], !prof !189

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %29 [
    i16 146, label %22
    i16 116, label %24
    i16 113, label %24
  ], !prof !190

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @chrec_fold_plus_poly_poly(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  br label %133

24:                                               ; preds = %19, %19
  %25 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef null) #11, !range !169
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27, !prof !191

27:                                               ; preds = %24
  %28 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %133

29:                                               ; preds = %24, %19
  switch i32 %0, label %42 [
    i32 66, label %30
    i32 63, label %30
  ]

30:                                               ; preds = %29, %29
  %31 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !192
  %33 = getelementptr inbounds %struct.tree_int_cst, ptr %32, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !192
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !192
  %38 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %37, ptr noundef nonnull %3) #11
  %39 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !192
  %41 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %35, ptr noundef %38, ptr noundef %40) #11
  br label %133

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !192
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !192
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !192
  %50 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %49, ptr noundef nonnull %3) #11
  %51 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !192
  %53 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %47, ptr noundef %50, ptr noundef %52) #11
  br label %133

54:                                               ; preds = %16, %16
  %55 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null) #11, !range !169
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57, !prof !193

57:                                               ; preds = %54
  %58 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %133

59:                                               ; preds = %54, %16
  %60 = load i64, ptr %3, align 8
  %61 = trunc i64 %60 to i16
  switch i16 %61, label %102 [
    i16 146, label %62
    i16 116, label %97
    i16 113, label %97
  ], !prof !194

62:                                               ; preds = %59
  switch i32 %0, label %75 [
    i32 66, label %63
    i32 63, label %63
  ]

63:                                               ; preds = %62, %62
  %64 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !192
  %66 = getelementptr inbounds %struct.tree_int_cst, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !192
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !192
  %71 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %70) #11
  %72 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %68, ptr noundef %71, ptr noundef %73) #11
  br label %133

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !192
  %78 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !192
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !192
  %83 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %82) #11
  %84 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !192
  %86 = load i64, ptr %1, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 9
  br i1 %88, label %89, label %91, !prof !195

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
  %98 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef null) #11, !range !169
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100, !prof !196

100:                                              ; preds = %97
  %101 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %133

102:                                              ; preds = %97, %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !197
  %103 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef nonnull %5) #11, !range !169
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %113, !prof !199

105:                                              ; preds = %102
  %106 = call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %3, ptr noundef nonnull %5) #11, !range !169
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %113, !prof !199

108:                                              ; preds = %105
  %109 = load i32, ptr %5, align 4, !tbaa !197
  %110 = load ptr, ptr @compiler_params, align 8, !tbaa !176
  %111 = getelementptr inbounds %struct.param_info, ptr %110, i64 63, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !200
  br label %121

113:                                              ; preds = %105, %102
  %114 = load i32, ptr %5, align 4, !tbaa !197
  %115 = load ptr, ptr @compiler_params, align 8, !tbaa !176
  %116 = getelementptr inbounds %struct.param_info, ptr %115, i64 63, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !200
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call ptr @build2_stat(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  br label %131

121:                                              ; preds = %108, %113
  %122 = phi i32 [ %112, %108 ], [ %117, %113 ]
  %123 = phi i32 [ %109, %108 ], [ %114, %113 ]
  %124 = icmp slt i32 %123, %122
  br i1 %124, label %125, label %129, !prof !202

125:                                              ; preds = %121
  %126 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2) #12
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef nonnull %3) #12
  %128 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %126, ptr noundef %127) #12
  br label %131

129:                                              ; preds = %121
  %130 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
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
define internal fastcc ptr @chrec_fold_plus_poly_poly(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !203 !PGOFuncName !204 {
  %5 = tail call fastcc ptr @get_chrec_loop(ptr noundef %2) #11
  %6 = tail call fastcc ptr @get_chrec_loop(ptr noundef %3) #11
  %7 = icmp eq i32 %0, 66
  %8 = load ptr, ptr @sizetype_tab, align 16
  %9 = select i1 %7, ptr %8, ptr %1, !prof !205
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %12, !prof !205

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @.str.1) #12
  br label %12

12:                                               ; preds = %4, %11
  %13 = icmp eq ptr %3, null
  br i1 %13, label %14, label %15, !prof !205

14:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #12
  br label %15

15:                                               ; preds = %12, %14
  %16 = load i64, ptr %2, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %20, label %19, !prof !206

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #12
  br label %20

20:                                               ; preds = %15, %19
  %21 = load i64, ptr %3, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %25, label %24, !prof !206

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 110, ptr noundef nonnull @.str.1) #12
  br label %25

25:                                               ; preds = %20, %24
  %26 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #11
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %33 [
    i16 10, label %29
    i16 12, label %29
  ], !prof !207

29:                                               ; preds = %25, %25
  %30 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %3) #11
  %31 = load ptr, ptr @sizetype_tab, align 16, !tbaa !176
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %38, label %36

33:                                               ; preds = %25
  %34 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %3) #11
  %35 = icmp eq ptr %26, %34
  br i1 %35, label %38, label %36, !prof !206

36:                                               ; preds = %33, %29
  %37 = phi i32 [ 112, %29 ], [ 114, %33 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %37, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %36, %33, %29
  %39 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #11
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %42, label %41, !prof !206

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #12
  br label %42

42:                                               ; preds = %38, %41
  %43 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %5, ptr noundef %6) #12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %80, label %45, !prof !206

45:                                               ; preds = %42
  switch i32 %0, label %58 [
    i32 66, label %46
    i32 63, label %46
  ]

46:                                               ; preds = %45, %45
  %47 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !192
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !192
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !192
  %54 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %53) #11
  %55 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !192
  %57 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %51, ptr noundef %54, ptr noundef %56) #11
  br label %146

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !192
  %61 = getelementptr inbounds %struct.tree_int_cst, ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !192
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !192
  %66 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %65) #11
  %67 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !192
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
  br i1 %82, label %108, label %83, !prof !206

83:                                               ; preds = %80
  switch i32 %0, label %96 [
    i32 66, label %84
    i32 63, label %84
  ]

84:                                               ; preds = %83, %83
  %85 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !192
  %87 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !192
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !192
  %92 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %91, ptr noundef nonnull %3) #11
  %93 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !192
  %95 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %89, ptr noundef %92, ptr noundef %94) #11
  br label %146

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !192
  %99 = getelementptr inbounds %struct.tree_int_cst, ptr %98, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !192
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !192
  %104 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %103, ptr noundef nonnull %3) #11
  %105 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !192
  %107 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %101, ptr noundef %104, ptr noundef %106) #11
  br label %146

108:                                              ; preds = %80
  %109 = icmp eq ptr %5, %6
  br i1 %109, label %111, label %110, !prof !206

110:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @.str.1) #12
  br label %111

111:                                              ; preds = %108, %110
  switch i32 %0, label %123 [
    i32 66, label %112
    i32 63, label %112
  ]

112:                                              ; preds = %111, %111
  %113 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !192
  %115 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !192
  %117 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %114, ptr noundef %116) #11
  %118 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !192
  %120 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !192
  %122 = tail call ptr @chrec_fold_plus(ptr noundef %9, ptr noundef %119, ptr noundef %121) #11
  br label %134

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !192
  %126 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !192
  %128 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %125, ptr noundef %127) #11
  %129 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !192
  %131 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !192
  %133 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %130, ptr noundef %132) #11
  br label %134

134:                                              ; preds = %123, %112
  %135 = phi ptr [ %122, %112 ], [ %133, %123 ]
  %136 = phi ptr [ %117, %112 ], [ %128, %123 ]
  %137 = tail call fastcc zeroext i8 @chrec_zerop(ptr noundef %135) #11
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %146, !prof !205

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !192
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %141, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !192
  %144 = trunc i64 %143 to i32
  %145 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %144, ptr noundef %136, ptr noundef %135) #11
  br label %146

146:                                              ; preds = %134, %139, %96, %84, %76, %46
  %147 = phi ptr [ %57, %46 ], [ %79, %76 ], [ %95, %84 ], [ %107, %96 ], [ %145, %139 ], [ %136, %134 ]
  ret ptr %147
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @tree_contains_chrecs(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !208 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4, !prof !209

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !210

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4, !tbaa !197
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !197
  br label %9

9:                                                ; preds = %6, %4
  %10 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef nonnull %0) #11, !range !169
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %25, !prof !211

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #11
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %19, label %25, !prof !212

15:                                               ; preds = %19
  %16 = zext nneg i32 %13 to i64
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %16
  br i1 %18, label %25, label %19, !prof !213, !llvm.loop !214

19:                                               ; preds = %12, %15
  %20 = phi i64 [ %17, %15 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !192
  %23 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %22, ptr noundef %1) #11, !range !169
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %15, label %25, !prof !216

25:                                               ; preds = %19, %15, %12, %9, %2
  %26 = phi i8 [ 0, %2 ], [ 1, %9 ], [ 0, %12 ], [ 1, %19 ], [ 0, %15 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !217 !PGOFuncName !218 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  %5 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  %6 = icmp eq ptr %5, %1
  %7 = icmp eq ptr %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %45, label %9, !prof !219

9:                                                ; preds = %3
  %10 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef %1, i32 noundef %0, ptr noundef nonnull %4) #11, !range !169
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %4, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %17, label %15, !prof !220

15:                                               ; preds = %9
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %45

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %23 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !221

22:                                               ; preds = %17, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 143, ptr noundef nonnull @.str.1) #12
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !192
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %32 [
    i16 10, label %28
    i16 12, label %28
  ], !prof !222

28:                                               ; preds = %23, %23
  %29 = load ptr, ptr @sizetype_tab, align 16, !tbaa !176
  %30 = load ptr, ptr %18, align 8, !tbaa !192
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %37, label %35, !prof !223

32:                                               ; preds = %23
  %33 = load ptr, ptr %18, align 8, !tbaa !192
  %34 = icmp eq ptr %25, %33
  br i1 %34, label %37, label %35, !prof !224

35:                                               ; preds = %32, %28
  %36 = phi i32 [ 147, %28 ], [ 149, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef %36, ptr noundef nonnull @.str.1) #12
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = tail call fastcc zeroext i8 @chrec_zerop(ptr noundef nonnull %2) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45, !prof !225

40:                                               ; preds = %37
  %41 = load ptr, ptr %24, align 8, !tbaa !192
  %42 = zext i32 %0 to i64
  %43 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %42) #12
  %44 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %41, ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  br label %45

45:                                               ; preds = %3, %37, %40, %15
  %46 = phi ptr [ %44, %40 ], [ %16, %15 ], [ %1, %37 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_fold_minus(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !226 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !169
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !227

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !169
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !227

9:                                                ; preds = %6, %3
  %10 = tail call fastcc ptr @chrec_fold_automatically_generated_operands(ptr noundef %1, ptr noundef %2) #11
  br label %16

11:                                               ; preds = %6
  %12 = tail call i32 @integer_zerop(ptr noundef %2) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !228

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @chrec_fold_plus_1(i32 noundef 64, ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %16

16:                                               ; preds = %11, %14, %9
  %17 = phi ptr [ %10, %9 ], [ %15, %14 ], [ %1, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !229 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !169
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !230

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !169
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !231

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
  ], !prof !232

14:                                               ; preds = %11
  %15 = load i64, ptr %2, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %24 [
    i16 146, label %17
    i16 116, label %19
    i16 113, label %19
  ], !prof !233

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @chrec_fold_multiply_poly_poly(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  br label %32

19:                                               ; preds = %14, %14
  %20 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null) #11, !range !169
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !234

22:                                               ; preds = %19
  %23 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %32

24:                                               ; preds = %19, %14
  %25 = tail call i32 @integer_onep(ptr noundef nonnull %2) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32, !prof !235

27:                                               ; preds = %24
  %28 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !235

30:                                               ; preds = %27
  %31 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #12
  br label %32

32:                                               ; preds = %81, %52, %24, %89, %87, %79, %58, %50, %30, %22, %17, %9, %63, %34
  %33 = phi ptr [ %46, %34 ], [ %75, %63 ], [ %10, %9 ], [ %59, %58 ], [ %88, %87 ], [ %90, %89 ], [ %80, %79 ], [ %51, %50 ], [ %31, %30 ], [ %23, %22 ], [ %18, %17 ], [ %1, %24 ], [ %2, %52 ], [ %1, %81 ]
  ret ptr %33

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !192
  %37 = getelementptr inbounds %struct.tree_int_cst, ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !192
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !192
  %42 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %41, ptr noundef nonnull %2) #11
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !192
  %45 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %44, ptr noundef nonnull %2) #11
  %46 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %39, ptr noundef %42, ptr noundef %45) #11
  br label %32

47:                                               ; preds = %11, %11
  %48 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %1, ptr noundef null) #11, !range !169
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50, !prof !236

50:                                               ; preds = %47
  %51 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %32

52:                                               ; preds = %47, %11
  %53 = tail call i32 @integer_onep(ptr noundef nonnull %1) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %32, !prof !237

55:                                               ; preds = %52
  %56 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !238

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
  ], !prof !239

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !192
  %66 = getelementptr inbounds %struct.tree_int_cst, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !192
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !192
  %71 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %1) #11
  %72 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %73, ptr noundef nonnull %1) #11
  %75 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %68, ptr noundef %71, ptr noundef %74) #11
  br label %32

76:                                               ; preds = %60, %60
  %77 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef nonnull %2, ptr noundef null) #11, !range !169
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79, !prof !240

79:                                               ; preds = %76
  %80 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %32

81:                                               ; preds = %76, %60
  %82 = tail call i32 @integer_onep(ptr noundef nonnull %2) #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %32, !prof !241

84:                                               ; preds = %81
  %85 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87, !prof !242

87:                                               ; preds = %84
  %88 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #12
  br label %32

89:                                               ; preds = %84
  %90 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  br label %32
}

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !243 !PGOFuncName !244 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !192
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #11
  ret ptr %7
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @chrec_type(ptr noundef readonly %0) unnamed_addr #5 !prof !245 !PGOFuncName !246 {
  %2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !169
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7, !prof !247

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @chrec_zerop(ptr noundef %0) unnamed_addr #0 !prof !248 !PGOFuncName !249 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !250

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %10, !prof !251

7:                                                ; preds = %3
  %8 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #12
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #5 !prof !252 !PGOFuncName !253 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !176
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !254
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #11
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !252 !PGOFuncName !258 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @no_evolution_in_loop_p(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !217 !PGOFuncName !259 {
  %4 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !176
  %5 = icmp eq ptr %4, %0
  %6 = load ptr, ptr @chrec_dont_know, align 8
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %17, label %9, !prof !219

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %0, i32 noundef %1) #12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !260

12:                                               ; preds = %9
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #12
  %14 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %13, i32 noundef %1) #11
  %15 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef %14) #11, !range !169
  %16 = xor i8 %15, 1
  store i8 %16, ptr %2, align 1, !tbaa !192
  br label %17

17:                                               ; preds = %3, %9, %12
  %18 = phi i8 [ 1, %12 ], [ 0, %9 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @hide_evolution_in_other_loops_than_loop(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !261 {
  %3 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !169
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16, !prof !262

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  br label %7

7:                                                ; preds = %5, %34
  %8 = phi ptr [ %37, %34 ], [ %6, %5 ]
  %9 = phi ptr [ %36, %34 ], [ %0, %5 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 146
  br i1 %12, label %13, label %16, !prof !263

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %9) #11
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %18, label %25, !prof !264

16:                                               ; preds = %28, %2, %34, %7, %18
  %17 = phi ptr [ %24, %18 ], [ %29, %28 ], [ %0, %2 ], [ %9, %7 ], [ %36, %34 ]
  ret ptr %17

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !192
  %21 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %20, i32 noundef %1) #11
  %22 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  %24 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %1, ptr noundef %21, ptr noundef %23) #11
  br label %16

25:                                               ; preds = %13
  %26 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %14, ptr noundef %8) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28, !prof !206

28:                                               ; preds = %25
  %29 = tail call ptr @initial_condition(ptr noundef nonnull %9) #11
  br label %16

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %8, ptr noundef %14) #12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34, !prof !205

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 703, ptr noundef nonnull @.str.1) #12
  br label %34

34:                                               ; preds = %30, %33
  %35 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !192
  %37 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  %38 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %36) #11, !range !169
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %7, label %16, !prof !265
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #5 !prof !266 !PGOFuncName !267 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5, !prof !268

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #11, !range !169
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_fold_multiply_poly_poly(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !269 !PGOFuncName !270 {
  %4 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #11
  %5 = tail call fastcc ptr @get_chrec_loop(ptr noundef %2) #11
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !271

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %11, !prof !271

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #12
  br label %11

11:                                               ; preds = %8, %10
  %12 = load i64, ptr %1, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 146
  br i1 %14, label %16, label %15, !prof !272

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @.str.1) #12
  br label %16

16:                                               ; preds = %11, %15
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 146
  br i1 %19, label %21, label %20, !prof !272

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #12
  br label %21

21:                                               ; preds = %16, %20
  %22 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #11
  %23 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %2) #11
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %26, label %25, !prof !272

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @.str.1) #12
  br label %26

26:                                               ; preds = %21, %25
  %27 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %1) #11
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %30, label %29, !prof !272

29:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.1) #12
  br label %30

30:                                               ; preds = %26, %29
  %31 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %4, ptr noundef %5) #12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33, !prof !272

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !192
  %36 = getelementptr inbounds %struct.tree_int_cst, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !192
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !192
  %41 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %1) #11
  %42 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !192
  %44 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %38, ptr noundef %41, ptr noundef %43) #11
  br label %99

45:                                               ; preds = %30
  %46 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %5, ptr noundef %4) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %60, label %48, !prof !272

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !192
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !192
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !192
  %56 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %55, ptr noundef nonnull %2) #11
  %57 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !192
  %59 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %53, ptr noundef %56, ptr noundef %58) #11
  br label %99

60:                                               ; preds = %45
  %61 = icmp eq ptr %4, %5
  br i1 %61, label %63, label %62, !prof !272

62:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 216, ptr noundef nonnull @.str.1) #12
  br label %63

63:                                               ; preds = %60, %62
  %64 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !192
  %67 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !192
  %69 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %66, ptr noundef %68) #11
  %70 = load ptr, ptr %65, align 8, !tbaa !192
  %71 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !192
  %73 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %70, ptr noundef %72) #11
  %74 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !192
  %76 = load ptr, ptr %67, align 8, !tbaa !192
  %77 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %75, ptr noundef %76) #11
  %78 = tail call ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %73, ptr noundef %77) #11
  %79 = load ptr, ptr %74, align 8, !tbaa !192
  %80 = load ptr, ptr %71, align 8, !tbaa !192
  %81 = tail call ptr @chrec_fold_multiply(ptr noundef %0, ptr noundef %79, ptr noundef %80) #11
  %82 = tail call ptr @chrec_fold_plus(ptr noundef %0, ptr noundef %78, ptr noundef %81) #11
  %83 = load i64, ptr %0, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 9
  br i1 %85, label %86, label %88, !prof !271

86:                                               ; preds = %63
  %87 = tail call ptr @build_real(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst2) #12
  br label %90

88:                                               ; preds = %63
  %89 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 2) #12
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi ptr [ %87, %86 ], [ %89, %88 ]
  %92 = tail call ptr @chrec_fold_multiply(ptr noundef nonnull %0, ptr noundef %91, ptr noundef %81) #11
  %93 = load ptr, ptr %64, align 8, !tbaa !192
  %94 = getelementptr inbounds %struct.tree_int_cst, ptr %93, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !192
  %96 = trunc i64 %95 to i32
  %97 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %96, ptr noundef %82, ptr noundef %92) #11
  %98 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %96, ptr noundef %69, ptr noundef %97) #11
  br label %99

99:                                               ; preds = %90, %48, %33
  %100 = phi ptr [ %44, %33 ], [ %59, %48 ], [ %98, %90 ]
  ret ptr %100
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_apply(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !273 {
  %4 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %5 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !169
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13, !prof !274

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %2) #11, !range !169
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !274

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %1, i32 noundef %0) #12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !275

13:                                               ; preds = %10, %7, %3
  %14 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %85

15:                                               ; preds = %10
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !176
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18, !prof !276

18:                                               ; preds = %15
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !197
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 14, i64 1, ptr nonnull %16)
  br label %24

24:                                               ; preds = %22, %18, %15
  %25 = load i64, ptr %2, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %28, label %34, !prof !277

28:                                               ; preds = %24
  %29 = load i64, ptr %4, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 9
  br i1 %31, label %32, label %34, !prof !278

32:                                               ; preds = %28
  %33 = tail call ptr @build_real_from_int_cst(ptr noundef nonnull %4, ptr noundef nonnull %2) #12
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = phi ptr [ %33, %32 ], [ %2, %28 ], [ %2, %24 ]
  %36 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef %1) #11, !range !169
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38, !prof !279

38:                                               ; preds = %34
  %39 = tail call ptr @chrec_convert_rhs(ptr noundef %4, ptr noundef %35, ptr noundef null) #11
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !192
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !192
  %44 = tail call ptr @chrec_fold_multiply(ptr noundef %41, ptr noundef %43, ptr noundef %39) #11
  %45 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !192
  %47 = tail call ptr @chrec_fold_plus(ptr noundef %4, ptr noundef %46, ptr noundef %44) #11
  br label %63

48:                                               ; preds = %34
  %49 = load i64, ptr %1, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 146
  br i1 %51, label %52, label %63, !prof !280

52:                                               ; preds = %48
  %53 = load i64, ptr %35, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 23
  br i1 %55, label %56, label %61, !prof !281

56:                                               ; preds = %52
  %57 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %35) #12
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %35, i32 noundef 0) #11
  br label %63

61:                                               ; preds = %56, %52
  %62 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %63

63:                                               ; preds = %48, %61, %59, %38
  %64 = phi ptr [ %39, %38 ], [ %35, %59 ], [ %35, %61 ], [ %35, %48 ]
  %65 = phi ptr [ %47, %38 ], [ %60, %59 ], [ %62, %61 ], [ %1, %48 ]
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !176
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68, !prof !276

68:                                               ; preds = %63
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !197
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %66, ptr noundef nonnull @.str.4, i32 noundef %0) #11
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !176
  %75 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 13, i64 1, ptr %74)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !176
  tail call void @print_generic_expr(ptr noundef %76, ptr noundef nonnull %1, i32 noundef 0) #12
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !176
  %78 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 9, i64 1, ptr %77)
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !176
  tail call void @print_generic_expr(ptr noundef %79, ptr noundef %64, i32 noundef 0) #12
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !176
  %81 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 11, i64 1, ptr %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !176
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef %65, i32 noundef 0) #12
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !176
  %84 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 3, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %63, %68, %72, %13
  %86 = phi ptr [ %14, %13 ], [ %65, %72 ], [ %65, %68 ], [ %65, %63 ]
  ret ptr %86
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @build_real_from_int_cst(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @evolution_function_is_affine_p(ptr noundef readonly %0) unnamed_addr #0 !prof !282 !PGOFuncName !283 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3, !prof !284

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %27, !prof !285

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = load ptr, ptr %8, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !192
  %14 = trunc i64 %13 to i32
  %15 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %10, i32 noundef %14) #11, !range !169
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17, !prof !286

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = load ptr, ptr %8, align 8, !tbaa !192
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !192
  %23 = trunc i64 %22 to i32
  %24 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %19, i32 noundef %23) #11, !range !169
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27, !prof !287

26:                                               ; preds = %17, %7
  br label %27

27:                                               ; preds = %3, %17, %1, %26
  %28 = phi i8 [ 0, %26 ], [ 0, %1 ], [ 1, %17 ], [ 0, %3 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_convert_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !288 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %8 [
    i16 10, label %6
    i16 12, label %6
  ], !prof !289

6:                                                ; preds = %3, %3
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !176
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %0, %3 ]
  %10 = tail call ptr @chrec_convert(ptr noundef %9, ptr noundef %1, ptr noundef %2) #11
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !290 !PGOFuncName !291 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
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
  %20 = load ptr, ptr %19, align 8, !tbaa !192
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %11, label %24, !llvm.loop !292

24:                                               ; preds = %18, %16, %4
  %25 = phi i64 [ %8, %4 ], [ %17, %16 ], [ %21, %18 ]
  %26 = phi ptr [ %1, %4 ], [ %12, %16 ], [ %20, %18 ]
  %27 = and i64 %25, 65535
  %28 = icmp eq i64 %27, 146
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.tree_int_cst, ptr %31, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !192
  %34 = zext i32 %0 to i64
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !192
  %39 = add i32 %3, 1
  %40 = tail call fastcc ptr @chrec_evaluate(i32 noundef %0, ptr noundef %38, ptr noundef %2, i32 noundef %39) #11
  %41 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %36
  %44 = tail call fastcc ptr @tree_fold_binomial(ptr noundef %6, ptr noundef %2, i32 noundef %3) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %60

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !192
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %6, ptr noundef %50, ptr noundef nonnull %44) #12
  %52 = tail call ptr @chrec_fold_plus(ptr noundef %6, ptr noundef %51, ptr noundef %40) #11
  br label %60

53:                                               ; preds = %29, %24
  %54 = tail call fastcc ptr @tree_fold_binomial(ptr noundef %6, ptr noundef %2, i32 noundef %3) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
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
define dso_local noundef zeroext i8 @evolution_function_is_invariant_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !293 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %0, i32 noundef %1) #11, !range !169
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_fold_binomial(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !290 !PGOFuncName !294 {
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
  %19 = load i64, ptr %18, align 8, !tbaa !192
  %20 = icmp eq i64 %19, 0
  %21 = load i64, ptr %17, align 8, !tbaa !192
  %22 = zext i32 %2 to i64
  %23 = icmp ult i64 %21, %22
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %68, label %25

25:                                               ; preds = %16
  store i64 %21, ptr %4, align 8, !tbaa !295
  store i64 %19, ptr %8, align 8, !tbaa !295
  store i64 2, ptr %5, align 8, !tbaa !295
  store i64 0, ptr %9, align 8, !tbaa !295
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
  %42 = load i64, ptr %4, align 8, !tbaa !295
  %43 = load i64, ptr %8, align 8, !tbaa !295
  %44 = call i32 @mul_double_with_sign(i64 noundef %42, i64 noundef %43, i64 noundef %39, i64 noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %8, i8 noundef zeroext 0) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %34
  %47 = load i64, ptr %5, align 8, !tbaa !295
  %48 = load i64, ptr %9, align 8, !tbaa !295
  %49 = zext i32 %35 to i64
  %50 = call i32 @mul_double_with_sign(i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, i8 noundef zeroext 0) #12
  %51 = add i32 %35, 1
  %52 = icmp ugt i32 %51, %2
  br i1 %52, label %53, label %34, !llvm.loop !297

53:                                               ; preds = %46
  %54 = load i64, ptr %5, align 8, !tbaa !295
  %55 = load i64, ptr %9, align 8, !tbaa !295
  br label %56

56:                                               ; preds = %53, %32
  %57 = phi i64 [ %55, %53 ], [ 0, %32 ]
  %58 = phi i64 [ %54, %53 ], [ 2, %32 ]
  %59 = load i64, ptr %4, align 8, !tbaa !295
  %60 = load i64, ptr %8, align 8, !tbaa !295
  %61 = call i32 @div_and_round_double(i32 noundef 76, i32 noundef 1, i64 noundef %59, i64 noundef %60, i64 noundef %58, i64 noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %11) #12
  %62 = load i64, ptr %6, align 8, !tbaa !295
  %63 = load i64, ptr %10, align 8, !tbaa !295
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_replace_initial_condition(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !298 {
  %3 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !169
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14, !prof !299

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @chrec_type(ptr noundef %0) #11
  %7 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %10, label %9, !prof !300

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 645, ptr noundef nonnull @.str.1) #12
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %16, label %14, !prof !301

14:                                               ; preds = %10, %2, %16
  %15 = phi ptr [ %27, %16 ], [ %0, %2 ], [ %1, %10 ]
  ret ptr %15

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !192
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !192
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  %24 = tail call ptr @chrec_replace_initial_condition(ptr noundef %23, ptr noundef %1) #11
  %25 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !192
  %27 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %21, ptr noundef %24, ptr noundef %26) #11
  br label %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @initial_condition(ptr noundef readonly %0) local_unnamed_addr #8 !prof !302 {
  %2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !169
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %14, !prof !303

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %14, !prof !304

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %11) #11, !range !169
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %4, label %14, !prof !305

14:                                               ; preds = %9, %4, %1
  %15 = phi ptr [ %0, %1 ], [ %5, %4 ], [ %11, %9 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @evolution_part_in_loop_num(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !306 {
  %3 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_component_in_loop_num(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !307 !PGOFuncName !308 {
  %4 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #11, !range !169
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %37, !prof !309

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  br label %8

8:                                                ; preds = %6, %49
  %9 = phi ptr [ %52, %49 ], [ %7, %6 ]
  %10 = phi ptr [ %51, %49 ], [ %0, %6 ]
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %14, label %55, !prof !310

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %10) #11
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %42, !prof !311

17:                                               ; preds = %14
  %18 = icmp eq i8 %2, 0
  %19 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %21 = select i1 %18, ptr %20, ptr %19, !prof !312
  %22 = load ptr, ptr %21, align 8, !tbaa !192
  %23 = load ptr, ptr %20, align 8, !tbaa !192
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 146
  br i1 %26, label %27, label %37, !prof !313

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %29 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !192
  %31 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !192
  %33 = load ptr, ptr %28, align 8, !tbaa !192
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !192
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 758, ptr noundef nonnull @.str.1) #12
  br label %49

49:                                               ; preds = %45, %48
  %50 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !192
  %52 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  %53 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %51) #11, !range !169
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %8, label %37, !prof !314

55:                                               ; preds = %8
  %56 = icmp eq i8 %2, 0
  %57 = select i1 %56, ptr %10, ptr null, !prof !315
  br label %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @initial_condition_in_loop_num(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !316 {
  %3 = tail call fastcc ptr @chrec_component_in_loop_num(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0) #11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !290 {
  %4 = tail call fastcc ptr @get_loop(i32 noundef %0) #11
  %5 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %12 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = load ptr, ptr @sizetype_tab, align 16, !tbaa !176
  %10 = tail call fastcc ptr @chrec_type(ptr noundef %2) #11
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %17, label %15

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @chrec_type(ptr noundef %2) #11
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 807, %8 ], [ 809, %12 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %16, ptr noundef nonnull @.str.1) #12
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
  %32 = load ptr, ptr %31, align 8, !tbaa !192
  %33 = tail call ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %32, ptr noundef %2) #11
  %34 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !192
  %36 = tail call ptr @reset_evolution_in_loop(i32 noundef %0, ptr noundef %35, ptr noundef %2) #11
  %37 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !192
  %39 = load ptr, ptr %30, align 8, !tbaa !192
  %40 = getelementptr inbounds %struct.tree_int_cst, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !192
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
  %53 = load ptr, ptr %52, align 8, !tbaa !192
  %54 = getelementptr inbounds %struct.tree_int_cst, ptr %53, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !192
  %56 = icmp eq i64 %55, %49
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !192
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 146
  br i1 %62, label %50, label %63, !llvm.loop !317

63:                                               ; preds = %50, %57, %44
  %64 = phi ptr [ %1, %44 ], [ %59, %57 ], [ %51, %50 ]
  %65 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef nonnull %64, ptr noundef %2) #11
  br label %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !318 {
  %3 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  %4 = icmp eq ptr %3, %0
  %5 = icmp eq ptr %3, %1
  %6 = or i1 %4, %5
  br i1 %6, label %22, label %7, !prof !319

7:                                                ; preds = %2
  %8 = load ptr, ptr @chrec_known, align 8, !tbaa !176
  %9 = icmp eq ptr %8, %0
  %10 = icmp eq ptr %8, %1
  %11 = or i1 %9, %10
  br i1 %11, label %22, label %12, !prof !320

12:                                               ; preds = %7
  %13 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !176
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %22, label %15, !prof !321

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, %1
  br i1 %16, label %22, label %17, !prof !322

17:                                               ; preds = %15
  %18 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) #11
  %19 = icmp eq i8 %18, 0
  %20 = load ptr, ptr @chrec_dont_know, align 8
  %21 = select i1 %19, ptr %20, ptr %0, !prof !323
  br label %22

22:                                               ; preds = %7, %2, %17, %15, %12
  %23 = phi ptr [ %1, %12 ], [ %0, %15 ], [ %21, %17 ], [ %3, %2 ], [ %8, %7 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !324 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %36, label %6, !prof !325

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = load i64, ptr %1, align 8
  %9 = xor i64 %8, %7
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36, !prof !326

12:                                               ; preds = %6
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %36, label %14, !prof !327

14:                                               ; preds = %12
  %15 = trunc i64 %7 to i16
  switch i16 %15, label %36 [
    i16 23, label %16
    i16 146, label %19
  ], !prof !328

16:                                               ; preds = %14
  %17 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #12
  %18 = trunc i32 %17 to i8
  br label %36

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !192
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !192
  %24 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !192
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !192
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %36, !prof !329

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !192
  %34 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %31, ptr noundef %33) #11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38, !prof !330

36:                                               ; preds = %14, %19, %29, %12, %2, %6, %16, %38
  %37 = phi i8 [ %45, %38 ], [ %18, %16 ], [ 0, %6 ], [ 0, %2 ], [ 1, %12 ], [ 0, %29 ], [ 0, %19 ], [ 0, %14 ]
  ret i8 %37

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !192
  %41 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !192
  %43 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %40, ptr noundef %42) #11
  %44 = icmp ne i8 %43, 0
  %45 = zext i1 %44 to i8
  br label %36
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @is_multivariate_chrec(ptr noundef readonly %0) local_unnamed_addr #9 !prof !290 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = load ptr, ptr %8, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !192
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %10, i32 noundef %14) #11, !range !169
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %19, i32 noundef %14) #11, !range !169
  br label %21

21:                                               ; preds = %3, %7, %17, %1
  %22 = phi i8 [ 0, %1 ], [ 1, %7 ], [ %20, %17 ], [ 0, %3 ]
  ret i8 %22
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_multivariate_chrec_rec(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !290 !PGOFuncName !331 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !192
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !192
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = tail call fastcc zeroext i8 @is_multivariate_chrec_rec(ptr noundef %19, i32 noundef %1) #11, !range !169
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !192
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6

26:                                               ; preds = %22, %11, %17, %6, %2
  %27 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %17 ], [ 1, %11 ], [ 0, %22 ]
  ret i8 %27
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @chrec_contains_symbols(ptr noundef readonly %0) local_unnamed_addr #9 !prof !332 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3, !prof !333

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 141, label %19
    i16 32, label %19
    i16 34, label %19
    i16 29, label %19
    i16 30, label %19
    i16 36, label %19
    i16 31, label %19
  ], !prof !334

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %13, label %19, !prof !335

9:                                                ; preds = %13
  %10 = zext nneg i32 %7 to i64
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %10
  br i1 %12, label %19, label %13, !prof !336, !llvm.loop !337

13:                                               ; preds = %6, %9
  %14 = phi i64 [ %11, %9 ], [ 0, %6 ]
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !192
  %17 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %16) #11, !range !169
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %9, label %19, !prof !338

19:                                               ; preds = %13, %9, %6, %3, %3, %3, %3, %3, %3, %3, %1
  %20 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 0, %6 ], [ 1, %13 ], [ 0, %9 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !339 !PGOFuncName !340 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13, !prof !341

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !192
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !192
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @chrec_contains_undetermined(ptr noundef readonly %0) local_unnamed_addr #9 !prof !342 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %19, label %4, !prof !343

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6, !prof !344

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %13, label %19, !prof !345

9:                                                ; preds = %13
  %10 = zext nneg i32 %7 to i64
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %10
  br i1 %12, label %19, label %13, !prof !346, !llvm.loop !347

13:                                               ; preds = %6, %9
  %14 = phi i64 [ %11, %9 ], [ 0, %6 ]
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !192
  %17 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %16) #11, !range !169
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %9, label %19, !prof !348

19:                                               ; preds = %13, %9, %6, %4, %1
  %20 = phi i8 [ 1, %1 ], [ 0, %4 ], [ 0, %6 ], [ 1, %13 ], [ 0, %9 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !349 !PGOFuncName !350 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %0) #11, !range !169
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %50, !prof !351

5:                                                ; preds = %2, %36
  %6 = phi ptr [ %38, %36 ], [ %0, %2 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %18, !prof !352

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %50, label %12, !prof !353

12:                                               ; preds = %10
  %13 = tail call fastcc ptr @get_loop(i32 noundef %1) #11
  %14 = tail call zeroext i8 @expr_invariant_in_loop_p(ptr noundef %13, ptr noundef nonnull %6) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %50, !prof !354

16:                                               ; preds = %12
  %17 = load i64, ptr %6, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi i64 [ %17, %16 ], [ %7, %5 ]
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 146
  br i1 %21, label %22, label %41, !prof !355

22:                                               ; preds = %18
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !192
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !192
  %28 = icmp eq i64 %27, %23
  br i1 %28, label %50, label %29, !prof !356

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !192
  %32 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %31, i32 noundef %1) #11, !range !169
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %36

36:                                               ; preds = %34, %48
  %37 = phi ptr [ %35, %34 ], [ %49, %48 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !192
  %39 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %38) #11, !range !169
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %5, label %50, !prof !357

41:                                               ; preds = %18
  %42 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %6) #11
  switch i32 %42, label %50 [
    i32 2, label %43
    i32 1, label %48
  ], !prof !358

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !192
  %46 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %45, i32 noundef %1) #11, !range !169
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48, !prof !359

48:                                               ; preds = %43, %41
  %49 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  br label %36

50:                                               ; preds = %36, %12, %10, %29, %22, %43, %41, %2
  %51 = phi i8 [ 1, %2 ], [ 0, %41 ], [ 0, %43 ], [ 0, %22 ], [ 0, %29 ], [ 1, %10 ], [ 1, %12 ], [ 1, %36 ]
  ret i8 %51
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef readonly %0) unnamed_addr #6 !prof !349 !PGOFuncName !360 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !361

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !362 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4, !prof !363

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 146
  br i1 %7, label %8, label %56, !prof !364

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %11, i32 noundef %1) #11, !range !169
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !192
  %16 = tail call fastcc zeroext i8 @evolution_function_is_invariant_rec_p(ptr noundef %15, i32 noundef %1) #11, !range !169
  %17 = icmp eq i8 %16, 0
  br i1 %13, label %37, label %18, !prof !365

18:                                               ; preds = %8
  br i1 %17, label %19, label %56, !prof !365

19:                                               ; preds = %18
  %20 = load ptr, ptr %14, align 8, !tbaa !192
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !192
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %26, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !192
  %29 = load ptr, ptr %9, align 8, !tbaa !192
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !192
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %20, i32 noundef %1) #11, !range !169
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33, %24, %19
  br label %56

37:                                               ; preds = %8
  br i1 %17, label %55, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %10, align 8, !tbaa !192
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 146
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !192
  %46 = getelementptr inbounds %struct.tree_int_cst, ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !192
  %48 = load ptr, ptr %9, align 8, !tbaa !192
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !192
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %39, i32 noundef %1) #11, !range !169
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %43, %38, %37
  br label %56

56:                                               ; preds = %4, %52, %33, %18, %2, %55, %36
  %57 = phi i8 [ 0, %36 ], [ 0, %55 ], [ 0, %2 ], [ 1, %18 ], [ 1, %33 ], [ 1, %52 ], [ 0, %4 ]
  ret i8 %57
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @evolution_function_is_univariate_p(ptr noundef readonly %0) local_unnamed_addr #9 !prof !366 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3, !prof !367

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 146
  br i1 %6, label %7, label %44, !prof !368

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 146
  br i1 %13, label %14, label %26, !prof !367

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !192
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !192
  %18 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !192
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %10) #11, !range !169
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %7, %23
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !192
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 146
  br i1 %31, label %32, label %44, !prof !367

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !tbaa !192
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !192
  %36 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !192
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !192
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %28) #11, !range !169
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %26, %3
  br label %45

45:                                               ; preds = %41, %32, %23, %14, %1, %44
  %46 = phi i8 [ 1, %44 ], [ 1, %1 ], [ 0, %14 ], [ 0, %23 ], [ 0, %32 ], [ 0, %41 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nb_vars_in_chrec(ptr noundef %0) local_unnamed_addr #0 !prof !369 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !370

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %15, %9 ], [ %0, %1 ]
  %5 = phi i32 [ %16, %9 ], [ 0, %1 ]
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %18, !prof !371

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !192
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %4, i32 noundef %14) #11
  %16 = add i32 %5, 1
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %3, !prof !372

18:                                               ; preds = %9, %3, %1
  %19 = phi i32 [ 0, %1 ], [ %5, %3 ], [ %16, %9 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @convert_affine_scev(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 !prof !373 {
  %7 = load ptr, ptr %3, align 8, !tbaa !176
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %14 [
    i16 10, label %12
    i16 12, label %12
  ], !prof !374

12:                                               ; preds = %6, %6
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !176
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
  br i1 %23, label %49, label %24, !prof !375

24:                                               ; preds = %14
  %25 = tail call zeroext i8 @nowrap_type_p(ptr noundef nonnull %1) #12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %49, label %27, !prof !376

27:                                               ; preds = %24
  br i1 %22, label %28, label %37, !prof !377

28:                                               ; preds = %27
  %29 = load i64, ptr %1, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32, !prof !378

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
  br i1 %42, label %43, label %56, !prof !379

43:                                               ; preds = %37
  %44 = load i32, ptr %16, align 4
  %45 = load i32, ptr %19, align 4
  %46 = xor i32 %45, %44
  %47 = and i32 %46, 1023
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %56, !prof !380

49:                                               ; preds = %24, %14
  br i1 %22, label %50, label %56, !prof !381

50:                                               ; preds = %43, %32, %36, %49
  %51 = phi i1 [ true, %49 ], [ true, %43 ], [ false, %32 ], [ true, %36 ]
  %52 = load ptr, ptr %2, align 8, !tbaa !176
  %53 = load ptr, ptr %3, align 8, !tbaa !176
  %54 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %52, ptr noundef %53, ptr noundef %4, ptr noundef %0, i8 noundef zeroext %5) #12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %87, !prof !382

56:                                               ; preds = %43, %37, %50, %49
  %57 = phi i1 [ %51, %50 ], [ true, %49 ], [ false, %37 ], [ false, %43 ]
  %58 = load ptr, ptr %2, align 8, !tbaa !176
  %59 = tail call fastcc ptr @chrec_convert_1(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %4, i8 noundef zeroext %5) #11
  %60 = load ptr, ptr %3, align 8, !tbaa !176
  %61 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1023
  %64 = load i32, ptr %16, align 4
  %65 = and i32 %64, 1023
  %66 = icmp ugt i32 %63, %65
  br i1 %66, label %67, label %74, !prof !383

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
  %77 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %59) #11, !range !169
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %87, !prof !384

79:                                               ; preds = %74
  %80 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %76) #11, !range !169
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87, !prof !384

82:                                               ; preds = %79
  br i1 %57, label %86, label %83, !prof !385

83:                                               ; preds = %82
  %84 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %59, ptr noundef %76, ptr noundef %4, ptr noundef %0, i8 noundef zeroext 0) #12
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87, !prof !386

86:                                               ; preds = %83, %82
  store ptr %59, ptr %2, align 8, !tbaa !176
  store ptr %76, ptr %3, align 8, !tbaa !176
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
define internal fastcc ptr @chrec_convert_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !387 !PGOFuncName !388 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %7 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !169
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %96, !prof !389

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @chrec_type(ptr noundef %1) #11
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %96, label %12, !prof !390

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef %1) #11, !range !169
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15, !prof !391

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #11
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !192
  store ptr %18, ptr %5, align 8, !tbaa !176
  %19 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !192
  store ptr %20, ptr %6, align 8, !tbaa !176
  %21 = call zeroext i8 @convert_affine_scev(ptr noundef %16, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, i8 noundef zeroext %3) #11, !range !169
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23, !prof !392

23:                                               ; preds = %15
  %24 = load i32, ptr %16, align 8, !tbaa !393
  %25 = load ptr, ptr %5, align 8, !tbaa !176
  %26 = load ptr, ptr %6, align 8, !tbaa !176
  %27 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %24, ptr noundef %25, ptr noundef %26) #11
  br label %96

28:                                               ; preds = %15, %12
  %29 = icmp eq i8 %3, 0
  br i1 %29, label %72, label %30, !prof !397

30:                                               ; preds = %28
  %31 = load i64, ptr %1, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -63
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %72, !prof !398

36:                                               ; preds = %30
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %40, label %72, !prof !399

40:                                               ; preds = %36
  %41 = load i64, ptr %10, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 8
  br i1 %43, label %44, label %72, !prof !400

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1023
  %48 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %72, !prof !401

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
  br i1 %63, label %64, label %72, !prof !402

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !192
  %67 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %66) #12
  %68 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !192
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
  %79 = load i32, ptr %78, align 4, !tbaa !197
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83, !prof !403

81:                                               ; preds = %74
  %82 = and i64 %76, -134217729
  store i64 %82, ptr %75, align 8
  br label %83

83:                                               ; preds = %81, %74
  %84 = phi i64 [ %82, %81 ], [ %76, %74 ]
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 23
  br i1 %86, label %87, label %96, !prof !403

87:                                               ; preds = %83
  %88 = load i64, ptr %0, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 8
  br i1 %90, label %91, label %96, !prof !404

91:                                               ; preds = %87
  %92 = tail call i32 @int_fits_type_p(ptr noundef nonnull %75, ptr noundef nonnull %0) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96, !prof !405

94:                                               ; preds = %91
  %95 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !176
  br label %96

96:                                               ; preds = %83, %87, %91, %94, %9, %4, %23
  %97 = phi ptr [ %27, %23 ], [ %1, %4 ], [ %1, %9 ], [ %75, %91 ], [ %95, %94 ], [ %75, %87 ], [ %75, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %97
}

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @chrec_convert_aggressive(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !406 {
  %3 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %1) #11, !range !169
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %48, !prof !407

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 146
  br i1 %8, label %9, label %48, !prof !408

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1023
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %48, label %19, !prof !409

19:                                               ; preds = %9
  %20 = load i64, ptr %0, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %24 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !410

22:                                               ; preds = %19, %19
  %23 = load ptr, ptr @sizetype_tab, align 16, !tbaa !176
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi ptr [ %23, %22 ], [ %0, %19 ]
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %27 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !192
  %29 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !192
  %31 = tail call ptr @chrec_convert_aggressive(ptr noundef nonnull %0, ptr noundef %28) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !411

33:                                               ; preds = %24
  %34 = tail call ptr @chrec_convert(ptr noundef nonnull %0, ptr noundef %28, ptr noundef null) #11
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %31, %24 ], [ %34, %33 ]
  %37 = tail call ptr @chrec_convert_aggressive(ptr noundef %25, ptr noundef %30) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41, !prof !411

39:                                               ; preds = %35
  %40 = tail call ptr @chrec_convert(ptr noundef %25, ptr noundef %30, ptr noundef null) #11
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %37, %35 ], [ %40, %39 ]
  %43 = load ptr, ptr %26, align 8, !tbaa !192
  %44 = getelementptr inbounds %struct.tree_int_cst, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !192
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
define dso_local i32 @scev_direction(ptr noundef %0) local_unnamed_addr #0 !prof !412 {
  %2 = tail call fastcc zeroext i8 @evolution_function_is_affine_p(ptr noundef %0) #11, !range !169
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4, !prof !413

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %14, !prof !414

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
define dso_local void @for_each_scev_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !290 {
  %4 = load ptr, ptr %0, align 8, !tbaa !176
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !192
  switch i8 %8, label %19 [
    i8 3, label %9
    i8 2, label %12
    i8 1, label %16
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  tail call void @for_each_scev_op(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %2) #11
  %11 = load ptr, ptr %0, align 8, !tbaa !176
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %4, %3 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  tail call void @for_each_scev_op(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2) #11
  %15 = load ptr, ptr %0, align 8, !tbaa !176
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
define dso_local noundef zeroext i8 @scev_is_linear_expression(ptr noundef %0) local_unnamed_addr #0 !prof !290 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %61, label %3

3:                                                ; preds = %1, %47
  %4 = phi ptr [ %49, %47 ], [ %0, %1 ]
  %5 = tail call fastcc zeroext i8 @operator_is_linear(ptr noundef nonnull %4) #11, !range !169
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
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  %13 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %12, ptr noundef null) #11, !range !169
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %61, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !192
  %18 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %17, ptr noundef null) #11, !range !169
  %19 = xor i8 %18, 1
  br label %61

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !192
  %23 = getelementptr inbounds %struct.tree_int_cst, ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !192
  %25 = trunc i64 %24 to i32
  %26 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %4, i32 noundef %25) #11, !range !169
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %20
  %29 = load i64, ptr %4, align 8
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ %29, %28 ], [ %8, %7 ]
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !192
  switch i8 %34, label %61 [
    i8 3, label %35
    i8 2, label %51
    i8 1, label %58
    i8 0, label %60
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !192
  %38 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %37) #11, !range !169
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !192
  %43 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %42) #11, !range !169
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  br label %47

47:                                               ; preds = %45, %56, %58
  %48 = phi ptr [ %46, %45 ], [ %57, %56 ], [ %59, %58 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !192
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %3

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !192
  %54 = tail call zeroext i8 @scev_is_linear_expression(ptr noundef %53) #11, !range !169
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
define internal fastcc noundef zeroext i8 @operator_is_linear(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !290 !PGOFuncName !415 {
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
define dso_local noundef zeroext i8 @evolution_function_right_is_integer_cst(ptr noundef readonly %0) local_unnamed_addr #8 !prof !290 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 23
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !192
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %22, label %26

19:                                               ; preds = %3, %3
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !192
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!167}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!36 = !{ptr @chrec_fold_plus, ptr @automatically_generated_chrec_p, i64 276588}
!37 = !{ptr @chrec_fold_plus, ptr @chrec_fold_automatically_generated_operands, i64 73}
!38 = !{ptr @chrec_fold_plus, ptr @integer_zerop, i64 249480}
!39 = !{ptr @chrec_fold_plus, ptr @chrec_convert, i64 30062}
!40 = !{ptr @chrec_fold_plus, ptr @chrec_fold_plus_1, i64 108192}
!41 = !{ptr @chrec_convert, ptr @chrec_convert_1, i64 873789}
!42 = !{ptr @chrec_fold_plus_1, ptr @automatically_generated_chrec_p, i64 254687}
!43 = !{ptr @chrec_fold_plus_1, ptr @chrec_fold_automatically_generated_operands, i64 2}
!44 = !{ptr @chrec_fold_plus_1, ptr @chrec_fold_plus_poly_poly, i64 3}
!45 = !{ptr @chrec_fold_plus_1, ptr @tree_contains_chrecs, i64 165293}
!46 = !{ptr @chrec_fold_plus_1, ptr @chrec_fold_plus, i64 37236}
!47 = !{ptr @chrec_fold_plus_1, ptr @build_polynomial_chrec, i64 55854}
!48 = !{ptr @chrec_fold_plus_1, ptr @chrec_fold_minus, i64 18618}
!49 = !{ptr @chrec_fold_plus_1, ptr @build_real, i64 10}
!50 = !{ptr @chrec_fold_plus_1, ptr @build_int_cst_type, i64 2046}
!51 = !{ptr @chrec_fold_plus_1, ptr @chrec_fold_multiply, i64 2055}
!52 = !{ptr @chrec_fold_plus_1, ptr @build2_stat, i64 1}
!53 = !{ptr @chrec_fold_plus_1, ptr @fold_convert_loc, i64 142554}
!54 = !{ptr @chrec_fold_plus_1, ptr @fold_build2_stat_loc, i64 71277}
!55 = !{ptr @chrec_fold_plus_poly_poly, ptr @get_chrec_loop, i64 4}
!56 = !{ptr @chrec_fold_plus_poly_poly, ptr @fancy_abort, i64 6}
!57 = !{ptr @chrec_fold_plus_poly_poly, ptr @chrec_type, i64 6}
!58 = !{ptr @chrec_fold_plus_poly_poly, ptr @flow_loop_nested_p, i64 4}
!59 = !{ptr @chrec_fold_plus_poly_poly, ptr @chrec_fold_plus, i64 2}
!60 = !{ptr @chrec_fold_plus_poly_poly, ptr @chrec_zerop, i64 1}
!61 = !{ptr @tree_contains_chrecs, ptr @tree_is_chrec, i64 816265}
!62 = !{ptr @tree_contains_chrecs, ptr @tree_operand_length, i64 716015}
!63 = !{ptr @tree_contains_chrecs, ptr @tree_contains_chrecs, i64 268981}
!64 = !{ptr @build_polynomial_chrec, ptr @no_evolution_in_loop_p, i64 117849}
!65 = !{ptr @build_polynomial_chrec, ptr @fancy_abort, i64 4}
!66 = !{ptr @build_polynomial_chrec, ptr @chrec_zerop, i64 112941}
!67 = !{ptr @build_polynomial_chrec, ptr @build_int_cst, i64 112940}
!68 = !{ptr @build_polynomial_chrec, ptr @build3_stat, i64 112940}
!69 = !{ptr @chrec_fold_minus, ptr @automatically_generated_chrec_p, i64 38549}
!70 = !{ptr @chrec_fold_minus, ptr @chrec_fold_automatically_generated_operands, i64 2}
!71 = !{ptr @chrec_fold_minus, ptr @integer_zerop, i64 19273}
!72 = !{ptr @chrec_fold_minus, ptr @chrec_fold_plus_1, i64 19146}
!73 = !{ptr @chrec_fold_multiply, ptr @automatically_generated_chrec_p, i64 122878}
!74 = !{ptr @chrec_fold_multiply, ptr @chrec_fold_automatically_generated_operands, i64 25}
!75 = !{ptr @chrec_fold_multiply, ptr @chrec_fold_multiply_poly_poly, i64 5}
!76 = !{ptr @chrec_fold_multiply, ptr @tree_contains_chrecs, i64 16356}
!77 = !{ptr @chrec_fold_multiply, ptr @integer_onep, i64 88633}
!78 = !{ptr @chrec_fold_multiply, ptr @integer_zerop, i64 69317}
!79 = !{ptr @chrec_fold_multiply, ptr @build_int_cst, i64 5360}
!80 = !{ptr @chrec_fold_multiply, ptr @chrec_fold_multiply, i64 18864}
!81 = !{ptr @chrec_fold_multiply, ptr @build_polynomial_chrec, i64 9432}
!82 = !{ptr @chrec_fold_multiply, ptr @fold_build2_stat_loc, i64 27255}
!83 = !{ptr @get_chrec_loop, ptr @get_loop, i64 191551}
!84 = !{ptr @chrec_type, ptr @automatically_generated_chrec_p, i64 964592}
!85 = !{ptr @chrec_zerop, ptr @integer_zerop, i64 112494}
!86 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 827951}
!87 = !{ptr @no_evolution_in_loop_p, ptr @chrec_contains_symbols_defined_in_loop, i64 117849}
!88 = !{ptr @no_evolution_in_loop_p, ptr @tree_strip_nop_conversions, i64 112942}
!89 = !{ptr @no_evolution_in_loop_p, ptr @hide_evolution_in_other_loops_than_loop, i64 112942}
!90 = !{ptr @no_evolution_in_loop_p, ptr @tree_is_chrec, i64 112942}
!91 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @automatically_generated_chrec_p, i64 345213}
!92 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @get_loop, i64 342516}
!93 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @get_chrec_loop, i64 21363}
!94 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @hide_evolution_in_other_loops_than_loop, i64 21360}
!95 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @build_polynomial_chrec, i64 21360}
!96 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @flow_loop_nested_p, i64 5}
!97 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @initial_condition, i64 1}
!98 = !{ptr @hide_evolution_in_other_loops_than_loop, ptr @fancy_abort, i64 1}
!99 = !{ptr @tree_is_chrec, ptr @automatically_generated_chrec_p, i64 842865}
!100 = !{ptr @chrec_fold_multiply_poly_poly, ptr @get_chrec_loop, i64 8}
!101 = !{ptr @chrec_fold_multiply_poly_poly, ptr @fancy_abort, i64 6}
!102 = !{ptr @chrec_fold_multiply_poly_poly, ptr @chrec_type, i64 12}
!103 = !{ptr @chrec_fold_multiply_poly_poly, ptr @flow_loop_nested_p, i64 7}
!104 = !{ptr @chrec_fold_multiply_poly_poly, ptr @chrec_fold_multiply, i64 17}
!105 = !{ptr @chrec_fold_multiply_poly_poly, ptr @build_polynomial_chrec, i64 8}
!106 = !{ptr @chrec_fold_multiply_poly_poly, ptr @chrec_fold_plus, i64 6}
!107 = !{ptr @chrec_fold_multiply_poly_poly, ptr @build_int_cst, i64 2}
!108 = !{ptr @chrec_apply, ptr @chrec_type, i64 8793}
!109 = !{ptr @chrec_apply, ptr @automatically_generated_chrec_p, i64 17585}
!110 = !{ptr @chrec_apply, ptr @chrec_contains_symbols_defined_in_loop, i64 8791}
!111 = !{ptr @chrec_apply, ptr @build_real_from_int_cst, i64 1}
!112 = !{ptr @chrec_apply, ptr @evolution_function_is_affine_p, i64 8784}
!113 = !{ptr @chrec_apply, ptr @chrec_convert_rhs, i64 8780}
!114 = !{ptr @chrec_apply, ptr @chrec_fold_multiply, i64 8780}
!115 = !{ptr @chrec_apply, ptr @chrec_fold_plus, i64 8780}
!116 = !{ptr @chrec_apply, ptr @tree_int_cst_sgn, i64 1}
!117 = !{ptr @evolution_function_is_affine_p, ptr @evolution_function_is_invariant_p, i64 181901}
!118 = !{ptr @chrec_convert_rhs, ptr @chrec_convert, i64 106778}
!119 = !{ptr @evolution_function_is_invariant_p, ptr @evolution_function_is_invariant_rec_p, i64 188875}
!120 = !{ptr @chrec_replace_initial_condition, ptr @automatically_generated_chrec_p, i64 18927}
!121 = !{ptr @chrec_replace_initial_condition, ptr @chrec_type, i64 13564}
!122 = !{ptr @chrec_replace_initial_condition, ptr @fancy_abort, i64 1}
!123 = !{ptr @chrec_replace_initial_condition, ptr @chrec_replace_initial_condition, i64 2268}
!124 = !{ptr @chrec_replace_initial_condition, ptr @build_polynomial_chrec, i64 2268}
!125 = !{ptr @initial_condition, ptr @automatically_generated_chrec_p, i64 166375}
!126 = !{ptr @evolution_part_in_loop_num, ptr @chrec_component_in_loop_num, i64 180553}
!127 = !{ptr @chrec_component_in_loop_num, ptr @automatically_generated_chrec_p, i64 248442}
!128 = !{ptr @chrec_component_in_loop_num, ptr @get_loop, i64 248436}
!129 = !{ptr @chrec_component_in_loop_num, ptr @get_chrec_loop, i64 171930}
!130 = !{ptr @chrec_component_in_loop_num, ptr @chrec_component_in_loop_num, i64 1}
!131 = !{ptr @chrec_component_in_loop_num, ptr @build_polynomial_chrec, i64 1}
!132 = !{ptr @chrec_component_in_loop_num, ptr @flow_loop_nested_p, i64 2}
!133 = !{ptr @initial_condition_in_loop_num, ptr @chrec_component_in_loop_num, i64 67888}
!134 = !{ptr @chrec_merge, ptr @eq_evolutions_p, i64 84117}
!135 = !{ptr @eq_evolutions_p, ptr @operand_equal_p, i64 3756}
!136 = !{ptr @eq_evolutions_p, ptr @eq_evolutions_p, i64 4497}
!137 = !{ptr @chrec_contains_symbols, ptr @tree_operand_length, i64 9816}
!138 = !{ptr @chrec_contains_symbols, ptr @chrec_contains_symbols, i64 7306}
!139 = !{ptr @chrec_contains_undetermined, ptr @tree_operand_length, i64 723960}
!140 = !{ptr @chrec_contains_undetermined, ptr @chrec_contains_undetermined, i64 408465}
!141 = !{ptr @evolution_function_is_invariant_rec_p, ptr @evolution_function_is_constant_p, i64 211872}
!142 = !{ptr @evolution_function_is_invariant_rec_p, ptr @get_loop, i64 57510}
!143 = !{ptr @evolution_function_is_invariant_rec_p, ptr @expr_invariant_in_loop_p, i64 57510}
!144 = !{ptr @evolution_function_is_invariant_rec_p, ptr @evolution_function_is_invariant_rec_p, i64 6804}
!145 = !{ptr @evolution_function_is_invariant_rec_p, ptr @tree_operand_length, i64 11038}
!146 = !{ptr @evolution_function_is_affine_multivariate_p, ptr @evolution_function_is_invariant_rec_p, i64 3206}
!147 = !{ptr @nb_vars_in_chrec, ptr @initial_condition_in_loop_num, i64 2448}
!148 = !{ptr @convert_affine_scev, ptr @nowrap_type_p, i64 29240}
!149 = !{ptr @convert_affine_scev, ptr @scev_probably_wraps_p, i64 10991}
!150 = !{ptr @convert_affine_scev, ptr @chrec_convert_1, i64 69396}
!151 = !{ptr @convert_affine_scev, ptr @automatically_generated_chrec_p, i64 69395}
!152 = !{ptr @chrec_convert_1, ptr @automatically_generated_chrec_p, i64 943185}
!153 = !{ptr @chrec_convert_1, ptr @chrec_type, i64 942212}
!154 = !{ptr @chrec_convert_1, ptr @evolution_function_is_affine_p, i64 261344}
!155 = !{ptr @chrec_convert_1, ptr @get_chrec_loop, i64 29241}
!156 = !{ptr @chrec_convert_1, ptr @convert_affine_scev, i64 29241}
!157 = !{ptr @chrec_convert_1, ptr @build_polynomial_chrec, i64 20490}
!158 = !{ptr @chrec_convert_1, ptr @fold_convert_loc, i64 240855}
!159 = !{ptr @chrec_convert_1, ptr @fold_build2_stat_loc, i64 1}
!160 = !{ptr @chrec_convert_1, ptr @int_fits_type_p, i64 57799}
!161 = !{ptr @chrec_convert_aggressive, ptr @automatically_generated_chrec_p, i64 46078}
!162 = !{ptr @chrec_convert_aggressive, ptr @chrec_convert_aggressive, i64 16526}
!163 = !{ptr @chrec_convert_aggressive, ptr @chrec_convert, i64 16524}
!164 = !{ptr @chrec_convert_aggressive, ptr @build_polynomial_chrec, i64 8263}
!165 = !{ptr @scev_direction, ptr @evolution_function_is_affine_p, i64 52790}
!166 = !{ptr @scev_direction, ptr @tree_int_cst_sign_bit, i64 52552}
!167 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!168 = !{!"function_entry_count", i64 138327}
!169 = !{i8 0, i8 2}
!170 = !{!"branch_weights", i32 138263, i32 66}
!171 = !{!"branch_weights", i32 138257, i32 7}
!172 = !{!"branch_weights", i32 111229, i32 27029}
!173 = !{!"branch_weights", i32 108196, i32 3034}
!174 = !{!"function_entry_count", i64 4332448}
!175 = !{!"tree-chrec.c:automatically_generated_chrec_p"}
!176 = !{!177, !177, i64 0}
!177 = !{!"any pointer", !178, i64 0}
!178 = !{!"omnipotent char", !179, i64 0}
!179 = !{!"Simple C/C++ TBAA"}
!180 = !{!"branch_weights", i32 129325, i32 4203125}
!181 = !{!"function_entry_count", i64 94}
!182 = !{!"tree-chrec.c:chrec_fold_automatically_generated_operands"}
!183 = !{!"branch_weights", i32 761, i32 7}
!184 = !{!"function_entry_count", i64 873789}
!185 = !{!"function_entry_count", i64 127344}
!186 = !{!"tree-chrec.c:chrec_fold_plus_1"}
!187 = !{!"branch_weights", i32 22544, i32 104802}
!188 = !{!"branch_weights", i32 127345, i32 1}
!189 = !{!"branch_weights", i32 66974, i32 49696, i32 10677, i32 1}
!190 = !{!"branch_weights", i32 48966, i32 3, i32 729, i32 1}
!191 = !{!"branch_weights", i32 729, i32 1}
!192 = !{!178, !178, i64 0}
!193 = !{!"branch_weights", i32 10571, i32 107}
!194 = !{!"branch_weights", i32 60143, i32 6166, i32 11237, i32 1}
!195 = !{!"branch_weights", i32 1, i32 213}
!196 = !{!"branch_weights", i32 11187, i32 51}
!197 = !{!198, !198, i64 0}
!198 = !{!"int", !178, i64 0}
!199 = !{!"branch_weights", i32 71329, i32 1}
!200 = !{!201, !198, i64 8}
!201 = !{!"param_info", !177, i64 0, !198, i64 8, !178, i64 12, !198, i64 16, !198, i64 20, !177, i64 24}
!202 = !{!"branch_weights", i32 71283, i32 47}
!203 = !{!"function_entry_count", i64 2}
!204 = !{!"tree-chrec.c:chrec_fold_plus_poly_poly"}
!205 = !{!"branch_weights", i32 1, i32 3}
!206 = !{!"branch_weights", i32 3, i32 1}
!207 = !{!"branch_weights", i32 9, i32 4, i32 3}
!208 = !{!"function_entry_count", i64 817867}
!209 = !{!"branch_weights", i32 1602, i32 816267}
!210 = !{!"branch_weights", i32 578190, i32 238078}
!211 = !{!"branch_weights", i32 716018, i32 100250}
!212 = !{!"branch_weights", i32 268896, i32 446894}
!213 = !{!"branch_weights", i32 268896, i32 0}
!214 = distinct !{!214, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !{!"branch_weights", i32 268668, i32 229}
!217 = !{!"function_entry_count", i64 117851}
!218 = !{!"tree-chrec.c:build_polynomial_chrec"}
!219 = !{!"branch_weights", i32 58926, i32 -822693820}
!220 = !{!"branch_weights", i32 -1105767567, i32 138585968}
!221 = !{!"branch_weights", i32 -1105767567, i32 28236, i32 28236}
!222 = !{!"branch_weights", i32 -2077122460, i32 441722862, i32 23547}
!223 = !{!"branch_weights", i32 18759, i32 1}
!224 = !{!"branch_weights", i32 94188, i32 1}
!225 = !{!"branch_weights", i32 112946, i32 1}
!226 = !{!"function_entry_count", i64 19275}
!227 = !{!"branch_weights", i32 19276, i32 1}
!228 = !{!"branch_weights", i32 19150, i32 127}
!229 = !{!"function_entry_count", i64 61451}
!230 = !{!"branch_weights", i32 61429, i32 24}
!231 = !{!"branch_weights", i32 61429, i32 1}
!232 = !{!"branch_weights", i32 41468, i32 9427, i32 10536, i32 1}
!233 = !{!"branch_weights", i32 9400, i32 5, i32 24, i32 1}
!234 = !{!"branch_weights", i32 24, i32 1}
!235 = !{!"branch_weights", i32 9423, i32 1}
!236 = !{!"branch_weights", i32 10481, i32 56}
!237 = !{!"branch_weights", i32 32641, i32 19308}
!238 = !{!"branch_weights", i32 27287, i32 5355}
!239 = !{!"branch_weights", i32 21480, i32 14, i32 5795, i32 1}
!240 = !{!"branch_weights", i32 5795, i32 1}
!241 = !{!"branch_weights", i32 27266, i32 9}
!242 = !{!"branch_weights", i32 27262, i32 5}
!243 = !{!"function_entry_count", i64 191551}
!244 = !{!"tree-chrec.c:get_chrec_loop"}
!245 = !{!"function_entry_count", i64 964592}
!246 = !{!"tree-chrec.c:chrec_type"}
!247 = !{!"branch_weights", i32 964593, i32 1}
!248 = !{!"function_entry_count", i64 112947}
!249 = !{!"tree-chrec.c:chrec_zerop"}
!250 = !{!"branch_weights", i32 1, i32 112948}
!251 = !{!"branch_weights", i32 112497, i32 452}
!252 = !{!"function_entry_count", i64 827951}
!253 = !{!"tree-chrec.c:get_loop"}
!254 = !{!255, !177, i64 32}
!255 = !{!"function", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72, !177, i64 80, !177, i64 88, !177, i64 96, !198, i64 104, !198, i64 108, !198, i64 112, !198, i64 116, !198, i64 120, !198, i64 124, !177, i64 128, !198, i64 136, !198, i64 137, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139}
!256 = !{!257, !177, i64 8}
!257 = !{!"loops", !198, i64 0, !177, i64 8, !177, i64 16, !177, i64 24}
!258 = !{!"tree-chrec.c:VEC_loop_p_base_index"}
!259 = !{!"tree-chrec.c:no_evolution_in_loop_p"}
!260 = !{!"branch_weights", i32 112946, i32 4907}
!261 = !{!"function_entry_count", i64 345211}
!262 = !{!"branch_weights", i32 127, i32 1}
!263 = !{!"branch_weights", i32 21531, i32 323682}
!264 = !{!"branch_weights", i32 21529, i32 3}
!265 = !{!"branch_weights", i32 44187009, i32 127}
!266 = !{!"function_entry_count", i64 929211}
!267 = !{!"tree-chrec.c:tree_is_chrec"}
!268 = !{!"branch_weights", i32 86346, i32 842867}
!269 = !{!"function_entry_count", i64 4}
!270 = !{!"tree-chrec.c:chrec_fold_multiply_poly_poly"}
!271 = !{!"branch_weights", i32 1, i32 5}
!272 = !{!"branch_weights", i32 5, i32 1}
!273 = !{!"function_entry_count", i64 8793}
!274 = !{!"branch_weights", i32 8794, i32 1}
!275 = !{!"branch_weights", i32 8788, i32 7}
!276 = !{!"branch_weights", i32 8788, i32 1}
!277 = !{!"branch_weights", i32 1372, i32 7417}
!278 = !{!"branch_weights", i32 1, i32 1372}
!279 = !{!"branch_weights", i32 4, i32 8785}
!280 = !{!"branch_weights", i32 4, i32 1}
!281 = !{!"branch_weights", i32 1, i32 4}
!282 = !{!"function_entry_count", i64 322921}
!283 = !{!"tree-chrec.c:evolution_function_is_affine_p"}
!284 = !{!"branch_weights", i32 1, i32 322922}
!285 = !{!"branch_weights", i32 91072, i32 231851}
!286 = !{!"branch_weights", i32 241, i32 90832}
!287 = !{!"branch_weights", i32 254, i32 90579}
!288 = !{!"function_entry_count", i64 106778}
!289 = !{!"branch_weights", i32 -1882094655, i32 209699683, i32 24560}
!290 = !{!"function_entry_count", i64 0}
!291 = !{!"tree-chrec.c:chrec_evaluate"}
!292 = distinct !{!292, !215}
!293 = !{!"function_entry_count", i64 188875}
!294 = !{!"tree-chrec.c:tree_fold_binomial"}
!295 = !{!296, !296, i64 0}
!296 = !{!"long", !178, i64 0}
!297 = distinct !{!297, !215}
!298 = !{!"function_entry_count", i64 18927}
!299 = !{!"branch_weights", i32 6783, i32 12146}
!300 = !{!"branch_weights", i32 6783, i32 1}
!301 = !{!"branch_weights", i32 2269, i32 4515}
!302 = !{!"function_entry_count", i64 143460}
!303 = !{!"branch_weights", i32 57177, i32 1}
!304 = !{!"branch_weights", i32 13078, i32 73207}
!305 = !{!"branch_weights", i32 29107, i32 57177}
!306 = !{!"function_entry_count", i64 180553}
!307 = !{!"function_entry_count", i64 248441}
!308 = !{!"tree-chrec.c:chrec_component_in_loop_num"}
!309 = !{!"branch_weights", i32 45032, i32 1}
!310 = !{!"branch_weights", i32 140770, i32 62641}
!311 = !{!"branch_weights", i32 140770, i32 1}
!312 = !{!"branch_weights", i32 65569, i32 75202}
!313 = !{!"branch_weights", i32 1, i32 140770}
!314 = !{!"branch_weights", i32 158378, i32 45032}
!315 = !{!"branch_weights", i32 2321, i32 60321}
!316 = !{!"function_entry_count", i64 67888}
!317 = distinct !{!317, !215}
!318 = !{!"function_entry_count", i64 398229}
!319 = !{!"branch_weights", i32 1652961958, i32 -1780765403}
!320 = !{!"branch_weights", i32 30033, i32 -686922807}
!321 = !{!"branch_weights", i32 156149, i32 84120}
!322 = !{!"branch_weights", i32 1, i32 84120}
!323 = !{!"branch_weights", i32 50501, i32 33620}
!324 = !{!"function_entry_count", i64 90109}
!325 = !{!"branch_weights", i32 90110, i32 -235061246}
!326 = !{!"branch_weights", i32 70657, i32 19454}
!327 = !{!"branch_weights", i32 35228, i32 35430}
!328 = !{!"branch_weights", i32 28705, i32 3756, i32 2971}
!329 = !{!"branch_weights", i32 2971, i32 1}
!330 = !{!"branch_weights", i32 1444, i32 1528}
!331 = !{!"tree-chrec.c:is_multivariate_chrec_rec"}
!332 = !{!"function_entry_count", i64 9872}
!333 = !{!"branch_weights", i32 1, i32 9873}
!334 = !{!"branch_weights", i32 -462325975, i32 19126118, i32 390287, i32 390245, i32 390208, i32 390169, i32 390130, i32 390090}
!335 = !{!"branch_weights", i32 7261, i32 2494}
!336 = !{!"branch_weights", i32 7261, i32 0}
!337 = distinct !{!337, !215}
!338 = !{!"branch_weights", i32 7191, i32 71}
!339 = !{!"function_entry_count", i64 1458006}
!340 = !{!"tree-chrec.c:tree_operand_length"}
!341 = !{!"branch_weights", i32 1, i32 1458007}
!342 = !{!"function_entry_count", i64 1144834}
!343 = !{!"branch_weights", i32 419753, i32 725083}
!344 = !{!"branch_weights", i32 1122, i32 723962}
!345 = !{!"branch_weights", i32 408466, i32 315496}
!346 = !{!"branch_weights", i32 408466, i32 0}
!347 = distinct !{!347, !215}
!348 = !{!"branch_weights", i32 408466, i32 1}
!349 = !{!"function_entry_count", i64 203421}
!350 = !{!"tree-chrec.c:evolution_function_is_invariant_rec_p"}
!351 = !{!"branch_weights", i32 52219, i32 98985}
!352 = !{!"branch_weights", i32 42749, i32 9471}
!353 = !{!"branch_weights", i32 1, i32 42749}
!354 = !{!"branch_weights", i32 254, i32 42496}
!355 = !{!"branch_weights", i32 1520, i32 8205}
!356 = !{!"branch_weights", i32 1520, i32 1}
!357 = !{!"branch_weights", i32 0, i32 52219}
!358 = !{!"branch_weights", i32 1924, i32 5058, i32 1225}
!359 = !{!"branch_weights", i32 1, i32 5058}
!360 = !{!"tree-chrec.c:evolution_function_is_constant_p"}
!361 = !{!"branch_weights", i32 1, i32 203422}
!362 = !{!"function_entry_count", i64 3054}
!363 = !{!"branch_weights", i32 1, i32 3055}
!364 = !{!"branch_weights", i32 1605, i32 1451}
!365 = !{!"branch_weights", i32 1, i32 1605}
!366 = !{!"function_entry_count", i64 1238}
!367 = !{!"branch_weights", i32 1, i32 1239}
!368 = !{!"branch_weights", i32 1239, i32 1}
!369 = !{!"function_entry_count", i64 2468}
!370 = !{!"branch_weights", i32 1, i32 127}
!371 = !{!"branch_weights", i32 1235, i32 1235}
!372 = !{!"branch_weights", i32 127, i32 315905}
!373 = !{!"function_entry_count", i64 39057}
!374 = !{!"branch_weights", i32 1145822500, i32 176329859, i32 33850}
!375 = !{!"branch_weights", i32 9818, i32 29241}
!376 = !{!"branch_weights", i32 28073, i32 10986}
!377 = !{!"branch_weights", i32 20, i32 10967}
!378 = !{!"branch_weights", i32 20, i32 1}
!379 = !{!"branch_weights", i32 5223, i32 5745}
!380 = !{!"branch_weights", i32 5209, i32 15}
!381 = !{!"branch_weights", i32 91920750, i32 2055562898}
!382 = !{!"branch_weights", i32 874, i32 4360}
!383 = !{!"branch_weights", i32 1, i32 34699}
!384 = !{!"branch_weights", i32 34699, i32 1}
!385 = !{!"branch_weights", i32 28941, i32 5759}
!386 = !{!"branch_weights", i32 1368, i32 4392}
!387 = !{!"function_entry_count", i64 943185}
!388 = !{!"tree-chrec.c:chrec_convert_1"}
!389 = !{!"branch_weights", i32 942214, i32 973}
!390 = !{!"branch_weights", i32 680870, i32 261345}
!391 = !{!"branch_weights", i32 232105, i32 29241}
!392 = !{!"branch_weights", i32 8751, i32 20491}
!393 = !{!394, !198, i64 0}
!394 = !{!"loop", !198, i64 0, !198, i64 4, !177, i64 8, !177, i64 16, !395, i64 24, !198, i64 32, !198, i64 36, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72, !396, i64 80, !396, i64 96, !178, i64 112, !178, i64 113, !198, i64 116, !177, i64 120, !177, i64 128, !178, i64 136, !177, i64 144}
!395 = !{!"lpt_decision", !198, i64 0, !198, i64 4}
!396 = !{!"", !296, i64 0, !296, i64 8}
!397 = !{!"branch_weights", i32 16093, i32 224763}
!398 = !{!"branch_weights", i32 199631702, i32 -1529161117}
!399 = !{!"branch_weights", i32 15043, i32 88}
!400 = !{!"branch_weights", i32 15034, i32 10}
!401 = !{!"branch_weights", i32 4, i32 15031}
!402 = !{!"branch_weights", i32 81, i32 239}
!403 = !{!"branch_weights", i32 58191, i32 182665}
!404 = !{!"branch_weights", i32 57800, i32 392}
!405 = !{!"branch_weights", i32 1, i32 57800}
!406 = !{!"function_entry_count", i64 46078}
!407 = !{!"branch_weights", i32 46079, i32 1}
!408 = !{!"branch_weights", i32 8279, i32 37801}
!409 = !{!"branch_weights", i32 15, i32 8265}
!410 = !{!"branch_weights", i32 15249025, i32 17034066, i32 3905}
!411 = !{!"branch_weights", i32 8265, i32 1}
!412 = !{!"function_entry_count", i64 52790}
!413 = !{!"branch_weights", i32 237, i32 52555}
!414 = !{!"branch_weights", i32 52555, i32 1}
!415 = !{!"tree-chrec.c:operator_is_linear"}
