; ModuleID = 'tree-ssa.c'
source_filename = "tree-ssa.c"
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.walk_data = type { ptr, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }

@edge_var_maps = internal unnamed_addr global ptr null, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"tree-ssa.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"AUX pointer initialized for edge %d->%d\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"stmt (%p) marked modified after optimization pass: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"statement makes a memory store, but has no VDEFS\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"statement has VDEF operand not in defs list\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"statement has VDEF but no VUSE operand\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"VDEF and VUSE do not use the same symbol\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"statement has VUSE operand not in uses list\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"in statement\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SSA_NAME_DEF_STMT is wrong\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Expected definition statement:\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\0AActual definition statement:\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"verify_ssa failed\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"*early_warn_uninitialized\00", align 1
@pass_early_warn_uninitialized = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.14, ptr @gate_warn_uninitialized, ptr @execute_early_warn_uninitialized, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"*late_warn_uninitialized\00", align 1
@pass_late_warn_uninitialized = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.15, ptr @gate_warn_uninitialized, ptr @execute_late_warn_uninitialized, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"No longer having address taken \00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Decl is now a gimple register \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"addressables\00", align 1
@pass_update_address_taken = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2097153 } }, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.22 = private unnamed_addr constant [51 x i8] c"SSA_NAME created in two different blocks %i and %i\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"while verifying SSA_NAME \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c" in statement\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"incoming edge count does not match number of PHI arguments\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"PHI argument is missing for edge %d->%d\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"PHI argument is not SSA_NAME, or invariant\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"address taken, but ADDRESSABLE bit not set\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"wrong edge %d->%d for PHI argument\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"PHI argument\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"for PHI node\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"expected an SSA_NAME object\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"type mismatch between an SSA_NAME and its symbol\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"found an SSA_NAME that had been released into the free pool\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"found a virtual definition for a GIMPLE register\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"virtual SSA name for non-VOP decl\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"found a real definition for a non-register\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"found a default name with a non-empty defining statement\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"missing definition\00", align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"definition in block %i does not dominate use in block %i\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"definition in block %i follows the use\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"SSA_NAME_OCCURS_IN_ABNORMAL_PHI should be set\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"no immediate_use list\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"wrong immediate use list\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"for SSA_NAME: \00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c" in statement:\0A\00", align 1
@warn_uninitialized = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [43 x i8] c"%qD is used uninitialized in this function\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"%qD may be used uninitialized in this function\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"%qD was declared here\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !154 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._edge_var_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !159

9:                                                ; preds = %4
  %10 = tail call ptr @pointer_map_create() #18
  store ptr %10, ptr @edge_var_maps, align 8, !tbaa !155
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = tail call ptr @pointer_map_insert(ptr noundef %12, ptr noundef %0) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  store ptr %14, ptr %5, align 8, !tbaa !155
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !160

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @VEC_edge_var_map_heap_alloc() #19
  store ptr %17, ptr %5, align 8, !tbaa !155
  store ptr %17, ptr %13, align 8, !tbaa !155
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct._edge_var_map, ptr %6, i64 0, i32 1
  store ptr %2, ptr %19, align 8, !tbaa !161
  store ptr %1, ptr %6, align 8, !tbaa !164
  %20 = getelementptr inbounds %struct._edge_var_map, ptr %6, i64 0, i32 2
  store i32 %3, ptr %20, align 8, !tbaa !165
  call fastcc void @VEC_edge_var_map_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %21 = load ptr, ptr %5, align 8, !tbaa !155
  %22 = icmp eq ptr %14, %21
  br i1 %22, label %24, label %23, !prof !166

23:                                               ; preds = %18
  store ptr %21, ptr %13, align 8, !tbaa !155
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
define internal fastcc ptr @VEC_edge_var_map_heap_alloc() unnamed_addr #0 !prof !167 !PGOFuncName !168 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 24) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_var_map_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !154 !PGOFuncName !169 {
  tail call fastcc void @VEC_edge_var_map_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !155
  tail call fastcc void @VEC_edge_var_map_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_clear(ptr noundef %0) local_unnamed_addr #0 !prof !170 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !171

5:                                                ; preds = %1
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %3, ptr noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !172

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  store ptr %9, ptr %2, align 8, !tbaa !155
  call fastcc void @VEC_edge_var_map_heap_free(ptr noundef nonnull %2) #19
  store ptr null, ptr %6, align 8, !tbaa !155
  br label %10

10:                                               ; preds = %5, %8, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_var_map_heap_free(ptr nocapture noundef %0) unnamed_addr #3 !prof !173 !PGOFuncName !174 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !175

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_dup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !176 {
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !177

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_map_insert(ptr noundef nonnull %3, ptr noundef %0) #18
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !prof !178

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !155
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
  store ptr %18, ptr %6, align 8, !tbaa !155
  br label %19

19:                                               ; preds = %5, %2, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_edge_var_map_heap_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !179 !PGOFuncName !180 {
  %2 = load i32, ptr %0, align 8, !tbaa !181
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %2, i64 noundef 8, i64 noundef 24) #18
  store i32 %2, ptr %6, align 8, !tbaa !183
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
define dso_local ptr @redirect_edge_var_map_vector(ptr noundef %0) local_unnamed_addr #0 !prof !185 {
  %2 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !186

4:                                                ; preds = %1
  %5 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !187

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !155
  br label %9

9:                                                ; preds = %4, %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_destroy() local_unnamed_addr #0 !prof !188 {
  %1 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !189

3:                                                ; preds = %0
  tail call void @pointer_map_traverse(ptr noundef nonnull %1, ptr noundef nonnull @free_var_map_entry, ptr noundef null) #18
  %4 = load ptr, ptr @edge_var_maps, align 8, !tbaa !155
  tail call void @pointer_map_destroy(ptr noundef %4) #18
  store ptr null, ptr @edge_var_maps, align 8, !tbaa !155
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef zeroext i8 @free_var_map_entry(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 !prof !190 !PGOFuncName !191 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !155
  store ptr %5, ptr %4, align 8, !tbaa !155
  call fastcc void @VEC_edge_var_map_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i8 1
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ssa_redirect_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !192 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  tail call void @redirect_edge_var_map_clear(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #18
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %24, !prof !197

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %21
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %12 = load i32, ptr %9, align 4, !tbaa !198
  %13 = zext i32 %12 to i64
  %14 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %11, i64 noundef %13) #19
  %15 = load i32, ptr %9, align 4, !tbaa !198
  %16 = zext i32 %15 to i64
  %17 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %11, i64 noundef %16) #19
  %18 = icmp eq ptr %14, null
  br i1 %18, label %21, label %19, !prof !199

19:                                               ; preds = %10
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #19
  call void @redirect_edge_var_map_add(ptr noundef nonnull %0, ptr noundef %20, ptr noundef nonnull %14, i32 noundef %17) #19
  br label %21

21:                                               ; preds = %10, %19
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %10, label %24, !prof !200, !llvm.loop !201

24:                                               ; preds = %21, %2
  %25 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %25
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !203 !PGOFuncName !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !207 !PGOFuncName !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !154 !PGOFuncName !211 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !154 !PGOFuncName !212 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !213
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !154 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !207 !PGOFuncName !218 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !219
  store ptr %4, ptr %0, align 8, !tbaa !205
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flush_pending_stmts(ptr noundef %0) local_unnamed_addr #0 !prof !220 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = tail call ptr @redirect_edge_var_map_vector(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !prof !221

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %8) #18
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23, !prof !222

11:                                               ; preds = %6, %15
  %12 = phi i32 [ %20, %15 ], [ 0, %6 ]
  %13 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef nonnull %4, i32 noundef %12, ptr noundef nonnull %2) #19, !range !223
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15, !prof !224

15:                                               ; preds = %11
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %17 = load ptr, ptr %2, align 8, !tbaa !155
  %18 = call fastcc ptr @redirect_edge_var_map_def(ptr noundef %17) #19
  %19 = call fastcc i32 @redirect_edge_var_map_location(ptr noundef %17) #19
  call void @add_phi_arg(ptr noundef %16, ptr noundef %18, ptr noundef %0, i32 noundef %19) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %20 = add nuw nsw i32 %12, 1
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %11, label %23, !prof !225, !llvm.loop !226

23:                                               ; preds = %11, %15, %6
  call void @redirect_edge_var_map_clear(ptr noundef %0) #19
  br label %24

24:                                               ; preds = %1, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !227 !PGOFuncName !228 {
  %4 = load i32, ptr %0, align 8, !tbaa !181
  %5 = icmp ugt i32 %4, %1
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %6
  %8 = select i1 %5, ptr %7, ptr null, !prof !229
  %9 = zext i1 %5 to i32
  store ptr %8, ptr %2, align 8, !tbaa !155
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !227 !PGOFuncName !230 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !227 !PGOFuncName !231 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !165
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @target_for_debug_bind(ptr noundef %0) local_unnamed_addr #0 !prof !232 {
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !233
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4, !prof !234

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
  %15 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !233
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %4, !prof !235

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
define dso_local void @insert_debug_temp_for_var_def(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !179 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !155
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !233
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %179, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %1) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %179

12:                                               ; preds = %9
  %13 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %1) #19
  %14 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #19, !range !196
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %179

16:                                               ; preds = %12, %28
  %17 = phi ptr [ %30, %28 ], [ %13, %12 ]
  %18 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !217
  %21 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %20) #19, !range !196
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
  %31 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #19, !range !196
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %16, label %35, !llvm.loop !236

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
  %44 = load ptr, ptr %43, align 8, !tbaa !217
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %41, %40 ], [ %44, %42 ]
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !237
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = tail call ptr @degenerate_phi_result(ptr noundef %46) #18
  store ptr %50, ptr %4, align 8, !tbaa !155
  %51 = icmp eq ptr %50, null
  br i1 %51, label %152, label %52

52:                                               ; preds = %49
  %53 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_released_ssa_name, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  store ptr null, ptr %4, align 8, !tbaa !155
  br label %152

56:                                               ; preds = %45
  %57 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %46) #19, !range !196
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
  store ptr %72, ptr %4, align 8, !tbaa !155
  br label %75

73:                                               ; preds = %52, %56, %70
  %74 = load ptr, ptr %4, align 8, !tbaa !155
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %74, %73 ], [ %72, %71 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %152, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %76, align 8
  %80 = and i64 %79, 65535
  %81 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !233
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %103, label %84

84:                                               ; preds = %78
  %85 = call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !237
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %38, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = call zeroext i8 @gimple_assign_single_p(ptr noundef %46) #18
  %91 = icmp eq i8 %90, 0
  %92 = load ptr, ptr %4, align 8, !tbaa !155
  br i1 %91, label %103, label %93

93:                                               ; preds = %89
  %94 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %92) #18
  %95 = icmp eq i8 %94, 0
  %96 = load ptr, ptr %4, align 8, !tbaa !155
  br i1 %95, label %97, label %103

97:                                               ; preds = %93, %87
  %98 = phi ptr [ %76, %87 ], [ %96, %93 ]
  %99 = call zeroext i8 @is_gimple_reg(ptr noundef %98) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !155
  br label %103

103:                                              ; preds = %101, %93, %89, %84, %78
  %104 = phi ptr [ %102, %101 ], [ %96, %93 ], [ %92, %89 ], [ %76, %84 ], [ %76, %78 ]
  %105 = call ptr @unshare_expr(ptr noundef %104) #18
  store ptr %105, ptr %4, align 8, !tbaa !155
  br label %152

106:                                              ; preds = %97
  %107 = call ptr @make_node_stat(i32 noundef 37) #18
  %108 = load ptr, ptr %4, align 8, !tbaa !155
  %109 = call ptr @unshare_expr(ptr noundef %108) #18
  %110 = call ptr @gimple_build_debug_bind_stat(ptr noundef %107, ptr noundef %109, ptr noundef %46) #18
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 2
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, 4096
  store i64 %113, ptr %111, align 8
  %114 = load ptr, ptr %4, align 8, !tbaa !155
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !217
  %117 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !217
  %118 = load i64, ptr %114, align 8
  %119 = and i64 %118, 65535
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !233
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
  store ptr %107, ptr %4, align 8, !tbaa !155
  br label %152

152:                                              ; preds = %55, %49, %103, %151, %75
  %153 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %1) #19
  %154 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #19, !range !196
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %152, %175
  %157 = phi ptr [ %176, %175 ], [ %153, %152 ]
  %158 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %157) #19, !range !196
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %4, align 8, !tbaa !155
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #19
  %165 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #19, !range !196
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163, %167
  %168 = phi ptr [ %170, %167 ], [ %164, %163 ]
  %169 = load ptr, ptr %4, align 8, !tbaa !155
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %168, ptr noundef %169) #19
  %170 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #19
  %171 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #19, !range !196
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %167, label %174, !llvm.loop !238

173:                                              ; preds = %160
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %157) #19
  br label %174

174:                                              ; preds = %167, %163, %173
  call fastcc void @update_stmt(ptr noundef %157) #19
  br label %175

175:                                              ; preds = %156, %174
  %176 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #19, !range !196
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %156, label %179, !llvm.loop !239

179:                                              ; preds = %175, %12, %152, %35, %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 !prof !179 !PGOFuncName !240 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !241
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  store ptr %6, ptr %0, align 8, !tbaa !244
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !196
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !245 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !246 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #19, !range !196
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
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !247 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #7 !prof !179 !PGOFuncName !248 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  store ptr %4, ptr %0, align 8, !tbaa !244
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !196
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !249 !PGOFuncName !250 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @degenerate_phi_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @find_released_ssa_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) #7 !prof !179 !PGOFuncName !251 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !252
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !155
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
  %19 = load i32, ptr %18, align 4, !tbaa !233
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !233
  br label %23

23:                                               ; preds = %22, %17, %14, %5
  %24 = phi ptr [ null, %5 ], [ %10, %14 ], [ null, %17 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !254 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !255 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !217
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
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !179 !PGOFuncName !256 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !241
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  store ptr %6, ptr %0, align 8, !tbaa !244
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #19, !range !196
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !244
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !257 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #7 !prof !179 !PGOFuncName !258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !259
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !260 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !179 !PGOFuncName !261 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !262
  store ptr %1, ptr %4, align 8, !tbaa !155
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #7 !prof !179 !PGOFuncName !263 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  store ptr %3, ptr %0, align 8, !tbaa !244
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #19, !range !196
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  store ptr %8, ptr %2, align 8, !tbaa !259
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !264 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !265 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !196
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
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !266 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  store ptr %4, ptr %0, align 8, !tbaa !244
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #19, !range !196
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !268
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #19
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !244
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !217
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_debug_temps_for_defs(ptr noundef %0) local_unnamed_addr #0 !prof !269 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %3 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !233
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5, !prof !270

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !237
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
  br i1 %27, label %17, label %28, !llvm.loop !271

28:                                               ; preds = %24, %13, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !179 !PGOFuncName !272 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #19
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !273
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !273
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !275
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !179 !PGOFuncName !276 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !275
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !277 {
  %2 = load i8, ptr %0, align 8, !tbaa !273
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #7 !prof !179 !PGOFuncName !279 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !281
  %8 = load ptr, ptr %3, align 8, !tbaa !283
  store ptr %8, ptr %2, align 8, !tbaa !280
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !273
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_defs_bitset(ptr noundef %0) local_unnamed_addr #0 !prof !179 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !284
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %14

9:                                                ; preds = %65
  %10 = load ptr, ptr %0, align 8, !tbaa !284
  br label %11

11:                                               ; preds = %9, %14
  %12 = phi ptr [ %10, %9 ], [ %15, %14 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14, !llvm.loop !286

14:                                               ; preds = %1, %11
  %15 = phi ptr [ %12, %11 ], [ %7, %1 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !196
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %14, %65
  %19 = load ptr, ptr @cfun, align 8, !tbaa !155
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !287
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !289
  %24 = load i32, ptr %2, align 4, !tbaa !233
  %25 = call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %24) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %26 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef %25) #19
  %27 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #19, !range !196
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %18, %52
  %30 = phi ptr [ %53, %52 ], [ %26, %18 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %31 = call fastcc i32 @gimple_code(ptr noundef %30) #19, !range !237
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %30) #19, !range !196
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
  %44 = load i32, ptr %43, align 8, !tbaa !217
  %45 = call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %44) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %5) #19
  %49 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %40, label %52, !llvm.loop !293

51:                                               ; preds = %40
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %65

52:                                               ; preds = %47, %36, %33, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %53 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #19
  %54 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #19, !range !196
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %29, label %56, !llvm.loop !294

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %58) #18
  %59 = call fastcc i32 @gimple_code(ptr noundef %58) #19, !range !237
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
  %66 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !196
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %9, label %18, !llvm.loop !295

68:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !179 !PGOFuncName !296 {
  %4 = load ptr, ptr %1, align 8, !tbaa !284
  store ptr %4, ptr %0, align 8, !tbaa !297
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !299
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !297
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !300
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !302
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !303
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !304
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !233
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !179 !PGOFuncName !305 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !304
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !233
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !306

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !233
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !233
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !302
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !297
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !302
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !303
  store i64 %35, ptr %3, align 8, !tbaa !304
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !233
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !233
  %40 = load i32, ptr %23, align 8, !tbaa !302
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !302
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !307

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !308
  store ptr %44, ptr %0, align 8, !tbaa !297
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !300
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !233
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !304
  store i32 %16, ptr %1, align 4, !tbaa !233
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !179 !PGOFuncName !309 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !310 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #10 !prof !179 !PGOFuncName !311 {
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
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !179 !PGOFuncName !312 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !304
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !304
  %6 = load i32, ptr %1, align 4, !tbaa !233
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !233
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_ssa(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !179 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !287
  %10 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !289
  %12 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %11) #19
  %13 = zext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 8) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %15 = tail call i32 @dom_info_state(i32 noundef 1) #18
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !155
  %18 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %17) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 872, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %1, %20
  tail call void @verify_stmts() #18
  %22 = load i8, ptr @timevar_enable, align 1, !tbaa !217
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @timevar_push_1(i32 noundef 107) #18
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !155
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !287
  %29 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !289
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
  %43 = load ptr, ptr %42, align 8, !tbaa !217
  %44 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %43) #19, !range !196
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
  %53 = load ptr, ptr @cfun, align 8, !tbaa !155
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !287
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !289
  %58 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %57) #19
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %52, %59
  br i1 %60, label %33, label %61, !llvm.loop !313

61:                                               ; preds = %51, %25
  tail call void @calculate_dominance_info(i32 noundef 1) #18
  %62 = load ptr, ptr @cfun, align 8, !tbaa !155
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !314
  %65 = load ptr, ptr %64, align 8, !tbaa !315
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !317
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !319
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %268, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds i8, ptr %4, i64 8
  br label %73

73:                                               ; preds = %71, %259
  %74 = phi ptr [ %67, %71 ], [ %261, %259 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %75 = call fastcc ptr @ei_start_1(ptr noundef %74) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !320
  store ptr %75, ptr %72, align 8, !tbaa.struct !321
  %76 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %3) #19, !range !196
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %91
  %79 = load ptr, ptr %3, align 8, !tbaa !155
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !322
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %79, align 8, !tbaa !323
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !324
  %87 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !193
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !324
  call void (ptr, ...) @error(ptr noundef nonnull @.str.2, i32 noundef %86, i32 noundef %90) #18
  br label %276

91:                                               ; preds = %78
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %92 = load i32, ptr %4, align 8
  %93 = load ptr, ptr %72, align 8
  %94 = call fastcc zeroext i8 @ei_cond(i32 %92, ptr %93, ptr noundef nonnull %3) #19, !range !196
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %78, !llvm.loop !325

96:                                               ; preds = %91, %73
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %74) #18
  %97 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !196
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96, %103
  %100 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  %101 = call fastcc zeroext i8 @verify_phi_args(ptr noundef %100, ptr noundef %74, ptr noundef %14) #19
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %276

103:                                              ; preds = %99
  %104 = call fastcc ptr @gimple_phi_result(ptr noundef %100) #19
  %105 = getelementptr inbounds %struct.tree_ssa_name, ptr %104, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !217
  %107 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %106) #18
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !196
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %99, label %110, !llvm.loop !326

110:                                              ; preds = %103, %96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %74) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !327
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !196
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %259

113:                                              ; preds = %110
  %114 = icmp eq i8 %0, 0
  br label %115

115:                                              ; preds = %113, %256
  %116 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  br i1 %114, label %122, label %117

117:                                              ; preds = %115
  %118 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %116) #19, !range !196
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef %116) #18
  %121 = load ptr, ptr @stderr, align 8, !tbaa !155
  call void @print_gimple_stmt(ptr noundef %121, ptr noundef %116, i32 noundef 0, i32 noundef 64) #18
  br label %276

122:                                              ; preds = %117, %115
  %123 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %116) #19, !range !196
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %150, label %125

125:                                              ; preds = %122
  %126 = call fastcc ptr @gimple_assign_lhs(ptr noundef %116) #19
  %127 = load i64, ptr %126, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 141
  br i1 %129, label %150, label %130

130:                                              ; preds = %125
  %131 = call fastcc ptr @gimple_assign_lhs(ptr noundef %116) #19
  %132 = call ptr @get_base_address(ptr noundef %131) #18
  %133 = icmp eq ptr %132, null
  br i1 %133, label %156, label %134

134:                                              ; preds = %130
  %135 = load i64, ptr %132, align 8
  %136 = trunc i64 %135 to i16
  switch i16 %136, label %156 [
    i16 32, label %142
    i16 34, label %142
    i16 36, label %142
    i16 141, label %137
  ]

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !217
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i16
  switch i16 %141, label %156 [
    i16 32, label %142
    i16 34, label %142
    i16 36, label %142
  ]

142:                                              ; preds = %137, %137, %137, %134, %134, %134
  %143 = call fastcc ptr @gimple_vdef(ptr noundef %116) #19
  %144 = icmp eq ptr %143, null
  %145 = load i32, ptr @optimize, align 4
  %146 = icmp sgt i32 %145, 0
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #18
  %149 = load ptr, ptr @stderr, align 8, !tbaa !155
  call void @print_gimple_stmt(ptr noundef %149, ptr noundef %116, i32 noundef 0, i32 noundef 64) #18
  br label %276

150:                                              ; preds = %125, %122
  %151 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %116) #19, !range !196
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %116) #19, !range !196
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %256, label %156

156:                                              ; preds = %130, %142, %134, %137, %150, %153
  %157 = call fastcc ptr @gimple_vdef(ptr noundef %116) #19
  %158 = icmp eq ptr %157, null
  br i1 %158, label %181, label %159

159:                                              ; preds = %156
  %160 = call fastcc ptr @gimple_vdef_op(ptr noundef %116) #19
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #18
  br label %163

163:                                              ; preds = %162, %159
  %164 = phi i8 [ 1, %162 ], [ 0, %159 ]
  %165 = call fastcc ptr @gimple_vuse(ptr noundef %116) #19
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = call fastcc ptr @gimple_vdef(ptr noundef %116) #19
  %169 = getelementptr inbounds %struct.tree_ssa_name, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !217
  %171 = getelementptr inbounds %struct.tree_ssa_name, ptr %165, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !217
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %167, %163
  %175 = phi ptr [ @.str.6, %163 ], [ @.str.7, %167 ]
  call void (ptr, ...) @error(ptr noundef nonnull %175) #18
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi i8 [ %164, %167 ], [ 1, %174 ]
  %178 = call fastcc ptr @gimple_vdef(ptr noundef %116) #19
  %179 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %178, i8 noundef zeroext 1) #19, !range !196
  %180 = or i8 %179, %177
  br label %181

181:                                              ; preds = %176, %156
  %182 = phi i8 [ %180, %176 ], [ 0, %156 ]
  %183 = call fastcc ptr @gimple_vuse(ptr noundef %116) #19
  %184 = icmp eq ptr %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %181
  %186 = call fastcc ptr @gimple_vuse_op(ptr noundef %116) #19
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #18
  br label %189

189:                                              ; preds = %188, %185
  %190 = phi i8 [ 1, %188 ], [ %182, %185 ]
  %191 = call fastcc ptr @gimple_vuse(ptr noundef %116) #19
  %192 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %191, i8 noundef zeroext 1) #19, !range !196
  %193 = or i8 %192, %190
  br label %194

194:                                              ; preds = %189, %181
  %195 = phi i8 [ %193, %189 ], [ %182, %181 ]
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #18
  %198 = load ptr, ptr @stderr, align 8, !tbaa !155
  call void @print_gimple_stmt(ptr noundef %198, ptr noundef %116, i32 noundef 0, i32 noundef 16448) #18
  br label %276

199:                                              ; preds = %194
  %200 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 3) #19
  %201 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %199, %209
  %204 = phi ptr [ %210, %209 ], [ %200, %199 ]
  %205 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %204, i8 noundef zeroext 0) #19, !range !196
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %203
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #18
  %208 = load ptr, ptr @stderr, align 8, !tbaa !155
  call void @print_gimple_stmt(ptr noundef %208, ptr noundef %116, i32 noundef 0, i32 noundef 16448) #18
  br label %276

209:                                              ; preds = %203
  %210 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #19
  %211 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %203, label %213, !llvm.loop !328

213:                                              ; preds = %209, %199
  %214 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 5) #19
  %215 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %213, %227
  %218 = phi ptr [ %228, %227 ], [ %214, %213 ]
  %219 = call fastcc ptr @get_use_from_ptr(ptr noundef %218) #19
  %220 = getelementptr inbounds %struct.tree_ssa_name, ptr %219, i64 0, i32 3
  %221 = load i32, ptr %220, align 8, !tbaa !217
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %14, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !155
  %225 = call fastcc zeroext i8 @verify_use(ptr noundef %74, ptr noundef %224, ptr noundef %218, ptr noundef %116, i8 noundef zeroext 0, ptr noundef %16) #19, !range !196
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %276

227:                                              ; preds = %217
  %228 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #19
  %229 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %217, label %231, !llvm.loop !329

231:                                              ; preds = %227, %213
  %232 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 10) #19
  %233 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %231, %249
  %236 = phi ptr [ %253, %249 ], [ %232, %231 ]
  %237 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !217
  %239 = icmp eq ptr %238, %116
  br i1 %239, label %249, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 2
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #18
  %242 = load ptr, ptr @stderr, align 8, !tbaa !155
  %243 = call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %242) #20
  %244 = load ptr, ptr @stderr, align 8, !tbaa !155
  call void @print_gimple_stmt(ptr noundef %244, ptr noundef %116, i32 noundef 4, i32 noundef 64) #18
  %245 = load ptr, ptr @stderr, align 8, !tbaa !155
  %246 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %245) #20
  %247 = load ptr, ptr @stderr, align 8, !tbaa !155
  %248 = load ptr, ptr %241, align 8, !tbaa !217
  call void @print_gimple_stmt(ptr noundef %247, ptr noundef %248, i32 noundef 4, i32 noundef 64) #18
  br label %276

249:                                              ; preds = %235
  %250 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 3
  %251 = load i32, ptr %250, align 8, !tbaa !217
  %252 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %251) #18
  %253 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #19
  %254 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %235, label %256, !llvm.loop !330

256:                                              ; preds = %249, %231, %153
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %257 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !196
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %115, label %259, !llvm.loop !331

259:                                              ; preds = %256, %110
  call void @bitmap_clear(ptr noundef %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %261 = load ptr, ptr %260, align 8, !tbaa !317
  %262 = load ptr, ptr @cfun, align 8, !tbaa !155
  %263 = getelementptr inbounds %struct.function, ptr %262, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !314
  %265 = getelementptr inbounds %struct.control_flow_graph, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !319
  %267 = icmp eq ptr %261, %266
  br i1 %267, label %268, label %73

268:                                              ; preds = %259, %61
  call void @free(ptr noundef %14) #19
  %269 = icmp eq i32 %15, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %268
  call void @free_dominance_info(i32 noundef 1) #18
  br label %272

271:                                              ; preds = %268
  call void @set_dom_info_availability(i32 noundef 1, i32 noundef %15) #18
  br label %272

272:                                              ; preds = %271, %270
  call void @bitmap_obstack_free(ptr noundef %16) #18
  %273 = load i8, ptr @timevar_enable, align 1, !tbaa !217
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  call void @timevar_pop_1(i32 noundef 107) #18
  br label %277

276:                                              ; preds = %99, %217, %148, %240, %207, %197, %120, %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.13) #18
  br label %277

277:                                              ; preds = %272, %275, %276
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !332 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !333
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
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_stmts() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !335 !PGOFuncName !336 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_def(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !179 !PGOFuncName !337 {
  %6 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef %2, i8 noundef zeroext %4) #19, !range !196
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !217
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !155
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !324
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !324
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %17, i32 noundef %19) #18
  br label %32

20:                                               ; preds = %8
  store ptr %0, ptr %12, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !217
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !155
  %26 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %25) #20
  %27 = load ptr, ptr @stderr, align 8, !tbaa !155
  %28 = load ptr, ptr %21, align 8, !tbaa !217
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %28, i32 noundef 4, i32 noundef 64) #18
  %29 = load ptr, ptr @stderr, align 8, !tbaa !155
  %30 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %29) #20
  %31 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_gimple_stmt(ptr noundef %31, ptr noundef %3, i32 noundef 4, i32 noundef 64) #18
  br label %32

32:                                               ; preds = %5, %24, %15
  %33 = load ptr, ptr @stderr, align 8, !tbaa !155
  %34 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 25, i64 1, ptr %33) #20
  %35 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %2, i32 noundef 0) #18
  %36 = load ptr, ptr @stderr, align 8, !tbaa !155
  %37 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 14, i64 1, ptr %36) #20
  %38 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_gimple_stmt(ptr noundef %38, ptr noundef %3, i32 noundef 4, i32 noundef 64) #18
  br label %39

39:                                               ; preds = %20, %32
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 !prof !179 !PGOFuncName !338 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !179 !PGOFuncName !339 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !196
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !155
  ret i8 %10
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !340 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !341
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !341
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_phi_args(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !179 !PGOFuncName !343 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %5 = zext i32 %4 to i64
  %6 = load ptr, ptr %1, align 8, !tbaa !344
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %8 = icmp eq i32 %7, %4
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %105, label %15

11:                                               ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26) #18
  br label %101

12:                                               ; preds = %95
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %105, label %15, !llvm.loop !345

15:                                               ; preds = %9, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %9 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %17) #19
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !344
  %21 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %20, i32 noundef %17) #19
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load ptr, ptr %21, align 8, !tbaa !323
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !324
  %27 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !193
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !324
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %26, i32 noundef %30) #18
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
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28) #18
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
  %49 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef nonnull %19, i8 noundef zeroext %48) #19, !range !196
  %50 = load ptr, ptr %21, align 8, !tbaa !323
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !217
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !155
  %56 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !346
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 2
  %60 = tail call fastcc zeroext i8 @verify_use(ptr noundef %50, ptr noundef %55, ptr noundef nonnull %18, ptr noundef %0, i8 noundef zeroext %59, ptr noundef null) #19, !range !196
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
  %71 = load ptr, ptr %70, align 8, !tbaa !217
  %72 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %71) #19, !range !196
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %68, !llvm.loop !347

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
  %82 = load ptr, ptr %81, align 8, !tbaa !193
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %95, label %88

84:                                               ; preds = %77
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29) #18
  %85 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !193
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %97, label %88

88:                                               ; preds = %80, %84
  %89 = phi ptr [ %86, %84 ], [ %82, %80 ]
  %90 = load ptr, ptr %21, align 8, !tbaa !323
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !324
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !324
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.30, i32 noundef %92, i32 noundef %94) #18
  br label %97

95:                                               ; preds = %80
  %96 = icmp eq i8 %65, 0
  br i1 %96, label %12, label %97

97:                                               ; preds = %95, %84, %88
  %98 = load ptr, ptr @stderr, align 8, !tbaa !155
  %99 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 13, i64 1, ptr %98) #20
  %100 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_generic_stmt(ptr noundef %100, ptr noundef nonnull %19, i32 noundef 64) #18
  br label %101

101:                                              ; preds = %97, %23, %11
  %102 = load ptr, ptr @stderr, align 8, !tbaa !155
  %103 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 13, i64 1, ptr %102) #20
  %104 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_gimple_stmt(ptr noundef %104, ptr noundef %0, i32 noundef 0, i32 noundef 16448) #18
  br label %105

105:                                              ; preds = %12, %9, %101
  %106 = phi i8 [ 1, %101 ], [ 0, %9 ], [ 0, %12 ]
  ret i8 %106
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !348 !PGOFuncName !349 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !205
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !350
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !351
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !352 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !196
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
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !353 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !354 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !355 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vdef_op(ptr noundef readonly %0) unnamed_addr #6 !prof !179 !PGOFuncName !356 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.def_optype_d, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !281
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %4
  br label %14

14:                                               ; preds = %8, %1, %13
  %15 = phi ptr [ null, %13 ], [ null, %1 ], [ %10, %8 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !357 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_ssa_name(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !179 !PGOFuncName !358 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !217
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
  %23 = load ptr, ptr %9, align 8, !tbaa !217
  %24 = load ptr, ptr @cfun, align 8, !tbaa !155
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
  %34 = load ptr, ptr %33, align 8, !tbaa !217
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %34) #19, !range !196
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27, %22, %21, %14, %6, %2
  %38 = phi ptr [ @.str.33, %2 ], [ @.str.34, %6 ], [ @.str.35, %14 ], [ @.str.36, %21 ], [ @.str.37, %22 ], [ @.str.38, %27 ], [ @.str.39, %32 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %38) #18
  br label %39

39:                                               ; preds = %37, %28, %32
  %40 = phi i8 [ 0, %32 ], [ 0, %28 ], [ 1, %37 ]
  ret i8 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 !prof !179 !PGOFuncName !359 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !360
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !179 !PGOFuncName !362 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !275
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #7 !prof !179 !PGOFuncName !363 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !365
  store ptr %8, ptr %2, align 8, !tbaa !364
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !280
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !281
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !283
  store ptr %17, ptr %10, align 8, !tbaa !280
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !273
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !179 !PGOFuncName !366 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !275
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !367 !PGOFuncName !368 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !262
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !179 !PGOFuncName !369 {
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %2) #19
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 1099511627776
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !155
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
  %22 = load ptr, ptr %21, align 8, !tbaa !217
  %23 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %22) #19, !range !196
  %24 = icmp eq i8 %23, 0
  %25 = and i64 %18, 4294967296
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %17
  %29 = icmp eq ptr %1, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40) #18
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
  %38 = load i32, ptr %37, align 8, !tbaa !324
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !324
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.41, i32 noundef %38, i32 noundef %40) #18
  br label %51

41:                                               ; preds = %31
  %42 = icmp eq ptr %5, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !217
  %46 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %45) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !324
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.42, i32 noundef %50) #18
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
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43) #18
  br label %59

59:                                               ; preds = %58, %54, %51
  %60 = phi i8 [ %52, %54 ], [ 1, %58 ], [ %52, %51 ]
  %61 = load ptr, ptr %2, align 8, !tbaa !370
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !262
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !217
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
  %78 = phi ptr [ @.str.44, %59 ], [ @.str.45, %72 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %78) #18
  br label %79

79:                                               ; preds = %77, %75
  %80 = load ptr, ptr @stderr, align 8, !tbaa !155
  %81 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 14, i64 1, ptr %80) #20
  %82 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %7, i32 noundef 64) #18
  %83 = load ptr, ptr @stderr, align 8, !tbaa !155
  %84 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 15, i64 1, ptr %83) #20
  %85 = load ptr, ptr @stderr, align 8, !tbaa !155
  tail call void @print_gimple_stmt(ptr noundef %85, ptr noundef %3, i32 noundef 0, i32 noundef 64) #18
  br label %86

86:                                               ; preds = %79, %75
  %87 = phi i8 [ 1, %79 ], [ 0, %75 ]
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !365
  store ptr %7, ptr %2, align 8, !tbaa !364
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !372
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !373
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !374
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !372
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !273
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !179 {
  %3 = load i32, ptr %0, align 8, !tbaa !375
  %4 = load i32, ptr %1, align 8, !tbaa !375
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !179 {
  %2 = load i32, ptr %0, align 8, !tbaa !375
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !377 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !217
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !217
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_hash(ptr nocapture noundef readonly %0) #5 !prof !378 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !217
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_tree_ssa(ptr noundef %0) local_unnamed_addr #0 !prof !188 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #18
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !287
  %4 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_decl_map_hash, ptr noundef nonnull @uid_decl_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  %5 = load ptr, ptr %3, align 8, !tbaa !287
  store ptr %4, ptr %5, align 8, !tbaa !379
  %6 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_ssaname_map_hash, ptr noundef nonnull @uid_ssaname_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  %7 = load ptr, ptr %3, align 8, !tbaa !287
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 8
  store ptr %6, ptr %8, align 8, !tbaa !380
  %9 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %9) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !287
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
define internal i32 @uid_ssaname_map_hash(ptr nocapture noundef readonly %0) #6 !prof !179 !PGOFuncName !381 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !217
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @uid_ssaname_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !382 !PGOFuncName !383 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !217
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !217
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
define dso_local void @delete_tree_ssa() local_unnamed_addr #0 !prof !188 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #19
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #19, !range !196
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %30, !prof !384

5:                                                ; preds = %0, %26
  %6 = phi ptr [ %27, %26 ], [ %2, %0 ]
  %7 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %6) #19, !range !196
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26, !prof !385

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @var_ann(ptr noundef %6) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !386

12:                                               ; preds = %9
  tail call void @ggc_free(ptr noundef nonnull %10) #18
  %13 = load i64, ptr %6, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %19 [
    i16 32, label %15
    i16 34, label %17
  ], !prof !387

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
  %23 = select i1 %21, ptr %22, ptr null, !prof !388
  br label %24

24:                                               ; preds = %17, %19, %15
  %25 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %23, %19 ]
  store ptr null, ptr %25, align 8, !tbaa !155
  br label %26

26:                                               ; preds = %9, %24, %5
  %27 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #19
  %28 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #19, !range !196
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %5, label %30, !prof !389, !llvm.loop !390

30:                                               ; preds = %26, %0
  %31 = load ptr, ptr @cfun, align 8, !tbaa !155
  %32 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %31) #19
  tail call void @htab_delete(ptr noundef %32) #18
  %33 = load ptr, ptr @cfun, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !287
  store ptr null, ptr %35, align 8, !tbaa !379
  tail call void @fini_ssanames() #18
  tail call void @fini_phinodes() #18
  %36 = tail call zeroext i8 @ssa_operands_active() #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !391

38:                                               ; preds = %30
  tail call void @fini_ssa_operands() #18
  br label %39

39:                                               ; preds = %38, %30
  tail call void @delete_alias_heapvars() #18
  %40 = load ptr, ptr @cfun, align 8, !tbaa !155
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !287
  %43 = getelementptr inbounds %struct.gimple_df, ptr %42, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !380
  tail call void @htab_delete(ptr noundef %44) #18
  %45 = load ptr, ptr @cfun, align 8, !tbaa !155
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !287
  %48 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 8
  store ptr null, ptr %48, align 8, !tbaa !380
  %49 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %49) #18
  %50 = load ptr, ptr @cfun, align 8, !tbaa !155
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !287
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 5
  tail call void @pt_solution_reset(ptr noundef nonnull %53) #18
  %54 = load ptr, ptr @cfun, align 8, !tbaa !155
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !287
  %57 = getelementptr inbounds %struct.gimple_df, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !392
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60, !prof !393

60:                                               ; preds = %39
  tail call void @pointer_map_destroy(ptr noundef nonnull %58) #18
  %61 = load ptr, ptr @cfun, align 8, !tbaa !155
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !287
  br label %64

64:                                               ; preds = %60, %39
  %65 = phi ptr [ %63, %60 ], [ %56, %39 ]
  %66 = phi ptr [ %61, %60 ], [ %54, %39 ]
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 3
  %68 = getelementptr inbounds %struct.gimple_df, ptr %65, i64 0, i32 6
  store ptr null, ptr %68, align 8, !tbaa !392
  %69 = getelementptr inbounds %struct.gimple_df, ptr %65, i64 0, i32 1
  store ptr null, ptr %69, align 8, !tbaa !394
  store ptr null, ptr %67, align 8, !tbaa !287
  tail call void @redirect_edge_var_map_destroy() #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !395 !PGOFuncName !396 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !155
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #19
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !397 !PGOFuncName !398 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #19, !range !196
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !399 !PGOFuncName !400 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !401

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
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !402 !PGOFuncName !403 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !404

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
  br i1 %10, label %12, label %15, !prof !405

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #11 !prof !399 !PGOFuncName !406 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !407 !PGOFuncName !408 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !409

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !379
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
define dso_local zeroext i8 @useless_type_conversion_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !410 {
  br label %3

3:                                                ; preds = %173, %2
  %4 = phi ptr [ %0, %2 ], [ %177, %173 ]
  %5 = phi ptr [ %1, %2 ], [ %175, %173 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %48 [
    i16 10, label %8
    i16 12, label %8
  ], !prof !411

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %4, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %48 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !412

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !217
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %14
  %19 = icmp ult i64 %18, 72057594037927936
  br i1 %19, label %20, label %366, !prof !413

20:                                               ; preds = %11
  %21 = trunc i64 %14 to i16
  switch i16 %21, label %36 [
    i16 19, label %366
    i16 20, label %22
    i16 21, label %22
  ], !prof !414

22:                                               ; preds = %20, %20
  %23 = and i64 %18, 65535
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36, !prof !415

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !217
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !416

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !217
  %32 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !217
  %34 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %31, ptr noundef %33) #19, !range !196
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
  br i1 %45, label %48, label %46, !prof !413

46:                                               ; preds = %36
  %47 = icmp eq i32 %40, 0
  br i1 %47, label %48, label %366

48:                                               ; preds = %8, %3, %36, %46
  %49 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !217
  %51 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !217
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %366, label %54, !prof !417

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !217
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !418

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !217
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %366, label %62, !prof !418

62:                                               ; preds = %58, %54
  %63 = load i64, ptr %50, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 14
  br i1 %65, label %66, label %68, !prof !418

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
  br i1 %77, label %78, label %80, !prof !418

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
  br i1 %93, label %94, label %366, !prof !419

94:                                               ; preds = %85
  %95 = add nsw i32 %90, -6
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %116, !prof !420

97:                                               ; preds = %94
  %98 = load i64, ptr %52, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  %101 = add nsw i32 %100, -6
  %102 = icmp ult i32 %101, 3
  br i1 %102, label %103, label %116, !prof !421

103:                                              ; preds = %97
  %104 = xor i64 %98, %88
  %105 = and i64 %104, 2097152
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %366, !prof !422

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
  ], !prof !423

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
  ], !prof !424

129:                                              ; preds = %126, %126
  %130 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !217
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = and i32 %133, 65534
  %135 = icmp eq i32 %134, 20
  %136 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !217
  br i1 %135, label %151, label %138, !prof !425

138:                                              ; preds = %129
  %139 = load i64, ptr %137, align 8
  %140 = trunc i64 %139 to i32
  %141 = and i32 %140, 65534
  %142 = icmp eq i32 %141, 20
  br i1 %142, label %151, label %143, !prof !425

143:                                              ; preds = %138
  %144 = lshr i32 %133, 19
  %145 = and i32 %144, 1
  %146 = lshr i32 %140, 19
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %151, label %149, !prof !426

149:                                              ; preds = %143
  %150 = icmp eq i32 %145, 0
  br i1 %150, label %151, label %366

151:                                              ; preds = %129, %138, %149, %143
  %152 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %153 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !217
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %160, !prof !427

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !217
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %366

160:                                              ; preds = %156, %151
  %161 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %50) #18
  %162 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %52) #18
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %366, !prof !426

164:                                              ; preds = %160
  %165 = load ptr, ptr %130, align 8, !tbaa !217
  %166 = load ptr, ptr %152, align 8, !tbaa !217
  %167 = tail call zeroext i8 @types_compatible_p(ptr noundef %165, ptr noundef %166) #19, !range !196
  br label %366

168:                                              ; preds = %126
  switch i16 %117, label %294 [
    i16 13, label %169
    i16 14, label %178
    i16 15, label %190
  ], !prof !428

169:                                              ; preds = %116, %168
  %170 = load i64, ptr %52, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 13
  br i1 %172, label %173, label %294

173:                                              ; preds = %231, %234, %287, %291, %182, %169
  %174 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !217
  %176 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !217
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
  br i1 %193, label %194, label %294, !prof !429

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
  %204 = load ptr, ptr %203, align 8, !tbaa !217
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !217
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %366

210:                                              ; preds = %206, %202
  %211 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !217
  %213 = icmp eq ptr %212, null
  br i1 %213, label %231, label %214

214:                                              ; preds = %210
  %215 = load i64, ptr %212, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 23
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !217
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
  %230 = load ptr, ptr %203, align 8, !tbaa !217
  br label %231

231:                                              ; preds = %229, %214, %210
  %232 = phi ptr [ %230, %229 ], [ %204, %214 ], [ %204, %210 ]
  %233 = icmp eq ptr %232, null
  br i1 %233, label %173, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !217
  %237 = icmp eq ptr %236, null
  %238 = icmp eq ptr %232, %236
  %239 = or i1 %237, %238
  br i1 %239, label %173, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 13
  %242 = load ptr, ptr %241, align 8, !tbaa !217
  %243 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 13
  %244 = load ptr, ptr %243, align 8, !tbaa !217
  %245 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 14
  %246 = load ptr, ptr %245, align 8, !tbaa !217
  %247 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 14
  %248 = load ptr, ptr %247, align 8, !tbaa !217
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
  br i1 %296, label %297, label %366, !prof !430

297:                                              ; preds = %294
  %298 = load i64, ptr %52, align 8
  %299 = xor i64 %298, %88
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %366

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !217
  %305 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !217
  %307 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %304, ptr noundef %306) #19, !range !196
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %366, label %309

309:                                              ; preds = %302
  %310 = load i64, ptr %50, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 21
  br i1 %312, label %313, label %320

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 14
  %315 = load ptr, ptr %314, align 8, !tbaa !217
  %316 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 14
  %317 = load ptr, ptr %316, align 8, !tbaa !217
  %318 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %315, ptr noundef %317) #19, !range !196
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %366, label %320

320:                                              ; preds = %313, %309
  %321 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !217
  %323 = icmp eq ptr %322, null
  br i1 %323, label %366, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !217
  %327 = icmp eq ptr %322, %326
  br i1 %327, label %366, label %328

328:                                              ; preds = %324
  %329 = icmp eq ptr %326, null
  br i1 %329, label %366, label %330

330:                                              ; preds = %328, %343
  %331 = phi ptr [ %347, %343 ], [ %326, %328 ]
  %332 = phi ptr [ %345, %343 ], [ %322, %328 ]
  %333 = getelementptr inbounds %struct.tree_list, ptr %332, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !217
  %335 = getelementptr inbounds %struct.tree_type, ptr %334, i64 0, i32 16
  %336 = load ptr, ptr %335, align 8, !tbaa !217
  %337 = getelementptr inbounds %struct.tree_list, ptr %331, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !217
  %339 = getelementptr inbounds %struct.tree_type, ptr %338, i64 0, i32 16
  %340 = load ptr, ptr %339, align 8, !tbaa !217
  %341 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %336, ptr noundef %340) #19, !range !196
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %366, label %343

343:                                              ; preds = %330
  %344 = getelementptr inbounds %struct.tree_common, ptr %332, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !217
  %346 = getelementptr inbounds %struct.tree_common, ptr %331, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !217
  %348 = icmp ne ptr %345, null
  %349 = icmp ne ptr %347, null
  %350 = select i1 %348, i1 %349, i1 false
  br i1 %350, label %330, label %351, !llvm.loop !431

351:                                              ; preds = %343
  %352 = select i1 %348, i1 true, i1 %349
  br i1 %352, label %366, label %353

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 4
  %355 = load ptr, ptr %354, align 8, !tbaa !217
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !217
  %360 = icmp eq ptr %359, null
  br i1 %360, label %366, label %361

361:                                              ; preds = %357, %353
  %362 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !432
  %363 = tail call i32 %362(ptr noundef nonnull %52, ptr noundef nonnull %50) #18
  %364 = icmp ne i32 %363, 0
  %365 = zext i1 %364 to i8
  br label %366

366:                                              ; preds = %289, %291, %282, %284, %218, %222, %226, %206, %194, %58, %48, %46, %29, %20, %11, %85, %330, %328, %122, %118, %297, %294, %107, %361, %302, %313, %320, %324, %351, %357, %160, %156, %149, %103, %164
  %367 = phi i8 [ %167, %164 ], [ 0, %103 ], [ 0, %149 ], [ 0, %156 ], [ 0, %160 ], [ %365, %361 ], [ 0, %302 ], [ 0, %313 ], [ 1, %320 ], [ 1, %324 ], [ 0, %351 ], [ 1, %357 ], [ %115, %107 ], [ 0, %294 ], [ 0, %297 ], [ 1, %118 ], [ 1, %122 ], [ 0, %328 ], [ 0, %330 ], [ 0, %289 ], [ 0, %291 ], [ 0, %282 ], [ 0, %284 ], [ 0, %218 ], [ 0, %222 ], [ 0, %226 ], [ 0, %206 ], [ 0, %194 ], [ 1, %58 ], [ 1, %48 ], [ 0, %46 ], [ 1, %29 ], [ 1, %20 ], [ 0, %11 ], [ 0, %85 ]
  ret i8 %367
}

; Function Attrs: optsize
declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @types_compatible_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !444 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4, !prof !445

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %0, ptr noundef %1) #19, !range !196
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !446

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %1, ptr noundef %0) #19, !range !196
  br label %9

9:                                                ; preds = %4, %7, %2
  %10 = phi i8 [ 1, %2 ], [ 0, %4 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_ssa_useless_type_conversion(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !447 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %12 [
    i16 116, label %4
    i16 113, label %4
    i16 118, label %4
    i16 117, label %4
  ], !prof !448

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %6, ptr noundef %10) #19, !range !196
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i8 [ %11, %4 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tree_ssa_strip_useless_type_conversions(ptr noundef readonly %0) local_unnamed_addr #0 !prof !449 {
  %2 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !450

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %7) #19, !range !196
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !451, !llvm.loop !452

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @walk_use_def_chains(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !179 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1591, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %11) #19, !range !237
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
define internal fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !179 !PGOFuncName !453 {
  %6 = tail call i32 @pointer_set_insert(ptr noundef %3, ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #19, !range !237
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
  br i1 %24, label %25, label %30, !llvm.loop !454

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
  br i1 %48, label %33, label %49, !llvm.loop !455

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
  br i1 %57, label %58, label %63, !llvm.loop !456

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ssa_undefined_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !457 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 34, label %15
    i16 32, label %6
  ], !prof !458

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15, !prof !459

11:                                               ; preds = %1, %6
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  %14 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %13) #19, !range !196
  br label %15

15:                                               ; preds = %6, %1, %11
  %16 = phi i8 [ %14, %11 ], [ 0, %1 ], [ 0, %6 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_warn_uninitialized() #14 !prof !460 !PGOFuncName !461 {
  %1 = load i32, ptr @warn_uninitialized, align 4, !tbaa !233
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_early_warn_uninitialized() #0 !prof !179 !PGOFuncName !462 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !233
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext %3) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_late_warn_uninitialized() #0 !prof !179 !PGOFuncName !463 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext 1) #19
  %2 = load ptr, ptr @cfun, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !314
  %5 = load ptr, ptr %4, align 8, !tbaa !315
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !317
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !319
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %28, label %20

11:                                               ; preds = %24, %20
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !317
  %14 = load ptr, ptr @cfun, align 8, !tbaa !155
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !314
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !319
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %28, label %20, !llvm.loop !464

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #18
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !196
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %11

24:                                               ; preds = %20, %24
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  call fastcc void @warn_uninitialized_phi(ptr noundef %25) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !196
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %24, label %11, !llvm.loop !465

28:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_update_addresses_taken(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !466 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !314
  %10 = load ptr, ptr %9, align 8, !tbaa !315
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !317
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !319
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %101, label %25, !prof !467

16:                                               ; preds = %98, %63
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !317
  %19 = load ptr, ptr @cfun, align 8, !tbaa !155
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !314
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !319
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %101, label %25, !prof !468, !llvm.loop !469

25:                                               ; preds = %1, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %1 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #19
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %63, !prof !470

29:                                               ; preds = %25, %60
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %31 = call fastcc i32 @gimple_code(ptr noundef %30) #19, !range !237
  %32 = call zeroext i8 @gimple_ior_addresses_taken(ptr noundef %5, ptr noundef %30) #18
  %33 = trunc i32 %31 to i8
  switch i8 %33, label %60 [
    i8 8, label %34
    i8 6, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = call ptr @gimple_get_lhs(ptr noundef %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37, !prof !471

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 152
  br i1 %40, label %41, label %45, !prof !472

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !217
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %37, %41
  %46 = call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %35) #19, !range !196
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %60, label %48, !prof !473

48:                                               ; preds = %45
  %49 = call ptr @get_base_address(ptr noundef nonnull %35) #18
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !233
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %60, !prof !474

55:                                               ; preds = %48, %41
  %56 = phi ptr [ %43, %41 ], [ %49, %48 ]
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !217
  %59 = call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %58) #18
  br label %60

60:                                               ; preds = %55, %48, %45, %34, %29
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %29, label %63, !prof !475, !llvm.loop !476

63:                                               ; preds = %60, %25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #18
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %16, !prof !477

66:                                               ; preds = %63, %98
  %67 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %68 = call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %98, label %70, !prof !478

70:                                               ; preds = %66, %93
  %71 = phi i64 [ %94, %93 ], [ 0, %66 ]
  %72 = trunc i64 %71 to i32
  %73 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %67, i32 noundef %72) #19
  %74 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %73) #19
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 121
  br i1 %77, label %78, label %93, !prof !479

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !217
  %81 = call ptr @get_base_address(ptr noundef %80) #18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !233
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.tree_decl_minimal, ptr %81, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !217
  %92 = call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %91) #18
  br label %93

93:                                               ; preds = %89, %83, %78, %70
  %94 = add nuw nsw i64 %71, 1
  %95 = call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #19
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %70, label %98, !prof !480, !llvm.loop !481

98:                                               ; preds = %93, %66
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %66, label %16, !prof !482, !llvm.loop !483

101:                                              ; preds = %16, %1
  %102 = load i32, ptr @optimize, align 4, !tbaa !233
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i8 %0, 0
  %105 = and i1 %104, %103
  br i1 %105, label %106, label %233, !prof !484

106:                                              ; preds = %101
  %107 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #19
  %108 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #19, !range !196
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %233, !prof !485

110:                                              ; preds = %106, %191
  %111 = phi ptr [ %193, %191 ], [ %107, %106 ]
  %112 = phi i8 [ %192, %191 ], [ 0, %106 ]
  %113 = call fastcc zeroext i8 @is_global_var(ptr noundef %111) #19, !range !196
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %191, !prof !486

115:                                              ; preds = %110
  %116 = load i64, ptr %111, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 36
  br i1 %118, label %191, label %119, !prof !487

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %111, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !217
  %122 = call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %121) #18
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %191, !prof !488

124:                                              ; preds = %119
  %125 = load i64, ptr %111, align 8
  %126 = and i64 %125, 262144
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %151, label %128, !prof !488

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !217
  %131 = call zeroext i8 @is_gimple_reg_type(ptr noundef %130) #18
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load i32, ptr %120, align 4, !tbaa !217
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
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = call i64 @fwrite(ptr nonnull @.str.16, i64 31, i64 1, ptr nonnull %144)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !155
  call void @print_generic_expr(ptr noundef %148, ptr noundef nonnull %111, i32 noundef 0) #18
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %150 = call i32 @fputc(i32 10, ptr %149)
  br label %151

151:                                              ; preds = %143, %146, %133, %124
  %152 = phi i8 [ %112, %133 ], [ 1, %146 ], [ 1, %143 ], [ %112, %124 ]
  %153 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 2
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 134217728
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %191, !prof !488

157:                                              ; preds = %151
  %158 = load i32, ptr %120, align 4, !tbaa !217
  %159 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %158) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %191, !prof !488

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !217
  %164 = load i64, ptr %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = and i32 %165, 65535
  %167 = add nsw i32 %166, -13
  %168 = icmp ult i32 %167, 2
  br i1 %168, label %169, label %191, !prof !489

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
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = call i64 @fwrite(ptr nonnull @.str.18, i64 30, i64 1, ptr nonnull %184)
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !155
  call void @print_generic_expr(ptr noundef %188, ptr noundef nonnull %111, i32 noundef 0) #18
  %189 = load ptr, ptr @dump_file, align 8, !tbaa !155
  %190 = call i32 @fputc(i32 10, ptr %189)
  br label %191

191:                                              ; preds = %161, %151, %157, %169, %176, %186, %181, %110, %115, %119
  %192 = phi i8 [ %112, %110 ], [ %112, %115 ], [ %112, %119 ], [ %152, %151 ], [ %152, %157 ], [ %152, %169 ], [ 1, %186 ], [ 1, %181 ], [ %152, %176 ], [ %152, %161 ]
  %193 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #19
  %194 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #19, !range !196
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %110, label %196, !prof !490, !llvm.loop !491

196:                                              ; preds = %191
  %197 = icmp eq i8 %192, 0
  br i1 %197, label %233, label %198, !prof !492

198:                                              ; preds = %196
  %199 = load ptr, ptr @cfun, align 8, !tbaa !155
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !314
  %202 = load ptr, ptr %201, align 8, !tbaa !315
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 6
  %204 = load ptr, ptr %203, align 8, !tbaa !317
  %205 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !319
  %207 = icmp eq ptr %204, %206
  br i1 %207, label %232, label %217

208:                                              ; preds = %229, %217
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !317
  %211 = load ptr, ptr @cfun, align 8, !tbaa !155
  %212 = getelementptr inbounds %struct.function, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !314
  %214 = getelementptr inbounds %struct.control_flow_graph, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !319
  %216 = icmp eq ptr %210, %215
  br i1 %216, label %232, label %217, !llvm.loop !493

217:                                              ; preds = %198, %208
  %218 = phi ptr [ %210, %208 ], [ %204, %198 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %218) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !327
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %219 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %208

221:                                              ; preds = %217, %229
  %222 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %223 = call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %222) #19, !range !196
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %222) #19, !range !196
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225, %221
  call fastcc void @update_stmt(ptr noundef %222) #19
  br label %229

229:                                              ; preds = %228, %225
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %230 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !196
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %221, label %208, !llvm.loop !494

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !495 !PGOFuncName !496 {
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
  ], !prof !497

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !498 !PGOFuncName !499 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !217
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !500 !PGOFuncName !501 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !502 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !196
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

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_var_map_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !154 !PGOFuncName !503 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = tail call fastcc i32 @VEC_edge_var_map_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !199

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #18
  store ptr %6, ptr %0, align 8, !tbaa !155
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_var_map_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #8 !prof !154 !PGOFuncName !504 {
  %3 = load i32, ptr %0, align 8, !tbaa !181
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !181
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !199

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !505
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !154 !PGOFuncName !506 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !199

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !507
  %6 = load i32, ptr %0, align 8, !tbaa !181
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !508 !PGOFuncName !509 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !217
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !510

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !179 !PGOFuncName !511 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !196
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !512 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !179 !PGOFuncName !513 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !303
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !514 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 !prof !179 !PGOFuncName !515 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !233
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !179 !PGOFuncName !516 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !217
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #19, !range !237
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
  br i1 %27, label %16, label %53, !llvm.loop !517

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
  br i1 %44, label %33, label %53, !llvm.loop !518

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
  %56 = load ptr, ptr %55, align 8, !tbaa !268
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
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !179 !PGOFuncName !519 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !273
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 918, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !273
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !374
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !373
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !275
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #10 !prof !179 !PGOFuncName !520 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !243
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #10 !prof !179 !PGOFuncName !521 {
  %2 = load ptr, ptr %0, align 8, !tbaa !370
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !243
  store ptr %2, ptr %6, align 8, !tbaa !370
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !179 !PGOFuncName !522 {
  store ptr %1, ptr %0, align 8, !tbaa !370
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !243
  store ptr %0, ptr %4, align 8, !tbaa !370
  store ptr %0, ptr %3, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #15 !prof !179 !PGOFuncName !523 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !273
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !179 !PGOFuncName !524 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !370
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !525 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.20, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr null, ptr %10, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !526 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !217
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 !prof !179 !PGOFuncName !527 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !179 !PGOFuncName !528 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 747, ptr noundef nonnull @.str.1) #18
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !280
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !280
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !283
  store ptr %25, ptr %18, align 8, !tbaa !280
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !364
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !364
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
  %41 = load ptr, ptr %31, align 8, !tbaa !365
  store ptr %41, ptr %32, align 8, !tbaa !364
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !273
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !529 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !530 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !179 !PGOFuncName !531 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !179 !PGOFuncName !532 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !533 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !534
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !179 !PGOFuncName !536 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !155
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !179 !PGOFuncName !537 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  ret ptr %5
}

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !348 !PGOFuncName !538 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !539
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !540

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !541

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !542
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !348 !PGOFuncName !544 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !541

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !545
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !547 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !179 !PGOFuncName !548 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 51, ptr noundef nonnull @.str.1) #18
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !287
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !549
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @verify_imm_links(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !395 !PGOFuncName !550 {
  store ptr %1, ptr %0, align 8, !tbaa !205
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !551
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !350
  %6 = tail call i64 @htab_size(ptr noundef %1) #18
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !351
  %9 = load ptr, ptr %5, align 8, !tbaa !350
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !155
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !350
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !553, !llvm.loop !554

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !555

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !155
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !397 !PGOFuncName !556 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !351
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #11 !prof !399 !PGOFuncName !557 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !351
  %5 = load ptr, ptr %2, align 8, !tbaa !350
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !350
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !558

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !155
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninitialized_vars(i8 noundef zeroext %0) unnamed_addr #0 !prof !179 !PGOFuncName !559 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.walk_data, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.walk_data, ptr %3, i64 0, i32 2
  store i8 %0, ptr %5, align 1, !tbaa !560
  tail call void @calculate_dominance_info(i32 noundef 2) #18
  %6 = load ptr, ptr @cfun, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !314
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !317
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !319
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.walk_data, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  br label %27

18:                                               ; preds = %42, %27
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !317
  %21 = load ptr, ptr @cfun, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !314
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !319
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %45, label %27, !llvm.loop !562

27:                                               ; preds = %15, %18
  %28 = phi ptr [ %8, %15 ], [ %23, %18 ]
  %29 = phi ptr [ %11, %15 ], [ %20, %18 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !315
  %31 = call fastcc ptr @single_succ(ptr noundef %30) #19
  %32 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %31, ptr noundef %29) #18
  store i8 %32, ptr %16, align 8, !tbaa !563
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %29) #19
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !196
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %18

35:                                               ; preds = %27, %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %36 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %36, ptr %3, align 8, !tbaa !564
  %37 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %36) #19, !range !196
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %3, ptr %17, align 8, !tbaa !565
  %40 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %41 = call ptr @walk_gimple_op(ptr noundef %40, ptr noundef nonnull @warn_uninitialized_var, ptr noundef nonnull %4) #18
  br label %42

42:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !196
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %35, label %18, !llvm.loop !566

45:                                               ; preds = %18, %1
  call void @free_dominance_info(i32 noundef 2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !179 !PGOFuncName !567 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @warn_uninitialized_var(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !179 !PGOFuncName !568 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !565
  %6 = load ptr, ptr %0, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %8 = load i8, ptr %7, align 1, !tbaa !252
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
  %18 = load ptr, ptr %17, align 8, !tbaa !217
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
  %24 = load ptr, ptr %5, align 8, !tbaa !564
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %24) #19, !range !196
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_vuse_op(ptr noundef nonnull %24) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %30) #19
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !217
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
  %44 = load i8, ptr %43, align 8, !tbaa !563
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.walk_data, ptr %5, i64 0, i32 2
  %48 = load i8, ptr %47, align 1, !tbaa !560
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %46, %41
  %51 = phi ptr [ @.str.48, %41 ], [ @.str.49, %46 ]
  %52 = load ptr, ptr %5, align 8, !tbaa !564
  tail call fastcc void @warn_uninit(ptr noundef nonnull %42, ptr noundef nonnull %51, ptr noundef %52) #19
  br label %65

53:                                               ; preds = %19, %19
  %54 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !217
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %65, label %66

59:                                               ; preds = %19
  %60 = and i64 %21, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !233
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %46, %50, %19
  store i32 0, ptr %1, align 4, !tbaa !233
  br label %66

66:                                               ; preds = %65, %32, %29, %26, %23, %59, %10, %53, %37
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !179 !PGOFuncName !569 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !196
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !570
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !179 !PGOFuncName !571 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !570
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !572 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !237
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninit(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !179 !PGOFuncName !573 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef %0) #19, !range !196
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %3
  %12 = load i64, ptr %8, align 8
  %13 = and i64 %12, 8388608
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %8) #19, !range !196
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = icmp eq ptr %2, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef nonnull %2) #19, !range !196
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %2) #19
  br label %28

25:                                               ; preds = %20, %18
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !217
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %29) #18
  %30 = load ptr, ptr %4, align 8, !tbaa.struct !574
  %31 = getelementptr inbounds i8, ptr %4, i64 8
  %32 = load i32, ptr %31, align 8, !tbaa.struct !575
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %33 = load ptr, ptr @cfun, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !576
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !217
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %37) #18
  %38 = load ptr, ptr %5, align 8, !tbaa.struct !574
  %39 = getelementptr inbounds i8, ptr %5, i64 8
  %40 = load i32, ptr %39, align 8, !tbaa.struct !575
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
  %50 = load ptr, ptr @cfun, align 8, !tbaa !155
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !577
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %52) #18
  %53 = getelementptr inbounds %struct.expanded_location, ptr %6, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !578
  %55 = icmp sgt i32 %32, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %43
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !217
  call void (i32, ptr, ...) @inform(i32 noundef %58, ptr noundef nonnull @.str.50, ptr noundef nonnull %8) #18
  br label %59

59:                                               ; preds = %28, %56, %49, %15, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !580 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !179 !PGOFuncName !581 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !217
  ret i32 %3
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninitialized_phi(ptr noundef %0) unnamed_addr #0 !prof !179 !PGOFuncName !582 {
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
  tail call fastcc void @warn_uninit(ptr noundef nonnull %11, ptr noundef nonnull @.str.49, ptr noundef null) #19
  br label %16

16:                                               ; preds = %15, %9
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %3
  br i1 %18, label %19, label %9, !llvm.loop !583

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!153}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!35 = !{ptr @redirect_edge_var_map_add, ptr @pointer_map_create, i64 39}
!36 = !{ptr @redirect_edge_var_map_add, ptr @pointer_map_insert, i64 229591}
!37 = !{ptr @redirect_edge_var_map_add, ptr @VEC_edge_var_map_heap_alloc, i64 220201}
!38 = !{ptr @redirect_edge_var_map_add, ptr @VEC_edge_var_map_heap_safe_push, i64 229591}
!39 = !{ptr @VEC_edge_var_map_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 220202}
!40 = !{ptr @VEC_edge_var_map_heap_safe_push, ptr @VEC_edge_var_map_heap_reserve, i64 229591}
!41 = !{ptr @VEC_edge_var_map_heap_safe_push, ptr @VEC_edge_var_map_base_quick_push, i64 229591}
!42 = !{ptr @redirect_edge_var_map_clear, ptr @pointer_map_contains, i64 1260893}
!43 = !{ptr @redirect_edge_var_map_clear, ptr @VEC_edge_var_map_heap_free, i64 537376}
!44 = !{ptr @VEC_edge_var_map_heap_free, ptr @free, i64 220202}
!45 = !{ptr @redirect_edge_var_map_dup, ptr @pointer_map_insert, i64 653}
!46 = !{ptr @redirect_edge_var_map_dup, ptr @pointer_map_contains, i64 653}
!47 = !{ptr @redirect_edge_var_map_dup, ptr @VEC_edge_var_map_heap_copy, i64 1}
!48 = !{ptr @redirect_edge_var_map_vector, ptr @pointer_map_contains, i64 242345}
!49 = !{ptr @redirect_edge_var_map_destroy, ptr @pointer_map_traverse, i64 37}
!50 = !{ptr @redirect_edge_var_map_destroy, ptr @pointer_map_destroy, i64 37}
!51 = !{ptr @free_var_map_entry, ptr @VEC_edge_var_map_heap_free, i64 183830}
!52 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_var_map_clear, i64 559633}
!53 = !{ptr @ssa_redirect_edge, ptr @gsi_start_phis, i64 559633}
!54 = !{ptr @ssa_redirect_edge, ptr @gsi_end_p, i64 789225}
!55 = !{ptr @ssa_redirect_edge, ptr @gsi_stmt, i64 229592}
!56 = !{ptr @ssa_redirect_edge, ptr @gimple_phi_arg_def, i64 229592}
!57 = !{ptr @ssa_redirect_edge, ptr @gimple_phi_arg_location, i64 229592}
!58 = !{ptr @ssa_redirect_edge, ptr @gimple_phi_result, i64 229591}
!59 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_var_map_add, i64 229591}
!60 = !{ptr @ssa_redirect_edge, ptr @gsi_next, i64 229592}
!61 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_succ_nodup, i64 559633}
!62 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 229591}
!63 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 229591}
!64 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 229591}
!65 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_vector, i64 52304}
!66 = !{ptr @flush_pending_stmts, ptr @gsi_start_phis, i64 48268}
!67 = !{ptr @flush_pending_stmts, ptr @gsi_end_p, i64 73550}
!68 = !{ptr @flush_pending_stmts, ptr @VEC_edge_var_map_base_iterate, i64 49416}
!69 = !{ptr @flush_pending_stmts, ptr @gsi_stmt, i64 25282}
!70 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_def, i64 25282}
!71 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_location, i64 25282}
!72 = !{ptr @flush_pending_stmts, ptr @add_phi_arg, i64 25282}
!73 = !{ptr @flush_pending_stmts, ptr @gsi_next, i64 25282}
!74 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_clear, i64 48268}
!75 = !{ptr @target_for_debug_bind, ptr @decl_value_expr_lookup, i64 1}
!76 = !{ptr @insert_debug_temps_for_defs, ptr @gsi_stmt, i64 1}
!77 = !{ptr @insert_debug_temps_for_defs, ptr @gimple_code, i64 1}
!78 = !{ptr @insert_debug_temps_for_defs, ptr @op_iter_init_phidef, i64 1}
!79 = !{ptr @insert_debug_temps_for_defs, ptr @op_iter_init_def, i64 1}
!80 = !{ptr @insert_debug_temps_for_defs, ptr @op_iter_done, i64 13}
!81 = !{ptr @insert_debug_temps_for_defs, ptr @get_def_from_ptr, i64 12}
!82 = !{ptr @insert_debug_temps_for_defs, ptr @insert_debug_temp_for_var_def, i64 6}
!83 = !{ptr @insert_debug_temps_for_defs, ptr @op_iter_next_def, i64 12}
!84 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 58841}
!85 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 967332}
!86 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 967332}
!87 = !{ptr @init_tree_ssa, ptr @ggc_alloc_cleared_stat, i64 41}
!88 = !{ptr @init_tree_ssa, ptr @htab_create_alloc, i64 82}
!89 = !{ptr @init_tree_ssa, ptr @pt_solution_reset, i64 82}
!90 = !{ptr @init_tree_ssa, ptr @init_ssanames, i64 41}
!91 = !{ptr @init_tree_ssa, ptr @init_phinodes, i64 41}
!92 = !{ptr @delete_tree_ssa, ptr @first_referenced_var, i64 41}
!93 = !{ptr @delete_tree_ssa, ptr @end_referenced_vars_p, i64 101451}
!94 = !{ptr @delete_tree_ssa, ptr @is_global_var, i64 101410}
!95 = !{ptr @delete_tree_ssa, ptr @var_ann, i64 101207}
!96 = !{ptr @delete_tree_ssa, ptr @ggc_free, i64 101207}
!97 = !{ptr @delete_tree_ssa, ptr @next_referenced_var, i64 101410}
!98 = !{ptr @delete_tree_ssa, ptr @gimple_referenced_vars, i64 41}
!99 = !{ptr @delete_tree_ssa, ptr @htab_delete, i64 82}
!100 = !{ptr @delete_tree_ssa, ptr @fini_ssanames, i64 41}
!101 = !{ptr @delete_tree_ssa, ptr @fini_phinodes, i64 41}
!102 = !{ptr @delete_tree_ssa, ptr @ssa_operands_active, i64 41}
!103 = !{ptr @delete_tree_ssa, ptr @fini_ssa_operands, i64 40}
!104 = !{ptr @delete_tree_ssa, ptr @delete_alias_heapvars, i64 41}
!105 = !{ptr @delete_tree_ssa, ptr @pt_solution_reset, i64 82}
!106 = !{ptr @delete_tree_ssa, ptr @pointer_map_destroy, i64 1}
!107 = !{ptr @delete_tree_ssa, ptr @redirect_edge_var_map_destroy, i64 41}
!108 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 233}
!109 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 233}
!110 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 645899}
!111 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 645666}
!112 = !{ptr @useless_type_conversion_p, ptr @useless_type_conversion_p, i64 2}
!113 = !{ptr @useless_type_conversion_p, ptr @vector_type_mode, i64 2}
!114 = !{ptr @useless_type_conversion_p, ptr @get_deref_alias_set, i64 1018}
!115 = !{ptr @useless_type_conversion_p, ptr @types_compatible_p, i64 507}
!116 = !{ptr @types_compatible_p, ptr @useless_type_conversion_p, i64 809}
!117 = !{ptr @tree_ssa_useless_type_conversion, ptr @useless_type_conversion_p, i64 124224}
!118 = !{ptr @tree_ssa_strip_useless_type_conversions, ptr @tree_ssa_useless_type_conversion, i64 45537957}
!119 = !{ptr @ssa_undefined_value_p, ptr @gimple_nop_p, i64 58839}
!120 = !{ptr @execute_update_addresses_taken, ptr @bitmap_obstack_alloc_stat, i64 384}
!121 = !{ptr @execute_update_addresses_taken, ptr @gsi_start_bb, i64 962341}
!122 = !{ptr @execute_update_addresses_taken, ptr @gsi_end_p, i64 3920806}
!123 = !{ptr @execute_update_addresses_taken, ptr @gsi_stmt, i64 1996144}
!124 = !{ptr @execute_update_addresses_taken, ptr @gimple_code, i64 1780980}
!125 = !{ptr @execute_update_addresses_taken, ptr @gimple_ior_addresses_taken, i64 1780980}
!126 = !{ptr @execute_update_addresses_taken, ptr @gimple_get_lhs, i64 1187320}
!127 = !{ptr @execute_update_addresses_taken, ptr @handled_component_p, i64 1174699}
!128 = !{ptr @execute_update_addresses_taken, ptr @get_base_address, i64 182}
!129 = !{ptr @execute_update_addresses_taken, ptr @bitmap_set_bit, i64 2}
!130 = !{ptr @execute_update_addresses_taken, ptr @gsi_next, i64 1996144}
!131 = !{ptr @execute_update_addresses_taken, ptr @gsi_start_phis, i64 962321}
!132 = !{ptr @execute_update_addresses_taken, ptr @gimple_phi_num_args, i64 1079361}
!133 = !{ptr @execute_update_addresses_taken, ptr @gimple_phi_arg_imm_use_ptr, i64 864435}
!134 = !{ptr @execute_update_addresses_taken, ptr @get_use_from_ptr, i64 864435}
!135 = !{ptr @execute_update_addresses_taken, ptr @first_referenced_var, i64 190}
!136 = !{ptr @execute_update_addresses_taken, ptr @end_referenced_vars_p, i64 533626}
!137 = !{ptr @execute_update_addresses_taken, ptr @is_global_var, i64 533436}
!138 = !{ptr @execute_update_addresses_taken, ptr @bitmap_bit_p, i64 1064875}
!139 = !{ptr @execute_update_addresses_taken, ptr @is_gimple_reg_type, i64 1}
!140 = !{ptr @execute_update_addresses_taken, ptr @is_gimple_reg, i64 1}
!141 = !{ptr @execute_update_addresses_taken, ptr @mark_sym_for_renaming, i64 1}
!142 = !{ptr @execute_update_addresses_taken, ptr @next_referenced_var, i64 533436}
!143 = !{ptr @execute_update_addresses_taken, ptr @gimple_references_memory_p, i64 238}
!144 = !{ptr @execute_update_addresses_taken, ptr @is_gimple_debug, i64 89}
!145 = !{ptr @execute_update_addresses_taken, ptr @update_stmt, i64 204}
!146 = !{ptr @execute_update_addresses_taken, ptr @update_ssa, i64 1}
!147 = !{ptr @execute_update_addresses_taken, ptr @bitmap_obstack_free, i64 384}
!148 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 868937}
!149 = !{ptr @VEC_edge_var_map_heap_reserve, ptr @VEC_edge_var_map_base_space, i64 229591}
!150 = !{ptr @VEC_edge_var_map_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!151 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!152 = !{ptr @first_htab_element, ptr @htab_size, i64 233}
!153 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!154 = !{!"function_entry_count", i64 229591}
!155 = !{!156, !156, i64 0}
!156 = !{!"any pointer", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C/C++ TBAA"}
!159 = !{!"branch_weights", i32 39, i32 229554}
!160 = !{!"branch_weights", i32 220203, i32 9390}
!161 = !{!162, !156, i64 8}
!162 = !{!"_edge_var_map", !156, i64 0, !156, i64 8, !163, i64 16}
!163 = !{!"int", !157, i64 0}
!164 = !{!162, !156, i64 0}
!165 = !{!162, !163, i64 16}
!166 = !{!"branch_weights", i32 9390, i32 220203}
!167 = !{!"function_entry_count", i64 220202}
!168 = !{!"tree-ssa.c:VEC_edge_var_map_heap_alloc"}
!169 = !{!"tree-ssa.c:VEC_edge_var_map_heap_safe_push"}
!170 = !{!"function_entry_count", i64 1272949}
!171 = !{!"branch_weights", i32 12056, i32 1260895}
!172 = !{!"branch_weights", i32 723519, i32 537377}
!173 = !{!"function_entry_count", i64 721206}
!174 = !{!"tree-ssa.c:VEC_edge_var_map_heap_free"}
!175 = !{!"branch_weights", i32 501005, i32 220203}
!176 = !{!"function_entry_count", i64 668}
!177 = !{!"branch_weights", i32 15, i32 655}
!178 = !{!"branch_weights", i32 655, i32 1}
!179 = !{!"function_entry_count", i64 0}
!180 = !{!"tree-ssa.c:VEC_edge_var_map_heap_copy"}
!181 = !{!182, !163, i64 0}
!182 = !{!"VEC_edge_var_map_base", !163, i64 0, !163, i64 4, !157, i64 8}
!183 = !{!184, !163, i64 0}
!184 = !{!"VEC_edge_var_map_heap", !182, i64 0}
!185 = !{!"function_entry_count", i64 248268}
!186 = !{!"branch_weights", i32 5923, i32 242347}
!187 = !{!"branch_weights", i32 21776, i32 220572}
!188 = !{!"function_entry_count", i64 41}
!189 = !{!"branch_weights", i32 4, i32 39}
!190 = !{!"function_entry_count", i64 183830}
!191 = !{!"tree-ssa.c:free_var_map_entry"}
!192 = !{!"function_entry_count", i64 559633}
!193 = !{!194, !156, i64 8}
!194 = !{!"edge_def", !156, i64 0, !156, i64 8, !157, i64 16, !156, i64 24, !156, i64 32, !163, i64 40, !163, i64 44, !163, i64 48, !163, i64 52, !195, i64 56}
!195 = !{!"long", !157, i64 0}
!196 = !{i8 0, i8 2}
!197 = !{!"branch_weights", i32 229592, i32 330042}
!198 = !{!194, !163, i64 44}
!199 = !{!"branch_weights", i32 1, i32 229592}
!200 = !{!"branch_weights", i32 0, i32 229592}
!201 = distinct !{!201, !202}
!202 = !{!"llvm.loop.mustprogress"}
!203 = !{!"function_entry_count", i64 4829022}
!204 = !{!"tree-ssa.c:gsi_end_p"}
!205 = !{!206, !156, i64 0}
!206 = !{!"", !156, i64 0, !156, i64 8, !156, i64 16}
!207 = !{!"function_entry_count", i64 2286456}
!208 = !{!"tree-ssa.c:gsi_stmt"}
!209 = !{!210, !156, i64 0}
!210 = !{!"gimple_seq_node_d", !156, i64 0, !156, i64 8, !156, i64 16}
!211 = !{!"tree-ssa.c:gimple_phi_arg_def"}
!212 = !{!"tree-ssa.c:gimple_phi_arg_location"}
!213 = !{!214, !163, i64 40}
!214 = !{!"phi_arg_d", !215, i64 0, !156, i64 32, !163, i64 40}
!215 = !{!"ssa_use_operand_d", !156, i64 0, !156, i64 8, !157, i64 16, !156, i64 24}
!216 = !{!"tree-ssa.c:gimple_phi_result"}
!217 = !{!157, !157, i64 0}
!218 = !{!"tree-ssa.c:gsi_next"}
!219 = !{!210, !156, i64 16}
!220 = !{!"function_entry_count", i64 52304}
!221 = !{!"branch_weights", i32 4036, i32 48270}
!222 = !{!"branch_weights", i32 48269, i32 1}
!223 = !{i32 0, i32 2}
!224 = !{!"branch_weights", i32 48270, i32 50567}
!225 = !{!"branch_weights", i32 2298, i32 48269}
!226 = distinct !{!226, !202}
!227 = !{!"function_entry_count", i64 50566}
!228 = !{!"tree-ssa.c:VEC_edge_var_map_base_iterate"}
!229 = !{!"branch_weights", i32 50567, i32 1}
!230 = !{!"tree-ssa.c:redirect_edge_var_map_def"}
!231 = !{!"tree-ssa.c:redirect_edge_var_map_location"}
!232 = !{!"function_entry_count", i64 365499}
!233 = !{!163, !163, i64 0}
!234 = !{!"branch_weights", i32 365499, i32 1}
!235 = !{!"branch_weights", i32 1, i32 0}
!236 = distinct !{!236, !202}
!237 = !{i32 0, i32 256}
!238 = distinct !{!238, !202}
!239 = distinct !{!239, !202}
!240 = !{!"tree-ssa.c:first_readonly_imm_use"}
!241 = !{!242, !156, i64 8}
!242 = !{!"immediate_use_iterator_d", !156, i64 0, !156, i64 8, !215, i64 16, !156, i64 48}
!243 = !{!215, !156, i64 8}
!244 = !{!242, !156, i64 0}
!245 = !{!"tree-ssa.c:end_readonly_imm_use_p"}
!246 = !{!"tree-ssa.c:gimple_debug_bind_p"}
!247 = !{!"tree-ssa.c:gimple_debug_bind_get_value"}
!248 = !{!"tree-ssa.c:next_readonly_imm_use"}
!249 = !{!"function_entry_count", i64 1849096}
!250 = !{!"tree-ssa.c:gimple_code"}
!251 = !{!"tree-ssa.c:find_released_ssa_name"}
!252 = !{!253, !157, i64 41}
!253 = !{!"walk_stmt_info", !206, i64 0, !156, i64 24, !156, i64 32, !157, i64 40, !157, i64 41, !157, i64 42, !157, i64 43, !156, i64 48}
!254 = !{!"tree-ssa.c:is_gimple_assign"}
!255 = !{!"tree-ssa.c:gimple_bb"}
!256 = !{!"tree-ssa.c:first_imm_use_stmt"}
!257 = !{!"tree-ssa.c:end_imm_use_stmt_p"}
!258 = !{!"tree-ssa.c:first_imm_use_on_stmt"}
!259 = !{!242, !156, i64 48}
!260 = !{!"tree-ssa.c:end_imm_use_on_stmt_p"}
!261 = !{!"tree-ssa.c:set_ssa_use_from_ptr"}
!262 = !{!215, !156, i64 24}
!263 = !{!"tree-ssa.c:next_imm_use_on_stmt"}
!264 = !{!"tree-ssa.c:gimple_debug_bind_reset_value"}
!265 = !{!"tree-ssa.c:update_stmt"}
!266 = !{!"tree-ssa.c:next_imm_use_stmt"}
!267 = !{!242, !156, i64 24}
!268 = !{!242, !156, i64 16}
!269 = !{!"function_entry_count", i64 578569}
!270 = !{!"branch_weights", i32 578570, i32 1}
!271 = distinct !{!271, !202}
!272 = !{!"tree-ssa.c:op_iter_init_phidef"}
!273 = !{!274, !157, i64 0}
!274 = !{!"ssa_operand_iterator_d", !157, i64 0, !163, i64 4, !156, i64 8, !156, i64 16, !163, i64 24, !163, i64 28, !156, i64 32}
!275 = !{!274, !163, i64 4}
!276 = !{!"tree-ssa.c:op_iter_init_def"}
!277 = !{!"tree-ssa.c:op_iter_done"}
!278 = !{!"tree-ssa.c:get_def_from_ptr"}
!279 = !{!"tree-ssa.c:op_iter_next_def"}
!280 = !{!274, !156, i64 8}
!281 = !{!282, !156, i64 8}
!282 = !{!"def_optype_d", !156, i64 0, !156, i64 8}
!283 = !{!282, !156, i64 0}
!284 = !{!285, !156, i64 0}
!285 = !{!"bitmap_head_def", !156, i64 0, !156, i64 8, !163, i64 16, !156, i64 24}
!286 = distinct !{!286, !202}
!287 = !{!288, !156, i64 24}
!288 = !{!"function", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !163, i64 104, !163, i64 108, !163, i64 112, !163, i64 116, !163, i64 120, !163, i64 124, !156, i64 128, !163, i64 136, !163, i64 137, !163, i64 138, !163, i64 138, !163, i64 138, !163, i64 138, !163, i64 138, !163, i64 138, !163, i64 138, !163, i64 139, !163, i64 139, !163, i64 139, !163, i64 139, !163, i64 139, !163, i64 139, !163, i64 139}
!289 = !{!290, !156, i64 16}
!290 = !{!"gimple_df", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !291, i64 32, !291, i64 48, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !163, i64 96, !292, i64 104}
!291 = !{!"pt_solution", !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !156, i64 8}
!292 = !{!"ssa_operands", !156, i64 0, !163, i64 8, !163, i64 12, !157, i64 16, !156, i64 24, !156, i64 32}
!293 = distinct !{!293, !202}
!294 = distinct !{!294, !202}
!295 = distinct !{!295, !202}
!296 = !{!"tree-ssa.c:bmp_iter_set_init"}
!297 = !{!298, !156, i64 0}
!298 = !{!"", !156, i64 0, !156, i64 8, !163, i64 16, !195, i64 24}
!299 = !{!298, !156, i64 8}
!300 = !{!301, !163, i64 16}
!301 = !{!"bitmap_element_def", !156, i64 0, !156, i64 8, !163, i64 16, !157, i64 24}
!302 = !{!298, !163, i64 16}
!303 = !{!195, !195, i64 0}
!304 = !{!298, !195, i64 24}
!305 = !{!"tree-ssa.c:bmp_iter_set"}
!306 = distinct !{!306, !202}
!307 = distinct !{!307, !202}
!308 = !{!301, !156, i64 0}
!309 = !{!"tree-ssa.c:VEC_tree_base_index"}
!310 = !{!"tree-ssa.c:is_gimple_debug"}
!311 = !{!"tree-ssa.c:end_imm_use_stmt_traverse"}
!312 = !{!"tree-ssa.c:bmp_iter_next"}
!313 = distinct !{!313, !202}
!314 = !{!288, !156, i64 8}
!315 = !{!316, !156, i64 0}
!316 = !{!"control_flow_graph", !156, i64 0, !156, i64 8, !156, i64 16, !163, i64 24, !163, i64 28, !163, i64 32, !156, i64 40, !163, i64 48, !157, i64 52, !157, i64 60, !163, i64 68, !163, i64 72}
!317 = !{!318, !156, i64 56}
!318 = !{!"basic_block_def", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !157, i64 32, !156, i64 48, !156, i64 56, !157, i64 64, !195, i64 72, !163, i64 80, !163, i64 84, !163, i64 88, !163, i64 92, !163, i64 96}
!319 = !{!316, !156, i64 8}
!320 = !{i64 0, i64 4, !233, i64 8, i64 8, !155}
!321 = !{i64 0, i64 8, !155}
!322 = !{!194, !156, i64 24}
!323 = !{!194, !156, i64 0}
!324 = !{!318, !163, i64 80}
!325 = distinct !{!325, !202}
!326 = distinct !{!326, !202}
!327 = !{i64 0, i64 8, !155, i64 8, i64 8, !155, i64 16, i64 8, !155}
!328 = distinct !{!328, !202}
!329 = distinct !{!329, !202}
!330 = distinct !{!330, !202}
!331 = distinct !{!331, !202}
!332 = !{!"tree-ssa.c:VEC_tree_base_length"}
!333 = !{!334, !163, i64 0}
!334 = !{!"VEC_tree_base", !163, i64 0, !163, i64 4, !157, i64 8}
!335 = !{!"function_entry_count", i64 58841}
!336 = !{!"tree-ssa.c:gimple_nop_p"}
!337 = !{!"tree-ssa.c:verify_def"}
!338 = !{!"tree-ssa.c:ei_start_1"}
!339 = !{!"tree-ssa.c:ei_cond"}
!340 = !{!"tree-ssa.c:ei_next"}
!341 = !{!342, !163, i64 0}
!342 = !{!"", !163, i64 0, !156, i64 8}
!343 = !{!"tree-ssa.c:verify_phi_args"}
!344 = !{!318, !156, i64 0}
!345 = distinct !{!345, !202}
!346 = !{!194, !163, i64 48}
!347 = distinct !{!347, !202}
!348 = !{!"function_entry_count", i64 967332}
!349 = !{!"tree-ssa.c:gsi_start_bb"}
!350 = !{!206, !156, i64 8}
!351 = !{!206, !156, i64 16}
!352 = !{!"tree-ssa.c:gimple_modified_p"}
!353 = !{!"tree-ssa.c:gimple_assign_lhs"}
!354 = !{!"tree-ssa.c:gimple_vdef"}
!355 = !{!"tree-ssa.c:gimple_debug_bind_has_value_p"}
!356 = !{!"tree-ssa.c:gimple_vdef_op"}
!357 = !{!"tree-ssa.c:gimple_vuse"}
!358 = !{!"tree-ssa.c:verify_ssa_name"}
!359 = !{!"tree-ssa.c:gimple_vuse_op"}
!360 = !{!361, !156, i64 32}
!361 = !{!"use_optype_d", !156, i64 0, !215, i64 8}
!362 = !{!"tree-ssa.c:op_iter_init_tree"}
!363 = !{!"tree-ssa.c:op_iter_next_tree"}
!364 = !{!274, !156, i64 16}
!365 = !{!361, !156, i64 0}
!366 = !{!"tree-ssa.c:op_iter_init_use"}
!367 = !{!"function_entry_count", i64 1098528}
!368 = !{!"tree-ssa.c:get_use_from_ptr"}
!369 = !{!"tree-ssa.c:verify_use"}
!370 = !{!215, !156, i64 0}
!371 = !{!"tree-ssa.c:op_iter_next_use"}
!372 = !{!274, !163, i64 24}
!373 = !{!274, !163, i64 28}
!374 = !{!274, !156, i64 32}
!375 = !{!376, !163, i64 0}
!376 = !{!"int_tree_map", !163, i64 0, !156, i64 8}
!377 = !{!"function_entry_count", i64 1025826}
!378 = !{!"function_entry_count", i64 177419}
!379 = !{!290, !156, i64 0}
!380 = !{!290, !156, i64 80}
!381 = !{!"tree-ssa.c:uid_ssaname_map_hash"}
!382 = !{!"function_entry_count", i64 12970}
!383 = !{!"tree-ssa.c:uid_ssaname_map_eq"}
!384 = !{!"branch_weights", i32 167, i32 1}
!385 = !{!"branch_weights", i32 103677, i32 207}
!386 = !{!"branch_weights", i32 1, i32 103677}
!387 = !{!"branch_weights", i32 1114087, i32 -1608799914, i32 451}
!388 = !{!"branch_weights", i32 2, i32 42}
!389 = !{!"branch_weights", i32 415365, i32 167}
!390 = distinct !{!390, !202}
!391 = !{!"branch_weights", i32 1, i32 42}
!392 = !{!290, !156, i64 64}
!393 = !{!"branch_weights", i32 42, i32 1}
!394 = !{!290, !156, i64 8}
!395 = !{!"function_entry_count", i64 233}
!396 = !{!"tree-ssa.c:first_referenced_var"}
!397 = !{!"function_entry_count", i64 645899}
!398 = !{!"tree-ssa.c:end_referenced_vars_p"}
!399 = !{!"function_entry_count", i64 645666}
!400 = !{!"tree-ssa.c:is_global_var"}
!401 = !{!"branch_weights", i32 645200, i32 468}
!402 = !{!"function_entry_count", i64 207352}
!403 = !{!"tree-ssa.c:var_ann"}
!404 = !{!"branch_weights", i32 1101127, i32 -1608838782, i32 440}
!405 = !{!"branch_weights", i32 3, i32 83}
!406 = !{!"tree-ssa.c:next_referenced_var"}
!407 = !{!"function_entry_count", i64 274}
!408 = !{!"tree-ssa.c:gimple_referenced_vars"}
!409 = !{!"branch_weights", i32 1, i32 275}
!410 = !{!"function_entry_count", i64 589084}
!411 = !{!"branch_weights", i32 -2146621621, i32 1264693157, i32 5793}
!412 = !{!"branch_weights", i32 1, i32 436568, i32 1}
!413 = !{!"branch_weights", i32 218284, i32 1}
!414 = !{!"branch_weights", i32 193042810, i32 12678, i32 -1720315083, i32 12678}
!415 = !{!"branch_weights", i32 203059, i32 1}
!416 = !{!"branch_weights", i32 1, i32 203059}
!417 = !{!"branch_weights", i32 457661, i32 131425}
!418 = !{!"branch_weights", i32 1, i32 131425}
!419 = !{!"branch_weights", i32 -1791092551, i32 755609623}
!420 = !{!"branch_weights", i32 -2077654532, i32 16724418}
!421 = !{!"branch_weights", i32 -894813615, i32 33932}
!422 = !{!"branch_weights", i32 100073, i32 128}
!423 = !{!"branch_weights", i32 0, i32 16777216, i32 16766128, i32 -10045294, i32 -10045294, i32 11004026, i32 10989271, i32 -219995430}
!424 = !{!"branch_weights", i32 1, i32 770, i32 1}
!425 = !{!"branch_weights", i32 771, i32 148225}
!426 = !{!"branch_weights", i32 385, i32 1}
!427 = !{!"branch_weights", i32 1, i32 385}
!428 = !{!"branch_weights", i32 0, i32 5767920, i32 5760186, i32 2135955542}
!429 = !{!"branch_weights", i32 1, i32 371}
!430 = !{!"branch_weights", i32 745, i32 138384}
!431 = distinct !{!431, !202}
!432 = !{!433, !156, i64 832}
!433 = !{!"gcc_target", !434, i64 0, !436, i64 368, !437, i64 664, !163, i64 744, !156, i64 752, !156, i64 760, !156, i64 768, !156, i64 776, !156, i64 784, !156, i64 792, !156, i64 800, !156, i64 808, !156, i64 816, !156, i64 824, !156, i64 832, !156, i64 840, !156, i64 848, !156, i64 856, !156, i64 864, !156, i64 872, !156, i64 880, !156, i64 888, !156, i64 896, !156, i64 904, !156, i64 912, !156, i64 920, !156, i64 928, !156, i64 936, !156, i64 944, !156, i64 952, !156, i64 960, !156, i64 968, !156, i64 976, !156, i64 984, !156, i64 992, !156, i64 1000, !156, i64 1008, !156, i64 1016, !156, i64 1024, !156, i64 1032, !156, i64 1040, !156, i64 1048, !156, i64 1056, !195, i64 1064, !195, i64 1072, !156, i64 1080, !156, i64 1088, !156, i64 1096, !156, i64 1104, !156, i64 1112, !156, i64 1120, !156, i64 1128, !156, i64 1136, !156, i64 1144, !156, i64 1152, !156, i64 1160, !156, i64 1168, !438, i64 1176, !156, i64 1232, !156, i64 1240, !156, i64 1248, !156, i64 1256, !156, i64 1264, !156, i64 1272, !156, i64 1280, !156, i64 1288, !156, i64 1296, !156, i64 1304, !156, i64 1312, !156, i64 1320, !156, i64 1328, !156, i64 1336, !156, i64 1344, !156, i64 1352, !156, i64 1360, !156, i64 1368, !156, i64 1376, !156, i64 1384, !156, i64 1392, !156, i64 1400, !156, i64 1408, !156, i64 1416, !156, i64 1424, !156, i64 1432, !156, i64 1440, !156, i64 1448, !156, i64 1456, !195, i64 1464, !439, i64 1472, !156, i64 1664, !156, i64 1672, !156, i64 1680, !156, i64 1688, !156, i64 1696, !156, i64 1704, !156, i64 1712, !156, i64 1720, !156, i64 1728, !156, i64 1736, !156, i64 1744, !156, i64 1752, !156, i64 1760, !156, i64 1768, !156, i64 1776, !440, i64 1784, !441, i64 1792, !442, i64 1896, !443, i64 1968, !156, i64 2016, !157, i64 2024, !157, i64 2025, !157, i64 2026, !157, i64 2027, !157, i64 2028, !157, i64 2029, !157, i64 2030, !157, i64 2031, !157, i64 2032, !157, i64 2033, !157, i64 2034, !157, i64 2035}
!434 = !{!"asm_out", !156, i64 0, !156, i64 8, !156, i64 16, !435, i64 24, !435, i64 56, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !156, i64 120, !156, i64 128, !156, i64 136, !156, i64 144, !156, i64 152, !156, i64 160, !156, i64 168, !156, i64 176, !156, i64 184, !156, i64 192, !156, i64 200, !156, i64 208, !156, i64 216, !156, i64 224, !156, i64 232, !156, i64 240, !156, i64 248, !156, i64 256, !156, i64 264, !156, i64 272, !156, i64 280, !156, i64 288, !156, i64 296, !156, i64 304, !156, i64 312, !156, i64 320, !156, i64 328, !156, i64 336, !156, i64 344, !156, i64 352, !156, i64 360}
!435 = !{!"asm_int_op", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24}
!436 = !{!"sched", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !156, i64 120, !156, i64 128, !156, i64 136, !156, i64 144, !156, i64 152, !156, i64 160, !156, i64 168, !156, i64 176, !156, i64 184, !156, i64 192, !156, i64 200, !156, i64 208, !156, i64 216, !156, i64 224, !156, i64 232, !156, i64 240, !156, i64 248, !156, i64 256, !156, i64 264, !156, i64 272, !156, i64 280, !156, i64 288}
!437 = !{!"vectorize", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72}
!438 = !{!"addr_space", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48}
!439 = !{!"calls", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !156, i64 120, !156, i64 128, !156, i64 136, !156, i64 144, !156, i64 152, !156, i64 160, !156, i64 168, !156, i64 176, !156, i64 184}
!440 = !{!"c", !156, i64 0}
!441 = !{!"cxx", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96}
!442 = !{!"emutls", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !157, i64 64, !157, i64 65}
!443 = !{!"target_option_hooks", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40}
!444 = !{!"function_entry_count", i64 750583}
!445 = !{!"branch_weights", i32 749977, i32 608}
!446 = !{!"branch_weights", i32 408, i32 201}
!447 = !{!"function_entry_count", i64 45552905}
!448 = !{!"branch_weights", i32 -687345481, i32 9864743, i32 78, i32 78, i32 79}
!449 = !{!"function_entry_count", i64 45443652}
!450 = !{!"branch_weights", i32 45349348, i32 94305}
!451 = !{!"branch_weights", i32 94305, i32 0}
!452 = distinct !{!452, !202}
!453 = !{!"tree-ssa.c:walk_use_def_chains_1"}
!454 = distinct !{!454, !202}
!455 = distinct !{!455, !202}
!456 = distinct !{!456, !202}
!457 = !{!"function_entry_count", i64 59041}
!458 = !{!"branch_weights", i32 58842, i32 11827443, i32 -832586332}
!459 = !{!"branch_weights", i32 58842, i32 1}
!460 = !{!"function_entry_count", i64 78}
!461 = !{!"tree-ssa.c:gate_warn_uninitialized"}
!462 = !{!"tree-ssa.c:execute_early_warn_uninitialized"}
!463 = !{!"tree-ssa.c:execute_late_warn_uninitialized"}
!464 = distinct !{!464, !202}
!465 = distinct !{!465, !202}
!466 = !{!"function_entry_count", i64 192}
!467 = !{!"branch_weights", i32 1, i32 192}
!468 = !{!"branch_weights", i32 192, i32 967141}
!469 = distinct !{!469, !202}
!470 = !{!"branch_weights", i32 967332, i32 1}
!471 = !{!"branch_weights", i32 11293, i32 1051164}
!472 = !{!"branch_weights", i32 1, i32 1051164}
!473 = !{!"branch_weights", i32 1051003, i32 162}
!474 = !{!"branch_weights", i32 1, i32 162}
!475 = !{!"branch_weights", i32 822924, i32 967332}
!476 = distinct !{!476, !202}
!477 = !{!"branch_weights", i32 216045, i32 751288}
!478 = !{!"branch_weights", i32 1, i32 216044}
!479 = !{!"branch_weights", i32 1, i32 868938}
!480 = !{!"branch_weights", i32 652894, i32 216044}
!481 = distinct !{!481, !202}
!482 = !{!"branch_weights", i32 0, i32 216045}
!483 = distinct !{!483, !202}
!484 = !{!"branch_weights", i32 37249, i32 387}
!485 = !{!"branch_weights", i32 192, i32 1}
!486 = !{!"branch_weights", i32 540774, i32 1012}
!487 = !{!"branch_weights", i32 1, i32 540774}
!488 = !{!"branch_weights", i32 540774, i32 1}
!489 = !{!"branch_weights", i32 8448, i32 -2010306991}
!490 = !{!"branch_weights", i32 541593, i32 192}
!491 = distinct !{!491, !202}
!492 = !{!"branch_weights", i32 2136240886, i32 11242762}
!493 = distinct !{!493, !202}
!494 = distinct !{!494, !202}
!495 = !{!"function_entry_count", i64 1051163}
!496 = !{!"tree-ssa.c:handled_component_p"}
!497 = !{!"branch_weights", i32 1051003, i32 1, i32 162, i32 1, i32 1, i32 1, i32 1, i32 1}
!498 = !{!"function_entry_count", i64 1084981}
!499 = !{!"tree-ssa.c:gimple_phi_num_args"}
!500 = !{!"function_entry_count", i64 868937}
!501 = !{!"tree-ssa.c:gimple_phi_arg_imm_use_ptr"}
!502 = !{!"tree-ssa.c:gimple_references_memory_p"}
!503 = !{!"tree-ssa.c:VEC_edge_var_map_heap_reserve"}
!504 = !{!"tree-ssa.c:VEC_edge_var_map_base_quick_push"}
!505 = !{i64 0, i64 8, !155, i64 8, i64 8, !155, i64 16, i64 4, !233}
!506 = !{!"tree-ssa.c:VEC_edge_var_map_base_space"}
!507 = !{!182, !163, i64 4}
!508 = !{!"function_entry_count", i64 1328119}
!509 = !{!"tree-ssa.c:gimple_phi_arg"}
!510 = !{!"branch_weights", i32 1, i32 1328120}
!511 = !{!"tree-ssa.c:gimple_op"}
!512 = !{!"tree-ssa.c:gimple_has_ops"}
!513 = !{!"tree-ssa.c:gimple_ops"}
!514 = !{!"tree-ssa.c:gimple_statement_structure"}
!515 = !{!"tree-ssa.c:gss_for_code"}
!516 = !{!"tree-ssa.c:link_use_stmts_after"}
!517 = distinct !{!517, !202}
!518 = distinct !{!518, !202}
!519 = !{!"tree-ssa.c:op_iter_init_phiuse"}
!520 = !{!"tree-ssa.c:move_use_after_head"}
!521 = !{!"tree-ssa.c:delink_imm_use"}
!522 = !{!"tree-ssa.c:link_imm_use_to_list"}
!523 = !{!"tree-ssa.c:clear_and_done_ssa_iter"}
!524 = !{!"tree-ssa.c:link_imm_use"}
!525 = !{!"tree-ssa.c:gimple_set_op"}
!526 = !{!"tree-ssa.c:gimple_num_ops"}
!527 = !{!"tree-ssa.c:gimple_phi_result_ptr"}
!528 = !{!"tree-ssa.c:op_iter_init"}
!529 = !{!"tree-ssa.c:gimple_def_ops"}
!530 = !{!"tree-ssa.c:gimple_use_ops"}
!531 = !{!"tree-ssa.c:ei_end_p"}
!532 = !{!"tree-ssa.c:ei_edge"}
!533 = !{!"tree-ssa.c:VEC_edge_base_length"}
!534 = !{!535, !163, i64 0}
!535 = !{!"VEC_edge_base", !163, i64 0, !163, i64 4, !157, i64 8}
!536 = !{!"tree-ssa.c:ei_container"}
!537 = !{!"tree-ssa.c:VEC_edge_base_index"}
!538 = !{!"tree-ssa.c:bb_seq"}
!539 = !{!318, !163, i64 96}
!540 = !{!"branch_weights", i32 967333, i32 1}
!541 = !{!"branch_weights", i32 1, i32 967333}
!542 = !{!543, !156, i64 0}
!543 = !{!"gimple_bb_info", !156, i64 0, !156, i64 8}
!544 = !{!"tree-ssa.c:gimple_seq_first"}
!545 = !{!546, !156, i64 0}
!546 = !{!"gimple_seq_d", !156, i64 0, !156, i64 8, !156, i64 16}
!547 = !{!"tree-ssa.c:gimple_has_mem_ops"}
!548 = !{!"tree-ssa.c:gimple_vop"}
!549 = !{!290, !156, i64 24}
!550 = !{!"tree-ssa.c:first_htab_element"}
!551 = !{!552, !156, i64 24}
!552 = !{!"htab", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !163, i64 56, !163, i64 60, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !163, i64 104}
!553 = !{!"branch_weights", i32 338, i32 1}
!554 = distinct !{!554, !202}
!555 = !{!"branch_weights", i32 234, i32 1}
!556 = !{!"tree-ssa.c:end_htab_p"}
!557 = !{!"tree-ssa.c:next_htab_element"}
!558 = !{!"branch_weights", i32 1420162, i32 234}
!559 = !{!"tree-ssa.c:warn_uninitialized_vars"}
!560 = !{!561, !157, i64 9}
!561 = !{!"walk_data", !156, i64 0, !157, i64 8, !157, i64 9}
!562 = distinct !{!562, !202}
!563 = !{!561, !157, i64 8}
!564 = !{!561, !156, i64 0}
!565 = !{!253, !156, i64 24}
!566 = distinct !{!566, !202}
!567 = !{!"tree-ssa.c:single_succ"}
!568 = !{!"tree-ssa.c:warn_uninitialized_var"}
!569 = !{!"tree-ssa.c:single_succ_edge"}
!570 = !{!318, !156, i64 8}
!571 = !{!"tree-ssa.c:single_succ_p"}
!572 = !{!"tree-ssa.c:is_gimple_call"}
!573 = !{!"tree-ssa.c:warn_uninit"}
!574 = !{i64 0, i64 8, !155, i64 8, i64 4, !233, i64 12, i64 4, !233, i64 16, i64 1, !217}
!575 = !{i64 0, i64 4, !233, i64 4, i64 4, !233, i64 8, i64 1, !217}
!576 = !{!288, !156, i64 48}
!577 = !{!288, !163, i64 116}
!578 = !{!579, !163, i64 8}
!579 = !{!"", !156, i64 0, !163, i64 8, !163, i64 12, !157, i64 16}
!580 = !{!"tree-ssa.c:gimple_has_location"}
!581 = !{!"tree-ssa.c:gimple_location"}
!582 = !{!"tree-ssa.c:warn_uninitialized_phi"}
!583 = distinct !{!583, !202}
