; ModuleID = 'tree-ssa-address.c'
source_filename = "tree-ssa-address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.mem_address = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.double_int = type { i64, i64 }
%struct.mem_addr_template = type { ptr, ptr, ptr }
%struct.VEC_mem_addr_template_base = type { i32, i32, [1 x %struct.mem_addr_template] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.affine_tree_combination = type { ptr, %struct.double_int, i32, [8 x %struct.aff_comb_elt], ptr }
%struct.aff_comb_elt = type { ptr, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mem_addr_template_list = internal global ptr null, align 8
@.str = private unnamed_addr constant [12 x i8] c"test_symbol\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"tree-ssa-address.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"base: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"index: \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1
@gt_ggc_r_gt_tree_ssa_address_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @mem_addr_template_list, i64 1, i64 8, ptr @gt_ggc_mx_VEC_mem_addr_template_gc, ptr @gt_pch_nx_VEC_mem_addr_template_gc }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @addr_for_mem_ref(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !6
  %6 = tail call i32 %5(i8 noundef zeroext %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %7 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @integer_onep(ptr noundef nonnull %8) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !25
  %19 = tail call ptr @immed_double_const(i64 noundef %16, i64 noundef %18, i32 noundef %6) #10
  br label %20

20:                                               ; preds = %3, %10, %13
  %21 = phi ptr [ %19, %13 ], [ null, %10 ], [ null, %3 ]
  %22 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %23) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load ptr, ptr %22, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !25
  %34 = tail call ptr @immed_double_const(i64 noundef %31, i64 noundef %33, i32 noundef %6) #10
  br label %35

35:                                               ; preds = %20, %25, %28
  %36 = phi ptr [ %34, %28 ], [ null, %25 ], [ null, %20 ]
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %35
  %39 = zext i8 %1 to i32
  %40 = shl nuw nsw i32 %39, 5
  %41 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %42 = load <2 x ptr>, ptr %0, align 8, !tbaa !27
  %43 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !28
  %45 = shufflevector <2 x ptr> %42, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %46 = insertelement <4 x ptr> %45, ptr %44, i64 2
  %47 = insertelement <4 x ptr> %46, ptr %21, i64 3
  %48 = icmp eq <4 x ptr> %47, zeroinitializer
  %49 = select <4 x i1> %48, <4 x i32> zeroinitializer, <4 x i32> <i32 16, i32 8, i32 4, i32 2>
  %50 = icmp ne ptr %36, null
  %51 = zext i1 %50 to i32
  %52 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %49)
  %53 = or disjoint i32 %52, %51
  %54 = or disjoint i32 %53, %40
  %55 = load ptr, ptr @mem_addr_template_list, align 8
  %56 = tail call fastcc i32 @VEC_mem_addr_template_base_length(ptr noundef %55) #12
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %38
  %59 = add nuw nsw i32 %54, 1
  tail call fastcc void @VEC_mem_addr_template_gc_safe_grow_cleared(i32 noundef %59) #12
  %60 = load ptr, ptr @mem_addr_template_list, align 8
  br label %61

61:                                               ; preds = %58, %38
  %62 = phi ptr [ %60, %58 ], [ %55, %38 ]
  %63 = tail call fastcc ptr @VEC_mem_addr_template_base_index(ptr noundef %62, i32 noundef %54) #12
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 8, !tbaa !31
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @ggc_alloc_string(ptr noundef nonnull @.str, i32 noundef -1) #10
  %71 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %6, ptr noundef %70) #10
  br label %72

72:                                               ; preds = %66, %69
  %73 = phi ptr [ %71, %69 ], [ null, %66 ]
  %74 = load ptr, ptr %41, align 8, !tbaa !32
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @gen_raw_REG(i32 noundef %6, i32 noundef 58) #10
  br label %78

78:                                               ; preds = %72, %76
  %79 = phi ptr [ %77, %76 ], [ null, %72 ]
  %80 = load ptr, ptr %43, align 8, !tbaa !28
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call ptr @gen_raw_REG(i32 noundef %6, i32 noundef 59) #10
  br label %84

84:                                               ; preds = %78, %82
  %85 = phi ptr [ %83, %82 ], [ null, %78 ]
  %86 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %87 = extractelement <4 x i1> %48, i64 3
  %88 = select i1 %87, ptr null, ptr %86
  %89 = select i1 %50, ptr %86, ptr null
  %90 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 1
  %91 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 2
  tail call fastcc void @gen_addr_rtx(i32 noundef %6, ptr noundef %73, ptr noundef %79, ptr noundef %85, ptr noundef %88, ptr noundef %89, ptr noundef nonnull %63, ptr noundef nonnull %90, ptr noundef nonnull %91) #12
  br label %92

92:                                               ; preds = %84, %61
  %93 = extractelement <4 x i1> %48, i64 3
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !33
  store ptr %21, ptr %96, align 8, !tbaa !27
  br label %97

97:                                               ; preds = %94, %92
  br i1 %50, label %98, label %124

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  store ptr %36, ptr %100, align 8, !tbaa !27
  br label %124

101:                                              ; preds = %35
  %102 = load ptr, ptr %0, align 8, !tbaa !31
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @current_function_decl, align 8, !tbaa !27
  %106 = tail call ptr @build_addr(ptr noundef nonnull %102, ptr noundef %105) #10
  %107 = tail call fastcc ptr @expand_expr(ptr noundef %106, i32 noundef %6) #12
  br label %108

108:                                              ; preds = %101, %104
  %109 = phi ptr [ %107, %104 ], [ null, %101 ]
  %110 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !32
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %111, i32 noundef %6) #12
  br label %115

115:                                              ; preds = %108, %113
  %116 = phi ptr [ %114, %113 ], [ null, %108 ]
  %117 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !28
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %118, i32 noundef %6) #12
  br label %122

122:                                              ; preds = %115, %120
  %123 = phi ptr [ %121, %120 ], [ null, %115 ]
  call fastcc void @gen_addr_rtx(i32 noundef %6, ptr noundef %109, ptr noundef %116, ptr noundef %123, ptr noundef %21, ptr noundef %36, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #12
  br label %124

124:                                              ; preds = %97, %98, %122
  %125 = phi ptr [ %4, %122 ], [ %63, %98 ], [ %63, %97 ]
  %126 = load ptr, ptr %125, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_addr_template_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_addr_template_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !27
  %3 = tail call fastcc i32 @VEC_mem_addr_template_base_length(ptr noundef %2) #12
  tail call fastcc void @VEC_mem_addr_template_gc_safe_grow(i32 noundef %0) #12
  %4 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !27
  %5 = tail call fastcc ptr @VEC_mem_addr_template_base_address(ptr noundef %4) #12
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.mem_addr_template, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_mem_addr_template_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_addr_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) unnamed_addr #0 {
  store ptr null, ptr %6, align 8, !tbaa !27
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  store ptr null, ptr %7, align 8, !tbaa !27
  br label %12

12:                                               ; preds = %11, %9
  %13 = icmp eq ptr %8, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  store ptr null, ptr %8, align 8, !tbaa !27
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = icmp eq ptr %4, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br i1 %10, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %22, ptr %7, align 8, !tbaa !27
  br label %23

23:                                               ; preds = %19, %21, %17
  %24 = phi ptr [ %20, %21 ], [ %20, %19 ], [ %3, %17 ]
  store ptr %24, ptr %6, align 8, !tbaa !27
  br label %25

25:                                               ; preds = %23, %15
  %26 = icmp eq ptr %2, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8, !tbaa !27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %28) #10
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ %2, %27 ]
  store ptr %33, ptr %6, align 8, !tbaa !27
  br label %34

34:                                               ; preds = %32, %25
  %35 = icmp eq ptr %1, null
  %36 = icmp eq ptr %5, null
  br i1 %35, label %54, label %37

37:                                               ; preds = %34
  br i1 %36, label %47, label %38

38:                                               ; preds = %37
  %39 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #10
  br i1 %13, label %42, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %8, align 8, !tbaa !27
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, ptr %1, align 8
  %44 = trunc i32 %43 to i16
  switch i16 %44, label %47 [
    i16 45, label %45
    i16 44, label %45
    i16 35, label %45
  ]

45:                                               ; preds = %42, %42, %42
  %46 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %0, ptr noundef %39) #10
  br label %47

47:                                               ; preds = %42, %45, %37
  %48 = phi ptr [ %46, %45 ], [ %1, %37 ], [ %39, %42 ]
  %49 = load ptr, ptr %6, align 8, !tbaa !27
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %49, ptr noundef %48) #10
  store ptr %52, ptr %6, align 8, !tbaa !27
  br label %67

53:                                               ; preds = %47
  store ptr %48, ptr %6, align 8, !tbaa !27
  br label %67

54:                                               ; preds = %34
  br i1 %36, label %65, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %6, align 8, !tbaa !27
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %5) #10
  store ptr %59, ptr %6, align 8, !tbaa !27
  br i1 %13, label %67, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %63

62:                                               ; preds = %55
  store ptr %5, ptr %6, align 8, !tbaa !27
  br i1 %13, label %72, label %63

63:                                               ; preds = %62, %60
  %64 = phi ptr [ %61, %60 ], [ %6, %62 ]
  store ptr %64, ptr %8, align 8, !tbaa !27
  br label %65

65:                                               ; preds = %63, %54
  %66 = load ptr, ptr %6, align 8, !tbaa !27
  br label %67

67:                                               ; preds = %65, %58, %51, %53
  %68 = phi ptr [ %66, %65 ], [ %59, %58 ], [ %52, %51 ], [ %48, %53 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !27
  store ptr %71, ptr %6, align 8, !tbaa !27
  br label %72

72:                                               ; preds = %62, %70, %67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef 0, ptr noundef null) #10
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_addr_template_gc_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !35
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_mem_addr_template_gc_reserve_exact(i32 noundef %8) #12
  %9 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !27, !nonnull !37, !noundef !37
  store i32 %0, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_mem_addr_template_base_address(ptr noundef readnone %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_addr_template_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !27
  %3 = tail call fastcc i32 @VEC_mem_addr_template_base_space(ptr noundef %2, i32 noundef %0) #12, !range !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 24) #10
  store ptr %6, ptr @mem_addr_template_list, align 8, !tbaa !27
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_addr_template_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !39
  %7 = load i32, ptr %0, align 8, !tbaa !35
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tree_mem_ref_addr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = load ptr, ptr %3, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !27
  %14 = tail call ptr @build_addr(ptr noundef nonnull %8, ptr noundef %13) #10
  %15 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %14) #10
  br label %25

16:                                               ; preds = %2
  %17 = icmp eq ptr %10, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %25 [
    i16 10, label %23
    i16 12, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %10) #10
  br label %25

25:                                               ; preds = %18, %16, %23, %12
  %26 = phi ptr [ %10, %12 ], [ null, %23 ], [ null, %16 ], [ %10, %18 ]
  %27 = phi ptr [ %15, %12 ], [ %24, %23 ], [ null, %16 ], [ null, %18 ]
  %28 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = icmp eq ptr %5, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %34, ptr noundef nonnull %29, ptr noundef nonnull %5) #10
  br label %36

36:                                               ; preds = %31, %33
  %37 = phi ptr [ %35, %33 ], [ %29, %31 ]
  %38 = icmp eq ptr %26, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = icmp eq ptr %37, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %42, ptr noundef nonnull %37, ptr noundef nonnull %26) #10
  br label %44

44:                                               ; preds = %25, %39, %41, %36
  %45 = phi ptr [ %43, %41 ], [ %37, %36 ], [ %26, %39 ], [ %26, %25 ]
  %46 = icmp eq ptr %7, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @integer_zerop(ptr noundef nonnull %7) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = icmp eq ptr %45, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %54 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %53, ptr noundef nonnull %45, ptr noundef nonnull %7) #10
  br label %55

55:                                               ; preds = %52, %47, %44
  %56 = phi ptr [ %45, %47 ], [ %54, %52 ], [ %45, %44 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %50, %55
  %59 = phi ptr [ %56, %55 ], [ %7, %50 ]
  %60 = icmp eq ptr %27, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull %59) #10
  br label %69

63:                                               ; preds = %58
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %59) #10
  br label %69

65:                                               ; preds = %55
  %66 = icmp eq ptr %27, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #10
  br label %69

69:                                               ; preds = %65, %67, %61, %63
  %70 = phi ptr [ %62, %61 ], [ %64, %63 ], [ %68, %67 ], [ %27, %65 ]
  ret ptr %70
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_mem_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.mem_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  call fastcc void @addr_to_parts(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i8 noundef zeroext %4) #12
  call fastcc void @gimplify_mem_ref_parts(ptr noundef %0, ptr noundef nonnull %6) #12
  %7 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %125

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @integer_onep(ptr noundef nonnull %11) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 650, ptr noundef nonnull @.str.2) #10
  br label %21

21:                                               ; preds = %16, %20
  %22 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %22, ptr noundef %18, ptr noundef nonnull %11) #10
  %24 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %23, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  store ptr %24, ptr %17, align 8, !tbaa !28
  store ptr null, ptr %10, align 8, !tbaa !23
  %25 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %125

27:                                               ; preds = %21, %13, %9
  %28 = load ptr, ptr %6, align 8, !tbaa !31
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !27
  %32 = tail call ptr @build_addr(ptr noundef nonnull %28, ptr noundef %31) #10
  %33 = tail call zeroext i8 @is_gimple_val(ptr noundef %32) #10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 665, ptr noundef nonnull @.str.2) #10
  br label %36

36:                                               ; preds = %30, %35
  %37 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !32
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %42 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %41, ptr noundef %43) #10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 671, ptr noundef nonnull @.str.2) #10
  br label %47

47:                                               ; preds = %40, %46
  %48 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  %54 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %38) #10
  %56 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %53, ptr noundef %32, ptr noundef %55) #10
  %57 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %56, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %59

58:                                               ; preds = %47
  store ptr %38, ptr %48, align 8, !tbaa !28
  br label %59

59:                                               ; preds = %36, %51, %58
  %60 = phi ptr [ %57, %51 ], [ %32, %58 ], [ %32, %36 ]
  store ptr %60, ptr %37, align 8, !tbaa !32
  store ptr null, ptr %6, align 8, !tbaa !31
  %61 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %125

63:                                               ; preds = %59, %27
  %64 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !28
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !32
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !25
  %74 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %73, ptr noundef nonnull %69, ptr noundef nonnull %65) #10
  %75 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %74, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %76

76:                                               ; preds = %67, %71
  %77 = phi ptr [ %75, %71 ], [ %65, %67 ]
  store ptr %77, ptr %68, align 8, !tbaa !32
  store ptr null, ptr %64, align 8, !tbaa !28
  %78 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %125

80:                                               ; preds = %76, %63
  %81 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !26
  %83 = icmp eq ptr %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %80
  %85 = tail call i32 @integer_zerop(ptr noundef nonnull %82) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !32
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !25
  %94 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %95 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %94, ptr noundef nonnull %82) #10
  %96 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %93, ptr noundef nonnull %89, ptr noundef %95) #10
  %97 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %96, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %98

98:                                               ; preds = %87, %91
  %99 = phi ptr [ %97, %91 ], [ %82, %87 ]
  store ptr %99, ptr %88, align 8, !tbaa !32
  store ptr null, ptr %81, align 8, !tbaa !26
  %100 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %98, %84, %80
  %103 = load ptr, ptr %6, align 8, !tbaa !31
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 743, ptr noundef nonnull @.str.2) #10
  br label %106

106:                                              ; preds = %102, %105
  %107 = load ptr, ptr %64, align 8, !tbaa !28
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 744, ptr noundef nonnull @.str.2) #10
  br label %110

110:                                              ; preds = %106, %109
  %111 = load ptr, ptr %10, align 8, !tbaa !23
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = tail call i32 @integer_onep(ptr noundef nonnull %111) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 745, ptr noundef nonnull @.str.2) #10
  br label %117

117:                                              ; preds = %110, %113, %116
  %118 = load ptr, ptr %81, align 8, !tbaa !26
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = tail call i32 @integer_zerop(ptr noundef nonnull %118) #10
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 746, ptr noundef nonnull @.str.2) #10
  br label %124

124:                                              ; preds = %117, %120, %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @.str.2) #10
  br label %125

125:                                              ; preds = %98, %76, %59, %21, %5, %124
  %126 = phi ptr [ null, %124 ], [ %7, %5 ], [ %25, %21 ], [ %61, %59 ], [ %78, %76 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  ret ptr %126
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @addr_to_parts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.mem_address, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %8, i64 %10) #12, !range !40
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %15 = tail call ptr @double_int_to_tree(ptr noundef %14, i64 %8, i64 %10) #10
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi ptr [ %15, %13 ], [ null, %5 ]
  %18 = getelementptr inbounds %struct.mem_address, ptr %3, i64 0, i32 4
  store ptr %17, ptr %18, align 8
  tail call fastcc void @move_fixed_address_to_symbol(ptr noundef nonnull %3, ptr noundef nonnull %1) #12
  tail call fastcc void @most_expensive_mult_to_index(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext %4) #12
  %19 = load ptr, ptr %3, align 8, !tbaa !31
  %20 = icmp eq ptr %19, null
  %21 = icmp ne ptr %2, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  tail call fastcc void @move_hint_to_base(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %1) #12
  %24 = load ptr, ptr %3, align 8, !tbaa !31
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %24, %23 ], [ %19, %16 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !tbaa !32
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call fastcc void @move_pointer_to_base(ptr noundef nonnull %3, ptr noundef nonnull %1) #12
  br label %32

32:                                               ; preds = %31, %28, %25
  %33 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !41
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %32, %52
  %37 = phi i64 [ %54, %52 ], [ 0, %32 ]
  %38 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %39 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef %40) #10
  %42 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %37, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, ptr %42, i64 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = tail call fastcc zeroext i8 @double_int_one_p(i64 %43, i64 %45) #12, !range !40
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %50 = tail call ptr @double_int_to_tree(ptr noundef %49, i64 %43, i64 %45) #10
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %49, ptr noundef %41, ptr noundef %50) #10
  br label %52

52:                                               ; preds = %48, %36
  %53 = phi ptr [ %41, %36 ], [ %51, %48 ]
  tail call fastcc void @add_to_parts(ptr noundef nonnull %3, ptr noundef %53) #12
  %54 = add nuw nsw i64 %37, 1
  %55 = load i32, ptr %33, align 8, !tbaa !41
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %36, label %58, !llvm.loop !46

58:                                               ; preds = %52, %32
  %59 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %63, ptr noundef nonnull %60) #10
  tail call fastcc void @add_to_parts(ptr noundef nonnull %3, ptr noundef %64) #12
  br label %65

65:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_mem_ref_parts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  store ptr %7, ptr %3, align 8, !tbaa !32
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  store ptr %13, ptr %9, align 8, !tbaa !28
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_mem_ref_raw(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 14
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #10
  %8 = load i64, ptr %0, align 8
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i64 [ %8, %6 ], [ %3, %9 ]
  %16 = phi i32 [ %7, %6 ], [ %13, %9 ]
  %17 = lshr i64 %15, 56
  %18 = trunc i64 %17 to i8
  %19 = tail call fastcc zeroext i8 @valid_mem_ref_p(i32 noundef %16, i8 noundef zeroext %18, ptr noundef %1) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @integer_onep(ptr noundef nonnull %23) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store ptr null, ptr %22, align 8, !tbaa !23
  br label %29

29:                                               ; preds = %28, %25, %21
  %30 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @integer_zerop(ptr noundef nonnull %31) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load ptr, ptr %30, align 8, !tbaa !26
  br label %39

38:                                               ; preds = %33
  store ptr null, ptr %30, align 8, !tbaa !26
  br label %39

39:                                               ; preds = %36, %38, %29
  %40 = phi ptr [ %37, %36 ], [ null, %38 ], [ null, %29 ]
  %41 = load ptr, ptr %1, align 8, !tbaa !31
  %42 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !28
  %46 = load ptr, ptr %22, align 8, !tbaa !23
  %47 = tail call ptr @build6_stat(i32 noundef 152, ptr noundef nonnull %0, ptr noundef %41, ptr noundef %43, ptr noundef %45, ptr noundef %46, ptr noundef %40, ptr noundef null) #10
  br label %48

48:                                               ; preds = %14, %39
  %49 = phi ptr [ %47, %39 ], [ null, %14 ]
  ret ptr %49
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #4 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_fixed_address_to_symbol(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %9, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = tail call fastcc zeroext i8 @double_int_one_p(i64 %11, i64 %13) #12, !range !40
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %9
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 121
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = tail call fastcc zeroext i8 @fixed_address_object_p(ptr noundef %24) #12, !range !40
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16, %22, %8
  %28 = add nuw nsw i64 %9, 1
  %29 = icmp eq i64 %28, %7
  br i1 %29, label %39, label %8, !llvm.loop !49

30:                                               ; preds = %22
  %31 = trunc i64 %9 to i32
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ 0, %2 ], [ %31, %30 ]
  %34 = phi ptr [ null, %2 ], [ %18, %30 ]
  %35 = icmp eq i32 %33, %4
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  store ptr %38, ptr %0, align 8, !tbaa !31
  tail call void @aff_combination_remove_elt(ptr noundef nonnull %1, i32 noundef %33) #10
  br label %39

39:                                               ; preds = %27, %32, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @most_expensive_mult_to_index(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !6
  %9 = tail call i32 %8(i8 noundef zeroext %7) #10
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %114, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %51
  %16 = phi i64 [ 0, %13 ], [ %55, %51 ]
  %17 = phi i64 [ 0, %13 ], [ %54, %51 ]
  %18 = phi i64 [ 0, %13 ], [ %53, %51 ]
  %19 = phi i32 [ 0, %13 ], [ %52, %51 ]
  %20 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %16, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, ptr %20, i64 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %21, i64 %23) #10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %15
  %27 = load i64, ptr %20, align 8
  %28 = load i64, ptr %22, align 8
  %29 = tail call i64 @double_int_to_shwi(i64 %27, i64 %28) #10
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #10
  br label %41

37:                                               ; preds = %31
  %38 = load i32, ptr %14, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ]
  %43 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %29, i32 noundef %42, i8 noundef zeroext %7) #10
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @multiply_by_cost(i64 noundef %29, i32 noundef %9, i8 noundef zeroext %3) #10
  %47 = icmp ugt i32 %46, %19
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, ptr %20, align 8, !tbaa.struct !50
  %50 = load i64, ptr %22, align 8, !tbaa.struct !52
  br label %51

51:                                               ; preds = %45, %48, %26, %41, %15
  %52 = phi i32 [ %19, %26 ], [ %46, %48 ], [ %19, %45 ], [ %19, %41 ], [ %19, %15 ]
  %53 = phi i64 [ %18, %26 ], [ %49, %48 ], [ %18, %45 ], [ %18, %41 ], [ %18, %15 ]
  %54 = phi i64 [ %17, %26 ], [ %50, %48 ], [ %17, %45 ], [ %17, %41 ], [ %17, %15 ]
  %55 = add nuw nsw i64 %16, 1
  %56 = load i32, ptr %10, align 8, !tbaa !41
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %15, label %59, !llvm.loop !53

59:                                               ; preds = %51
  %60 = icmp eq i32 %52, 0
  br i1 %60, label %114, label %61

61:                                               ; preds = %59
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %107, label %63

63:                                               ; preds = %61, %100
  %64 = phi i64 [ %103, %100 ], [ 0, %61 ]
  %65 = phi ptr [ %102, %100 ], [ null, %61 ]
  %66 = phi i32 [ %101, %100 ], [ 0, %61 ]
  %67 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %64
  %68 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %64, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa.struct !50
  %70 = getelementptr inbounds i8, ptr %68, i64 8
  %71 = load i64, ptr %70, align 8, !tbaa.struct !52
  %72 = tail call { i64, i64 } @double_int_neg(i64 %69, i64 %71) #10
  %73 = extractvalue { i64, i64 } %72, 0
  %74 = extractvalue { i64, i64 } %72, 1
  %75 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %73, i64 %74, ptr noundef nonnull %2) #10
  %76 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %69, i64 %71, i64 %53, i64 %54) #12, !range !40
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = extractvalue { i64, i64 } %75, 1
  %80 = extractvalue { i64, i64 } %75, 0
  %81 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %80, i64 %79, i64 %53, i64 %54) #12, !range !40
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = zext i32 %66 to i64
  %85 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %67, i64 24, i1 false), !tbaa.struct !54
  %86 = add i32 %66, 1
  br label %100

87:                                               ; preds = %78, %63
  %88 = phi i32 [ 63, %63 ], [ 64, %78 ]
  %89 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %90 = load ptr, ptr %67, align 8, !tbaa !44
  %91 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %89, ptr noundef %90) #10
  %92 = icmp eq ptr %65, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %95 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %88, ptr noundef %94, ptr noundef nonnull %65, ptr noundef %91) #10
  br label %100

96:                                               ; preds = %87
  br i1 %77, label %97, label %100

97:                                               ; preds = %96
  %98 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %99 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %98, ptr noundef %91) #10
  br label %100

100:                                              ; preds = %96, %93, %97, %83
  %101 = phi i32 [ %66, %93 ], [ %66, %97 ], [ %86, %83 ], [ %66, %96 ]
  %102 = phi ptr [ %95, %93 ], [ %99, %97 ], [ %65, %83 ], [ %91, %96 ]
  %103 = add nuw nsw i64 %64, 1
  %104 = load i32, ptr %10, align 8, !tbaa !41
  %105 = zext i32 %104 to i64
  %106 = icmp ult i64 %103, %105
  br i1 %106, label %63, label %107, !llvm.loop !55

107:                                              ; preds = %100, %61
  %108 = phi i32 [ 0, %61 ], [ %101, %100 ]
  %109 = phi ptr [ null, %61 ], [ %102, %100 ]
  store i32 %108, ptr %10, align 8, !tbaa !41
  %110 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !28
  %111 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %112 = tail call ptr @double_int_to_tree(ptr noundef %111, i64 %53, i64 %54) #10
  %113 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  store ptr %112, ptr %113, align 8, !tbaa !23
  br label %114

114:                                              ; preds = %4, %59, %107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_hint_to_base(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %4, %24
  %9 = phi i32 [ %25, %24 ], [ %6, %4 ]
  %10 = phi i64 [ %27, %24 ], [ 0, %4 ]
  %11 = phi ptr [ %26, %24 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 3, i64 %10, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call fastcc zeroext i8 @double_int_one_p(i64 %13, i64 %15) #12, !range !40
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 3, i64 %10
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = tail call i32 @operand_equal_p(ptr noundef %20, ptr noundef %2, i32 noundef 0) #10
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %5, align 8, !tbaa !41
  br i1 %22, label %24, label %30

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %9, %8 ], [ %23, %18 ]
  %26 = phi ptr [ %11, %8 ], [ %20, %18 ]
  %27 = add nuw nsw i64 %10, 1
  %28 = zext i32 %25 to i64
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %8, label %30, !llvm.loop !56

30:                                               ; preds = %24, %18
  %31 = phi i32 [ %25, %24 ], [ %23, %18 ]
  %32 = phi i64 [ %27, %24 ], [ %10, %18 ]
  %33 = phi ptr [ %26, %24 ], [ %20, %18 ]
  %34 = trunc i64 %32 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = load i64, ptr %0, align 8
  %38 = lshr i64 %37, 48
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 65280
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !27
  %42 = tail call ptr @build_qualified_type(ptr noundef %41, i32 noundef %40) #10
  %43 = tail call ptr @build_pointer_type(ptr noundef %42) #10
  %44 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %43, ptr noundef %33) #10
  %45 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !32
  tail call void @aff_combination_remove_elt(ptr noundef nonnull %3, i32 noundef %34) #10
  br label %46

46:                                               ; preds = %4, %30, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_pointer_to_base(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %23
  %9 = phi i64 [ 0, %6 ], [ %24, %23 ]
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %9, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = tail call fastcc zeroext i8 @double_int_one_p(i64 %11, i64 %13) #12, !range !40
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %9
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %23 [
    i16 10, label %26
    i16 12, label %26
  ]

23:                                               ; preds = %16, %8
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %34, label %8, !llvm.loop !57

26:                                               ; preds = %16, %16
  %27 = trunc i64 %9 to i32
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %30 = phi ptr [ null, %2 ], [ %18, %26 ]
  %31 = icmp eq i32 %29, %4
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  store ptr %30, ptr %33, align 8, !tbaa !32
  tail call void @aff_combination_remove_elt(ptr noundef nonnull %1, i32 noundef %29) #10
  br label %34

34:                                               ; preds = %23, %28, %32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_one_p(i64 %0, i64 %1) unnamed_addr #4 {
  %3 = icmp eq i64 %0, 1
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_parts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %8 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %1) #10
  store ptr %8, ptr %3, align 8, !tbaa !28
  br label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr %1, ptr %10, align 8, !tbaa !32
  br label %27

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %23 [
    i16 10, label %19
    i16 12, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef %1) #10
  %22 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %21) #10
  br label %25

23:                                               ; preds = %14
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %1) #10
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %22, %19 ]
  store ptr %26, ptr %10, align 8, !tbaa !32
  br label %27

27:                                               ; preds = %25, %13, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @fixed_address_object_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = and i64 %2, 67108864
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8, %5
  %14 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %13, %8, %1
  %20 = phi i8 [ 0, %8 ], [ 0, %1 ], [ %18, %13 ]
  ret i8 %20
}

; Function Attrs: optsize
declare void @aff_combination_remove_elt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @multiplier_allowed_in_address_p(i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @multiply_by_cost(i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_ext_for_comb(i64, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #4 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_mem_ref_p(i32 noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @addr_for_mem_ref(ptr noundef %2, i8 noundef zeroext %1, i8 noundef zeroext 0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %1) #10
  %8 = trunc i32 %7 to i8
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @build6_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @get_address_description(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  store ptr %4, ptr %1, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_mem_ref_info(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !25
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65536
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, -65537
  %10 = or disjoint i64 %9, %7
  store i64 %10, ptr %0, align 8
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 524288
  %13 = and i64 %10, -524289
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_tmr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mem_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  call void @get_address_description(ptr noundef %0, ptr noundef nonnull %2) #12
  %3 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %15, ptr noundef nonnull %4) #10
  %17 = tail call ptr @fold_binary_to_constant(i32 noundef 63, ptr noundef %15, ptr noundef nonnull %12, ptr noundef %16) #10
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %17, %14 ], [ %4, %10 ]
  store ptr %19, ptr %11, align 8, !tbaa !26
  store ptr null, ptr %3, align 8, !tbaa !32
  br label %20

20:                                               ; preds = %18, %6, %1
  %21 = phi i1 [ false, %18 ], [ true, %6 ], [ true, %1 ]
  %22 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %20
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %35 = tail call ptr @fold_binary_to_constant(i32 noundef 65, ptr noundef %34, ptr noundef nonnull %23, ptr noundef nonnull %31) #10
  store ptr null, ptr %30, align 8, !tbaa !23
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %35, %33 ], [ %23, %29 ]
  %38 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !26
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @sizetype_tab, align 16, !tbaa !27
  %43 = tail call ptr @fold_binary_to_constant(i32 noundef 63, ptr noundef %42, ptr noundef nonnull %39, ptr noundef %37) #10
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %43, %41 ], [ %37, %36 ]
  store ptr %45, ptr %38, align 8, !tbaa !26
  store ptr null, ptr %22, align 8, !tbaa !28
  br label %47

46:                                               ; preds = %25, %20
  br i1 %21, label %53, label %47

47:                                               ; preds = %44, %46
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  %50 = call fastcc ptr @create_mem_ref_raw(ptr noundef %49, ptr noundef nonnull %2) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @copy_mem_ref_info(ptr noundef nonnull %50, ptr noundef nonnull %0) #12
  br label %53

53:                                               ; preds = %47, %46, %52
  %54 = phi ptr [ %50, %52 ], [ null, %46 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  ret ptr %54
}

; Function Attrs: optsize
declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_mem_address(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 8, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !31
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %7, i32 noundef 2) #10
  %8 = tail call i32 @fputc(i32 10, ptr %0)
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 6, i64 1, ptr %0)
  %15 = load ptr, ptr %10, align 8, !tbaa !32
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %15, i32 noundef 2) #10
  %16 = tail call i32 @fputc(i32 10, ptr %0)
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  %23 = load ptr, ptr %18, align 8, !tbaa !28
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %23, i32 noundef 2) #10
  %24 = tail call i32 @fputc(i32 10, ptr %0)
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %0)
  %31 = load ptr, ptr %26, align 8, !tbaa !23
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %31, i32 noundef 2) #10
  %32 = tail call i32 @fputc(i32 10, ptr %0)
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %0)
  %39 = load ptr, ptr %34, align 8, !tbaa !26
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %39, i32 noundef 2) #10
  %40 = tail call i32 @fputc(i32 10, ptr %0)
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_mem_addr_template_gc(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !58
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !60

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_mem_addr_template_gc(ptr noundef %0) #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24VEC_mem_addr_template_gc, i32 noundef 58) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !58
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11) #10
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !61

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_24VEC_mem_addr_template_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %1, align 8, !tbaa !58
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #10
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !62

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !9, i64 1184}
!7 = !{!"gcc_target", !8, i64 0, !13, i64 368, !14, i64 664, !15, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !9, i64 792, !9, i64 800, !9, i64 808, !9, i64 816, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !9, i64 864, !9, i64 872, !9, i64 880, !9, i64 888, !9, i64 896, !9, i64 904, !9, i64 912, !9, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !9, i64 1056, !16, i64 1064, !16, i64 1072, !9, i64 1080, !9, i64 1088, !9, i64 1096, !9, i64 1104, !9, i64 1112, !9, i64 1120, !9, i64 1128, !9, i64 1136, !9, i64 1144, !9, i64 1152, !9, i64 1160, !9, i64 1168, !17, i64 1176, !9, i64 1232, !9, i64 1240, !9, i64 1248, !9, i64 1256, !9, i64 1264, !9, i64 1272, !9, i64 1280, !9, i64 1288, !9, i64 1296, !9, i64 1304, !9, i64 1312, !9, i64 1320, !9, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !9, i64 1360, !9, i64 1368, !9, i64 1376, !9, i64 1384, !9, i64 1392, !9, i64 1400, !9, i64 1408, !9, i64 1416, !9, i64 1424, !9, i64 1432, !9, i64 1440, !9, i64 1448, !9, i64 1456, !16, i64 1464, !18, i64 1472, !9, i64 1664, !9, i64 1672, !9, i64 1680, !9, i64 1688, !9, i64 1696, !9, i64 1704, !9, i64 1712, !9, i64 1720, !9, i64 1728, !9, i64 1736, !9, i64 1744, !9, i64 1752, !9, i64 1760, !9, i64 1768, !9, i64 1776, !19, i64 1784, !20, i64 1792, !21, i64 1896, !22, i64 1968, !9, i64 2016, !10, i64 2024, !10, i64 2025, !10, i64 2026, !10, i64 2027, !10, i64 2028, !10, i64 2029, !10, i64 2030, !10, i64 2031, !10, i64 2032, !10, i64 2033, !10, i64 2034, !10, i64 2035}
!8 = !{!"asm_out", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"asm_int_op", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!13 = !{!"sched", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288}
!14 = !{!"vectorize", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!15 = !{!"int", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"addr_space", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!18 = !{!"calls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184}
!19 = !{!"c", !9, i64 0}
!20 = !{!"cxx", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96}
!21 = !{!"emutls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !10, i64 64, !10, i64 65}
!22 = !{!"target_option_hooks", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!23 = !{!24, !9, i64 24}
!24 = !{!"mem_address", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!25 = !{!10, !10, i64 0}
!26 = !{!24, !9, i64 32}
!27 = !{!9, !9, i64 0}
!28 = !{!24, !9, i64 16}
!29 = !{!30, !9, i64 0}
!30 = !{!"mem_addr_template", !9, i64 0, !9, i64 8, !9, i64 16}
!31 = !{!24, !9, i64 0}
!32 = !{!24, !9, i64 8}
!33 = !{!30, !9, i64 8}
!34 = !{!30, !9, i64 16}
!35 = !{!36, !15, i64 0}
!36 = !{!"VEC_mem_addr_template_base", !15, i64 0, !15, i64 4, !10, i64 8}
!37 = !{}
!38 = !{i32 0, i32 2}
!39 = !{!36, !15, i64 4}
!40 = !{i8 0, i8 2}
!41 = !{!42, !15, i64 24}
!42 = !{!"affine_tree_combination", !9, i64 0, !43, i64 8, !15, i64 24, !10, i64 32, !9, i64 224}
!43 = !{!"", !16, i64 0, !16, i64 8}
!44 = !{!45, !9, i64 0}
!45 = !{!"aff_comb_elt", !9, i64 0, !43, i64 8}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!42, !9, i64 224}
!49 = distinct !{!49, !47}
!50 = !{i64 0, i64 8, !51, i64 8, i64 8, !51}
!51 = !{!16, !16, i64 0}
!52 = !{i64 0, i64 8, !51}
!53 = distinct !{!53, !47}
!54 = !{i64 0, i64 8, !27, i64 8, i64 8, !51, i64 16, i64 8, !51}
!55 = distinct !{!55, !47}
!56 = distinct !{!56, !47}
!57 = distinct !{!57, !47}
!58 = !{!59, !15, i64 0}
!59 = !{!"VEC_mem_addr_template_gc", !36, i64 0}
!60 = distinct !{!60, !47}
!61 = distinct !{!61, !47}
!62 = distinct !{!62, !47}
