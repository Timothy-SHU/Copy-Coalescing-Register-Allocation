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
define dso_local ptr @addr_for_mem_ref(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !113 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !114
  %6 = tail call i32 %5(i8 noundef zeroext %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %7 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !133

10:                                               ; preds = %3
  %11 = tail call i32 @integer_onep(ptr noundef nonnull %8) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !prof !134

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !135
  %19 = tail call ptr @immed_double_const(i64 noundef %16, i64 noundef %18, i32 noundef %6) #10
  br label %20

20:                                               ; preds = %3, %10, %13
  %21 = phi ptr [ %19, %13 ], [ null, %10 ], [ null, %3 ]
  %22 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !136
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25, !prof !137

25:                                               ; preds = %20
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %23) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35, !prof !138

28:                                               ; preds = %25
  %29 = load ptr, ptr %22, align 8, !tbaa !136
  %30 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !135
  %34 = tail call ptr @immed_double_const(i64 noundef %31, i64 noundef %33, i32 noundef %6) #10
  br label %35

35:                                               ; preds = %20, %25, %28
  %36 = phi ptr [ %34, %28 ], [ null, %25 ], [ null, %20 ]
  %37 = icmp eq i8 %2, 0
  br i1 %37, label %38, label %101, !prof !139

38:                                               ; preds = %35
  %39 = zext i8 %1 to i32
  %40 = shl nuw nsw i32 %39, 5
  %41 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %42 = load <2 x ptr>, ptr %0, align 8, !tbaa !140
  %43 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !141
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
  br i1 %57, label %61, label %58, !prof !142

58:                                               ; preds = %38
  %59 = add nuw nsw i32 %54, 1
  tail call fastcc void @VEC_mem_addr_template_gc_safe_grow_cleared(i32 noundef %59) #12
  %60 = load ptr, ptr @mem_addr_template_list, align 8
  br label %61

61:                                               ; preds = %58, %38
  %62 = phi ptr [ %60, %58 ], [ %55, %38 ]
  %63 = tail call fastcc ptr @VEC_mem_addr_template_base_index(ptr noundef %62, i32 noundef %54) #12
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %92, !prof !145

66:                                               ; preds = %61
  %67 = load ptr, ptr %0, align 8, !tbaa !146
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69, !prof !147

69:                                               ; preds = %66
  %70 = tail call ptr @ggc_alloc_string(ptr noundef nonnull @.str, i32 noundef -1) #10
  %71 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef %6, ptr noundef %70) #10
  br label %72

72:                                               ; preds = %66, %69
  %73 = phi ptr [ %71, %69 ], [ null, %66 ]
  %74 = load ptr, ptr %41, align 8, !tbaa !148
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !149

76:                                               ; preds = %72
  %77 = tail call ptr @gen_raw_REG(i32 noundef %6, i32 noundef 58) #10
  br label %78

78:                                               ; preds = %72, %76
  %79 = phi ptr [ %77, %76 ], [ null, %72 ]
  %80 = load ptr, ptr %43, align 8, !tbaa !141
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82, !prof !150

82:                                               ; preds = %78
  %83 = tail call ptr @gen_raw_REG(i32 noundef %6, i32 noundef 59) #10
  br label %84

84:                                               ; preds = %78, %82
  %85 = phi ptr [ %83, %82 ], [ null, %78 ]
  %86 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %87 = extractelement <4 x i1> %48, i64 3
  %88 = select i1 %87, ptr null, ptr %86, !prof !151
  %89 = select i1 %50, ptr %86, ptr null, !prof !147
  %90 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 1
  %91 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 2
  tail call fastcc void @gen_addr_rtx(i32 noundef %6, ptr noundef %73, ptr noundef %79, ptr noundef %85, ptr noundef %88, ptr noundef %89, ptr noundef nonnull %63, ptr noundef nonnull %90, ptr noundef nonnull %91) #12
  br label %92

92:                                               ; preds = %84, %61
  %93 = extractelement <4 x i1> %48, i64 3
  br i1 %93, label %97, label %94, !prof !152

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !153
  store ptr %21, ptr %96, align 8, !tbaa !140
  br label %97

97:                                               ; preds = %94, %92
  br i1 %50, label %98, label %124, !prof !154

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.mem_addr_template, ptr %63, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !155
  store ptr %36, ptr %100, align 8, !tbaa !140
  br label %124

101:                                              ; preds = %35
  %102 = load ptr, ptr %0, align 8, !tbaa !146
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104, !prof !156

104:                                              ; preds = %101
  %105 = load ptr, ptr @current_function_decl, align 8, !tbaa !140
  %106 = tail call ptr @build_addr(ptr noundef nonnull %102, ptr noundef %105) #10
  %107 = tail call fastcc ptr @expand_expr(ptr noundef %106, i32 noundef %6) #12
  br label %108

108:                                              ; preds = %101, %104
  %109 = phi ptr [ %107, %104 ], [ null, %101 ]
  %110 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !148
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113, !prof !157

113:                                              ; preds = %108
  %114 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %111, i32 noundef %6) #12
  br label %115

115:                                              ; preds = %108, %113
  %116 = phi ptr [ %114, %113 ], [ null, %108 ]
  %117 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !141
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120, !prof !158

120:                                              ; preds = %115
  %121 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %118, i32 noundef %6) #12
  br label %122

122:                                              ; preds = %115, %120
  %123 = phi ptr [ %121, %120 ], [ null, %115 ]
  call fastcc void @gen_addr_rtx(i32 noundef %6, ptr noundef %109, ptr noundef %116, ptr noundef %123, ptr noundef %21, ptr noundef %36, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #12
  br label %124

124:                                              ; preds = %97, %98, %122
  %125 = phi ptr [ %4, %122 ], [ %63, %98 ], [ %63, %97 ]
  %126 = load ptr, ptr %125, align 8, !tbaa !140
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
define internal fastcc i32 @VEC_mem_addr_template_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !159 !PGOFuncName !160 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !161

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !162
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_addr_template_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !164 !PGOFuncName !165 {
  %2 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !140
  %3 = tail call fastcc i32 @VEC_mem_addr_template_base_length(ptr noundef %2) #12
  tail call fastcc void @VEC_mem_addr_template_gc_safe_grow(i32 noundef %0) #12
  %4 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !140
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
define internal fastcc nonnull ptr @VEC_mem_addr_template_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #4 !prof !166 !PGOFuncName !167 {
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
define internal fastcc void @gen_addr_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8) unnamed_addr #0 !prof !168 !PGOFuncName !169 {
  store ptr null, ptr %6, align 8, !tbaa !140
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11, !prof !170

11:                                               ; preds = %9
  store ptr null, ptr %7, align 8, !tbaa !140
  br label %12

12:                                               ; preds = %11, %9
  %13 = icmp eq ptr %8, null
  br i1 %13, label %15, label %14, !prof !170

14:                                               ; preds = %12
  store ptr null, ptr %8, align 8, !tbaa !140
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq ptr %3, null
  br i1 %16, label %25, label %17, !prof !171

17:                                               ; preds = %15
  %18 = icmp eq ptr %4, null
  br i1 %18, label %23, label %19, !prof !172

19:                                               ; preds = %17
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br i1 %10, label %23, label %21, !prof !173

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %22, ptr %7, align 8, !tbaa !140
  br label %23

23:                                               ; preds = %19, %21, %17
  %24 = phi ptr [ %20, %21 ], [ %20, %19 ], [ %3, %17 ]
  store ptr %24, ptr %6, align 8, !tbaa !140
  br label %25

25:                                               ; preds = %23, %15
  %26 = icmp eq ptr %2, null
  br i1 %26, label %34, label %27, !prof !174

27:                                               ; preds = %25
  %28 = load ptr, ptr %6, align 8, !tbaa !140
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !175

30:                                               ; preds = %27
  %31 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %28) #10
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ %2, %27 ]
  store ptr %33, ptr %6, align 8, !tbaa !140
  br label %34

34:                                               ; preds = %32, %25
  %35 = icmp eq ptr %1, null
  %36 = icmp eq ptr %5, null
  br i1 %35, label %54, label %37, !prof !176

37:                                               ; preds = %34
  br i1 %36, label %47, label %38, !prof !177

38:                                               ; preds = %37
  %39 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #10
  br i1 %13, label %42, label %40, !prof !178

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %8, align 8, !tbaa !140
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, ptr %1, align 8
  %44 = trunc i32 %43 to i16
  switch i16 %44, label %47 [
    i16 45, label %45
    i16 44, label %45
    i16 35, label %45
  ], !prof !179

45:                                               ; preds = %42, %42, %42
  %46 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %0, ptr noundef %39) #10
  br label %47

47:                                               ; preds = %42, %45, %37
  %48 = phi ptr [ %46, %45 ], [ %1, %37 ], [ %39, %42 ]
  %49 = load ptr, ptr %6, align 8, !tbaa !140
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !180

51:                                               ; preds = %47
  %52 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %49, ptr noundef %48) #10
  store ptr %52, ptr %6, align 8, !tbaa !140
  br label %67

53:                                               ; preds = %47
  store ptr %48, ptr %6, align 8, !tbaa !140
  br label %67

54:                                               ; preds = %34
  br i1 %36, label %65, label %55, !prof !181

55:                                               ; preds = %54
  %56 = load ptr, ptr %6, align 8, !tbaa !140
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !182

58:                                               ; preds = %55
  %59 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %5) #10
  store ptr %59, ptr %6, align 8, !tbaa !140
  br i1 %13, label %67, label %60, !prof !183

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %63

62:                                               ; preds = %55
  store ptr %5, ptr %6, align 8, !tbaa !140
  br i1 %13, label %72, label %63

63:                                               ; preds = %62, %60
  %64 = phi ptr [ %61, %60 ], [ %6, %62 ]
  store ptr %64, ptr %8, align 8, !tbaa !140
  br label %65

65:                                               ; preds = %63, %54
  %66 = load ptr, ptr %6, align 8, !tbaa !140
  br label %67

67:                                               ; preds = %65, %58, %51, %53
  %68 = phi ptr [ %66, %65 ], [ %59, %58 ], [ %52, %51 ], [ %48, %53 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !184

70:                                               ; preds = %67
  %71 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !140
  store ptr %71, ptr %6, align 8, !tbaa !140
  br label %72

72:                                               ; preds = %62, %70, %67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !185 !PGOFuncName !186 {
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef 0, ptr noundef null) #10
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_addr_template_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !164 !PGOFuncName !187 {
  %2 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !140
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !188

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !162
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_mem_addr_template_gc_reserve_exact(i32 noundef %8) #12
  %9 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !140, !nonnull !189, !noundef !189
  store i32 %0, ptr %9, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_mem_addr_template_base_address(ptr noundef readnone %0) unnamed_addr #4 !prof !164 !PGOFuncName !190 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !191
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_mem_addr_template_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !164 !PGOFuncName !192 {
  %2 = load ptr, ptr @mem_addr_template_list, align 8, !tbaa !140
  %3 = tail call fastcc i32 @VEC_mem_addr_template_base_space(ptr noundef %2, i32 noundef %0) #12, !range !193
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !194

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 24) #10
  store ptr %6, ptr @mem_addr_template_list, align 8, !tbaa !140
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_mem_addr_template_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !164 !PGOFuncName !195 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !188

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !196
  %7 = load i32, ptr %0, align 8, !tbaa !162
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
define dso_local ptr @tree_mem_ref_addr(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !197 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = load ptr, ptr %3, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !140
  %14 = tail call ptr @build_addr(ptr noundef nonnull %8, ptr noundef %13) #10
  %15 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %14) #10
  br label %25

16:                                               ; preds = %2
  %17 = icmp eq ptr %10, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !135
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
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = icmp eq ptr %5, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
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
  %42 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
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
  %53 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
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
define dso_local ptr @create_mem_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !198 {
  %6 = alloca %struct.mem_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  call fastcc void @addr_to_parts(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i8 noundef zeroext %4) #12
  call fastcc void @gimplify_mem_ref_parts(ptr noundef %0, ptr noundef nonnull %6) #12
  %7 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %125, !prof !199

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @integer_onep(ptr noundef nonnull %11) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 650, ptr noundef nonnull @.str.2) #10
  br label %21

21:                                               ; preds = %16, %20
  %22 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %22, ptr noundef %18, ptr noundef nonnull %11) #10
  %24 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %23, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  store ptr %24, ptr %17, align 8, !tbaa !141
  store ptr null, ptr %10, align 8, !tbaa !131
  %25 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %125

27:                                               ; preds = %21, %13, %9
  %28 = load ptr, ptr %6, align 8, !tbaa !146
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !140
  %32 = tail call ptr @build_addr(ptr noundef nonnull %28, ptr noundef %31) #10
  %33 = tail call zeroext i8 @is_gimple_val(ptr noundef %32) #10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 665, ptr noundef nonnull @.str.2) #10
  br label %36

36:                                               ; preds = %30, %35
  %37 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !148
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %42 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !135
  %44 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %41, ptr noundef %43) #10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 671, ptr noundef nonnull @.str.2) #10
  br label %47

47:                                               ; preds = %40, %46
  %48 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !141
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !135
  %54 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %38) #10
  %56 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %53, ptr noundef %32, ptr noundef %55) #10
  %57 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %56, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %59

58:                                               ; preds = %47
  store ptr %38, ptr %48, align 8, !tbaa !141
  br label %59

59:                                               ; preds = %36, %51, %58
  %60 = phi ptr [ %57, %51 ], [ %32, %58 ], [ %32, %36 ]
  store ptr %60, ptr %37, align 8, !tbaa !148
  store ptr null, ptr %6, align 8, !tbaa !146
  %61 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %125

63:                                               ; preds = %59, %27
  %64 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !141
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !148
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !135
  %74 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %73, ptr noundef nonnull %69, ptr noundef nonnull %65) #10
  %75 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %74, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %76

76:                                               ; preds = %67, %71
  %77 = phi ptr [ %75, %71 ], [ %65, %67 ]
  store ptr %77, ptr %68, align 8, !tbaa !148
  store ptr null, ptr %64, align 8, !tbaa !141
  %78 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %125

80:                                               ; preds = %76, %63
  %81 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !136
  %83 = icmp eq ptr %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %80
  %85 = tail call i32 @integer_zerop(ptr noundef nonnull %82) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.mem_address, ptr %6, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !148
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !135
  %94 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %95 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %94, ptr noundef nonnull %82) #10
  %96 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %93, ptr noundef nonnull %89, ptr noundef %95) #10
  %97 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %96, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %98

98:                                               ; preds = %87, %91
  %99 = phi ptr [ %97, %91 ], [ %82, %87 ]
  store ptr %99, ptr %88, align 8, !tbaa !148
  store ptr null, ptr %81, align 8, !tbaa !136
  %100 = call fastcc ptr @create_mem_ref_raw(ptr noundef %1, ptr noundef nonnull %6) #12
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %98, %84, %80
  %103 = load ptr, ptr %6, align 8, !tbaa !146
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 743, ptr noundef nonnull @.str.2) #10
  br label %106

106:                                              ; preds = %102, %105
  %107 = load ptr, ptr %64, align 8, !tbaa !141
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 744, ptr noundef nonnull @.str.2) #10
  br label %110

110:                                              ; preds = %106, %109
  %111 = load ptr, ptr %10, align 8, !tbaa !131
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
  %118 = load ptr, ptr %81, align 8, !tbaa !136
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
define internal fastcc void @addr_to_parts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !198 !PGOFuncName !200 {
  %6 = getelementptr inbounds %struct.mem_address, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %8, i64 %10) #12, !range !201
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !202

13:                                               ; preds = %5
  %14 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %15 = tail call ptr @double_int_to_tree(ptr noundef %14, i64 %8, i64 %10) #10
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi ptr [ %15, %13 ], [ null, %5 ]
  %18 = getelementptr inbounds %struct.mem_address, ptr %3, i64 0, i32 4
  store ptr %17, ptr %18, align 8
  tail call fastcc void @move_fixed_address_to_symbol(ptr noundef nonnull %3, ptr noundef nonnull %1) #12
  tail call fastcc void @most_expensive_mult_to_index(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext %4) #12
  %19 = load ptr, ptr %3, align 8, !tbaa !146
  %20 = icmp eq ptr %19, null
  %21 = icmp ne ptr %2, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %25, !prof !203

23:                                               ; preds = %16
  tail call fastcc void @move_hint_to_base(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %1) #12
  %24 = load ptr, ptr %3, align 8, !tbaa !146
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %24, %23 ], [ %19, %16 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32, !prof !204

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !tbaa !148
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !205

31:                                               ; preds = %28
  tail call fastcc void @move_pointer_to_base(ptr noundef nonnull %3, ptr noundef nonnull %1) #12
  br label %32

32:                                               ; preds = %31, %28, %25
  %33 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !206
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36, !prof !209

36:                                               ; preds = %32, %52
  %37 = phi i64 [ %54, %52 ], [ 0, %32 ]
  %38 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %39 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !210
  %41 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef %40) #10
  %42 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %37, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, ptr %42, i64 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = tail call fastcc zeroext i8 @double_int_one_p(i64 %43, i64 %45) #12, !range !201
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52, !prof !212

48:                                               ; preds = %36
  %49 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %50 = tail call ptr @double_int_to_tree(ptr noundef %49, i64 %43, i64 %45) #10
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %49, ptr noundef %41, ptr noundef %50) #10
  br label %52

52:                                               ; preds = %48, %36
  %53 = phi ptr [ %41, %36 ], [ %51, %48 ]
  tail call fastcc void @add_to_parts(ptr noundef nonnull %3, ptr noundef %53) #12
  %54 = add nuw nsw i64 %37, 1
  %55 = load i32, ptr %33, align 8, !tbaa !206
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %36, label %58, !prof !213, !llvm.loop !214

58:                                               ; preds = %52, %32
  %59 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !217

62:                                               ; preds = %58
  %63 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %64 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %63, ptr noundef nonnull %60) #10
  tail call fastcc void @add_to_parts(ptr noundef nonnull %3, ptr noundef %64) #12
  br label %65

65:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_mem_ref_parts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !198 !PGOFuncName !218 {
  %3 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !219

6:                                                ; preds = %2
  %7 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  store ptr %7, ptr %3, align 8, !tbaa !148
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !220

12:                                               ; preds = %8
  %13 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  store ptr %13, ptr %9, align 8, !tbaa !141
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_mem_ref_raw(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !166 !PGOFuncName !221 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 14
  br i1 %5, label %6, label %9, !prof !222

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
  br i1 %20, label %48, label %21, !prof !223

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !152

25:                                               ; preds = %21
  %26 = tail call i32 @integer_onep(ptr noundef nonnull %23) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !224

28:                                               ; preds = %25
  store ptr null, ptr %22, align 8, !tbaa !131
  br label %29

29:                                               ; preds = %28, %25, %21
  %30 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !prof !225

33:                                               ; preds = %29
  %34 = tail call i32 @integer_zerop(ptr noundef nonnull %31) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38, !prof !226

36:                                               ; preds = %33
  %37 = load ptr, ptr %30, align 8, !tbaa !136
  br label %39

38:                                               ; preds = %33
  store ptr null, ptr %30, align 8, !tbaa !136
  br label %39

39:                                               ; preds = %36, %38, %29
  %40 = phi ptr [ %37, %36 ], [ null, %38 ], [ null, %29 ]
  %41 = load ptr, ptr %1, align 8, !tbaa !146
  %42 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !141
  %46 = load ptr, ptr %22, align 8, !tbaa !131
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
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #4 !prof !198 !PGOFuncName !227 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false, !prof !228
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_fixed_address_to_symbol(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !prof !198 !PGOFuncName !229 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6, !prof !230

6:                                                ; preds = %2
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi i64 [ 0, %6 ], [ %28, %27 ]
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %9, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, ptr %10, i64 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = tail call fastcc zeroext i8 @double_int_one_p(i64 %11, i64 %13) #12, !range !201
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16, !prof !231

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %9
  %18 = load ptr, ptr %17, align 8, !tbaa !210
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 121
  br i1 %21, label %22, label %27, !prof !232

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !135
  %25 = tail call fastcc zeroext i8 @fixed_address_object_p(ptr noundef %24) #12, !range !201
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30, !prof !233

27:                                               ; preds = %16, %22, %8
  %28 = add nuw nsw i64 %9, 1
  %29 = icmp eq i64 %28, %7
  br i1 %29, label %39, label %8, !prof !234, !llvm.loop !235

30:                                               ; preds = %22
  %31 = trunc i64 %9 to i32
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ 0, %2 ], [ %31, %30 ]
  %34 = phi ptr [ null, %2 ], [ %18, %30 ]
  %35 = icmp eq i32 %33, %4
  br i1 %35, label %39, label %36, !prof !236

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !135
  store ptr %38, ptr %0, align 8, !tbaa !146
  tail call void @aff_combination_remove_elt(ptr noundef nonnull %1, i32 noundef %33) #10
  br label %39

39:                                               ; preds = %27, %32, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @most_expensive_mult_to_index(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !198 !PGOFuncName !237 {
  %5 = load i64, ptr %0, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !114
  %9 = tail call i32 %8(i8 noundef zeroext %7) #10
  %10 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !206
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %113, label %13, !prof !238

13:                                               ; preds = %4, %50
  %14 = phi i64 [ %54, %50 ], [ 0, %4 ]
  %15 = phi i64 [ %53, %50 ], [ 0, %4 ]
  %16 = phi i64 [ %52, %50 ], [ 0, %4 ]
  %17 = phi i32 [ %51, %50 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %14, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %18, i64 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %19, i64 %21) #10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %50, label %24, !prof !239

24:                                               ; preds = %13
  %25 = load i64, ptr %18, align 8
  %26 = load i64, ptr %20, align 8
  %27 = tail call i64 @double_int_to_shwi(i64 %25, i64 %26) #10
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %50, label %29, !prof !240

29:                                               ; preds = %24
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35, !prof !241

33:                                               ; preds = %29
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #10
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 noundef %27, i32 noundef %41, i8 noundef zeroext %7) #10
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44, !prof !242

44:                                               ; preds = %40
  %45 = tail call i32 @multiply_by_cost(i64 noundef %27, i32 noundef %9, i8 noundef zeroext %3) #10
  %46 = icmp ugt i32 %45, %17
  br i1 %46, label %47, label %50, !prof !243

47:                                               ; preds = %44
  %48 = load i64, ptr %18, align 8, !tbaa.struct !244
  %49 = load i64, ptr %20, align 8, !tbaa.struct !246
  br label %50

50:                                               ; preds = %44, %47, %24, %40, %13
  %51 = phi i32 [ %17, %24 ], [ %45, %47 ], [ %17, %44 ], [ %17, %40 ], [ %17, %13 ]
  %52 = phi i64 [ %16, %24 ], [ %48, %47 ], [ %16, %44 ], [ %16, %40 ], [ %16, %13 ]
  %53 = phi i64 [ %15, %24 ], [ %49, %47 ], [ %15, %44 ], [ %15, %40 ], [ %15, %13 ]
  %54 = add nuw nsw i64 %14, 1
  %55 = load i32, ptr %10, align 8, !tbaa !206
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %13, label %58, !prof !247, !llvm.loop !248

58:                                               ; preds = %50
  %59 = icmp eq i32 %51, 0
  br i1 %59, label %113, label %60, !prof !249

60:                                               ; preds = %58
  %61 = icmp eq i32 %55, 0
  br i1 %61, label %106, label %62, !prof !250

62:                                               ; preds = %60, %99
  %63 = phi i64 [ %102, %99 ], [ 0, %60 ]
  %64 = phi ptr [ %101, %99 ], [ null, %60 ]
  %65 = phi i32 [ %100, %99 ], [ 0, %60 ]
  %66 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %63
  %67 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %63, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa.struct !244
  %69 = getelementptr inbounds i8, ptr %67, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa.struct !246
  %71 = tail call { i64, i64 } @double_int_neg(i64 %68, i64 %70) #10
  %72 = extractvalue { i64, i64 } %71, 0
  %73 = extractvalue { i64, i64 } %71, 1
  %74 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %72, i64 %73, ptr noundef nonnull %2) #10
  %75 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %68, i64 %70, i64 %52, i64 %53) #12, !range !201
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %86, !prof !251

77:                                               ; preds = %62
  %78 = extractvalue { i64, i64 } %74, 1
  %79 = extractvalue { i64, i64 } %74, 0
  %80 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %79, i64 %78, i64 %52, i64 %53) #12, !range !201
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86, !prof !252

82:                                               ; preds = %77
  %83 = zext i32 %65 to i64
  %84 = getelementptr inbounds %struct.affine_tree_combination, ptr %2, i64 0, i32 3, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, ptr noundef nonnull align 8 dereferenceable(24) %66, i64 24, i1 false), !tbaa.struct !253
  %85 = add i32 %65, 1
  br label %99

86:                                               ; preds = %77, %62
  %87 = phi i32 [ 63, %62 ], [ 64, %77 ]
  %88 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %89 = load ptr, ptr %66, align 8, !tbaa !210
  %90 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %88, ptr noundef %89) #10
  %91 = icmp eq ptr %64, null
  br i1 %91, label %95, label %92, !prof !254

92:                                               ; preds = %86
  %93 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %94 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %87, ptr noundef %93, ptr noundef nonnull %64, ptr noundef %90) #10
  br label %99

95:                                               ; preds = %86
  br i1 %76, label %96, label %99, !prof !255

96:                                               ; preds = %95
  %97 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %98 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %97, ptr noundef %90) #10
  br label %99

99:                                               ; preds = %95, %92, %96, %82
  %100 = phi i32 [ %65, %92 ], [ %65, %96 ], [ %85, %82 ], [ %65, %95 ]
  %101 = phi ptr [ %94, %92 ], [ %98, %96 ], [ %64, %82 ], [ %90, %95 ]
  %102 = add nuw nsw i64 %63, 1
  %103 = load i32, ptr %10, align 8, !tbaa !206
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %62, label %106, !prof !256, !llvm.loop !257

106:                                              ; preds = %99, %60
  %107 = phi i32 [ 0, %60 ], [ %100, %99 ]
  %108 = phi ptr [ null, %60 ], [ %101, %99 ]
  store i32 %107, ptr %10, align 8, !tbaa !206
  %109 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !141
  %110 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %111 = tail call ptr @double_int_to_tree(ptr noundef %110, i64 %52, i64 %53) #10
  %112 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  store ptr %111, ptr %112, align 8, !tbaa !131
  br label %113

113:                                              ; preds = %4, %58, %106
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_hint_to_base(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !258 !PGOFuncName !259 {
  %5 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !206
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8, !prof !260

8:                                                ; preds = %4, %24
  %9 = phi i32 [ %25, %24 ], [ %6, %4 ]
  %10 = phi i64 [ %27, %24 ], [ 0, %4 ]
  %11 = phi ptr [ %26, %24 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 3, i64 %10, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call fastcc zeroext i8 @double_int_one_p(i64 %13, i64 %15) #12, !range !201
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18, !prof !261

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.affine_tree_combination, ptr %3, i64 0, i32 3, i64 %10
  %20 = load ptr, ptr %19, align 8, !tbaa !210
  %21 = tail call i32 @operand_equal_p(ptr noundef %20, ptr noundef %2, i32 noundef 0) #10
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %5, align 8, !tbaa !206
  br i1 %22, label %24, label %30, !prof !262

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %9, %8 ], [ %23, %18 ]
  %26 = phi ptr [ %11, %8 ], [ %20, %18 ]
  %27 = add nuw nsw i64 %10, 1
  %28 = zext i32 %25 to i64
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %8, label %30, !prof !263, !llvm.loop !264

30:                                               ; preds = %24, %18
  %31 = phi i32 [ %25, %24 ], [ %23, %18 ]
  %32 = phi i64 [ %27, %24 ], [ %10, %18 ]
  %33 = phi ptr [ %26, %24 ], [ %20, %18 ]
  %34 = trunc i64 %32 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %46, label %36, !prof !265

36:                                               ; preds = %30
  %37 = load i64, ptr %0, align 8
  %38 = lshr i64 %37, 48
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 65280
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !140
  %42 = tail call ptr @build_qualified_type(ptr noundef %41, i32 noundef %40) #10
  %43 = tail call ptr @build_pointer_type(ptr noundef %42) #10
  %44 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %43, ptr noundef %33) #10
  %45 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !148
  tail call void @aff_combination_remove_elt(ptr noundef nonnull %3, i32 noundef %34) #10
  br label %46

46:                                               ; preds = %4, %30, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_pointer_to_base(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !prof !266 !PGOFuncName !267 {
  %3 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !206
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6, !prof !260

6:                                                ; preds = %2, %21
  %7 = phi i64 [ %23, %21 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %7, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = tail call fastcc zeroext i8 @double_int_one_p(i64 %9, i64 %11) #12, !range !201
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14, !prof !268

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.affine_tree_combination, ptr %1, i64 0, i32 3, i64 %7
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %21 [
    i16 10, label %25
    i16 12, label %25
  ], !prof !269

21:                                               ; preds = %14, %6
  %22 = zext i32 %4 to i64
  %23 = add nuw nsw i64 %7, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %33, label %6, !prof !270, !llvm.loop !271

25:                                               ; preds = %14, %14
  %26 = trunc i64 %7 to i32
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i32 [ 0, %2 ], [ %26, %25 ]
  %29 = phi ptr [ null, %2 ], [ %16, %25 ]
  %30 = icmp eq i32 %28, %4
  br i1 %30, label %33, label %31, !prof !265

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  store ptr %29, ptr %32, align 8, !tbaa !148
  tail call void @aff_combination_remove_elt(ptr noundef nonnull %1, i32 noundef %28) #10
  br label %33

33:                                               ; preds = %21, %27, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_one_p(i64 %0, i64 %1) unnamed_addr #4 !prof !272 !PGOFuncName !273 {
  %3 = icmp eq i64 %0, 1
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false, !prof !274
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_parts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !275 !PGOFuncName !276 {
  %3 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !277

6:                                                ; preds = %2
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %8 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %1) #10
  store ptr %8, ptr %3, align 8, !tbaa !141
  br label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mem_address, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !148
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !278

13:                                               ; preds = %9
  store ptr %1, ptr %10, align 8, !tbaa !148
  br label %27

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %23 [
    i16 10, label %19
    i16 12, label %19
  ], !prof !279

19:                                               ; preds = %14, %14
  %20 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %21 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %20, ptr noundef %1) #10
  %22 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %21) #10
  br label %25

23:                                               ; preds = %14
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef %1) #10
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %22, %19 ]
  store ptr %26, ptr %10, align 8, !tbaa !148
  br label %27

27:                                               ; preds = %25, %13, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @fixed_address_object_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !280 !PGOFuncName !281 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %19, !prof !282

5:                                                ; preds = %1
  %6 = and i64 %2, 67108864
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13, !prof !233

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13, !prof !283

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
define internal fastcc zeroext i8 @double_int_equal_p(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #4 !prof !284 !PGOFuncName !285 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false, !prof !286
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
define internal fastcc zeroext i8 @valid_mem_ref_p(i32 noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !166 !PGOFuncName !287 {
  %4 = tail call ptr @addr_for_mem_ref(ptr noundef %2, i8 noundef zeroext %1, i8 noundef zeroext 0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !223

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
define dso_local void @get_address_description(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 !prof !288 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  store ptr %4, ptr %1, align 8, !tbaa !146
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !141
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !135
  %13 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @copy_mem_ref_info(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 !prof !289 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !135
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
define dso_local ptr @maybe_fold_tmr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !290 {
  %2 = alloca %struct.mem_address, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  call void @get_address_description(ptr noundef %0, ptr noundef nonnull %2) #12
  %3 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !291

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %20, !prof !292

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %15, ptr noundef nonnull %4) #10
  %17 = tail call ptr @fold_binary_to_constant(i32 noundef 63, ptr noundef %15, ptr noundef nonnull %12, ptr noundef %16) #10
  br label %18

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %17, %14 ], [ %4, %10 ]
  store ptr %19, ptr %11, align 8, !tbaa !136
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %20

20:                                               ; preds = %18, %6, %1
  %21 = phi i1 [ false, %18 ], [ true, %6 ], [ true, %1 ]
  %22 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25, !prof !293

25:                                               ; preds = %20
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %29, label %46, !prof !294

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !131
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33, !prof !295

33:                                               ; preds = %29
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %35 = tail call ptr @fold_binary_to_constant(i32 noundef 65, ptr noundef %34, ptr noundef nonnull %23, ptr noundef nonnull %31) #10
  store ptr null, ptr %30, align 8, !tbaa !131
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %35, %33 ], [ %23, %29 ]
  %38 = getelementptr inbounds %struct.mem_address, ptr %2, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !136
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !296

41:                                               ; preds = %36
  %42 = load ptr, ptr @sizetype_tab, align 16, !tbaa !140
  %43 = tail call ptr @fold_binary_to_constant(i32 noundef 63, ptr noundef %42, ptr noundef nonnull %39, ptr noundef %37) #10
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %43, %41 ], [ %37, %36 ]
  store ptr %45, ptr %38, align 8, !tbaa !136
  store ptr null, ptr %22, align 8, !tbaa !141
  br label %47

46:                                               ; preds = %25, %20
  br i1 %21, label %53, label %47, !prof !297

47:                                               ; preds = %44, %46
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !135
  %50 = call fastcc ptr @create_mem_ref_raw(ptr noundef %49, ptr noundef nonnull %2) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !295

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
define dso_local void @dump_mem_address(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !197 {
  %3 = load ptr, ptr %1, align 8, !tbaa !146
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 8, i64 1, ptr %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !146
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %7, i32 noundef 2) #10
  %8 = tail call i32 @fputc(i32 10, ptr %0)
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !148
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 6, i64 1, ptr %0)
  %15 = load ptr, ptr %10, align 8, !tbaa !148
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %15, i32 noundef 2) #10
  %16 = tail call i32 @fputc(i32 10, ptr %0)
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !141
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  %23 = load ptr, ptr %18, align 8, !tbaa !141
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %23, i32 noundef 2) #10
  %24 = tail call i32 @fputc(i32 10, ptr %0)
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %0)
  %31 = load ptr, ptr %26, align 8, !tbaa !131
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %31, i32 noundef 2) #10
  %32 = tail call i32 @fputc(i32 10, ptr %0)
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.mem_address, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !136
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %0)
  %39 = load ptr, ptr %34, align 8, !tbaa !136
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %39, i32 noundef 2) #10
  %40 = tail call i32 @fputc(i32 10, ptr %0)
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_VEC_mem_addr_template_gc(ptr noundef %0) #0 !prof !197 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !298
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !143
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !300

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_VEC_mem_addr_template_gc(ptr noundef %0) #0 !prof !197 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24VEC_mem_addr_template_gc, i32 noundef 58) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !298
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_mem_addr_template_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11) #10
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !301

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_24VEC_mem_addr_template_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !197 {
  %5 = load i32, ptr %1, align 8, !tbaa !298
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
  br i1 %16, label %17, label %10, !llvm.loop !302

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!112}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!36 = !{ptr @addr_for_mem_ref, ptr @integer_onep, i64 7256}
!37 = !{ptr @addr_for_mem_ref, ptr @immed_double_const, i64 15012}
!38 = !{ptr @addr_for_mem_ref, ptr @integer_zerop, i64 7759}
!39 = !{ptr @addr_for_mem_ref, ptr @VEC_mem_addr_template_base_length, i64 8910}
!40 = !{ptr @addr_for_mem_ref, ptr @VEC_mem_addr_template_gc_safe_grow_cleared, i64 8}
!41 = !{ptr @addr_for_mem_ref, ptr @VEC_mem_addr_template_base_index, i64 8910}
!42 = !{ptr @addr_for_mem_ref, ptr @ggc_alloc_string, i64 8}
!43 = !{ptr @addr_for_mem_ref, ptr @gen_rtx_fmt_s00_stat, i64 8}
!44 = !{ptr @addr_for_mem_ref, ptr @gen_raw_REG, i64 20}
!45 = !{ptr @addr_for_mem_ref, ptr @gen_addr_rtx, i64 8878}
!46 = !{ptr @addr_for_mem_ref, ptr @build_addr, i64 929}
!47 = !{ptr @addr_for_mem_ref, ptr @expand_expr, i64 13692}
!48 = !{ptr @VEC_mem_addr_template_gc_safe_grow_cleared, ptr @VEC_mem_addr_template_base_length, i64 7}
!49 = !{ptr @VEC_mem_addr_template_gc_safe_grow_cleared, ptr @VEC_mem_addr_template_gc_safe_grow, i64 7}
!50 = !{ptr @VEC_mem_addr_template_gc_safe_grow_cleared, ptr @VEC_mem_addr_template_base_address, i64 7}
!51 = !{ptr @gen_addr_rtx, ptr @gen_rtx_fmt_ee_stat, i64 8431}
!52 = !{ptr @gen_addr_rtx, ptr @simplify_gen_binary, i64 3909}
!53 = !{ptr @gen_addr_rtx, ptr @gen_rtx_fmt_e_stat, i64 290}
!54 = !{ptr @expand_expr, ptr @expand_expr_real, i64 13692}
!55 = !{ptr @VEC_mem_addr_template_gc_safe_grow, ptr @VEC_mem_addr_template_gc_reserve_exact, i64 7}
!56 = !{ptr @VEC_mem_addr_template_gc_reserve_exact, ptr @VEC_mem_addr_template_base_space, i64 7}
!57 = !{ptr @VEC_mem_addr_template_gc_reserve_exact, ptr @vec_gc_o_reserve_exact, i64 6}
!58 = !{ptr @create_mem_ref, ptr @addr_to_parts, i64 8909}
!59 = !{ptr @create_mem_ref, ptr @gimplify_mem_ref_parts, i64 8909}
!60 = !{ptr @create_mem_ref, ptr @create_mem_ref_raw, i64 8910}
!61 = !{ptr @create_mem_ref, ptr @integer_onep, i64 1}
!62 = !{ptr @create_mem_ref, ptr @build_addr, i64 1}
!63 = !{ptr @create_mem_ref, ptr @is_gimple_val, i64 1}
!64 = !{ptr @addr_to_parts, ptr @double_int_zero_p, i64 8909}
!65 = !{ptr @addr_to_parts, ptr @double_int_to_tree, i64 4408}
!66 = !{ptr @addr_to_parts, ptr @move_fixed_address_to_symbol, i64 8909}
!67 = !{ptr @addr_to_parts, ptr @most_expensive_mult_to_index, i64 8909}
!68 = !{ptr @addr_to_parts, ptr @move_hint_to_base, i64 4095}
!69 = !{ptr @addr_to_parts, ptr @move_pointer_to_base, i64 3878}
!70 = !{ptr @addr_to_parts, ptr @fold_convert_loc, i64 2177}
!71 = !{ptr @addr_to_parts, ptr @double_int_one_p, i64 2176}
!72 = !{ptr @addr_to_parts, ptr @fold_build2_stat_loc, i64 520}
!73 = !{ptr @addr_to_parts, ptr @add_to_parts, i64 2177}
!74 = !{ptr @gimplify_mem_ref_parts, ptr @force_gimple_operand_gsi, i64 12831}
!75 = !{ptr @create_mem_ref_raw, ptr @vector_type_mode, i64 26}
!76 = !{ptr @create_mem_ref_raw, ptr @valid_mem_ref_p, i64 8910}
!77 = !{ptr @create_mem_ref_raw, ptr @integer_onep, i64 3639}
!78 = !{ptr @create_mem_ref_raw, ptr @integer_zerop, i64 3889}
!79 = !{ptr @create_mem_ref_raw, ptr @build6_stat, i64 8909}
!80 = !{ptr @move_fixed_address_to_symbol, ptr @double_int_one_p, i64 14706}
!81 = !{ptr @move_fixed_address_to_symbol, ptr @fixed_address_object_p, i64 1521}
!82 = !{ptr @move_fixed_address_to_symbol, ptr @aff_combination_remove_elt, i64 300}
!83 = !{ptr @most_expensive_mult_to_index, ptr @double_int_fits_in_shwi_p, i64 13855}
!84 = !{ptr @most_expensive_mult_to_index, ptr @double_int_to_shwi, i64 13854}
!85 = !{ptr @most_expensive_mult_to_index, ptr @vector_type_mode, i64 26}
!86 = !{ptr @most_expensive_mult_to_index, ptr @multiplier_allowed_in_address_p, i64 4227}
!87 = !{ptr @most_expensive_mult_to_index, ptr @multiply_by_cost, i64 3700}
!88 = !{ptr @most_expensive_mult_to_index, ptr @double_int_neg, i64 6727}
!89 = !{ptr @most_expensive_mult_to_index, ptr @double_int_ext_for_comb, i64 6727}
!90 = !{ptr @most_expensive_mult_to_index, ptr @double_int_equal_p, i64 9776}
!91 = !{ptr @most_expensive_mult_to_index, ptr @fold_convert_loc, i64 3709}
!92 = !{ptr @most_expensive_mult_to_index, ptr @fold_build2_stat_loc, i64 70}
!93 = !{ptr @most_expensive_mult_to_index, ptr @fold_build1_stat_loc, i64 1}
!94 = !{ptr @most_expensive_mult_to_index, ptr @double_int_to_tree, i64 3639}
!95 = !{ptr @move_hint_to_base, ptr @double_int_one_p, i64 4079}
!96 = !{ptr @move_hint_to_base, ptr @operand_equal_p, i64 4078}
!97 = !{ptr @move_hint_to_base, ptr @build_qualified_type, i64 4063}
!98 = !{ptr @move_hint_to_base, ptr @build_pointer_type, i64 4063}
!99 = !{ptr @move_hint_to_base, ptr @fold_convert_loc, i64 4063}
!100 = !{ptr @move_hint_to_base, ptr @aff_combination_remove_elt, i64 4063}
!101 = !{ptr @move_pointer_to_base, ptr @double_int_one_p, i64 3849}
!102 = !{ptr @move_pointer_to_base, ptr @aff_combination_remove_elt, i64 3878}
!103 = !{ptr @add_to_parts, ptr @fold_convert_loc, i64 2141}
!104 = !{ptr @add_to_parts, ptr @fold_build2_stat_loc, i64 954}
!105 = !{ptr @valid_mem_ref_p, ptr @addr_for_mem_ref, i64 8910}
!106 = !{ptr @valid_mem_ref_p, ptr @memory_address_addr_space_p, i64 8909}
!107 = !{ptr @maybe_fold_tmr, ptr @get_address_description, i64 1981}
!108 = !{ptr @maybe_fold_tmr, ptr @fold_convert_loc, i64 1}
!109 = !{ptr @maybe_fold_tmr, ptr @fold_binary_to_constant, i64 3}
!110 = !{ptr @maybe_fold_tmr, ptr @create_mem_ref_raw, i64 2}
!111 = !{ptr @maybe_fold_tmr, ptr @copy_mem_ref_info, i64 1}
!112 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!113 = !{!"function_entry_count", i64 17773}
!114 = !{!115, !117, i64 1184}
!115 = !{!"gcc_target", !116, i64 0, !121, i64 368, !122, i64 664, !123, i64 744, !117, i64 752, !117, i64 760, !117, i64 768, !117, i64 776, !117, i64 784, !117, i64 792, !117, i64 800, !117, i64 808, !117, i64 816, !117, i64 824, !117, i64 832, !117, i64 840, !117, i64 848, !117, i64 856, !117, i64 864, !117, i64 872, !117, i64 880, !117, i64 888, !117, i64 896, !117, i64 904, !117, i64 912, !117, i64 920, !117, i64 928, !117, i64 936, !117, i64 944, !117, i64 952, !117, i64 960, !117, i64 968, !117, i64 976, !117, i64 984, !117, i64 992, !117, i64 1000, !117, i64 1008, !117, i64 1016, !117, i64 1024, !117, i64 1032, !117, i64 1040, !117, i64 1048, !117, i64 1056, !124, i64 1064, !124, i64 1072, !117, i64 1080, !117, i64 1088, !117, i64 1096, !117, i64 1104, !117, i64 1112, !117, i64 1120, !117, i64 1128, !117, i64 1136, !117, i64 1144, !117, i64 1152, !117, i64 1160, !117, i64 1168, !125, i64 1176, !117, i64 1232, !117, i64 1240, !117, i64 1248, !117, i64 1256, !117, i64 1264, !117, i64 1272, !117, i64 1280, !117, i64 1288, !117, i64 1296, !117, i64 1304, !117, i64 1312, !117, i64 1320, !117, i64 1328, !117, i64 1336, !117, i64 1344, !117, i64 1352, !117, i64 1360, !117, i64 1368, !117, i64 1376, !117, i64 1384, !117, i64 1392, !117, i64 1400, !117, i64 1408, !117, i64 1416, !117, i64 1424, !117, i64 1432, !117, i64 1440, !117, i64 1448, !117, i64 1456, !124, i64 1464, !126, i64 1472, !117, i64 1664, !117, i64 1672, !117, i64 1680, !117, i64 1688, !117, i64 1696, !117, i64 1704, !117, i64 1712, !117, i64 1720, !117, i64 1728, !117, i64 1736, !117, i64 1744, !117, i64 1752, !117, i64 1760, !117, i64 1768, !117, i64 1776, !127, i64 1784, !128, i64 1792, !129, i64 1896, !130, i64 1968, !117, i64 2016, !118, i64 2024, !118, i64 2025, !118, i64 2026, !118, i64 2027, !118, i64 2028, !118, i64 2029, !118, i64 2030, !118, i64 2031, !118, i64 2032, !118, i64 2033, !118, i64 2034, !118, i64 2035}
!116 = !{!"asm_out", !117, i64 0, !117, i64 8, !117, i64 16, !120, i64 24, !120, i64 56, !117, i64 88, !117, i64 96, !117, i64 104, !117, i64 112, !117, i64 120, !117, i64 128, !117, i64 136, !117, i64 144, !117, i64 152, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184, !117, i64 192, !117, i64 200, !117, i64 208, !117, i64 216, !117, i64 224, !117, i64 232, !117, i64 240, !117, i64 248, !117, i64 256, !117, i64 264, !117, i64 272, !117, i64 280, !117, i64 288, !117, i64 296, !117, i64 304, !117, i64 312, !117, i64 320, !117, i64 328, !117, i64 336, !117, i64 344, !117, i64 352, !117, i64 360}
!117 = !{!"any pointer", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!"asm_int_op", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24}
!121 = !{!"sched", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96, !117, i64 104, !117, i64 112, !117, i64 120, !117, i64 128, !117, i64 136, !117, i64 144, !117, i64 152, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184, !117, i64 192, !117, i64 200, !117, i64 208, !117, i64 216, !117, i64 224, !117, i64 232, !117, i64 240, !117, i64 248, !117, i64 256, !117, i64 264, !117, i64 272, !117, i64 280, !117, i64 288}
!122 = !{!"vectorize", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72}
!123 = !{!"int", !118, i64 0}
!124 = !{!"long", !118, i64 0}
!125 = !{!"addr_space", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48}
!126 = !{!"calls", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96, !117, i64 104, !117, i64 112, !117, i64 120, !117, i64 128, !117, i64 136, !117, i64 144, !117, i64 152, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184}
!127 = !{!"c", !117, i64 0}
!128 = !{!"cxx", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96}
!129 = !{!"emutls", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !118, i64 64, !118, i64 65}
!130 = !{!"target_option_hooks", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40}
!131 = !{!132, !117, i64 24}
!132 = !{!"mem_address", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32}
!133 = !{!"branch_weights", i32 10518, i32 7257}
!134 = !{!"branch_weights", i32 7257, i32 1}
!135 = !{!118, !118, i64 0}
!136 = !{!132, !117, i64 32}
!137 = !{!"branch_weights", i32 10015, i32 7760}
!138 = !{!"branch_weights", i32 7759, i32 2}
!139 = !{!"branch_weights", i32 8911, i32 8864}
!140 = !{!117, !117, i64 0}
!141 = !{!132, !117, i64 16}
!142 = !{!"branch_weights", i32 8904, i32 8}
!143 = !{!144, !117, i64 0}
!144 = !{!"mem_addr_template", !117, i64 0, !117, i64 8, !117, i64 16}
!145 = !{!"branch_weights", i32 15, i32 8897}
!146 = !{!132, !117, i64 0}
!147 = !{!"branch_weights", i32 7, i32 9}
!148 = !{!132, !117, i64 8}
!149 = !{!"branch_weights", i32 6, i32 10}
!150 = !{!"branch_weights", i32 4, i32 12}
!151 = !{!"branch_weights", i32 10, i32 6}
!152 = !{!"branch_weights", i32 5272, i32 3640}
!153 = !{!144, !117, i64 8}
!154 = !{!"branch_weights", i32 3889, i32 5023}
!155 = !{!144, !117, i64 16}
!156 = !{!"branch_weights", i32 7936, i32 929}
!157 = !{!"branch_weights", i32 900, i32 7965}
!158 = !{!"branch_weights", i32 4064, i32 4801}
!159 = !{!"function_entry_count", i64 8924}
!160 = !{!"tree-ssa-address.c:VEC_mem_addr_template_base_length"}
!161 = !{!"branch_weights", i32 4, i32 8922}
!162 = !{!163, !123, i64 0}
!163 = !{!"VEC_mem_addr_template_base", !123, i64 0, !123, i64 4, !118, i64 8}
!164 = !{!"function_entry_count", i64 7}
!165 = !{!"tree-ssa-address.c:VEC_mem_addr_template_gc_safe_grow_cleared"}
!166 = !{!"function_entry_count", i64 8910}
!167 = !{!"tree-ssa-address.c:VEC_mem_addr_template_base_index"}
!168 = !{!"function_entry_count", i64 8877}
!169 = !{!"tree-ssa-address.c:gen_addr_rtx"}
!170 = !{!"branch_weights", i32 8864, i32 15}
!171 = !{!"branch_weights", i32 4067, i32 4812}
!172 = !{!"branch_weights", i32 1190, i32 3623}
!173 = !{!"branch_weights", i32 3618, i32 6}
!174 = !{!"branch_weights", i32 905, i32 7974}
!175 = !{!"branch_weights", i32 4065, i32 3910}
!176 = !{!"branch_weights", i32 7942, i32 937}
!177 = !{!"branch_weights", i32 647, i32 291}
!178 = !{!"branch_weights", i32 288, i32 4}
!179 = !{!"branch_weights", i32 1, i32 1164, i32 2, i32 1}
!180 = !{!"branch_weights", i32 3, i32 935}
!181 = !{!"branch_weights", i32 4356, i32 3587}
!182 = !{!"branch_weights", i32 1, i32 3587}
!183 = !{!"branch_weights", i32 3584, i32 4}
!184 = !{!"branch_weights", i32 241871, i32 2147241777}
!185 = !{!"function_entry_count", i64 13692}
!186 = !{!"tree-ssa-address.c:expand_expr"}
!187 = !{!"tree-ssa-address.c:VEC_mem_addr_template_gc_safe_grow"}
!188 = !{!"branch_weights", i32 2, i32 7}
!189 = !{}
!190 = !{!"tree-ssa-address.c:VEC_mem_addr_template_base_address"}
!191 = !{!"branch_weights", i32 1, i32 8}
!192 = !{!"tree-ssa-address.c:VEC_mem_addr_template_gc_reserve_exact"}
!193 = !{i32 0, i32 2}
!194 = !{!"branch_weights", i32 8, i32 1}
!195 = !{!"tree-ssa-address.c:VEC_mem_addr_template_base_space"}
!196 = !{!163, !123, i64 4}
!197 = !{!"function_entry_count", i64 0}
!198 = !{!"function_entry_count", i64 8909}
!199 = !{!"branch_weights", i32 1, i32 8910}
!200 = !{!"tree-ssa-address.c:addr_to_parts"}
!201 = !{i8 0, i8 2}
!202 = !{!"branch_weights", i32 3889, i32 5022}
!203 = !{!"branch_weights", i32 32661504, i32 38403721}
!204 = !{!"branch_weights", i32 7974, i32 937}
!205 = !{!"branch_weights", i32 3879, i32 4096}
!206 = !{!207, !123, i64 24}
!207 = !{!"affine_tree_combination", !117, i64 0, !208, i64 8, !123, i64 24, !118, i64 32, !117, i64 224}
!208 = !{!"", !124, i64 0, !124, i64 8}
!209 = !{!"branch_weights", i32 6734, i32 2176}
!210 = !{!211, !117, i64 0}
!211 = !{!"aff_comb_elt", !117, i64 0, !208, i64 8}
!212 = !{!"branch_weights", i32 520, i32 1657}
!213 = !{!"branch_weights", i32 0, i32 2176}
!214 = distinct !{!214, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !{!207, !117, i64 224}
!217 = !{!"branch_weights", i32 8910, i32 1}
!218 = !{!"tree-ssa-address.c:gimplify_mem_ref_parts"}
!219 = !{!"branch_weights", i32 908, i32 8003}
!220 = !{!"branch_weights", i32 4080, i32 4831}
!221 = !{!"tree-ssa-address.c:create_mem_ref_raw"}
!222 = !{!"branch_weights", i32 26, i32 8886}
!223 = !{!"branch_weights", i32 1, i32 8911}
!224 = !{!"branch_weights", i32 3640, i32 1}
!225 = !{!"branch_weights", i32 5022, i32 3890}
!226 = !{!"branch_weights", i32 3889, i32 2}
!227 = !{!"tree-ssa-address.c:double_int_zero_p"}
!228 = !{!"branch_weights", i32 5022, i32 3889}
!229 = !{!"tree-ssa-address.c:move_fixed_address_to_symbol"}
!230 = !{!"branch_weights", i32 1, i32 7973}
!231 = !{!"branch_weights", i32 3533, i32 10284}
!232 = !{!"branch_weights", i32 1429, i32 8856}
!233 = !{!"branch_weights", i32 493, i32 937}
!234 = !{!"branch_weights", i32 7973, i32 5843}
!235 = distinct !{!235, !215}
!236 = !{!"branch_weights", i32 1500858437, i32 646625211}
!237 = !{!"tree-ssa-address.c:most_expensive_mult_to_index"}
!238 = !{!"branch_weights", i32 1, i32 8909}
!239 = !{!"branch_weights", i32 1, i32 13857}
!240 = !{!"branch_weights", i32 9630, i32 4228}
!241 = !{!"branch_weights", i32 26, i32 4203}
!242 = !{!"branch_weights", i32 527, i32 3702}
!243 = !{!"branch_weights", i32 3640, i32 63}
!244 = !{i64 0, i64 8, !245, i64 8, i64 8, !245}
!245 = !{!124, !124, i64 0}
!246 = !{i64 0, i64 8, !245}
!247 = !{!"branch_weights", i32 4948, i32 8909}
!248 = distinct !{!248, !215}
!249 = !{!"branch_weights", i32 1270172697, i32 877310951}
!250 = !{!"branch_weights", i32 1, i32 3639}
!251 = !{!"branch_weights", i32 3050, i32 3680}
!252 = !{!"branch_weights", i32 3021, i32 30}
!253 = !{i64 0, i64 8, !140, i64 8, i64 8, !245, i64 16, i64 8, !245}
!254 = !{!"branch_weights", i32 3640, i32 70}
!255 = !{!"branch_weights", i32 1, i32 3640}
!256 = !{!"branch_weights", i32 3090, i32 3639}
!257 = distinct !{!257, !215}
!258 = !{!"function_entry_count", i64 4095}
!259 = !{!"tree-ssa-address.c:move_hint_to_base"}
!260 = !{!"branch_weights", i32 1, i32 127}
!261 = !{!"branch_weights", i32 1, i32 4110}
!262 = !{!"branch_weights", i32 15, i32 4096}
!263 = !{!"branch_weights", i32 525953, i32 127}
!264 = distinct !{!264, !215}
!265 = !{!"branch_weights", i32 0, i32 -2147483648}
!266 = !{!"function_entry_count", i64 3878}
!267 = !{!"tree-ssa-address.c:move_pointer_to_base"}
!268 = !{!"branch_weights", i32 1, i32 3879}
!269 = !{!"branch_weights", i32 1, i32 7758, i32 1}
!270 = !{!"branch_weights", i32 127, i32 496385}
!271 = distinct !{!271, !215}
!272 = !{!"function_entry_count", i64 23977}
!273 = !{!"tree-ssa-address.c:double_int_one_p"}
!274 = !{!"branch_weights", i32 19927, i32 4052}
!275 = !{!"function_entry_count", i64 2175}
!276 = !{!"tree-ssa-address.c:add_to_parts"}
!277 = !{!"branch_weights", i32 1192, i32 985}
!278 = !{!"branch_weights", i32 30, i32 956}
!279 = !{!"branch_weights", i32 25, i32 5712, i32 5}
!280 = !{!"function_entry_count", i64 1428}
!281 = !{!"tree-ssa-address.c:fixed_address_object_p"}
!282 = !{!"branch_weights", i32 1429, i32 1}
!283 = !{!"branch_weights", i32 493, i32 1}
!284 = !{!"function_entry_count", i64 9777}
!285 = !{!"tree-ssa-address.c:double_int_equal_p"}
!286 = !{!"branch_weights", i32 3709, i32 6070}
!287 = !{!"tree-ssa-address.c:valid_mem_ref_p"}
!288 = !{!"function_entry_count", i64 10844}
!289 = !{!"function_entry_count", i64 1}
!290 = !{!"function_entry_count", i64 1981}
!291 = !{!"branch_weights", i32 266, i32 1717}
!292 = !{!"branch_weights", i32 1, i32 1717}
!293 = !{!"branch_weights", i32 1082, i32 901}
!294 = !{!"branch_weights", i32 2, i32 900}
!295 = !{!"branch_weights", i32 1, i32 2}
!296 = !{!"branch_weights", i32 2, i32 1}
!297 = !{!"branch_weights", i32 2147481245, i32 2403}
!298 = !{!299, !123, i64 0}
!299 = !{!"VEC_mem_addr_template_gc", !163, i64 0}
!300 = distinct !{!300, !215}
!301 = distinct !{!301, !215}
!302 = distinct !{!302, !215}
