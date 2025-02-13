; ModuleID = 'tree-affine.c'
source_filename = "tree-affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.double_int = type { i64, i64 }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.name_expansion = type { %struct.affine_tree_combination, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str = private unnamed_addr constant [14 x i8] c"tree-affine.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"{\0A  type = \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0A  offset = \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A  elements = {\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"    [%d] = \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c", \0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\0A  }\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\0A  rest = \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { i64, i64 } @double_int_ext_for_comb(i64 %0, i64 %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1023
  %8 = tail call { i64, i64 } @double_int_sext(i64 %0, i64 %1, i32 noundef %7) #12
  ret { i64, i64 } %8
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_const(ptr nocapture noundef %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  tail call fastcc void @aff_combination_zero(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %6 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %2, i64 %3, ptr noundef %0) #13
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %5, align 8, !tbaa.struct !14
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  store i64 %8, ptr %9, align 8, !tbaa.struct !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @aff_combination_zero(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  store ptr %1, ptr %0, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %4 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #13
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %3, align 8, !tbaa.struct !14
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  store i64 %6, ptr %7, align 8, !tbaa.struct !16
  %8 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %0) unnamed_addr #5 {
  %2 = ashr i64 %0, 63
  %3 = insertvalue { i64, i64 } poison, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @aff_combination_elt(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  tail call fastcc void @aff_combination_zero(ptr noundef %0, ptr noundef %1) #13
  %4 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  store i32 1, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3
  store ptr %2, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 0, i32 1
  %7 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %6, align 8, !tbaa.struct !14
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 0, i32 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa.struct !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_scale(ptr nocapture noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
  %4 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %1, i64 %2, ptr noundef %0) #13
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  %7 = tail call fastcc zeroext i8 @double_int_one_p(i64 %5, i64 %6) #13, !range !21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %5, i64 %6) #13, !range !21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @aff_combination_zero(ptr noundef nonnull %0, ptr noundef %13) #13
  br label %80

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = tail call { i64, i64 } @double_int_mul(i64 %5, i64 %6, i64 %16, i64 %18) #12
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  %22 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %20, i64 %21, ptr noundef %0) #13
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  store i64 %23, ptr %15, align 8, !tbaa.struct !14
  store i64 %24, ptr %17, align 8, !tbaa.struct !16
  %25 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %14, %51
  %29 = phi i64 [ %53, %51 ], [ 0, %14 ]
  %30 = phi i32 [ %52, %51 ], [ 0, %14 ]
  %31 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %29, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, ptr %31, i64 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = tail call { i64, i64 } @double_int_mul(i64 %5, i64 %6, i64 %32, i64 %34) #12
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  %38 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %36, i64 %37, ptr noundef nonnull %0) #13
  %39 = extractvalue { i64, i64 } %38, 0
  %40 = extractvalue { i64, i64 } %38, 1
  %41 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %39, i64 %40) #13, !range !21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %29
  %45 = zext i32 %30 to i64
  %46 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %45
  %47 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %45, i32 1
  store i64 %39, ptr %47, align 8, !tbaa.struct !14
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  store i64 %40, ptr %48, align 8, !tbaa.struct !16
  %49 = load ptr, ptr %44, align 8, !tbaa !19
  store ptr %49, ptr %46, align 8, !tbaa !19
  %50 = add i32 %30, 1
  br label %51

51:                                               ; preds = %28, %43
  %52 = phi i32 [ %50, %43 ], [ %30, %28 ]
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %25, align 8, !tbaa !17
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %57, !llvm.loop !22

57:                                               ; preds = %51, %14
  %58 = phi i32 [ 0, %14 ], [ %52, %51 ]
  store i32 %58, ptr %25, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %80, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %0, align 8, !tbaa !6
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %68 [
    i16 10, label %66
    i16 12, label %66
  ]

66:                                               ; preds = %62, %62
  %67 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  br label %68

68:                                               ; preds = %62, %66
  %69 = phi ptr [ %67, %66 ], [ %63, %62 ]
  %70 = icmp ult i32 %58, 8
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = zext nneg i32 %58 to i64
  %73 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %72, i32 1
  store i64 %5, ptr %73, align 8, !tbaa.struct !14
  %74 = getelementptr inbounds i8, ptr %73, i64 8
  store i64 %6, ptr %74, align 8, !tbaa.struct !16
  %75 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %72
  store ptr %60, ptr %75, align 8, !tbaa !19
  store ptr null, ptr %59, align 8, !tbaa !18
  %76 = add nuw nsw i32 %58, 1
  store i32 %76, ptr %25, align 8, !tbaa !17
  br label %80

77:                                               ; preds = %68
  %78 = tail call ptr @double_int_to_tree(ptr noundef %69, i64 %5, i64 %6) #12
  %79 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %69, ptr noundef nonnull %60, ptr noundef %78) #12
  store ptr %79, ptr %59, align 8, !tbaa !18
  br label %80

80:                                               ; preds = %57, %77, %71, %3, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_one_p(i64 %0, i64 %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, 1
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_add_elt(ptr nocapture noundef %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %2, i64 %3, ptr noundef %0) #13
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = extractvalue { i64, i64 } %5, 1
  %8 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %6, i64 %7) #13, !range !21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %95

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %65, label %19

14:                                               ; preds = %19
  %15 = add nuw nsw i64 %20, 1
  %16 = load i32, ptr %11, align 8, !tbaa !17
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %63, !llvm.loop !25

19:                                               ; preds = %10, %14
  %20 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = tail call i32 @operand_equal_p(ptr noundef %22, ptr noundef %1, i32 noundef 0) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %14, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %20, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %26, i64 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = tail call { i64, i64 } @double_int_add(i64 %27, i64 %29, i64 %6, i64 %7) #12
  %31 = extractvalue { i64, i64 } %30, 0
  %32 = extractvalue { i64, i64 } %30, 1
  %33 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %31, i64 %32, ptr noundef nonnull %0) #13
  %34 = extractvalue { i64, i64 } %33, 0
  %35 = extractvalue { i64, i64 } %33, 1
  %36 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %34, i64 %35) #13, !range !21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i64 %34, ptr %26, align 8, !tbaa.struct !14
  store i64 %35, ptr %28, align 8, !tbaa.struct !16
  br label %95

39:                                               ; preds = %25
  %40 = load i32, ptr %11, align 8, !tbaa !17
  %41 = add i32 %40, -1
  store i32 %41, ptr %11, align 8, !tbaa !17
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %43, i64 24, i1 false), !tbaa.struct !26
  %44 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %95, label %47

47:                                               ; preds = %39
  %48 = icmp eq i32 %41, 7
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #12
  %50 = load i32, ptr %11, align 8, !tbaa !17
  %51 = load ptr, ptr %44, align 8, !tbaa !18
  br label %52

52:                                               ; preds = %47, %49
  %53 = phi ptr [ %45, %47 ], [ %51, %49 ]
  %54 = phi i32 [ 7, %47 ], [ %50, %49 ]
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %55, i32 1
  %57 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %58 = extractvalue { i64, i64 } %57, 0
  %59 = extractvalue { i64, i64 } %57, 1
  store i64 %58, ptr %56, align 8, !tbaa.struct !14
  %60 = getelementptr inbounds i8, ptr %56, i64 8
  store i64 %59, ptr %60, align 8, !tbaa.struct !16
  %61 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %55
  store ptr %53, ptr %61, align 8, !tbaa !19
  store ptr null, ptr %44, align 8, !tbaa !18
  %62 = add i32 %54, 1
  store i32 %62, ptr %11, align 8, !tbaa !17
  br label %95

63:                                               ; preds = %14
  %64 = icmp ult i32 %16, 8
  br i1 %64, label %65, label %72

65:                                               ; preds = %10, %63
  %66 = phi i32 [ %16, %63 ], [ 0, %10 ]
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %67, i32 1
  store i64 %6, ptr %68, align 8, !tbaa.struct !14
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  store i64 %7, ptr %69, align 8, !tbaa.struct !16
  %70 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %67
  store ptr %1, ptr %70, align 8, !tbaa !19
  %71 = add nuw nsw i32 %66, 1
  store i32 %71, ptr %11, align 8, !tbaa !17
  br label %95

72:                                               ; preds = %63
  %73 = load ptr, ptr %0, align 8, !tbaa !6
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i16
  switch i16 %75, label %78 [
    i16 10, label %76
    i16 12, label %76
  ]

76:                                               ; preds = %72, %72
  %77 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  br label %78

78:                                               ; preds = %72, %76
  %79 = phi ptr [ %77, %76 ], [ %73, %72 ]
  %80 = tail call fastcc zeroext i8 @double_int_one_p(i64 %6, i64 %7) #13, !range !21
  %81 = icmp eq i8 %80, 0
  %82 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %79, ptr noundef %1) #12
  br i1 %81, label %83, label %86

83:                                               ; preds = %78
  %84 = tail call ptr @double_int_to_tree(ptr noundef %79, i64 %6, i64 %7) #12
  %85 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %79, ptr noundef %82, ptr noundef %84) #12
  br label %86

86:                                               ; preds = %78, %83
  %87 = phi ptr [ %85, %83 ], [ %82, %78 ]
  %88 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !18
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %79, ptr noundef nonnull %89, ptr noundef %87) #12
  br label %93

93:                                               ; preds = %86, %91
  %94 = phi ptr [ %92, %91 ], [ %87, %86 ]
  store ptr %94, ptr %88, align 8, !tbaa !18
  br label %95

95:                                               ; preds = %38, %52, %39, %4, %93, %65
  ret void
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %6 = load i64, ptr %5, align 8
  tail call fastcc void @aff_combination_add_cst(ptr noundef %0, i64 %4, i64 %6) #13
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2, %10
  %11 = phi i64 [ %18, %10 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %11, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, ptr %14, i64 0, i32 1
  %17 = load i64, ptr %16, align 8
  tail call void @aff_combination_add_elt(ptr noundef %0, ptr noundef %13, i64 %15, i64 %17) #13
  %18 = add nuw nsw i64 %11, 1
  %19 = load i32, ptr %7, align 8, !tbaa !17
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %10, label %22, !llvm.loop !27

22:                                               ; preds = %10, %2
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  tail call void @aff_combination_add_elt(ptr noundef %0, ptr noundef nonnull %24, i64 %28, i64 %29) #13
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @aff_combination_add_cst(ptr nocapture noundef %0, i64 %1, i64 %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = tail call { i64, i64 } @double_int_add(i64 %5, i64 %7, i64 %1, i64 %2) #12
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  %11 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %9, i64 %10, ptr noundef %0) #13
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %4, align 8, !tbaa.struct !14
  store i64 %13, ptr %6, align 8, !tbaa.struct !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_convert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1023
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = tail call ptr @aff_combination_to_tree(ptr noundef nonnull %0) #13
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %12) #12
  tail call void @tree_to_aff_combination(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %0) #13
  br label %83

14:                                               ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %21 [
    i16 10, label %23
    i16 12, label %23
  ]

21:                                               ; preds = %18
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %16) #12
  store ptr %22, ptr %15, align 8, !tbaa !18
  br label %23

23:                                               ; preds = %18, %18, %21, %14
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %7, align 4
  %26 = xor i32 %25, %24
  %27 = and i32 %26, 1023
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %83, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %31, i64 %33, ptr noundef nonnull %0) #13
  %35 = extractvalue { i64, i64 } %34, 0
  %36 = extractvalue { i64, i64 } %34, 1
  store i64 %35, ptr %30, align 8, !tbaa.struct !14
  store i64 %36, ptr %32, align 8, !tbaa.struct !16
  %37 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, ptr %37, align 8, !tbaa !17
  br label %70

41:                                               ; preds = %29, %62
  %42 = phi i64 [ %64, %62 ], [ 0, %29 ]
  %43 = phi i32 [ %63, %62 ], [ 0, %29 ]
  %44 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %42, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, ptr %44, i64 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %45, i64 %47, ptr noundef nonnull %0) #13
  %49 = extractvalue { i64, i64 } %48, 0
  %50 = extractvalue { i64, i64 } %48, 1
  %51 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %49, i64 %50) #13, !range !21
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %42
  %55 = zext i32 %43 to i64
  %56 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %55
  %57 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %55, i32 1
  store i64 %49, ptr %57, align 8, !tbaa.struct !14
  %58 = getelementptr inbounds i8, ptr %57, i64 8
  store i64 %50, ptr %58, align 8, !tbaa.struct !16
  %59 = load ptr, ptr %54, align 8, !tbaa !19
  %60 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef %59) #12
  store ptr %60, ptr %56, align 8, !tbaa !19
  %61 = add i32 %43, 1
  br label %62

62:                                               ; preds = %41, %53
  %63 = phi i32 [ %61, %53 ], [ %43, %41 ]
  %64 = add nuw nsw i64 %42, 1
  %65 = load i32, ptr %37, align 8, !tbaa !17
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %41, label %68, !llvm.loop !28

68:                                               ; preds = %62
  store i32 %63, ptr %37, align 8, !tbaa !17
  %69 = icmp ult i32 %63, 8
  br i1 %69, label %70, label %83

70:                                               ; preds = %40, %68
  %71 = phi i32 [ 0, %40 ], [ %63, %68 ]
  %72 = load ptr, ptr %15, align 8, !tbaa !18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = zext nneg i32 %71 to i64
  %76 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %75, i32 1
  %77 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %78 = extractvalue { i64, i64 } %77, 0
  %79 = extractvalue { i64, i64 } %77, 1
  store i64 %78, ptr %76, align 8, !tbaa.struct !14
  %80 = getelementptr inbounds i8, ptr %76, i64 8
  store i64 %79, ptr %80, align 8, !tbaa.struct !16
  %81 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %75
  store ptr %72, ptr %81, align 8, !tbaa !19
  store ptr null, ptr %15, align 8, !tbaa !18
  %82 = add nuw nsw i32 %71, 1
  store i32 %82, ptr %37, align 8, !tbaa !17
  br label %83

83:                                               ; preds = %68, %70, %74, %23, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @aff_combination_to_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = load i64, ptr %2, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %9 [
    i16 10, label %7
    i16 12, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !17
  %13 = icmp eq i32 %12, 8
  %14 = icmp eq ptr %4, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 420, ptr noundef nonnull @.str.1) #12
  %17 = load i32, ptr %11, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %9, %16
  %19 = phi i32 [ %12, %9 ], [ %17, %16 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %31, %21 ], [ 0, %18 ]
  %23 = phi ptr [ %30, %21 ], [ %4, %18 ]
  %24 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %22, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %26, i64 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = tail call fastcc ptr @add_elt_to_tree(ptr noundef %23, ptr noundef nonnull %2, ptr noundef %25, i64 %27, i64 %29, ptr noundef nonnull %0) #13
  %31 = add nuw nsw i64 %22, 1
  %32 = load i32, ptr %11, align 8, !tbaa !17
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %21, label %35, !llvm.loop !29

35:                                               ; preds = %21, %18
  %36 = phi ptr [ %4, %18 ], [ %30, %21 ]
  %37 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = tail call zeroext i8 @double_int_negative_p(i64 %38, i64 %40) #12
  %42 = icmp eq i8 %41, 0
  %43 = load i64, ptr %37, align 8
  %44 = load i64, ptr %39, align 8
  br i1 %42, label %49, label %45

45:                                               ; preds = %35
  %46 = tail call { i64, i64 } @double_int_neg(i64 %43, i64 %44) #12
  %47 = extractvalue { i64, i64 } %46, 0
  %48 = extractvalue { i64, i64 } %46, 1
  br label %49

49:                                               ; preds = %35, %45
  %50 = phi i64 [ -1, %45 ], [ 1, %35 ]
  %51 = phi i64 [ %47, %45 ], [ %43, %35 ]
  %52 = phi i64 [ %48, %45 ], [ %44, %35 ]
  %53 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %50) #13
  %54 = extractvalue { i64, i64 } %53, 1
  %55 = extractvalue { i64, i64 } %53, 0
  %56 = tail call ptr @double_int_to_tree(ptr noundef %10, i64 %51, i64 %52) #12
  %57 = tail call fastcc ptr @add_elt_to_tree(ptr noundef %36, ptr noundef nonnull %2, ptr noundef %56, i64 %55, i64 %54, ptr noundef nonnull %0) #13
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_to_aff_combination(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %11 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #12
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %83 [
    i16 23, label %14
    i16 66, label %18
    i16 63, label %24
    i16 64, label %24
    i16 65, label %36
    i16 79, label %48
    i16 90, label %54
    i16 121, label %60
  ]

14:                                               ; preds = %3
  %15 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %11) #12
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  tail call void @aff_combination_const(ptr noundef %2, ptr noundef %1, i64 %16, i64 %17) #13
  br label %84

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !30
  tail call void @tree_to_aff_combination(ptr noundef %20, ptr noundef %1, ptr noundef %2) #13
  %21 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  call void @tree_to_aff_combination(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %4) #13
  call void @aff_combination_add(ptr noundef %2, ptr noundef nonnull %4) #13
  br label %84

24:                                               ; preds = %3, %3
  %25 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  tail call void @tree_to_aff_combination(ptr noundef %26, ptr noundef %1, ptr noundef %2) #13
  %27 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  call void @tree_to_aff_combination(ptr noundef %28, ptr noundef %1, ptr noundef nonnull %4) #13
  %29 = and i64 %12, 65535
  %30 = icmp eq i64 %29, 64
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #13
  %33 = extractvalue { i64, i64 } %32, 0
  %34 = extractvalue { i64, i64 } %32, 1
  call void @aff_combination_scale(ptr noundef nonnull %4, i64 %33, i64 %34) #13
  br label %35

35:                                               ; preds = %31, %24
  call void @aff_combination_add(ptr noundef %2, ptr noundef nonnull %4) #13
  br label %84

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %83

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  tail call void @tree_to_aff_combination(ptr noundef %44, ptr noundef %1, ptr noundef %2) #13
  %45 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %38) #12
  %46 = extractvalue { i64, i64 } %45, 0
  %47 = extractvalue { i64, i64 } %45, 1
  tail call void @aff_combination_scale(ptr noundef %2, i64 %46, i64 %47) #13
  br label %84

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  tail call void @tree_to_aff_combination(ptr noundef %50, ptr noundef %1, ptr noundef %2) #13
  %51 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #13
  %52 = extractvalue { i64, i64 } %51, 0
  %53 = extractvalue { i64, i64 } %51, 1
  tail call void @aff_combination_scale(ptr noundef %2, i64 %52, i64 %53) #13
  br label %84

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  tail call void @tree_to_aff_combination(ptr noundef %56, ptr noundef %1, ptr noundef %2) #13
  %57 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef -1) #13
  %58 = extractvalue { i64, i64 } %57, 0
  %59 = extractvalue { i64, i64 } %57, 1
  tail call void @aff_combination_scale(ptr noundef %2, i64 %58, i64 %59) #13
  tail call fastcc void @aff_combination_add_cst(ptr noundef %2, i64 %58, i64 %59) #13
  br label %84

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !30
  %63 = call ptr @get_inner_reference(ptr noundef %62, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 0) #12
  %64 = load i64, ptr %6, align 8, !tbaa !15
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %60
  %68 = ashr exact i64 %64, 3
  %69 = call fastcc i64 @uhwi_to_double_int(i64 noundef %68) #13
  call void @aff_combination_const(ptr noundef %2, ptr noundef %1, i64 %69, i64 0) #13
  %70 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %63) #12
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 121
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %76 = extractvalue { i64, i64 } %75, 0
  %77 = extractvalue { i64, i64 } %75, 1
  call void @aff_combination_add_elt(ptr noundef %2, ptr noundef nonnull %70, i64 %76, i64 %77) #13
  br label %79

78:                                               ; preds = %67
  call void @tree_to_aff_combination(ptr noundef nonnull %70, ptr noundef %1, ptr noundef nonnull %4) #13
  call void @aff_combination_add(ptr noundef %2, ptr noundef nonnull %4) #13
  br label %79

79:                                               ; preds = %78, %74
  %80 = load ptr, ptr %5, align 8, !tbaa !24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  call void @tree_to_aff_combination(ptr noundef nonnull %80, ptr noundef %1, ptr noundef nonnull %4) #13
  call void @aff_combination_add(ptr noundef %2, ptr noundef nonnull %4) #13
  br label %84

83:                                               ; preds = %3, %60, %36
  call void @aff_combination_elt(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %11) #13
  br label %84

84:                                               ; preds = %79, %82, %83, %54, %48, %42, %35, %18, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @uhwi_to_double_int(i64 noundef %0) unnamed_addr #5 {
  ret i64 %0
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_elt_to_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = load i64, ptr %1, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %11 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %6 ]
  %13 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %3, i64 %4, ptr noundef %5) #13
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef %2) #12
  %17 = tail call fastcc zeroext i8 @double_int_one_p(i64 %14, i64 %15) #13, !range !21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %11
  %20 = icmp eq ptr %0, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %16) #12
  br label %74

23:                                               ; preds = %19
  %24 = load i64, ptr %1, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %28 [
    i16 10, label %26
    i16 12, label %26
  ]

26:                                               ; preds = %23, %23
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %16) #12
  br label %74

28:                                               ; preds = %23
  %29 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %16) #12
  br label %74

30:                                               ; preds = %11
  %31 = tail call fastcc zeroext i8 @double_int_minus_one_p(i64 %14, i64 %15) #13, !range !21
  %32 = icmp eq i8 %31, 0
  %33 = icmp eq ptr %0, null
  br i1 %32, label %46, label %34

34:                                               ; preds = %30
  br i1 %33, label %35, label %38

35:                                               ; preds = %34
  %36 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %16) #12
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %36) #12
  br label %74

38:                                               ; preds = %34
  %39 = load i64, ptr %1, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %44 [
    i16 10, label %41
    i16 12, label %41
  ]

41:                                               ; preds = %38, %38
  %42 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %16) #12
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %42) #12
  br label %74

44:                                               ; preds = %38
  %45 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %16) #12
  br label %74

46:                                               ; preds = %30
  br i1 %33, label %47, label %51

47:                                               ; preds = %46
  %48 = tail call ptr @double_int_to_tree(ptr noundef %12, i64 %14, i64 %15) #12
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %12, ptr noundef %16, ptr noundef %48) #12
  %50 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef %49) #12
  br label %74

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @double_int_negative_p(i64 %14, i64 %15) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = tail call { i64, i64 } @double_int_neg(i64 %14, i64 %15) #12
  %56 = extractvalue { i64, i64 } %55, 0
  %57 = extractvalue { i64, i64 } %55, 1
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi i32 [ 64, %54 ], [ 63, %51 ]
  %60 = phi i64 [ %56, %54 ], [ %14, %51 ]
  %61 = phi i64 [ %57, %54 ], [ %15, %51 ]
  %62 = tail call ptr @double_int_to_tree(ptr noundef %12, i64 %60, i64 %61) #12
  %63 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %12, ptr noundef %16, ptr noundef %62) #12
  %64 = load i64, ptr %1, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %72 [
    i16 10, label %66
    i16 12, label %66
  ]

66:                                               ; preds = %58, %58
  br i1 %53, label %69, label %67

67:                                               ; preds = %66
  %68 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %12, ptr noundef %63) #12
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi ptr [ %68, %67 ], [ %63, %66 ]
  %71 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %70) #12
  br label %74

72:                                               ; preds = %58
  %73 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %59, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %63) #12
  br label %74

74:                                               ; preds = %72, %69, %47, %44, %41, %35, %28, %26, %21
  %75 = phi ptr [ %27, %26 ], [ %29, %28 ], [ %22, %21 ], [ %43, %41 ], [ %45, %44 ], [ %37, %35 ], [ %71, %69 ], [ %73, %72 ], [ %50, %47 ]
  ret ptr %75
}

; Function Attrs: optsize
declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_minus_one_p(i64 %0, i64 %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, -1
  %4 = icmp eq i64 %1, -1
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unshare_aff_combination(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call ptr @unshare_expr(ptr noundef %8) #12
  store ptr %9, ptr %7, align 8, !tbaa !19
  %10 = add nuw nsw i64 %6, 1
  %11 = load i32, ptr %2, align 8, !tbaa !17
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %5, label %14, !llvm.loop !31

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @unshare_expr(ptr noundef nonnull %16) #12
  store ptr %19, ptr %15, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @aff_combination_remove_elt(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !17
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %8
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !26
  br label %12

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = zext i32 %5 to i64
  %18 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %17, i32 1
  %19 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = extractvalue { i64, i64 } %19, 1
  store i64 %20, ptr %18, align 8, !tbaa.struct !14
  %22 = getelementptr inbounds i8, ptr %18, i64 8
  store i64 %21, ptr %22, align 8, !tbaa.struct !16
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %17
  store ptr %14, ptr %23, align 8, !tbaa !19
  store ptr null, ptr %13, align 8, !tbaa !18
  store i32 %4, ptr %3, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_mult(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %1, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, %6
  %11 = and i32 %10, 1023
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #12
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi ptr [ %4, %3 ], [ %14, %13 ]
  tail call fastcc void @aff_combination_zero(ptr noundef %2, ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %28, %20 ], [ 0, %15 ]
  %22 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %21
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %21, i32 1
  %24 = load ptr, ptr %22, align 8, !tbaa !19
  %25 = load i64, ptr %23, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %23, i64 0, i32 1
  %27 = load i64, ptr %26, align 8
  tail call fastcc void @aff_combination_add_product(ptr noundef nonnull %0, i64 %25, i64 %27, ptr noundef %24, ptr noundef %2) #13
  %28 = add nuw nsw i64 %21, 1
  %29 = load i32, ptr %17, align 8, !tbaa !17
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %20, label %32, !llvm.loop !32

32:                                               ; preds = %20, %15
  %33 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 1) #13
  %38 = extractvalue { i64, i64 } %37, 0
  %39 = extractvalue { i64, i64 } %37, 1
  tail call fastcc void @aff_combination_add_product(ptr noundef nonnull %0, i64 %38, i64 %39, ptr noundef nonnull %34, ptr noundef %2) #13
  br label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %44 = load i64, ptr %43, align 8
  tail call fastcc void @aff_combination_add_product(ptr noundef nonnull %0, i64 %42, i64 %44, ptr noundef null, ptr noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @aff_combination_add_product(ptr nocapture noundef readonly %0, i64 %1, i64 %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ 0, %9 ], [ %29, %20 ]
  %13 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  br i1 %10, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %3) #12
  %19 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %17, ptr noundef %14, ptr noundef %18) #12
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi ptr [ %19, %15 ], [ %14, %11 ]
  %22 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %12, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %22, i64 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = tail call { i64, i64 } @double_int_mul(i64 %1, i64 %2, i64 %23, i64 %25) #12
  %27 = extractvalue { i64, i64 } %26, 0
  %28 = extractvalue { i64, i64 } %26, 1
  tail call void @aff_combination_add_elt(ptr noundef %4, ptr noundef %21, i64 %27, i64 %28) #13
  %29 = add nuw nsw i64 %12, 1
  %30 = load i32, ptr %6, align 8, !tbaa !17
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %11, label %33, !llvm.loop !33

33:                                               ; preds = %20, %5
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %3, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %3) #12
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %41, ptr noundef nonnull %35, ptr noundef %42) #12
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi ptr [ %43, %39 ], [ %35, %37 ]
  tail call void @aff_combination_add_elt(ptr noundef %4, ptr noundef %45, i64 %1, i64 %2) #13
  br label %46

46:                                               ; preds = %44, %33
  %47 = icmp eq ptr %3, null
  %48 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = tail call { i64, i64 } @double_int_mul(i64 %1, i64 %2, i64 %49, i64 %51) #12
  %53 = extractvalue { i64, i64 } %52, 0
  %54 = extractvalue { i64, i64 } %52, 1
  br i1 %47, label %56, label %55

55:                                               ; preds = %46
  tail call void @aff_combination_add_elt(ptr noundef %4, ptr noundef nonnull %3, i64 %53, i64 %54) #13
  br label %57

56:                                               ; preds = %46
  tail call fastcc void @aff_combination_add_cst(ptr noundef %4, i64 %53, i64 %54) #13
  br label %57

57:                                               ; preds = %56, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @aff_combination_expand(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.affine_tree_combination, align 8
  %4 = alloca %struct.affine_tree_combination, align 8
  %5 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  call fastcc void @aff_combination_zero(ptr noundef nonnull %3, ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %162, label %10

10:                                               ; preds = %2, %157
  %11 = phi i64 [ %158, %157 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 116
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1023
  %23 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = icmp ult i32 %22, %29
  %31 = select i1 %30, ptr %13, ptr %24
  %32 = load i64, ptr %31, align 8
  br label %33

33:                                               ; preds = %19, %10
  %34 = phi i64 [ %16, %10 ], [ %32, %19 ]
  %35 = phi ptr [ %13, %10 ], [ %31, %19 ]
  %36 = and i64 %34, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %157

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !30
  %41 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %40) #13, !range !21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %157, label %43

43:                                               ; preds = %38
  %44 = call fastcc ptr @gimple_assign_lhs(ptr noundef %40) #13
  %45 = icmp eq ptr %44, %35
  br i1 %45, label %46, label %157

46:                                               ; preds = %43
  %47 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %40) #13, !range !34
  %48 = icmp eq i32 %47, 141
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 141), align 4, !tbaa !35
  br label %64

51:                                               ; preds = %46
  %52 = zext nneg i32 %47 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !35
  %55 = add i32 %54, -4
  %56 = icmp ult i32 %55, 7
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %47) #13, !range !36
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %157

60:                                               ; preds = %57
  %61 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %40) #13
  %62 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %61) #12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %157, label %67

64:                                               ; preds = %49, %51
  %65 = phi i32 [ %50, %49 ], [ %54, %51 ]
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %157, label %67

67:                                               ; preds = %60, %64
  %68 = load ptr, ptr %1, align 8, !tbaa !24
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call ptr @pointer_map_create() #12
  store ptr %71, ptr %1, align 8, !tbaa !24
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi ptr [ %71, %70 ], [ %68, %67 ]
  %74 = call ptr @pointer_map_insert(ptr noundef %73, ptr noundef nonnull %13) #12
  %75 = load ptr, ptr %74, align 8, !tbaa !24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %141

77:                                               ; preds = %72
  %78 = call ptr @xmalloc(i64 noundef 240) #12
  %79 = getelementptr inbounds %struct.name_expansion, ptr %78, i64 0, i32 1
  %80 = load i8, ptr %79, align 8
  %81 = or i8 %80, 1
  store i8 %81, ptr %79, align 8
  store ptr %78, ptr %74, align 8, !tbaa !24
  %82 = icmp eq ptr %13, %35
  br i1 %82, label %131, label %83

83:                                               ; preds = %77
  %84 = load i64, ptr %15, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -6
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %133

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !30
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65535
  %95 = add nsw i32 %94, -6
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %133

97:                                               ; preds = %89
  %98 = and i64 %92, 2097152
  %99 = icmp eq i64 %98, 0
  %100 = load i32, ptr @flag_wrapv, align 4
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  %103 = load i32, ptr @flag_trapv, align 4
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  %106 = load i32, ptr @flag_strict_overflow, align 4
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %133

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1023
  %113 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 1023
  %116 = icmp ugt i32 %112, %115
  %117 = add nsw i32 %47, -63
  %118 = icmp ult i32 %117, 3
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %133

120:                                              ; preds = %109
  %121 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %40) #13
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 23
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %40) #13
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %15, ptr noundef %126) #12
  %128 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %40) #13
  %129 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %15, ptr noundef %128) #12
  %130 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %47, ptr noundef nonnull %15, ptr noundef %127, ptr noundef %129) #12
  br label %136

131:                                              ; preds = %77
  %132 = call ptr @gimple_assign_rhs_to_tree(ptr noundef %40) #12
  br label %136

133:                                              ; preds = %89, %83, %120, %109, %97
  %134 = call ptr @gimple_assign_rhs_to_tree(ptr noundef %40) #12
  %135 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %15, ptr noundef %134) #12
  br label %136

136:                                              ; preds = %131, %133, %125
  %137 = phi ptr [ %130, %125 ], [ %135, %133 ], [ %132, %131 ]
  %138 = load ptr, ptr %0, align 8, !tbaa !6
  call void @tree_to_aff_combination_expand(ptr noundef %137, ptr noundef %138, ptr noundef nonnull %4, ptr noundef nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %78, ptr noundef nonnull align 8 dereferenceable(232) %4, i64 232, i1 false), !tbaa.struct !37
  %139 = load i8, ptr %79, align 8
  %140 = and i8 %139, -2
  store i8 %140, ptr %79, align 8
  br label %148

141:                                              ; preds = %72
  %142 = getelementptr inbounds %struct.name_expansion, ptr %75, i64 0, i32 1
  %143 = load i8, ptr %142, align 8
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 653, ptr noundef nonnull @.str.1) #12
  br label %147

147:                                              ; preds = %141, %146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %4, ptr noundef nonnull align 8 dereferenceable(232) %75, i64 232, i1 false), !tbaa.struct !37
  br label %148

148:                                              ; preds = %147, %136
  %149 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %11, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa.struct !14
  %151 = getelementptr inbounds i8, ptr %149, i64 8
  %152 = load i64, ptr %151, align 8, !tbaa.struct !16
  %153 = load ptr, ptr %0, align 8, !tbaa !6
  call fastcc void @aff_combination_zero(ptr noundef nonnull %5, ptr noundef %153) #13
  %154 = call { i64, i64 } @double_int_neg(i64 %150, i64 %152) #12
  %155 = extractvalue { i64, i64 } %154, 0
  %156 = extractvalue { i64, i64 } %154, 1
  call void @aff_combination_add_elt(ptr noundef nonnull %5, ptr noundef nonnull %13, i64 %155, i64 %156) #13
  call void @aff_combination_scale(ptr noundef nonnull %4, i64 %150, i64 %152) #13
  call void @aff_combination_add(ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  call void @aff_combination_add(ptr noundef nonnull %3, ptr noundef nonnull %5) #13
  br label %157

157:                                              ; preds = %64, %57, %60, %38, %43, %33, %148
  %158 = add nuw nsw i64 %11, 1
  %159 = load i32, ptr %7, align 8, !tbaa !17
  %160 = zext i32 %159 to i64
  %161 = icmp ult i64 %158, %160
  br i1 %161, label %10, label %162, !llvm.loop !38

162:                                              ; preds = %157, %2
  call void @aff_combination_add(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !36
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #13, !range !34
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !36
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !30
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_to_aff_combination_expand(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call void @tree_to_aff_combination(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  tail call void @aff_combination_expand(ptr noundef %2, ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !36
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !15
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !36
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !35
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !36
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.1) #12
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !30
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_affine_expand_cache(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @pointer_map_traverse(ptr noundef nonnull %2, ptr noundef nonnull @free_name_expansion, ptr noundef null) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @pointer_map_destroy(ptr noundef %5) #12
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef zeroext i8 @free_name_expansion(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #8 {
  %4 = load ptr, ptr %1, align 8, !tbaa !24
  tail call void @free(ptr noundef %4) #13
  ret i8 1
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @aff_combination_constant_multiple_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  store i8 0, ptr %4, align 1, !tbaa !30
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %10, i64 %12) #13, !range !21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef 0) #13
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  store i64 %17, ptr %2, align 8, !tbaa.struct !14
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %18, ptr %19, align 8, !tbaa.struct !16
  br label %72

20:                                               ; preds = %8, %3
  %21 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = icmp eq i32 %6, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %35 = load i64, ptr %33, align 8
  %36 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = load i64, ptr %34, align 8
  %39 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = call fastcc zeroext i8 @double_int_constant_multiple_p(i64 %35, i64 %37, i64 %38, i64 %40, ptr noundef nonnull %4, ptr noundef %2) #13, !range !21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %32
  %44 = load i32, ptr %21, align 8, !tbaa !17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %51

46:                                               ; preds = %57
  %47 = add nuw nsw i64 %52, 1
  %48 = load i32, ptr %21, align 8, !tbaa !17
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %68, !llvm.loop !39

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %47, %46 ], [ 0, %43 ]
  %53 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !19
  %55 = tail call fastcc ptr @aff_combination_find_elt(ptr noundef %0, ptr noundef %54) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.aff_comb_elt, ptr %55, i64 0, i32 1
  %59 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %52, i32 1
  %60 = load i64, ptr %58, align 8
  %61 = getelementptr inbounds %struct.aff_comb_elt, ptr %55, i64 0, i32 1, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = load i64, ptr %59, align 8
  %64 = getelementptr inbounds { i64, i64 }, ptr %59, i64 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = call fastcc zeroext i8 @double_int_constant_multiple_p(i64 %60, i64 %62, i64 %63, i64 %65, ptr noundef nonnull %4, ptr noundef %2) #13, !range !21
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %46

68:                                               ; preds = %46, %43
  %69 = load i8, ptr %4, align 1, !tbaa !30
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 782, ptr noundef nonnull @.str.1) #12
  br label %72

72:                                               ; preds = %51, %57, %71, %68, %32, %24, %28, %20, %15
  %73 = phi i8 [ 1, %15 ], [ 0, %20 ], [ 0, %28 ], [ 0, %24 ], [ 0, %32 ], [ 1, %68 ], [ 1, %71 ], [ 0, %57 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  ret i8 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @double_int_constant_multiple_p(i64 %0, i64 %1, i64 %2, i64 %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %8 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) #13, !range !21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %2, i64 %3) #13, !range !21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = call { i64, i64 } @double_int_sdivmod(i64 %0, i64 %1, i64 %2, i64 %3, i32 noundef 69, ptr noundef nonnull %7) #12
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = call fastcc zeroext i8 @double_int_zero_p(i64 %17, i64 %19) #13, !range !21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %13
  %23 = load i8, ptr %4, align 1, !tbaa !30
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr %5, align 8
  %27 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = call fastcc zeroext i8 @double_int_equal_p(i64 %26, i64 %28, i64 %15, i64 %16) #13, !range !21
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25, %22
  store i8 1, ptr %4, align 1, !tbaa !30
  store i64 %15, ptr %5, align 8, !tbaa.struct !14
  %32 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %16, ptr %32, align 8, !tbaa.struct !16
  br label %33

33:                                               ; preds = %25, %13, %10, %6, %31
  %34 = phi i8 [ 1, %31 ], [ 1, %6 ], [ 0, %10 ], [ 0, %13 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @aff_combination_find_elt(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %11

6:                                                ; preds = %11
  %7 = add nuw nsw i64 %12, 1
  %8 = load i32, ptr %3, align 8, !tbaa !17
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %17, !llvm.loop !40

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %7, %6 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.affine_tree_combination, ptr %0, i64 0, i32 3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef %1, i32 noundef 0) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %6, label %17

17:                                               ; preds = %11, %6, %2
  %18 = phi ptr [ null, %2 ], [ null, %6 ], [ %13, %11 ]
  ret ptr %18
}

; Function Attrs: optsize
declare { i64, i64 } @double_int_sdivmod(i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #5 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_aff(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !6
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = lshr i64 %4, 21
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  %12 = icmp eq i32 %6, 12
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i8 [ 0, %13 ], [ %11, %8 ]
  %16 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 11, i64 1, ptr %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 16448) #12
  %18 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 12, i64 1, ptr %0)
  %19 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8
  tail call void @dump_double_int(ptr noundef %0, i64 %20, i64 %22, i8 noundef zeroext %15) #12
  %23 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %14
  %27 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %0)
  %28 = load i32, ptr %23, align 8, !tbaa !17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26, %48
  %31 = phi i64 [ %50, %48 ], [ 0, %26 ]
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %32) #13
  %34 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %35, i32 noundef 16448) #12
  %36 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %0)
  %37 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %31, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds { i64, i64 }, ptr %37, i64 0, i32 1
  %40 = load i64, ptr %39, align 8
  tail call void @dump_double_int(ptr noundef %0, i64 %38, i64 %40, i8 noundef zeroext %15) #12
  %41 = load i32, ptr %23, align 8, !tbaa !17
  %42 = add i32 %41, -1
  %43 = zext i32 %42 to i64
  %44 = icmp eq i64 %31, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 3, i64 1, ptr %0)
  %47 = load i32, ptr %23, align 8, !tbaa !17
  br label %48

48:                                               ; preds = %30, %45
  %49 = phi i32 [ %41, %30 ], [ %47, %45 ]
  %50 = add nuw nsw i64 %31, 1
  %51 = zext i32 %49 to i64
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %30, label %53, !llvm.loop !41

53:                                               ; preds = %48, %26
  %54 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr %0)
  br label %55

55:                                               ; preds = %53, %14
  %56 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 10, i64 1, ptr %0)
  %61 = load ptr, ptr %56, align 8, !tbaa !18
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %61, i32 noundef 16448) #12
  br label %62

62:                                               ; preds = %59, %55
  %63 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_aff(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !24
  tail call void @print_aff(ptr noundef %2, ptr noundef %0) #13
  %3 = load ptr, ptr @stderr, align 8, !tbaa !24
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_inner_reference_aff(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.affine_tree_combination, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #14
  %11 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #12
  %12 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %11) #12
  %13 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  call void @tree_to_aff_combination(ptr noundef %12, ptr noundef %13, ptr noundef %1) #13
  %14 = load ptr, ptr %6, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  call void @tree_to_aff_combination(ptr noundef nonnull %14, ptr noundef %17, ptr noundef nonnull %10) #13
  call void @aff_combination_add(ptr noundef %1, ptr noundef nonnull %10) #13
  br label %18

18:                                               ; preds = %16, %3
  %19 = load ptr, ptr @sizetype_tab, align 16, !tbaa !24
  %20 = load i64, ptr %5, align 8, !tbaa !15
  %21 = sdiv i64 %20, 8
  %22 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %21) #13
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  call void @aff_combination_const(ptr noundef nonnull %10, ptr noundef %19, i64 %23, i64 %24) #13
  call void @aff_combination_add(ptr noundef %1, ptr noundef nonnull %10) #13
  %25 = load i64, ptr %4, align 8, !tbaa !15
  %26 = add nsw i64 %25, 7
  %27 = sdiv i64 %26, 8
  %28 = call fastcc { i64, i64 } @shwi_to_double_int(i64 noundef %27) #13
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, ptr %2, align 8, !tbaa.struct !14
  %31 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 %30, ptr %31, align 8, !tbaa.struct !16
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"affine_tree_combination", !8, i64 0, !11, i64 8, !13, i64 24, !9, i64 32, !8, i64 224}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"long", !9, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{i64 0, i64 8, !15, i64 8, i64 8, !15}
!15 = !{!12, !12, i64 0}
!16 = !{i64 0, i64 8, !15}
!17 = !{!7, !13, i64 24}
!18 = !{!7, !8, i64 224}
!19 = !{!20, !8, i64 0}
!20 = !{!"aff_comb_elt", !8, i64 0, !11, i64 8}
!21 = !{i8 0, i8 2}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !23}
!26 = !{i64 0, i64 8, !24, i64 8, i64 8, !15, i64 16, i64 8, !15}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = !{!9, !9, i64 0}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{i32 0, i32 65536}
!35 = !{!13, !13, i64 0}
!36 = !{i32 0, i32 256}
!37 = !{i64 0, i64 8, !24, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 4, !35, i64 32, i64 192, !30, i64 224, i64 8, !24}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
