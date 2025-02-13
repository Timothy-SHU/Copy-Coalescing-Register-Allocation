; ModuleID = 'tree-ssa.c'
source_filename = "tree-ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._edge_var_map = type { ptr, ptr, i32 }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.walk_data = type { ptr, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }

@edge_var_maps = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"tree-ssa.c\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"AUX pointer initialized for edge %d->%d\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"stmt (%p) marked modified after optimization pass: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"statement makes a memory store, but has no VDEFS\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"statement has VDEF operand not in defs list\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"statement has VDEF but no VUSE operand\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"VDEF and VUSE do not use the same symbol\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"statement has VUSE operand not in uses list\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"in statement\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SSA_NAME_DEF_STMT is wrong\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Expected definition statement:\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\0AActual definition statement:\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"verify_ssa failed\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"SSA_NAME created in two different blocks %i and %i\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"while verifying SSA_NAME \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c" in statement\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"incoming edge count does not match number of PHI arguments\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"PHI argument is missing for edge %d->%d\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"PHI argument is not SSA_NAME, or invariant\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"address taken, but ADDRESSABLE bit not set\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"wrong edge %d->%d for PHI argument\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"PHI argument\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"for PHI node\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"expected an SSA_NAME object\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"type mismatch between an SSA_NAME and its symbol\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"found an SSA_NAME that had been released into the free pool\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"found a virtual definition for a GIMPLE register\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"virtual SSA name for non-VOP decl\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"found a real definition for a non-register\00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"found a default name with a non-empty defining statement\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"missing definition\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"definition in block %i does not dominate use in block %i\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"definition in block %i follows the use\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"SSA_NAME_OCCURS_IN_ABNORMAL_PHI should be set\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"no immediate_use list\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"wrong immediate use list\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"for SSA_NAME: \00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c" in statement:\0A\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@pass_early_warn_uninitialized = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.42, ptr @gate_warn_uninitialized, ptr @execute_early_warn_uninitialized, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.42 = private unnamed_addr constant [26 x i8] c"*early_warn_uninitialized\00", align 1
@warn_uninitialized = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [43 x i8] c"%qD is used uninitialized in this function\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"%qD may be used uninitialized in this function\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"%qD was declared here\00", align 1
@pass_late_warn_uninitialized = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.46, ptr @gate_warn_uninitialized, ptr @execute_late_warn_uninitialized, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.46 = private unnamed_addr constant [25 x i8] c"*late_warn_uninitialized\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [32 x i8] c"No longer having address taken \00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Decl is now a gimple register \00", align 1
@pass_update_address_taken = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.50, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2097153 } }, align 8
@.str.50 = private unnamed_addr constant [13 x i8] c"addressables\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._edge_var_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call ptr @pointer_map_create() #18
  store ptr %10, ptr @edge_var_maps, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = tail call ptr @pointer_map_insert(ptr noundef %12, ptr noundef %0) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  store ptr %14, ptr %5, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @VEC_edge_var_map_heap_alloc() #19
  store ptr %17, ptr %5, align 8, !tbaa !6
  store ptr %17, ptr %13, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct._edge_var_map, ptr %6, i64 0, i32 1
  store ptr %2, ptr %19, align 8, !tbaa !10
  store ptr %1, ptr %6, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct._edge_var_map, ptr %6, i64 0, i32 2
  store i32 %3, ptr %20, align 8, !tbaa !14
  call fastcc void @VEC_edge_var_map_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %21 = load ptr, ptr %5, align 8, !tbaa !6
  %22 = icmp eq ptr %14, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store ptr %21, ptr %13, align 8, !tbaa !6
  br label %24

24:                                               ; preds = %23, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_var_map_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 24) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_var_map_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_edge_var_map_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_edge_var_map_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_var_map_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_edge_var_map_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #18
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_var_map_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !15
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !17
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = load i32, ptr %0, align 8, !tbaa !15
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %3, ptr noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !6
  store ptr %9, ptr %2, align 8, !tbaa !6
  call fastcc void @VEC_edge_var_map_heap_free(ptr noundef nonnull %2) #19
  store ptr null, ptr %6, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %5, %8, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_var_map_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_dup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_map_insert(ptr noundef nonnull %3, ptr noundef %0) #18
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @VEC_edge_var_map_heap_copy(ptr noundef nonnull %11) #19
  br label %17

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @VEC_edge_var_map_heap_alloc() #19
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  store ptr %18, ptr %6, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %5, %2, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_edge_var_map_heap_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %2, i64 noundef 8, i64 noundef 24) #18
  store i32 %2, ptr %6, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2
  %9 = mul nuw nsw i64 %5, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %8, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_var_map_vector(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %4, %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_destroy() local_unnamed_addr #0 {
  %1 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void @pointer_map_traverse(ptr noundef nonnull %1, ptr noundef nonnull @free_var_map_entry, ptr noundef null) #18
  %4 = load ptr, ptr @edge_var_maps, align 8, !tbaa !6
  tail call void @pointer_map_destroy(ptr noundef %4) #18
  store ptr null, ptr @edge_var_maps, align 8, !tbaa !6
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef zeroext i8 @free_var_map_entry(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %5, ptr %4, align 8, !tbaa !6
  call fastcc void @VEC_edge_var_map_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i8 1
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ssa_redirect_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  tail call void @redirect_edge_var_map_clear(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #18
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %21
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %12 = load i32, ptr %9, align 4, !tbaa !26
  %13 = zext i32 %12 to i64
  %14 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %11, i64 noundef %13) #19
  %15 = load i32, ptr %9, align 4, !tbaa !26
  %16 = zext i32 %15 to i64
  %17 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %11, i64 noundef %16) #19
  %18 = icmp eq ptr %14, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #19
  call void @redirect_edge_var_map_add(ptr noundef nonnull %0, ptr noundef %20, ptr noundef nonnull %14, i32 noundef %17) #19
  br label %21

21:                                               ; preds = %10, %19
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %10, label %24, !llvm.loop !27

24:                                               ; preds = %21, %2
  %25 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %25
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !33
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  store ptr %4, ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !36
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flush_pending_stmts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = tail call ptr @redirect_edge_var_map_vector(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %8) #18
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %6, %15
  %12 = phi i32 [ %20, %15 ], [ 0, %6 ]
  %13 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef nonnull %4, i32 noundef %12, ptr noundef nonnull %2) #19, !range !39
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %17 = load ptr, ptr %2, align 8, !tbaa !6
  %18 = call fastcc ptr @redirect_edge_var_map_def(ptr noundef %17) #19
  %19 = call fastcc i32 @redirect_edge_var_map_location(ptr noundef %17) #19
  call void @add_phi_arg(ptr noundef %16, ptr noundef %18, ptr noundef %0, i32 noundef %19) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %20 = add nuw nsw i32 %12, 1
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %11, label %23, !llvm.loop !40

23:                                               ; preds = %11, %15, %6
  call void @redirect_edge_var_map_clear(ptr noundef %0) #19
  br label %24

24:                                               ; preds = %1, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = load i32, ptr %0, align 8, !tbaa !15
  %5 = icmp ugt i32 %4, %1
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %6
  %8 = select i1 %5, ptr %7, ptr null
  %9 = zext i1 %5 to i32
  store ptr %8, ptr %2, align 8, !tbaa !6
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  ret ptr %3
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @target_for_debug_bind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %14, %13 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %24 [
    i16 32, label %8
    i16 34, label %8
  ]

8:                                                ; preds = %4, %4
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %5) #18
  %15 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %4

17:                                               ; preds = %8
  %18 = and i64 %10, 1024
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %5) #18
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr null, ptr %5
  br label %24

24:                                               ; preds = %13, %4, %1, %20, %17
  %25 = phi ptr [ null, %17 ], [ %23, %20 ], [ null, %1 ], [ null, %4 ], [ null, %13 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_debug_temp_for_var_def(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !6
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %179, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %1) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %179

12:                                               ; preds = %9
  %13 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %1) #19
  %14 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #19, !range !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %179

16:                                               ; preds = %12, %28
  %17 = phi ptr [ %30, %28 ], [ %13, %12 ]
  %18 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %20) #19, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = tail call fastcc ptr @gimple_debug_bind_get_value(ptr noundef %20) #19
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25, %16
  %29 = phi i32 [ 1, %25 ], [ %18, %16 ]
  %30 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #19
  %31 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #19, !range !25
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %16, label %35, !llvm.loop !41

33:                                               ; preds = %23
  %34 = add nuw nsw i32 %18, 1
  br label %37

35:                                               ; preds = %28
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %179, label %37

37:                                               ; preds = %25, %33, %35
  %38 = phi i32 [ %29, %35 ], [ %34, %33 ], [ 2, %25 ]
  %39 = icmp eq ptr %0, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  br label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %41, %40 ], [ %44, %42 ]
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !42
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = tail call ptr @degenerate_phi_result(ptr noundef %46) #18
  store ptr %50, ptr %4, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %152, label %52

52:                                               ; preds = %49
  %53 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_released_ssa_name, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  store ptr null, ptr %4, align 8, !tbaa !6
  br label %152

56:                                               ; preds = %45
  %57 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %46) #19, !range !25
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  br i1 %39, label %63, label %66

63:                                               ; preds = %62
  %64 = tail call fastcc ptr @gimple_bb(ptr noundef %46) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63, %62
  %67 = call ptr @walk_gimple_op(ptr noundef %46, ptr noundef nonnull @find_released_ssa_name, ptr noundef nonnull %5) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  br label %71

70:                                               ; preds = %63, %66
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  br label %73

71:                                               ; preds = %59, %69
  %72 = call ptr @gimple_assign_rhs_to_tree(ptr noundef %46) #18
  store ptr %72, ptr %4, align 8, !tbaa !6
  br label %75

73:                                               ; preds = %52, %56, %70
  %74 = load ptr, ptr %4, align 8, !tbaa !6
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %74, %73 ], [ %72, %71 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %152, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %76, align 8
  %80 = and i64 %79, 65535
  %81 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !18
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %103, label %84

84:                                               ; preds = %78
  %85 = call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !42
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %38, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = call zeroext i8 @gimple_assign_single_p(ptr noundef %46) #18
  %91 = icmp eq i8 %90, 0
  %92 = load ptr, ptr %4, align 8, !tbaa !6
  br i1 %91, label %103, label %93

93:                                               ; preds = %89
  %94 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %92) #18
  %95 = icmp eq i8 %94, 0
  %96 = load ptr, ptr %4, align 8, !tbaa !6
  br i1 %95, label %97, label %103

97:                                               ; preds = %93, %87
  %98 = phi ptr [ %76, %87 ], [ %96, %93 ]
  %99 = call zeroext i8 @is_gimple_reg(ptr noundef %98) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !6
  br label %103

103:                                              ; preds = %101, %93, %89, %84, %78
  %104 = phi ptr [ %102, %101 ], [ %96, %93 ], [ %92, %89 ], [ %76, %84 ], [ %76, %78 ]
  %105 = call ptr @unshare_expr(ptr noundef %104) #18
  store ptr %105, ptr %4, align 8, !tbaa !6
  br label %152

106:                                              ; preds = %97
  %107 = call ptr @make_node_stat(i32 noundef 37) #18
  %108 = load ptr, ptr %4, align 8, !tbaa !6
  %109 = call ptr @unshare_expr(ptr noundef %108) #18
  %110 = call ptr @gimple_build_debug_bind_stat(ptr noundef %107, ptr noundef %109, ptr noundef %46) #18
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 2
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, 4096
  store i64 %113, ptr %111, align 8
  %114 = load ptr, ptr %4, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !36
  %117 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !36
  %118 = load i64, ptr %114, align 8
  %119 = and i64 %118, 65535
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !18
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %128

123:                                              ; preds = %106
  %124 = getelementptr inbounds %struct.tree_decl_common, ptr %114, i64 0, i32 2
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 255
  %127 = and i64 %113, -256
  br label %145

128:                                              ; preds = %106
  %129 = load i64, ptr %116, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 14
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = call i32 @vector_type_mode(ptr noundef nonnull %116) #18
  %134 = load i64, ptr %111, align 8
  br label %139

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.tree_type, ptr %116, i64 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, 16
  br label %139

139:                                              ; preds = %135, %132
  %140 = phi i64 [ %134, %132 ], [ %113, %135 ]
  %141 = phi i32 [ %133, %132 ], [ %138, %135 ]
  %142 = and i32 %141, 255
  %143 = zext nneg i32 %142 to i64
  %144 = and i64 %140, -256
  br label %145

145:                                              ; preds = %139, %123
  %146 = phi i64 [ %143, %139 ], [ %127, %123 ]
  %147 = phi i64 [ %144, %139 ], [ %126, %123 ]
  %148 = or disjoint i64 %147, %146
  store i64 %148, ptr %111, align 8
  br i1 %39, label %150, label %149

149:                                              ; preds = %145
  call void @gsi_insert_before(ptr noundef nonnull %0, ptr noundef %110, i32 noundef 1) #18
  br label %151

150:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %46) #18
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %110, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %151

151:                                              ; preds = %150, %149
  store ptr %107, ptr %4, align 8, !tbaa !6
  br label %152

152:                                              ; preds = %55, %49, %103, %151, %75
  %153 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %1) #19
  %154 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #19, !range !25
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %152, %175
  %157 = phi ptr [ %176, %175 ], [ %153, %152 ]
  %158 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %157) #19, !range !25
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %4, align 8, !tbaa !6
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #19
  %165 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #19, !range !25
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163, %167
  %168 = phi ptr [ %170, %167 ], [ %164, %163 ]
  %169 = load ptr, ptr %4, align 8, !tbaa !6
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %168, ptr noundef %169) #19
  %170 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #19
  %171 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #19, !range !25
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %167, label %174, !llvm.loop !43

173:                                              ; preds = %160
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %157) #19
  br label %174

174:                                              ; preds = %167, %163, %173
  call fastcc void @update_stmt(ptr noundef %157) #19
  br label %175

175:                                              ; preds = %156, %174
  %176 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #19, !range !25
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %156, label %179, !llvm.loop !44

179:                                              ; preds = %175, %12, %152, %35, %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %6, ptr %0, align 8, !tbaa !48
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !25
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  store ptr %4, ptr %0, align 8, !tbaa !48
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !25
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @degenerate_phi_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @find_released_ssa_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) #9 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = and i64 %11, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %19 = load i32, ptr %18, align 4, !tbaa !18
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !18
  br label %23

23:                                               ; preds = %22, %17, %14, %5
  %24 = phi ptr [ null, %5 ], [ %10, %14 ], [ null, %17 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_debug_bind_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #19, !range !25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !51
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  store ptr %1, ptr %4, align 8, !tbaa !6
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  store ptr %3, ptr %0, align 8, !tbaa !48
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #19, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %8, ptr %2, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call void @update_stmt_operands(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  store ptr %4, ptr %0, align 8, !tbaa !48
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #19, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #19
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !36
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #19, !range !42
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #19
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #19
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #19
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #19
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !55

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #19
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #19
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #19
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #19
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !56

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #19
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #19
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !53
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #19
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !57
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 918, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !57
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !59
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !60
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !61
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i8, ptr %0, align 8, !tbaa !57
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #19
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %7, ptr %2, align 8, !tbaa !62
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !60
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !65
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !57
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !61
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !47
  store ptr %2, ptr %6, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  store ptr %1, ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !47
  store ptr %0, ptr %4, align 8, !tbaa !67
  store ptr %0, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !36
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 747, ptr noundef nonnull @.str.1) #18
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !68
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !68
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !69
  store ptr %25, ptr %18, align 8, !tbaa !68
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !62
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !62
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !63
  store ptr %41, ptr %32, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !67
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr null, ptr %10, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !36
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_debug_temps_for_defs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %3 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !42
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call fastcc ptr @op_iter_init_phidef(ptr noundef nonnull %2, ptr noundef %6) #19
  br label %13

11:                                               ; preds = %5
  %12 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %6) #19
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13, %24
  %18 = phi ptr [ %25, %24 ], [ %14, %13 ]
  %19 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %18) #19
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @insert_debug_temp_for_var_def(ptr noundef %0, ptr noundef nonnull %19) #19
  br label %24

24:                                               ; preds = %17, %23
  %25 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #19
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %17, label %28, !llvm.loop !71

28:                                               ; preds = %24, %13, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #19
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !57
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !57
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !61
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %8, ptr %2, align 8, !tbaa !68
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_defs_bitset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %14

9:                                                ; preds = %65
  %10 = load ptr, ptr %0, align 8, !tbaa !73
  br label %11

11:                                               ; preds = %9, %14
  %12 = phi ptr [ %10, %9 ], [ %15, %14 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14, !llvm.loop !75

14:                                               ; preds = %1, %11
  %15 = phi ptr [ %12, %11 ], [ %7, %1 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !25
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %14, %65
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = load i32, ptr %2, align 4, !tbaa !18
  %25 = call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %24) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %26 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef %25) #19
  %27 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #19, !range !25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %18, %52
  %30 = phi ptr [ %53, %52 ], [ %26, %18 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %31 = call fastcc i32 @gimple_code(ptr noundef %30) #19, !range !42
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %30) #19, !range !25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %5, ptr noundef %30) #19
  %38 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36, %47
  %41 = phi ptr [ %48, %47 ], [ %37, %36 ]
  %42 = call fastcc ptr @get_def_from_ptr(ptr noundef %41) #19
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !36
  %45 = call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %44) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %5) #19
  %49 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %40, label %52, !llvm.loop !82

51:                                               ; preds = %40
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %65

52:                                               ; preds = %47, %36, %33, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %53 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #19
  %54 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #19, !range !25
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %29, label %56, !llvm.loop !83

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %58) #18
  %59 = call fastcc i32 @gimple_code(ptr noundef %58) #19, !range !42
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @remove_phi_node(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  br label %63

62:                                               ; preds = %56
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #18
  call void @release_defs(ptr noundef %58) #18
  br label %63

63:                                               ; preds = %62, %61
  %64 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %0, i32 noundef %24) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  br label %65

65:                                               ; preds = %51, %63
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %66 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !25
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %9, label %18, !llvm.loop !84

68:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %4, ptr %0, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !87
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !91
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !18
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !92

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !18
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !18
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !85
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !90
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !54
  store i64 %35, ptr %3, align 8, !tbaa !91
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !18
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !18
  %40 = load i32, ptr %23, align 8, !tbaa !90
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !90
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !93

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !94
  store ptr %44, ptr %0, align 8, !tbaa !85
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !88
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !18
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !91
  store i32 %16, ptr %1, align 4, !tbaa !18
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !91
  %6 = load i32, ptr %1, align 4, !tbaa !18
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_ssa(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %11) #19
  %13 = zext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 8) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %15 = tail call i32 @dom_info_state(i32 noundef 1) #18
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %17) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 872, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %1, %20
  tail call void @verify_stmts() #18
  %22 = load i8, ptr @timevar_enable, align 1, !tbaa !36
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @timevar_push_1(i32 noundef 107) #18
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %30) #19
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %61

33:                                               ; preds = %25, %51
  %34 = phi ptr [ %57, %51 ], [ %30, %25 ]
  %35 = phi i64 [ %52, %51 ], [ 1, %25 ]
  %36 = trunc i64 %35 to i32
  %37 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, -1099511627777
  store i64 %41, ptr %37, align 8
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %43) #19, !range !25
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = tail call fastcc ptr @gimple_bb(ptr noundef %43) #19
  %48 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %37) #18
  %49 = icmp eq i8 %48, 0
  %50 = zext i1 %49 to i8
  tail call fastcc void @verify_def(ptr noundef %47, ptr noundef %14, ptr noundef nonnull %37, ptr noundef %43, i8 noundef zeroext %50) #19
  br label %51

51:                                               ; preds = %39, %46, %33
  %52 = add nuw nsw i64 %35, 1
  %53 = load ptr, ptr @cfun, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !78
  %58 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %57) #19
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %52, %59
  br i1 %60, label %33, label %61, !llvm.loop !95

61:                                               ; preds = %51, %25
  tail call void @calculate_dominance_info(i32 noundef 1) #18
  %62 = load ptr, ptr @cfun, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !96
  %65 = load ptr, ptr %64, align 8, !tbaa !97
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !99
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %267, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds i8, ptr %4, i64 8
  %73 = icmp eq i8 %0, 0
  br label %74

74:                                               ; preds = %71, %258
  %75 = phi ptr [ %67, %71 ], [ %260, %258 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %76 = call fastcc ptr @ei_start_1(ptr noundef %75) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !102
  store ptr %76, ptr %72, align 8, !tbaa.struct !103
  %77 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %76, ptr noundef nonnull %3) #19, !range !25
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %74, %92
  %80 = load ptr, ptr %3, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !104
  %83 = icmp eq ptr %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %80, align 8, !tbaa !105
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !106
  %88 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !106
  call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %87, i32 noundef %91) #18
  br label %275

92:                                               ; preds = %79
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %93 = load i32, ptr %4, align 8
  %94 = load ptr, ptr %72, align 8
  %95 = call fastcc zeroext i8 @ei_cond(i32 %93, ptr %94, ptr noundef nonnull %3) #19, !range !25
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %79, !llvm.loop !107

97:                                               ; preds = %92, %74
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %75) #18
  %98 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !25
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97, %104
  %101 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  %102 = call fastcc zeroext i8 @verify_phi_args(ptr noundef %101, ptr noundef %75, ptr noundef %14) #19
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %275

104:                                              ; preds = %100
  %105 = call fastcc ptr @gimple_phi_result(ptr noundef %101) #19
  %106 = getelementptr inbounds %struct.tree_ssa_name, ptr %105, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !36
  %108 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %107) #18
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !25
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %100, label %111, !llvm.loop !108

111:                                              ; preds = %104, %97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %75) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %112 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !25
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %258

114:                                              ; preds = %111, %255
  %115 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  br i1 %73, label %121, label %116

116:                                              ; preds = %114
  %117 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %115) #19, !range !25
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef %115) #18
  %120 = load ptr, ptr @stderr, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %120, ptr noundef %115, i32 noundef 0, i32 noundef 64) #18
  br label %275

121:                                              ; preds = %116, %114
  %122 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %115) #19, !range !25
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %121
  %125 = call fastcc ptr @gimple_assign_lhs(ptr noundef %115) #19
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 141
  br i1 %128, label %149, label %129

129:                                              ; preds = %124
  %130 = call fastcc ptr @gimple_assign_lhs(ptr noundef %115) #19
  %131 = call ptr @get_base_address(ptr noundef %130) #18
  %132 = icmp eq ptr %131, null
  br i1 %132, label %155, label %133

133:                                              ; preds = %129
  %134 = load i64, ptr %131, align 8
  %135 = trunc i64 %134 to i16
  switch i16 %135, label %155 [
    i16 32, label %141
    i16 34, label %141
    i16 36, label %141
    i16 141, label %136
  ]

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !36
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i16
  switch i16 %140, label %155 [
    i16 32, label %141
    i16 34, label %141
    i16 36, label %141
  ]

141:                                              ; preds = %136, %136, %136, %133, %133, %133
  %142 = call fastcc ptr @gimple_vdef(ptr noundef %115) #19
  %143 = icmp eq ptr %142, null
  %144 = load i32, ptr @optimize, align 4
  %145 = icmp sgt i32 %144, 0
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  call void (ptr, ...) @error(ptr noundef nonnull @.str.6) #18
  %148 = load ptr, ptr @stderr, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %148, ptr noundef %115, i32 noundef 0, i32 noundef 64) #18
  br label %275

149:                                              ; preds = %124, %121
  %150 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %115) #19, !range !25
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %115) #19, !range !25
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %255, label %155

155:                                              ; preds = %129, %141, %133, %136, %149, %152
  %156 = call fastcc ptr @gimple_vdef(ptr noundef %115) #19
  %157 = icmp eq ptr %156, null
  br i1 %157, label %180, label %158

158:                                              ; preds = %155
  %159 = call fastcc ptr @gimple_vdef_op(ptr noundef %115) #19
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  call void (ptr, ...) @error(ptr noundef nonnull @.str.7) #18
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i8 [ 1, %161 ], [ 0, %158 ]
  %164 = call fastcc ptr @gimple_vuse(ptr noundef %115) #19
  %165 = icmp eq ptr %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %162
  %167 = call fastcc ptr @gimple_vdef(ptr noundef %115) #19
  %168 = getelementptr inbounds %struct.tree_ssa_name, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !36
  %170 = getelementptr inbounds %struct.tree_ssa_name, ptr %164, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !36
  %172 = icmp eq ptr %169, %171
  br i1 %172, label %175, label %173

173:                                              ; preds = %166, %162
  %174 = phi ptr [ @.str.8, %162 ], [ @.str.9, %166 ]
  call void (ptr, ...) @error(ptr noundef nonnull %174) #18
  br label %175

175:                                              ; preds = %173, %166
  %176 = phi i8 [ %163, %166 ], [ 1, %173 ]
  %177 = call fastcc ptr @gimple_vdef(ptr noundef %115) #19
  %178 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %177, i8 noundef zeroext 1) #19, !range !25
  %179 = or i8 %178, %176
  br label %180

180:                                              ; preds = %175, %155
  %181 = phi i8 [ %179, %175 ], [ 0, %155 ]
  %182 = call fastcc ptr @gimple_vuse(ptr noundef %115) #19
  %183 = icmp eq ptr %182, null
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  %185 = call fastcc ptr @gimple_vuse_op(ptr noundef %115) #19
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #18
  br label %188

188:                                              ; preds = %187, %184
  %189 = phi i8 [ 1, %187 ], [ %181, %184 ]
  %190 = call fastcc ptr @gimple_vuse(ptr noundef %115) #19
  %191 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %190, i8 noundef zeroext 1) #19, !range !25
  %192 = or i8 %191, %189
  br label %193

193:                                              ; preds = %188, %180
  %194 = phi i8 [ %192, %188 ], [ %181, %180 ]
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #18
  %197 = load ptr, ptr @stderr, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %197, ptr noundef %115, i32 noundef 0, i32 noundef 16448) #18
  br label %275

198:                                              ; preds = %193
  %199 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %115, i32 noundef 3) #19
  %200 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198, %208
  %203 = phi ptr [ %209, %208 ], [ %199, %198 ]
  %204 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %203, i8 noundef zeroext 0) #19, !range !25
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #18
  %207 = load ptr, ptr @stderr, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %207, ptr noundef %115, i32 noundef 0, i32 noundef 16448) #18
  br label %275

208:                                              ; preds = %202
  %209 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #19
  %210 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %202, label %212, !llvm.loop !110

212:                                              ; preds = %208, %198
  %213 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %115, i32 noundef 5) #19
  %214 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %212, %226
  %217 = phi ptr [ %227, %226 ], [ %213, %212 ]
  %218 = call fastcc ptr @get_use_from_ptr(ptr noundef %217) #19
  %219 = getelementptr inbounds %struct.tree_ssa_name, ptr %218, i64 0, i32 3
  %220 = load i32, ptr %219, align 8, !tbaa !36
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %14, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !6
  %224 = call fastcc zeroext i8 @verify_use(ptr noundef %75, ptr noundef %223, ptr noundef %217, ptr noundef %115, i8 noundef zeroext 0, ptr noundef %16) #19, !range !25
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %275

226:                                              ; preds = %216
  %227 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #19
  %228 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %216, label %230, !llvm.loop !111

230:                                              ; preds = %226, %212
  %231 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %115, i32 noundef 10) #19
  %232 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %255

234:                                              ; preds = %230, %248
  %235 = phi ptr [ %252, %248 ], [ %231, %230 ]
  %236 = getelementptr inbounds %struct.tree_ssa_name, ptr %235, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !36
  %238 = icmp eq ptr %237, %115
  br i1 %238, label %248, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.tree_ssa_name, ptr %235, i64 0, i32 2
  call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #18
  %241 = load ptr, ptr @stderr, align 8, !tbaa !6
  %242 = call i64 @fwrite(ptr nonnull @.str.13, i64 31, i64 1, ptr %241) #20
  %243 = load ptr, ptr @stderr, align 8, !tbaa !6
  call void @print_gimple_stmt(ptr noundef %243, ptr noundef %115, i32 noundef 4, i32 noundef 64) #18
  %244 = load ptr, ptr @stderr, align 8, !tbaa !6
  %245 = call i64 @fwrite(ptr nonnull @.str.14, i64 30, i64 1, ptr %244) #20
  %246 = load ptr, ptr @stderr, align 8, !tbaa !6
  %247 = load ptr, ptr %240, align 8, !tbaa !36
  call void @print_gimple_stmt(ptr noundef %246, ptr noundef %247, i32 noundef 4, i32 noundef 64) #18
  br label %275

248:                                              ; preds = %234
  %249 = getelementptr inbounds %struct.tree_ssa_name, ptr %235, i64 0, i32 3
  %250 = load i32, ptr %249, align 8, !tbaa !36
  %251 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %250) #18
  %252 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #19
  %253 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %234, label %255, !llvm.loop !112

255:                                              ; preds = %248, %230, %152
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %256 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !25
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %114, label %258, !llvm.loop !113

258:                                              ; preds = %255, %111
  call void @bitmap_clear(ptr noundef %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %259 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !99
  %261 = load ptr, ptr @cfun, align 8, !tbaa !6
  %262 = getelementptr inbounds %struct.function, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !96
  %264 = getelementptr inbounds %struct.control_flow_graph, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !101
  %266 = icmp eq ptr %260, %265
  br i1 %266, label %267, label %74

267:                                              ; preds = %258, %61
  call void @free(ptr noundef %14) #19
  %268 = icmp eq i32 %15, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %267
  call void @free_dominance_info(i32 noundef 1) #18
  br label %271

270:                                              ; preds = %267
  call void @set_dom_info_availability(i32 noundef 1, i32 noundef %15) #18
  br label %271

271:                                              ; preds = %270, %269
  call void @bitmap_obstack_free(ptr noundef %16) #18
  %272 = load i8, ptr @timevar_enable, align 1, !tbaa !36
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %271
  call void @timevar_pop_1(i32 noundef 107) #18
  br label %276

275:                                              ; preds = %100, %216, %147, %239, %206, %196, %119, %84
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.15) #18
  br label %276

276:                                              ; preds = %271, %274, %275
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !114
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_stmts() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_def(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef %2, i8 noundef zeroext %4) #19, !range !25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !36
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !106
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %17, i32 noundef %19) #18
  br label %32

20:                                               ; preds = %8
  store ptr %0, ptr %12, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !6
  %26 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 31, i64 1, ptr %25) #20
  %27 = load ptr, ptr @stderr, align 8, !tbaa !6
  %28 = load ptr, ptr %21, align 8, !tbaa !36
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %28, i32 noundef 4, i32 noundef 64) #18
  %29 = load ptr, ptr @stderr, align 8, !tbaa !6
  %30 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 30, i64 1, ptr %29) #20
  %31 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %31, ptr noundef %3, i32 noundef 4, i32 noundef 64) #18
  br label %32

32:                                               ; preds = %5, %24, %15
  %33 = load ptr, ptr @stderr, align 8, !tbaa !6
  %34 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %33) #20
  %35 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %2, i32 noundef 0) #18
  %36 = load ptr, ptr @stderr, align 8, !tbaa !6
  %37 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 14, i64 1, ptr %36) #20
  %38 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %38, ptr noundef %3, i32 noundef 4, i32 noundef 64) #18
  br label %39

39:                                               ; preds = %20, %32
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !116
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_phi_args(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %5 = zext i32 %4 to i64
  %6 = load ptr, ptr %1, align 8, !tbaa !118
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %8 = icmp eq i32 %7, %4
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %105, label %15

11:                                               ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20) #18
  br label %101

12:                                               ; preds = %95
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %105, label %15, !llvm.loop !119

15:                                               ; preds = %9, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %9 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %17) #19
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !118
  %21 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %20, i32 noundef %17) #19
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load ptr, ptr %21, align 8, !tbaa !105
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !106
  %27 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21, i32 noundef %26, i32 noundef %30) #18
  br label %101

31:                                               ; preds = %15
  %32 = load i64, ptr %19, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %19) #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22) #18
  br label %39

39:                                               ; preds = %38, %35, %31
  %40 = phi i8 [ 0, %35 ], [ 1, %38 ], [ 0, %31 ]
  %41 = load i64, ptr %19, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #19
  %46 = tail call zeroext i8 @is_gimple_reg(ptr noundef %45) #18
  %47 = icmp eq i8 %46, 0
  %48 = zext i1 %47 to i8
  %49 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef nonnull %19, i8 noundef zeroext %48) #19, !range !25
  %50 = load ptr, ptr %21, align 8, !tbaa !105
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !36
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !120
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 2
  %60 = tail call fastcc zeroext i8 @verify_use(ptr noundef %50, ptr noundef %55, ptr noundef nonnull %18, ptr noundef %0, i8 noundef zeroext %59, ptr noundef null) #19, !range !25
  %61 = or i8 %60, %49
  %62 = load i64, ptr %19, align 8
  br label %63

63:                                               ; preds = %44, %39
  %64 = phi i64 [ %62, %44 ], [ %41, %39 ]
  %65 = phi i8 [ %61, %44 ], [ %40, %39 ]
  %66 = and i64 %64, 65535
  %67 = icmp eq i64 %66, 121
  br i1 %67, label %68, label %80

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %71, %68 ], [ %19, %63 ]
  %70 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !36
  %72 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %71) #19, !range !25
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %68, !llvm.loop !121

74:                                               ; preds = %68
  %75 = load i64, ptr %71, align 8
  %76 = trunc i64 %75 to i16
  switch i16 %76, label %80 [
    i16 32, label %77
    i16 34, label %77
    i16 36, label %77
  ]

77:                                               ; preds = %74, %74, %74
  %78 = and i64 %75, 262144
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77, %74, %63
  %81 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !22
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %95, label %88

84:                                               ; preds = %77
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #18
  %85 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %97, label %88

88:                                               ; preds = %80, %84
  %89 = phi ptr [ %86, %84 ], [ %82, %80 ]
  %90 = load ptr, ptr %21, align 8, !tbaa !105
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !106
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %92, i32 noundef %94) #18
  br label %97

95:                                               ; preds = %80
  %96 = icmp eq i8 %65, 0
  br i1 %96, label %12, label %97

97:                                               ; preds = %95, %84, %88
  %98 = load ptr, ptr @stderr, align 8, !tbaa !6
  %99 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 13, i64 1, ptr %98) #20
  %100 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_generic_stmt(ptr noundef %100, ptr noundef nonnull %19, i32 noundef 64) #18
  br label %101

101:                                              ; preds = %97, %23, %11
  %102 = load ptr, ptr @stderr, align 8, !tbaa !6
  %103 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr %102) #20
  %104 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %104, ptr noundef %0, i32 noundef 0, i32 noundef 16448) #18
  br label %105

105:                                              ; preds = %12, %9, %101
  %106 = phi i8 [ 1, %101 ], [ 0, %9 ], [ 0, %12 ]
  ret i8 %106
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vdef_op(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.def_optype_d, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %4
  br label %14

14:                                               ; preds = %8, %1, %13
  %15 = phi ptr [ null, %13 ], [ null, %1 ], [ %10, %8 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_ssa_name(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %6
  %15 = and i64 %3, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = icmp eq i8 %1, 0
  %19 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %0) #18
  %20 = icmp eq i8 %19, 0
  br i1 %18, label %27, label %21

21:                                               ; preds = %17
  br i1 %20, label %22, label %37

22:                                               ; preds = %21
  %23 = load ptr, ptr %9, align 8, !tbaa !36
  %24 = load ptr, ptr @cfun, align 8, !tbaa !6
  %25 = tail call fastcc ptr @gimple_vop(ptr noundef %24) #19
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %28, label %37

27:                                               ; preds = %17
  br i1 %20, label %37, label %28

28:                                               ; preds = %22, %27
  %29 = load i64, ptr %0, align 8
  %30 = and i64 %29, 4294967296
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !36
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %34) #19, !range !25
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27, %22, %21, %14, %6, %2
  %38 = phi ptr [ @.str.27, %2 ], [ @.str.28, %6 ], [ @.str.29, %14 ], [ @.str.30, %21 ], [ @.str.31, %22 ], [ @.str.32, %27 ], [ @.str.33, %32 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %38) #18
  br label %39

39:                                               ; preds = %37, %28, %32
  %40 = phi i8 [ 0, %32 ], [ 0, %28 ], [ 1, %37 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !61
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %8, ptr %2, align 8, !tbaa !62
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !69
  store ptr %17, ptr %10, align 8, !tbaa !68
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !57
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %2) #19
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 1099511627776
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !6
  %13 = tail call zeroext i8 @verify_imm_links(ptr noundef %12, ptr noundef nonnull %7) #18
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i8
  %16 = load i64, ptr %7, align 8
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i64 [ %8, %6 ], [ %16, %11 ]
  %19 = phi i8 [ 0, %6 ], [ %15, %11 ]
  %20 = or i64 %18, 1099511627776
  store i64 %20, ptr %7, align 8
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %22) #19, !range !25
  %24 = icmp eq i8 %23, 0
  %25 = and i64 %18, 4294967296
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %17
  %29 = icmp eq ptr %1, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.34) #18
  br label %51

31:                                               ; preds = %28
  %32 = icmp eq ptr %0, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef nonnull %1) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !106
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %38, i32 noundef %40) #18
  br label %51

41:                                               ; preds = %31
  %42 = icmp eq ptr %5, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !36
  %46 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %45) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %50) #18
  br label %51

51:                                               ; preds = %17, %33, %30, %41, %43, %48, %36
  %52 = phi i8 [ %19, %43 ], [ 1, %48 ], [ %19, %41 ], [ 1, %36 ], [ 1, %30 ], [ %19, %33 ], [ %19, %17 ]
  %53 = icmp eq i8 %4, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %7, align 8
  %56 = and i64 %55, 4194304
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37) #18
  br label %59

59:                                               ; preds = %58, %54, %51
  %60 = phi i8 [ %52, %54 ], [ 1, %58 ], [ %52, %51 ]
  %61 = load ptr, ptr %2, align 8, !tbaa !67
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !38
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !36
  br label %72

70:                                               ; preds = %63
  %71 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %61) #19
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi ptr [ %69, %67 ], [ %71, %70 ]
  %74 = icmp eq ptr %73, %7
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = icmp eq i8 %60, 0
  br i1 %76, label %86, label %79

77:                                               ; preds = %72, %59
  %78 = phi ptr [ @.str.38, %59 ], [ @.str.39, %72 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %78) #18
  br label %79

79:                                               ; preds = %77, %75
  %80 = load ptr, ptr @stderr, align 8, !tbaa !6
  %81 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 14, i64 1, ptr %80) #20
  %82 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %7, i32 noundef 64) #18
  %83 = load ptr, ptr @stderr, align 8, !tbaa !6
  %84 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 15, i64 1, ptr %83) #20
  %85 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %85, ptr noundef %3, i32 noundef 0, i32 noundef 64) #18
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi i8 [ 1, %79 ], [ 0, %75 ]
  ret i8 %87
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_dom_info_availability(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !124
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !126
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !127
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !129
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull @.str.1) #18
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @verify_imm_links(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !132
  %4 = load i32, ptr %1, align 8, !tbaa !132
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !132
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !36
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !36
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !36
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_tree_ssa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #18
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !76
  %4 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_decl_map_hash, ptr noundef nonnull @uid_decl_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  %5 = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %4, ptr %5, align 8, !tbaa !134
  %6 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_ssaname_map_hash, ptr noundef nonnull @uid_ssaname_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  %7 = load ptr, ptr %3, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 8
  store ptr %6, ptr %8, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %9) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  tail call void @pt_solution_reset(ptr noundef nonnull %11) #18
  tail call void @init_ssanames(ptr noundef %0, i32 noundef 0) #18
  tail call void @init_phinodes() #18
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @uid_ssaname_map_hash(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !36
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @uid_ssaname_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !36
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !36
  %11 = icmp eq i32 %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_ssanames(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_phinodes() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_tree_ssa() local_unnamed_addr #0 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #19
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #19, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %0, %26
  %6 = phi ptr [ %27, %26 ], [ %2, %0 ]
  %7 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %6) #19, !range !25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @var_ann(ptr noundef %6) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  tail call void @ggc_free(ptr noundef nonnull %10) #18
  %13 = load i64, ptr %6, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %19 [
    i16 32, label %15
    i16 34, label %17
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_var_decl, ptr %6, i64 0, i32 1
  br label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_parm_decl, ptr %6, i64 0, i32 2
  br label %24

19:                                               ; preds = %12
  %20 = and i64 %13, 65535
  %21 = icmp eq i64 %20, 36
  %22 = getelementptr inbounds %struct.tree_result_decl, ptr %6, i64 0, i32 1
  %23 = select i1 %21, ptr %22, ptr null
  br label %24

24:                                               ; preds = %17, %19, %15
  %25 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %23, %19 ]
  store ptr null, ptr %25, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %9, %24, %5
  %27 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #19
  %28 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #19, !range !25
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %5, label %30, !llvm.loop !136

30:                                               ; preds = %26, %0
  %31 = load ptr, ptr @cfun, align 8, !tbaa !6
  %32 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %31) #19
  tail call void @htab_delete(ptr noundef %32) #18
  %33 = load ptr, ptr @cfun, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  store ptr null, ptr %35, align 8, !tbaa !134
  tail call void @fini_ssanames() #18
  tail call void @fini_phinodes() #18
  %36 = tail call zeroext i8 @ssa_operands_active() #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  tail call void @fini_ssa_operands() #18
  br label %39

39:                                               ; preds = %38, %30
  tail call void @delete_alias_heapvars() #18
  %40 = load ptr, ptr @cfun, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = getelementptr inbounds %struct.gimple_df, ptr %42, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !135
  tail call void @htab_delete(ptr noundef %44) #18
  %45 = load ptr, ptr @cfun, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 8
  store ptr null, ptr %48, align 8, !tbaa !135
  %49 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %49) #18
  %50 = load ptr, ptr @cfun, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 5
  tail call void @pt_solution_reset(ptr noundef nonnull %53) #18
  %54 = load ptr, ptr @cfun, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.gimple_df, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !137
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %39
  tail call void @pointer_map_destroy(ptr noundef nonnull %58) #18
  %61 = load ptr, ptr @cfun, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !76
  br label %64

64:                                               ; preds = %60, %39
  %65 = phi ptr [ %63, %60 ], [ %56, %39 ]
  %66 = phi ptr [ %61, %60 ], [ %54, %39 ]
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 3
  %68 = getelementptr inbounds %struct.gimple_df, ptr %65, i64 0, i32 6
  store ptr null, ptr %68, align 8, !tbaa !137
  %69 = getelementptr inbounds %struct.gimple_df, ptr %65, i64 0, i32 1
  store ptr null, ptr %69, align 8, !tbaa !138
  store ptr null, ptr %67, align 8, !tbaa !76
  tail call void @redirect_edge_var_map_destroy() #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #19
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #19, !range !25
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !134
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @fini_ssanames() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fini_phinodes() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ssa_operands_active() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fini_ssa_operands() local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_alias_heapvars() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  store ptr %1, ptr %0, align 8, !tbaa !29
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !122
  %6 = tail call i64 @htab_size(ptr noundef %1) #18
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !123
  %9 = load ptr, ptr %5, align 8, !tbaa !122
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !122
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !141

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !6
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = load ptr, ptr %2, align 8, !tbaa !122
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !122
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @useless_type_conversion_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %173, %2
  %4 = phi ptr [ %0, %2 ], [ %177, %173 ]
  %5 = phi ptr [ %1, %2 ], [ %175, %173 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %48 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %4, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %48 [
    i16 10, label %11
    i16 12, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %14
  %19 = icmp ult i64 %18, 72057594037927936
  br i1 %19, label %20, label %366

20:                                               ; preds = %11
  %21 = trunc i64 %14 to i16
  switch i16 %21, label %36 [
    i16 19, label %366
    i16 20, label %22
    i16 21, label %22
  ]

22:                                               ; preds = %20, %20
  %23 = and i64 %18, 65535
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %31, ptr noundef %33) #19, !range !25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %366

36:                                               ; preds = %20, %29, %25, %22
  %37 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 13
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 13
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %40, %44
  %46 = icmp eq i32 %40, 0
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %366

48:                                               ; preds = %8, %3, %36
  %49 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %366, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !36
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !36
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %366, label %62

62:                                               ; preds = %58, %54
  %63 = load i64, ptr %50, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 14
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = tail call i32 @vector_type_mode(ptr noundef nonnull %50) #18
  br label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = load i64, ptr %52, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = tail call i32 @vector_type_mode(ptr noundef nonnull %52) #18
  br label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  br label %85

85:                                               ; preds = %80, %78
  %86 = phi i32 [ %79, %78 ], [ %84, %80 ]
  %87 = icmp eq i32 %74, %86
  %88 = load i64, ptr %50, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -15
  %92 = icmp ult i32 %91, 4
  %93 = select i1 %87, i1 true, i1 %92
  br i1 %93, label %94, label %366

94:                                               ; preds = %85
  %95 = add nsw i32 %90, -6
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i64, ptr %52, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  %101 = add nsw i32 %100, -6
  %102 = icmp ult i32 %101, 3
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = xor i64 %98, %88
  %105 = and i64 %104, 2097152
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %366

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, %109
  %113 = and i32 %112, 1023
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i8
  br label %366

116:                                              ; preds = %97, %94
  %117 = trunc i64 %88 to i16
  switch i16 %117, label %294 [
    i16 9, label %118
    i16 11, label %122
    i16 10, label %126
    i16 12, label %126
    i16 13, label %169
    i16 14, label %178
    i16 15, label %190
  ]

118:                                              ; preds = %116
  %119 = load i64, ptr %52, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 9
  br i1 %121, label %366, label %294

122:                                              ; preds = %116
  %123 = load i64, ptr %52, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 11
  br i1 %125, label %366, label %294

126:                                              ; preds = %116, %116
  %127 = load i64, ptr %52, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %168 [
    i16 10, label %129
    i16 12, label %129
  ]

129:                                              ; preds = %126, %126
  %130 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !36
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = and i32 %133, 65534
  %135 = icmp eq i32 %134, 20
  %136 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !36
  br i1 %135, label %151, label %138

138:                                              ; preds = %129
  %139 = load i64, ptr %137, align 8
  %140 = trunc i64 %139 to i32
  %141 = and i32 %140, 65534
  %142 = icmp eq i32 %141, 20
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = lshr i32 %133, 19
  %145 = and i32 %144, 1
  %146 = lshr i32 %140, 19
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %145, %147
  %149 = icmp eq i32 %145, 0
  %150 = or i1 %149, %148
  br i1 %150, label %151, label %366

151:                                              ; preds = %129, %138, %143
  %152 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %153 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !36
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !36
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %366

160:                                              ; preds = %156, %151
  %161 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %50) #18
  %162 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %52) #18
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %366

164:                                              ; preds = %160
  %165 = load ptr, ptr %130, align 8, !tbaa !36
  %166 = load ptr, ptr %152, align 8, !tbaa !36
  %167 = tail call zeroext i8 @types_compatible_p(ptr noundef %165, ptr noundef %166) #19, !range !25
  br label %366

168:                                              ; preds = %126
  switch i16 %117, label %294 [
    i16 13, label %169
    i16 14, label %178
    i16 15, label %190
  ]

169:                                              ; preds = %116, %168
  %170 = load i64, ptr %52, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 13
  br i1 %172, label %173, label %294

173:                                              ; preds = %231, %234, %287, %291, %182, %169
  %174 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !36
  %176 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !36
  br label %3

178:                                              ; preds = %116, %168
  %179 = load i64, ptr %52, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 14
  br i1 %181, label %182, label %294

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = xor i32 %186, %184
  %188 = and i32 %187, 1023
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %173, label %294

190:                                              ; preds = %116, %168
  %191 = load i64, ptr %52, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 15
  br i1 %193, label %194, label %294

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = xor i32 %198, %196
  %200 = and i32 %199, 16777216
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %366

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !36
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !36
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %366

210:                                              ; preds = %206, %202
  %211 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !36
  %213 = icmp eq ptr %212, null
  br i1 %213, label %231, label %214

214:                                              ; preds = %210
  %215 = load i64, ptr %212, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 23
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !36
  %221 = icmp eq ptr %220, null
  br i1 %221, label %366, label %222

222:                                              ; preds = %218
  %223 = load i64, ptr %220, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 23
  br i1 %225, label %226, label %366

226:                                              ; preds = %222
  %227 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %212, ptr noundef nonnull %220) #18
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %366, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr %203, align 8, !tbaa !36
  br label %231

231:                                              ; preds = %229, %214, %210
  %232 = phi ptr [ %230, %229 ], [ %204, %214 ], [ %204, %210 ]
  %233 = icmp eq ptr %232, null
  br i1 %233, label %173, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !36
  %237 = icmp eq ptr %236, null
  %238 = icmp eq ptr %232, %236
  %239 = or i1 %237, %238
  br i1 %239, label %173, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 13
  %242 = load ptr, ptr %241, align 8, !tbaa !36
  %243 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 13
  %244 = load ptr, ptr %243, align 8, !tbaa !36
  %245 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 14
  %246 = load ptr, ptr %245, align 8, !tbaa !36
  %247 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 14
  %248 = load ptr, ptr %247, align 8, !tbaa !36
  %249 = icmp eq ptr %242, null
  br i1 %249, label %255, label %250

250:                                              ; preds = %240
  %251 = load i64, ptr %242, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 23
  %254 = select i1 %253, ptr %242, ptr null
  br label %255

255:                                              ; preds = %250, %240
  %256 = phi ptr [ %254, %250 ], [ null, %240 ]
  %257 = icmp eq ptr %244, null
  br i1 %257, label %263, label %258

258:                                              ; preds = %255
  %259 = load i64, ptr %244, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 23
  %262 = select i1 %261, ptr %244, ptr null
  br label %263

263:                                              ; preds = %258, %255
  %264 = phi ptr [ %262, %258 ], [ null, %255 ]
  %265 = icmp eq ptr %246, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %263
  %267 = load i64, ptr %246, align 8
  %268 = and i64 %267, 65535
  %269 = icmp eq i64 %268, 23
  %270 = select i1 %269, ptr %246, ptr null
  br label %271

271:                                              ; preds = %266, %263
  %272 = phi ptr [ %270, %266 ], [ null, %263 ]
  %273 = icmp eq ptr %248, null
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = load i64, ptr %248, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 23
  %278 = select i1 %277, ptr %248, ptr null
  br label %279

279:                                              ; preds = %274, %271
  %280 = phi ptr [ %278, %274 ], [ null, %271 ]
  %281 = icmp eq ptr %264, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %279
  %283 = icmp eq ptr %256, null
  br i1 %283, label %366, label %284

284:                                              ; preds = %282
  %285 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %256, ptr noundef nonnull %264) #18
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %366, label %287

287:                                              ; preds = %284, %279
  %288 = icmp eq ptr %280, null
  br i1 %288, label %173, label %289

289:                                              ; preds = %287
  %290 = icmp eq ptr %272, null
  br i1 %290, label %366, label %291

291:                                              ; preds = %289
  %292 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %272, ptr noundef nonnull %280) #18
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %366, label %173

294:                                              ; preds = %168, %169, %178, %182, %190, %116, %118, %122
  %295 = and i32 %89, 65534
  %296 = icmp eq i32 %295, 20
  br i1 %296, label %297, label %366

297:                                              ; preds = %294
  %298 = load i64, ptr %52, align 8
  %299 = xor i64 %298, %88
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %366

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !36
  %305 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !36
  %307 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %304, ptr noundef %306) #19, !range !25
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %366, label %309

309:                                              ; preds = %302
  %310 = load i64, ptr %50, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 21
  br i1 %312, label %313, label %320

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 14
  %315 = load ptr, ptr %314, align 8, !tbaa !36
  %316 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 14
  %317 = load ptr, ptr %316, align 8, !tbaa !36
  %318 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %315, ptr noundef %317) #19, !range !25
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %366, label %320

320:                                              ; preds = %313, %309
  %321 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !36
  %323 = icmp eq ptr %322, null
  br i1 %323, label %366, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !36
  %327 = icmp eq ptr %322, %326
  br i1 %327, label %366, label %328

328:                                              ; preds = %324
  %329 = icmp eq ptr %326, null
  br i1 %329, label %366, label %330

330:                                              ; preds = %328, %343
  %331 = phi ptr [ %347, %343 ], [ %326, %328 ]
  %332 = phi ptr [ %345, %343 ], [ %322, %328 ]
  %333 = getelementptr inbounds %struct.tree_list, ptr %332, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !36
  %335 = getelementptr inbounds %struct.tree_type, ptr %334, i64 0, i32 16
  %336 = load ptr, ptr %335, align 8, !tbaa !36
  %337 = getelementptr inbounds %struct.tree_list, ptr %331, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !36
  %339 = getelementptr inbounds %struct.tree_type, ptr %338, i64 0, i32 16
  %340 = load ptr, ptr %339, align 8, !tbaa !36
  %341 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %336, ptr noundef %340) #19, !range !25
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %366, label %343

343:                                              ; preds = %330
  %344 = getelementptr inbounds %struct.tree_common, ptr %332, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !36
  %346 = getelementptr inbounds %struct.tree_common, ptr %331, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !36
  %348 = icmp ne ptr %345, null
  %349 = icmp ne ptr %347, null
  %350 = select i1 %348, i1 %349, i1 false
  br i1 %350, label %330, label %351, !llvm.loop !142

351:                                              ; preds = %343
  %352 = select i1 %348, i1 true, i1 %349
  br i1 %352, label %366, label %353

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 4
  %355 = load ptr, ptr %354, align 8, !tbaa !36
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !36
  %360 = icmp eq ptr %359, null
  br i1 %360, label %366, label %361

361:                                              ; preds = %357, %353
  %362 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !143
  %363 = tail call i32 %362(ptr noundef nonnull %52, ptr noundef nonnull %50) #18
  %364 = icmp ne i32 %363, 0
  %365 = zext i1 %364 to i8
  br label %366

366:                                              ; preds = %289, %291, %282, %284, %218, %222, %226, %206, %194, %58, %48, %36, %29, %20, %11, %85, %330, %328, %122, %118, %297, %294, %107, %361, %302, %313, %320, %324, %351, %357, %160, %156, %143, %103, %164
  %367 = phi i8 [ %167, %164 ], [ 0, %103 ], [ 0, %143 ], [ 0, %156 ], [ 0, %160 ], [ %365, %361 ], [ 0, %302 ], [ 0, %313 ], [ 1, %320 ], [ 1, %324 ], [ 0, %351 ], [ 1, %357 ], [ %115, %107 ], [ 0, %294 ], [ 0, %297 ], [ 1, %118 ], [ 1, %122 ], [ 0, %328 ], [ 0, %330 ], [ 0, %289 ], [ 0, %291 ], [ 0, %282 ], [ 0, %284 ], [ 0, %218 ], [ 0, %222 ], [ 0, %226 ], [ 0, %206 ], [ 0, %194 ], [ 1, %58 ], [ 1, %48 ], [ 0, %36 ], [ 1, %29 ], [ 1, %20 ], [ 0, %11 ], [ 0, %85 ]
  ret i8 %367
}

; Function Attrs: optsize
declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @types_compatible_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %0, ptr noundef %1) #19, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %1, ptr noundef %0) #19, !range !25
  br label %9

9:                                                ; preds = %4, %7, %2
  %10 = phi i8 [ 1, %2 ], [ 0, %4 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_ssa_useless_type_conversion(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %12 [
    i16 116, label %4
    i16 113, label %4
    i16 118, label %4
    i16 117, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %6, ptr noundef %10) #19, !range !25
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i8 [ %11, %4 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tree_ssa_strip_useless_type_conversions(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %7) #19, !range !25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !155

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @walk_use_def_chains(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1591, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %11) #19, !range !42
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call zeroext i8 %1(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %2) #18
  br label %19

16:                                               ; preds = %9
  %17 = tail call ptr @pointer_set_create() #18
  %18 = tail call fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %17, i8 noundef zeroext %3) #19
  tail call void @pointer_set_destroy(ptr noundef %17) #18
  br label %19

19:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call i32 @pointer_set_insert(ptr noundef %3, ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #19, !range !42
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i8 %1(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %2) #18
  br label %63

15:                                               ; preds = %8
  %16 = icmp eq i8 %4, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %25

20:                                               ; preds = %25
  %21 = add nuw nsw i64 %26, 1
  %22 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #19
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %30, !llvm.loop !156

25:                                               ; preds = %17, %20
  %26 = phi i64 [ %21, %20 ], [ 0, %17 ]
  %27 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %10, i64 noundef %26) #19
  %28 = tail call zeroext i8 %1(ptr noundef %27, ptr noundef %10, ptr noundef %2) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %20, label %63

30:                                               ; preds = %20, %17, %15
  %31 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %30, %44
  %34 = phi i64 [ %45, %44 ], [ 0, %30 ]
  %35 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %10, i64 noundef %34) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef nonnull %35, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41, %37, %33
  %45 = add nuw nsw i64 %34, 1
  %46 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #19
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %33, label %49, !llvm.loop !157

49:                                               ; preds = %44, %30
  br i1 %16, label %63, label %50

50:                                               ; preds = %49
  %51 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %58

53:                                               ; preds = %58
  %54 = add nuw nsw i64 %59, 1
  %55 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #19
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %63, !llvm.loop !158

58:                                               ; preds = %50, %53
  %59 = phi i64 [ %54, %53 ], [ 0, %50 ]
  %60 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %10, i64 noundef %59) #19
  %61 = tail call zeroext i8 %1(ptr noundef %60, ptr noundef %10, ptr noundef %2) #18
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %53, label %63

63:                                               ; preds = %25, %41, %53, %58, %50, %49, %5, %13
  %64 = phi i8 [ %14, %13 ], [ 0, %5 ], [ 0, %49 ], [ 0, %50 ], [ 0, %53 ], [ 1, %58 ], [ 1, %41 ], [ 1, %25 ]
  ret i8 %64
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ssa_undefined_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 34, label %15
    i16 32, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1, %6
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %13) #19, !range !25
  br label %15

15:                                               ; preds = %6, %1, %11
  %16 = phi i8 [ %14, %11 ], [ 0, %1 ], [ 0, %6 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_warn_uninitialized() #15 {
  %1 = load i32, ptr @warn_uninitialized, align 4, !tbaa !18
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_early_warn_uninitialized() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !18
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext %3) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninitialized_vars(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.walk_data, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.walk_data, ptr %3, i64 0, i32 2
  store i8 %0, ptr %5, align 1, !tbaa !159
  tail call void @calculate_dominance_info(i32 noundef 2) #18
  %6 = load ptr, ptr @cfun, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.walk_data, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  br label %27

18:                                               ; preds = %42, %27
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = load ptr, ptr @cfun, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %45, label %27, !llvm.loop !161

27:                                               ; preds = %15, %18
  %28 = phi ptr [ %8, %15 ], [ %23, %18 ]
  %29 = phi ptr [ %11, %15 ], [ %20, %18 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !97
  %31 = call fastcc ptr @single_succ(ptr noundef %30) #19
  %32 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %31, ptr noundef %29) #18
  store i8 %32, ptr %16, align 8, !tbaa !162
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %29) #19
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %18

35:                                               ; preds = %27, %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %36 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %36, ptr %3, align 8, !tbaa !163
  %37 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %36) #19, !range !25
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %3, ptr %17, align 8, !tbaa !164
  %40 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %41 = call ptr @walk_gimple_op(ptr noundef %40, ptr noundef nonnull @warn_uninitialized_var, ptr noundef nonnull %4) #18
  br label %42

42:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !25
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %35, label %18, !llvm.loop !165

45:                                               ; preds = %18, %1
  call void @free_dominance_info(i32 noundef 2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @warn_uninitialized_var(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %8 = load i8, ptr %7, align 1, !tbaa !49
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -47
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %66

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi ptr [ %18, %16 ], [ %6, %3 ]
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %59 [
    i16 121, label %65
    i16 32, label %23
    i16 141, label %41
    i16 43, label %53
    i16 44, label %53
  ]

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8, !tbaa !163
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %24) #19, !range !25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_vuse_op(ptr noundef nonnull %24) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %30) #19
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = icmp eq ptr %20, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = load i64, ptr %33, align 8
  %39 = and i64 %38, 4294967296
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %37, %19
  %42 = phi ptr [ %20, %19 ], [ %33, %37 ]
  %43 = getelementptr inbounds %struct.walk_data, ptr %5, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !162
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.walk_data, ptr %5, i64 0, i32 2
  %48 = load i8, ptr %47, align 1, !tbaa !159
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %46, %41
  %51 = phi ptr [ @.str.43, %41 ], [ @.str.44, %46 ]
  %52 = load ptr, ptr %5, align 8, !tbaa !163
  tail call fastcc void @warn_uninit(ptr noundef nonnull %42, ptr noundef nonnull %51, ptr noundef %52) #19
  br label %65

53:                                               ; preds = %19, %19
  %54 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %65, label %66

59:                                               ; preds = %19
  %60 = and i64 %21, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !18
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %46, %50, %19
  store i32 0, ptr %1, align 4, !tbaa !18
  br label %66

66:                                               ; preds = %65, %32, %29, %26, %23, %59, %10, %53, %37
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !42
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninit(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef %0) #19, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %3
  %12 = load i64, ptr %8, align 8
  %13 = and i64 %12, 8388608
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %8) #19, !range !25
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = icmp eq ptr %2, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef nonnull %2) #19, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %2) #19
  br label %28

25:                                               ; preds = %20, %18
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !36
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %29) #18
  %30 = load ptr, ptr %4, align 8, !tbaa.struct !167
  %31 = getelementptr inbounds i8, ptr %4, i64 8
  %32 = load i32, ptr %31, align 8, !tbaa.struct !168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %33 = load ptr, ptr @cfun, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !36
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %37) #18
  %38 = load ptr, ptr %5, align 8, !tbaa.struct !167
  %39 = getelementptr inbounds i8, ptr %5, i64 8
  %40 = load i32, ptr %39, align 8, !tbaa.struct !168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  %41 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %29, i32 noundef 211, ptr noundef %1, ptr noundef nonnull %8) #18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %28
  %44 = load i64, ptr %8, align 8
  %45 = or i64 %44, 8388608
  store i64 %45, ptr %8, align 8
  %46 = icmp ne ptr %30, %38
  %47 = icmp slt i32 %32, %40
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr @cfun, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !170
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %52) #18
  %53 = getelementptr inbounds %struct.expanded_location, ptr %6, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !171
  %55 = icmp sgt i32 %32, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %43
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !36
  call void (i32, ptr, ...) @inform(i32 noundef %58, ptr noundef nonnull @.str.45, ptr noundef nonnull %8) #18
  br label %59

59:                                               ; preds = %28, %56, %49, %15, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !36
  ret i32 %3
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_late_warn_uninitialized() #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext 1) #19
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %28, label %20

11:                                               ; preds = %24, %20
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = load ptr, ptr @cfun, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %28, label %20, !llvm.loop !173

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #18
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %11

24:                                               ; preds = %20, %24
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  call fastcc void @warn_uninitialized_phi(ptr noundef %25) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %24, label %11, !llvm.loop !174

28:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninitialized_phi(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #19
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %6 = icmp ne i8 %5, 0
  %7 = icmp ne i32 %2, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %19

9:                                                ; preds = %1, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %1 ]
  %11 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %10) #19
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call fastcc void @warn_uninit(ptr noundef nonnull %11, ptr noundef nonnull @.str.44, ptr noundef null) #19
  br label %16

16:                                               ; preds = %15, %9
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %3
  br i1 %18, label %19, label %9, !llvm.loop !175

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_update_addresses_taken(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %101, label %25

16:                                               ; preds = %98, %63
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = load ptr, ptr @cfun, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %101, label %25, !llvm.loop !176

25:                                               ; preds = %1, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %1 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #19
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %25, %60
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %31 = call fastcc i32 @gimple_code(ptr noundef %30) #19, !range !42
  %32 = call zeroext i8 @gimple_ior_addresses_taken(ptr noundef %5, ptr noundef %30) #18
  %33 = trunc i32 %31 to i8
  switch i8 %33, label %60 [
    i8 8, label %34
    i8 6, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = call ptr @gimple_get_lhs(ptr noundef %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 152
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %37, %41
  %46 = call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %35) #19, !range !25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = call ptr @get_base_address(ptr noundef nonnull %35) #18
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !18
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %60

55:                                               ; preds = %48, %41
  %56 = phi ptr [ %43, %41 ], [ %49, %48 ]
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !36
  %59 = call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %58) #18
  br label %60

60:                                               ; preds = %55, %48, %45, %34, %29
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %29, label %63, !llvm.loop !177

63:                                               ; preds = %60, %25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #18
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %16

66:                                               ; preds = %63, %98
  %67 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %68 = call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %66, %93
  %71 = phi i64 [ %94, %93 ], [ 0, %66 ]
  %72 = trunc i64 %71 to i32
  %73 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %67, i32 noundef %72) #19
  %74 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %73) #19
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 121
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !36
  %81 = call ptr @get_base_address(ptr noundef %80) #18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !18
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.tree_decl_minimal, ptr %81, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !36
  %92 = call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %91) #18
  br label %93

93:                                               ; preds = %89, %83, %78, %70
  %94 = add nuw nsw i64 %71, 1
  %95 = call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #19
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %70, label %98, !llvm.loop !178

98:                                               ; preds = %93, %66
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %66, label %16, !llvm.loop !179

101:                                              ; preds = %16, %1
  %102 = load i32, ptr @optimize, align 4, !tbaa !18
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i8 %0, 0
  %105 = and i1 %104, %103
  br i1 %105, label %106, label %233

106:                                              ; preds = %101
  %107 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #19
  %108 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #19, !range !25
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %233

110:                                              ; preds = %106, %191
  %111 = phi ptr [ %193, %191 ], [ %107, %106 ]
  %112 = phi i8 [ %192, %191 ], [ 0, %106 ]
  %113 = call fastcc zeroext i8 @is_global_var(ptr noundef %111) #19, !range !25
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %191

115:                                              ; preds = %110
  %116 = load i64, ptr %111, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 36
  br i1 %118, label %191, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %111, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !36
  %122 = call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %121) #18
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %191

124:                                              ; preds = %119
  %125 = load i64, ptr %111, align 8
  %126 = and i64 %125, 262144
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %151, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !36
  %131 = call zeroext i8 @is_gimple_reg_type(ptr noundef %130) #18
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load i32, ptr %120, align 4, !tbaa !36
  %135 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %134) #18
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %133, %128
  %138 = load i64, ptr %111, align 8
  %139 = and i64 %138, -262145
  store i64 %139, ptr %111, align 8
  %140 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %111) #18
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  call void @mark_sym_for_renaming(ptr noundef nonnull %111) #18
  br label %143

143:                                              ; preds = %142, %137
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = call i64 @fwrite(ptr nonnull @.str.47, i64 31, i64 1, ptr nonnull %144)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_generic_expr(ptr noundef %148, ptr noundef nonnull %111, i32 noundef 0) #18
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %150 = call i32 @fputc(i32 10, ptr %149)
  br label %151

151:                                              ; preds = %143, %146, %133, %124
  %152 = phi i8 [ %112, %133 ], [ 1, %146 ], [ 1, %143 ], [ %112, %124 ]
  %153 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 2
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 134217728
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %191

157:                                              ; preds = %151
  %158 = load i32, ptr %120, align 4, !tbaa !36
  %159 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %158) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !36
  %164 = load i64, ptr %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = and i32 %165, 65535
  %167 = add nsw i32 %166, -13
  %168 = icmp ult i32 %167, 2
  br i1 %168, label %169, label %191

169:                                              ; preds = %161
  %170 = load i64, ptr %111, align 8
  %171 = and i64 %170, 524288
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %169
  %174 = and i64 %170, 65535
  %175 = icmp eq i64 %174, 32
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %111, i64 0, i32 4
  %178 = load i32, ptr %177, align 8
  %179 = and i32 %178, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176, %173
  %182 = load i64, ptr %153, align 8
  %183 = or i64 %182, 134217728
  store i64 %183, ptr %153, align 8
  call void @mark_sym_for_renaming(ptr noundef nonnull %111) #18
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = call i64 @fwrite(ptr nonnull @.str.49, i64 30, i64 1, ptr nonnull %184)
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !6
  call void @print_generic_expr(ptr noundef %188, ptr noundef nonnull %111, i32 noundef 0) #18
  %189 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %190 = call i32 @fputc(i32 10, ptr %189)
  br label %191

191:                                              ; preds = %161, %151, %157, %169, %176, %186, %181, %110, %115, %119
  %192 = phi i8 [ %112, %110 ], [ %112, %115 ], [ %112, %119 ], [ %152, %151 ], [ %152, %157 ], [ %152, %169 ], [ 1, %186 ], [ 1, %181 ], [ %152, %176 ], [ %152, %161 ]
  %193 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #19
  %194 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #19, !range !25
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %110, label %196, !llvm.loop !180

196:                                              ; preds = %191
  %197 = icmp eq i8 %192, 0
  br i1 %197, label %233, label %198

198:                                              ; preds = %196
  %199 = load ptr, ptr @cfun, align 8, !tbaa !6
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !96
  %202 = load ptr, ptr %201, align 8, !tbaa !97
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 6
  %204 = load ptr, ptr %203, align 8, !tbaa !99
  %205 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !101
  %207 = icmp eq ptr %204, %206
  br i1 %207, label %232, label %217

208:                                              ; preds = %229, %217
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !99
  %211 = load ptr, ptr @cfun, align 8, !tbaa !6
  %212 = getelementptr inbounds %struct.function, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !96
  %214 = getelementptr inbounds %struct.control_flow_graph, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !101
  %216 = icmp eq ptr %210, %215
  br i1 %216, label %232, label %217, !llvm.loop !181

217:                                              ; preds = %198, %208
  %218 = phi ptr [ %210, %208 ], [ %204, %198 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %218) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %219 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %208

221:                                              ; preds = %217, %229
  %222 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %223 = call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %222) #19, !range !25
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %222) #19, !range !25
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225, %221
  call fastcc void @update_stmt(ptr noundef %222) #19
  br label %229

229:                                              ; preds = %228, %225
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %230 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !25
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %221, label %208, !llvm.loop !182

232:                                              ; preds = %208, %198
  call void @update_ssa(i32 noundef 2048) #18
  br label %233

233:                                              ; preds = %106, %101, %232, %196
  call void @bitmap_obstack_free(ptr noundef %6) #18
  call void @bitmap_obstack_free(ptr noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_ior_addresses_taken(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #19
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"_edge_var_map", !7, i64 0, !7, i64 8, !12, i64 16}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !7, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{!16, !12, i64 0}
!16 = !{!"VEC_edge_var_map_base", !12, i64 0, !12, i64 4, !8, i64 8}
!17 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 4, !18}
!18 = !{!12, !12, i64 0}
!19 = !{!16, !12, i64 4}
!20 = !{!21, !12, i64 0}
!21 = !{!"VEC_edge_var_map_heap", !16, i64 0}
!22 = !{!23, !7, i64 8}
!23 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !24, i64 56}
!24 = !{!"long", !8, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{!23, !12, i64 44}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !7, i64 0}
!30 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!31 = !{!32, !7, i64 0}
!32 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!33 = !{!34, !12, i64 40}
!34 = !{!"phi_arg_d", !35, i64 0, !7, i64 32, !12, i64 40}
!35 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!36 = !{!8, !8, i64 0}
!37 = !{!32, !7, i64 16}
!38 = !{!35, !7, i64 24}
!39 = !{i32 0, i32 2}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = !{i32 0, i32 256}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = !{!46, !7, i64 8}
!46 = !{!"immediate_use_iterator_d", !7, i64 0, !7, i64 8, !35, i64 16, !7, i64 48}
!47 = !{!35, !7, i64 8}
!48 = !{!46, !7, i64 0}
!49 = !{!50, !8, i64 41}
!50 = !{!"walk_stmt_info", !30, i64 0, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !7, i64 48}
!51 = !{!46, !7, i64 48}
!52 = !{!46, !7, i64 24}
!53 = !{!46, !7, i64 16}
!54 = !{!24, !24, i64 0}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = !{!58, !8, i64 0}
!58 = !{!"ssa_operand_iterator_d", !8, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !7, i64 32}
!59 = !{!58, !7, i64 32}
!60 = !{!58, !12, i64 28}
!61 = !{!58, !12, i64 4}
!62 = !{!58, !7, i64 16}
!63 = !{!64, !7, i64 0}
!64 = !{!"use_optype_d", !7, i64 0, !35, i64 8}
!65 = !{!58, !12, i64 24}
!66 = !{!64, !7, i64 32}
!67 = !{!35, !7, i64 0}
!68 = !{!58, !7, i64 8}
!69 = !{!70, !7, i64 0}
!70 = !{!"def_optype_d", !7, i64 0, !7, i64 8}
!71 = distinct !{!71, !28}
!72 = !{!70, !7, i64 8}
!73 = !{!74, !7, i64 0}
!74 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!75 = distinct !{!75, !28}
!76 = !{!77, !7, i64 24}
!77 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!78 = !{!79, !7, i64 16}
!79 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !80, i64 32, !80, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !12, i64 96, !81, i64 104}
!80 = !{!"pt_solution", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !7, i64 8}
!81 = !{!"ssa_operands", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28}
!85 = !{!86, !7, i64 0}
!86 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !24, i64 24}
!87 = !{!86, !7, i64 8}
!88 = !{!89, !12, i64 16}
!89 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!90 = !{!86, !12, i64 16}
!91 = !{!86, !24, i64 24}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28}
!94 = !{!89, !7, i64 0}
!95 = distinct !{!95, !28}
!96 = !{!77, !7, i64 8}
!97 = !{!98, !7, i64 0}
!98 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!99 = !{!100, !7, i64 56}
!100 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !24, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!101 = !{!98, !7, i64 8}
!102 = !{i64 0, i64 4, !18, i64 8, i64 8, !6}
!103 = !{i64 0, i64 8, !6}
!104 = !{!23, !7, i64 24}
!105 = !{!23, !7, i64 0}
!106 = !{!100, !12, i64 80}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = !{!115, !12, i64 0}
!115 = !{!"VEC_tree_base", !12, i64 0, !12, i64 4, !8, i64 8}
!116 = !{!117, !12, i64 0}
!117 = !{!"", !12, i64 0, !7, i64 8}
!118 = !{!100, !7, i64 0}
!119 = distinct !{!119, !28}
!120 = !{!23, !12, i64 48}
!121 = distinct !{!121, !28}
!122 = !{!30, !7, i64 8}
!123 = !{!30, !7, i64 16}
!124 = !{!125, !12, i64 0}
!125 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!126 = !{!100, !12, i64 96}
!127 = !{!128, !7, i64 0}
!128 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!129 = !{!130, !7, i64 0}
!130 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!131 = !{!79, !7, i64 24}
!132 = !{!133, !12, i64 0}
!133 = !{!"int_tree_map", !12, i64 0, !7, i64 8}
!134 = !{!79, !7, i64 0}
!135 = !{!79, !7, i64 80}
!136 = distinct !{!136, !28}
!137 = !{!79, !7, i64 64}
!138 = !{!79, !7, i64 8}
!139 = !{!140, !7, i64 24}
!140 = !{!"htab", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !12, i64 56, !12, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, !28}
!143 = !{!144, !7, i64 832}
!144 = !{!"gcc_target", !145, i64 0, !147, i64 368, !148, i64 664, !12, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !24, i64 1064, !24, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !149, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !24, i64 1464, !150, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !151, i64 1784, !152, i64 1792, !153, i64 1896, !154, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!145 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !146, i64 24, !146, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!146 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!147 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!148 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!149 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!150 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!151 = !{!"c", !7, i64 0}
!152 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!153 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!154 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!155 = distinct !{!155, !28}
!156 = distinct !{!156, !28}
!157 = distinct !{!157, !28}
!158 = distinct !{!158, !28}
!159 = !{!160, !8, i64 9}
!160 = !{!"walk_data", !7, i64 0, !8, i64 8, !8, i64 9}
!161 = distinct !{!161, !28}
!162 = !{!160, !8, i64 8}
!163 = !{!160, !7, i64 0}
!164 = !{!50, !7, i64 24}
!165 = distinct !{!165, !28}
!166 = !{!100, !7, i64 8}
!167 = !{i64 0, i64 8, !6, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 1, !36}
!168 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 1, !36}
!169 = !{!77, !7, i64 48}
!170 = !{!77, !12, i64 116}
!171 = !{!172, !12, i64 8}
!172 = !{!"", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16}
!173 = distinct !{!173, !28}
!174 = distinct !{!174, !28}
!175 = distinct !{!175, !28}
!176 = distinct !{!176, !28}
!177 = distinct !{!177, !28}
!178 = distinct !{!178, !28}
!179 = distinct !{!179, !28}
!180 = distinct !{!180, !28}
!181 = distinct !{!181, !28}
!182 = distinct !{!182, !28}
