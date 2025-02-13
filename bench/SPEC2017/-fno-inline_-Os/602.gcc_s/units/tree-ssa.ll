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
define dso_local void @redirect_edge_var_map_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !226 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._edge_var_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !231

9:                                                ; preds = %4
  %10 = tail call ptr @pointer_map_create() #18
  store ptr %10, ptr @edge_var_maps, align 8, !tbaa !227
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = tail call ptr @pointer_map_insert(ptr noundef %12, ptr noundef %0) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !227
  store ptr %14, ptr %5, align 8, !tbaa !227
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !232

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @VEC_edge_var_map_heap_alloc() #19
  store ptr %17, ptr %5, align 8, !tbaa !227
  store ptr %17, ptr %13, align 8, !tbaa !227
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct._edge_var_map, ptr %6, i64 0, i32 1
  store ptr %2, ptr %19, align 8, !tbaa !233
  store ptr %1, ptr %6, align 8, !tbaa !236
  %20 = getelementptr inbounds %struct._edge_var_map, ptr %6, i64 0, i32 2
  store i32 %3, ptr %20, align 8, !tbaa !237
  call fastcc void @VEC_edge_var_map_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %21 = load ptr, ptr %5, align 8, !tbaa !227
  %22 = icmp eq ptr %14, %21
  br i1 %22, label %24, label %23, !prof !238

23:                                               ; preds = %18
  store ptr %21, ptr %13, align 8, !tbaa !227
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
define internal fastcc ptr @VEC_edge_var_map_heap_alloc() unnamed_addr #0 !prof !239 !PGOFuncName !240 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 24) #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_var_map_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !226 !PGOFuncName !241 {
  tail call fastcc void @VEC_edge_var_map_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !227
  tail call fastcc void @VEC_edge_var_map_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_var_map_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !226 !PGOFuncName !242 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  %3 = tail call fastcc i32 @VEC_edge_var_map_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !243

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #18
  store ptr %6, ptr %0, align 8, !tbaa !227
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_var_map_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 !prof !226 !PGOFuncName !244 {
  %3 = load i32, ptr %0, align 8, !tbaa !245
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !245
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !247

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !248
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !226 !PGOFuncName !250 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !247

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !251
  %6 = load i32, ptr %0, align 8, !tbaa !245
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
define dso_local void @redirect_edge_var_map_clear(ptr noundef %0) local_unnamed_addr #0 !prof !252 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !253

5:                                                ; preds = %1
  %6 = tail call ptr @pointer_map_contains(ptr noundef nonnull %3, ptr noundef %0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !254

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !227
  store ptr %9, ptr %2, align 8, !tbaa !227
  call fastcc void @VEC_edge_var_map_heap_free(ptr noundef nonnull %2) #19
  store ptr null, ptr %6, align 8, !tbaa !227
  br label %10

10:                                               ; preds = %5, %8, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_var_map_heap_free(ptr nocapture noundef %0) unnamed_addr #6 !prof !255 !PGOFuncName !256 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !257

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_dup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !258 {
  %3 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !259

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_map_insert(ptr noundef nonnull %3, ptr noundef %0) #18
  %7 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  %8 = tail call ptr @pointer_map_contains(ptr noundef %7, ptr noundef %1) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10, !prof !260

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !227
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !261

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @VEC_edge_var_map_heap_copy(ptr noundef nonnull %11) #19
  br label %17

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @VEC_edge_var_map_heap_alloc() #19
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  store ptr %18, ptr %6, align 8, !tbaa !227
  br label %19

19:                                               ; preds = %5, %2, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_edge_var_map_heap_copy(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !263 {
  %2 = load i32, ptr %0, align 8, !tbaa !245
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %2, i64 noundef 8, i64 noundef 24) #18
  store i32 %2, ptr %6, align 8, !tbaa !264
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
define dso_local ptr @redirect_edge_var_map_vector(ptr noundef %0) local_unnamed_addr #0 !prof !266 {
  %2 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !267

4:                                                ; preds = %1
  %5 = tail call ptr @pointer_map_contains(ptr noundef nonnull %2, ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !268

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !227
  br label %9

9:                                                ; preds = %4, %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_var_map_destroy() local_unnamed_addr #0 !prof !269 {
  %1 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !270

3:                                                ; preds = %0
  tail call void @pointer_map_traverse(ptr noundef nonnull %1, ptr noundef nonnull @free_var_map_entry, ptr noundef null) #18
  %4 = load ptr, ptr @edge_var_maps, align 8, !tbaa !227
  tail call void @pointer_map_destroy(ptr noundef %4) #18
  store ptr null, ptr @edge_var_maps, align 8, !tbaa !227
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef zeroext i8 @free_var_map_entry(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 !prof !271 !PGOFuncName !272 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !227
  store ptr %5, ptr %4, align 8, !tbaa !227
  call fastcc void @VEC_edge_var_map_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i8 1
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ssa_redirect_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !273 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  tail call void @redirect_edge_var_map_clear(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !274
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #18
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %24, !prof !278

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %21
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %12 = load i32, ptr %9, align 4, !tbaa !279
  %13 = zext i32 %12 to i64
  %14 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %11, i64 noundef %13) #19
  %15 = load i32, ptr %9, align 4, !tbaa !279
  %16 = zext i32 %15 to i64
  %17 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %11, i64 noundef %16) #19
  %18 = icmp eq ptr %14, null
  br i1 %18, label %21, label %19, !prof !280

19:                                               ; preds = %10
  %20 = call fastcc ptr @gimple_phi_result(ptr noundef %11) #19
  call void @redirect_edge_var_map_add(ptr noundef nonnull %0, ptr noundef %20, ptr noundef nonnull %14, i32 noundef %17) #19
  br label %21

21:                                               ; preds = %10, %19
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %10, label %24, !prof !281, !llvm.loop !282

24:                                               ; preds = %21, %2
  %25 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %25
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !284 !PGOFuncName !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !288 !PGOFuncName !289 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !293 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !294 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !295
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !298 !PGOFuncName !299 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !288 !PGOFuncName !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !302
  store ptr %4, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !303 !PGOFuncName !304 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !300
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !305

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !306 !PGOFuncName !307 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !308
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  ret ptr %4
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flush_pending_stmts(ptr noundef %0) local_unnamed_addr #0 !prof !309 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = tail call ptr @redirect_edge_var_map_vector(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !prof !310

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !274
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %8) #18
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %23, !prof !311

11:                                               ; preds = %6, %15
  %12 = phi i32 [ %20, %15 ], [ 0, %6 ]
  %13 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef nonnull %4, i32 noundef %12, ptr noundef nonnull %2) #19, !range !312
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15, !prof !313

15:                                               ; preds = %11
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %17 = load ptr, ptr %2, align 8, !tbaa !227
  %18 = call fastcc ptr @redirect_edge_var_map_def(ptr noundef %17) #19
  %19 = call fastcc i32 @redirect_edge_var_map_location(ptr noundef %17) #19
  call void @add_phi_arg(ptr noundef %16, ptr noundef %18, ptr noundef %0, i32 noundef %19) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %20 = add nuw nsw i32 %12, 1
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %11, label %23, !prof !314, !llvm.loop !315

23:                                               ; preds = %11, %15, %6
  call void @redirect_edge_var_map_clear(ptr noundef %0) #19
  br label %24

24:                                               ; preds = %1, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !prof !316 !PGOFuncName !317 {
  %4 = load i32, ptr %0, align 8, !tbaa !245
  %5 = icmp ugt i32 %4, %1
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %6
  %8 = select i1 %5, ptr %7, ptr null, !prof !318
  %9 = zext i1 %5 to i32
  store ptr %8, ptr %2, align 8, !tbaa !227
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !316 !PGOFuncName !319 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  ret ptr %3
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !316 !PGOFuncName !320 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !237
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @target_for_debug_bind(ptr noundef %0) local_unnamed_addr #0 !prof !321 {
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !249
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4, !prof !322

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
  %15 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !249
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %4, !prof !323

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
define dso_local void @insert_debug_temp_for_var_def(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !262 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !227
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !249
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %179, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef %1) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %179

12:                                               ; preds = %9
  %13 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %1) #19
  %14 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #19, !range !277
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %179

16:                                               ; preds = %12, %28
  %17 = phi ptr [ %30, %28 ], [ %13, %12 ]
  %18 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !300
  %21 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %20) #19, !range !277
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
  %31 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #19, !range !277
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %16, label %35, !llvm.loop !324

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
  %44 = load ptr, ptr %43, align 8, !tbaa !300
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %41, %40 ], [ %44, %42 ]
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !325
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = tail call ptr @degenerate_phi_result(ptr noundef %46) #18
  store ptr %50, ptr %4, align 8, !tbaa !227
  %51 = icmp eq ptr %50, null
  br i1 %51, label %152, label %52

52:                                               ; preds = %49
  %53 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_released_ssa_name, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  store ptr null, ptr %4, align 8, !tbaa !227
  br label %152

56:                                               ; preds = %45
  %57 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %46) #19, !range !277
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
  store ptr %72, ptr %4, align 8, !tbaa !227
  br label %75

73:                                               ; preds = %52, %56, %70
  %74 = load ptr, ptr %4, align 8, !tbaa !227
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %74, %73 ], [ %72, %71 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %152, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %76, align 8
  %80 = and i64 %79, 65535
  %81 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !249
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %103, label %84

84:                                               ; preds = %78
  %85 = call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !325
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %38, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = call zeroext i8 @gimple_assign_single_p(ptr noundef %46) #18
  %91 = icmp eq i8 %90, 0
  %92 = load ptr, ptr %4, align 8, !tbaa !227
  br i1 %91, label %103, label %93

93:                                               ; preds = %89
  %94 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %92) #18
  %95 = icmp eq i8 %94, 0
  %96 = load ptr, ptr %4, align 8, !tbaa !227
  br i1 %95, label %97, label %103

97:                                               ; preds = %93, %87
  %98 = phi ptr [ %76, %87 ], [ %96, %93 ]
  %99 = call zeroext i8 @is_gimple_reg(ptr noundef %98) #18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !227
  br label %103

103:                                              ; preds = %101, %93, %89, %84, %78
  %104 = phi ptr [ %102, %101 ], [ %96, %93 ], [ %92, %89 ], [ %76, %84 ], [ %76, %78 ]
  %105 = call ptr @unshare_expr(ptr noundef %104) #18
  store ptr %105, ptr %4, align 8, !tbaa !227
  br label %152

106:                                              ; preds = %97
  %107 = call ptr @make_node_stat(i32 noundef 37) #18
  %108 = load ptr, ptr %4, align 8, !tbaa !227
  %109 = call ptr @unshare_expr(ptr noundef %108) #18
  %110 = call ptr @gimple_build_debug_bind_stat(ptr noundef %107, ptr noundef %109, ptr noundef %46) #18
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 2
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, 4096
  store i64 %113, ptr %111, align 8
  %114 = load ptr, ptr %4, align 8, !tbaa !227
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !300
  %117 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !300
  %118 = load i64, ptr %114, align 8
  %119 = and i64 %118, 65535
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !249
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
  store ptr %107, ptr %4, align 8, !tbaa !227
  br label %152

152:                                              ; preds = %55, %49, %103, %151, %75
  %153 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %1) #19
  %154 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #19, !range !277
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %152, %175
  %157 = phi ptr [ %176, %175 ], [ %153, %152 ]
  %158 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %157) #19, !range !277
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %4, align 8, !tbaa !227
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #19
  %165 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #19, !range !277
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163, %167
  %168 = phi ptr [ %170, %167 ], [ %164, %163 ]
  %169 = load ptr, ptr %4, align 8, !tbaa !227
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %168, ptr noundef %169) #19
  %170 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #19
  %171 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #19, !range !277
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %167, label %174, !llvm.loop !326

173:                                              ; preds = %160
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %157) #19
  br label %174

174:                                              ; preds = %167, %163, %173
  call fastcc void @update_stmt(ptr noundef %157) #19
  br label %175

175:                                              ; preds = %156, %174
  %176 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #19
  %177 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #19, !range !277
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %156, label %179, !llvm.loop !327

179:                                              ; preds = %175, %12, %152, %35, %9, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !262 !PGOFuncName !328 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  store ptr %6, ptr %0, align 8, !tbaa !332
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !277
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !333 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !334 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #19, !range !277
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
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !335 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !262 !PGOFuncName !336 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  store ptr %4, ptr %0, align 8, !tbaa !332
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !277
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !337 !PGOFuncName !338 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @degenerate_phi_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @find_released_ssa_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) #9 !prof !262 !PGOFuncName !339 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !340
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %3
  %10 = load ptr, ptr %0, align 8, !tbaa !227
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
  %19 = load i32, ptr %18, align 4, !tbaa !249
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i32 0, ptr %1, align 4, !tbaa !249
  br label %23

23:                                               ; preds = %22, %17, %14, %5
  %24 = phi ptr [ null, %5 ], [ %10, %14 ], [ null, %17 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !342 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !343 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !300
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
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !344 !PGOFuncName !345 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  store ptr %6, ptr %0, align 8, !tbaa !332
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #19, !range !277
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !346

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #19
  %11 = load ptr, ptr %0, align 8, !tbaa !332
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !347 !PGOFuncName !348 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #9 !prof !262 !PGOFuncName !349 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !350
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !351 {
  %2 = load ptr, ptr %0, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !262 !PGOFuncName !352 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !308
  store ptr %1, ptr %4, align 8, !tbaa !227
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #9 !prof !262 !PGOFuncName !353 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  store ptr %3, ptr %0, align 8, !tbaa !332
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #19, !range !277
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !331
  store ptr %8, ptr %2, align 8, !tbaa !350
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !354 {
  tail call fastcc void @gimple_set_op(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !355 !PGOFuncName !356 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !357

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #18
  tail call void @update_stmt_operands(ptr noundef %0) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !358 !PGOFuncName !359 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !360
  store ptr %4, ptr %0, align 8, !tbaa !332
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #19, !range !277
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !361

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !362
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !363

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #19
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !332
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !364 !PGOFuncName !365 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !262 !PGOFuncName !366 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !277
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !367 !PGOFuncName !368 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !369 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !370
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
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !371 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 !prof !262 !PGOFuncName !372 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !249
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !373 !PGOFuncName !374 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !300
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #18
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #19, !range !325
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !375

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #19
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !376

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #19
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !377

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #19
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #19
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !378, !llvm.loop !379

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !380

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #19
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !381

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #19
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !382

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #19
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #19
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !383, !llvm.loop !384

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
  %56 = load ptr, ptr %55, align 8, !tbaa !362
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !385

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #19
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !358 !PGOFuncName !386 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !387
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !389

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 918, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !389

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !387
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !390
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !391
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !392
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !393 !PGOFuncName !394 {
  %2 = load i8, ptr %0, align 8, !tbaa !387
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #11 !prof !373 !PGOFuncName !395 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !396

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !331
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
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !397 !PGOFuncName !398 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !399
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !400

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !401
  store ptr %7, ptr %2, align 8, !tbaa !399
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !403
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !391
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !404

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !390
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !403
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !387
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !405 !PGOFuncName !406 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !407

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 771, ptr noundef nonnull @.str.1) #18
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !392
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #8 !prof !262 !PGOFuncName !408 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !409
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #11 !prof !373 !PGOFuncName !410 {
  %2 = load ptr, ptr %0, align 8, !tbaa !411
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !412

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !331
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !331
  store ptr %2, ptr %6, align 8, !tbaa !411
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !373 !PGOFuncName !413 {
  store ptr %1, ptr %0, align 8, !tbaa !411
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !331
  store ptr %0, ptr %4, align 8, !tbaa !411
  store ptr %0, ptr %3, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !358 !PGOFuncName !414 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !387
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !415 !PGOFuncName !416 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !300
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !417 !PGOFuncName !418 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !419 !PGOFuncName !420 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9, !prof !421

6:                                                ; preds = %3
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6, %3
  %10 = and i32 %2, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !422

12:                                               ; preds = %9
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 747, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %9, %12, %15
  %17 = and i32 %2, 10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !423

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %20, align 8, !tbaa !424
  br label %31

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %23 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !424
  %24 = icmp eq ptr %22, null
  %25 = select i1 %5, i1 true, i1 %24
  br i1 %25, label %31, label %26, !prof !425

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !426

29:                                               ; preds = %26
  %30 = load ptr, ptr %22, align 8, !tbaa !427
  store ptr %30, ptr %23, align 8, !tbaa !424
  br label %31

31:                                               ; preds = %19, %29, %26, %21
  %32 = and i32 %2, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36, !prof !423

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %35, align 8, !tbaa !399
  br label %48

36:                                               ; preds = %31
  %37 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !399
  %39 = and i32 %2, 4
  %40 = icmp ne i32 %39, 0
  %41 = icmp eq ptr %37, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %48, label %43, !prof !425

43:                                               ; preds = %36
  %44 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !426

46:                                               ; preds = %43
  %47 = load ptr, ptr %37, align 8, !tbaa !401
  store ptr %47, ptr %38, align 8, !tbaa !399
  br label %48

48:                                               ; preds = %34, %46, %43, %36
  store i8 0, ptr %0, align 8, !tbaa !387
  %49 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !405 !PGOFuncName !429 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !380

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !405 !PGOFuncName !430 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !380

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !405 !PGOFuncName !431 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !380

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !432 !PGOFuncName !433 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !434

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !435 !PGOFuncName !436 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !262 !PGOFuncName !437 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !411
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !438 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !277
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
  store ptr null, ptr %10, align 8, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !439 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !300
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insert_debug_temps_for_defs(ptr noundef %0) local_unnamed_addr #0 !prof !440 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %3 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !249
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5, !prof !441

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !325
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
  br i1 %27, label %17, label %28, !llvm.loop !442

28:                                               ; preds = %24, %13, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !262 !PGOFuncName !443 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #19
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !387
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !387
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !392
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !405 !PGOFuncName !444 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !392
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !405 !PGOFuncName !445 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #9 !prof !405 !PGOFuncName !446 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !424
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !380

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !447
  %8 = load ptr, ptr %3, align 8, !tbaa !427
  store ptr %8, ptr %2, align 8, !tbaa !424
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !387
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 !prof !262 !PGOFuncName !448 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_defs_bitset(ptr noundef %0) local_unnamed_addr #0 !prof !449 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !450
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %14, !prof !452

9:                                                ; preds = %65
  %10 = load ptr, ptr %0, align 8, !tbaa !450
  br label %11

11:                                               ; preds = %9, %14
  %12 = phi ptr [ %10, %9 ], [ %15, %14 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14, !prof !453, !llvm.loop !454

14:                                               ; preds = %1, %11
  %15 = phi ptr [ %12, %11 ], [ %7, %1 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !277
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18, !prof !455

18:                                               ; preds = %14, %65
  %19 = load ptr, ptr @cfun, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !456
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !458
  %24 = load i32, ptr %2, align 4, !tbaa !249
  %25 = call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %24) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %26 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef %25) #19
  %27 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #19, !range !277
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %56, !prof !462

29:                                               ; preds = %18, %52
  %30 = phi ptr [ %53, %52 ], [ %26, %18 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  %31 = call fastcc i32 @gimple_code(ptr noundef %30) #19, !range !325
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %52, label %33, !prof !375

33:                                               ; preds = %29
  %34 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %30) #19, !range !277
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %52, !prof !426

36:                                               ; preds = %33
  %37 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %5, ptr noundef %30) #19
  %38 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %52, !prof !463

40:                                               ; preds = %36, %47
  %41 = phi ptr [ %48, %47 ], [ %37, %36 ]
  %42 = call fastcc ptr @get_def_from_ptr(ptr noundef %41) #19
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !300
  %45 = call i32 @bitmap_bit_p(ptr noundef nonnull %0, i32 noundef %44) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %5) #19
  %49 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %40, label %52, !prof !464, !llvm.loop !465

51:                                               ; preds = %40
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %65

52:                                               ; preds = %47, %36, %33, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %53 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #19
  %54 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #19, !range !277
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %29, label %56, !prof !466, !llvm.loop !467

56:                                               ; preds = %52, %18
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %58) #18
  %59 = call fastcc i32 @gimple_code(ptr noundef %58) #19, !range !325
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %61, label %62, !prof !468

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
  %66 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !277
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %9, label %18, !prof !469, !llvm.loop !470

68:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !471 !PGOFuncName !472 {
  %4 = load ptr, ptr %1, align 8, !tbaa !450
  store ptr %4, ptr %0, align 8, !tbaa !473
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !475
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !476

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !473
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !477
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !479
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !370
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !480
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !249
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !481 !PGOFuncName !482 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !480
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !483

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !484

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !249
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !485, !llvm.loop !486

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !249
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !249
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !479
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !473
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !479
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !487

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !370
  store i64 %35, ptr %3, align 8, !tbaa !480
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !488

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !249
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !249
  %40 = load i32, ptr %23, align 8, !tbaa !479
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !479
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !489, !llvm.loop !490

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !491
  store ptr %44, ptr %0, align 8, !tbaa !473
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !492

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !477
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !249
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !480
  store i32 %16, ptr %1, align 4, !tbaa !249
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !344 !PGOFuncName !493 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !227
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #11 !prof !405 !PGOFuncName !494 {
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
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !prof !344 !PGOFuncName !495 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !480
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !480
  %6 = load i32, ptr %1, align 4, !tbaa !249
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !249
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_ssa(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !262 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !227
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !456
  %10 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !458
  %12 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %11) #19
  %13 = zext i32 %12 to i64
  %14 = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 8) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %15 = tail call i32 @dom_info_state(i32 noundef 1) #18
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %17 = load ptr, ptr @cfun, align 8, !tbaa !227
  %18 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %17) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 872, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %1, %20
  tail call void @verify_stmts() #18
  %22 = load i8, ptr @timevar_enable, align 1, !tbaa !300
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @timevar_push_1(i32 noundef 107) #18
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !227
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !456
  %29 = getelementptr inbounds %struct.gimple_df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !458
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
  %43 = load ptr, ptr %42, align 8, !tbaa !300
  %44 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %43) #19, !range !277
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
  %53 = load ptr, ptr @cfun, align 8, !tbaa !227
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !456
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !458
  %58 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %57) #19
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %52, %59
  br i1 %60, label %33, label %61, !llvm.loop !496

61:                                               ; preds = %51, %25
  tail call void @calculate_dominance_info(i32 noundef 1) #18
  %62 = load ptr, ptr @cfun, align 8, !tbaa !227
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !497
  %65 = load ptr, ptr %64, align 8, !tbaa !498
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !500
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !502
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
  store i32 0, ptr %4, align 8, !tbaa.struct !503
  store ptr %75, ptr %72, align 8, !tbaa.struct !504
  %76 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %3) #19, !range !277
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %91
  %79 = load ptr, ptr %3, align 8, !tbaa !227
  %80 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !505
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %79, align 8, !tbaa !506
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !507
  %87 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !274
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !507
  call void (ptr, ...) @error(ptr noundef nonnull @.str.4, i32 noundef %86, i32 noundef %90) #18
  br label %276

91:                                               ; preds = %78
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %92 = load i32, ptr %4, align 8
  %93 = load ptr, ptr %72, align 8
  %94 = call fastcc zeroext i8 @ei_cond(i32 %92, ptr %93, ptr noundef nonnull %3) #19, !range !277
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %78, !llvm.loop !508

96:                                               ; preds = %91, %73
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %74) #18
  %97 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !277
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
  %106 = load i32, ptr %105, align 8, !tbaa !300
  %107 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %106) #18
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !277
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %99, label %110, !llvm.loop !509

110:                                              ; preds = %103, %96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %74) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !510
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !277
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %259

113:                                              ; preds = %110
  %114 = icmp eq i8 %0, 0
  br label %115

115:                                              ; preds = %113, %256
  %116 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  br i1 %114, label %122, label %117

117:                                              ; preds = %115
  %118 = call fastcc zeroext i8 @gimple_modified_p(ptr noundef %116) #19, !range !277
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef %116) #18
  %121 = load ptr, ptr @stderr, align 8, !tbaa !227
  call void @print_gimple_stmt(ptr noundef %121, ptr noundef %116, i32 noundef 0, i32 noundef 64) #18
  br label %276

122:                                              ; preds = %117, %115
  %123 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %116) #19, !range !277
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
  %139 = load ptr, ptr %138, align 8, !tbaa !300
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
  call void (ptr, ...) @error(ptr noundef nonnull @.str.6) #18
  %149 = load ptr, ptr @stderr, align 8, !tbaa !227
  call void @print_gimple_stmt(ptr noundef %149, ptr noundef %116, i32 noundef 0, i32 noundef 64) #18
  br label %276

150:                                              ; preds = %125, %122
  %151 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %116) #19, !range !277
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %116) #19, !range !277
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
  call void (ptr, ...) @error(ptr noundef nonnull @.str.7) #18
  br label %163

163:                                              ; preds = %162, %159
  %164 = phi i8 [ 1, %162 ], [ 0, %159 ]
  %165 = call fastcc ptr @gimple_vuse(ptr noundef %116) #19
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = call fastcc ptr @gimple_vdef(ptr noundef %116) #19
  %169 = getelementptr inbounds %struct.tree_ssa_name, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !300
  %171 = getelementptr inbounds %struct.tree_ssa_name, ptr %165, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !300
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %167, %163
  %175 = phi ptr [ @.str.8, %163 ], [ @.str.9, %167 ]
  call void (ptr, ...) @error(ptr noundef nonnull %175) #18
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi i8 [ %164, %167 ], [ 1, %174 ]
  %178 = call fastcc ptr @gimple_vdef(ptr noundef %116) #19
  %179 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %178, i8 noundef zeroext 1) #19, !range !277
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
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #18
  br label %189

189:                                              ; preds = %188, %185
  %190 = phi i8 [ 1, %188 ], [ %182, %185 ]
  %191 = call fastcc ptr @gimple_vuse(ptr noundef %116) #19
  %192 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %191, i8 noundef zeroext 1) #19, !range !277
  %193 = or i8 %192, %190
  br label %194

194:                                              ; preds = %189, %181
  %195 = phi i8 [ %193, %189 ], [ %182, %181 ]
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #18
  %198 = load ptr, ptr @stderr, align 8, !tbaa !227
  call void @print_gimple_stmt(ptr noundef %198, ptr noundef %116, i32 noundef 0, i32 noundef 16448) #18
  br label %276

199:                                              ; preds = %194
  %200 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 3) #19
  %201 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %199, %209
  %204 = phi ptr [ %210, %209 ], [ %200, %199 ]
  %205 = call fastcc zeroext i8 @verify_ssa_name(ptr noundef %204, i8 noundef zeroext 0) #19, !range !277
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %203
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #18
  %208 = load ptr, ptr @stderr, align 8, !tbaa !227
  call void @print_gimple_stmt(ptr noundef %208, ptr noundef %116, i32 noundef 0, i32 noundef 16448) #18
  br label %276

209:                                              ; preds = %203
  %210 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #19
  %211 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %203, label %213, !llvm.loop !511

213:                                              ; preds = %209, %199
  %214 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 5) #19
  %215 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %213, %227
  %218 = phi ptr [ %228, %227 ], [ %214, %213 ]
  %219 = call fastcc ptr @get_use_from_ptr(ptr noundef %218) #19
  %220 = getelementptr inbounds %struct.tree_ssa_name, ptr %219, i64 0, i32 3
  %221 = load i32, ptr %220, align 8, !tbaa !300
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %14, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !227
  %225 = call fastcc zeroext i8 @verify_use(ptr noundef %74, ptr noundef %224, ptr noundef %218, ptr noundef %116, i8 noundef zeroext 0, ptr noundef %16) #19, !range !277
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %276

227:                                              ; preds = %217
  %228 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #19
  %229 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %217, label %231, !llvm.loop !512

231:                                              ; preds = %227, %213
  %232 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %116, i32 noundef 10) #19
  %233 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %231, %249
  %236 = phi ptr [ %253, %249 ], [ %232, %231 ]
  %237 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !300
  %239 = icmp eq ptr %238, %116
  br i1 %239, label %249, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 2
  call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #18
  %242 = load ptr, ptr @stderr, align 8, !tbaa !227
  %243 = call i64 @fwrite(ptr nonnull @.str.13, i64 31, i64 1, ptr %242) #20
  %244 = load ptr, ptr @stderr, align 8, !tbaa !227
  call void @print_gimple_stmt(ptr noundef %244, ptr noundef %116, i32 noundef 4, i32 noundef 64) #18
  %245 = load ptr, ptr @stderr, align 8, !tbaa !227
  %246 = call i64 @fwrite(ptr nonnull @.str.14, i64 30, i64 1, ptr %245) #20
  %247 = load ptr, ptr @stderr, align 8, !tbaa !227
  %248 = load ptr, ptr %241, align 8, !tbaa !300
  call void @print_gimple_stmt(ptr noundef %247, ptr noundef %248, i32 noundef 4, i32 noundef 64) #18
  br label %276

249:                                              ; preds = %235
  %250 = getelementptr inbounds %struct.tree_ssa_name, ptr %236, i64 0, i32 3
  %251 = load i32, ptr %250, align 8, !tbaa !300
  %252 = call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %251) #18
  %253 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #19
  %254 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #19
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %235, label %256, !llvm.loop !513

256:                                              ; preds = %249, %231, %153
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %257 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !277
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %115, label %259, !llvm.loop !514

259:                                              ; preds = %256, %110
  call void @bitmap_clear(ptr noundef %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %261 = load ptr, ptr %260, align 8, !tbaa !500
  %262 = load ptr, ptr @cfun, align 8, !tbaa !227
  %263 = getelementptr inbounds %struct.function, ptr %262, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !497
  %265 = getelementptr inbounds %struct.control_flow_graph, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !502
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
  %273 = load i8, ptr @timevar_enable, align 1, !tbaa !300
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  call void @timevar_pop_1(i32 noundef 107) #18
  br label %277

276:                                              ; preds = %99, %217, %148, %240, %207, %197, %120, %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.15) #18
  br label %277

277:                                              ; preds = %272, %275, %276
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !515 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !516
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
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !518 !PGOFuncName !519 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_def(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !262 !PGOFuncName !520 {
  %6 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef %2, i8 noundef zeroext %4) #19, !range !277
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !300
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !227
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !507
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !507
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef %17, i32 noundef %19) #18
  br label %32

20:                                               ; preds = %8
  store ptr %0, ptr %12, align 8, !tbaa !227
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !300
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !227
  %26 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 31, i64 1, ptr %25) #20
  %27 = load ptr, ptr @stderr, align 8, !tbaa !227
  %28 = load ptr, ptr %21, align 8, !tbaa !300
  tail call void @print_gimple_stmt(ptr noundef %27, ptr noundef %28, i32 noundef 4, i32 noundef 64) #18
  %29 = load ptr, ptr @stderr, align 8, !tbaa !227
  %30 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 30, i64 1, ptr %29) #20
  %31 = load ptr, ptr @stderr, align 8, !tbaa !227
  tail call void @print_gimple_stmt(ptr noundef %31, ptr noundef %3, i32 noundef 4, i32 noundef 64) #18
  br label %32

32:                                               ; preds = %5, %24, %15
  %33 = load ptr, ptr @stderr, align 8, !tbaa !227
  %34 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 25, i64 1, ptr %33) #20
  %35 = load ptr, ptr @stderr, align 8, !tbaa !227
  tail call void @print_generic_expr(ptr noundef %35, ptr noundef %2, i32 noundef 0) #18
  %36 = load ptr, ptr @stderr, align 8, !tbaa !227
  %37 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 14, i64 1, ptr %36) #20
  %38 = load ptr, ptr @stderr, align 8, !tbaa !227
  tail call void @print_gimple_stmt(ptr noundef %38, ptr noundef %3, i32 noundef 4, i32 noundef 64) #18
  br label %39

39:                                               ; preds = %20, %32
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 !prof !262 !PGOFuncName !521 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !262 !PGOFuncName !522 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !277
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !227
  ret i8 %10
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !523 {
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
  %16 = load i32, ptr %0, align 8, !tbaa !524
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !524
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_phi_args(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !262 !PGOFuncName !526 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %5 = zext i32 %4 to i64
  %6 = load ptr, ptr %1, align 8, !tbaa !527
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
  br i1 %14, label %105, label %15, !llvm.loop !528

15:                                               ; preds = %9, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %9 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %17) #19
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !527
  %21 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %20, i32 noundef %17) #19
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load ptr, ptr %21, align 8, !tbaa !506
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !507
  %27 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !274
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !507
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
  %49 = tail call fastcc zeroext i8 @verify_ssa_name(ptr noundef nonnull %19, i8 noundef zeroext %48) #19, !range !277
  %50 = load ptr, ptr %21, align 8, !tbaa !506
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !300
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !227
  %56 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !529
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 2
  %60 = tail call fastcc zeroext i8 @verify_use(ptr noundef %50, ptr noundef %55, ptr noundef nonnull %18, ptr noundef %0, i8 noundef zeroext %59, ptr noundef null) #19, !range !277
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
  %71 = load ptr, ptr %70, align 8, !tbaa !300
  %72 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %71) #19, !range !277
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %68, !llvm.loop !530

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
  %82 = load ptr, ptr %81, align 8, !tbaa !274
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %95, label %88

84:                                               ; preds = %77
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #18
  %85 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !274
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %97, label %88

88:                                               ; preds = %80, %84
  %89 = phi ptr [ %86, %84 ], [ %82, %80 ]
  %90 = load ptr, ptr %21, align 8, !tbaa !506
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !507
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !507
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %92, i32 noundef %94) #18
  br label %97

95:                                               ; preds = %80
  %96 = icmp eq i8 %65, 0
  br i1 %96, label %12, label %97

97:                                               ; preds = %95, %84, %88
  %98 = load ptr, ptr @stderr, align 8, !tbaa !227
  %99 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 13, i64 1, ptr %98) #20
  %100 = load ptr, ptr @stderr, align 8, !tbaa !227
  tail call void @print_generic_stmt(ptr noundef %100, ptr noundef nonnull %19, i32 noundef 64) #18
  br label %101

101:                                              ; preds = %97, %23, %11
  %102 = load ptr, ptr @stderr, align 8, !tbaa !227
  %103 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 13, i64 1, ptr %102) #20
  %104 = load ptr, ptr @stderr, align 8, !tbaa !227
  tail call void @print_gimple_stmt(ptr noundef %104, ptr noundef %0, i32 noundef 0, i32 noundef 16448) #18
  br label %105

105:                                              ; preds = %12, %9, %101
  %106 = phi i8 [ 1, %101 ], [ 0, %9 ], [ 0, %12 ]
  ret i8 %106
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !531 !PGOFuncName !532 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !286
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !533
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !534
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !535 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !277
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
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !536 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !537 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vdef_op(ptr noundef readonly %0) unnamed_addr #8 !prof !262 !PGOFuncName !538 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.def_optype_d, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !447
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
define internal fastcc noundef zeroext i8 @verify_ssa_name(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !262 !PGOFuncName !539 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !300
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
  %23 = load ptr, ptr %9, align 8, !tbaa !300
  %24 = load ptr, ptr @cfun, align 8, !tbaa !227
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
  %34 = load ptr, ptr %33, align 8, !tbaa !300
  %35 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %34) #19, !range !277
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
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !262 !PGOFuncName !540 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !392
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 !prof !262 !PGOFuncName !541 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !399
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !401
  store ptr %8, ptr %2, align 8, !tbaa !399
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !424
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !447
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !427
  store ptr %17, ptr %10, align 8, !tbaa !424
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !387
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_use(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 !prof !262 !PGOFuncName !542 {
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %2) #19
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 1099511627776
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load ptr, ptr @stderr, align 8, !tbaa !227
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
  %22 = load ptr, ptr %21, align 8, !tbaa !300
  %23 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %22) #19, !range !277
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
  %38 = load i32, ptr %37, align 8, !tbaa !507
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !507
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35, i32 noundef %38, i32 noundef %40) #18
  br label %51

41:                                               ; preds = %31
  %42 = icmp eq ptr %5, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !300
  %46 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %45) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !507
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
  %61 = load ptr, ptr %2, align 8, !tbaa !411
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !308
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !300
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
  %80 = load ptr, ptr @stderr, align 8, !tbaa !227
  %81 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 14, i64 1, ptr %80) #20
  %82 = load ptr, ptr @stderr, align 8, !tbaa !227
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef nonnull %7, i32 noundef 64) #18
  %83 = load ptr, ptr @stderr, align 8, !tbaa !227
  %84 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 15, i64 1, ptr %83) #20
  %85 = load ptr, ptr @stderr, align 8, !tbaa !227
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !262 !PGOFuncName !543 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !262 !PGOFuncName !544 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !545 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !546
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !548 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !227
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !262 !PGOFuncName !549 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !227
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !550 !PGOFuncName !551 {
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
  ], !prof !552

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !531 !PGOFuncName !553 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !554
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !555

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !556

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !557
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !531 !PGOFuncName !559 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !556

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !560
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !562 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !456
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull @.str.1) #18
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !456
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !563
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @verify_imm_links(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !prof !262 {
  %3 = load i32, ptr %0, align 8, !tbaa !564
  %4 = load i32, ptr %1, align 8, !tbaa !564
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @int_tree_map_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !262 {
  %2 = load i32, ptr %0, align 8, !tbaa !564
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !566 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !300
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !300
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @uid_decl_map_hash(ptr nocapture noundef readonly %0) #4 !prof !567 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !300
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_tree_ssa(ptr noundef %0) local_unnamed_addr #0 !prof !269 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #18
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  store ptr %2, ptr %3, align 8, !tbaa !456
  %4 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_decl_map_hash, ptr noundef nonnull @uid_decl_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  %5 = load ptr, ptr %3, align 8, !tbaa !456
  store ptr %4, ptr %5, align 8, !tbaa !568
  %6 = tail call ptr @htab_create_alloc(i64 noundef 20, ptr noundef nonnull @uid_ssaname_map_hash, ptr noundef nonnull @uid_ssaname_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #18
  %7 = load ptr, ptr %3, align 8, !tbaa !456
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 8
  store ptr %6, ptr %8, align 8, !tbaa !569
  %9 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %9) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !456
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
define internal i32 @uid_ssaname_map_hash(ptr nocapture noundef readonly %0) #8 !prof !570 !PGOFuncName !571 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !300
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @uid_ssaname_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !prof !572 !PGOFuncName !573 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !300
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !300
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
define dso_local void @delete_tree_ssa() local_unnamed_addr #0 !prof !269 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #19
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #19, !range !277
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %30, !prof !574

5:                                                ; preds = %0, %26
  %6 = phi ptr [ %27, %26 ], [ %2, %0 ]
  %7 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %6) #19, !range !277
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26, !prof !575

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @var_ann(ptr noundef %6) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !576

12:                                               ; preds = %9
  tail call void @ggc_free(ptr noundef nonnull %10) #18
  %13 = load i64, ptr %6, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %19 [
    i16 32, label %15
    i16 34, label %17
  ], !prof !577

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
  %23 = select i1 %21, ptr %22, ptr null, !prof !578
  br label %24

24:                                               ; preds = %17, %19, %15
  %25 = phi ptr [ %16, %15 ], [ %18, %17 ], [ %23, %19 ]
  store ptr null, ptr %25, align 8, !tbaa !227
  br label %26

26:                                               ; preds = %9, %24, %5
  %27 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #19
  %28 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #19, !range !277
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %5, label %30, !prof !579, !llvm.loop !580

30:                                               ; preds = %26, %0
  %31 = load ptr, ptr @cfun, align 8, !tbaa !227
  %32 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %31) #19
  tail call void @htab_delete(ptr noundef %32) #18
  %33 = load ptr, ptr @cfun, align 8, !tbaa !227
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !456
  store ptr null, ptr %35, align 8, !tbaa !568
  tail call void @fini_ssanames() #18
  tail call void @fini_phinodes() #18
  %36 = tail call zeroext i8 @ssa_operands_active() #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !581

38:                                               ; preds = %30
  tail call void @fini_ssa_operands() #18
  br label %39

39:                                               ; preds = %38, %30
  tail call void @delete_alias_heapvars() #18
  %40 = load ptr, ptr @cfun, align 8, !tbaa !227
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !456
  %43 = getelementptr inbounds %struct.gimple_df, ptr %42, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !569
  tail call void @htab_delete(ptr noundef %44) #18
  %45 = load ptr, ptr @cfun, align 8, !tbaa !227
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !456
  %48 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 8
  store ptr null, ptr %48, align 8, !tbaa !569
  %49 = getelementptr inbounds %struct.gimple_df, ptr %47, i64 0, i32 4
  tail call void @pt_solution_reset(ptr noundef nonnull %49) #18
  %50 = load ptr, ptr @cfun, align 8, !tbaa !227
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !456
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 5
  tail call void @pt_solution_reset(ptr noundef nonnull %53) #18
  %54 = load ptr, ptr @cfun, align 8, !tbaa !227
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !456
  %57 = getelementptr inbounds %struct.gimple_df, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !582
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60, !prof !583

60:                                               ; preds = %39
  tail call void @pointer_map_destroy(ptr noundef nonnull %58) #18
  %61 = load ptr, ptr @cfun, align 8, !tbaa !227
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !456
  br label %64

64:                                               ; preds = %60, %39
  %65 = phi ptr [ %63, %60 ], [ %56, %39 ]
  %66 = phi ptr [ %61, %60 ], [ %54, %39 ]
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 3
  %68 = getelementptr inbounds %struct.gimple_df, ptr %65, i64 0, i32 6
  store ptr null, ptr %68, align 8, !tbaa !582
  %69 = getelementptr inbounds %struct.gimple_df, ptr %65, i64 0, i32 1
  store ptr null, ptr %69, align 8, !tbaa !584
  store ptr null, ptr %67, align 8, !tbaa !456
  tail call void @redirect_edge_var_map_destroy() #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !586 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !227
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #19
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !587 !PGOFuncName !588 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #19, !range !277
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !589 !PGOFuncName !590 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !591

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
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !592 !PGOFuncName !593 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !594

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
  br i1 %10, label %12, label %15, !prof !595

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !227
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #14 !prof !589 !PGOFuncName !596 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !597 !PGOFuncName !598 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !456
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !599

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !568
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
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !585 !PGOFuncName !600 {
  store ptr %1, ptr %0, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !601
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !533
  %6 = tail call i64 @htab_size(ptr noundef %1) #18
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !534
  %9 = load ptr, ptr %5, align 8, !tbaa !533
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !227
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !533
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !603, !llvm.loop !604

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !605

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !227
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !587 !PGOFuncName !606 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !533
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !534
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #14 !prof !589 !PGOFuncName !607 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !534
  %5 = load ptr, ptr %2, align 8, !tbaa !533
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !533
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !608

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !227
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @useless_type_conversion_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !609 {
  br label %3

3:                                                ; preds = %173, %2
  %4 = phi ptr [ %0, %2 ], [ %177, %173 ]
  %5 = phi ptr [ %1, %2 ], [ %175, %173 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %48 [
    i16 10, label %8
    i16 12, label %8
  ], !prof !610

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %4, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %48 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !611

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !300
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %17, %14
  %19 = icmp ult i64 %18, 72057594037927936
  br i1 %19, label %20, label %366, !prof !612

20:                                               ; preds = %11
  %21 = trunc i64 %14 to i16
  switch i16 %21, label %36 [
    i16 19, label %366
    i16 20, label %22
    i16 21, label %22
  ], !prof !613

22:                                               ; preds = %20, %20
  %23 = and i64 %18, 65535
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36, !prof !614

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !300
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !615

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !300
  %32 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !300
  %34 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %31, ptr noundef %33) #19, !range !277
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %366, !prof !616

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
  br i1 %47, label %48, label %366, !prof !617

48:                                               ; preds = %8, %3, %36
  %49 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !300
  %51 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !300
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %366, label %54, !prof !618

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !300
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58, !prof !619

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !300
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %366, label %62, !prof !620

62:                                               ; preds = %58, %54
  %63 = load i64, ptr %50, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 14
  br i1 %65, label %66, label %68, !prof !621

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
  br i1 %77, label %78, label %80, !prof !622

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
  br i1 %93, label %94, label %366, !prof !623

94:                                               ; preds = %85
  %95 = add nsw i32 %90, -6
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %116, !prof !624

97:                                               ; preds = %94
  %98 = load i64, ptr %52, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  %101 = add nsw i32 %100, -6
  %102 = icmp ult i32 %101, 3
  br i1 %102, label %103, label %116, !prof !625

103:                                              ; preds = %97
  %104 = xor i64 %98, %88
  %105 = and i64 %104, 2097152
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %366, !prof !626

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
  ], !prof !627

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
  ], !prof !628

129:                                              ; preds = %126, %126
  %130 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !300
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = and i32 %133, 65534
  %135 = icmp eq i32 %134, 20
  %136 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !300
  br i1 %135, label %151, label %138, !prof !629

138:                                              ; preds = %129
  %139 = load i64, ptr %137, align 8
  %140 = trunc i64 %139 to i32
  %141 = and i32 %140, 65534
  %142 = icmp eq i32 %141, 20
  br i1 %142, label %151, label %143, !prof !630

143:                                              ; preds = %138
  %144 = lshr i32 %133, 19
  %145 = and i32 %144, 1
  %146 = lshr i32 %140, 19
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %151, label %149, !prof !631

149:                                              ; preds = %143
  %150 = icmp eq i32 %145, 0
  br i1 %150, label %151, label %366

151:                                              ; preds = %129, %138, %149, %143
  %152 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %153 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !300
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %160, !prof !632

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !300
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %366, !prof !633

160:                                              ; preds = %156, %151
  %161 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %50) #18
  %162 = tail call i32 @get_deref_alias_set(ptr noundef nonnull %52) #18
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %366, !prof !634

164:                                              ; preds = %160
  %165 = load ptr, ptr %130, align 8, !tbaa !300
  %166 = load ptr, ptr %152, align 8, !tbaa !300
  %167 = tail call zeroext i8 @types_compatible_p(ptr noundef %165, ptr noundef %166) #19, !range !277
  br label %366

168:                                              ; preds = %126
  switch i16 %117, label %294 [
    i16 13, label %169
    i16 14, label %178
    i16 15, label %190
  ], !prof !635

169:                                              ; preds = %116, %168
  %170 = load i64, ptr %52, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 13
  br i1 %172, label %173, label %294

173:                                              ; preds = %231, %234, %287, %291, %182, %169
  %174 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !300
  %176 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !300
  br label %3

178:                                              ; preds = %116, %168
  %179 = load i64, ptr %52, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 14
  br i1 %181, label %182, label %294, !prof !636

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
  br i1 %193, label %194, label %294, !prof !637

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = xor i32 %198, %196
  %200 = and i32 %199, 16777216
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %366, !prof !638

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !300
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %210, !prof !639

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !300
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %366

210:                                              ; preds = %206, %202
  %211 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !300
  %213 = icmp eq ptr %212, null
  br i1 %213, label %231, label %214, !prof !639

214:                                              ; preds = %210
  %215 = load i64, ptr %212, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 23
  br i1 %217, label %218, label %231, !prof !638

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !300
  %221 = icmp eq ptr %220, null
  br i1 %221, label %366, label %222, !prof !639

222:                                              ; preds = %218
  %223 = load i64, ptr %220, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 23
  br i1 %225, label %226, label %366, !prof !638

226:                                              ; preds = %222
  %227 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %212, ptr noundef nonnull %220) #18
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %366, label %229, !prof !638

229:                                              ; preds = %226
  %230 = load ptr, ptr %203, align 8, !tbaa !300
  br label %231

231:                                              ; preds = %229, %214, %210
  %232 = phi ptr [ %230, %229 ], [ %204, %214 ], [ %204, %210 ]
  %233 = icmp eq ptr %232, null
  br i1 %233, label %173, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !300
  %237 = icmp eq ptr %236, null
  %238 = icmp eq ptr %232, %236
  %239 = or i1 %237, %238
  br i1 %239, label %173, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 13
  %242 = load ptr, ptr %241, align 8, !tbaa !300
  %243 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 13
  %244 = load ptr, ptr %243, align 8, !tbaa !300
  %245 = getelementptr inbounds %struct.tree_type, ptr %232, i64 0, i32 14
  %246 = load ptr, ptr %245, align 8, !tbaa !300
  %247 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 14
  %248 = load ptr, ptr %247, align 8, !tbaa !300
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
  br i1 %296, label %297, label %366, !prof !640

297:                                              ; preds = %294
  %298 = load i64, ptr %52, align 8
  %299 = xor i64 %298, %88
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %366, !prof !641

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !300
  %305 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !300
  %307 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %304, ptr noundef %306) #19, !range !277
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %366, label %309, !prof !642

309:                                              ; preds = %302
  %310 = load i64, ptr %50, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 21
  br i1 %312, label %313, label %320, !prof !643

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 14
  %315 = load ptr, ptr %314, align 8, !tbaa !300
  %316 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 14
  %317 = load ptr, ptr %316, align 8, !tbaa !300
  %318 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %315, ptr noundef %317) #19, !range !277
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %366, label %320

320:                                              ; preds = %313, %309
  %321 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !300
  %323 = icmp eq ptr %322, null
  br i1 %323, label %366, label %324, !prof !643

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !300
  %327 = icmp eq ptr %322, %326
  br i1 %327, label %366, label %328, !prof !643

328:                                              ; preds = %324
  %329 = icmp eq ptr %326, null
  br i1 %329, label %366, label %330, !prof !644

330:                                              ; preds = %328, %343
  %331 = phi ptr [ %347, %343 ], [ %326, %328 ]
  %332 = phi ptr [ %345, %343 ], [ %322, %328 ]
  %333 = getelementptr inbounds %struct.tree_list, ptr %332, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !300
  %335 = getelementptr inbounds %struct.tree_type, ptr %334, i64 0, i32 16
  %336 = load ptr, ptr %335, align 8, !tbaa !300
  %337 = getelementptr inbounds %struct.tree_list, ptr %331, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !300
  %339 = getelementptr inbounds %struct.tree_type, ptr %338, i64 0, i32 16
  %340 = load ptr, ptr %339, align 8, !tbaa !300
  %341 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %336, ptr noundef %340) #19, !range !277
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %366, label %343, !prof !645

343:                                              ; preds = %330
  %344 = getelementptr inbounds %struct.tree_common, ptr %332, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !300
  %346 = getelementptr inbounds %struct.tree_common, ptr %331, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !300
  %348 = icmp ne ptr %345, null
  %349 = icmp ne ptr %347, null
  %350 = select i1 %348, i1 %349, i1 false, !prof !646
  br i1 %350, label %330, label %351, !prof !647, !llvm.loop !648

351:                                              ; preds = %343
  %352 = select i1 %348, i1 true, i1 %349
  br i1 %352, label %366, label %353, !prof !649

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 4
  %355 = load ptr, ptr %354, align 8, !tbaa !300
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %361, !prof !650

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !300
  %360 = icmp eq ptr %359, null
  br i1 %360, label %366, label %361, !prof !651

361:                                              ; preds = %357, %353
  %362 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !652
  %363 = tail call i32 %362(ptr noundef nonnull %52, ptr noundef nonnull %50) #18
  %364 = icmp ne i32 %363, 0
  %365 = zext i1 %364 to i8
  br label %366

366:                                              ; preds = %289, %291, %282, %284, %218, %222, %226, %206, %194, %58, %48, %36, %29, %20, %11, %85, %330, %328, %122, %118, %297, %294, %107, %361, %302, %313, %320, %324, %351, %357, %160, %156, %149, %103, %164
  %367 = phi i8 [ %167, %164 ], [ 0, %103 ], [ 0, %149 ], [ 0, %156 ], [ 0, %160 ], [ %365, %361 ], [ 0, %302 ], [ 0, %313 ], [ 1, %320 ], [ 1, %324 ], [ 0, %351 ], [ 1, %357 ], [ %115, %107 ], [ 0, %294 ], [ 0, %297 ], [ 1, %118 ], [ 1, %122 ], [ 0, %328 ], [ 0, %330 ], [ 0, %289 ], [ 0, %291 ], [ 0, %282 ], [ 0, %284 ], [ 0, %218 ], [ 0, %222 ], [ 0, %226 ], [ 0, %206 ], [ 0, %194 ], [ 1, %58 ], [ 1, %48 ], [ 0, %36 ], [ 1, %29 ], [ 1, %20 ], [ 0, %11 ], [ 0, %85 ]
  ret i8 %367
}

; Function Attrs: optsize
declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @types_compatible_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !664 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %9, label %4, !prof !665

4:                                                ; preds = %2
  %5 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %0, ptr noundef %1) #19, !range !277
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !666

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %1, ptr noundef %0) #19, !range !277
  br label %9

9:                                                ; preds = %4, %7, %2
  %10 = phi i8 [ 1, %2 ], [ 0, %4 ], [ %8, %7 ]
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_ssa_useless_type_conversion(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !667 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %12 [
    i16 116, label %4
    i16 113, label %4
    i16 118, label %4
    i16 117, label %4
  ], !prof !668

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %6, ptr noundef %10) #19, !range !277
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i8 [ %11, %4 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tree_ssa_strip_useless_type_conversions(ptr noundef readonly %0) local_unnamed_addr #0 !prof !669 {
  %2 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !670

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !300
  %8 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %7) #19, !range !277
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !671, !llvm.loop !672

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @walk_use_def_chains(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !262 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1591, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !300
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %11) #19, !range !325
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
define internal fastcc zeroext i8 @walk_use_def_chains_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !262 !PGOFuncName !673 {
  %6 = tail call i32 @pointer_set_insert(ptr noundef %3, ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #19, !range !325
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
  br i1 %24, label %25, label %30, !llvm.loop !674

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
  br i1 %48, label %33, label %49, !llvm.loop !675

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
  br i1 %57, label %58, label %63, !llvm.loop !676

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
define dso_local zeroext i8 @ssa_undefined_value_p(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !677 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %11 [
    i16 34, label %15
    i16 32, label %6
  ], !prof !678

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15, !prof !679

11:                                               ; preds = %1, %6
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  %14 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %13) #19, !range !277
  br label %15

15:                                               ; preds = %6, %1, %11
  %16 = phi i8 [ %14, %11 ], [ 0, %1 ], [ 0, %6 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_warn_uninitialized() #15 !prof !680 !PGOFuncName !681 {
  %1 = load i32, ptr @warn_uninitialized, align 4, !tbaa !249
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_early_warn_uninitialized() #0 !prof !262 !PGOFuncName !682 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !249
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext %3) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninitialized_vars(i8 noundef zeroext %0) unnamed_addr #0 !prof !262 !PGOFuncName !683 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.walk_data, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.walk_data, ptr %3, i64 0, i32 2
  store i8 %0, ptr %5, align 1, !tbaa !684
  tail call void @calculate_dominance_info(i32 noundef 2) #18
  %6 = load ptr, ptr @cfun, align 8, !tbaa !227
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !497
  %9 = load ptr, ptr %8, align 8, !tbaa !498
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !500
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !502
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.walk_data, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  br label %27

18:                                               ; preds = %42, %27
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !500
  %21 = load ptr, ptr @cfun, align 8, !tbaa !227
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !497
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !502
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %45, label %27, !llvm.loop !686

27:                                               ; preds = %15, %18
  %28 = phi ptr [ %8, %15 ], [ %23, %18 ]
  %29 = phi ptr [ %11, %15 ], [ %20, %18 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !498
  %31 = call fastcc ptr @single_succ(ptr noundef %30) #19
  %32 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %31, ptr noundef %29) #18
  store i8 %32, ptr %16, align 8, !tbaa !687
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %29) #19
  %33 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !277
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %18

35:                                               ; preds = %27, %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #17
  %36 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %36, ptr %3, align 8, !tbaa !688
  %37 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %36) #19, !range !277
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %3, ptr %17, align 8, !tbaa !689
  %40 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %41 = call ptr @walk_gimple_op(ptr noundef %40, ptr noundef nonnull @warn_uninitialized_var, ptr noundef nonnull %4) #18
  br label %42

42:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !277
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %35, label %18, !llvm.loop !690

45:                                               ; preds = %18, %1
  call void @free_dominance_info(i32 noundef 2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !691 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !274
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @warn_uninitialized_var(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !262 !PGOFuncName !692 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !689
  %6 = load ptr, ptr %0, align 8, !tbaa !227
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %8 = load i8, ptr %7, align 1, !tbaa !340
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
  %18 = load ptr, ptr %17, align 8, !tbaa !300
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
  %24 = load ptr, ptr %5, align 8, !tbaa !688
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %24) #19, !range !277
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_vuse_op(ptr noundef nonnull %24) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %30) #19
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !300
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
  %44 = load i8, ptr %43, align 8, !tbaa !687
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.walk_data, ptr %5, i64 0, i32 2
  %48 = load i8, ptr %47, align 1, !tbaa !684
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %46, %41
  %51 = phi ptr [ @.str.43, %41 ], [ @.str.44, %46 ]
  %52 = load ptr, ptr %5, align 8, !tbaa !688
  tail call fastcc void @warn_uninit(ptr noundef nonnull %42, ptr noundef nonnull %51, ptr noundef %52) #19
  br label %65

53:                                               ; preds = %19, %19
  %54 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !300
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %65, label %66

59:                                               ; preds = %19
  %60 = and i64 %21, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !249
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %46, %50, %19
  store i32 0, ptr %1, align 4, !tbaa !249
  br label %66

66:                                               ; preds = %65, %32, %29, %26, %23, %59, %10, %53, %37
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !262 !PGOFuncName !693 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !694
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !262 !PGOFuncName !695 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !694
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !696 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !325
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninit(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !262 !PGOFuncName !697 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef %0) #19, !range !277
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %59, label %11

11:                                               ; preds = %3
  %12 = load i64, ptr %8, align 8
  %13 = and i64 %12, 8388608
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %8) #19, !range !277
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = icmp eq ptr %2, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef nonnull %2) #19, !range !277
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %2) #19
  br label %28

25:                                               ; preds = %20, %18
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !300
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %29) #18
  %30 = load ptr, ptr %4, align 8, !tbaa.struct !698
  %31 = getelementptr inbounds i8, ptr %4, i64 8
  %32 = load i32, ptr %31, align 8, !tbaa.struct !699
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %33 = load ptr, ptr @cfun, align 8, !tbaa !227
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !700
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !300
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %37) #18
  %38 = load ptr, ptr %5, align 8, !tbaa.struct !698
  %39 = getelementptr inbounds i8, ptr %5, i64 8
  %40 = load i32, ptr %39, align 8, !tbaa.struct !699
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
  %50 = load ptr, ptr @cfun, align 8, !tbaa !227
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !701
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %52) #18
  %53 = getelementptr inbounds %struct.expanded_location, ptr %6, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !702
  %55 = icmp sgt i32 %32, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %43
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !300
  call void (i32, ptr, ...) @inform(i32 noundef %58, ptr noundef nonnull @.str.45, ptr noundef nonnull %8) #18
  br label %59

59:                                               ; preds = %28, %56, %49, %15, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !704 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !262 !PGOFuncName !705 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !300
  ret i32 %3
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_late_warn_uninitialized() #0 !prof !262 !PGOFuncName !706 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  tail call fastcc void @warn_uninitialized_vars(i8 noundef zeroext 1) #19
  %2 = load ptr, ptr @cfun, align 8, !tbaa !227
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !497
  %5 = load ptr, ptr %4, align 8, !tbaa !498
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !500
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !502
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %28, label %20

11:                                               ; preds = %24, %20
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !500
  %14 = load ptr, ptr @cfun, align 8, !tbaa !227
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !497
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !502
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %28, label %20, !llvm.loop !707

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #18
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !277
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %11

24:                                               ; preds = %20, %24
  %25 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  call fastcc void @warn_uninitialized_phi(ptr noundef %25) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !277
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %24, label %11, !llvm.loop !708

28:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warn_uninitialized_phi(ptr noundef %0) unnamed_addr #0 !prof !262 !PGOFuncName !709 {
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
  br i1 %18, label %19, label %9, !llvm.loop !710

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @execute_update_addresses_taken(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !711 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !227
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !497
  %10 = load ptr, ptr %9, align 8, !tbaa !498
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !500
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !502
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %101, label %25, !prof !712

16:                                               ; preds = %98, %63
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !500
  %19 = load ptr, ptr @cfun, align 8, !tbaa !227
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !497
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !502
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %101, label %25, !prof !713, !llvm.loop !714

25:                                               ; preds = %1, %16
  %26 = phi ptr [ %18, %16 ], [ %12, %1 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #19
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %63, !prof !715

29:                                               ; preds = %25, %60
  %30 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %31 = call fastcc i32 @gimple_code(ptr noundef %30) #19, !range !325
  %32 = call zeroext i8 @gimple_ior_addresses_taken(ptr noundef %5, ptr noundef %30) #18
  %33 = trunc i32 %31 to i8
  switch i8 %33, label %60 [
    i8 8, label %34
    i8 6, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = call ptr @gimple_get_lhs(ptr noundef %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37, !prof !716

37:                                               ; preds = %34
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 152
  br i1 %40, label %41, label %45, !prof !717

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !300
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %55, !prof !718

45:                                               ; preds = %37, %41
  %46 = call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %35) #19, !range !277
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %60, label %48, !prof !719

48:                                               ; preds = %45
  %49 = call ptr @get_base_address(ptr noundef nonnull %35) #18
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !249
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %60, !prof !720

55:                                               ; preds = %48, %41
  %56 = phi ptr [ %43, %41 ], [ %49, %48 ]
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !300
  %59 = call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %58) #18
  br label %60

60:                                               ; preds = %55, %48, %45, %34, %29
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %29, label %63, !prof !721, !llvm.loop !722

63:                                               ; preds = %60, %25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %26) #18
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %16, !prof !723

66:                                               ; preds = %63, %98
  %67 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %68 = call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %98, label %70, !prof !724

70:                                               ; preds = %66, %93
  %71 = phi i64 [ %94, %93 ], [ 0, %66 ]
  %72 = trunc i64 %71 to i32
  %73 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %67, i32 noundef %72) #19
  %74 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %73) #19
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 121
  br i1 %77, label %78, label %93, !prof !725

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !300
  %81 = call ptr @get_base_address(ptr noundef %80) #18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83, !prof !726

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8
  %85 = and i64 %84, 65535
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !249
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %93, !prof !727

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.tree_decl_minimal, ptr %81, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !300
  %92 = call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %91) #18
  br label %93

93:                                               ; preds = %89, %83, %78, %70
  %94 = add nuw nsw i64 %71, 1
  %95 = call fastcc i32 @gimple_phi_num_args(ptr noundef %67) #19
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %70, label %98, !prof !728, !llvm.loop !729

98:                                               ; preds = %93, %66
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %66, label %16, !prof !730, !llvm.loop !731

101:                                              ; preds = %16, %1
  %102 = load i32, ptr @optimize, align 4, !tbaa !249
  %103 = icmp ne i32 %102, 0
  %104 = icmp ne i8 %0, 0
  %105 = and i1 %104, %103
  br i1 %105, label %106, label %233, !prof !732

106:                                              ; preds = %101
  %107 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #19
  %108 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #19, !range !277
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %233, !prof !733

110:                                              ; preds = %106, %191
  %111 = phi ptr [ %193, %191 ], [ %107, %106 ]
  %112 = phi i8 [ %192, %191 ], [ 0, %106 ]
  %113 = call fastcc zeroext i8 @is_global_var(ptr noundef %111) #19, !range !277
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %191, !prof !734

115:                                              ; preds = %110
  %116 = load i64, ptr %111, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 36
  br i1 %118, label %191, label %119, !prof !735

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %111, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !300
  %122 = call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %121) #18
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %191, !prof !736

124:                                              ; preds = %119
  %125 = load i64, ptr %111, align 8
  %126 = and i64 %125, 262144
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %151, label %128, !prof !737

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !300
  %131 = call zeroext i8 @is_gimple_reg_type(ptr noundef %130) #18
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133, !prof !738

133:                                              ; preds = %128
  %134 = load i32, ptr %120, align 4, !tbaa !300
  %135 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %134) #18
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151, !prof !739

137:                                              ; preds = %133, %128
  %138 = load i64, ptr %111, align 8
  %139 = and i64 %138, -262145
  store i64 %139, ptr %111, align 8
  %140 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %111) #18
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %142, !prof !738

142:                                              ; preds = %137
  call void @mark_sym_for_renaming(ptr noundef nonnull %111) #18
  br label %143

143:                                              ; preds = %142, %137
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !227
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146, !prof !740

146:                                              ; preds = %143
  %147 = call i64 @fwrite(ptr nonnull @.str.47, i64 31, i64 1, ptr nonnull %144)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !227
  call void @print_generic_expr(ptr noundef %148, ptr noundef nonnull %111, i32 noundef 0) #18
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !227
  %150 = call i32 @fputc(i32 10, ptr %149)
  br label %151

151:                                              ; preds = %143, %146, %133, %124
  %152 = phi i8 [ %112, %133 ], [ 1, %146 ], [ 1, %143 ], [ %112, %124 ]
  %153 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 2
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 134217728
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %191, !prof !741

157:                                              ; preds = %151
  %158 = load i32, ptr %120, align 4, !tbaa !300
  %159 = call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %158) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %191, !prof !742

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !300
  %164 = load i64, ptr %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = and i32 %165, 65535
  %167 = add nsw i32 %166, -13
  %168 = icmp ult i32 %167, 2
  br i1 %168, label %169, label %191, !prof !743

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
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !227
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = call i64 @fwrite(ptr nonnull @.str.49, i64 30, i64 1, ptr nonnull %184)
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !227
  call void @print_generic_expr(ptr noundef %188, ptr noundef nonnull %111, i32 noundef 0) #18
  %189 = load ptr, ptr @dump_file, align 8, !tbaa !227
  %190 = call i32 @fputc(i32 10, ptr %189)
  br label %191

191:                                              ; preds = %161, %151, %157, %169, %176, %186, %181, %110, %115, %119
  %192 = phi i8 [ %112, %110 ], [ %112, %115 ], [ %112, %119 ], [ %152, %151 ], [ %152, %157 ], [ %152, %169 ], [ 1, %186 ], [ 1, %181 ], [ %152, %176 ], [ %152, %161 ]
  %193 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #19
  %194 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #19, !range !277
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %110, label %196, !prof !744, !llvm.loop !745

196:                                              ; preds = %191
  %197 = icmp eq i8 %192, 0
  br i1 %197, label %233, label %198, !prof !746

198:                                              ; preds = %196
  %199 = load ptr, ptr @cfun, align 8, !tbaa !227
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !497
  %202 = load ptr, ptr %201, align 8, !tbaa !498
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 6
  %204 = load ptr, ptr %203, align 8, !tbaa !500
  %205 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !502
  %207 = icmp eq ptr %204, %206
  br i1 %207, label %232, label %217, !prof !747

208:                                              ; preds = %229, %217
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !500
  %211 = load ptr, ptr @cfun, align 8, !tbaa !227
  %212 = getelementptr inbounds %struct.function, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !497
  %214 = getelementptr inbounds %struct.control_flow_graph, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !502
  %216 = icmp eq ptr %210, %215
  br i1 %216, label %232, label %217, !prof !748, !llvm.loop !749

217:                                              ; preds = %198, %208
  %218 = phi ptr [ %210, %208 ], [ %204, %198 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %218) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !510
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %219 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %208, !prof !750

221:                                              ; preds = %217, %229
  %222 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %223 = call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %222) #19, !range !277
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %228, !prof !751

225:                                              ; preds = %221
  %226 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %222) #19, !range !277
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %229, label %228, !prof !752

228:                                              ; preds = %225, %221
  call fastcc void @update_stmt(ptr noundef %222) #19
  br label %229

229:                                              ; preds = %228, %225
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %230 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !277
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %221, label %208, !prof !753, !llvm.loop !754

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
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !755 !PGOFuncName !756 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !277
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !757

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!225}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!36 = !{ptr @redirect_edge_var_map_add, ptr @pointer_map_create, i64 5256}
!37 = !{ptr @redirect_edge_var_map_add, ptr @pointer_map_insert, i64 543441}
!38 = !{ptr @redirect_edge_var_map_add, ptr @VEC_edge_var_map_heap_alloc, i64 321582}
!39 = !{ptr @redirect_edge_var_map_add, ptr @VEC_edge_var_map_heap_safe_push, i64 543441}
!40 = !{ptr @VEC_edge_var_map_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 322228}
!41 = !{ptr @VEC_edge_var_map_heap_safe_push, ptr @VEC_edge_var_map_heap_reserve, i64 543441}
!42 = !{ptr @VEC_edge_var_map_heap_safe_push, ptr @VEC_edge_var_map_base_quick_push, i64 543441}
!43 = !{ptr @VEC_edge_var_map_heap_reserve, ptr @VEC_edge_var_map_base_space, i64 543441}
!44 = !{ptr @VEC_edge_var_map_heap_reserve, ptr @vec_heap_o_reserve, i64 3047}
!45 = !{ptr @redirect_edge_var_map_clear, ptr @pointer_map_contains, i64 1678885}
!46 = !{ptr @redirect_edge_var_map_clear, ptr @VEC_edge_var_map_heap_free, i64 808039}
!47 = !{ptr @VEC_edge_var_map_heap_free, ptr @free, i64 322225}
!48 = !{ptr @redirect_edge_var_map_dup, ptr @pointer_map_insert, i64 2334}
!49 = !{ptr @redirect_edge_var_map_dup, ptr @pointer_map_contains, i64 2334}
!50 = !{ptr @redirect_edge_var_map_dup, ptr @VEC_edge_var_map_heap_copy, i64 1}
!51 = !{ptr @redirect_edge_var_map_dup, ptr @VEC_edge_var_map_heap_alloc, i64 645}
!52 = !{ptr @redirect_edge_var_map_vector, ptr @pointer_map_contains, i64 383723}
!53 = !{ptr @redirect_edge_var_map_destroy, ptr @pointer_map_traverse, i64 5255}
!54 = !{ptr @redirect_edge_var_map_destroy, ptr @pointer_map_destroy, i64 5255}
!55 = !{ptr @free_var_map_entry, ptr @VEC_edge_var_map_heap_free, i64 185969}
!56 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_var_map_clear, i64 797196}
!57 = !{ptr @ssa_redirect_edge, ptr @gsi_start_phis, i64 797196}
!58 = !{ptr @ssa_redirect_edge, ptr @gsi_end_p, i64 1358426}
!59 = !{ptr @ssa_redirect_edge, ptr @gsi_stmt, i64 561230}
!60 = !{ptr @ssa_redirect_edge, ptr @gimple_phi_arg_def, i64 561230}
!61 = !{ptr @ssa_redirect_edge, ptr @gimple_phi_arg_location, i64 561230}
!62 = !{ptr @ssa_redirect_edge, ptr @gimple_phi_result, i64 543440}
!63 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_var_map_add, i64 543440}
!64 = !{ptr @ssa_redirect_edge, ptr @gsi_next, i64 561230}
!65 = !{ptr @ssa_redirect_edge, ptr @redirect_edge_succ_nodup, i64 797196}
!66 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 561230}
!67 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 561230}
!68 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 561230}
!69 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!70 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_vector, i64 69973}
!71 = !{ptr @flush_pending_stmts, ptr @gsi_start_phis, i64 65113}
!72 = !{ptr @flush_pending_stmts, ptr @gsi_end_p, i64 125831}
!73 = !{ptr @flush_pending_stmts, ptr @VEC_edge_var_map_base_iterate, i64 93275}
!74 = !{ptr @flush_pending_stmts, ptr @gsi_stmt, i64 60718}
!75 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_def, i64 60718}
!76 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_location, i64 60718}
!77 = !{ptr @flush_pending_stmts, ptr @add_phi_arg, i64 60718}
!78 = !{ptr @flush_pending_stmts, ptr @gsi_next, i64 60718}
!79 = !{ptr @flush_pending_stmts, ptr @redirect_edge_var_map_clear, i64 65113}
!80 = !{ptr @target_for_debug_bind, ptr @decl_value_expr_lookup, i64 1}
!81 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 12316}
!82 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 6199}
!83 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 110602}
!84 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 110601}
!85 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 110601}
!86 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 1905}
!87 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 1891}
!88 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 13}
!89 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 96810}
!90 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 119214}
!91 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 15739}
!92 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 6211}
!93 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 6211}
!94 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 1905}
!95 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 15737}
!96 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 6209}
!97 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 9527}
!98 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 4305}
!99 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 1}
!100 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 13}
!101 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 6211}
!102 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 1905}
!103 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 1905}
!104 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!105 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 1905}
!106 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 1904}
!107 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 1904}
!108 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 1}
!109 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 1}
!110 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 3810}
!111 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!112 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 4306}
!113 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 4306}
!114 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1405410}
!115 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!116 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 4306}
!117 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 4306}
!118 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 4306}
!119 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 4306}
!120 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 4306}
!121 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 4306}
!122 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 4306}
!123 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 172166}
!124 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 379578}
!125 = !{ptr @insert_debug_temps_for_defs, ptr @gsi_stmt, i64 1}
!126 = !{ptr @insert_debug_temps_for_defs, ptr @gimple_code, i64 1}
!127 = !{ptr @insert_debug_temps_for_defs, ptr @op_iter_done, i64 13}
!128 = !{ptr @insert_debug_temps_for_defs, ptr @get_def_from_ptr, i64 12}
!129 = !{ptr @insert_debug_temps_for_defs, ptr @insert_debug_temp_for_var_def, i64 6}
!130 = !{ptr @insert_debug_temps_for_defs, ptr @op_iter_next_def, i64 12}
!131 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 4306}
!132 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 4306}
!133 = !{ptr @release_defs_bitset, ptr @bmp_iter_set_init, i64 6011}
!134 = !{ptr @release_defs_bitset, ptr @bmp_iter_set, i64 18326}
!135 = !{ptr @release_defs_bitset, ptr @VEC_tree_base_index, i64 12315}
!136 = !{ptr @release_defs_bitset, ptr @first_imm_use_stmt, i64 12315}
!137 = !{ptr @release_defs_bitset, ptr @end_imm_use_stmt_p, i64 15344}
!138 = !{ptr @release_defs_bitset, ptr @gimple_code, i64 15344}
!139 = !{ptr @release_defs_bitset, ptr @is_gimple_debug, i64 6620}
!140 = !{ptr @release_defs_bitset, ptr @op_iter_init_def, i64 6618}
!141 = !{ptr @release_defs_bitset, ptr @op_iter_done, i64 208740}
!142 = !{ptr @release_defs_bitset, ptr @get_def_from_ptr, i64 208642}
!143 = !{ptr @release_defs_bitset, ptr @bitmap_bit_p, i64 208642}
!144 = !{ptr @release_defs_bitset, ptr @op_iter_next_def, i64 202122}
!145 = !{ptr @release_defs_bitset, ptr @end_imm_use_stmt_traverse, i64 6520}
!146 = !{ptr @release_defs_bitset, ptr @next_imm_use_stmt, i64 3029}
!147 = !{ptr @release_defs_bitset, ptr @gsi_for_stmt, i64 5795}
!148 = !{ptr @release_defs_bitset, ptr @remove_phi_node, i64 1400}
!149 = !{ptr @release_defs_bitset, ptr @gsi_remove, i64 4395}
!150 = !{ptr @release_defs_bitset, ptr @release_defs, i64 4395}
!151 = !{ptr @release_defs_bitset, ptr @bitmap_clear_bit, i64 5795}
!152 = !{ptr @release_defs_bitset, ptr @bmp_iter_next, i64 12315}
!153 = !{ptr @end_imm_use_stmt_traverse, ptr @delink_imm_use, i64 4306}
!154 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 609555}
!155 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1445295}
!156 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1445295}
!157 = !{ptr @init_tree_ssa, ptr @ggc_alloc_cleared_stat, i64 10775}
!158 = !{ptr @init_tree_ssa, ptr @htab_create_alloc, i64 21550}
!159 = !{ptr @init_tree_ssa, ptr @pt_solution_reset, i64 21550}
!160 = !{ptr @init_tree_ssa, ptr @init_ssanames, i64 10775}
!161 = !{ptr @init_tree_ssa, ptr @init_phinodes, i64 10775}
!162 = !{ptr @delete_tree_ssa, ptr @first_referenced_var, i64 10775}
!163 = !{ptr @delete_tree_ssa, ptr @end_referenced_vars_p, i64 449507}
!164 = !{ptr @delete_tree_ssa, ptr @is_global_var, i64 438732}
!165 = !{ptr @delete_tree_ssa, ptr @var_ann, i64 399040}
!166 = !{ptr @delete_tree_ssa, ptr @ggc_free, i64 399039}
!167 = !{ptr @delete_tree_ssa, ptr @next_referenced_var, i64 438732}
!168 = !{ptr @delete_tree_ssa, ptr @gimple_referenced_vars, i64 10775}
!169 = !{ptr @delete_tree_ssa, ptr @htab_delete, i64 21550}
!170 = !{ptr @delete_tree_ssa, ptr @fini_ssanames, i64 10775}
!171 = !{ptr @delete_tree_ssa, ptr @fini_phinodes, i64 10775}
!172 = !{ptr @delete_tree_ssa, ptr @ssa_operands_active, i64 10775}
!173 = !{ptr @delete_tree_ssa, ptr @fini_ssa_operands, i64 10774}
!174 = !{ptr @delete_tree_ssa, ptr @delete_alias_heapvars, i64 10775}
!175 = !{ptr @delete_tree_ssa, ptr @pt_solution_reset, i64 21550}
!176 = !{ptr @delete_tree_ssa, ptr @pointer_map_destroy, i64 160}
!177 = !{ptr @delete_tree_ssa, ptr @redirect_edge_var_map_destroy, i64 10775}
!178 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 46393}
!179 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 46393}
!180 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 2146119}
!181 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 2099726}
!182 = !{ptr @first_htab_element, ptr @htab_size, i64 46393}
!183 = !{ptr @useless_type_conversion_p, ptr @useless_type_conversion_p, i64 4606}
!184 = !{ptr @useless_type_conversion_p, ptr @vector_type_mode, i64 172}
!185 = !{ptr @useless_type_conversion_p, ptr @get_deref_alias_set, i64 244400}
!186 = !{ptr @useless_type_conversion_p, ptr @types_compatible_p, i64 63490}
!187 = !{ptr @useless_type_conversion_p, ptr @tree_int_cst_equal, i64 179}
!188 = !{ptr @types_compatible_p, ptr @useless_type_conversion_p, i64 212375}
!189 = !{ptr @tree_ssa_useless_type_conversion, ptr @useless_type_conversion_p, i64 362762}
!190 = !{ptr @tree_ssa_strip_useless_type_conversions, ptr @tree_ssa_useless_type_conversion, i64 9115723}
!191 = !{ptr @ssa_undefined_value_p, ptr @gimple_nop_p, i64 609553}
!192 = !{ptr @execute_update_addresses_taken, ptr @bitmap_obstack_alloc_stat, i64 71236}
!193 = !{ptr @execute_update_addresses_taken, ptr @gsi_start_bb, i64 1445255}
!194 = !{ptr @execute_update_addresses_taken, ptr @gsi_end_p, i64 7203177}
!195 = !{ptr @execute_update_addresses_taken, ptr @gsi_stmt, i64 4372779}
!196 = !{ptr @execute_update_addresses_taken, ptr @gimple_code, i64 3694434}
!197 = !{ptr @execute_update_addresses_taken, ptr @gimple_ior_addresses_taken, i64 3694434}
!198 = !{ptr @execute_update_addresses_taken, ptr @gimple_get_lhs, i64 2462956}
!199 = !{ptr @execute_update_addresses_taken, ptr @handled_component_p, i64 2292233}
!200 = !{ptr @execute_update_addresses_taken, ptr @get_base_address, i64 205193}
!201 = !{ptr @execute_update_addresses_taken, ptr @bitmap_set_bit, i64 64626}
!202 = !{ptr @execute_update_addresses_taken, ptr @gsi_next, i64 4372779}
!203 = !{ptr @execute_update_addresses_taken, ptr @gsi_start_phis, i64 1385143}
!204 = !{ptr @execute_update_addresses_taken, ptr @gimple_phi_num_args, i64 1876811}
!205 = !{ptr @execute_update_addresses_taken, ptr @gimple_phi_arg_imm_use_ptr, i64 1401562}
!206 = !{ptr @execute_update_addresses_taken, ptr @get_use_from_ptr, i64 1401562}
!207 = !{ptr @execute_update_addresses_taken, ptr @first_referenced_var, i64 35616}
!208 = !{ptr @execute_update_addresses_taken, ptr @end_referenced_vars_p, i64 1696431}
!209 = !{ptr @execute_update_addresses_taken, ptr @is_global_var, i64 1660815}
!210 = !{ptr @execute_update_addresses_taken, ptr @bitmap_bit_p, i64 3041076}
!211 = !{ptr @execute_update_addresses_taken, ptr @is_gimple_reg_type, i64 1056}
!212 = !{ptr @execute_update_addresses_taken, ptr @is_gimple_reg, i64 1055}
!213 = !{ptr @execute_update_addresses_taken, ptr @mark_sym_for_renaming, i64 409}
!214 = !{ptr @execute_update_addresses_taken, ptr @fwrite, i64 1}
!215 = !{ptr @execute_update_addresses_taken, ptr @print_generic_expr, i64 1}
!216 = !{ptr @execute_update_addresses_taken, ptr @fputc, i64 1}
!217 = !{ptr @execute_update_addresses_taken, ptr @next_referenced_var, i64 1660815}
!218 = !{ptr @execute_update_addresses_taken, ptr @gimple_references_memory_p, i64 203096}
!219 = !{ptr @execute_update_addresses_taken, ptr @is_gimple_debug, i64 92499}
!220 = !{ptr @execute_update_addresses_taken, ptr @update_stmt, i64 110597}
!221 = !{ptr @execute_update_addresses_taken, ptr @update_ssa, i64 532}
!222 = !{ptr @execute_update_addresses_taken, ptr @bitmap_obstack_free, i64 71236}
!223 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 203106}
!224 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 167859}
!225 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!226 = !{!"function_entry_count", i64 543441}
!227 = !{!228, !228, i64 0}
!228 = !{!"any pointer", !229, i64 0}
!229 = !{!"omnipotent char", !230, i64 0}
!230 = !{!"Simple C/C++ TBAA"}
!231 = !{!"branch_weights", i32 5256, i32 538187}
!232 = !{!"branch_weights", i32 321583, i32 221860}
!233 = !{!234, !228, i64 8}
!234 = !{!"_edge_var_map", !228, i64 0, !228, i64 8, !235, i64 16}
!235 = !{!"int", !229, i64 0}
!236 = !{!234, !228, i64 0}
!237 = !{!234, !235, i64 16}
!238 = !{!"branch_weights", i32 218896, i32 324547}
!239 = !{!"function_entry_count", i64 322228}
!240 = !{!"tree-ssa.c:VEC_edge_var_map_heap_alloc"}
!241 = !{!"tree-ssa.c:VEC_edge_var_map_heap_safe_push"}
!242 = !{!"tree-ssa.c:VEC_edge_var_map_heap_reserve"}
!243 = !{!"branch_weights", i32 3047, i32 540396}
!244 = !{!"tree-ssa.c:VEC_edge_var_map_base_quick_push"}
!245 = !{!246, !235, i64 0}
!246 = !{!"VEC_edge_var_map_base", !235, i64 0, !235, i64 4, !229, i64 8}
!247 = !{!"branch_weights", i32 1, i32 543442}
!248 = !{i64 0, i64 8, !227, i64 8, i64 8, !227, i64 16, i64 4, !249}
!249 = !{!235, !235, i64 0}
!250 = !{!"tree-ssa.c:VEC_edge_var_map_base_space"}
!251 = !{!246, !235, i64 4}
!252 = !{!"function_entry_count", i64 1903570}
!253 = !{!"branch_weights", i32 224685, i32 1678887}
!254 = !{!"branch_weights", i32 870848, i32 808040}
!255 = !{!"function_entry_count", i64 994008}
!256 = !{!"tree-ssa.c:VEC_edge_var_map_heap_free"}
!257 = !{!"branch_weights", i32 671784, i32 322226}
!258 = !{!"function_entry_count", i64 2897}
!259 = !{!"branch_weights", i32 563, i32 2336}
!260 = !{!"branch_weights", i32 1690, i32 647}
!261 = !{!"branch_weights", i32 647, i32 1}
!262 = !{!"function_entry_count", i64 0}
!263 = !{!"tree-ssa.c:VEC_edge_var_map_heap_copy"}
!264 = !{!265, !235, i64 0}
!265 = !{!"VEC_edge_var_map_heap", !246, i64 0}
!266 = !{!"function_entry_count", i64 387338}
!267 = !{!"branch_weights", i32 3615, i32 383725}
!268 = !{!"branch_weights", i32 45671, i32 338055}
!269 = !{!"function_entry_count", i64 10775}
!270 = !{!"branch_weights", i32 5521, i32 5256}
!271 = !{!"function_entry_count", i64 185969}
!272 = !{!"tree-ssa.c:free_var_map_entry"}
!273 = !{!"function_entry_count", i64 797196}
!274 = !{!275, !228, i64 8}
!275 = !{!"edge_def", !228, i64 0, !228, i64 8, !229, i64 16, !228, i64 24, !228, i64 32, !235, i64 40, !235, i64 44, !235, i64 48, !235, i64 52, !276, i64 56}
!276 = !{!"long", !229, i64 0}
!277 = !{i8 0, i8 2}
!278 = !{!"branch_weights", i32 561231, i32 235966}
!279 = !{!275, !235, i64 44}
!280 = !{!"branch_weights", i32 17790, i32 543442}
!281 = !{!"branch_weights", i32 0, i32 561231}
!282 = distinct !{!282, !283}
!283 = !{!"llvm.loop.mustprogress"}
!284 = !{!"function_entry_count", i64 8748360}
!285 = !{!"tree-ssa.c:gsi_end_p"}
!286 = !{!287, !228, i64 0}
!287 = !{!"", !228, i64 0, !228, i64 8, !228, i64 16}
!288 = !{!"function_entry_count", i64 5055574}
!289 = !{!"tree-ssa.c:gsi_stmt"}
!290 = !{!291, !228, i64 0}
!291 = !{!"gimple_seq_node_d", !228, i64 0, !228, i64 8, !228, i64 16}
!292 = !{!"function_entry_count", i64 561230}
!293 = !{!"tree-ssa.c:gimple_phi_arg_def"}
!294 = !{!"tree-ssa.c:gimple_phi_arg_location"}
!295 = !{!296, !235, i64 40}
!296 = !{!"phi_arg_d", !297, i64 0, !228, i64 32, !235, i64 40}
!297 = !{!"ssa_use_operand_d", !228, i64 0, !228, i64 8, !229, i64 16, !228, i64 24}
!298 = !{!"function_entry_count", i64 545346}
!299 = !{!"tree-ssa.c:gimple_phi_result"}
!300 = !{!229, !229, i64 0}
!301 = !{!"tree-ssa.c:gsi_next"}
!302 = !{!291, !228, i64 16}
!303 = !{!"function_entry_count", i64 2527870}
!304 = !{!"tree-ssa.c:gimple_phi_arg"}
!305 = !{!"branch_weights", i32 1, i32 2527871}
!306 = !{!"function_entry_count", i64 1978570}
!307 = !{!"tree-ssa.c:get_use_from_ptr"}
!308 = !{!297, !228, i64 24}
!309 = !{!"function_entry_count", i64 69973}
!310 = !{!"branch_weights", i32 4860, i32 65115}
!311 = !{!"branch_weights", i32 65114, i32 1}
!312 = !{i32 0, i32 2}
!313 = !{!"branch_weights", i32 65115, i32 121441}
!314 = !{!"branch_weights", i32 56327, i32 65114}
!315 = distinct !{!315, !283}
!316 = !{!"function_entry_count", i64 121440}
!317 = !{!"tree-ssa.c:VEC_edge_var_map_base_iterate"}
!318 = !{!"branch_weights", i32 121441, i32 1}
!319 = !{!"tree-ssa.c:redirect_edge_var_map_def"}
!320 = !{!"tree-ssa.c:redirect_edge_var_map_location"}
!321 = !{!"function_entry_count", i64 697129}
!322 = !{!"branch_weights", i32 697129, i32 1}
!323 = !{!"branch_weights", i32 1, i32 0}
!324 = distinct !{!324, !283}
!325 = !{i32 0, i32 256}
!326 = distinct !{!326, !283}
!327 = distinct !{!327, !283}
!328 = !{!"tree-ssa.c:first_readonly_imm_use"}
!329 = !{!330, !228, i64 8}
!330 = !{!"immediate_use_iterator_d", !228, i64 0, !228, i64 8, !297, i64 16, !228, i64 48}
!331 = !{!297, !228, i64 8}
!332 = !{!330, !228, i64 0}
!333 = !{!"tree-ssa.c:end_readonly_imm_use_p"}
!334 = !{!"tree-ssa.c:gimple_debug_bind_p"}
!335 = !{!"tree-ssa.c:gimple_debug_bind_get_value"}
!336 = !{!"tree-ssa.c:next_readonly_imm_use"}
!337 = !{!"function_entry_count", i64 5384047}
!338 = !{!"tree-ssa.c:gimple_code"}
!339 = !{!"tree-ssa.c:find_released_ssa_name"}
!340 = !{!341, !229, i64 41}
!341 = !{!"walk_stmt_info", !287, i64 0, !228, i64 24, !228, i64 32, !229, i64 40, !229, i64 41, !229, i64 42, !229, i64 43, !228, i64 48}
!342 = !{!"tree-ssa.c:is_gimple_assign"}
!343 = !{!"tree-ssa.c:gimple_bb"}
!344 = !{!"function_entry_count", i64 12316}
!345 = !{!"tree-ssa.c:first_imm_use_stmt"}
!346 = !{!"branch_weights", i32 6200, i32 6118}
!347 = !{!"function_entry_count", i64 28442}
!348 = !{!"tree-ssa.c:end_imm_use_stmt_p"}
!349 = !{!"tree-ssa.c:first_imm_use_on_stmt"}
!350 = !{!330, !228, i64 48}
!351 = !{!"tree-ssa.c:end_imm_use_on_stmt_p"}
!352 = !{!"tree-ssa.c:set_ssa_use_from_ptr"}
!353 = !{!"tree-ssa.c:next_imm_use_on_stmt"}
!354 = !{!"tree-ssa.c:gimple_debug_bind_reset_value"}
!355 = !{!"function_entry_count", i64 110602}
!356 = !{!"tree-ssa.c:update_stmt"}
!357 = !{!"branch_weights", i32 1, i32 110603}
!358 = !{!"function_entry_count", i64 1905}
!359 = !{!"tree-ssa.c:next_imm_use_stmt"}
!360 = !{!330, !228, i64 24}
!361 = !{!"branch_weights", i32 13, i32 1894}
!362 = !{!330, !228, i64 16}
!363 = !{!"branch_weights", i32 1, i32 1894}
!364 = !{!"function_entry_count", i64 96810}
!365 = !{!"tree-ssa.c:is_gimple_debug"}
!366 = !{!"tree-ssa.c:gimple_op"}
!367 = !{!"function_entry_count", i64 119214}
!368 = !{!"tree-ssa.c:gimple_has_ops"}
!369 = !{!"tree-ssa.c:gimple_ops"}
!370 = !{!276, !276, i64 0}
!371 = !{!"tree-ssa.c:gimple_statement_structure"}
!372 = !{!"tree-ssa.c:gss_for_code"}
!373 = !{!"function_entry_count", i64 6211}
!374 = !{!"tree-ssa.c:link_use_stmts_after"}
!375 = !{!"branch_weights", i32 1906, i32 4307}
!376 = !{!"branch_weights", i32 1905, i32 1}
!377 = !{!"branch_weights", i32 1906, i32 1906}
!378 = !{!"branch_weights", i32 1906, i32 1905}
!379 = distinct !{!379, !283}
!380 = !{!"branch_weights", i32 1, i32 4307}
!381 = !{!"branch_weights", i32 4306, i32 1}
!382 = !{!"branch_weights", i32 4307, i32 1414}
!383 = !{!"branch_weights", i32 1414, i32 4306}
!384 = distinct !{!384, !283}
!385 = !{!"branch_weights", i32 6200, i32 13}
!386 = !{!"tree-ssa.c:op_iter_init_phiuse"}
!387 = !{!388, !229, i64 0}
!388 = !{!"ssa_operand_iterator_d", !229, i64 0, !235, i64 4, !228, i64 8, !228, i64 16, !235, i64 24, !235, i64 28, !228, i64 32}
!389 = !{!"branch_weights", i32 1, i32 1906}
!390 = !{!388, !228, i64 32}
!391 = !{!388, !235, i64 28}
!392 = !{!388, !235, i64 4}
!393 = !{!"function_entry_count", i64 20046}
!394 = !{!"tree-ssa.c:op_iter_done"}
!395 = !{!"tree-ssa.c:move_use_after_head"}
!396 = !{!"branch_weights", i32 6212, i32 1}
!397 = !{!"function_entry_count", i64 15740}
!398 = !{!"tree-ssa.c:op_iter_next_use"}
!399 = !{!388, !228, i64 16}
!400 = !{!"branch_weights", i32 10022, i32 5720}
!401 = !{!402, !228, i64 0}
!402 = !{!"use_optype_d", !228, i64 0, !297, i64 8}
!403 = !{!388, !235, i64 24}
!404 = !{!"branch_weights", i32 3811, i32 6212}
!405 = !{!"function_entry_count", i64 4306}
!406 = !{!"tree-ssa.c:op_iter_init_use"}
!407 = !{!"branch_weights", i32 18550249, i32 8615}
!408 = !{!"tree-ssa.c:gimple_vuse_op"}
!409 = !{!402, !228, i64 32}
!410 = !{!"tree-ssa.c:delink_imm_use"}
!411 = !{!297, !228, i64 0}
!412 = !{!"branch_weights", i32 1, i32 6212}
!413 = !{!"tree-ssa.c:link_imm_use_to_list"}
!414 = !{!"tree-ssa.c:clear_and_done_ssa_iter"}
!415 = !{!"function_entry_count", i64 1878766}
!416 = !{!"tree-ssa.c:gimple_phi_num_args"}
!417 = !{!"function_entry_count", i64 1405410}
!418 = !{!"tree-ssa.c:gimple_phi_arg_imm_use_ptr"}
!419 = !{!"function_entry_count", i64 8612}
!420 = !{!"tree-ssa.c:op_iter_init"}
!421 = !{!"branch_weights", i32 1, i32 8613}
!422 = !{!"branch_weights", i32 8613, i32 1}
!423 = !{!"branch_weights", i32 4307, i32 4307}
!424 = !{!388, !228, i64 8}
!425 = !{!"branch_weights", i32 249302, i32 2147234346}
!426 = !{!"branch_weights", i32 4307, i32 1}
!427 = !{!428, !228, i64 0}
!428 = !{!"def_optype_d", !228, i64 0, !228, i64 8}
!429 = !{!"tree-ssa.c:gimple_def_ops"}
!430 = !{!"tree-ssa.c:gimple_vdef"}
!431 = !{!"tree-ssa.c:gimple_use_ops"}
!432 = !{!"function_entry_count", i64 172166}
!433 = !{!"tree-ssa.c:gimple_vuse"}
!434 = !{!"branch_weights", i32 1, i32 172167}
!435 = !{!"function_entry_count", i64 379578}
!436 = !{!"tree-ssa.c:gimple_has_mem_ops"}
!437 = !{!"tree-ssa.c:link_imm_use"}
!438 = !{!"tree-ssa.c:gimple_set_op"}
!439 = !{!"tree-ssa.c:gimple_num_ops"}
!440 = !{!"function_entry_count", i64 1227636}
!441 = !{!"branch_weights", i32 1227637, i32 1}
!442 = distinct !{!442, !283}
!443 = !{!"tree-ssa.c:op_iter_init_phidef"}
!444 = !{!"tree-ssa.c:op_iter_init_def"}
!445 = !{!"tree-ssa.c:get_def_from_ptr"}
!446 = !{!"tree-ssa.c:op_iter_next_def"}
!447 = !{!428, !228, i64 8}
!448 = !{!"tree-ssa.c:gimple_phi_result_ptr"}
!449 = !{!"function_entry_count", i64 5908}
!450 = !{!451, !228, i64 0}
!451 = !{!"bitmap_head_def", !228, i64 0, !228, i64 8, !235, i64 16, !228, i64 24}
!452 = !{!"branch_weights", i32 1, i32 5908}
!453 = !{!"branch_weights", i32 5908, i32 104}
!454 = distinct !{!454, !283}
!455 = !{!"branch_weights", i32 1, i32 6011}
!456 = !{!457, !228, i64 24}
!457 = !{!"function", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48, !228, i64 56, !228, i64 64, !228, i64 72, !228, i64 80, !228, i64 88, !228, i64 96, !235, i64 104, !235, i64 108, !235, i64 112, !235, i64 116, !235, i64 120, !235, i64 124, !228, i64 128, !235, i64 136, !235, i64 137, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139}
!458 = !{!459, !228, i64 16}
!459 = !{!"gimple_df", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !460, i64 32, !460, i64 48, !228, i64 64, !228, i64 72, !228, i64 80, !228, i64 88, !235, i64 96, !461, i64 104}
!460 = !{!"pt_solution", !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !228, i64 8}
!461 = !{!"ssa_operands", !228, i64 0, !235, i64 8, !235, i64 12, !229, i64 16, !228, i64 24, !228, i64 32}
!462 = !{!"branch_weights", i32 6212, i32 1799}
!463 = !{!"branch_weights", i32 127, i32 1}
!464 = !{!"branch_weights", i32 551169, i32 127}
!465 = distinct !{!465, !283}
!466 = !{!"branch_weights", i32 0, i32 6212}
!467 = distinct !{!467, !283}
!468 = !{!"branch_weights", i32 1936, i32 6076}
!469 = !{!"branch_weights", i32 6011, i32 6306}
!470 = distinct !{!470, !283}
!471 = !{!"function_entry_count", i64 6011}
!472 = !{!"tree-ssa.c:bmp_iter_set_init"}
!473 = !{!474, !228, i64 0}
!474 = !{!"", !228, i64 0, !228, i64 8, !235, i64 16, !276, i64 24}
!475 = !{!474, !228, i64 8}
!476 = !{!"branch_weights", i32 1, i32 6012}
!477 = !{!478, !235, i64 16}
!478 = !{!"bitmap_element_def", !228, i64 0, !228, i64 8, !235, i64 16, !229, i64 24}
!479 = !{!474, !235, i64 16}
!480 = !{!474, !276, i64 24}
!481 = !{!"function_entry_count", i64 18327}
!482 = !{!"tree-ssa.c:bmp_iter_set"}
!483 = !{!"branch_weights", i32 9685, i32 8644}
!484 = !{!"branch_weights", i32 12316, i32 1}
!485 = !{!"branch_weights", i32 213352, i32 12316}
!486 = distinct !{!486, !283}
!487 = !{!"branch_weights", i32 1, i32 6769}
!488 = !{!"branch_weights", i32 3855, i32 3674}
!489 = !{!"branch_weights", i32 6769, i32 759}
!490 = distinct !{!490, !283}
!491 = !{!478, !228, i64 0}
!492 = !{!"branch_weights", i32 6012, i32 759}
!493 = !{!"tree-ssa.c:VEC_tree_base_index"}
!494 = !{!"tree-ssa.c:end_imm_use_stmt_traverse"}
!495 = !{!"tree-ssa.c:bmp_iter_next"}
!496 = distinct !{!496, !283}
!497 = !{!457, !228, i64 8}
!498 = !{!499, !228, i64 0}
!499 = !{!"control_flow_graph", !228, i64 0, !228, i64 8, !228, i64 16, !235, i64 24, !235, i64 28, !235, i64 32, !228, i64 40, !235, i64 48, !229, i64 52, !229, i64 60, !235, i64 68, !235, i64 72}
!500 = !{!501, !228, i64 56}
!501 = !{!"basic_block_def", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !229, i64 32, !228, i64 48, !228, i64 56, !229, i64 64, !276, i64 72, !235, i64 80, !235, i64 84, !235, i64 88, !235, i64 92, !235, i64 96}
!502 = !{!499, !228, i64 8}
!503 = !{i64 0, i64 4, !249, i64 8, i64 8, !227}
!504 = !{i64 0, i64 8, !227}
!505 = !{!275, !228, i64 24}
!506 = !{!275, !228, i64 0}
!507 = !{!501, !235, i64 80}
!508 = distinct !{!508, !283}
!509 = distinct !{!509, !283}
!510 = !{i64 0, i64 8, !227, i64 8, i64 8, !227, i64 16, i64 8, !227}
!511 = distinct !{!511, !283}
!512 = distinct !{!512, !283}
!513 = distinct !{!513, !283}
!514 = distinct !{!514, !283}
!515 = !{!"tree-ssa.c:VEC_tree_base_length"}
!516 = !{!517, !235, i64 0}
!517 = !{!"VEC_tree_base", !235, i64 0, !235, i64 4, !229, i64 8}
!518 = !{!"function_entry_count", i64 609555}
!519 = !{!"tree-ssa.c:gimple_nop_p"}
!520 = !{!"tree-ssa.c:verify_def"}
!521 = !{!"tree-ssa.c:ei_start_1"}
!522 = !{!"tree-ssa.c:ei_cond"}
!523 = !{!"tree-ssa.c:ei_next"}
!524 = !{!525, !235, i64 0}
!525 = !{!"", !235, i64 0, !228, i64 8}
!526 = !{!"tree-ssa.c:verify_phi_args"}
!527 = !{!501, !228, i64 0}
!528 = distinct !{!528, !283}
!529 = !{!275, !235, i64 48}
!530 = distinct !{!530, !283}
!531 = !{!"function_entry_count", i64 1445295}
!532 = !{!"tree-ssa.c:gsi_start_bb"}
!533 = !{!287, !228, i64 8}
!534 = !{!287, !228, i64 16}
!535 = !{!"tree-ssa.c:gimple_modified_p"}
!536 = !{!"tree-ssa.c:gimple_assign_lhs"}
!537 = !{!"tree-ssa.c:gimple_debug_bind_has_value_p"}
!538 = !{!"tree-ssa.c:gimple_vdef_op"}
!539 = !{!"tree-ssa.c:verify_ssa_name"}
!540 = !{!"tree-ssa.c:op_iter_init_tree"}
!541 = !{!"tree-ssa.c:op_iter_next_tree"}
!542 = !{!"tree-ssa.c:verify_use"}
!543 = !{!"tree-ssa.c:ei_end_p"}
!544 = !{!"tree-ssa.c:ei_edge"}
!545 = !{!"tree-ssa.c:VEC_edge_base_length"}
!546 = !{!547, !235, i64 0}
!547 = !{!"VEC_edge_base", !235, i64 0, !235, i64 4, !229, i64 8}
!548 = !{!"tree-ssa.c:ei_container"}
!549 = !{!"tree-ssa.c:VEC_edge_base_index"}
!550 = !{!"function_entry_count", i64 2613219}
!551 = !{!"tree-ssa.c:handled_component_p"}
!552 = !{!"branch_weights", i32 2392636, i32 1, i32 169162, i32 51424, i32 1, i32 1, i32 1, i32 1}
!553 = !{!"tree-ssa.c:bb_seq"}
!554 = !{!501, !235, i64 96}
!555 = !{!"branch_weights", i32 1445296, i32 1}
!556 = !{!"branch_weights", i32 1, i32 1445296}
!557 = !{!558, !228, i64 0}
!558 = !{!"gimple_bb_info", !228, i64 0, !228, i64 8}
!559 = !{!"tree-ssa.c:gimple_seq_first"}
!560 = !{!561, !228, i64 0}
!561 = !{!"gimple_seq_d", !228, i64 0, !228, i64 8, !228, i64 16}
!562 = !{!"tree-ssa.c:gimple_vop"}
!563 = !{!459, !228, i64 24}
!564 = !{!565, !235, i64 0}
!565 = !{!"int_tree_map", !235, i64 0, !228, i64 8}
!566 = !{!"function_entry_count", i64 2588229}
!567 = !{!"function_entry_count", i64 626229}
!568 = !{!459, !228, i64 0}
!569 = !{!459, !228, i64 80}
!570 = !{!"function_entry_count", i64 179}
!571 = !{!"tree-ssa.c:uid_ssaname_map_hash"}
!572 = !{!"function_entry_count", i64 322801}
!573 = !{!"tree-ssa.c:uid_ssaname_map_eq"}
!574 = !{!"branch_weights", i32 10775, i32 1}
!575 = !{!"branch_weights", i32 399078, i32 39696}
!576 = !{!"branch_weights", i32 1, i32 399078}
!577 = !{!"branch_weights", i32 135769039, i32 -1949829438, i32 7593855}
!578 = !{!"branch_weights", i32 1853, i32 21139}
!579 = !{!"branch_weights", i32 427998, i32 10775}
!580 = distinct !{!580, !283}
!581 = !{!"branch_weights", i32 1, i32 10776}
!582 = !{!459, !228, i64 64}
!583 = !{!"branch_weights", i32 10617, i32 160}
!584 = !{!459, !228, i64 8}
!585 = !{!"function_entry_count", i64 46393}
!586 = !{!"tree-ssa.c:first_referenced_var"}
!587 = !{!"function_entry_count", i64 2146119}
!588 = !{!"tree-ssa.c:end_referenced_vars_p"}
!589 = !{!"function_entry_count", i64 2099726}
!590 = !{!"tree-ssa.c:is_global_var"}
!591 = !{!"branch_weights", i32 1937458, i32 162270}
!592 = !{!"function_entry_count", i64 798154}
!593 = !{!"tree-ssa.c:var_ann"}
!594 = !{!"branch_weights", i32 135765907, i32 -1949838432, i32 7593510}
!595 = !{!"branch_weights", i32 3705, i32 42277}
!596 = !{!"tree-ssa.c:next_referenced_var"}
!597 = !{!"function_entry_count", i64 57168}
!598 = !{!"tree-ssa.c:gimple_referenced_vars"}
!599 = !{!"branch_weights", i32 1, i32 57169}
!600 = !{!"tree-ssa.c:first_htab_element"}
!601 = !{!602, !228, i64 24}
!602 = !{!"htab", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !276, i64 32, !276, i64 40, !276, i64 48, !235, i64 56, !235, i64 60, !228, i64 64, !228, i64 72, !228, i64 80, !228, i64 88, !228, i64 96, !235, i64 104}
!603 = !{!"branch_weights", i32 208426, i32 1}
!604 = distinct !{!604, !283}
!605 = !{!"branch_weights", i32 46394, i32 1}
!606 = !{!"tree-ssa.c:end_htab_p"}
!607 = !{!"tree-ssa.c:next_htab_element"}
!608 = !{!"branch_weights", i32 5031998, i32 46394}
!609 = !{!"function_entry_count", i64 2612396}
!610 = !{!"branch_weights", i32 -1249675782, i32 -969091943, i32 2438}
!611 = !{!"branch_weights", i32 44901738, i32 -1100913991, i32 230387}
!612 = !{!"branch_weights", i32 1344819, i32 1}
!613 = !{!"branch_weights", i32 -1064705413, i32 88806633, i32 461162801, i32 2810}
!614 = !{!"branch_weights", i32 163240, i32 820}
!615 = !{!"branch_weights", i32 163, i32 163078}
!616 = !{!"branch_weights", i32 1, i32 163}
!617 = !{!"branch_weights", i32 -1695683655, i32 65912071}
!618 = !{!"branch_weights", i32 1987750, i32 560421}
!619 = !{!"branch_weights", i32 29, i32 560393}
!620 = !{!"branch_weights", i32 4379, i32 556015}
!621 = !{!"branch_weights", i32 15, i32 556029}
!622 = !{!"branch_weights", i32 157, i32 555887}
!623 = !{!"branch_weights", i32 -1933550924, i32 527556807}
!624 = !{!"branch_weights", i32 -1763338498, i32 1971781977}
!625 = !{!"branch_weights", i32 -1140002124, i32 357847390}
!626 = !{!"branch_weights", i32 100421, i32 129054}
!627 = !{!"branch_weights", i32 951902318, i32 32768, i32 32766, i32 -1567624285, i32 -1567624285, i32 18129, i32 235682, i32 966842588}
!628 = !{!"branch_weights", i32 167881545, i32 1548793498, i32 1261485}
!629 = !{!"branch_weights", i32 59828743, i32 -864639535}
!630 = !{!"branch_weights", i32 6605696, i32 -877746447}
!631 = !{!"branch_weights", i32 116914, i32 1}
!632 = !{!"branch_weights", i32 22215, i32 96965}
!633 = !{!"branch_weights", i32 1, i32 22215}
!634 = !{!"branch_weights", i32 50379, i32 46587}
!635 = !{!"branch_weights", i32 1065240244, i32 20288, i32 263744, i32 1081959373}
!636 = !{!"branch_weights", i32 1, i32 13}
!637 = !{!"branch_weights", i32 258, i32 53073}
!638 = !{!"branch_weights", i32 258, i32 1}
!639 = !{!"branch_weights", i32 1, i32 258}
!640 = !{!"branch_weights", i32 62043588, i32 -1632923271}
!641 = !{!"branch_weights", i32 2395, i32 10}
!642 = !{!"branch_weights", i32 35, i32 2361}
!643 = !{!"branch_weights", i32 1, i32 2361}
!644 = !{!"branch_weights", i32 1, i32 839}
!645 = !{!"branch_weights", i32 1522, i32 1728}
!646 = !{!"branch_weights", i32 3446, i32 643}
!647 = !{!"branch_weights", i32 2410, i32 839}
!648 = distinct !{!648, !283}
!649 = !{!"branch_weights", i32 0, i32 -2147483648}
!650 = !{!"branch_weights", i32 25, i32 619}
!651 = !{!"branch_weights", i32 25, i32 1}
!652 = !{!653, !228, i64 832}
!653 = !{!"gcc_target", !654, i64 0, !656, i64 368, !657, i64 664, !235, i64 744, !228, i64 752, !228, i64 760, !228, i64 768, !228, i64 776, !228, i64 784, !228, i64 792, !228, i64 800, !228, i64 808, !228, i64 816, !228, i64 824, !228, i64 832, !228, i64 840, !228, i64 848, !228, i64 856, !228, i64 864, !228, i64 872, !228, i64 880, !228, i64 888, !228, i64 896, !228, i64 904, !228, i64 912, !228, i64 920, !228, i64 928, !228, i64 936, !228, i64 944, !228, i64 952, !228, i64 960, !228, i64 968, !228, i64 976, !228, i64 984, !228, i64 992, !228, i64 1000, !228, i64 1008, !228, i64 1016, !228, i64 1024, !228, i64 1032, !228, i64 1040, !228, i64 1048, !228, i64 1056, !276, i64 1064, !276, i64 1072, !228, i64 1080, !228, i64 1088, !228, i64 1096, !228, i64 1104, !228, i64 1112, !228, i64 1120, !228, i64 1128, !228, i64 1136, !228, i64 1144, !228, i64 1152, !228, i64 1160, !228, i64 1168, !658, i64 1176, !228, i64 1232, !228, i64 1240, !228, i64 1248, !228, i64 1256, !228, i64 1264, !228, i64 1272, !228, i64 1280, !228, i64 1288, !228, i64 1296, !228, i64 1304, !228, i64 1312, !228, i64 1320, !228, i64 1328, !228, i64 1336, !228, i64 1344, !228, i64 1352, !228, i64 1360, !228, i64 1368, !228, i64 1376, !228, i64 1384, !228, i64 1392, !228, i64 1400, !228, i64 1408, !228, i64 1416, !228, i64 1424, !228, i64 1432, !228, i64 1440, !228, i64 1448, !228, i64 1456, !276, i64 1464, !659, i64 1472, !228, i64 1664, !228, i64 1672, !228, i64 1680, !228, i64 1688, !228, i64 1696, !228, i64 1704, !228, i64 1712, !228, i64 1720, !228, i64 1728, !228, i64 1736, !228, i64 1744, !228, i64 1752, !228, i64 1760, !228, i64 1768, !228, i64 1776, !660, i64 1784, !661, i64 1792, !662, i64 1896, !663, i64 1968, !228, i64 2016, !229, i64 2024, !229, i64 2025, !229, i64 2026, !229, i64 2027, !229, i64 2028, !229, i64 2029, !229, i64 2030, !229, i64 2031, !229, i64 2032, !229, i64 2033, !229, i64 2034, !229, i64 2035}
!654 = !{!"asm_out", !228, i64 0, !228, i64 8, !228, i64 16, !655, i64 24, !655, i64 56, !228, i64 88, !228, i64 96, !228, i64 104, !228, i64 112, !228, i64 120, !228, i64 128, !228, i64 136, !228, i64 144, !228, i64 152, !228, i64 160, !228, i64 168, !228, i64 176, !228, i64 184, !228, i64 192, !228, i64 200, !228, i64 208, !228, i64 216, !228, i64 224, !228, i64 232, !228, i64 240, !228, i64 248, !228, i64 256, !228, i64 264, !228, i64 272, !228, i64 280, !228, i64 288, !228, i64 296, !228, i64 304, !228, i64 312, !228, i64 320, !228, i64 328, !228, i64 336, !228, i64 344, !228, i64 352, !228, i64 360}
!655 = !{!"asm_int_op", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24}
!656 = !{!"sched", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48, !228, i64 56, !228, i64 64, !228, i64 72, !228, i64 80, !228, i64 88, !228, i64 96, !228, i64 104, !228, i64 112, !228, i64 120, !228, i64 128, !228, i64 136, !228, i64 144, !228, i64 152, !228, i64 160, !228, i64 168, !228, i64 176, !228, i64 184, !228, i64 192, !228, i64 200, !228, i64 208, !228, i64 216, !228, i64 224, !228, i64 232, !228, i64 240, !228, i64 248, !228, i64 256, !228, i64 264, !228, i64 272, !228, i64 280, !228, i64 288}
!657 = !{!"vectorize", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48, !228, i64 56, !228, i64 64, !228, i64 72}
!658 = !{!"addr_space", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48}
!659 = !{!"calls", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48, !228, i64 56, !228, i64 64, !228, i64 72, !228, i64 80, !228, i64 88, !228, i64 96, !228, i64 104, !228, i64 112, !228, i64 120, !228, i64 128, !228, i64 136, !228, i64 144, !228, i64 152, !228, i64 160, !228, i64 168, !228, i64 176, !228, i64 184}
!660 = !{!"c", !228, i64 0}
!661 = !{!"cxx", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48, !228, i64 56, !228, i64 64, !228, i64 72, !228, i64 80, !228, i64 88, !228, i64 96}
!662 = !{!"emutls", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40, !228, i64 48, !228, i64 56, !229, i64 64, !229, i64 65}
!663 = !{!"target_option_hooks", !228, i64 0, !228, i64 8, !228, i64 16, !228, i64 24, !228, i64 32, !228, i64 40}
!664 = !{!"function_entry_count", i64 6029380}
!665 = !{!"branch_weights", i32 5873768, i32 155614}
!666 = !{!"branch_weights", i32 98854, i32 56761}
!667 = !{!"function_entry_count", i64 9250976}
!668 = !{!"branch_weights", i32 -1583271861, i32 105741347, i32 4859453, i32 6711, i32 67119}
!669 = !{!"function_entry_count", i64 9045397}
!670 = !{!"branch_weights", i32 8975072, i32 70326}
!671 = !{!"branch_weights", i32 70326, i32 0}
!672 = distinct !{!672, !283}
!673 = !{!"tree-ssa.c:walk_use_def_chains_1"}
!674 = distinct !{!674, !283}
!675 = distinct !{!675, !283}
!676 = distinct !{!676, !283}
!677 = !{!"function_entry_count", i64 686190}
!678 = !{!"branch_weights", i32 4762, i32 364953205, i32 -1392166381}
!679 = !{!"branch_weights", i32 609556, i32 1}
!680 = !{!"function_entry_count", i64 15616}
!681 = !{!"tree-ssa.c:gate_warn_uninitialized"}
!682 = !{!"tree-ssa.c:execute_early_warn_uninitialized"}
!683 = !{!"tree-ssa.c:warn_uninitialized_vars"}
!684 = !{!685, !229, i64 9}
!685 = !{!"walk_data", !228, i64 0, !229, i64 8, !229, i64 9}
!686 = distinct !{!686, !283}
!687 = !{!685, !229, i64 8}
!688 = !{!685, !228, i64 0}
!689 = !{!341, !228, i64 24}
!690 = distinct !{!690, !283}
!691 = !{!"tree-ssa.c:single_succ"}
!692 = !{!"tree-ssa.c:warn_uninitialized_var"}
!693 = !{!"tree-ssa.c:single_succ_edge"}
!694 = !{!501, !228, i64 8}
!695 = !{!"tree-ssa.c:single_succ_p"}
!696 = !{!"tree-ssa.c:is_gimple_call"}
!697 = !{!"tree-ssa.c:warn_uninit"}
!698 = !{i64 0, i64 8, !227, i64 8, i64 4, !249, i64 12, i64 4, !249, i64 16, i64 1, !300}
!699 = !{i64 0, i64 4, !249, i64 4, i64 4, !249, i64 8, i64 1, !300}
!700 = !{!457, !228, i64 48}
!701 = !{!457, !235, i64 116}
!702 = !{!703, !235, i64 8}
!703 = !{!"", !228, i64 0, !235, i64 8, !235, i64 12, !229, i64 16}
!704 = !{!"tree-ssa.c:gimple_has_location"}
!705 = !{!"tree-ssa.c:gimple_location"}
!706 = !{!"tree-ssa.c:execute_late_warn_uninitialized"}
!707 = distinct !{!707, !283}
!708 = distinct !{!708, !283}
!709 = !{!"tree-ssa.c:warn_uninitialized_phi"}
!710 = distinct !{!710, !283}
!711 = !{!"function_entry_count", i64 35618}
!712 = !{!"branch_weights", i32 1, i32 35618}
!713 = !{!"branch_weights", i32 35618, i32 1349564}
!714 = distinct !{!714, !283}
!715 = !{!"branch_weights", i32 1385181, i32 1}
!716 = !{!"branch_weights", i32 194629, i32 2613220}
!717 = !{!"branch_weights", i32 7, i32 2613214}
!718 = !{!"branch_weights", i32 7, i32 1}
!719 = !{!"branch_weights", i32 2392636, i32 220585}
!720 = !{!"branch_weights", i32 71415, i32 149171}
!721 = !{!"branch_weights", i32 2309357, i32 1385181}
!722 = distinct !{!722, !283}
!723 = !{!"branch_weights", i32 475262, i32 909920}
!724 = !{!"branch_weights", i32 1, i32 475261}
!725 = !{!"branch_weights", i32 11703, i32 1389899}
!726 = !{!"branch_weights", i32 207, i32 11497}
!727 = !{!"branch_weights", i32 1983, i32 9515}
!728 = !{!"branch_weights", i32 926340, i32 475261}
!729 = distinct !{!729, !283}
!730 = !{!"branch_weights", i32 0, i32 475262}
!731 = distinct !{!731, !283}
!732 = !{!"branch_weights", i32 1268713161, i32 71239}
!733 = !{!"branch_weights", i32 35618, i32 1}
!734 = !{!"branch_weights", i32 1526421, i32 134535}
!735 = !{!"branch_weights", i32 394, i32 1526028}
!736 = !{!"branch_weights", i32 1514900, i32 11129}
!737 = !{!"branch_weights", i32 1513845, i32 1056}
!738 = !{!"branch_weights", i32 648, i32 409}
!739 = !{!"branch_weights", i32 409, i32 1}
!740 = !{!"branch_weights", i32 1056, i32 1}
!741 = !{!"branch_weights", i32 1514900, i32 1}
!742 = !{!"branch_weights", i32 1513119, i32 1782}
!743 = !{!"branch_weights", i32 2954, i32 -2059099027}
!744 = !{!"branch_weights", i32 1625337, i32 35618}
!745 = distinct !{!745, !283}
!746 = !{!"branch_weights", i32 2115407355, i32 32076293}
!747 = !{!"branch_weights", i32 1, i32 531}
!748 = !{!"branch_weights", i32 531, i32 59584}
!749 = distinct !{!749, !283}
!750 = !{!"branch_weights", i32 60114, i32 1}
!751 = !{!"branch_weights", i32 92505, i32 110603}
!752 = !{!"branch_weights", i32 92505, i32 1}
!753 = !{!"branch_weights", i32 142993, i32 60114}
!754 = distinct !{!754, !283}
!755 = !{!"function_entry_count", i64 203106}
!756 = !{!"tree-ssa.c:gimple_references_memory_p"}
!757 = !{!"branch_weights", i32 35247, i32 167861}
