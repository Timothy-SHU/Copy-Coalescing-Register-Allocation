; ModuleID = 'ira-color.c'
source_filename = "ira-color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.edge_iterator = type { i32, ptr }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.ira_allocno_conflict_iterator = type { i8, ptr, i32, i32, i32, i32, i64 }
%struct.ira_allocno_iterator = type { i32 }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ira_spilled_reg_stack_slot = type { %struct.bitmap_head_def, ptr, i32 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.update_cost_queue_elem = type { i32, i32, ptr }
%struct.VEC_ira_allocno_t_base = type { i32, i32, [1 x ptr] }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@sorted_allocnos = internal unnamed_addr global ptr null, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"      Secondary allocation: assign hard reg %d to reg %d\0A\00", align 1
@processed_coalesced_allocno_bitmap = internal unnamed_addr global ptr null, align 8
@coloring_allocno_bitmap = internal unnamed_addr global ptr null, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@allocno_coalesced_p = internal unnamed_addr global i1 false, align 1
@regno_coalesced_allocno_cost = internal unnamed_addr global ptr null, align 8
@regno_coalesced_allocno_num = internal unnamed_addr global ptr null, align 8
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@flag_ira_share_spill_slots = external local_unnamed_addr global i32, align 4
@ira_reg_equiv_len = external local_unnamed_addr global i32, align 4
@ira_reg_equiv_const = external local_unnamed_addr global ptr, align 8
@ira_reg_equiv_invariant_p = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"      Slot %d (freq,size):\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" a%dr%d(%d,%d)\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_spilled_reg_stack_slots_num = external local_unnamed_addr global i32, align 4
@regno_max_ref_width = internal unnamed_addr global ptr null, align 8
@reg_renumber = external local_unnamed_addr global ptr, align 8
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_overall_cost = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ira-color.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"      Spill %d(a%d), cost=%d\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"      Spilled regs\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@consideration_allocno_bitmap = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"        Try assign %d(a%d), cost=%d\00", align 1
@ira_spilled_reg_stack_slots = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"      Assigning %d(freq=%d) slot %d of\00", align 1
@reg_info_p = external local_unnamed_addr global ptr, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"      Assigning %d(freq=%d) a new slot %d\0A\00", align 1
@inv_reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@allocno_priorities = internal unnamed_addr global ptr null, align 8
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@ira_conflict_id_allocno_map = external local_unnamed_addr global ptr, align 8
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@ira_reg_classes_intersect_p = external local_unnamed_addr global [27 x [27 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@assign_hard_reg.costs = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@assign_hard_reg.full_costs = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@ira_reg_mode_hard_regset = external local_unnamed_addr global [53 x [87 x i64]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@prohibited_class_mode_regs = external local_unnamed_addr global [27 x [87 x i64]], align 16
@allocated_hardreg_p = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@.str.13 = private unnamed_addr constant [38 x i8] c"(memory is more profitable %d vs %d) \00", align 1
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@allocno_stack_vec = internal global ptr null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"        Pushing\00", align 1
@update_cost_check = internal unnamed_addr global i32 0, align 4
@update_cost_queue = internal unnamed_addr global ptr null, align 8
@update_cost_queue_elems = internal unnamed_addr global ptr null, align 8
@update_cost_queue_tail = internal unnamed_addr global ptr null, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_copies_num = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"      Coalescing copy %d:a%dr%d-a%dr%d (freq=%d)\0A\00", align 1
@slot_coalesced_allocnos_live_ranges = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [50 x i8] c"      Coalescing spilled allocnos a%dr%d->a%dr%d\0A\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@flag_caller_saves = external local_unnamed_addr global i32, align 4
@caller_save_needed = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c": reassign to %d\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@removed_splay_allocno_vec = internal global ptr null, align 8
@allocnos_for_spilling = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"splay tree nodes\00", align 1
@splay_tree_node_pool = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"\0A**** Allocnos coloring:\0A\0A\00", align 1
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@.str.21 = private unnamed_addr constant [55 x i8] c"\0A  Loop %d (parent %d, header bb%d, depth %d)\0A    bbs:\00", align 1
@ira_bb_nodes = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"(->%d:l%d)\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"\0A    all:\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" %dr%d\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\0A    modified regnos:\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"\0A    border:\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"\0A    Pressure:\00", align 1
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@.str.28 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@flag_ira_coalesce = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"      Spill\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"  -- \00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"assign hard reg %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"assign memory\0A\00", align 1
@colorable_allocno_bucket = internal global ptr null, align 8
@uncolorable_allocno_bucket = internal global ptr null, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@.str.34 = private unnamed_addr constant [35 x i8] c"    Reg %d of %s has %d regs less\0A\00", align 1
@uncolorable_allocnos_num = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@uncolorable_allocnos_splay_tree = internal unnamed_addr global [27 x ptr] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [43 x i8] c"      Pushing p%d(%d) (spill for NO_REGS)\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"      Pushing\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"(potential spill: %spri=%d, cost=%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"bad spill, \00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"      Popping\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"assign reg %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"spill\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"New iteration of spill/restore move\0A\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"      Moving spill/restore for a%dr%d up from loop %d\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" - profit %d\0A\00", align 1
@ira_max_point = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ira_loop_edge_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !238 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !239
  br i1 %7, label %10, label %64

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef %12) #23
  store i32 0, ptr %4, align 8, !tbaa.struct !250
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !253
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %5) #23, !range !254
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %110, label %17

17:                                               ; preds = %10
  %18 = icmp slt i32 %1, 0
  br label %19

19:                                               ; preds = %17, %58
  %20 = phi i32 [ 0, %17 ], [ %59, %58 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !252
  %22 = load ptr, ptr %21, align 8, !tbaa !255
  %23 = load ptr, ptr %8, align 8, !tbaa !239
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !257
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %58, label %27

27:                                               ; preds = %19
  br i1 %18, label %48, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !258
  %31 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %30) #23
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !260
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %1) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !262
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !258
  %41 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %40) #23
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !263
  %44 = tail call i32 @bitmap_bit_p(ptr noundef %43, i32 noundef %1) #24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %21, align 8, !tbaa !255
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi ptr [ %47, %46 ], [ %22, %27 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !264
  %52 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !265
  %54 = mul nsw i32 %53, %51
  %55 = add nsw i32 %54, 5000
  %56 = sdiv i32 %55, 10000
  %57 = add nsw i32 %56, %20
  br label %58

58:                                               ; preds = %19, %28, %36, %48
  %59 = phi i32 [ %57, %48 ], [ %20, %36 ], [ %20, %28 ], [ %20, %19 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %60 = load i32, ptr %4, align 8
  %61 = load ptr, ptr %14, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %5) #23, !range !254
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %110, label %19, !llvm.loop !266

64:                                               ; preds = %3
  %65 = tail call ptr @get_loop_exit_edges(ptr noundef %9) #24
  store ptr %65, ptr %6, align 8, !tbaa !252
  %66 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %65, i32 noundef 0, ptr noundef nonnull %5) #23, !range !268
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %64
  %69 = icmp slt i32 %1, 0
  br label %70

70:                                               ; preds = %68, %103
  %71 = phi i32 [ 0, %68 ], [ %104, %103 ]
  %72 = phi i32 [ 0, %68 ], [ %105, %103 ]
  %73 = load ptr, ptr %5, align 8, !tbaa !252
  br i1 %69, label %93, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %73, align 8, !tbaa !255
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !258
  %78 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %77) #23
  %79 = getelementptr inbounds %struct.df_lr_bb_info, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !260
  %81 = tail call i32 @bitmap_bit_p(ptr noundef %80, i32 noundef %1) #24
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !262
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !258
  %88 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %87) #23
  %89 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !263
  %91 = tail call i32 @bitmap_bit_p(ptr noundef %90, i32 noundef %1) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %83, %70
  %94 = load ptr, ptr %73, align 8, !tbaa !255
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 11
  %96 = load i32, ptr %95, align 8, !tbaa !264
  %97 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 8
  %98 = load i32, ptr %97, align 4, !tbaa !265
  %99 = mul nsw i32 %98, %96
  %100 = add nsw i32 %99, 5000
  %101 = sdiv i32 %100, 10000
  %102 = add nsw i32 %101, %71
  br label %103

103:                                              ; preds = %74, %83, %93
  %104 = phi i32 [ %102, %93 ], [ %71, %83 ], [ %71, %74 ]
  %105 = add nuw nsw i32 %72, 1
  %106 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %65, i32 noundef %105, ptr noundef nonnull %5) #23, !range !268
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %70, !llvm.loop !269

108:                                              ; preds = %103, %64
  %109 = phi i32 [ 0, %64 ], [ %104, %103 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %6) #23
  br label %110

110:                                              ; preds = %58, %10, %108
  %111 = phi i32 [ %109, %108 ], [ 0, %10 ], [ %59, %58 ]
  %112 = load i32, ptr @optimize_size, align 4, !tbaa !251
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !251
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @cfun, align 8, !tbaa !252
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !270
  %121 = load ptr, ptr %120, align 8, !tbaa !272
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 8
  %123 = load i64, ptr %122, align 8, !tbaa !274
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %117, %114
  %126 = add i32 %111, 9
  %127 = icmp ult i32 %126, 19
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = sdiv i32 %111, 10
  br label %130

130:                                              ; preds = %128, %125, %110, %117
  %131 = phi i32 [ 1000, %117 ], [ 1000, %110 ], [ %129, %128 ], [ 1, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret i32 %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #2 !prof !238 !PGOFuncName !275 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !238 !PGOFuncName !276 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !254
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !252
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #5 !prof !238 !PGOFuncName !277 {
  %2 = load ptr, ptr @df, align 8, !tbaa !252
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !252
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !278
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !280
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !252
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !238 !PGOFuncName !281 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.5) #24
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !282
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !282
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !238 !PGOFuncName !284 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !285
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !252
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !238 !PGOFuncName !287 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !252
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_reassign_conflict_allocnos(i32 noundef %0) local_unnamed_addr #0 !prof !238 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ira_allocno_conflict_iterator, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %6 = tail call ptr @ira_allocate_bitmap() #24
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #23
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !254
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @ira_free_bitmap(ptr noundef %6) #24
  br label %114

10:                                               ; preds = %1, %47
  %11 = phi i32 [ %48, %47 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !252
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 31
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load i32, ptr %12, align 8, !tbaa !288
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %18) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !290
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %27 = add nsw i32 %11, 1
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %12, ptr %29, align 8, !tbaa !252
  br label %34

30:                                               ; preds = %21
  %31 = load i16, ptr %13, align 4
  %32 = or i16 %31, 256
  store i16 %32, ptr %13, align 4
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 3
  store i32 -1, ptr %33, align 4, !tbaa !291
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %27, %25 ], [ %11, %30 ]
  %36 = load i32, ptr %12, align 8, !tbaa !288
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %36) #24
  br label %38

38:                                               ; preds = %34, %17, %10
  %39 = phi i32 [ %11, %10 ], [ %11, %17 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !292
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !290
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %67, %38, %43, %51
  %48 = phi i32 [ %39, %51 ], [ %39, %43 ], [ %39, %38 ], [ %68, %67 ]
  %49 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !254
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %71, label %10, !llvm.loop !293

51:                                               ; preds = %43
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %4, ptr noundef nonnull %12) #23
  %52 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !254
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %47, label %54, !llvm.loop !293

54:                                               ; preds = %51, %67
  %55 = phi i32 [ %68, %67 ], [ %39, %51 ]
  %56 = load ptr, ptr %3, align 8, !tbaa !252
  %57 = load i32, ptr %56, align 8, !tbaa !288
  %58 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %57) #24
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, ptr %56, align 8, !tbaa !288
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %61) #24
  %63 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %64 = add nsw i32 %55, 1
  %65 = sext i32 %55 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  store ptr %56, ptr %66, align 8, !tbaa !252
  br label %67

67:                                               ; preds = %54, %60
  %68 = phi i32 [ %55, %54 ], [ %64, %60 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %4) #23
  %69 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !254
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %47, label %54, !llvm.loop !294

71:                                               ; preds = %47
  tail call void @ira_free_bitmap(ptr noundef %6) #24
  %72 = icmp sgt i32 %48, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  tail call fastcc void @setup_allocno_priorities(ptr noundef %74, i32 noundef %48) #23
  %75 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %76 = zext nneg i32 %48 to i64
  tail call void @spec_qsort(ptr noundef %75, i64 noundef %76, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #24
  %77 = zext nneg i32 %48 to i64
  br label %80

78:                                               ; preds = %71
  %79 = icmp eq i32 %48, 1
  br i1 %79, label %80, label %114

80:                                               ; preds = %73, %78
  %81 = phi i64 [ %77, %73 ], [ 1, %78 ]
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ 0, %80 ], [ %90, %82 ]
  %84 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %85 = getelementptr inbounds ptr, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !252
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 31
  %88 = load i16, ptr %87, align 4
  %89 = and i16 %88, -257
  store i16 %89, ptr %87, align 4
  tail call fastcc void @update_curr_costs(ptr noundef %86) #23
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %81
  br i1 %91, label %92, label %82, !llvm.loop !295

92:                                               ; preds = %82, %111
  %93 = phi i64 [ %112, %111 ], [ 0, %82 ]
  %94 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %95 = getelementptr inbounds ptr, ptr %94, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !252
  %97 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %96, i8 noundef zeroext 1) #23, !range !254
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %101 = icmp sgt i32 %100, 3
  %102 = load ptr, ptr @ira_dump_file, align 8
  %103 = icmp ne ptr %102, null
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ira_allocno, ptr %96, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !291
  %108 = getelementptr inbounds %struct.ira_allocno, ptr %96, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !292
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str, i32 noundef %107, i32 noundef %109) #23
  br label %111

111:                                              ; preds = %92, %105, %99
  %112 = add nuw nsw i64 %93, 1
  %113 = icmp eq i64 %112, %81
  br i1 %113, label %114, label %92, !llvm.loop !296

114:                                              ; preds = %111, %9, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate_bitmap() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #8 !prof !297 !PGOFuncName !298 {
  store i32 0, ptr %0, align 4, !tbaa !299
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !301 !PGOFuncName !302 {
  %3 = load i32, ptr %0, align 4, !tbaa !299
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !303

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !304

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !252
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !299
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !305, !llvm.loop !306

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !307 !PGOFuncName !308 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  store i8 %7, ptr %0, align 8, !tbaa !309
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !311
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !312
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !313
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %15, label %13, !prof !314

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !315
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 22
  %19 = load i32, ptr %18, align 4, !tbaa !316
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25, !prof !317

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !318
  %24 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %24, align 4, !tbaa !319
  br label %36

25:                                               ; preds = %15
  %26 = sub i32 %19, %17
  %27 = add i32 %26, 64
  %28 = sdiv i32 %27, 64
  %29 = shl nsw i32 %28, 3
  %30 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !318
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %32, align 4, !tbaa !319
  %33 = icmp ugt i32 %26, -128
  br i1 %33, label %36, label %34, !prof !320

34:                                               ; preds = %25
  %35 = load i64, ptr %9, align 8, !tbaa !321
  br label %36

36:                                               ; preds = %21, %25, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %25 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  store i64 %37, ptr %38, align 8, !tbaa !322
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_conflict_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !323 !PGOFuncName !324 {
  %3 = load i8, ptr %0, align 8, !tbaa !309
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15, !prof !325

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !322
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %26, !prof !326

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !327
  %13 = zext i32 %12 to i64
  %14 = load i32, ptr %10, align 8, !tbaa !313
  br label %32

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !312
  %18 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !313
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !252
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24, !prof !328

24:                                               ; preds = %15
  store ptr %22, ptr %1, align 8, !tbaa !252
  br label %64

25:                                               ; preds = %38
  store i32 %34, ptr %10, align 8, !tbaa !313
  br label %26

26:                                               ; preds = %25, %5
  %27 = phi i64 [ %44, %25 ], [ %7, %5 ]
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  %30 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !318
  br i1 %29, label %46, label %54, !prof !329

32:                                               ; preds = %9, %38
  %33 = phi i32 [ %14, %9 ], [ %34, %38 ]
  %34 = add i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = icmp ult i64 %36, %13
  br i1 %37, label %38, label %63, !prof !330

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %41 = shl i32 %34, 6
  store i32 %41, ptr %39, align 8, !tbaa !318
  %42 = load ptr, ptr %40, align 8, !tbaa !312
  %43 = getelementptr inbounds i64, ptr %42, i64 %35
  %44 = load i64, ptr %43, align 8, !tbaa !321
  store i64 %44, ptr %6, align 8, !tbaa !322
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %32, label %25, !prof !331, !llvm.loop !332

46:                                               ; preds = %26, %46
  %47 = phi i32 [ %49, %46 ], [ %31, %26 ]
  %48 = phi i64 [ %50, %46 ], [ %27, %26 ]
  %49 = add i32 %47, 1
  %50 = lshr exact i64 %48, 1
  %51 = and i64 %48, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %46, label %53, !prof !333, !llvm.loop !334

53:                                               ; preds = %46
  store i32 %49, ptr %30, align 8, !tbaa !318
  store i64 %50, ptr %6, align 8, !tbaa !322
  br label %54

54:                                               ; preds = %26, %53
  %55 = phi i32 [ %49, %53 ], [ %31, %26 ]
  %56 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !252
  %57 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !319
  %59 = add i32 %58, %55
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %56, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !252
  store ptr %62, ptr %1, align 8, !tbaa !252
  br label %64

63:                                               ; preds = %32
  store i32 %34, ptr %10, align 8, !tbaa !313
  br label %64

64:                                               ; preds = %63, %15, %54, %24
  %65 = phi i8 [ 1, %24 ], [ 1, %54 ], [ 0, %15 ], [ 0, %63 ]
  ret i8 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !335 !PGOFuncName !336 {
  %2 = load i8, ptr %0, align 8, !tbaa !309
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4, !prof !337

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !322
  %9 = lshr i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !322
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %10, %6 ], [ %5, %4 ]
  %13 = load i32, ptr %12, align 8, !tbaa !251
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !251
  ret void
}

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_priorities(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !238 !PGOFuncName !338 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %63

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %37, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %36, %6 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !252
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !339
  %13 = sext i32 %12 to i64
  %14 = tail call i32 @floor_log2(i64 noundef %13) #24
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !340
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !341
  %20 = sub nsw i32 %17, %19
  %21 = mul nsw i32 %20, %15
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !290
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !342
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !251
  %30 = mul nsw i32 %21, %29
  %31 = load ptr, ptr @allocno_priorities, align 8, !tbaa !252
  %32 = load i32, ptr %10, align 8, !tbaa !288
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 %30, ptr %34, align 4, !tbaa !251
  %35 = tail call i32 @llvm.abs.i32(i32 %30, i1 true)
  %36 = tail call i32 @llvm.smax.i32(i32 %8, i32 %35)
  %37 = add nuw nsw i64 %7, 1
  %38 = icmp eq i64 %37, %5
  br i1 %38, label %39, label %6, !llvm.loop !343

39:                                               ; preds = %6
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = udiv i32 2147483647, %36
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi i32 [ %42, %41 ], [ 1, %39 ]
  br i1 %3, label %45, label %63

45:                                               ; preds = %43
  %46 = load ptr, ptr @allocno_priorities, align 8, !tbaa !252
  %47 = zext nneg i32 %1 to i64
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ 0, %45 ], [ %61, %48 ]
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !252
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 14
  %53 = load i32, ptr %52, align 4, !tbaa !344
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 1)
  %55 = load i32, ptr %51, align 8, !tbaa !288
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %46, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !251
  %59 = mul nsw i32 %58, %44
  %60 = sdiv i32 %59, %54
  store i32 %60, ptr %57, align 4, !tbaa !251
  %61 = add nuw nsw i64 %49, 1
  %62 = icmp eq i64 %61, %47
  br i1 %62, label %63, label %48, !llvm.loop !345

63:                                               ; preds = %48, %2, %43
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_priority_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !238 !PGOFuncName !346 {
  %3 = load ptr, ptr %0, align 8, !tbaa !252
  %4 = load ptr, ptr %1, align 8, !tbaa !252
  %5 = load ptr, ptr @allocno_priorities, align 8, !tbaa !252
  %6 = load i32, ptr %3, align 8, !tbaa !288
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !251
  %10 = load i32, ptr %4, align 8, !tbaa !288
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !251
  %14 = sub nsw i32 %13, %9
  %15 = icmp eq i32 %13, %9
  %16 = sub nsw i32 %6, %10
  %17 = select i1 %15, i32 %16, i32 %14
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_curr_costs(ptr noundef %0) unnamed_addr #0 !prof !238 !PGOFuncName !347 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !290
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !342
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !348
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11

11:                                               ; preds = %5
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  br label %18

18:                                               ; preds = %11, %89
  %19 = phi ptr [ undef, %11 ], [ %40, %89 ]
  %20 = phi ptr [ %9, %11 ], [ %40, %89 ]
  %21 = phi ptr [ undef, %11 ], [ %39, %89 ]
  %22 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !349
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !351
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !352
  br label %38

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !352
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !353
  br label %38

37:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2265, ptr noundef nonnull @.str.5) #24
  br label %38

38:                                               ; preds = %34, %37, %25
  %39 = phi ptr [ %29, %25 ], [ %23, %34 ], [ %21, %37 ]
  %40 = phi ptr [ %27, %25 ], [ %36, %34 ], [ %19, %37 ]
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !290
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %12, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !354
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %89, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 31
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 256
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %89, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !291
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %52
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !251
  %60 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %12, i64 %57
  %61 = load i16, ptr %60, align 2, !tbaa !355
  %62 = sext i16 %61 to i64
  %63 = icmp slt i16 %61, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %22, align 8, !tbaa !349
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %7, i32 noundef %59, i32 noundef %3) #23, !range !357
  br label %71

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %7, i32 noundef %3, i32 noundef %59) #23, !range !357
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load i32, ptr %14, align 4, !tbaa !341
  %74 = load ptr, ptr %15, align 8, !tbaa !358
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %13, i32 noundef %3, i32 noundef %73, ptr noundef %74) #23
  %75 = load ptr, ptr %17, align 8, !tbaa !359
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %16, i32 noundef %3, i32 noundef 0, ptr noundef %75) #23
  %76 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !360
  %78 = mul nsw i32 %77, %72
  %79 = load ptr, ptr %13, align 8, !tbaa !361
  %80 = getelementptr inbounds i32, ptr %79, i64 %62
  %81 = load i32, ptr %80, align 4, !tbaa !251
  %82 = sub nsw i32 %81, %78
  store i32 %82, ptr %80, align 4, !tbaa !251
  %83 = load i32, ptr %76, align 8, !tbaa !360
  %84 = mul nsw i32 %83, %72
  %85 = load ptr, ptr %16, align 8, !tbaa !362
  %86 = getelementptr inbounds i32, ptr %85, i64 %62
  %87 = load i32, ptr %86, align 4, !tbaa !251
  %88 = sub nsw i32 %87, %84
  store i32 %88, ptr %86, align 4, !tbaa !251
  br label %89

89:                                               ; preds = %56, %38, %47, %52, %71
  %90 = icmp eq ptr %40, null
  br i1 %90, label %91, label %18, !llvm.loop !363

91:                                               ; preds = %89, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @assign_hard_reg(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !364 !PGOFuncName !365 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !290
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !251
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !342
  %12 = sext i32 %9 to i64
  %13 = shl nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.full_costs, i8 0, i64 %13, i1 false)
  %14 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %14, label %15, label %17, !prof !366

15:                                               ; preds = %2
  %16 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  tail call void @bitmap_clear(ptr noundef %16) #24
  br label %17

17:                                               ; preds = %15, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.costs, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.full_costs, i8 0, i64 %13, i1 false)
  tail call fastcc void @start_update_cost() #23
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  %19 = icmp sgt i32 %9, 0
  %20 = icmp eq i8 %1, 0
  %21 = zext i32 %9 to i64
  br label %22

22:                                               ; preds = %156, %17
  %23 = phi i32 [ 0, %17 ], [ %30, %156 ]
  %24 = phi i64 [ 0, %17 ], [ %157, %156 ]
  %25 = phi ptr [ %18, %17 ], [ %159, %156 ]
  %26 = phi i32 [ 0, %17 ], [ %46, %156 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !367
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !368
  %30 = add nsw i32 %29, %23
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 27
  %32 = load i64, ptr %31, align 8, !tbaa !369
  %33 = or i64 %32, %24
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 34
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 33
  %36 = load ptr, ptr %35, align 8, !tbaa !358
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %34, i32 noundef %6, ptr noundef %36) #23
  %37 = load ptr, ptr %34, align 8, !tbaa !361
  %38 = icmp eq i32 %26, 0
  br i1 %38, label %39, label %44, !prof !370

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 31
  %41 = load i16, ptr %40, align 4
  %42 = and i16 %41, 32
  %43 = icmp ne i16 %42, 0
  br label %44

44:                                               ; preds = %39, %22
  %45 = phi i1 [ true, %22 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 11
  %48 = load i32, ptr %47, align 8, !tbaa !371
  br i1 %19, label %49, label %66, !prof !372

49:                                               ; preds = %44
  %50 = icmp eq ptr %37, null
  br label %51

51:                                               ; preds = %49, %56
  %52 = phi i64 [ 0, %49 ], [ %64, %56 ]
  br i1 %50, label %56, label %53, !prof !373

53:                                               ; preds = %51
  %54 = getelementptr inbounds i32, ptr %37, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !251
  br label %56

56:                                               ; preds = %51, %53
  %57 = phi i32 [ %55, %53 ], [ %48, %51 ]
  %58 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.costs, i64 0, i64 %52
  %59 = load i32, ptr %58, align 4, !tbaa !251
  %60 = add nsw i32 %59, %57
  store i32 %60, ptr %58, align 4, !tbaa !251
  %61 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %52
  %62 = load i32, ptr %61, align 4, !tbaa !251
  %63 = add nsw i32 %62, %57
  store i32 %63, ptr %61, align 4, !tbaa !251
  %64 = add nuw nsw i64 %52, 1
  %65 = icmp eq i64 %64, %21
  br i1 %65, label %66, label %51, !prof !374, !llvm.loop !375

66:                                               ; preds = %56, %44
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %4, ptr noundef %27) #23
  %67 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !254
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %156, label %69, !prof !376

69:                                               ; preds = %66
  %70 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %7
  %71 = icmp slt i32 %9, 1
  br label %72

72:                                               ; preds = %69, %152
  %73 = phi i64 [ %153, %152 ], [ %33, %69 ]
  %74 = load ptr, ptr %3, align 8, !tbaa !252
  br i1 %20, label %75, label %80, !prof !377

75:                                               ; preds = %72
  %76 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  %77 = load i32, ptr %74, align 8, !tbaa !288
  %78 = tail call i32 @bitmap_bit_p(ptr noundef %76, i32 noundef %77) #24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %152, label %80, !prof !378

80:                                               ; preds = %75, %72
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !290
  %83 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %83, label %84, label %93, !prof !378

84:                                               ; preds = %80
  %85 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %86 = load i32, ptr %74, align 8, !tbaa !288
  %87 = tail call i32 @bitmap_bit_p(ptr noundef %85, i32 noundef %86) #24
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %152

89:                                               ; preds = %84
  %90 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %91 = load i32, ptr %74, align 8, !tbaa !288
  %92 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %90, i32 noundef %91) #24
  br label %93

93:                                               ; preds = %89, %80
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 31
  %95 = load i16, ptr %94, align 4
  %96 = and i16 %95, 256
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %117, label %98, !prof !379

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !291
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %102, label %152, !prof !380

102:                                              ; preds = %98
  %103 = zext nneg i32 %100 to i64
  %104 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %7, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !355
  %106 = icmp sgt i16 %105, -1
  br i1 %106, label %107, label %152, !prof !381

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !342
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %103, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !321
  %113 = or i64 %112, %73
  %114 = load i64, ptr %70, align 8, !tbaa !321
  %115 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %114, i64 noundef %113) #23, !range !254
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %152, label %236, !prof !381

117:                                              ; preds = %93
  %118 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 18
  %119 = load ptr, ptr %118, align 8, !tbaa !382
  %120 = getelementptr inbounds %struct.ira_allocno, ptr %119, i64 0, i32 31
  %121 = load i16, ptr %120, align 4
  %122 = and i16 %121, 512
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %152, !prof !383

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 36
  %126 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 35
  %127 = load ptr, ptr %126, align 8, !tbaa !359
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %125, i32 noundef %82, ptr noundef %127) #23
  %128 = load ptr, ptr %125, align 8, !tbaa !362
  %129 = icmp eq ptr %128, null
  %130 = select i1 %129, i1 true, i1 %71
  br i1 %130, label %151, label %131, !prof !384

131:                                              ; preds = %124
  %132 = zext i32 %82 to i64
  br label %133

133:                                              ; preds = %131, %149
  %134 = phi i64 [ %21, %131 ], [ %135, %149 ]
  %135 = add nsw i64 %134, -1
  %136 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !355
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %132, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !355
  %141 = icmp slt i16 %140, 0
  br i1 %141, label %149, label %142, !prof !385

142:                                              ; preds = %133
  %143 = zext nneg i16 %140 to i64
  %144 = getelementptr inbounds i32, ptr %128, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !251
  %146 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %135
  %147 = load i32, ptr %146, align 4, !tbaa !251
  %148 = sub nsw i32 %147, %145
  store i32 %148, ptr %146, align 4, !tbaa !251
  br label %149

149:                                              ; preds = %133, %142
  %150 = icmp sgt i64 %134, 1
  br i1 %150, label %133, label %151, !prof !386, !llvm.loop !387

151:                                              ; preds = %149, %124
  tail call fastcc void @queue_update_cost(ptr noundef %74, i32 noundef 4) #23
  br label %152

152:                                              ; preds = %75, %117, %151, %98, %102, %107, %84
  %153 = phi i64 [ %73, %84 ], [ %113, %107 ], [ %73, %102 ], [ %73, %98 ], [ %73, %117 ], [ %73, %151 ], [ %73, %75 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %4) #23
  %154 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !254
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %72, !prof !388, !llvm.loop !389

156:                                              ; preds = %152, %66
  %157 = phi i64 [ %33, %66 ], [ %153, %152 ]
  %158 = icmp eq ptr %27, %0
  %159 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 19
  br i1 %158, label %160, label %22, !prof !370

160:                                              ; preds = %156
  tail call fastcc void @update_conflict_hard_regno_costs(i32 noundef %6, i8 noundef zeroext 1) #23
  tail call fastcc void @start_update_cost() #23
  br label %161

161:                                              ; preds = %161, %160
  %162 = phi ptr [ %18, %160 ], [ %165, %161 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !367
  tail call fastcc void @queue_update_cost(ptr noundef %163, i32 noundef 4) #23
  %164 = icmp eq ptr %163, %0
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %163, i64 0, i32 19
  br i1 %164, label %166, label %161, !prof !370

166:                                              ; preds = %161
  tail call fastcc void @update_conflict_hard_regno_costs(i32 noundef %6, i8 noundef zeroext 0) #23
  br i1 %19, label %167, label %223, !prof !372

167:                                              ; preds = %166
  %168 = zext i32 %11 to i64
  %169 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %7, i64 %168
  br label %170

170:                                              ; preds = %167, %218
  %171 = phi i64 [ 0, %167 ], [ %221, %218 ]
  %172 = phi i32 [ -1, %167 ], [ %220, %218 ]
  %173 = phi i32 [ 2147483647, %167 ], [ %219, %218 ]
  %174 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %171
  %175 = load i16, ptr %174, align 2, !tbaa !355
  %176 = sext i16 %175 to i32
  br i1 %45, label %177, label %180, !prof !390

177:                                              ; preds = %170
  %178 = and i16 %175, -8
  %179 = icmp eq i16 %178, 8
  br i1 %179, label %218, label %180

180:                                              ; preds = %177, %170
  %181 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %176, i32 noundef %11, i64 noundef %157) #23, !range !254
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %218, label %183, !prof !391

183:                                              ; preds = %180
  %184 = load i64, ptr %169, align 8, !tbaa !321
  %185 = zext nneg i32 %176 to i64
  %186 = shl nuw i64 1, %185
  %187 = and i64 %184, %186
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %218, !prof !392

189:                                              ; preds = %183
  %190 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %171
  %191 = load i32, ptr %190, align 4, !tbaa !251
  %192 = sext i16 %175 to i64
  %193 = getelementptr inbounds [53 x i8], ptr @allocated_hardreg_p, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !354
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %213, !prof !393

196:                                              ; preds = %189
  %197 = load i64, ptr @call_used_reg_set, align 8
  %198 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %176, i32 noundef %11, i64 noundef %197) #23, !range !254
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %213, label %200, !prof !394

200:                                              ; preds = %196
  %201 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %192
  %202 = load i32, ptr %201, align 4, !tbaa !251
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %168, i64 %203
  %205 = load i16, ptr %204, align 4, !tbaa !355
  %206 = sext i16 %205 to i32
  %207 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %168, i64 %203, i64 1
  %208 = load i16, ptr %207, align 2, !tbaa !355
  %209 = sext i16 %208 to i32
  %210 = add nsw i32 %206, -1
  %211 = add nsw i32 %210, %209
  %212 = add nsw i32 %211, %191
  br label %213

213:                                              ; preds = %200, %196, %189
  %214 = phi i32 [ %191, %189 ], [ %212, %200 ], [ %191, %196 ]
  %215 = icmp sgt i32 %173, %214
  %216 = tail call i32 @llvm.smin.i32(i32 %173, i32 %214)
  %217 = select i1 %215, i32 %176, i32 %172, !prof !395
  br label %218

218:                                              ; preds = %213, %180, %183, %177
  %219 = phi i32 [ %173, %177 ], [ %173, %183 ], [ %173, %180 ], [ %216, %213 ]
  %220 = phi i32 [ %172, %177 ], [ %172, %183 ], [ %172, %180 ], [ %217, %213 ]
  %221 = add nuw nsw i64 %171, 1
  %222 = icmp eq i64 %221, %21
  br i1 %222, label %223, label %170, !prof !374, !llvm.loop !396

223:                                              ; preds = %218, %166
  %224 = phi i32 [ 2147483647, %166 ], [ %219, %218 ]
  %225 = phi i32 [ -1, %166 ], [ %220, %218 ]
  %226 = icmp sgt i32 %224, %30
  br i1 %226, label %227, label %236, !prof !397

227:                                              ; preds = %223
  %228 = load i32, ptr @internal_flag_ira_verbose, align 4
  %229 = icmp sgt i32 %228, 3
  %230 = select i1 %20, i1 %229, i1 false
  %231 = load ptr, ptr @ira_dump_file, align 8
  %232 = icmp ne ptr %231, null
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %234, label %236, !prof !398

234:                                              ; preds = %227
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %231, ptr noundef nonnull @.str.13, i32 noundef %30, i32 noundef %224) #23
  br label %236

236:                                              ; preds = %107, %227, %234, %223
  %237 = phi i32 [ %225, %223 ], [ -1, %234 ], [ -1, %227 ], [ -1, %107 ]
  %238 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !251
  %239 = icmp ne i32 %238, 1
  %240 = icmp slt i32 %237, 0
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %242, label %279, !prof !399

242:                                              ; preds = %236
  %243 = load ptr, ptr %18, align 8, !tbaa !367
  %244 = icmp eq ptr %243, %0
  br i1 %244, label %284, label %245, !prof !400

245:                                              ; preds = %242
  %246 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  store ptr %243, ptr %246, align 8, !tbaa !252
  br label %247

247:                                              ; preds = %245, %247
  %248 = phi i32 [ 2, %245 ], [ %256, %247 ]
  %249 = phi i64 [ 1, %245 ], [ %253, %247 ]
  %250 = phi ptr [ %243, %245 ], [ %252, %247 ]
  %251 = getelementptr inbounds %struct.ira_allocno, ptr %250, i64 0, i32 19
  %252 = load ptr, ptr %251, align 8, !tbaa !367
  %253 = add nuw i64 %249, 1
  %254 = getelementptr inbounds ptr, ptr %246, i64 %249
  store ptr %252, ptr %254, align 8, !tbaa !252
  %255 = icmp eq ptr %252, %0
  %256 = add nuw i32 %248, 1
  br i1 %255, label %257, label %247

257:                                              ; preds = %247
  %258 = and i64 %253, 4294967295
  tail call void @spec_qsort(ptr noundef nonnull %246, i64 noundef %258, i64 noundef 8, ptr noundef nonnull @allocno_cost_compare_func) #24
  %259 = zext i32 %248 to i64
  br label %260

260:                                              ; preds = %257, %276
  %261 = phi i64 [ 0, %257 ], [ %277, %276 ]
  %262 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %263 = getelementptr inbounds ptr, ptr %262, i64 %261
  %264 = load ptr, ptr %263, align 8, !tbaa !252
  %265 = getelementptr inbounds %struct.ira_allocno, ptr %264, i64 0, i32 18
  store ptr %264, ptr %265, align 8, !tbaa !382
  %266 = getelementptr inbounds %struct.ira_allocno, ptr %264, i64 0, i32 19
  store ptr %264, ptr %266, align 8, !tbaa !367
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @allocno_stack_vec, ptr noundef %264) #23
  %267 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %268 = icmp sgt i32 %267, 3
  %269 = load ptr, ptr @ira_dump_file, align 8
  %270 = icmp ne ptr %269, null
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %276

272:                                              ; preds = %260
  %273 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 15, i64 1, ptr nonnull %269)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %264) #23
  %274 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %275 = tail call i32 @fputc(i32 10, ptr %274)
  br label %276

276:                                              ; preds = %260, %272
  %277 = add nuw nsw i64 %261, 1
  %278 = icmp eq i64 %277, %259
  br i1 %278, label %299, label %260, !llvm.loop !401

279:                                              ; preds = %236
  %280 = icmp sgt i32 %237, -1
  br i1 %280, label %281, label %284, !prof !402

281:                                              ; preds = %279
  %282 = zext nneg i32 %237 to i64
  %283 = getelementptr inbounds [53 x i8], ptr @allocated_hardreg_p, i64 0, i64 %282
  store i8 1, ptr %283, align 1, !tbaa !354
  br label %284

284:                                              ; preds = %242, %281, %279
  %285 = phi i1 [ true, %281 ], [ false, %279 ], [ false, %242 ]
  br label %286

286:                                              ; preds = %294, %284
  %287 = phi ptr [ %18, %284 ], [ %296, %294 ]
  %288 = load ptr, ptr %287, align 8, !tbaa !367
  %289 = getelementptr inbounds %struct.ira_allocno, ptr %288, i64 0, i32 3
  store i32 %237, ptr %289, align 4, !tbaa !291
  %290 = getelementptr inbounds %struct.ira_allocno, ptr %288, i64 0, i32 31
  %291 = load i16, ptr %290, align 4
  %292 = or i16 %291, 256
  store i16 %292, ptr %290, align 4
  br i1 %285, label %293, label %294, !prof !403

293:                                              ; preds = %286
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %288, i8 noundef zeroext 1) #23
  br label %294

294:                                              ; preds = %293, %286
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %288) #24
  %295 = icmp eq ptr %288, %0
  %296 = getelementptr inbounds %struct.ira_allocno, ptr %288, i64 0, i32 19
  br i1 %295, label %297, label %286, !prof !370

297:                                              ; preds = %294
  %298 = zext i1 %285 to i8
  br label %299

299:                                              ; preds = %276, %297
  %300 = phi i8 [ %298, %297 ], [ 0, %276 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i8 %300
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_sort_regnos_for_alter_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !404 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  %6 = tail call i32 @max_reg_num() #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %7 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %7, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %8 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %8, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %31, !prof !405

10:                                               ; preds = %3
  %11 = zext nneg i32 %1 to i64
  %12 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  br label %13

13:                                               ; preds = %10, %27
  %14 = phi ptr [ %12, %10 ], [ %28, %27 ]
  %15 = phi i64 [ 0, %10 ], [ %29, %27 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !251
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %14, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !252
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !406

22:                                               ; preds = %13
  %23 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  %24 = load i32, ptr %20, align 8, !tbaa !288
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %24) #24
  %26 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  br label %27

27:                                               ; preds = %13, %22
  %28 = phi ptr [ %14, %13 ], [ %26, %22 ]
  %29 = add nuw nsw i64 %15, 1
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %31, label %13, !prof !407, !llvm.loop !408

31:                                               ; preds = %27, %3
  store i1 false, ptr @allocno_coalesced_p, align 1
  tail call fastcc void @coalesce_allocnos(i8 noundef zeroext 1) #23
  %32 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  tail call void @ira_free_bitmap(ptr noundef %32) #24
  %33 = sext i32 %6 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @ira_allocate(i64 noundef %34) #24
  store ptr %35, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !252
  %36 = tail call ptr @ira_allocate(i64 noundef %34) #24
  store ptr %36, ptr @regno_coalesced_allocno_num, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr align 4 %36, i8 0, i64 %34, i1 false)
  tail call fastcc void @setup_coalesced_allocno_costs_and_nums(ptr noundef %0, i32 noundef %1) #23
  %37 = sext i32 %1 to i64
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %37, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_freq_compare) #24
  %38 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr @ira_allocate(i64 noundef %40) #24
  %42 = tail call fastcc i32 @collect_spilled_coalesced_allocnos(ptr noundef %0, i32 noundef %1, ptr noundef %41) #23
  %43 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !251
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45, !prof !409

45:                                               ; preds = %31
  %46 = tail call fastcc zeroext i8 @coalesce_spill_slots(ptr noundef %41, i32 noundef %42) #23, !range !254
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48, !prof !410

48:                                               ; preds = %45
  tail call fastcc void @setup_coalesced_allocno_costs_and_nums(ptr noundef %0, i32 noundef %1) #23
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %37, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_freq_compare) #24
  %49 = tail call fastcc i32 @collect_spilled_coalesced_allocnos(ptr noundef %0, i32 noundef %1, ptr noundef %41) #23
  br label %50

50:                                               ; preds = %48, %45, %31
  %51 = phi i32 [ %49, %48 ], [ %42, %45 ], [ %42, %31 ]
  %52 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  tail call void @ira_free_bitmap(ptr noundef %52) #24
  store i1 false, ptr @allocno_coalesced_p, align 1
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %150, !prof !411

54:                                               ; preds = %50
  %55 = zext nneg i32 %51 to i64
  br label %56

56:                                               ; preds = %54, %143
  %57 = phi i64 [ 0, %54 ], [ %146, %143 ]
  %58 = phi i32 [ 1, %54 ], [ %145, %143 ]
  %59 = phi ptr [ undef, %54 ], [ %144, %143 ]
  %60 = getelementptr inbounds ptr, ptr %41, i64 %57
  %61 = load ptr, ptr %60, align 8, !tbaa !252
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !382
  %64 = icmp eq ptr %63, %61
  br i1 %64, label %65, label %143, !prof !412

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !291
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %143, label %69, !prof !413

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !292
  %72 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !251
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %85, !prof !412

74:                                               ; preds = %69
  %75 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %76 = sext i32 %71 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !252
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %143, !prof !412

80:                                               ; preds = %74
  %81 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %82 = getelementptr inbounds i8, ptr %81, i64 %76
  %83 = load i8, ptr %82, align 1, !tbaa !354
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %143, !prof !412

85:                                               ; preds = %80, %69
  %86 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %87 = icmp sgt i32 %86, 3
  %88 = load ptr, ptr @ira_dump_file, align 8
  %89 = icmp ne ptr %88, null
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %95, !prof !414

91:                                               ; preds = %85
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.1, i32 noundef %58) #23
  %93 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %94 = load ptr, ptr @ira_dump_file, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi ptr [ %94, %91 ], [ %88, %85 ]
  %97 = phi i32 [ %93, %91 ], [ %86, %85 ]
  %98 = xor i32 %58, -1
  br label %99

99:                                               ; preds = %132, %95
  %100 = phi ptr [ %96, %95 ], [ %133, %132 ]
  %101 = phi i32 [ %97, %95 ], [ %134, %132 ]
  %102 = phi ptr [ %61, %95 ], [ %104, %132 ]
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %102, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !367
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 3
  store i32 %98, ptr %105, align 4, !tbaa !291
  %106 = icmp sgt i32 %101, 3
  %107 = icmp ne ptr %100, null
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %132, !prof !415

109:                                              ; preds = %99
  %110 = load i32, ptr %104, align 8, !tbaa !288
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !292
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 8
  %114 = load i32, ptr %113, align 4, !tbaa !416
  %115 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !252
  %116 = sext i32 %112 to i64
  %117 = getelementptr inbounds ptr, ptr %115, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !252
  %119 = load i32, ptr %118, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !354
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds i32, ptr %2, i64 %116
  %127 = load i32, ptr %126, align 4, !tbaa !251
  %128 = tail call i32 @llvm.umax.i32(i32 %127, i32 %125)
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.2, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %128) #23
  %130 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %131 = load ptr, ptr @ira_dump_file, align 8
  br label %132

132:                                              ; preds = %109, %99
  %133 = phi ptr [ %131, %109 ], [ %100, %99 ]
  %134 = phi i32 [ %130, %109 ], [ %101, %99 ]
  %135 = icmp eq ptr %104, %61
  br i1 %135, label %136, label %99, !prof !417

136:                                              ; preds = %132
  %137 = add nsw i32 %58, 1
  %138 = icmp sgt i32 %134, 3
  %139 = icmp ne ptr %133, null
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %143, !prof !414

141:                                              ; preds = %136
  %142 = tail call i32 @fputc(i32 10, ptr nonnull %133)
  br label %143

143:                                              ; preds = %136, %141, %56, %65, %74, %80
  %144 = phi ptr [ %59, %56 ], [ %59, %65 ], [ %59, %74 ], [ %59, %80 ], [ %61, %141 ], [ %61, %136 ]
  %145 = phi i32 [ %58, %56 ], [ %58, %65 ], [ %58, %74 ], [ %58, %80 ], [ %137, %141 ], [ %137, %136 ]
  %146 = add nuw nsw i64 %57, 1
  %147 = icmp eq i64 %146, %55
  br i1 %147, label %148, label %56, !prof !418, !llvm.loop !419

148:                                              ; preds = %143
  %149 = add nsw i32 %145, -1
  br label %150

150:                                              ; preds = %148, %50
  %151 = phi ptr [ undef, %50 ], [ %144, %148 ]
  %152 = phi i32 [ 0, %50 ], [ %149, %148 ]
  store ptr %151, ptr %4, align 8, !tbaa !252
  store i32 %152, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !251
  tail call void @ira_free(ptr noundef %41) #24
  store ptr %2, ptr @regno_max_ref_width, align 8, !tbaa !252
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %37, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_slot_compare) #24
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #23
  %153 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %161, label %155, !prof !420

155:                                              ; preds = %150, %155
  %156 = load ptr, ptr %4, align 8, !tbaa !252
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 18
  store ptr %156, ptr %157, align 8, !tbaa !382
  %158 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 19
  store ptr %156, ptr %158, align 8, !tbaa !367
  %159 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %155, !prof !421, !llvm.loop !422

161:                                              ; preds = %155, %150
  %162 = load ptr, ptr @regno_coalesced_allocno_num, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %162) #24
  %163 = load ptr, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %163) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @coalesce_allocnos(i8 noundef zeroext %0) unnamed_addr #0 !prof !404 !PGOFuncName !423 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !251
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ira_allocate(i64 noundef %6) #24
  %8 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #23
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !420

11:                                               ; preds = %1
  tail call void @spec_qsort(ptr noundef %7, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @copy_freq_compare_func) #24
  br label %207

12:                                               ; preds = %1
  %13 = icmp eq i8 %0, 0
  br label %14

14:                                               ; preds = %12, %126
  %15 = phi i32 [ 0, %12 ], [ %127, %126 ]
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %17 = load i32, ptr %2, align 4, !tbaa !251
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !252
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !292
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 31
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  br i1 %13, label %27, label %28, !prof !366

27:                                               ; preds = %14
  br i1 %26, label %47, label %126

28:                                               ; preds = %14
  br i1 %26, label %126, label %29, !prof !366

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !291
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %126, label %33, !prof !403

33:                                               ; preds = %29
  %34 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !251
  %35 = icmp slt i32 %22, %34
  br i1 %35, label %36, label %47, !prof !400

36:                                               ; preds = %33
  %37 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %38 = sext i32 %22 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !252
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %126, !prof !400

42:                                               ; preds = %36
  %43 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %44 = getelementptr inbounds i8, ptr %43, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !354
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %126, !prof !400

47:                                               ; preds = %27, %42, %33
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !290
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !342
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 15
  %53 = load ptr, ptr %52, align 8, !tbaa !348
  %54 = icmp eq ptr %53, null
  br i1 %54, label %126, label %55, !prof !424

55:                                               ; preds = %47, %122
  %56 = phi i32 [ %124, %122 ], [ %15, %47 ]
  %57 = phi ptr [ %123, %122 ], [ %53, %47 ]
  %58 = phi ptr [ %123, %122 ], [ null, %47 ]
  %59 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !349
  %61 = icmp eq ptr %60, %20
  br i1 %61, label %62, label %114, !prof !425

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !351
  %65 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !352
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !292
  br i1 %13, label %69, label %77

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !290
  %72 = icmp eq i32 %71, %49
  br i1 %72, label %73, label %122

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !342
  %76 = icmp eq i32 %75, %51
  br i1 %76, label %77, label %122

77:                                               ; preds = %73, %62
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !426
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 4
  %83 = load i8, ptr %82, align 4, !tbaa !427
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 31
  %87 = load i16, ptr %86, align 4
  %88 = and i16 %87, 256
  %89 = icmp eq i16 %88, 0
  br i1 %13, label %90, label %91

90:                                               ; preds = %85
  br i1 %89, label %110, label %122

91:                                               ; preds = %85
  br i1 %89, label %122, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !291
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !251
  %98 = icmp slt i32 %68, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %101 = sext i32 %68 to i64
  %102 = getelementptr inbounds i8, ptr %100, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !354
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %107 = getelementptr inbounds ptr, ptr %106, i64 %101
  %108 = load ptr, ptr %107, align 8, !tbaa !252
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105, %96, %90
  %111 = add nsw i32 %56, 1
  %112 = sext i32 %56 to i64
  %113 = getelementptr inbounds ptr, ptr %7, i64 %112
  store ptr %57, ptr %113, align 8, !tbaa !252
  br label %122

114:                                              ; preds = %55
  %115 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !352
  %117 = icmp eq ptr %116, %20
  br i1 %117, label %118, label %121, !prof !400

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !353
  br label %122

121:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1667, ptr noundef nonnull @.str.5) #24
  br label %122

122:                                              ; preds = %90, %110, %105, %99, %92, %91, %81, %73, %69, %121, %118
  %123 = phi ptr [ %64, %110 ], [ %64, %99 ], [ %64, %105 ], [ %64, %92 ], [ %64, %91 ], [ %64, %81 ], [ %64, %73 ], [ %64, %69 ], [ %120, %118 ], [ %58, %121 ], [ %64, %90 ]
  %124 = phi i32 [ %111, %110 ], [ %56, %99 ], [ %56, %105 ], [ %56, %92 ], [ %56, %91 ], [ %56, %81 ], [ %56, %73 ], [ %56, %69 ], [ %56, %118 ], [ %56, %121 ], [ %56, %90 ]
  %125 = icmp eq ptr %123, null
  br i1 %125, label %126, label %55, !prof !428, !llvm.loop !429

126:                                              ; preds = %122, %47, %27, %28, %29, %36, %42
  %127 = phi i32 [ %15, %29 ], [ %15, %36 ], [ %15, %42 ], [ %15, %28 ], [ %15, %27 ], [ %15, %47 ], [ %124, %122 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %128 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %14, !prof !421, !llvm.loop !430

130:                                              ; preds = %126
  %131 = sext i32 %127 to i64
  tail call void @spec_qsort(ptr noundef %7, i64 noundef %131, i64 noundef 8, ptr noundef nonnull @copy_freq_compare_func) #24
  %132 = icmp eq i32 %127, 0
  br i1 %132, label %207, label %135, !prof !431

133:                                              ; preds = %203
  %134 = icmp eq i32 %204, 0
  br i1 %134, label %207, label %135, !prof !432, !llvm.loop !433

135:                                              ; preds = %130, %133
  %136 = phi i32 [ %204, %133 ], [ %127, %130 ]
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %179

138:                                              ; preds = %135
  %139 = zext nneg i32 %136 to i64
  br label %140

140:                                              ; preds = %138, %176
  %141 = phi i64 [ 0, %138 ], [ %177, %176 ]
  %142 = getelementptr inbounds ptr, ptr %7, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !252
  %144 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !349
  %146 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !352
  %148 = tail call fastcc zeroext i8 @coalesced_allocno_conflict_p(ptr noundef %145, ptr noundef %147, i8 noundef zeroext %0) #23, !range !254
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 1
  %152 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 2
  %153 = trunc i64 %141 to i32
  store i1 true, ptr @allocno_coalesced_p, align 1
  %154 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %155 = icmp sgt i32 %154, 3
  %156 = load ptr, ptr @ira_dump_file, align 8
  %157 = icmp ne ptr %156, null
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %172

159:                                              ; preds = %150
  %160 = load i32, ptr %143, align 8, !tbaa !434
  %161 = load ptr, ptr %151, align 8, !tbaa !349
  %162 = load i32, ptr %161, align 8, !tbaa !288
  %163 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !292
  %165 = load ptr, ptr %152, align 8, !tbaa !352
  %166 = load i32, ptr %165, align 8, !tbaa !288
  %167 = getelementptr inbounds %struct.ira_allocno, ptr %165, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !292
  %169 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !360
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %156, ptr noundef nonnull @.str.16, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %170) #23
  br label %172

172:                                              ; preds = %159, %150
  %173 = load ptr, ptr %151, align 8, !tbaa !349
  %174 = load ptr, ptr %152, align 8, !tbaa !352
  tail call fastcc void @merge_allocnos(ptr noundef %173, ptr noundef %174) #23
  %175 = add nuw nsw i32 %153, 1
  br label %179

176:                                              ; preds = %140
  %177 = add nuw nsw i64 %141, 1
  %178 = icmp eq i64 %177, %139
  br i1 %178, label %207, label %140, !llvm.loop !435

179:                                              ; preds = %135, %172
  %180 = phi i32 [ %175, %172 ], [ 0, %135 ]
  %181 = icmp slt i32 %180, %136
  br i1 %181, label %182, label %207

182:                                              ; preds = %179
  %183 = zext nneg i32 %180 to i64
  %184 = zext i32 %136 to i64
  br label %185

185:                                              ; preds = %182, %203
  %186 = phi i64 [ %183, %182 ], [ %205, %203 ]
  %187 = phi i32 [ 0, %182 ], [ %204, %203 ]
  %188 = getelementptr inbounds ptr, ptr %7, i64 %186
  %189 = load ptr, ptr %188, align 8, !tbaa !252
  %190 = getelementptr inbounds %struct.ira_allocno_copy, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !349
  %192 = getelementptr inbounds %struct.ira_allocno, ptr %191, i64 0, i32 18
  %193 = load ptr, ptr %192, align 8, !tbaa !382
  %194 = getelementptr inbounds %struct.ira_allocno_copy, ptr %189, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !352
  %196 = getelementptr inbounds %struct.ira_allocno, ptr %195, i64 0, i32 18
  %197 = load ptr, ptr %196, align 8, !tbaa !382
  %198 = icmp eq ptr %193, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %185
  %200 = add nsw i32 %187, 1
  %201 = sext i32 %187 to i64
  %202 = getelementptr inbounds ptr, ptr %7, i64 %201
  store ptr %189, ptr %202, align 8, !tbaa !252
  br label %203

203:                                              ; preds = %185, %199
  %204 = phi i32 [ %200, %199 ], [ %187, %185 ]
  %205 = add nuw nsw i64 %186, 1
  %206 = icmp eq i64 %205, %184
  br i1 %206, label %133, label %185, !llvm.loop !436

207:                                              ; preds = %133, %179, %176, %11, %130
  tail call void @ira_free(ptr noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_coalesced_allocno_costs_and_nums(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 !prof !437 !PGOFuncName !438 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %55, !prof !439

4:                                                ; preds = %2
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %6 = load ptr, ptr @regno_coalesced_allocno_num, align 8
  %7 = load ptr, ptr @regno_coalesced_allocno_cost, align 8
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %4, %51
  %10 = phi i64 [ 0, %4 ], [ %53, %51 ]
  %11 = phi i32 [ 0, %4 ], [ %52, %51 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !251
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %5, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !252
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !440

18:                                               ; preds = %9
  %19 = getelementptr inbounds i32, ptr %7, i64 %14
  store i32 0, ptr %19, align 4, !tbaa !251
  %20 = add nsw i32 %11, 1
  %21 = getelementptr inbounds i32, ptr %6, i64 %14
  store i32 %20, ptr %21, align 4, !tbaa !251
  br label %51

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !382
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %51, !prof !441

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 19
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %34, %28 ]
  %30 = phi ptr [ %27, %26 ], [ %36, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !367
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !416
  %34 = add nsw i32 %33, %29
  %35 = icmp eq ptr %31, %16
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 19
  br i1 %35, label %37, label %28, !prof !441

37:                                               ; preds = %28
  %38 = add nsw i32 %11, 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %50, %39 ], [ %27, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !367
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !292
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %6, i64 %44
  store i32 %38, ptr %45, align 4, !tbaa !251
  %46 = load i32, ptr %42, align 4, !tbaa !292
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %7, i64 %47
  store i32 %34, ptr %48, align 4, !tbaa !251
  %49 = icmp eq ptr %41, %16
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 19
  br i1 %49, label %51, label %39, !prof !441

51:                                               ; preds = %39, %22, %18
  %52 = phi i32 [ %20, %18 ], [ %11, %22 ], [ %38, %39 ]
  %53 = add nuw nsw i64 %10, 1
  %54 = icmp eq i64 %53, %8
  br i1 %54, label %55, label %9, !prof !442, !llvm.loop !443

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @coalesced_pseudo_reg_freq_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !444 !PGOFuncName !445 {
  %3 = load i32, ptr %0, align 4, !tbaa !251
  %4 = load i32, ptr %1, align 4, !tbaa !251
  %5 = load ptr, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !252
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !251
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !251
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24, !prof !446

14:                                               ; preds = %2
  %15 = load ptr, ptr @regno_coalesced_allocno_num, align 8, !tbaa !252
  %16 = getelementptr inbounds i32, ptr %15, i64 %9
  %17 = load i32, ptr %16, align 4, !tbaa !251
  %18 = getelementptr inbounds i32, ptr %15, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !251
  %20 = sub nsw i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !447

22:                                               ; preds = %14
  %23 = sub nsw i32 %3, %4
  br label %24

24:                                               ; preds = %14, %2, %22
  %25 = phi i32 [ %23, %22 ], [ %12, %2 ], [ %20, %14 ]
  ret i32 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @collect_spilled_coalesced_allocnos(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !437 !PGOFuncName !448 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %36, !prof !439

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  br label %8

8:                                                ; preds = %5, %31
  %9 = phi ptr [ %7, %5 ], [ %32, %31 ]
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = phi i32 [ 0, %5 ], [ %33, %31 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !251
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !252
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !440

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !291
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %31, label %22, !prof !449

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !382
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %31, !prof !450

26:                                               ; preds = %22
  %27 = add nsw i32 %11, 1
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds ptr, ptr %2, i64 %28
  store ptr %16, ptr %29, align 8, !tbaa !252
  %30 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  br label %31

31:                                               ; preds = %8, %18, %22, %26
  %32 = phi ptr [ %9, %8 ], [ %9, %18 ], [ %9, %22 ], [ %30, %26 ]
  %33 = phi i32 [ %11, %8 ], [ %11, %18 ], [ %11, %22 ], [ %27, %26 ]
  %34 = add nuw nsw i64 %10, 1
  %35 = icmp eq i64 %34, %6
  br i1 %35, label %36, label %8, !prof !442, !llvm.loop !451

36:                                               ; preds = %31, %3
  %37 = phi i32 [ 0, %3 ], [ %33, %31 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @coalesce_spill_slots(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !404 !PGOFuncName !452 {
  %3 = tail call ptr @regstat_get_setjmp_crosses() #24
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ira_allocate(i64 noundef %6) #24
  store ptr %7, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !252
  %8 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %14, !prof !405

12:                                               ; preds = %2
  %13 = zext nneg i32 %1 to i64
  br label %18

14:                                               ; preds = %103, %2
  %15 = phi i8 [ 0, %2 ], [ %105, %103 ]
  %16 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %108, label %117, !prof !405

18:                                               ; preds = %12, %103
  %19 = phi i64 [ 0, %12 ], [ %106, %103 ]
  %20 = phi i8 [ 0, %12 ], [ %105, %103 ]
  %21 = phi i32 [ 0, %12 ], [ %104, %103 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !252
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !382
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %27, label %103, !prof !400

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !292
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %29) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %103, !prof !400

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 4, !tbaa !292
  %34 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !251
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47, !prof !400

36:                                               ; preds = %32
  %37 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !252
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %103, !prof !400

42:                                               ; preds = %36
  %43 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %44 = getelementptr inbounds i8, ptr %43, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !354
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %103, !prof !400

47:                                               ; preds = %42, %32
  %48 = icmp eq i64 %19, 0
  br i1 %48, label %84, label %49, !prof !453

49:                                               ; preds = %47, %81
  %50 = phi i64 [ %82, %81 ], [ 0, %47 ]
  %51 = getelementptr inbounds ptr, ptr %0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !252
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 41
  %54 = load i32, ptr %53, align 8, !tbaa !454
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !382
  %57 = icmp eq ptr %56, %52
  br i1 %57, label %58, label %81, !prof !455

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !292
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %60) #24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81, !prof !456

63:                                               ; preds = %58
  %64 = load i32, ptr %59, align 4, !tbaa !292
  %65 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !251
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78, !prof !456

67:                                               ; preds = %63
  %68 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %69 = sext i32 %64 to i64
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !354
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %81, !prof !456

73:                                               ; preds = %67
  %74 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %75 = getelementptr inbounds ptr, ptr %74, i64 %69
  %76 = load ptr, ptr %75, align 8, !tbaa !252
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81, !prof !456

78:                                               ; preds = %73, %63
  %79 = tail call fastcc zeroext i8 @slot_coalesced_allocno_live_ranges_intersect_p(ptr noundef %23, i32 noundef %54) #23, !range !254
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %87, label %81, !prof !457

81:                                               ; preds = %49, %58, %67, %73, %78
  %82 = add nuw nsw i64 %50, 1
  %83 = icmp eq i64 %82, %19
  br i1 %83, label %84, label %49, !prof !458, !llvm.loop !459

84:                                               ; preds = %81, %47
  %85 = add nsw i32 %21, 1
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 41
  store i32 %21, ptr %86, align 8, !tbaa !454
  tail call fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef %23) #23
  br label %103

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 41
  store i1 true, ptr @allocno_coalesced_p, align 1
  %89 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %90 = icmp sgt i32 %89, 3
  %91 = load ptr, ptr @ira_dump_file, align 8
  %92 = icmp ne ptr %91, null
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %100, !prof !460

94:                                               ; preds = %87
  %95 = load i32, ptr %23, align 8, !tbaa !288
  %96 = load i32, ptr %28, align 4, !tbaa !292
  %97 = load i32, ptr %52, align 8, !tbaa !288
  %98 = load i32, ptr %59, align 4, !tbaa !292
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.17, i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98) #23
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, ptr %88, align 8, !tbaa !454
  %102 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 41
  store i32 %101, ptr %102, align 8, !tbaa !454
  tail call fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef %23) #23
  tail call fastcc void @merge_allocnos(ptr noundef nonnull %52, ptr noundef %23) #23
  br label %103

103:                                              ; preds = %84, %100, %18, %27, %36, %42
  %104 = phi i32 [ %21, %18 ], [ %21, %27 ], [ %21, %36 ], [ %21, %42 ], [ %85, %84 ], [ %21, %100 ]
  %105 = phi i8 [ %20, %18 ], [ %20, %27 ], [ %20, %36 ], [ %20, %42 ], [ %20, %84 ], [ 1, %100 ]
  %106 = add nuw nsw i64 %19, 1
  %107 = icmp eq i64 %106, %13
  br i1 %107, label %14, label %18, !prof !461, !llvm.loop !462

108:                                              ; preds = %14, %108
  %109 = phi i64 [ %113, %108 ], [ 0, %14 ]
  %110 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !252
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !252
  tail call void @ira_finish_allocno_live_range_list(ptr noundef %112) #24
  %113 = add nuw nsw i64 %109, 1
  %114 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %108, label %117, !prof !463, !llvm.loop !464

117:                                              ; preds = %108, %14
  %118 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %118) #24
  ret i8 %15
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @coalesced_pseudo_reg_slot_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !465 !PGOFuncName !466 {
  %3 = load i32, ptr %0, align 4, !tbaa !251
  %4 = load i32, ptr %1, align 4, !tbaa !251
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !252
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  %12 = icmp eq ptr %8, null
  br i1 %12, label %17, label %13, !prof !467

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !291
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %25, !prof !468

17:                                               ; preds = %13, %2
  %18 = icmp eq ptr %11, null
  br i1 %18, label %23, label %19, !prof !469

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !291
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %73, !prof !470

23:                                               ; preds = %19, %17
  %24 = sub nsw i32 %3, %4
  br label %73

25:                                               ; preds = %13
  %26 = icmp eq ptr %11, null
  br i1 %26, label %73, label %27, !prof !471

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !291
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %73, label %31, !prof !472

31:                                               ; preds = %27
  %32 = sub nsw i32 %29, %15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34, !prof !473

34:                                               ; preds = %31
  %35 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !474
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %73, !prof !483

37:                                               ; preds = %34
  %38 = sub nsw i32 0, %32
  br label %73

39:                                               ; preds = %31
  %40 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !252
  %41 = getelementptr inbounds ptr, ptr %40, i64 %6
  %42 = load ptr, ptr %41, align 8, !tbaa !252
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !354
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr @regno_max_ref_width, align 8, !tbaa !252
  %51 = getelementptr inbounds i32, ptr %50, i64 %6
  %52 = load i32, ptr %51, align 4, !tbaa !251
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %49)
  %54 = getelementptr inbounds ptr, ptr %40, i64 %9
  %55 = load ptr, ptr %54, align 8, !tbaa !252
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !354
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i32, ptr %50, i64 %9
  %64 = load i32, ptr %63, align 4, !tbaa !251
  %65 = icmp ult i32 %64, %62
  br i1 %65, label %67, label %66, !prof !484

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %39, %66
  %68 = phi i32 [ %64, %66 ], [ %62, %39 ]
  %69 = sub nsw i32 %68, %53
  %70 = icmp eq i32 %68, %53
  %71 = sub nsw i32 %3, %4
  %72 = select i1 %70, i32 %71, i32 %69, !prof !484
  br label %73

73:                                               ; preds = %67, %37, %34, %25, %27, %19, %23
  %74 = phi i32 [ %24, %23 ], [ 1, %19 ], [ -1, %27 ], [ -1, %25 ], [ %38, %37 ], [ %32, %34 ], [ %72, %67 ]
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_mark_allocation_change(i32 noundef %0) local_unnamed_addr #0 !prof !238 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !290
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %9 = getelementptr inbounds i16, ptr %8, i64 %3
  %10 = load i16, ptr %9, align 2, !tbaa !355
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !291
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %66, label %15

15:                                               ; preds = %1
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !340
  br label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %22 = load ptr, ptr %21, align 8, !tbaa !358
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 10
  br label %33

26:                                               ; preds = %20
  %27 = zext i32 %7 to i64
  %28 = zext nneg i32 %13 to i64
  %29 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %27, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !355
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds i32, ptr %22, i64 %31
  br label %33

33:                                               ; preds = %26, %24
  %34 = phi ptr [ %25, %24 ], [ %32, %26 ]
  %35 = load i32, ptr %34, align 4, !tbaa !251
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %5, i8 noundef zeroext 0) #23
  br label %36

36:                                               ; preds = %33, %17
  %37 = phi i32 [ %19, %17 ], [ %35, %33 ]
  %38 = load i32, ptr @ira_overall_cost, align 4, !tbaa !251
  %39 = add nsw i32 %38, %37
  store i32 %39, ptr @ira_overall_cost, align 4, !tbaa !251
  store i32 %11, ptr %12, align 4, !tbaa !291
  %40 = icmp slt i16 %10, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  store i32 -1, ptr %12, align 4, !tbaa !291
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 12
  %43 = load i32, ptr %42, align 4, !tbaa !340
  %44 = sub i32 %43, %37
  br label %62

45:                                               ; preds = %36
  %46 = zext i32 %7 to i64
  %47 = zext nneg i32 %11 to i64
  %48 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !355
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %53 = load ptr, ptr %52, align 8, !tbaa !358
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 10
  %56 = zext nneg i16 %49 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  %58 = select i1 %54, ptr %55, ptr %57
  %59 = load i32, ptr %58, align 4, !tbaa !251
  %60 = sub i32 %59, %37
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %5, i8 noundef zeroext 1) #23
  %61 = load i32, ptr @ira_overall_cost, align 4, !tbaa !251
  br label %62

62:                                               ; preds = %45, %51, %41
  %63 = phi i32 [ %39, %41 ], [ %61, %51 ], [ %39, %45 ]
  %64 = phi i32 [ %44, %41 ], [ %60, %51 ], [ 0, %45 ]
  %65 = add nsw i32 %63, %64
  store i32 %65, ptr @ira_overall_cost, align 4, !tbaa !251
  br label %66

66:                                               ; preds = %1, %62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_copy_costs(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !485 !PGOFuncName !486 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !290
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %104, label %8, !prof !487

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !291
  tail call fastcc void @start_update_cost() #23
  store i32 1, ptr %4, align 4, !tbaa !251
  br label %11

11:                                               ; preds = %100, %8
  %12 = phi ptr [ undef, %8 ], [ %101, %100 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !252
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !342
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !348
  %18 = icmp eq ptr %17, null
  br i1 %18, label %100, label %19, !prof !488

19:                                               ; preds = %11
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !251
  %23 = zext i32 %22 to i64
  %24 = load i32, ptr %4, align 4
  br label %25

25:                                               ; preds = %19, %98
  %26 = phi ptr [ null, %19 ], [ %47, %98 ]
  %27 = phi ptr [ %17, %19 ], [ %47, %98 ]
  %28 = phi ptr [ %12, %19 ], [ %46, %98 ]
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !349
  %31 = icmp eq ptr %30, %13
  br i1 %31, label %32, label %37, !prof !489

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !351
  %35 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !352
  br label %45

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !352
  %40 = icmp eq ptr %39, %13
  br i1 %40, label %41, label %44, !prof !490

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !353
  br label %45

44:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 280, ptr noundef nonnull @.str.5) #24
  br label %45

45:                                               ; preds = %41, %44, %32
  %46 = phi ptr [ %36, %32 ], [ %30, %41 ], [ %28, %44 ]
  %47 = phi ptr [ %34, %32 ], [ %43, %41 ], [ %26, %44 ]
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !290
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %23, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !354
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %98, label %54, !prof !491

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 31
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 256
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %98, !prof !492

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !352
  %62 = icmp eq ptr %61, %13
  br i1 %62, label %63, label %65, !prof !493

63:                                               ; preds = %59
  %64 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %15, i32 noundef %22, i32 noundef %49) #23, !range !357
  br label %67

65:                                               ; preds = %59
  %66 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %15, i32 noundef %49, i32 noundef %22) #23, !range !357
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = icmp eq i8 %1, 0
  %70 = sub nsw i32 0, %68
  %71 = select i1 %69, i32 %68, i32 %70, !prof !494
  %72 = getelementptr inbounds %struct.ira_allocno_copy, ptr %27, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !360
  %74 = mul nsw i32 %73, %71
  %75 = sdiv i32 %74, %24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %98, label %77, !prof !495

77:                                               ; preds = %67
  %78 = shl nsw i32 %24, 2
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 34
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 11
  %81 = load i32, ptr %80, align 8, !tbaa !371
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 33
  %83 = load ptr, ptr %82, align 8, !tbaa !358
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %79, i32 noundef %49, i32 noundef %81, ptr noundef %83) #23
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 36
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 35
  %86 = load ptr, ptr %85, align 8, !tbaa !359
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %84, i32 noundef %49, i32 noundef 0, ptr noundef %86) #23
  %87 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %50, i64 %20
  %88 = load i16, ptr %87, align 2, !tbaa !355
  %89 = load ptr, ptr %79, align 8, !tbaa !361
  %90 = sext i16 %88 to i64
  %91 = getelementptr inbounds i32, ptr %89, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !251
  %93 = add nsw i32 %92, %75
  store i32 %93, ptr %91, align 4, !tbaa !251
  %94 = load ptr, ptr %84, align 8, !tbaa !362
  %95 = getelementptr inbounds i32, ptr %94, i64 %90
  %96 = load i32, ptr %95, align 4, !tbaa !251
  %97 = add nsw i32 %96, %75
  store i32 %97, ptr %95, align 4, !tbaa !251
  tail call fastcc void @queue_update_cost(ptr noundef nonnull %46, i32 noundef %78) #23
  br label %98

98:                                               ; preds = %67, %45, %54, %77
  %99 = icmp eq ptr %47, null
  br i1 %99, label %100, label %25, !prof !496, !llvm.loop !497

100:                                              ; preds = %98, %11
  %101 = phi ptr [ %12, %11 ], [ %46, %98 ]
  %102 = call fastcc zeroext i8 @get_next_update_cost(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !254
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %11, !prof !498, !llvm.loop !499

104:                                              ; preds = %100, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_mark_memory_move_deletion(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !238 {
  %3 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !252
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, 8
  store i16 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 31
  %14 = load i16, ptr %13, align 4
  %15 = or i16 %14, 8
  store i16 %15, ptr %13, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ira_reassign_pseudos(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 !prof !500 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #22
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %12, !prof !501

10:                                               ; preds = %6
  %11 = zext nneg i32 %1 to i64
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %11, i64 noundef 4, ptr noundef nonnull @pseudo_reg_compare) #24
  br label %14

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %188, !prof !502

14:                                               ; preds = %10, %12
  %15 = zext nneg i32 %1 to i64
  %16 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  br label %17

17:                                               ; preds = %14, %65
  %18 = phi ptr [ %16, %14 ], [ %66, %65 ]
  %19 = phi i64 [ 0, %14 ], [ %69, %65 ]
  %20 = phi i8 [ 0, %14 ], [ %68, %65 ]
  %21 = phi i32 [ 0, %14 ], [ %67, %65 ]
  %22 = getelementptr inbounds i32, ptr %0, i64 %19
  %23 = load i32, ptr %22, align 4, !tbaa !251
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, ptr %3, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !321
  %27 = getelementptr inbounds i64, ptr %4, i64 %24
  %28 = load i64, ptr %27, align 8, !tbaa !321
  %29 = or i64 %26, %28
  %30 = or i64 %29, %2
  %31 = getelementptr inbounds i16, ptr %18, i64 %24
  %32 = load i16, ptr %31, align 2, !tbaa !355
  %33 = icmp slt i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2929, ptr noundef nonnull @.str.5) #24
  br label %35

35:                                               ; preds = %17, %34
  %36 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %37 = getelementptr inbounds ptr, ptr %36, i64 %24
  %38 = load ptr, ptr %37, align 8, !tbaa !252
  tail call void @ira_mark_allocation_change(i32 noundef %23) #23
  %39 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %40 = icmp sgt i32 %39, 3
  %41 = load ptr, ptr @ira_dump_file, align 8
  %42 = icmp ne ptr %41, null
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32, ptr %38, align 8, !tbaa !288
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %38, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !340
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %38, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !341
  %50 = sub nsw i32 %47, %49
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.6, i32 noundef %23, i32 noundef %45, i32 noundef %50) #23
  br label %52

52:                                               ; preds = %44, %35
  %53 = tail call fastcc zeroext i8 @allocno_reload_assign(ptr noundef %38, i64 noundef %30) #23, !range !254
  %54 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %55 = getelementptr inbounds i16, ptr %54, i64 %24
  %56 = load i16, ptr %55, align 2, !tbaa !355
  %57 = icmp sgt i16 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %23) #24
  %60 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  br label %65

61:                                               ; preds = %52
  %62 = add nsw i32 %21, 1
  %63 = sext i32 %21 to i64
  %64 = getelementptr inbounds i32, ptr %0, i64 %63
  store i32 %23, ptr %64, align 4, !tbaa !251
  br label %65

65:                                               ; preds = %58, %61
  %66 = phi ptr [ %60, %58 ], [ %54, %61 ]
  %67 = phi i32 [ %21, %58 ], [ %62, %61 ]
  %68 = phi i8 [ 1, %58 ], [ %20, %61 ]
  %69 = add nuw nsw i64 %19, 1
  %70 = icmp eq i64 %69, %15
  br i1 %70, label %71, label %17, !prof !503, !llvm.loop !504

71:                                               ; preds = %65
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %188, label %73, !prof !505

73:                                               ; preds = %71
  %74 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %75 = icmp sgt i32 %74, 3
  %76 = load ptr, ptr @ira_dump_file, align 8
  %77 = icmp ne ptr %76, null
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr nonnull %76)
  %81 = icmp sgt i32 %67, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = zext nneg i32 %67 to i64
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi i64 [ 0, %82 ], [ %90, %84 ]
  %86 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %87 = getelementptr inbounds i32, ptr %0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !251
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.8, i32 noundef %88) #23
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %83
  br i1 %91, label %92, label %84, !llvm.loop !506

92:                                               ; preds = %84, %79
  %93 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %94 = tail call i32 @fputc(i32 10, ptr %93)
  br label %95

95:                                               ; preds = %92, %73
  %96 = icmp sgt i32 %67, 0
  br i1 %96, label %97, label %188

97:                                               ; preds = %95
  %98 = zext nneg i32 %67 to i64
  br label %99

99:                                               ; preds = %97, %138
  %100 = phi i64 [ 0, %97 ], [ %140, %138 ]
  %101 = phi i32 [ 0, %97 ], [ %139, %138 ]
  %102 = getelementptr inbounds i32, ptr %0, i64 %100
  %103 = load i32, ptr %102, align 4, !tbaa !251
  %104 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !252
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %8, ptr noundef %107) #23
  %108 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %8, ptr noundef nonnull %7) #23, !range !254
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %99, %134
  %111 = phi i32 [ %135, %134 ], [ %101, %99 ]
  %112 = load ptr, ptr %7, align 8, !tbaa !252
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !291
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ira_allocno, ptr %112, i64 0, i32 31
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 8
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  %123 = load i32, ptr %112, align 8, !tbaa !288
  %124 = tail call i32 @bitmap_bit_p(ptr noundef %122, i32 noundef %123) #24
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %128 = add nsw i32 %111, 1
  %129 = sext i32 %111 to i64
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129
  store ptr %112, ptr %130, align 8, !tbaa !252
  %131 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  %132 = load i32, ptr %112, align 8, !tbaa !288
  %133 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %131, i32 noundef %132) #24
  br label %134

134:                                              ; preds = %110, %116, %121, %126
  %135 = phi i32 [ %111, %116 ], [ %111, %121 ], [ %128, %126 ], [ %111, %110 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %8) #23
  %136 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %8, ptr noundef nonnull %7) #23, !range !254
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %110, !llvm.loop !507

138:                                              ; preds = %134, %99
  %139 = phi i32 [ %101, %99 ], [ %135, %134 ]
  %140 = add nuw nsw i64 %100, 1
  %141 = icmp eq i64 %140, %98
  br i1 %141, label %142, label %99, !llvm.loop !508

142:                                              ; preds = %138
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %188, label %144

144:                                              ; preds = %142
  %145 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  tail call fastcc void @setup_allocno_priorities(ptr noundef %145, i32 noundef %139) #23
  %146 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %147 = sext i32 %139 to i64
  tail call void @spec_qsort(ptr noundef %146, i64 noundef %147, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #24
  %148 = icmp sgt i32 %139, 0
  br i1 %148, label %149, label %188

149:                                              ; preds = %144
  %150 = zext nneg i32 %139 to i64
  br label %151

151:                                              ; preds = %149, %184
  %152 = phi i64 [ 0, %149 ], [ %186, %184 ]
  %153 = phi i8 [ %68, %149 ], [ %185, %184 ]
  %154 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %155 = getelementptr inbounds ptr, ptr %154, i64 %152
  %156 = load ptr, ptr %155, align 8, !tbaa !252
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !292
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, ptr %3, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !321
  %162 = getelementptr inbounds i64, ptr %4, i64 %159
  %163 = load i64, ptr %162, align 8, !tbaa !321
  %164 = or i64 %161, %163
  %165 = or i64 %164, %2
  %166 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %167 = icmp sgt i32 %166, 3
  %168 = load ptr, ptr @ira_dump_file, align 8
  %169 = icmp ne ptr %168, null
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %179

171:                                              ; preds = %151
  %172 = load i32, ptr %156, align 8, !tbaa !288
  %173 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 12
  %174 = load i32, ptr %173, align 4, !tbaa !340
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 10
  %176 = load i32, ptr %175, align 4, !tbaa !341
  %177 = sub nsw i32 %174, %176
  %178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %168, ptr noundef nonnull @.str.9, i32 noundef %158, i32 noundef %172, i32 noundef %177) #23
  br label %179

179:                                              ; preds = %171, %151
  %180 = tail call fastcc zeroext i8 @allocno_reload_assign(ptr noundef nonnull %156, i64 noundef %165) #23, !range !254
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %158) #24
  br label %184

184:                                              ; preds = %179, %182
  %185 = phi i8 [ 1, %182 ], [ %153, %179 ]
  %186 = add nuw nsw i64 %152, 1
  %187 = icmp eq i64 %186, %150
  br i1 %187, label %188, label %151, !llvm.loop !509

188:                                              ; preds = %184, %95, %12, %144, %142, %71
  %189 = phi i8 [ %68, %71 ], [ %68, %142 ], [ %68, %144 ], [ 0, %12 ], [ %68, %95 ], [ %185, %184 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret i8 %189
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @pseudo_reg_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !238 !PGOFuncName !510 {
  %3 = load i32, ptr %0, align 4, !tbaa !251
  %4 = load i32, ptr %1, align 4, !tbaa !251
  %5 = load ptr, ptr @reg_info_p, align 8, !tbaa !252
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.reg_info_t, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !511
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds %struct.reg_info_t, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !511
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i32 %8, %11
  %14 = sub nsw i32 %3, %4
  %15 = select i1 %13, i32 %14, i32 %12
  ret i32 %15
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @allocno_reload_assign(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !238 !PGOFuncName !513 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !292
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %6 = load i64, ptr %5, align 8, !tbaa !369
  %7 = or i64 %6, %1
  store i64 %7, ptr %5, align 8, !tbaa !369
  %8 = load i32, ptr @flag_caller_saves, align 4, !tbaa !251
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !514
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr @call_used_reg_set, align 8, !tbaa !321
  %16 = or i64 %15, %7
  store i64 %16, ptr %5, align 8, !tbaa !369
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, -257
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !290
  tail call fastcc void @update_curr_costs(ptr noundef nonnull %0) #23
  %23 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef nonnull %0, i8 noundef zeroext 1) #23, !range !254
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !291
  %26 = trunc i32 %25 to i16
  %27 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %28 = sext i32 %4 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  store i16 %26, ptr %29, align 2, !tbaa !355
  %30 = icmp slt i32 %25, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 -1, ptr %24, align 4, !tbaa !291
  br label %63

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !340
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %36 = load ptr, ptr %35, align 8, !tbaa !358
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  br label %47

40:                                               ; preds = %32
  %41 = zext i32 %22 to i64
  %42 = zext nneg i32 %25 to i64
  %43 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %41, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !355
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i32, ptr %36, i64 %45
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi ptr [ %39, %38 ], [ %46, %40 ]
  %49 = load i32, ptr %48, align 4, !tbaa !251
  %50 = sub i32 %49, %34
  %51 = load i32, ptr @ira_overall_cost, align 4, !tbaa !251
  %52 = add i32 %50, %51
  store i32 %52, ptr @ira_overall_cost, align 4, !tbaa !251
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %54 = load i32, ptr %53, align 8, !tbaa !514
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !342
  %59 = load i64, ptr @call_used_reg_set, align 8, !tbaa !321
  %60 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %25, i32 noundef %58, i64 noundef %59) #23, !range !254
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, ptr @caller_save_needed, align 4, !tbaa !251
  br label %63

63:                                               ; preds = %47, %56, %62, %31
  %64 = shl i32 %25, 16
  %65 = ashr exact i32 %64, 16
  %66 = icmp sgt i16 %26, -1
  %67 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %68 = icmp sgt i32 %67, 3
  %69 = load ptr, ptr @ira_dump_file, align 8
  %70 = icmp ne ptr %69, null
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %66, label %72, label %93

72:                                               ; preds = %63
  br i1 %71, label %73, label %78

73:                                               ; preds = %72
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %69, ptr noundef nonnull @.str.18, i32 noundef %65) #23
  %75 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %76 = getelementptr inbounds i16, ptr %75, i64 %28
  %77 = load i16, ptr %76, align 2, !tbaa !355
  br label %78

78:                                               ; preds = %73, %72
  %79 = phi i16 [ %77, %73 ], [ %26, %72 ]
  %80 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !252
  %81 = getelementptr inbounds ptr, ptr %80, i64 %28
  %82 = load ptr, ptr %81, align 8, !tbaa !252
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef %82) #23
  %84 = sext i16 %79 to i32
  tail call void @df_ref_change_reg_with_loc(i32 noundef %83, i32 noundef %84, ptr noundef %82) #24
  %85 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %86 = getelementptr inbounds i16, ptr %85, i64 %28
  %87 = load i16, ptr %86, align 2, !tbaa !355
  %88 = sext i16 %87 to i32
  %89 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !252
  %90 = getelementptr inbounds ptr, ptr %89, i64 %28
  %91 = load ptr, ptr %90, align 8, !tbaa !252
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  store i32 %88, ptr %92, align 8, !tbaa !354
  tail call void @mark_home_live(i32 noundef %4) #24
  br label %96

93:                                               ; preds = %63
  br i1 %71, label %94, label %96

94:                                               ; preds = %93
  %95 = tail call i32 @fputc(i32 10, ptr nonnull %69)
  br label %96

96:                                               ; preds = %93, %94, %78
  %97 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %98 = getelementptr inbounds i16, ptr %97, i64 %28
  %99 = load i16, ptr %98, align 2, !tbaa !355
  %100 = icmp sgt i16 %99, -1
  %101 = zext i1 %100 to i8
  ret i8 %101
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_reuse_stack_slot(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !515 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %6 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %10 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !251
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %164, label %12, !prof !425

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !291
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21, !prof !425

16:                                               ; preds = %12
  %17 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !251
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %164

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 15
  br label %28

21:                                               ; preds = %12
  %22 = sub nuw i32 -2, %14
  %23 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !252
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %23, i64 %24, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !516
  br label %133

28:                                               ; preds = %19, %115
  %29 = phi i64 [ 0, %19 ], [ %119, %115 ]
  %30 = phi ptr [ undef, %19 ], [ %118, %115 ]
  %31 = phi i32 [ -1, %19 ], [ %117, %115 ]
  %32 = phi i32 [ -1, %19 ], [ %116, %115 ]
  %33 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !252
  %34 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %33, i64 %29
  %35 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %33, i64 %29, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !516
  %37 = icmp eq ptr %36, null
  br i1 %37, label %115, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %33, i64 %29, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !519
  %41 = icmp ult i32 %40, %2
  br i1 %41, label %115, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %36, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !354
  %49 = zext i8 %48 to i32
  %50 = icmp ult i32 %49, %1
  br i1 %50, label %115, label %51

51:                                               ; preds = %42
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef 53, ptr noundef nonnull %4) #23
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51, %62
  %55 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %56 = load i32, ptr %4, align 4, !tbaa !251
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !252
  %60 = tail call fastcc zeroext i8 @allocnos_have_intersected_live_ranges_p(ptr noundef %9, ptr noundef %59) #23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %54
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %54, !llvm.loop !520

65:                                               ; preds = %62, %51
  %66 = phi ptr [ %30, %51 ], [ %59, %62 ]
  %67 = load ptr, ptr %20, align 8, !tbaa !348
  %68 = icmp eq ptr %67, null
  br i1 %68, label %108, label %69

69:                                               ; preds = %65, %105
  %70 = phi ptr [ %92, %105 ], [ %66, %65 ]
  %71 = phi ptr [ %91, %105 ], [ null, %65 ]
  %72 = phi ptr [ %91, %105 ], [ %67, %65 ]
  %73 = phi i32 [ %106, %105 ], [ 0, %65 ]
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !349
  %76 = icmp eq ptr %75, %9
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !351
  %80 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !352
  br label %90

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !352
  %85 = icmp eq ptr %84, %9
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !353
  br label %90

89:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3074, ptr noundef nonnull @.str.5) #24
  br label %90

90:                                               ; preds = %86, %89, %77
  %91 = phi ptr [ %79, %77 ], [ %88, %86 ], [ %71, %89 ]
  %92 = phi ptr [ %81, %77 ], [ %75, %86 ], [ %70, %89 ]
  %93 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !426
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %92, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !292
  %99 = tail call i32 @bitmap_bit_p(ptr noundef %34, i32 noundef %98) #24
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !360
  %104 = add nsw i32 %103, %73
  br label %105

105:                                              ; preds = %96, %101, %90
  %106 = phi i32 [ %73, %90 ], [ %104, %101 ], [ %73, %96 ]
  %107 = icmp eq ptr %91, null
  br i1 %107, label %108, label %69, !llvm.loop !521

108:                                              ; preds = %105, %65
  %109 = phi i32 [ 0, %65 ], [ %106, %105 ]
  %110 = phi ptr [ %66, %65 ], [ %92, %105 ]
  %111 = icmp sgt i32 %109, %31
  %112 = trunc i64 %29 to i32
  %113 = select i1 %111, i32 %112, i32 %32
  %114 = tail call i32 @llvm.smax.i32(i32 %109, i32 %31)
  br label %115

115:                                              ; preds = %54, %108, %38, %42, %28
  %116 = phi i32 [ %32, %28 ], [ %32, %38 ], [ %32, %42 ], [ %113, %108 ], [ %32, %54 ]
  %117 = phi i32 [ %31, %28 ], [ %31, %38 ], [ %31, %42 ], [ %114, %108 ], [ %31, %54 ]
  %118 = phi ptr [ %30, %28 ], [ %30, %38 ], [ %30, %42 ], [ %110, %108 ], [ %59, %54 ]
  %119 = add nuw nsw i64 %29, 1
  %120 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !251
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %28, label %123, !llvm.loop !522

123:                                              ; preds = %115
  %124 = icmp sgt i32 %117, -1
  br i1 %124, label %125, label %164

125:                                              ; preds = %123
  %126 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !252
  %127 = sext i32 %116 to i64
  %128 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %126, i64 %127
  %129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %128, i32 noundef %0) #24
  %130 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %126, i64 %127, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !516
  %132 = sub i32 -2, %116
  store i32 %132, ptr %13, align 4, !tbaa !291
  br label %133

133:                                              ; preds = %125, %21
  %134 = phi i32 [ %22, %21 ], [ %116, %125 ]
  %135 = phi ptr [ %27, %21 ], [ %131, %125 ]
  %136 = phi ptr [ %25, %21 ], [ %128, %125 ]
  %137 = icmp eq ptr %135, null
  br i1 %137, label %164, label %138, !prof !523

138:                                              ; preds = %133
  %139 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %136, i32 noundef %0) #24
  %140 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %141 = icmp sgt i32 %140, 3
  %142 = load ptr, ptr @ira_dump_file, align 8
  %143 = icmp ne ptr %142, null
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %164, !prof !460

145:                                              ; preds = %138
  %146 = load ptr, ptr @reg_info_p, align 8, !tbaa !252
  %147 = getelementptr inbounds %struct.reg_info_t, ptr %146, i64 %7
  %148 = load i32, ptr %147, align 4, !tbaa !511
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %142, ptr noundef nonnull @.str.10, i32 noundef %0, i32 noundef %148, i32 noundef %134) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %136, i32 noundef 53, ptr noundef nonnull %4) #23
  %150 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %145, %158
  %153 = load i32, ptr %4, align 4, !tbaa !251
  %154 = icmp eq i32 %153, %0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.8, i32 noundef %153) #23
  br label %158

158:                                              ; preds = %152, %155
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %159 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %152, !llvm.loop !524

161:                                              ; preds = %158, %145
  %162 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %163 = tail call i32 @fputc(i32 10, ptr %162)
  br label %164

164:                                              ; preds = %16, %123, %133, %161, %138, %3
  %165 = phi ptr [ null, %3 ], [ %135, %138 ], [ %135, %161 ], [ null, %133 ], [ null, %123 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret ptr %165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 !prof !525 !PGOFuncName !526 {
  %5 = load ptr, ptr %1, align 8, !tbaa !527
  store ptr %5, ptr %0, align 8, !tbaa !528
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !530
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !531

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !528
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !532
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !534

14:                                               ; preds = %9
  %15 = shl i32 %12, 7
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %2, %9 ]
  %18 = lshr i32 %17, 6
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !535
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !321
  %24 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %25 = and i32 %17, 63
  %26 = zext nneg i32 %25 to i64
  %27 = lshr i64 %23, %26
  store i64 %27, ptr %24, align 8, !tbaa !536
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add i32 %17, %29
  store i32 %30, ptr %3, align 4, !tbaa !251
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !537 !PGOFuncName !538 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !539

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !540

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !251
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !541, !llvm.loop !542

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !251
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !251
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !535
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !528
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !535
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !543

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !321
  store i64 %35, ptr %3, align 8, !tbaa !536
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !544

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !251
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !251
  %40 = load i32, ptr %23, align 8, !tbaa !535
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !535
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !545, !llvm.loop !546

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !547
  store ptr %44, ptr %0, align 8, !tbaa !528
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !548

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !532
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !251
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !536
  store i32 %16, ptr %1, align 4, !tbaa !251
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @allocnos_have_intersected_live_ranges_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !238 !PGOFuncName !549 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !550
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !550
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !354
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !354
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12, %8, %4
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !551
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !551
  %23 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %20, ptr noundef %22) #24
  br label %24

24:                                               ; preds = %12, %2, %18
  %25 = phi i8 [ %23, %18 ], [ 0, %2 ], [ 0, %12 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !552 !PGOFuncName !553 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !536
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !536
  %6 = load i32, ptr %1, align 4, !tbaa !251
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !251
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_mark_new_stack_slot(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !554 {
  %4 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !252
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !291
  %10 = sub i32 -2, %9
  %11 = icmp eq i32 %9, -1
  br i1 %11, label %12, label %16, !prof !413

12:                                               ; preds = %3
  %13 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !251
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !251
  %15 = sub i32 -2, %13
  store i32 %15, ptr %8, align 4, !tbaa !291
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %13, %12 ], [ %10, %3 ]
  %18 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !252
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %20) #23
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %1) #24
  %22 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19, i32 1
  store ptr %0, ptr %22, align 8, !tbaa !516
  %23 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19, i32 2
  store i32 %2, ptr %23, align 8, !tbaa !519
  %24 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %25 = icmp sgt i32 %24, 3
  %26 = load ptr, ptr @ira_dump_file, align 8
  %27 = icmp ne ptr %26, null
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %34, !prof !414

29:                                               ; preds = %16
  %30 = load ptr, ptr @reg_info_p, align 8, !tbaa !252
  %31 = getelementptr inbounds %struct.reg_info_t, ptr %30, i64 %5
  %32 = load i32, ptr %31, align 4, !tbaa !511
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %32, i32 noundef %17) #23
  br label %34

34:                                               ; preds = %29, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #8 !prof !554 !PGOFuncName !555 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !556
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ira_better_spill_reload_regno_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !557 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  %14 = call fastcc i32 @calculate_spill_cost(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %12) #23
  %15 = call fastcc i32 @calculate_spill_cost(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %13) #23
  %16 = load i32, ptr %8, align 4, !tbaa !251
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %48, label %21, !prof !558

21:                                               ; preds = %5
  br i1 %17, label %24, label %22, !prof !559

22:                                               ; preds = %21
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %22, %21
  %25 = icmp eq i32 %14, %15
  br i1 %25, label %28, label %26, !prof !559

26:                                               ; preds = %24
  %27 = icmp slt i32 %14, %15
  br label %48

28:                                               ; preds = %24
  %29 = load i32, ptr %6, align 4, !tbaa !251
  %30 = load i32, ptr %7, align 4, !tbaa !251
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %34, label %32, !prof !559

32:                                               ; preds = %28
  %33 = icmp sgt i32 %29, %30
  br label %48

34:                                               ; preds = %28
  %35 = load i32, ptr %12, align 4, !tbaa !251
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %48, !prof !560

37:                                               ; preds = %34
  %38 = load i32, ptr %13, align 4, !tbaa !251
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = zext nneg i32 %35 to i64
  %42 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !251
  %44 = zext nneg i32 %38 to i64
  %45 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !251
  %47 = icmp slt i32 %43, %46
  br label %48

48:                                               ; preds = %34, %37, %22, %5, %40, %32, %26
  %49 = phi i1 [ %27, %26 ], [ %33, %32 ], [ %47, %40 ], [ true, %5 ], [ false, %22 ], [ false, %37 ], [ false, %34 ]
  %50 = zext i1 %49 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_spill_cost(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 !prof !561 !PGOFuncName !562 {
  store i32 0, ptr %5, align 4, !tbaa !251
  %9 = load i32, ptr %0, align 4, !tbaa !251
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %152, label %11, !prof !563

11:                                               ; preds = %8
  %12 = icmp eq ptr %1, null
  %13 = icmp eq ptr %2, null
  %14 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %15 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  br label %16

16:                                               ; preds = %11, %144
  %17 = phi ptr [ %15, %11 ], [ %145, %144 ]
  %18 = phi ptr [ %14, %11 ], [ %146, %144 ]
  %19 = phi i64 [ 0, %11 ], [ %148, %144 ]
  %20 = phi i32 [ %9, %11 ], [ %150, %144 ]
  %21 = phi i32 [ 0, %11 ], [ %35, %144 ]
  %22 = phi i32 [ 0, %11 ], [ %147, %144 ]
  %23 = phi i32 [ 0, %11 ], [ %69, %144 ]
  %24 = tail call fastcc i32 @REG_N_REFS(i32 noundef %20) #23
  %25 = load i32, ptr %5, align 4, !tbaa !251
  %26 = add nsw i32 %25, %24
  store i32 %26, ptr %5, align 4, !tbaa !251
  %27 = zext nneg i32 %20 to i64
  %28 = getelementptr inbounds i16, ptr %18, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !355
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds ptr, ptr %17, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !252
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !344
  %35 = add nsw i32 %34, %21
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 12
  %37 = load i32, ptr %36, align 4, !tbaa !340
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 10
  %39 = load i32, ptr %38, align 4, !tbaa !341
  %40 = sub nsw i32 %37, %39
  %41 = add nsw i32 %40, %22
  %42 = sext i16 %29 to i64
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !342
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !354
  %48 = zext i8 %47 to i32
  %49 = icmp eq i8 %47, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %16
  %51 = load i64, ptr @call_used_reg_set, align 8, !tbaa !321
  %52 = sext i16 %29 to i64
  %53 = zext i8 %47 to i64
  br label %54

54:                                               ; preds = %50, %60
  %55 = phi i64 [ 0, %50 ], [ %61, %60 ]
  %56 = add nsw i64 %55, %52
  %57 = shl nuw i64 1, %56
  %58 = and i64 %51, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, %53
  br i1 %62, label %65, label %54, !llvm.loop !564

63:                                               ; preds = %54
  %64 = trunc i64 %55 to i32
  br label %65

65:                                               ; preds = %60, %63, %16
  %66 = phi i32 [ 0, %16 ], [ %64, %63 ], [ %48, %60 ]
  %67 = icmp eq i32 %66, %48
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %23, %68
  br i1 %12, label %77, label %70

70:                                               ; preds = %65
  %71 = load i32, ptr %1, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #23
  %76 = icmp eq i32 %75, %30
  br label %77

77:                                               ; preds = %74, %70, %65
  %78 = phi i1 [ false, %70 ], [ false, %65 ], [ %76, %74 ]
  br i1 %13, label %86, label %79

79:                                               ; preds = %77
  %80 = load i32, ptr %2, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #23
  %85 = icmp eq i32 %84, %30
  br label %86

86:                                               ; preds = %83, %79, %77
  %87 = phi i1 [ false, %79 ], [ false, %77 ], [ %85, %83 ]
  %88 = select i1 %78, i1 true, i1 %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %86
  %90 = tail call ptr @find_regno_note(ptr noundef %3, i32 noundef 1, i32 noundef %30) #24
  %91 = icmp eq ptr %90, null
  %92 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %93 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !252
  br i1 %91, label %144, label %94

94:                                               ; preds = %89
  br i1 %78, label %95, label %104

95:                                               ; preds = %94
  %96 = load i32, ptr %43, align 8, !tbaa !342
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !290
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %97, i64 %100, i64 1
  %102 = load i16, ptr %101, align 2, !tbaa !355
  %103 = sext i16 %102 to i32
  br label %104

104:                                              ; preds = %95, %94
  %105 = phi i32 [ %103, %95 ], [ 0, %94 ]
  br i1 %87, label %106, label %116

106:                                              ; preds = %104
  %107 = load i32, ptr %43, align 8, !tbaa !342
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !290
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %108, i64 %111
  %113 = load i16, ptr %112, align 4, !tbaa !355
  %114 = sext i16 %113 to i32
  %115 = add nsw i32 %105, %114
  br label %116

116:                                              ; preds = %106, %104
  %117 = phi i32 [ %115, %106 ], [ %105, %104 ]
  %118 = load i32, ptr @optimize_size, align 4, !tbaa !251
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !251
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr @cfun, align 8, !tbaa !252
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !270
  %127 = load ptr, ptr %126, align 8, !tbaa !272
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !274
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %123, %120
  %132 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !354
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 11
  %135 = load i32, ptr %134, align 8, !tbaa !264
  %136 = add i32 %135, 9
  %137 = icmp ult i32 %136, 19
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = sdiv i32 %135, -10
  br label %140

140:                                              ; preds = %138, %131, %116, %123
  %141 = phi i32 [ -1000, %123 ], [ -1000, %116 ], [ %139, %138 ], [ -1, %131 ]
  %142 = mul i32 %141, %117
  %143 = add i32 %142, %41
  br label %144

144:                                              ; preds = %89, %140, %86
  %145 = phi ptr [ %93, %140 ], [ %93, %89 ], [ %17, %86 ]
  %146 = phi ptr [ %92, %140 ], [ %92, %89 ], [ %18, %86 ]
  %147 = phi i32 [ %143, %140 ], [ %41, %89 ], [ %41, %86 ]
  %148 = add nuw i64 %19, 1
  %149 = getelementptr inbounds i32, ptr %0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !251
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %16, !prof !503

152:                                              ; preds = %144, %8
  %153 = phi i32 [ 0, %8 ], [ %69, %144 ]
  %154 = phi i32 [ 0, %8 ], [ %147, %144 ]
  %155 = phi i32 [ 0, %8 ], [ %35, %144 ]
  store i32 %155, ptr %4, align 4, !tbaa !251
  store i32 %153, ptr %6, align 4, !tbaa !251
  %156 = load i32, ptr %0, align 4, !tbaa !251
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %164, !prof !565

158:                                              ; preds = %152
  %159 = load ptr, ptr @reg_renumber, align 8, !tbaa !252
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds i16, ptr %159, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !355
  %163 = sext i16 %162 to i32
  br label %164

164:                                              ; preds = %158, %152
  %165 = phi i32 [ %163, %158 ], [ -1, %152 ]
  store i32 %165, ptr %7, align 4, !tbaa !251
  ret i32 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_initiate_assign() local_unnamed_addr #0 !prof !500 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #24
  store ptr %4, ptr @sorted_allocnos, align 8, !tbaa !252
  %5 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %5, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  tail call fastcc void @initiate_cost_update() #23
  %6 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #24
  store ptr %9, ptr @allocno_priorities, align 8, !tbaa !252
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_cost_update() unnamed_addr #0 !prof !500 !PGOFuncName !566 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 4
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #24
  store ptr %4, ptr @update_cost_queue_elems, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %3, i1 false)
  store i32 0, ptr @update_cost_check, align 4, !tbaa !251
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_assign() local_unnamed_addr #0 !prof !500 {
  %1 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %1) #24
  %2 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  tail call void @ira_free_bitmap(ptr noundef %2) #24
  tail call fastcc void @finish_cost_update() #23
  %3 = load ptr, ptr @allocno_priorities, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_cost_update() unnamed_addr #0 !prof !500 !PGOFuncName !567 {
  %1 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_color() local_unnamed_addr #0 !prof !404 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #23
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5, !prof !420

5:                                                ; preds = %0, %5
  %6 = load ptr, ptr %1, align 8, !tbaa !252
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !340
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 13
  store i32 %8, ptr %9, align 8, !tbaa !368
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !341
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 11
  store i32 %11, ptr %12, align 8, !tbaa !371
  %13 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !prof !421, !llvm.loop !568

15:                                               ; preds = %5, %0
  %16 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !354
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18, !prof !409

18:                                               ; preds = %15
  tail call fastcc void @color() #23
  br label %20

19:                                               ; preds = %15
  tail call fastcc void @fast_allocation() #23
  br label %20

20:                                               ; preds = %19, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @color() unnamed_addr #0 !prof !404 !PGOFuncName !569 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %2 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %1) #23
  store ptr %2, ptr @allocno_stack_vec, align 8, !tbaa !252
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %4 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %3) #23
  store ptr %4, ptr @removed_splay_allocno_vec, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @allocated_hardreg_p, i8 0, i64 53, i1 false)
  tail call void @ira_initiate_assign() #23
  tail call fastcc void @do_coloring() #23
  tail call void @ira_finish_assign() #23
  tail call fastcc void @VEC_ira_allocno_t_heap_free(ptr noundef nonnull @removed_splay_allocno_vec) #23
  tail call fastcc void @VEC_ira_allocno_t_heap_free(ptr noundef nonnull @allocno_stack_vec) #23
  tail call fastcc void @move_spill_restore() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fast_allocation() unnamed_addr #0 !prof !238 !PGOFuncName !570 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #24
  store ptr %6, ptr @sorted_allocnos, align 8, !tbaa !252
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #23
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %0, %9
  %10 = phi i64 [ %12, %9 ], [ 0, %0 ]
  %11 = load ptr, ptr %1, align 8, !tbaa !252
  %12 = add nuw i64 %10, 1
  %13 = getelementptr inbounds ptr, ptr %6, i64 %10
  store ptr %11, ptr %13, align 8, !tbaa !252
  %14 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !571

16:                                               ; preds = %9
  %17 = trunc i64 %12 to i32
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %20 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = tail call ptr @ira_allocate(i64 noundef %22) #24
  store ptr %23, ptr @allocno_priorities, align 8, !tbaa !252
  %24 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  tail call fastcc void @setup_allocno_priorities(ptr noundef %24, i32 noundef %19) #23
  %25 = load i32, ptr @ira_max_point, align 4, !tbaa !251
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @ira_allocate(i64 noundef %27) #24
  %29 = load i32, ptr @ira_max_point, align 4, !tbaa !251
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = zext nneg i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %33, i1 false), !tbaa !321
  br label %34

34:                                               ; preds = %31, %18
  %35 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %36 = zext i32 %19 to i64
  tail call void @spec_qsort(ptr noundef %35, i64 noundef %36, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #24
  %37 = icmp eq i32 %19, 0
  %38 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  br i1 %37, label %149, label %39

39:                                               ; preds = %34, %146
  %40 = phi i64 [ %147, %146 ], [ 0, %34 ]
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !252
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 26
  %44 = load i64, ptr %43, align 8, !tbaa !572
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !252
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %39, %68
  %49 = phi ptr [ %71, %68 ], [ %46, %39 ]
  %50 = phi i64 [ %69, %68 ], [ %44, %39 ]
  %51 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %49, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !573
  %53 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %49, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !575
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %48
  %57 = sext i32 %52 to i64
  %58 = add i32 %54, 1
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ %57, %56 ], [ %65, %59 ]
  %61 = phi i64 [ %50, %56 ], [ %64, %59 ]
  %62 = getelementptr inbounds i64, ptr %28, i64 %60
  %63 = load i64, ptr %62, align 8, !tbaa !321
  %64 = or i64 %63, %61
  %65 = add nsw i64 %60, 1
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %58, %66
  br i1 %67, label %68, label %59, !llvm.loop !576

68:                                               ; preds = %59, %48
  %69 = phi i64 [ %50, %48 ], [ %64, %59 ]
  %70 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %49, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !252
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %48, !llvm.loop !577

73:                                               ; preds = %68, %39
  %74 = phi i64 [ %44, %39 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !290
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 31
  %78 = load i16, ptr %77, align 4
  %79 = or i16 %78, 256
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 3
  store i32 -1, ptr %80, align 4, !tbaa !291
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !321
  %84 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %83, i64 noundef %74) #23, !range !254
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %146

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !342
  %89 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %81
  %90 = load i32, ptr %89, align 4, !tbaa !251
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %146

92:                                               ; preds = %86
  %93 = and i16 %78, 16
  %94 = icmp ne i16 %93, 0
  %95 = zext i32 %88 to i64
  %96 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %81, i64 %95
  %97 = zext nneg i32 %90 to i64
  br label %98

98:                                               ; preds = %92, %143
  %99 = phi i64 [ 0, %92 ], [ %144, %143 ]
  %100 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %81, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !355
  %102 = sext i16 %101 to i32
  %103 = icmp sgt i16 %101, 7
  %104 = select i1 %94, i1 %103, i1 false
  %105 = icmp slt i16 %101, 16
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %143, label %107

107:                                              ; preds = %98
  %108 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %102, i32 noundef %88, i64 noundef %74) #23, !range !254
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %143, label %110

110:                                              ; preds = %107
  %111 = load i64, ptr %96, align 8, !tbaa !321
  %112 = zext nneg i32 %102 to i64
  %113 = shl nuw i64 1, %112
  %114 = and i64 %111, %113
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %110
  store i32 %102, ptr %80, align 4, !tbaa !291
  br i1 %47, label %146, label %117

117:                                              ; preds = %116
  %118 = sext i16 %101 to i64
  %119 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %118, i64 %95
  br label %120

120:                                              ; preds = %117, %139
  %121 = phi ptr [ %46, %117 ], [ %141, %139 ]
  %122 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !573
  %124 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %121, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !575
  %126 = icmp sgt i32 %123, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %120
  %128 = sext i32 %123 to i64
  %129 = add i32 %125, 1
  br label %130

130:                                              ; preds = %127, %130
  %131 = phi i64 [ %128, %127 ], [ %136, %130 ]
  %132 = load i64, ptr %119, align 8, !tbaa !321
  %133 = getelementptr inbounds i64, ptr %28, i64 %131
  %134 = load i64, ptr %133, align 8, !tbaa !321
  %135 = or i64 %134, %132
  store i64 %135, ptr %133, align 8, !tbaa !321
  %136 = add nsw i64 %131, 1
  %137 = trunc i64 %136 to i32
  %138 = icmp eq i32 %129, %137
  br i1 %138, label %139, label %130, !llvm.loop !578

139:                                              ; preds = %130, %120
  %140 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %121, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !252
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %120, !llvm.loop !579

143:                                              ; preds = %107, %110, %98
  %144 = add nuw nsw i64 %99, 1
  %145 = icmp eq i64 %144, %97
  br i1 %145, label %146, label %98, !llvm.loop !580

146:                                              ; preds = %143, %139, %86, %116, %73
  %147 = add nuw nsw i64 %40, 1
  %148 = icmp eq i64 %147, %36
  br i1 %148, label %149, label %39, !llvm.loop !581

149:                                              ; preds = %146, %34
  tail call void @ira_free(ptr noundef %38) #24
  tail call void @ira_free(ptr noundef %28) #24
  %150 = load ptr, ptr @allocno_priorities, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %150) #24
  %151 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %152 = icmp sgt i32 %151, 1
  %153 = load ptr, ptr @ira_dump_file, align 8
  %154 = icmp ne ptr %153, null
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  tail call void @ira_print_disposition(ptr noundef nonnull %153) #24
  br label %157

157:                                              ; preds = %156, %149
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !238 !PGOFuncName !582 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #23
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !238 !PGOFuncName !583 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #15 !prof !238 !PGOFuncName !584 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !285
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !238 !PGOFuncName !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.5) #24
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !252
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 !prof !238 !PGOFuncName !586 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  ret ptr %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !587 !PGOFuncName !588 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !494

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #24
  %9 = load ptr, ptr %5, align 8, !tbaa !252
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !355
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_or_copy_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 !prof !589 !PGOFuncName !590 {
  %5 = load ptr, ptr %0, align 8, !tbaa !252
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %51, !prof !591

7:                                                ; preds = %4
  %8 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %8, ptr %0, align 8, !tbaa !252
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !251
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %48, !prof !592

13:                                               ; preds = %7
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %51, !prof !593

15:                                               ; preds = %13
  %16 = zext nneg i32 %11 to i64
  %17 = add nuw nsw i64 %16, 3
  %18 = and i64 %17, 4294967292
  %19 = add nsw i64 %16, -1
  %20 = insertelement <4 x i64> poison, i64 %19, i64 0
  %21 = shufflevector <4 x i64> %20, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %22

22:                                               ; preds = %44, %15
  %23 = phi i64 [ 0, %15 ], [ %45, %44 ]
  %24 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %15 ], [ %46, %44 ]
  %25 = icmp ule <4 x i64> %24, %21
  %26 = extractelement <4 x i1> %25, i64 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds i32, ptr %8, i64 %23
  store i32 %2, ptr %28, align 4, !tbaa !251
  br label %29

29:                                               ; preds = %27, %22
  %30 = extractelement <4 x i1> %25, i64 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i64 %23, 1
  %33 = getelementptr inbounds i32, ptr %8, i64 %32
  store i32 %2, ptr %33, align 4, !tbaa !251
  br label %34

34:                                               ; preds = %31, %29
  %35 = extractelement <4 x i1> %25, i64 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = or disjoint i64 %23, 2
  %38 = getelementptr inbounds i32, ptr %8, i64 %37
  store i32 %2, ptr %38, align 4, !tbaa !251
  br label %39

39:                                               ; preds = %36, %34
  %40 = extractelement <4 x i1> %25, i64 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = or disjoint i64 %23, 3
  %43 = getelementptr inbounds i32, ptr %8, i64 %42
  store i32 %2, ptr %43, align 4, !tbaa !251
  br label %44

44:                                               ; preds = %41, %39
  %45 = add i64 %23, 4
  %46 = add <4 x i64> %24, <i64 4, i64 4, i64 4, i64 4>
  %47 = icmp eq i64 %45, %18
  br i1 %47, label %51, label %22, !prof !594, !llvm.loop !595

48:                                               ; preds = %7
  %49 = sext i32 %11 to i64
  %50 = shl nsw i64 %49, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr nonnull align 4 %3, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %44, %13, %48, %4
  ret void
}

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @start_update_cost() unnamed_addr #17 !prof !598 !PGOFuncName !599 {
  %1 = load i32, ptr @update_cost_check, align 4, !tbaa !251
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @update_cost_check, align 4, !tbaa !251
  store ptr null, ptr @update_cost_queue, align 8, !tbaa !252
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_copy_costs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !600 !PGOFuncName !601 {
  %4 = load ptr, ptr %0, align 8, !tbaa !252
  %5 = icmp ne ptr %4, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %6, %5
  br i1 %7, label %15, label %8, !prof !602

8:                                                ; preds = %3
  %9 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %9, ptr %0, align 8, !tbaa !252
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !251
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr nonnull align 4 %2, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #2 !prof !603 !PGOFuncName !604 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @queue_update_cost(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !605 !PGOFuncName !606 {
  %3 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !252
  %4 = load i32, ptr %0, align 8, !tbaa !288
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %3, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !607
  %8 = load i32, ptr @update_cost_check, align 4, !tbaa !251
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %22, label %10, !prof !609

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !290
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !610

14:                                               ; preds = %10
  store i32 %8, ptr %6, align 8, !tbaa !607
  %15 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %3, i64 %5, i32 1
  store i32 %1, ptr %15, align 4, !tbaa !611
  %16 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %3, i64 %5, i32 2
  store ptr null, ptr %16, align 8, !tbaa !612
  %17 = load ptr, ptr @update_cost_queue, align 8, !tbaa !252
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @update_cost_queue_tail, align 8
  %20 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %19, i64 0, i32 2
  %21 = select i1 %18, ptr @update_cost_queue, ptr %20, !prof !613
  store ptr %0, ptr %21, align 8, !tbaa !252
  store ptr %6, ptr @update_cost_queue_tail, align 8, !tbaa !252
  br label %22

22:                                               ; preds = %14, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_conflict_hard_regno_costs(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !614 !PGOFuncName !615 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = call fastcc zeroext i8 @get_next_update_cost(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !254
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %118, label %11, !prof !616

7:                                                ; preds = %116, %11
  %8 = phi ptr [ %12, %11 ], [ %41, %116 ]
  %9 = call fastcc zeroext i8 @get_next_update_cost(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !254
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %118, label %11, !prof !617, !llvm.loop !618

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %8, %7 ], [ undef, %2 ]
  %13 = load ptr, ptr %4, align 8, !tbaa !252
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !348
  %16 = icmp eq ptr %15, null
  br i1 %16, label %7, label %17, !prof !619

17:                                               ; preds = %11
  %18 = zext i32 %0 to i64
  %19 = load i32, ptr %3, align 4
  br label %20

20:                                               ; preds = %17, %116
  %21 = phi ptr [ null, %17 ], [ %42, %116 ]
  %22 = phi ptr [ %15, %17 ], [ %42, %116 ]
  %23 = phi ptr [ %12, %17 ], [ %41, %116 ]
  %24 = getelementptr inbounds %struct.ira_allocno_copy, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !349
  %26 = icmp eq ptr %25, %13
  br i1 %26, label %27, label %32, !prof !620

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %22, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !351
  %30 = getelementptr inbounds %struct.ira_allocno_copy, ptr %22, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !352
  br label %40

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.ira_allocno_copy, ptr %22, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !352
  %35 = icmp eq ptr %34, %13
  br i1 %35, label %36, label %39, !prof !621

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %22, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !353
  br label %40

39:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 347, ptr noundef nonnull @.str.5) #24
  br label %40

40:                                               ; preds = %36, %39, %27
  %41 = phi ptr [ %31, %27 ], [ %25, %36 ], [ %23, %39 ]
  %42 = phi ptr [ %29, %27 ], [ %38, %36 ], [ %21, %39 ]
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !290
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %18, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !354
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %116, label %49, !prof !622

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 31
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 256
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %116, !prof !623

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !382
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %56, i64 0, i32 31
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, 512
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %116, !prof !624

61:                                               ; preds = %54
  %62 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %45
  %63 = load i32, ptr %62, align 4, !tbaa !251
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 36
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 35
  %66 = load ptr, ptr %65, align 8, !tbaa !359
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %64, i32 noundef %44, ptr noundef %66) #23
  %67 = load ptr, ptr %64, align 8, !tbaa !362
  %68 = icmp eq ptr %67, null
  br i1 %68, label %109, label %69, !prof !625

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.ira_allocno_copy, ptr %22, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !360
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 8
  %73 = load i32, ptr %72, align 4, !tbaa !416
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76, !prof !626

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi i32 [ 1, %75 ], [ %73, %69 ]
  %78 = mul nsw i32 %19, %77
  %79 = icmp sgt i32 %63, 0
  br i1 %79, label %80, label %116, !prof !627

80:                                               ; preds = %76
  %81 = zext nneg i32 %63 to i64
  br label %82

82:                                               ; preds = %80, %106
  %83 = phi i64 [ %81, %80 ], [ %85, %106 ]
  %84 = phi i8 [ 0, %80 ], [ %107, %106 ]
  %85 = add nsw i64 %83, -1
  %86 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %45, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !355
  %88 = sext i16 %87 to i64
  %89 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %18, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !355
  %91 = sext i16 %90 to i64
  %92 = icmp slt i16 %90, 0
  br i1 %92, label %106, label %93, !prof !628

93:                                               ; preds = %82
  %94 = getelementptr inbounds i32, ptr %67, i64 %85
  %95 = load i32, ptr %94, align 4, !tbaa !251
  %96 = mul nsw i32 %95, %71
  %97 = sdiv i32 %96, %78
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99, !prof !629

99:                                               ; preds = %93
  %100 = icmp eq i8 %1, 0
  %101 = sub nsw i32 0, %97
  %102 = select i1 %100, i32 %97, i32 %101, !prof !630
  %103 = getelementptr inbounds i32, ptr @assign_hard_reg.full_costs, i64 %91
  %104 = load i32, ptr %103, align 4, !tbaa !251
  %105 = add nsw i32 %104, %102
  store i32 %105, ptr %103, align 4, !tbaa !251
  br label %106

106:                                              ; preds = %93, %82, %99
  %107 = phi i8 [ %84, %82 ], [ %84, %93 ], [ 1, %99 ]
  %108 = icmp ugt i64 %83, 1
  br i1 %108, label %82, label %109, !prof !631, !llvm.loop !632

109:                                              ; preds = %106, %61
  %110 = phi i8 [ 1, %61 ], [ %107, %106 ]
  %111 = icmp slt i32 %19, 257
  %112 = icmp ne i8 %110, 0
  %113 = select i1 %112, i1 %111, i1 false
  br i1 %113, label %114, label %116, !prof !633

114:                                              ; preds = %109
  %115 = shl nsw i32 %19, 2
  tail call fastcc void @queue_update_cost(ptr noundef %41, i32 noundef %115) #23
  br label %116

116:                                              ; preds = %76, %109, %114, %40, %49, %54
  %117 = icmp eq ptr %42, null
  br i1 %117, label %7, label %20, !prof !634, !llvm.loop !635

118:                                              ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #18 !prof !636 !PGOFuncName !637 {
  %4 = sext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !354
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %12, %3
  %10 = phi i64 [ %13, %12 ], [ %8, %3 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18, !prof !638

12:                                               ; preds = %9
  %13 = add nsw i64 %10, -1
  %14 = add nsw i64 %13, %4
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %9, label %18, !prof !639, !llvm.loop !640

18:                                               ; preds = %9, %12
  %19 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_cost_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !238 !PGOFuncName !641 {
  %3 = load ptr, ptr %0, align 8, !tbaa !252
  %4 = load ptr, ptr %1, align 8, !tbaa !252
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !368
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !371
  %9 = sub nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !368
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !371
  %14 = sub i32 %13, %11
  %15 = add i32 %14, %9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, ptr %3, align 8, !tbaa !288
  %19 = load i32, ptr %4, align 8, !tbaa !288
  %20 = sub nsw i32 %18, %19
  br label %21

21:                                               ; preds = %2, %17
  %22 = phi i32 [ %20, %17 ], [ %15, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !364 !PGOFuncName !642 {
  tail call fastcc void @VEC_ira_allocno_t_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !252
  tail call fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_coalesced_allocno(ptr noundef readonly %0) unnamed_addr #0 !prof !238 !PGOFuncName !643 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !367
  tail call void @ira_print_expanded_allocno(ptr noundef %3) #24
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %8 = tail call i32 @fputc(i32 43, ptr %7)
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !367
  tail call void @ira_print_expanded_allocno(ptr noundef %10) #24
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @get_next_update_cost(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !prof !644 !PGOFuncName !645 {
  %3 = load ptr, ptr @update_cost_queue, align 8, !tbaa !252
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !646

5:                                                ; preds = %2
  store ptr %3, ptr %0, align 8, !tbaa !252
  %6 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !252
  %7 = load i32, ptr %3, align 8, !tbaa !288
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %6, i64 %8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !611
  store i32 %10, ptr %1, align 4, !tbaa !251
  %11 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %6, i64 %8, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !612
  store ptr %12, ptr @update_cost_queue, align 8, !tbaa !252
  br label %13

13:                                               ; preds = %2, %5
  %14 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !364 !PGOFuncName !647 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = tail call fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !366

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #24
  store ptr %6, ptr %0, align 8, !tbaa !252
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !364 !PGOFuncName !648 {
  %3 = load i32, ptr %0, align 8, !tbaa !649
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !649
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef readonly %0) unnamed_addr #15 !prof !364 !PGOFuncName !651 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !366

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !652
  %6 = load i32, ptr %0, align 8, !tbaa !649
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ira_print_expanded_allocno(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @copy_freq_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !238 !PGOFuncName !653 {
  %3 = load ptr, ptr %0, align 8, !tbaa !252
  %4 = load ptr, ptr %1, align 8, !tbaa !252
  %5 = getelementptr inbounds %struct.ira_allocno_copy, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !360
  %7 = getelementptr inbounds %struct.ira_allocno_copy, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !360
  %9 = sub nsw i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 8, !tbaa !434
  %13 = load i32, ptr %4, align 8, !tbaa !434
  %14 = sub nsw i32 %12, %13
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %14, %11 ], [ %9, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @coalesced_allocno_conflict_p(ptr noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !238 !PGOFuncName !654 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %6 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  tail call void @bitmap_clear(ptr noundef %8) #24
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %0, %7 ], [ %12, %9 ]
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !367
  %13 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %14 = load i32, ptr %12, align 8, !tbaa !288
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #24
  %16 = icmp eq ptr %12, %0
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %3
  %18 = icmp eq i8 %2, 0
  br label %19

19:                                               ; preds = %48, %17
  %20 = phi ptr [ %1, %17 ], [ %22, %48 ]
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !367
  br i1 %18, label %31, label %23

23:                                               ; preds = %19, %29
  %24 = phi ptr [ %26, %29 ], [ %0, %19 ]
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !367
  %27 = tail call fastcc zeroext i8 @allocnos_have_intersected_live_ranges_p(ptr noundef %22, ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = icmp eq ptr %26, %0
  br i1 %30, label %47, label %23

31:                                               ; preds = %19
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %5, ptr noundef %22) #23
  %32 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %31, %44
  %35 = load ptr, ptr %4, align 8, !tbaa !252
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %41 = load i32, ptr %35, align 8, !tbaa !288
  %42 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37, %39
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %5) #23
  %45 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !254
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %34, !llvm.loop !655

47:                                               ; preds = %29
  store ptr %0, ptr %4, align 8, !tbaa !252
  br label %48

48:                                               ; preds = %44, %31, %47
  %49 = icmp eq ptr %22, %1
  br i1 %49, label %50, label %19

50:                                               ; preds = %48, %23, %34, %39
  %51 = phi i8 [ 1, %39 ], [ 1, %34 ], [ 1, %23 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i8 %51
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_allocnos(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 !prof !656 !PGOFuncName !657 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !382
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !382
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %18, label %8, !prof !658

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !367
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 18
  store ptr %4, ptr %12, align 8, !tbaa !382
  %13 = icmp eq ptr %11, %1
  br i1 %13, label %14, label %8, !prof !659

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 19
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !367
  store ptr %1, ptr %16, align 8, !tbaa !367
  store ptr %17, ptr %15, align 8, !tbaa !367
  br label %18

18:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: optsize
declare ptr @regstat_get_setjmp_crosses() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @slot_coalesced_allocno_live_ranges_intersect_p(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !660 !PGOFuncName !661 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi ptr [ %0, %2 ], [ %7, %15 ]
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !367
  %8 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !252
  %9 = getelementptr inbounds ptr, ptr %8, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !252
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !551
  %13 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %10, ptr noundef %12) #24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17, !prof !457

15:                                               ; preds = %4
  %16 = icmp eq ptr %7, %0
  br i1 %16, label %17, label %4, !prof !659

17:                                               ; preds = %15, %4
  %18 = phi i8 [ 1, %4 ], [ 0, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef readonly %0) unnamed_addr #0 !prof !515 !PGOFuncName !662 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 8, !tbaa !454
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %0, %1 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !367
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !551
  %11 = tail call ptr @ira_copy_allocno_live_range_list(ptr noundef %10) #24
  %12 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !252
  %13 = getelementptr inbounds ptr, ptr %12, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !252
  %15 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %14, ptr noundef %11) #24
  %16 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !252
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  store ptr %15, ptr %17, align 8, !tbaa !252
  %18 = icmp eq ptr %8, %0
  br i1 %18, label %19, label %5, !prof !400

19:                                               ; preds = %5
  ret void
}

; Function Attrs: optsize
declare void @ira_finish_allocno_live_range_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ira_copy_allocno_live_range_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ira_merge_allocno_live_ranges(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 !prof !238 !PGOFuncName !663 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !354
  ret i32 %3
}

; Function Attrs: optsize
declare void @mark_home_live(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #5 !prof !238 !PGOFuncName !664 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !252
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !665
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !667 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_coloring() unnamed_addr #0 !prof !404 !PGOFuncName !668 {
  %1 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %1, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  %2 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !251
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #24
  store ptr %5, ptr @allocnos_for_spilling, align 8, !tbaa !252
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.19, i64 noundef 32, i64 noundef 100) #24
  store ptr %6, ptr @splay_tree_node_pool, align 8, !tbaa !252
  %7 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %8 = icmp sgt i32 %7, 0
  %9 = load ptr, ptr @ira_dump_file, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14, !prof !669

12:                                               ; preds = %0
  %13 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 26, i64 1, ptr nonnull %9)
  br label %14

14:                                               ; preds = %12, %0
  %15 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !252
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 0, ptr noundef %15, ptr noundef nonnull @color_pass, ptr noundef null) #24
  %16 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %17 = icmp sgt i32 %16, 1
  %18 = load ptr, ptr @ira_dump_file, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !669

21:                                               ; preds = %14
  tail call void @ira_print_disposition(ptr noundef nonnull %18) #24
  br label %22

22:                                               ; preds = %21, %14
  %23 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !252
  tail call void @free_alloc_pool(ptr noundef %23) #24
  %24 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  tail call void @ira_free_bitmap(ptr noundef %24) #24
  %25 = load ptr, ptr @allocnos_for_spilling, align 8, !tbaa !252
  tail call void @ira_free(ptr noundef %25) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !500 !PGOFuncName !670 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !501

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !252
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_spill_restore() unnamed_addr #0 !prof !404 !PGOFuncName !671 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  br label %3

3:                                                ; preds = %204, %0
  %4 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %5 = icmp sgt i32 %4, 0
  %6 = load ptr, ptr @ira_dump_file, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !669

9:                                                ; preds = %3
  %10 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 36, i64 1, ptr nonnull %6)
  br label %11

11:                                               ; preds = %9, %3
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #23
  %12 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %207, label %14, !prof !560

14:                                               ; preds = %11, %200
  %15 = phi i8 [ %201, %200 ], [ 0, %11 ]
  br label %16

16:                                               ; preds = %14, %54
  %17 = load ptr, ptr %1, align 8, !tbaa !252
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !292
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !672
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !673
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %54, !prof !370

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !674
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %54, !prof !370

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !291
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %54, label %33, !prof !397

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !675
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37, !prof !487

37:                                               ; preds = %33
  %38 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !354
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %54, !prof !676

43:                                               ; preds = %37
  %44 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %45 = getelementptr inbounds ptr, ptr %44, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !252
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54, !prof !677

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !678
  %51 = load i32, ptr %17, align 8, !tbaa !288
  %52 = tail call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %51) #24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57, !prof !679

54:                                               ; preds = %48, %43, %37, %33, %29, %25, %16
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %204, label %16, !prof !421, !llvm.loop !680

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 3
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !342
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !290
  %63 = zext i32 %62 to i64
  %64 = zext nneg i32 %31 to i64
  %65 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %63, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !355
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 12
  %68 = load i32, ptr %67, align 4, !tbaa !340
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 33
  %70 = load ptr, ptr %69, align 8, !tbaa !358
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 10
  %73 = sext i16 %66 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  %75 = select i1 %71, ptr %72, ptr %74
  %76 = load i32, ptr %75, align 4, !tbaa !251
  %77 = sub nsw i32 %68, %76
  %78 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !252
  %80 = icmp eq ptr %79, null
  br i1 %80, label %137, label %81

81:                                               ; preds = %57
  %82 = zext i32 %60 to i64
  %83 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %82, i64 %63
  %84 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %82, i64 %63, i64 1
  br label %85

85:                                               ; preds = %81, %132
  %86 = phi ptr [ %79, %81 ], [ %135, %132 ]
  %87 = phi i32 [ %77, %81 ], [ %133, %132 ]
  %88 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %86, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !681
  %90 = getelementptr inbounds ptr, ptr %89, i64 %39
  %91 = load ptr, ptr %90, align 8, !tbaa !252
  %92 = icmp eq ptr %91, null
  br i1 %92, label %132, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 12
  %95 = load i32, ptr %94, align 4, !tbaa !340
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 33
  %97 = load ptr, ptr %96, align 8, !tbaa !358
  %98 = icmp eq ptr %97, null
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 10
  %100 = getelementptr inbounds i32, ptr %97, i64 %73
  %101 = select i1 %98, ptr %99, ptr %100
  %102 = load i32, ptr %101, align 4, !tbaa !251
  %103 = sub i32 %102, %95
  %104 = add i32 %103, %87
  %105 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %86, i32 noundef %19, i8 noundef zeroext 1) #23, !range !682
  %106 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %86, i32 noundef %19, i8 noundef zeroext 0) #23, !range !682
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !291
  %109 = icmp slt i32 %108, 0
  %110 = load i16, ptr %83, align 4, !tbaa !355
  %111 = sext i16 %110 to i32
  br i1 %109, label %112, label %119

112:                                              ; preds = %93
  %113 = load i16, ptr %84, align 2, !tbaa !355
  %114 = sext i16 %113 to i32
  %115 = mul i32 %105, %111
  %116 = mul i32 %106, %114
  %117 = add i32 %116, %115
  %118 = sub i32 %104, %117
  br label %132

119:                                              ; preds = %93
  %120 = mul nsw i32 %105, %111
  %121 = load i16, ptr %84, align 2, !tbaa !355
  %122 = sext i16 %121 to i32
  %123 = mul nsw i32 %106, %122
  %124 = add i32 %120, %104
  %125 = add i32 %124, %123
  %126 = icmp eq i32 %108, %31
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %60, i32 noundef %62, i32 noundef %62) #23, !range !357
  %129 = add nsw i32 %106, %105
  %130 = mul nsw i32 %128, %129
  %131 = sub nsw i32 %125, %130
  br label %132

132:                                              ; preds = %112, %127, %119, %85
  %133 = phi i32 [ %87, %85 ], [ %118, %112 ], [ %131, %127 ], [ %125, %119 ]
  %134 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %86, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !252
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %85, !llvm.loop !683

137:                                              ; preds = %132, %57
  %138 = phi i32 [ %77, %57 ], [ %133, %132 ]
  %139 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !684
  %141 = icmp eq ptr %140, null
  br i1 %141, label %182, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %140, i64 0, i32 9
  %144 = load ptr, ptr %143, align 8, !tbaa !681
  %145 = getelementptr inbounds ptr, ptr %144, i64 %39
  %146 = load ptr, ptr %145, align 8, !tbaa !252
  %147 = icmp eq ptr %146, null
  br i1 %147, label %182, label %148

148:                                              ; preds = %142
  %149 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %21, i32 noundef %19, i8 noundef zeroext 1) #23, !range !682
  %150 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %21, i32 noundef %19, i8 noundef zeroext 0) #23, !range !682
  %151 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !291
  %153 = icmp slt i32 %152, 0
  %154 = zext i32 %60 to i64
  %155 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %154, i64 %63
  br i1 %153, label %156, label %166

156:                                              ; preds = %148
  %157 = load i16, ptr %155, align 4, !tbaa !355
  %158 = sext i16 %157 to i32
  %159 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %154, i64 %63, i64 1
  %160 = load i16, ptr %159, align 2, !tbaa !355
  %161 = sext i16 %160 to i32
  %162 = mul i32 %149, %158
  %163 = mul i32 %150, %161
  %164 = add i32 %163, %162
  %165 = sub i32 %138, %164
  br label %182

166:                                              ; preds = %148
  %167 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %154, i64 %63, i64 1
  %168 = load i16, ptr %167, align 2, !tbaa !355
  %169 = sext i16 %168 to i32
  %170 = mul nsw i32 %149, %169
  %171 = load i16, ptr %155, align 4, !tbaa !355
  %172 = sext i16 %171 to i32
  %173 = mul nsw i32 %150, %172
  %174 = add i32 %170, %138
  %175 = add i32 %174, %173
  %176 = icmp eq i32 %152, %31
  br i1 %176, label %182, label %177

177:                                              ; preds = %166
  %178 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %60, i32 noundef %62, i32 noundef %62) #23, !range !357
  %179 = add nsw i32 %150, %149
  %180 = mul nsw i32 %178, %179
  %181 = sub nsw i32 %175, %180
  br label %182

182:                                              ; preds = %156, %177, %166, %142, %137
  %183 = phi i32 [ %165, %156 ], [ %181, %177 ], [ %175, %166 ], [ %138, %142 ], [ %138, %137 ]
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  store i32 -1, ptr %58, align 4, !tbaa !291
  %186 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %187 = icmp sgt i32 %186, 3
  %188 = load ptr, ptr @ira_dump_file, align 8
  %189 = icmp ne ptr %188, null
  %190 = select i1 %187, i1 %189, i1 false
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load i32, ptr %17, align 8, !tbaa !288
  %193 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !239
  %195 = load i32, ptr %194, align 8, !tbaa !685
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %188, ptr noundef nonnull @.str.44, i32 noundef %192, i32 noundef %19, i32 noundef %195) #23
  %197 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %198 = sub nsw i32 0, %183
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.45, i32 noundef %198) #23
  br label %200

200:                                              ; preds = %185, %191, %182
  %201 = phi i8 [ %15, %182 ], [ 1, %191 ], [ 1, %185 ]
  %202 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %14, !prof !686, !llvm.loop !680

204:                                              ; preds = %200, %54
  %205 = phi i8 [ %15, %54 ], [ %201, %200 ]
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %3, !prof !687

207:                                              ; preds = %11, %204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @color_pass(ptr noundef %0) #0 !prof !404 !PGOFuncName !688 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %5 = icmp sgt i32 %4, 1
  %6 = load ptr, ptr @ira_dump_file, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !669

9:                                                ; preds = %1
  tail call fastcc void @print_loop_title(ptr noundef %0) #23
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !689
  tail call void @bitmap_copy(ptr noundef %11, ptr noundef %13) #24
  %14 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  %15 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  tail call void @bitmap_copy(ptr noundef %14, ptr noundef %15) #24
  %16 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %16, i32 noundef 0, ptr noundef nonnull %2) #23
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %40, label %19, !prof !420

19:                                               ; preds = %10
  %20 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  br label %21

21:                                               ; preds = %19, %36
  %22 = phi ptr [ %20, %19 ], [ %37, %36 ]
  %23 = load i32, ptr %2, align 4, !tbaa !251
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !252
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %26, i64 0, i32 31
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 256
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %36, label %31, !prof !370

31:                                               ; preds = %21
  %32 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  %33 = load i32, ptr %26, align 8, !tbaa !288
  %34 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %33) #24
  %35 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  br label %36

36:                                               ; preds = %21, %31
  %37 = phi ptr [ %22, %21 ], [ %35, %31 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %21, !prof !421, !llvm.loop !690

40:                                               ; preds = %36, %10
  tail call fastcc void @color_allocnos() #23
  %41 = load i32, ptr @flag_ira_region, align 4
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %99, !prof !691

44:                                               ; preds = %40
  %45 = load ptr, ptr %12, align 8, !tbaa !689
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %45, i32 noundef 0, ptr noundef nonnull %2) #23
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %99, label %48, !prof !420

48:                                               ; preds = %44, %95
  %49 = phi i32 [ %96, %95 ], [ -1, %44 ]
  %50 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %51 = load i32, ptr %2, align 4, !tbaa !251
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !252
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !673
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58, !prof !370

58:                                               ; preds = %48
  %59 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  %60 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %59, i32 noundef %51) #24
  %61 = load i32, ptr @flag_ira_region, align 4, !tbaa !251
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %95

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !290
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !251
  %69 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %66
  %70 = load i32, ptr %69, align 4, !tbaa !251
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %95, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !291
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %55, align 8, !tbaa !673
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %77, i64 0, i32 3
  store i32 %74, ptr %78, align 4, !tbaa !291
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %77, i64 0, i32 31
  %80 = load i16, ptr %79, align 4
  %81 = or i16 %80, 256
  store i16 %81, ptr %79, align 4
  br label %92

82:                                               ; preds = %72
  %83 = zext nneg i32 %74 to i64
  %84 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %66, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !355
  %86 = sext i16 %85 to i32
  %87 = load ptr, ptr %55, align 8, !tbaa !673
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 3
  store i32 %74, ptr %88, align 4, !tbaa !291
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 31
  %90 = load i16, ptr %89, align 4
  %91 = or i16 %90, 256
  store i16 %91, ptr %89, align 4
  tail call fastcc void @update_copy_costs(ptr noundef %87, i8 noundef zeroext 1) #23
  br label %92

92:                                               ; preds = %76, %82
  %93 = phi ptr [ %87, %82 ], [ %77, %76 ]
  %94 = phi i32 [ %86, %82 ], [ %49, %76 ]
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %93) #24
  br label %95

95:                                               ; preds = %58, %63, %92, %48
  %96 = phi i32 [ %49, %48 ], [ %94, %92 ], [ %49, %63 ], [ %49, %58 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %97 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %48, !prof !421, !llvm.loop !692

99:                                               ; preds = %95, %44, %40
  %100 = phi i32 [ -1, %40 ], [ -1, %44 ], [ %96, %95 ]
  %101 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !252
  %103 = icmp eq ptr %102, null
  br i1 %103, label %254, label %104, !prof !693

104:                                              ; preds = %99, %249
  %105 = phi ptr [ %252, %249 ], [ %102, %99 ]
  %106 = phi i32 [ %250, %249 ], [ %100, %99 ]
  %107 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %107, i32 noundef 0, ptr noundef nonnull %2) #23
  %108 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %249, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %105, i64 0, i32 9
  br label %112

112:                                              ; preds = %110, %246
  %113 = phi i32 [ %106, %110 ], [ %133, %246 ]
  %114 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %115 = load i32, ptr %2, align 4, !tbaa !251
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !252
  %119 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !342
  %121 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 9
  %122 = load i32, ptr %121, align 8, !tbaa !290
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 3
  %124 = load i32, ptr %123, align 4, !tbaa !291
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = zext i32 %122 to i64
  %128 = zext nneg i32 %124 to i64
  %129 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %127, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !355
  %131 = sext i16 %130 to i32
  br label %132

132:                                              ; preds = %126, %112
  %133 = phi i32 [ %131, %126 ], [ %113, %112 ]
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !292
  %136 = load ptr, ptr %111, align 8, !tbaa !681
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds ptr, ptr %136, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !252
  %140 = icmp eq ptr %139, null
  br i1 %140, label %246, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 16
  %143 = load ptr, ptr %142, align 8, !tbaa !674
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %246

145:                                              ; preds = %141
  %146 = load i32, ptr @flag_ira_region, align 4, !tbaa !251
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = zext i32 %122 to i64
  %150 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !251
  %152 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %149
  %153 = load i32, ptr %152, align 4, !tbaa !251
  %154 = icmp sgt i32 %151, %153
  br i1 %154, label %165, label %155

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 31
  %157 = load i16, ptr %156, align 4
  %158 = and i16 %157, 256
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %246

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 3
  store i32 %124, ptr %161, align 4, !tbaa !291
  %162 = or disjoint i16 %157, 256
  store i16 %162, ptr %156, align 4
  br i1 %125, label %163, label %164

163:                                              ; preds = %160
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %139, i8 noundef zeroext 1) #23
  br label %164

164:                                              ; preds = %163, %160
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %139) #24
  br label %246

165:                                              ; preds = %148, %145
  %166 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %105, i32 noundef %135, i8 noundef zeroext 1) #23, !range !682
  %167 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %105, i32 noundef %135, i8 noundef zeroext 0) #23, !range !682
  %168 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !252
  %169 = getelementptr inbounds i8, ptr %168, i64 %137
  %170 = load i8, ptr %169, align 1, !tbaa !354
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !252
  %174 = getelementptr inbounds ptr, ptr %173, i64 %137
  %175 = load ptr, ptr %174, align 8, !tbaa !252
  %176 = icmp eq ptr %175, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %172, %165
  %178 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 31
  %179 = load i16, ptr %178, align 4
  %180 = and i16 %179, 256
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %246

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 3
  store i32 %124, ptr %183, align 4, !tbaa !291
  %184 = or disjoint i16 %179, 256
  store i16 %184, ptr %178, align 4
  br i1 %125, label %185, label %186

185:                                              ; preds = %182
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %139, i8 noundef zeroext 1) #23
  br label %186

186:                                              ; preds = %185, %182
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %139) #24
  br label %246

187:                                              ; preds = %172
  %188 = icmp slt i32 %124, 0
  br i1 %188, label %189, label %204

189:                                              ; preds = %187
  %190 = zext i32 %120 to i64
  %191 = zext i32 %122 to i64
  %192 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %190, i64 %191
  %193 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %190, i64 %191, i64 1
  %194 = load i16, ptr %193, align 2, !tbaa !355
  %195 = sext i16 %194 to i32
  %196 = load i16, ptr %192, align 4, !tbaa !355
  %197 = sext i16 %196 to i32
  %198 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 13
  %199 = load i32, ptr %198, align 8, !tbaa !368
  %200 = mul i32 %167, %195
  %201 = mul i32 %166, %197
  %202 = add i32 %201, %200
  %203 = sub i32 %199, %202
  store i32 %203, ptr %198, align 8, !tbaa !368
  br label %246

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !290
  %207 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %120, i32 noundef %122, i32 noundef %122) #23, !range !357
  %208 = add nsw i32 %167, %166
  %209 = mul nsw i32 %207, %208
  %210 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 34
  %211 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 11
  %212 = load i32, ptr %211, align 8, !tbaa !371
  %213 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 33
  %214 = load ptr, ptr %213, align 8, !tbaa !358
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %210, i32 noundef %206, i32 noundef %212, ptr noundef %214) #23
  %215 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 36
  %216 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 35
  %217 = load ptr, ptr %216, align 8, !tbaa !359
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %215, i32 noundef %206, i32 noundef 0, ptr noundef %217) #23
  %218 = load ptr, ptr %210, align 8, !tbaa !361
  %219 = sext i32 %133 to i64
  %220 = getelementptr inbounds i32, ptr %218, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !251
  %222 = sub nsw i32 %221, %209
  store i32 %222, ptr %220, align 4, !tbaa !251
  %223 = load ptr, ptr %215, align 8, !tbaa !362
  %224 = getelementptr inbounds i32, ptr %223, i64 %219
  %225 = load i32, ptr %224, align 4, !tbaa !251
  %226 = sub nsw i32 %225, %209
  store i32 %226, ptr %224, align 4, !tbaa !251
  %227 = load i32, ptr %211, align 8, !tbaa !371
  %228 = load i32, ptr %220, align 4, !tbaa !251
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %204
  store i32 %228, ptr %211, align 8, !tbaa !371
  br label %231

231:                                              ; preds = %230, %204
  %232 = zext i32 %120 to i64
  %233 = zext i32 %122 to i64
  %234 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %232, i64 %233
  %235 = load i16, ptr %234, align 4, !tbaa !355
  %236 = sext i16 %235 to i32
  %237 = mul nsw i32 %167, %236
  %238 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %232, i64 %233, i64 1
  %239 = load i16, ptr %238, align 2, !tbaa !355
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %166, %240
  %242 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 13
  %243 = load i32, ptr %242, align 8, !tbaa !368
  %244 = add i32 %243, %237
  %245 = add i32 %244, %241
  store i32 %245, ptr %242, align 8, !tbaa !368
  br label %246

246:                                              ; preds = %186, %177, %231, %189, %155, %164, %132, %141
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %247 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %112, !llvm.loop !694

249:                                              ; preds = %246, %104
  %250 = phi i32 [ %106, %104 ], [ %133, %246 ]
  %251 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %105, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !252
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %104, !prof !503, !llvm.loop !695

254:                                              ; preds = %249, %99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @ira_print_disposition(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_loop_title(ptr noundef readonly %0) unnamed_addr #0 !prof !238 !PGOFuncName !696 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %6 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %7 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !239
  %9 = load i32, ptr %8, align 8, !tbaa !685
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !684
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !239
  %16 = load i32, ptr %15, align 8, !tbaa !685
  br label %17

17:                                               ; preds = %1, %13
  %18 = phi i32 [ %16, %13 ], [ -1, %1 ]
  %19 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !245
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !258
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %8) #23
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %18, i32 noundef %22, i32 noundef %23) #23
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !252
  %27 = icmp eq ptr %26, null
  br i1 %27, label %77, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds i8, ptr %5, i64 8
  br label %30

30:                                               ; preds = %28, %73
  %31 = phi ptr [ %26, %28 ], [ %75, %73 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !697
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !258
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %37) #23
  %39 = load ptr, ptr %31, align 8, !tbaa !697
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %41 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %40) #23
  store i32 0, ptr %5, align 8, !tbaa.struct !250
  store ptr %41, ptr %29, align 8, !tbaa.struct !253
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %41, ptr noundef nonnull %4) #23, !range !254
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %34, %68
  %45 = load ptr, ptr %4, align 8, !tbaa !252
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !262
  %48 = load ptr, ptr @cfun, align 8, !tbaa !252
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !270
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !698
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !252
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !258
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %55, i64 %58, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !684
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %64 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !239
  %66 = load i32, ptr %65, align 8, !tbaa !685
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.22, i32 noundef %57, i32 noundef %66) #23
  br label %68

68:                                               ; preds = %44, %54, %62
  call fastcc void @ei_next(ptr noundef nonnull %5) #23
  %69 = load i32, ptr %5, align 8
  %70 = load ptr, ptr %29, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %4) #23, !range !254
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %44, !llvm.loop !699

73:                                               ; preds = %68, %34, %30
  %74 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !252
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %30, !llvm.loop !700

77:                                               ; preds = %73, %17
  %78 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %79 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 9, i64 1, ptr %78)
  %80 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !689
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %81, i32 noundef 0, ptr noundef nonnull %2) #23
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %77, %84
  %85 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %86 = load i32, ptr %2, align 4, !tbaa !251
  %87 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !252
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !292
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.24, i32 noundef %86, i32 noundef %92) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %94 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %84, !llvm.loop !701

96:                                               ; preds = %84, %77
  %97 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %98 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr %97)
  %99 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %100 = load ptr, ptr %99, align 8, !tbaa !702
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %100, i32 noundef 0, ptr noundef nonnull %2) #23
  %101 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96, %103
  %104 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %105 = load i32, ptr %2, align 4, !tbaa !251
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.8, i32 noundef %105) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %107 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %103, !llvm.loop !703

109:                                              ; preds = %103, %96
  %110 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %111 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %110)
  %112 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 13
  %113 = load ptr, ptr %112, align 8, !tbaa !678
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %113, i32 noundef 0, ptr noundef nonnull %2) #23
  %114 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %109, %116
  %117 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %118 = load i32, ptr %2, align 4, !tbaa !251
  %119 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !252
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !292
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.24, i32 noundef %118, i32 noundef %124) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %126 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %116, !llvm.loop !704

128:                                              ; preds = %116, %109
  %129 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %130 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr %129)
  %131 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128, %148
  %134 = phi i32 [ %149, %148 ], [ %131, %128 ]
  %135 = phi i64 [ %150, %148 ], [ 0, %128 ]
  %136 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !251
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !251
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %144 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %138
  %145 = load ptr, ptr %144, align 8, !tbaa !252
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.28, ptr noundef %145, i32 noundef %140) #23
  %147 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  br label %148

148:                                              ; preds = %133, %142
  %149 = phi i32 [ %134, %133 ], [ %147, %142 ]
  %150 = add nuw nsw i64 %135, 1
  %151 = sext i32 %149 to i64
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %133, label %153, !llvm.loop !705

153:                                              ; preds = %148, %128
  %154 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %155 = tail call i32 @fputc(i32 10, ptr %154)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @color_allocnos() unnamed_addr #0 !prof !404 !PGOFuncName !706 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  store i1 false, ptr @allocno_coalesced_p, align 1
  %3 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %3, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %4 = load i32, ptr @flag_ira_coalesce, align 4, !tbaa !251
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !707

6:                                                ; preds = %0
  tail call fastcc void @coalesce_allocnos(i8 noundef zeroext 0) #23
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !251
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %86, !prof !409

10:                                               ; preds = %7
  %11 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %1) #23
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %119, label %14

14:                                               ; preds = %10, %43
  %15 = phi i32 [ %44, %43 ], [ 0, %10 ]
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %17 = load i32, ptr %1, align 4, !tbaa !251
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !252
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !290
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 3
  store i32 -1, ptr %25, align 4, !tbaa !291
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 31
  %27 = load i16, ptr %26, align 4
  %28 = or i16 %27, 256
  store i16 %28, ptr %26, align 4
  %29 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %30 = icmp sgt i32 %29, 3
  %31 = load ptr, ptr @ira_dump_file, align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr nonnull %31)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %20) #23
  %36 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %43

38:                                               ; preds = %14
  %39 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %40 = add i32 %15, 1
  %41 = zext i32 %15 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %20, ptr %42, align 8, !tbaa !252
  br label %43

43:                                               ; preds = %24, %34, %38
  %44 = phi i32 [ %15, %34 ], [ %15, %24 ], [ %40, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %14, !llvm.loop !708

47:                                               ; preds = %43
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %119, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  tail call fastcc void @setup_allocno_priorities(ptr noundef %50, i32 noundef %44) #23
  %51 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %52 = zext i32 %44 to i64
  tail call void @spec_qsort(ptr noundef %51, i64 noundef %52, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #24
  br label %53

53:                                               ; preds = %49, %83
  %54 = phi i64 [ 0, %49 ], [ %84, %83 ]
  %55 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !252
  %58 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %59 = icmp sgt i32 %58, 3
  %60 = load ptr, ptr @ira_dump_file, align 8
  %61 = icmp ne ptr %60, null
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 6, i64 1, ptr nonnull %60)
  tail call fastcc void @print_coalesced_allocno(ptr noundef %57) #23
  %65 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %66 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %65)
  br label %67

67:                                               ; preds = %63, %53
  %68 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %57, i8 noundef zeroext 0) #23, !range !254
  %69 = icmp eq i8 %68, 0
  %70 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %71 = icmp sgt i32 %70, 3
  %72 = load ptr, ptr @ira_dump_file, align 8
  %73 = icmp ne ptr %72, null
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %69, label %80, label %75

75:                                               ; preds = %67
  br i1 %74, label %76, label %83

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %57, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !291
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %72, ptr noundef nonnull @.str.32, i32 noundef %78) #23
  br label %83

80:                                               ; preds = %67
  br i1 %74, label %81, label %83

81:                                               ; preds = %80
  %82 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr nonnull %72)
  br label %83

83:                                               ; preds = %76, %75, %81, %80
  %84 = add nuw nsw i64 %54, 1
  %85 = icmp eq i64 %84, %52
  br i1 %85, label %118, label %53, !llvm.loop !709

86:                                               ; preds = %7
  store ptr null, ptr @colorable_allocno_bucket, align 8, !tbaa !252
  store ptr null, ptr @uncolorable_allocno_bucket, align 8, !tbaa !252
  %87 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %87, i32 noundef 0, ptr noundef nonnull %1) #23
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %117, label %90, !prof !420

90:                                               ; preds = %86, %114
  %91 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  %92 = load i32, ptr %1, align 4, !tbaa !251
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !252
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %95, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !290
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113, !prof !366

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %95, i64 0, i32 3
  store i32 -1, ptr %100, align 4, !tbaa !291
  %101 = getelementptr inbounds %struct.ira_allocno, ptr %95, i64 0, i32 31
  %102 = load i16, ptr %101, align 4
  %103 = or i16 %102, 256
  store i16 %103, ptr %101, align 4
  %104 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %105 = icmp sgt i32 %104, 3
  %106 = load ptr, ptr @ira_dump_file, align 8
  %107 = icmp ne ptr %106, null
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr nonnull %106)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %95) #23
  %111 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %112 = tail call i32 @fputc(i32 10, ptr %111)
  br label %114

113:                                              ; preds = %90
  tail call fastcc void @put_allocno_into_bucket(ptr noundef nonnull %95) #23
  br label %114

114:                                              ; preds = %99, %109, %113
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %115 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %90, !prof !421, !llvm.loop !710

117:                                              ; preds = %114, %86
  tail call fastcc void @push_allocnos_to_stack() #23
  tail call fastcc void @pop_allocnos_from_stack() #23
  br label %119

118:                                              ; preds = %83
  store i32 %44, ptr %1, align 4, !tbaa !251
  br label %119

119:                                              ; preds = %10, %118, %47, %117
  %120 = load i32, ptr @flag_ira_coalesce, align 4, !tbaa !251
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122, !prof !707

122:                                              ; preds = %119
  %123 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %123, i32 noundef 0, ptr noundef nonnull %1) #23
  %124 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr @ira_allocnos, align 8, !tbaa !252
  br label %128

128:                                              ; preds = %126, %128
  %129 = load i32, ptr %1, align 4, !tbaa !251
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %127, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !252
  %133 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 18
  store ptr %132, ptr %133, align 8, !tbaa !382
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 19
  store ptr %132, ptr %134, align 8, !tbaa !367
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %135 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !254
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %128, !llvm.loop !711

137:                                              ; preds = %128, %122, %119
  %138 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  tail call void @ira_free_bitmap(ptr noundef %138) #24
  store i1 false, ptr @allocno_coalesced_p, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !238 !PGOFuncName !712 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !713
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #23
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #15 !prof !238 !PGOFuncName !714 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !715
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @put_allocno_into_bucket(ptr noundef %0) unnamed_addr #0 !prof !364 !PGOFuncName !717 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !382
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %24, !prof !370

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !290
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %9 = load i16, ptr %8, align 4
  %10 = or i16 %9, 128
  store i16 %10, ptr %8, align 4
  tail call fastcc void @setup_allocno_left_conflicts_size(ptr noundef nonnull %0) #23
  tail call fastcc void @setup_allocno_available_regs_num(ptr noundef nonnull %0) #23
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 37
  %12 = load i32, ptr %11, align 8, !tbaa !718
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !342
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %13, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !251
  %19 = add nsw i32 %18, %12
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  %21 = load i32, ptr %20, align 4, !tbaa !719
  %22 = icmp sgt i32 %19, %21
  %23 = select i1 %22, ptr @uncolorable_allocno_bucket, ptr @colorable_allocno_bucket, !prof !720
  tail call fastcc void @add_allocno_to_bucket(ptr noundef nonnull %0, ptr noundef nonnull %23) #23
  br label %24

24:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_allocnos_to_stack() unnamed_addr #0 !prof !404 !PGOFuncName !721 {
  %1 = alloca [27 x i32], align 16
  %2 = alloca [27 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %2) #22
  %3 = load ptr, ptr @removed_splay_allocno_vec, align 8
  tail call fastcc void @VEC_ira_allocno_t_base_truncate(ptr noundef %3) #23
  %4 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8, !prof !405

6:                                                ; preds = %0
  %7 = zext nneg i32 %4 to i64
  br label %11

8:                                                ; preds = %11, %0
  %9 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !252
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %26, !prof !420

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %19, %11 ]
  %13 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !251
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !251
  %17 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %15
  store ptr null, ptr %17, align 8, !tbaa !252
  %18 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %15
  store ptr null, ptr %18, align 8, !tbaa !252
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %8, label %11, !prof !722, !llvm.loop !723

21:                                               ; preds = %46
  %22 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i32 [ %22, %21 ], [ %4, %8 ]
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %53, label %50, !prof !405

26:                                               ; preds = %8, %46
  %27 = phi ptr [ %48, %46 ], [ %9, %8 ]
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !290
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31, !prof !724

31:                                               ; preds = %26
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !251
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !251
  br label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %27, %31 ], [ %40, %36 ]
  %38 = phi i32 [ 0, %31 ], [ %42, %36 ]
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !367
  %41 = tail call fastcc i32 @calculate_allocno_spill_cost(ptr noundef %40) #23
  %42 = add nsw i32 %41, %38
  %43 = icmp eq ptr %40, %27
  br i1 %43, label %44, label %36, !prof !725

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 41
  store i32 %42, ptr %45, align 8, !tbaa !454
  br label %46

46:                                               ; preds = %26, %44
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 39
  %48 = load ptr, ptr %47, align 8, !tbaa !252
  %49 = icmp eq ptr %48, null
  br i1 %49, label %21, label %26, !prof !726, !llvm.loop !727

50:                                               ; preds = %78, %23
  %51 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !252
  %52 = icmp eq ptr %51, null
  br i1 %52, label %83, label %86, !prof !420

53:                                               ; preds = %23, %78
  %54 = phi i32 [ %79, %78 ], [ %24, %23 ]
  %55 = phi i64 [ %80, %78 ], [ 0, %23 ]
  %56 = phi i32 [ %70, %78 ], [ 0, %23 ]
  %57 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %55
  %58 = load i32, ptr %57, align 4, !tbaa !251
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !251
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !prof !728

63:                                               ; preds = %53
  %64 = load ptr, ptr @allocnos_for_spilling, align 8, !tbaa !252
  %65 = sext i32 %56 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %59
  store ptr %66, ptr %67, align 8, !tbaa !252
  %68 = add nsw i32 %61, %56
  store i32 0, ptr %60, align 4, !tbaa !251
  br label %69

69:                                               ; preds = %63, %53
  %70 = phi i32 [ %68, %63 ], [ %56, %53 ]
  %71 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %59
  %72 = load i32, ptr %71, align 4, !tbaa !251
  %73 = icmp sgt i32 %72, 4000
  br i1 %73, label %74, label %78, !prof !501

74:                                               ; preds = %69
  %75 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @allocno_spill_priority_compare, ptr noundef null, ptr noundef null, ptr noundef nonnull @splay_tree_allocate, ptr noundef nonnull @splay_tree_free, ptr noundef null) #24
  %76 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %59
  store ptr %75, ptr %76, align 8, !tbaa !252
  %77 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  br label %78

78:                                               ; preds = %69, %74
  %79 = phi i32 [ %54, %69 ], [ %77, %74 ]
  %80 = add nuw nsw i64 %55, 1
  %81 = sext i32 %79 to i64
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %53, label %50, !prof !729, !llvm.loop !730

83:                                               ; preds = %106, %50
  tail call fastcc void @push_only_colorable() #23
  %84 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !252
  %85 = icmp eq ptr %84, null
  br i1 %85, label %110, label %113, !prof !420

86:                                               ; preds = %50, %106
  %87 = phi ptr [ %108, %106 ], [ %51, %50 ]
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 9
  %89 = load i32, ptr %88, align 8, !tbaa !290
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %106, label %91, !prof !724

91:                                               ; preds = %86
  %92 = zext i32 %89 to i64
  %93 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !252
  %95 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %92
  %96 = load i32, ptr %95, align 4, !tbaa !251
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %95, align 4, !tbaa !251
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds ptr, ptr %94, i64 %98
  store ptr %87, ptr %99, align 8, !tbaa !252
  %100 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !252
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103, !prof !725

103:                                              ; preds = %91
  %104 = ptrtoint ptr %87 to i64
  %105 = tail call ptr @splay_tree_insert(ptr noundef nonnull %101, i64 noundef %104, i64 noundef %104) #24
  br label %106

106:                                              ; preds = %86, %103, %91
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 39
  %108 = load ptr, ptr %107, align 8, !tbaa !252
  %109 = icmp eq ptr %108, null
  br i1 %109, label %83, label %86, !prof !726, !llvm.loop !731

110:                                              ; preds = %119, %83
  %111 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %254, label %270, !prof !405

113:                                              ; preds = %83, %119
  %114 = phi ptr [ %120, %119 ], [ %84, %83 ]
  %115 = getelementptr inbounds %struct.ira_allocno, ptr %114, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !290
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122, !prof !732

118:                                              ; preds = %113
  tail call fastcc void @push_allocno_to_spill(ptr noundef nonnull %114) #23
  br label %119

119:                                              ; preds = %118, %252
  tail call fastcc void @push_only_colorable() #23
  %120 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !252
  %121 = icmp eq ptr %120, null
  br i1 %121, label %110, label %113, !prof !733

122:                                              ; preds = %113
  %123 = zext i32 %116 to i64
  %124 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !251
  %126 = icmp sgt i32 %125, 4000
  br i1 %126, label %127, label %167, !prof !732

127:                                              ; preds = %122
  %128 = load ptr, ptr @removed_splay_allocno_vec, align 8
  %129 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %128) #23
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %160, label %131

131:                                              ; preds = %127, %156
  %132 = phi ptr [ %157, %156 ], [ %128, %127 ]
  %133 = tail call fastcc ptr @VEC_ira_allocno_t_base_pop(ptr noundef %132) #23
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 31
  %135 = load i16, ptr %134, align 4
  %136 = and i16 %135, -1025
  store i16 %136, ptr %134, align 4
  %137 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !290
  %139 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 37
  %140 = load i32, ptr %139, align 8, !tbaa !718
  %141 = zext i32 %138 to i64
  %142 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !342
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %141, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !251
  %147 = add nsw i32 %146, %140
  %148 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 38
  %149 = load i32, ptr %148, align 4, !tbaa !719
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %131
  %152 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %141
  %153 = load ptr, ptr %152, align 8, !tbaa !252
  %154 = ptrtoint ptr %133 to i64
  %155 = tail call ptr @splay_tree_insert(ptr noundef %153, i64 noundef %154, i64 noundef %154) #24
  br label %156

156:                                              ; preds = %151, %131
  %157 = load ptr, ptr @removed_splay_allocno_vec, align 8
  %158 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %157) #23
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %131, !llvm.loop !734

160:                                              ; preds = %156, %127
  %161 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %123
  %162 = load ptr, ptr %161, align 8, !tbaa !252
  %163 = tail call ptr @splay_tree_min(ptr noundef %162) #24
  %164 = load i64, ptr %163, align 8, !tbaa !735
  %165 = inttoptr i64 %164 to ptr
  %166 = load ptr, ptr %161, align 8, !tbaa !252
  tail call void @splay_tree_remove(ptr noundef %166, i64 noundef %164) #24
  br label %252

167:                                              ; preds = %122
  %168 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %123
  %169 = load i32, ptr %168, align 4, !tbaa !251
  %170 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %123
  %171 = load ptr, ptr %170, align 8, !tbaa !252
  %172 = add nsw i32 %169, -1
  %173 = icmp slt i32 %169, 1
  br i1 %173, label %248, label %174, !prof !737

174:                                              ; preds = %167, %232
  %175 = phi i32 [ %246, %232 ], [ %172, %167 ]
  %176 = phi i32 [ %236, %232 ], [ 0, %167 ]
  %177 = phi ptr [ %235, %232 ], [ null, %167 ]
  %178 = phi i32 [ %234, %232 ], [ 0, %167 ]
  %179 = phi i32 [ %233, %232 ], [ 0, %167 ]
  %180 = sext i32 %176 to i64
  %181 = getelementptr inbounds ptr, ptr %171, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !252
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %182, i64 0, i32 31
  %184 = load i16, ptr %183, align 4
  %185 = and i16 %184, 128
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %199, !prof !738

187:                                              ; preds = %174
  %188 = sext i32 %175 to i64
  %189 = getelementptr inbounds ptr, ptr %171, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !252
  %191 = getelementptr inbounds %struct.ira_allocno, ptr %190, i64 0, i32 31
  %192 = load i16, ptr %191, align 4
  %193 = and i16 %192, 128
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %232, label %195, !prof !739

195:                                              ; preds = %187
  store ptr %182, ptr %189, align 8, !tbaa !252
  store ptr %190, ptr %181, align 8, !tbaa !252
  %196 = load i16, ptr %191, align 4
  %197 = and i16 %196, 128
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %232, label %199, !prof !740

199:                                              ; preds = %174, %195
  %200 = phi ptr [ %190, %195 ], [ %182, %174 ]
  %201 = phi i16 [ %196, %195 ], [ %184, %174 ]
  %202 = add nsw i32 %176, 1
  %203 = getelementptr inbounds %struct.ira_allocno, ptr %200, i64 0, i32 41
  %204 = load i32, ptr %203, align 8, !tbaa !454
  %205 = tail call fastcc i32 @allocno_spill_priority(ptr noundef nonnull %200) #23
  %206 = icmp eq ptr %177, null
  br i1 %206, label %231, label %207, !prof !741

207:                                              ; preds = %199
  %208 = and i16 %201, 64
  %209 = icmp eq i16 %208, 0
  %210 = getelementptr inbounds %struct.ira_allocno, ptr %177, i64 0, i32 31
  %211 = load i16, ptr %210, align 4
  %212 = and i16 %211, 64
  br i1 %209, label %213, label %217, !prof !742

213:                                              ; preds = %207
  %214 = icmp ne i16 %212, 0
  %215 = icmp sgt i32 %179, %205
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %231, label %221, !prof !743

217:                                              ; preds = %207
  %218 = icmp eq i16 %212, 0
  br i1 %218, label %232, label %219, !prof !744

219:                                              ; preds = %217
  %220 = icmp sgt i32 %179, %205
  br i1 %220, label %231, label %221, !prof !745

221:                                              ; preds = %213, %219
  %222 = icmp eq i32 %179, %205
  br i1 %222, label %223, label %232, !prof !746

223:                                              ; preds = %221
  %224 = icmp sgt i32 %178, %204
  br i1 %224, label %231, label %225, !prof !747

225:                                              ; preds = %223
  %226 = icmp eq i32 %178, %204
  br i1 %226, label %227, label %232, !prof !748

227:                                              ; preds = %225
  %228 = load i32, ptr %177, align 8, !tbaa !288
  %229 = load i32, ptr %200, align 8, !tbaa !288
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %232, !prof !749

231:                                              ; preds = %227, %223, %219, %213, %199
  br label %232

232:                                              ; preds = %187, %217, %221, %225, %227, %231, %195
  %233 = phi i32 [ %205, %231 ], [ %179, %227 ], [ %179, %225 ], [ %179, %221 ], [ %179, %217 ], [ %179, %195 ], [ %179, %187 ]
  %234 = phi i32 [ %204, %231 ], [ %178, %227 ], [ %178, %225 ], [ %178, %221 ], [ %178, %217 ], [ %178, %195 ], [ %178, %187 ]
  %235 = phi ptr [ %200, %231 ], [ %177, %227 ], [ %177, %225 ], [ %177, %221 ], [ %177, %217 ], [ %177, %195 ], [ %177, %187 ]
  %236 = phi i32 [ %202, %231 ], [ %202, %227 ], [ %202, %225 ], [ %202, %221 ], [ %202, %217 ], [ %176, %195 ], [ %176, %187 ]
  %237 = sext i32 %175 to i64
  %238 = getelementptr inbounds ptr, ptr %171, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !252
  %240 = getelementptr inbounds %struct.ira_allocno, ptr %239, i64 0, i32 31
  %241 = load i16, ptr %240, align 4
  %242 = lshr i16 %241, 7
  %243 = and i16 %242, 1
  %244 = add nsw i16 %243, -1
  %245 = sext i16 %244 to i32
  %246 = add nsw i32 %175, %245
  %247 = icmp sgt i32 %236, %246
  br i1 %247, label %248, label %174, !prof !750, !llvm.loop !751

248:                                              ; preds = %232, %167
  %249 = phi ptr [ null, %167 ], [ %235, %232 ]
  %250 = phi i32 [ %172, %167 ], [ %246, %232 ]
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %168, align 4, !tbaa !251
  br label %252

252:                                              ; preds = %248, %160
  %253 = phi ptr [ %165, %160 ], [ %249, %248 ]
  tail call fastcc void @remove_allocno_from_bucket_and_push(ptr noundef %253, i8 noundef zeroext 0) #23
  br label %119

254:                                              ; preds = %110, %265
  %255 = phi i32 [ %266, %265 ], [ %111, %110 ]
  %256 = phi i64 [ %267, %265 ], [ 0, %110 ]
  %257 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !251
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !252
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263, !prof !752

263:                                              ; preds = %254
  tail call void @splay_tree_delete(ptr noundef nonnull %261) #24
  %264 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  br label %265

265:                                              ; preds = %254, %263
  %266 = phi i32 [ %255, %254 ], [ %264, %263 ]
  %267 = add nuw nsw i64 %256, 1
  %268 = sext i32 %266 to i64
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %254, label %270, !prof !729, !llvm.loop !753

270:                                              ; preds = %265, %110
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pop_allocnos_from_stack() unnamed_addr #0 !prof !404 !PGOFuncName !754 {
  %1 = load ptr, ptr @allocno_stack_vec, align 8
  %2 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %65, label %4, !prof !420

4:                                                ; preds = %0, %58
  %5 = phi ptr [ %62, %58 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_ira_allocno_t_base_pop(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !290
  %9 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %10 = icmp sgt i32 %9, 3
  %11 = load ptr, ptr @ira_dump_file, align 8
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %18, !prof !755

14:                                               ; preds = %4
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 13, i64 1, ptr nonnull %11)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %6) #23
  %16 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  %17 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %32, !prof !366

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  store i32 -1, ptr %21, align 4, !tbaa !291
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %23 = load i16, ptr %22, align 4
  %24 = or i16 %23, 256
  store i16 %24, ptr %22, align 4
  %25 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %26 = icmp sgt i32 %25, 3
  %27 = load ptr, ptr @ira_dump_file, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %58

30:                                               ; preds = %20
  %31 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr nonnull %27)
  br label %58

32:                                               ; preds = %18
  %33 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef nonnull %6, i8 noundef zeroext 0) #23, !range !254
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35, !prof !397

35:                                               ; preds = %32
  %36 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %37 = icmp sgt i32 %36, 3
  %38 = load ptr, ptr @ira_dump_file, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %58, !prof !756

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !291
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.41, i32 noundef %43) #23
  br label %58

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 256
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %58, label %50, !prof !425

50:                                               ; preds = %45
  %51 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %52 = icmp sgt i32 %51, 3
  %53 = load ptr, ptr @ira_dump_file, align 8
  %54 = icmp ne ptr %53, null
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %58, !prof !415

56:                                               ; preds = %50
  %57 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 6, i64 1, ptr nonnull %53)
  br label %58

58:                                               ; preds = %41, %35, %50, %56, %45, %20, %30
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %60 = load i16, ptr %59, align 4
  %61 = or i16 %60, 128
  store i16 %61, ptr %59, align 4
  %62 = load ptr, ptr @allocno_stack_vec, align 8
  %63 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %62) #23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %4, !prof !421, !llvm.loop !757

65:                                               ; preds = %58, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_left_conflicts_size(ptr noundef %0) unnamed_addr #0 !prof !364 !PGOFuncName !758 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !290
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !251
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %9, %1 ], [ %18, %10 ]
  %12 = phi i64 [ 0, %1 ], [ %16, %10 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !367
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 27
  %15 = load i64, ptr %14, align 8, !tbaa !369
  %16 = or i64 %15, %12
  %17 = icmp eq ptr %13, %0
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 19
  br i1 %17, label %19, label %10, !prof !370

19:                                               ; preds = %10
  %20 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %6
  %21 = load i64, ptr %20, align 8, !tbaa !321
  %22 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !321
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = and i64 %24, %16
  %26 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %25) #23, !range !254
  %27 = icmp eq i8 %26, 0
  %28 = icmp sgt i32 %8, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %53, !prof !759

30:                                               ; preds = %19, %47
  %31 = phi i64 [ %51, %47 ], [ 0, %19 ]
  %32 = phi i64 [ %49, %47 ], [ %25, %19 ]
  %33 = phi i32 [ %48, %47 ], [ 0, %19 ]
  %34 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %6, i64 %31
  %35 = load i16, ptr %34, align 2, !tbaa !355
  %36 = sext i16 %35 to i64
  %37 = and i64 %36, 4294967295
  %38 = shl nuw i64 1, %37
  %39 = and i64 %38, %32
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %47, label %41, !prof !760

41:                                               ; preds = %30
  %42 = add nsw i32 %33, 1
  %43 = xor i64 %38, -1
  %44 = and i64 %32, %43
  %45 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %44) #23, !range !254
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %53, !prof !761

47:                                               ; preds = %30, %41
  %48 = phi i32 [ %42, %41 ], [ %33, %30 ]
  %49 = phi i64 [ %44, %41 ], [ %32, %30 ]
  %50 = zext nneg i32 %8 to i64
  %51 = add nuw nsw i64 %31, 1
  %52 = icmp eq i64 %51, %50
  br i1 %52, label %53, label %30, !prof !762, !llvm.loop !763

53:                                               ; preds = %41, %47, %19
  %54 = phi i32 [ 0, %19 ], [ %42, %41 ], [ %48, %47 ]
  %55 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %55, label %56, label %58, !prof !366

56:                                               ; preds = %53
  %57 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  tail call void @bitmap_clear(ptr noundef %57) #24
  br label %58

58:                                               ; preds = %56, %53
  %59 = icmp eq i32 %5, 0
  br i1 %59, label %138, label %60, !prof !366

60:                                               ; preds = %58, %133
  %61 = phi i32 [ %134, %133 ], [ %54, %58 ]
  %62 = phi ptr [ %137, %133 ], [ %9, %58 ]
  %63 = phi i64 [ %135, %133 ], [ 0, %58 ]
  %64 = load ptr, ptr %62, align 8, !tbaa !367
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %3, ptr noundef %64) #23
  %65 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %133, label %67, !prof !376

67:                                               ; preds = %60, %128
  %68 = phi i64 [ %130, %128 ], [ %63, %60 ]
  %69 = phi i32 [ %129, %128 ], [ %61, %60 ]
  %70 = load ptr, ptr %2, align 8, !tbaa !252
  %71 = getelementptr inbounds %struct.ira_allocno, ptr %70, i64 0, i32 18
  %72 = load ptr, ptr %71, align 8, !tbaa !382
  store ptr %72, ptr %2, align 8, !tbaa !252
  %73 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !252
  %74 = load i32, ptr %72, align 8, !tbaa !288
  %75 = tail call i32 @bitmap_bit_p(ptr noundef %73, i32 noundef %74) #24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %128, label %77, !prof !378

77:                                               ; preds = %67
  %78 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %78, label %79, label %88, !prof !378

79:                                               ; preds = %77
  %80 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %81 = load i32, ptr %72, align 8, !tbaa !288
  %82 = tail call i32 @bitmap_bit_p(ptr noundef %80, i32 noundef %81) #24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %79
  %85 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %86 = load i32, ptr %72, align 8, !tbaa !288
  %87 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %85, i32 noundef %86) #24
  br label %88

88:                                               ; preds = %84, %77
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %72, i64 0, i32 31
  %90 = load i16, ptr %89, align 4
  %91 = and i16 %90, 256
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %100, !prof !377

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %72, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !342
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %6, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !251
  %99 = add nsw i32 %98, %69
  br label %128

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.ira_allocno, ptr %72, i64 0, i32 3
  %102 = load i32, ptr %101, align 4, !tbaa !291
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = zext nneg i32 %102 to i64
  %106 = getelementptr inbounds %struct.ira_allocno, ptr %72, i64 0, i32 2
  %107 = load i32, ptr %106, align 8, !tbaa !342
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %105, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !354
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %102, %111
  %113 = icmp eq i8 %110, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %104, %114
  %115 = phi i64 [ %125, %114 ], [ %105, %104 ]
  %116 = phi i64 [ %124, %114 ], [ %68, %104 ]
  %117 = phi i32 [ %122, %114 ], [ %69, %104 ]
  %118 = shl nuw i64 1, %115
  %119 = and i64 %118, %116
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = add nsw i32 %117, %121
  %123 = select i1 %120, i64 %118, i64 0
  %124 = or i64 %123, %116
  %125 = add nuw nsw i64 %115, 1
  %126 = trunc i64 %125 to i32
  %127 = icmp sgt i32 %112, %126
  br i1 %127, label %114, label %128, !llvm.loop !764

128:                                              ; preds = %114, %104, %67, %100, %93, %79
  %129 = phi i32 [ %69, %79 ], [ %69, %100 ], [ %99, %93 ], [ %69, %67 ], [ %69, %104 ], [ %122, %114 ]
  %130 = phi i64 [ %68, %79 ], [ %68, %100 ], [ %68, %93 ], [ %68, %67 ], [ %68, %104 ], [ %124, %114 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %3) #23
  %131 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %67, !prof !388, !llvm.loop !765

133:                                              ; preds = %128, %60
  %134 = phi i32 [ %61, %60 ], [ %129, %128 ]
  %135 = phi i64 [ %63, %60 ], [ %130, %128 ]
  %136 = icmp eq ptr %64, %0
  %137 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 19
  br i1 %136, label %138, label %60, !prof !370

138:                                              ; preds = %133, %58
  %139 = phi i32 [ %54, %58 ], [ %134, %133 ]
  %140 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 37
  store i32 %139, ptr %140, align 8, !tbaa !718
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_available_regs_num(ptr noundef %0) unnamed_addr #19 !prof !364 !PGOFuncName !766 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !290
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !251
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  store i32 %6, ptr %7, align 4, !tbaa !719
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %68, label %9, !prof !366

9:                                                ; preds = %1
  %10 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !251
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %0, %9 ], [ %16, %12 ]
  %14 = phi i64 [ 0, %9 ], [ %19, %12 ]
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !367
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 27
  %18 = load i64, ptr %17, align 8, !tbaa !369
  %19 = or i64 %18, %14
  %20 = icmp eq ptr %16, %0
  br i1 %20, label %21, label %12, !prof !370

21:                                               ; preds = %12
  %22 = icmp sgt i32 %11, 0
  br i1 %22, label %23, label %49, !prof !372

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !342
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %4, i64 %26
  %28 = zext nneg i32 %11 to i64
  br label %29

29:                                               ; preds = %23, %46
  %30 = phi i64 [ %28, %23 ], [ %32, %46 ]
  %31 = phi i32 [ 0, %23 ], [ %47, %46 ]
  %32 = add nsw i64 %30, -1
  %33 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %4, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !355
  %35 = sext i16 %34 to i64
  %36 = and i64 %35, 4294967295
  %37 = shl nuw i64 1, %36
  %38 = and i64 %37, %19
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44, !prof !767

40:                                               ; preds = %29
  %41 = load i64, ptr %27, align 8, !tbaa !321
  %42 = and i64 %41, %37
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %46, label %44, !prof !768

44:                                               ; preds = %40, %29
  %45 = add nsw i32 %31, 1
  br label %46

46:                                               ; preds = %40, %44
  %47 = phi i32 [ %45, %44 ], [ %31, %40 ]
  %48 = icmp ugt i64 %30, 1
  br i1 %48, label %29, label %49, !prof !769, !llvm.loop !770

49:                                               ; preds = %46, %21
  %50 = phi i32 [ 0, %21 ], [ %47, %46 ]
  %51 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %52 = icmp sgt i32 %51, 2
  %53 = icmp sgt i32 %50, 0
  %54 = select i1 %52, i1 %53, i1 false
  %55 = load ptr, ptr @ira_dump_file, align 8
  %56 = icmp ne ptr %55, null
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %65, !prof !771

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !292
  %61 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %4
  %62 = load ptr, ptr %61, align 8, !tbaa !252
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.34, i32 noundef %60, ptr noundef %62, i32 noundef %50) #23
  %64 = load i32, ptr %7, align 4, !tbaa !719
  br label %65

65:                                               ; preds = %58, %49
  %66 = phi i32 [ %64, %58 ], [ %6, %49 ]
  %67 = sub nsw i32 %66, %50
  store i32 %67, ptr %7, align 4, !tbaa !719
  br label %68

68:                                               ; preds = %1, %65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_allocno_to_bucket(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !364 !PGOFuncName !772 {
  %3 = icmp eq ptr %1, @uncolorable_allocno_bucket
  br i1 %3, label %4, label %13, !prof !720

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !290
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !724

8:                                                ; preds = %4
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !251
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !251
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = load ptr, ptr %1, align 8, !tbaa !252
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  store ptr %14, ptr %15, align 8, !tbaa !773
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  store ptr null, ptr %16, align 8, !tbaa !774
  %17 = icmp eq ptr %14, null
  br i1 %17, label %20, label %18, !prof !775

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 40
  store ptr %0, ptr %19, align 8, !tbaa !774
  br label %20

20:                                               ; preds = %18, %13
  store ptr %0, ptr %1, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_empty_p(i64 noundef %0) unnamed_addr #2 !prof !776 !PGOFuncName !777 {
  %2 = icmp eq i64 %0, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_ira_allocno_t_base_truncate(ptr noundef writeonly %0) unnamed_addr #8 !prof !404 !PGOFuncName !778 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !409

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !649
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_allocno_spill_cost(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !779 !PGOFuncName !780 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !292
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !368
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !371
  %8 = sub nsw i32 %5, %7
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !674
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %66, !prof !725

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !672
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !684
  %17 = icmp eq ptr %16, null
  br i1 %17, label %66, label %18, !prof !725

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %16, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !681
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !252
  %24 = icmp eq ptr %23, null
  br i1 %24, label %66, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !342
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !290
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !291
  %32 = icmp slt i32 %31, 0
  %33 = zext i32 %27 to i64
  %34 = zext i32 %29 to i64
  %35 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %33, i64 %34
  br i1 %32, label %36, label %48

36:                                               ; preds = %25
  %37 = load i16, ptr %35, align 4, !tbaa !355
  %38 = sext i16 %37 to i32
  %39 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 1) #23, !range !682
  %40 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %33, i64 %34, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !355
  %42 = sext i16 %41 to i32
  %43 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 0) #23, !range !682
  %44 = mul i32 %39, %38
  %45 = mul i32 %43, %42
  %46 = add i32 %45, %44
  %47 = sub i32 %8, %46
  br label %66

48:                                               ; preds = %25
  %49 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %33, i64 %34, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !355
  %51 = sext i16 %50 to i32
  %52 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 1) #23, !range !682
  %53 = mul nsw i32 %52, %51
  %54 = load i16, ptr %35, align 4, !tbaa !355
  %55 = sext i16 %54 to i32
  %56 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 0) #23, !range !682
  %57 = mul nsw i32 %56, %55
  %58 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %27, i32 noundef %29, i32 noundef %29) #23, !range !357
  %59 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 0) #23, !range !682
  %60 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 1) #23, !range !682
  %61 = add nsw i32 %60, %59
  %62 = mul nsw i32 %61, %58
  %63 = add i32 %53, %8
  %64 = add i32 %63, %57
  %65 = sub i32 %64, %62
  br label %66

66:                                               ; preds = %36, %48, %18, %12, %1
  %67 = phi i32 [ %8, %1 ], [ %8, %12 ], [ %8, %18 ], [ %47, %36 ], [ %65, %48 ]
  ret i32 %67
}

; Function Attrs: optsize
declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_spill_priority_compare(i64 noundef %0, i64 noundef %1) #5 !prof !238 !PGOFuncName !781 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 41
  %6 = load i32, ptr %5, align 8, !tbaa !454
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 37
  %8 = load i32, ptr %7, align 8, !tbaa !718
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !290
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !342
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !251
  %17 = mul nsw i32 %16, %8
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %6, %18
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 41
  %21 = load i32, ptr %20, align 8, !tbaa !454
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 37
  %23 = load i32, ptr %22, align 8, !tbaa !718
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !290
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !342
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !251
  %32 = mul nsw i32 %31, %23
  %33 = add nsw i32 %32, 1
  %34 = sdiv i32 %21, %33
  %35 = sub nsw i32 %19, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = sub nsw i32 %6, %21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, ptr %3, align 8, !tbaa !288
  %42 = load i32, ptr %4, align 8, !tbaa !288
  %43 = sub nsw i32 %41, %42
  br label %44

44:                                               ; preds = %37, %2, %40
  %45 = phi i32 [ %43, %40 ], [ %35, %2 ], [ %38, %37 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @splay_tree_allocate(i32 noundef %0, ptr nocapture readnone %1) #0 !prof !238 !PGOFuncName !782 {
  %3 = icmp eq i32 %0, 32
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = sext i32 %0 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #24
  br label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !252
  %9 = tail call ptr @pool_alloc(ptr noundef %8) #24
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %6, %4 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splay_tree_free(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !238 !PGOFuncName !783 {
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !251
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %19, label %10, !llvm.loop !784

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !251
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !252
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %7

18:                                               ; preds = %10
  tail call void @ira_free(ptr noundef %0) #24
  br label %21

19:                                               ; preds = %7, %2
  %20 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !252
  tail call void @pool_free(ptr noundef %20, ptr noundef %0) #24
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_only_colorable() unnamed_addr #0 !prof !656 !PGOFuncName !785 {
  tail call fastcc void @sort_bucket() #23
  %1 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !252
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3, !prof !786

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call fastcc void @remove_allocno_from_bucket_and_push(ptr noundef nonnull %4, i8 noundef zeroext 1) #23
  %5 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !252
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !prof !787, !llvm.loop !788

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_allocno_to_spill(ptr noundef %0) unnamed_addr #0 !prof !238 !PGOFuncName !789 {
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef %0, ptr noundef nonnull @uncolorable_allocno_bucket) #23
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %3 = load i16, ptr %2, align 4
  %4 = or i16 %3, 512
  store i16 %4, ptr %2, align 4
  %5 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %6 = icmp sgt i32 %5, 3
  %7 = load ptr, ptr @ira_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, ptr %0, align 8, !tbaa !288
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !292
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %13) #23
  br label %15

15:                                               ; preds = %10, %1
  tail call fastcc void @push_allocno_to_stack(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef readonly %0) unnamed_addr #15 !prof !790 !PGOFuncName !791 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !792

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !649
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_ira_allocno_t_base_pop(ptr nocapture noundef %0) unnamed_addr #6 !prof !364 !PGOFuncName !793 {
  %2 = load i32, ptr %0, align 8, !tbaa !649
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !649
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @allocno_spill_priority(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !794 !PGOFuncName !795 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 8, !tbaa !454
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 37
  %5 = load i32, ptr %4, align 8, !tbaa !718
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !290
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !342
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !251
  %14 = mul nsw i32 %13, %5
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %3, %15
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_allocno_from_bucket_and_push(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !364 !PGOFuncName !796 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %10, !prof !797

4:                                                ; preds = %2
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef %0, ptr noundef nonnull @uncolorable_allocno_bucket) #23
  %5 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %6 = icmp sgt i32 %5, 3
  %7 = load ptr, ptr @ira_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %16, label %32, !prof !755

10:                                               ; preds = %2
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef %0, ptr noundef nonnull @colorable_allocno_bucket) #23
  %11 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !251
  %12 = icmp sgt i32 %11, 3
  %13 = load ptr, ptr @ira_dump_file, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %36, !prof !755

16:                                               ; preds = %10, %4
  %17 = phi ptr [ %13, %10 ], [ %7, %4 ]
  %18 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr nonnull %17)
  tail call fastcc void @print_coalesced_allocno(ptr noundef %0) #23
  %19 = load ptr, ptr @ira_dump_file, align 8, !tbaa !252
  br i1 %3, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @fputc(i32 10, ptr %19)
  br label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr @.str.39, ptr @.str.38
  %28 = tail call fastcc i32 @allocno_spill_priority(ptr noundef %0) #23
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 41
  %30 = load i32, ptr %29, align 8, !tbaa !454
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.37, ptr noundef nonnull %27, i32 noundef %28, i32 noundef %30) #23
  br label %32

32:                                               ; preds = %4, %22
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %34 = load i16, ptr %33, align 4
  %35 = or i16 %34, 512
  store i16 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %10, %20, %32
  tail call fastcc void @push_allocno_to_stack(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_bucket() unnamed_addr #0 !prof !656 !PGOFuncName !798 {
  %1 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !252
  %2 = icmp eq ptr %1, null
  br i1 %2, label %37, label %3, !prof !786

3:                                                ; preds = %0
  %4 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = phi ptr [ %1, %3 ], [ %11, %5 ]
  %8 = add nuw i64 %6, 1
  %9 = getelementptr inbounds ptr, ptr %4, i64 %6
  store ptr %7, ptr %9, align 8, !tbaa !252
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !prof !799, !llvm.loop !800

13:                                               ; preds = %5
  %14 = trunc i64 %8 to i32
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %37, label %16, !prof !801

16:                                               ; preds = %13
  %17 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  %18 = and i64 %8, 4294967295
  tail call void @spec_qsort(ptr noundef %17, i64 noundef %18, i64 noundef 8, ptr noundef nonnull @bucket_allocno_compare_func) #24
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %35, !prof !802

20:                                               ; preds = %16
  %21 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !252
  br label %22

22:                                               ; preds = %20, %33
  %23 = phi i64 [ %18, %20 ], [ %25, %33 ]
  %24 = phi ptr [ null, %20 ], [ %27, %33 ]
  %25 = add nsw i64 %23, -1
  %26 = getelementptr inbounds ptr, ptr %21, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !252
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 39
  store ptr %24, ptr %28, align 8, !tbaa !773
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 40
  store ptr null, ptr %29, align 8, !tbaa !774
  %30 = icmp eq ptr %24, null
  br i1 %30, label %33, label %31, !prof !803

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 40
  store ptr %27, ptr %32, align 8, !tbaa !774
  br label %33

33:                                               ; preds = %31, %22
  %34 = icmp ugt i64 %23, 1
  br i1 %34, label %22, label %35, !prof !804, !llvm.loop !805

35:                                               ; preds = %33, %16
  %36 = phi ptr [ null, %16 ], [ %27, %33 ]
  store ptr %36, ptr @colorable_allocno_bucket, align 8, !tbaa !252
  br label %37

37:                                               ; preds = %0, %13, %35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @bucket_allocno_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !806 !PGOFuncName !807 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !252
  %8 = load ptr, ptr %1, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !290
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !290
  %13 = sub i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29, !prof !808

15:                                               ; preds = %2
  call fastcc void @get_coalesced_allocnos_attributes(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %5) #23
  call fastcc void @get_coalesced_allocnos_attributes(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6) #23
  %16 = load i32, ptr %6, align 4, !tbaa !251
  %17 = load i32, ptr %5, align 4, !tbaa !251
  %18 = sub nsw i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29, !prof !809

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4, !tbaa !251
  %22 = load i32, ptr %4, align 4, !tbaa !251
  %23 = sub nsw i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29, !prof !810

25:                                               ; preds = %20
  %26 = load i32, ptr %8, align 8, !tbaa !288
  %27 = load i32, ptr %7, align 8, !tbaa !288
  %28 = sub nsw i32 %26, %27
  br label %29

29:                                               ; preds = %20, %15, %2, %25
  %30 = phi i32 [ %28, %25 ], [ %13, %2 ], [ %18, %15 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i32 %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_coalesced_allocnos_attributes(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !811 !PGOFuncName !812 {
  store i32 0, ptr %1, align 4, !tbaa !251
  store i32 0, ptr %2, align 4, !tbaa !251
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !367
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !416
  %10 = load i32, ptr %1, align 4, !tbaa !251
  %11 = add nsw i32 %10, %9
  store i32 %11, ptr %1, align 4, !tbaa !251
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 38
  %13 = load i32, ptr %12, align 4, !tbaa !719
  %14 = load i32, ptr %2, align 4, !tbaa !251
  %15 = add nsw i32 %14, %13
  store i32 %15, ptr %2, align 4, !tbaa !251
  %16 = icmp eq ptr %7, %0
  br i1 %16, label %17, label %4, !prof !813

17:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_allocno_from_bucket(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #11 !prof !814 !PGOFuncName !815 {
  %3 = icmp eq ptr %1, @uncolorable_allocno_bucket
  br i1 %3, label %4, label %13, !prof !816

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !290
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !724

8:                                                ; preds = %4
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !251
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !251
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  %15 = load ptr, ptr %14, align 8, !tbaa !774
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !773
  %18 = icmp eq ptr %15, null
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 39
  %20 = select i1 %18, ptr %1, ptr %19, !prof !817
  store ptr %17, ptr %20, align 8, !tbaa !252
  %21 = icmp eq ptr %17, null
  br i1 %21, label %24, label %22, !prof !818

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 40
  store ptr %15, ptr %23, align 8, !tbaa !774
  br label %24

24:                                               ; preds = %22, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_allocno_to_stack(ptr noundef %0) unnamed_addr #0 !prof !364 !PGOFuncName !819 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, -129
  store i16 %6, ptr %4, align 4
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @allocno_stack_vec, ptr noundef %0) #23
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !290
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10, !prof !366

10:                                               ; preds = %1
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !342
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !251
  %17 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %17, label %18, label %20, !prof !366

18:                                               ; preds = %10
  %19 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  tail call void @bitmap_clear(ptr noundef %19) #24
  br label %20

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %11
  br label %22

22:                                               ; preds = %89, %20
  %23 = phi ptr [ %0, %20 ], [ %25, %89 ]
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !367
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %3, ptr noundef %25) #23
  %26 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %89, label %28, !prof !376

28:                                               ; preds = %22, %86
  %29 = load ptr, ptr %2, align 8, !tbaa !252
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !382
  store ptr %31, ptr %2, align 8, !tbaa !252
  %32 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !252
  %33 = load i32, ptr %31, align 8, !tbaa !288
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %33) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %86, label %36, !prof !378

36:                                               ; preds = %28
  %37 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %37, label %38, label %47, !prof !378

38:                                               ; preds = %36
  %39 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %40 = load i32, ptr %31, align 8, !tbaa !288
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %39, i32 noundef %40) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !252
  %45 = load i32, ptr %31, align 8, !tbaa !288
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %45) #24
  br label %47

47:                                               ; preds = %43, %36
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 31
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 384
  %51 = icmp eq i16 %50, 128
  br i1 %51, label %52, label %86, !prof !820

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 37
  %54 = load i32, ptr %53, align 8, !tbaa !718
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !342
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !251
  %60 = add nsw i32 %59, %54
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 38
  %62 = load i32, ptr %61, align 4, !tbaa !719
  %63 = icmp sgt i32 %60, %62
  %64 = sub nsw i32 %54, %16
  br i1 %63, label %66, label %65, !prof !821

65:                                               ; preds = %52
  store i32 %64, ptr %53, align 8, !tbaa !718
  br label %86

66:                                               ; preds = %52
  %67 = load ptr, ptr %21, align 8, !tbaa !252
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69, !prof !822

69:                                               ; preds = %66
  %70 = and i16 %49, 1024
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %11
  %74 = load i32, ptr %73, align 4, !tbaa !251
  %75 = icmp sgt i32 %74, 4000
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = ptrtoint ptr %31 to i64
  tail call void @splay_tree_remove(ptr noundef nonnull %67, i64 noundef %77) #24
  %78 = load i16, ptr %48, align 4
  %79 = or i16 %78, 1024
  store i16 %79, ptr %48, align 4
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @removed_splay_allocno_vec, ptr noundef nonnull %31) #23
  %80 = load i32, ptr %61, align 4, !tbaa !719
  br label %81

81:                                               ; preds = %76, %72, %69, %66
  %82 = phi i32 [ %80, %76 ], [ %62, %72 ], [ %62, %69 ], [ %62, %66 ]
  store i32 %64, ptr %53, align 8, !tbaa !718
  %83 = add nsw i32 %59, %64
  %84 = icmp sgt i32 %83, %82
  br i1 %84, label %86, label %85, !prof !823

85:                                               ; preds = %81
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef nonnull %31, ptr noundef nonnull @uncolorable_allocno_bucket) #23
  tail call fastcc void @add_allocno_to_ordered_bucket(ptr noundef nonnull %31) #23
  br label %86

86:                                               ; preds = %28, %81, %85, %47, %38, %65
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %3) #23
  %87 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !254
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %28, !prof !388, !llvm.loop !824

89:                                               ; preds = %86, %22
  %90 = icmp eq ptr %25, %0
  br i1 %90, label %91, label %22, !prof !370

91:                                               ; preds = %89, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_allocno_to_ordered_bucket(ptr noundef %0) unnamed_addr #14 !prof !825 !PGOFuncName !826 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !252
  store ptr %4, ptr %3, align 8, !tbaa !252
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !827

6:                                                ; preds = %1
  %7 = call i32 @bucket_allocno_compare_func(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %14, label %23, !prof !828

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %32

11:                                               ; preds = %14
  %12 = call i32 @bucket_allocno_compare_func(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %23, !prof !829, !llvm.loop !830

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %17, %11 ], [ %4, %6 ]
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !252
  store ptr %17, ptr %3, align 8, !tbaa !252
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !prof !831, !llvm.loop !830

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  store ptr null, ptr %20, align 8, !tbaa !773
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  store ptr %15, ptr %21, align 8, !tbaa !774
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 39
  br label %32

23:                                               ; preds = %11, %6
  %24 = phi ptr [ %4, %6 ], [ %17, %11 ]
  %25 = phi ptr [ null, %6 ], [ %15, %11 ]
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  store ptr %24, ptr %26, align 8, !tbaa !773
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  store ptr %25, ptr %27, align 8, !tbaa !774
  %28 = icmp eq ptr %25, null
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 39
  %30 = select i1 %28, ptr @colorable_allocno_bucket, ptr %29, !prof !832
  store ptr %0, ptr %30, align 8, !tbaa !252
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 40
  br label %32

32:                                               ; preds = %19, %9, %23
  %33 = phi ptr [ %22, %19 ], [ @colorable_allocno_bucket, %9 ], [ %31, %23 ]
  store ptr %0, ptr %33, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nounwind }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!237}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!35 = !{ptr @assign_hard_reg, ptr @bitmap_clear, i64 1}
!36 = !{ptr @assign_hard_reg, ptr @start_update_cost, i64 214865}
!37 = !{ptr @assign_hard_reg, ptr @ira_allocate_and_copy_costs, i64 273476}
!38 = !{ptr @assign_hard_reg, ptr @ira_allocno_conflict_iter_init, i64 107434}
!39 = !{ptr @assign_hard_reg, ptr @ira_allocno_conflict_iter_cond, i64 442720}
!40 = !{ptr @assign_hard_reg, ptr @bitmap_bit_p, i64 335287}
!41 = !{ptr @assign_hard_reg, ptr @hard_reg_set_subset_p, i64 166251}
!42 = !{ptr @assign_hard_reg, ptr @queue_update_cost, i64 273475}
!43 = !{ptr @assign_hard_reg, ptr @ira_allocno_conflict_iter_next, i64 335286}
!44 = !{ptr @assign_hard_reg, ptr @update_conflict_hard_regno_costs, i64 214864}
!45 = !{ptr @assign_hard_reg, ptr @ira_hard_reg_not_in_set_p, i64 654786}
!46 = !{ptr @assign_hard_reg, ptr @fprintf, i64 1}
!47 = !{ptr @assign_hard_reg, ptr @spec_qsort, i64 1}
!48 = !{ptr @assign_hard_reg, ptr @VEC_ira_allocno_t_heap_safe_push, i64 32}
!49 = !{ptr @assign_hard_reg, ptr @fwrite, i64 16}
!50 = !{ptr @assign_hard_reg, ptr @print_coalesced_allocno, i64 16}
!51 = !{ptr @assign_hard_reg, ptr @fputc, i64 16}
!52 = !{ptr @assign_hard_reg, ptr @update_copy_costs, i64 107130}
!53 = !{ptr @assign_hard_reg, ptr @ira_free_allocno_updated_costs, i64 107433}
!54 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @max_reg_num, i64 38}
!55 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocate_bitmap, i64 76}
!56 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @bitmap_set_bit, i64 104679}
!57 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @coalesce_allocnos, i64 38}
!58 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_free_bitmap, i64 76}
!59 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocate, i64 114}
!60 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @setup_coalesced_allocno_costs_and_nums, i64 41}
!61 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @spec_qsort, i64 79}
!62 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @collect_spilled_coalesced_allocnos, i64 41}
!63 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @coalesce_spill_slots, i64 37}
!64 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @fprintf, i64 2}
!65 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @fputc, i64 1}
!66 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_free, i64 114}
!67 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocno_iter_init, i64 38}
!68 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocno_iter_cond, i64 104717}
!69 = !{ptr @coalesce_allocnos, ptr @ira_allocate, i64 38}
!70 = !{ptr @coalesce_allocnos, ptr @bmp_iter_set_init, i64 38}
!71 = !{ptr @coalesce_allocnos, ptr @bmp_iter_set, i64 104717}
!72 = !{ptr @coalesce_allocnos, ptr @fancy_abort, i64 1}
!73 = !{ptr @coalesce_allocnos, ptr @bmp_iter_next, i64 104679}
!74 = !{ptr @coalesce_allocnos, ptr @spec_qsort, i64 38}
!75 = !{ptr @coalesce_allocnos, ptr @coalesced_allocno_conflict_p, i64 10}
!76 = !{ptr @coalesce_allocnos, ptr @ira_free, i64 38}
!77 = !{ptr @coalesce_spill_slots, ptr @regstat_get_setjmp_crosses, i64 38}
!78 = !{ptr @coalesce_spill_slots, ptr @ira_allocate, i64 38}
!79 = !{ptr @coalesce_spill_slots, ptr @bitmap_bit_p, i64 951}
!80 = !{ptr @coalesce_spill_slots, ptr @slot_coalesced_allocno_live_ranges_intersect_p, i64 654}
!81 = !{ptr @coalesce_spill_slots, ptr @setup_slot_coalesced_allocno_live_ranges, i64 292}
!82 = !{ptr @coalesce_spill_slots, ptr @fprintf, i64 1}
!83 = !{ptr @coalesce_spill_slots, ptr @merge_allocnos, i64 284}
!84 = !{ptr @coalesce_spill_slots, ptr @ira_finish_allocno_live_range_list, i64 104679}
!85 = !{ptr @coalesce_spill_slots, ptr @ira_free, i64 38}
!86 = !{ptr @update_copy_costs, ptr @start_update_cost, i64 107130}
!87 = !{ptr @update_copy_costs, ptr @fancy_abort, i64 1}
!88 = !{ptr @update_copy_costs, ptr @ira_get_register_move_cost, i64 9385}
!89 = !{ptr @update_copy_costs, ptr @ira_allocate_and_set_or_copy_costs, i64 3926}
!90 = !{ptr @update_copy_costs, ptr @queue_update_cost, i64 1963}
!91 = !{ptr @update_copy_costs, ptr @get_next_update_cost, i64 109094}
!92 = !{ptr @ira_reassign_pseudos, ptr @spec_qsort, i64 1}
!93 = !{ptr @ira_reassign_pseudos, ptr @fancy_abort, i64 1}
!94 = !{ptr @ira_reassign_pseudos, ptr @ira_mark_allocation_change, i64 1}
!95 = !{ptr @ira_reassign_pseudos, ptr @allocno_reload_assign, i64 9}
!96 = !{ptr @ira_reassign_pseudos, ptr @bitmap_clear_bit, i64 6}
!97 = !{ptr @ira_reassign_pseudos, ptr @fprintf, i64 14}
!98 = !{ptr @ira_reassign_pseudos, ptr @ira_allocno_conflict_iter_init, i64 19}
!99 = !{ptr @ira_reassign_pseudos, ptr @ira_allocno_conflict_iter_cond, i64 409}
!100 = !{ptr @ira_reassign_pseudos, ptr @bitmap_bit_p, i64 73}
!101 = !{ptr @ira_reassign_pseudos, ptr @bitmap_set_bit, i64 27}
!102 = !{ptr @ira_reassign_pseudos, ptr @ira_allocno_conflict_iter_next, i64 390}
!103 = !{ptr @ira_reuse_stack_slot, ptr @bmp_iter_set_init, i64 4}
!104 = !{ptr @ira_reuse_stack_slot, ptr @bmp_iter_set, i64 54}
!105 = !{ptr @ira_reuse_stack_slot, ptr @allocnos_have_intersected_live_ranges_p, i64 31}
!106 = !{ptr @ira_reuse_stack_slot, ptr @bmp_iter_next, i64 50}
!107 = !{ptr @ira_reuse_stack_slot, ptr @fancy_abort, i64 16}
!108 = !{ptr @ira_reuse_stack_slot, ptr @bitmap_bit_p, i64 26}
!109 = !{ptr @ira_reuse_stack_slot, ptr @bitmap_set_bit, i64 292}
!110 = !{ptr @ira_reuse_stack_slot, ptr @fprintf, i64 11}
!111 = !{ptr @ira_reuse_stack_slot, ptr @fputc, i64 1}
!112 = !{ptr @ira_mark_new_stack_slot, ptr @bitmap_initialize_stat, i64 8}
!113 = !{ptr @ira_mark_new_stack_slot, ptr @bitmap_set_bit, i64 8}
!114 = !{ptr @ira_mark_new_stack_slot, ptr @fprintf, i64 1}
!115 = !{ptr @ira_better_spill_reload_regno_p, ptr @calculate_spill_cost, i64 252}
!116 = !{ptr @calculate_spill_cost, ptr @REG_N_REFS, i64 1}
!117 = !{ptr @ira_initiate_assign, ptr @ira_allocate, i64 152}
!118 = !{ptr @ira_initiate_assign, ptr @ira_allocate_bitmap, i64 76}
!119 = !{ptr @ira_initiate_assign, ptr @initiate_cost_update, i64 76}
!120 = !{ptr @initiate_cost_update, ptr @ira_allocate, i64 76}
!121 = !{ptr @ira_finish_assign, ptr @ira_free, i64 152}
!122 = !{ptr @ira_finish_assign, ptr @ira_free_bitmap, i64 76}
!123 = !{ptr @ira_finish_assign, ptr @finish_cost_update, i64 76}
!124 = !{ptr @finish_cost_update, ptr @ira_free, i64 76}
!125 = !{ptr @ira_color, ptr @ira_allocno_iter_init, i64 38}
!126 = !{ptr @ira_color, ptr @ira_allocno_iter_cond, i64 104717}
!127 = !{ptr @ira_color, ptr @color, i64 37}
!128 = !{ptr @ira_color, ptr @fast_allocation, i64 1}
!129 = !{ptr @color, ptr @VEC_ira_allocno_t_heap_alloc, i64 76}
!130 = !{ptr @color, ptr @ira_initiate_assign, i64 38}
!131 = !{ptr @color, ptr @do_coloring, i64 38}
!132 = !{ptr @color, ptr @ira_finish_assign, i64 38}
!133 = !{ptr @color, ptr @VEC_ira_allocno_t_heap_free, i64 76}
!134 = !{ptr @color, ptr @move_spill_restore, i64 38}
!135 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!136 = !{ptr @ira_allocate_and_set_or_copy_costs, ptr @ira_allocate_cost_vector, i64 2098}
!137 = !{ptr @ira_allocate_and_copy_costs, ptr @ira_allocate_cost_vector, i64 131813}
!138 = !{ptr @update_conflict_hard_regno_costs, ptr @get_next_update_cost, i64 493140}
!139 = !{ptr @update_conflict_hard_regno_costs, ptr @fancy_abort, i64 1}
!140 = !{ptr @update_conflict_hard_regno_costs, ptr @ira_allocate_and_copy_costs, i64 16177}
!141 = !{ptr @update_conflict_hard_regno_costs, ptr @queue_update_cost, i64 11320}
!142 = !{ptr @VEC_ira_allocno_t_heap_safe_push, ptr @VEC_ira_allocno_t_heap_reserve, i64 107433}
!143 = !{ptr @VEC_ira_allocno_t_heap_safe_push, ptr @VEC_ira_allocno_t_base_quick_push, i64 107433}
!144 = !{ptr @VEC_ira_allocno_t_heap_reserve, ptr @VEC_ira_allocno_t_base_space, i64 107433}
!145 = !{ptr @VEC_ira_allocno_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!146 = !{ptr @slot_coalesced_allocno_live_ranges_intersect_p, ptr @ira_allocno_live_ranges_intersect_p, i64 679}
!147 = !{ptr @setup_slot_coalesced_allocno_live_ranges, ptr @ira_copy_allocno_live_range_list, i64 303}
!148 = !{ptr @setup_slot_coalesced_allocno_live_ranges, ptr @ira_merge_allocno_live_ranges, i64 303}
!149 = !{ptr @VEC_ira_allocno_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!150 = !{ptr @do_coloring, ptr @ira_allocate_bitmap, i64 38}
!151 = !{ptr @do_coloring, ptr @ira_allocate, i64 38}
!152 = !{ptr @do_coloring, ptr @create_alloc_pool, i64 38}
!153 = !{ptr @do_coloring, ptr @fwrite, i64 1}
!154 = !{ptr @do_coloring, ptr @ira_traverse_loop_tree, i64 38}
!155 = !{ptr @do_coloring, ptr @ira_print_disposition, i64 1}
!156 = !{ptr @do_coloring, ptr @free_alloc_pool, i64 38}
!157 = !{ptr @do_coloring, ptr @ira_free_bitmap, i64 38}
!158 = !{ptr @do_coloring, ptr @ira_free, i64 38}
!159 = !{ptr @VEC_ira_allocno_t_heap_free, ptr @free, i64 75}
!160 = !{ptr @move_spill_restore, ptr @fwrite, i64 1}
!161 = !{ptr @move_spill_restore, ptr @ira_allocno_iter_init, i64 39}
!162 = !{ptr @move_spill_restore, ptr @ira_allocno_iter_cond, i64 107234}
!163 = !{ptr @move_spill_restore, ptr @bitmap_bit_p, i64 100454}
!164 = !{ptr @move_spill_restore, ptr @ira_loop_edge_freq, i64 24}
!165 = !{ptr @move_spill_restore, ptr @ira_get_register_move_cost, i64 4}
!166 = !{ptr @color_pass, ptr @print_loop_title, i64 1}
!167 = !{ptr @color_pass, ptr @bitmap_copy, i64 76}
!168 = !{ptr @color_pass, ptr @bmp_iter_set_init, i64 77}
!169 = !{ptr @color_pass, ptr @bmp_iter_set, i64 208146}
!170 = !{ptr @color_pass, ptr @bitmap_clear_bit, i64 2}
!171 = !{ptr @color_pass, ptr @bmp_iter_next, i64 208069}
!172 = !{ptr @color_pass, ptr @color_allocnos, i64 38}
!173 = !{ptr @color_pass, ptr @ira_free_allocno_updated_costs, i64 2}
!174 = !{ptr @color_pass, ptr @ira_loop_edge_freq, i64 6}
!175 = !{ptr @color_pass, ptr @update_copy_costs, i64 1}
!176 = !{ptr @color_allocnos, ptr @ira_allocate_bitmap, i64 38}
!177 = !{ptr @color_allocnos, ptr @coalesce_allocnos, i64 1}
!178 = !{ptr @color_allocnos, ptr @bmp_iter_set_init, i64 39}
!179 = !{ptr @color_allocnos, ptr @bmp_iter_set, i64 102139}
!180 = !{ptr @color_allocnos, ptr @fwrite, i64 18}
!181 = !{ptr @color_allocnos, ptr @print_coalesced_allocno, i64 10}
!182 = !{ptr @color_allocnos, ptr @fputc, i64 4}
!183 = !{ptr @color_allocnos, ptr @bmp_iter_next, i64 102100}
!184 = !{ptr @color_allocnos, ptr @assign_hard_reg, i64 12}
!185 = !{ptr @color_allocnos, ptr @fprintf, i64 4}
!186 = !{ptr @color_allocnos, ptr @put_allocno_into_bucket, i64 102061}
!187 = !{ptr @color_allocnos, ptr @push_allocnos_to_stack, i64 37}
!188 = !{ptr @color_allocnos, ptr @pop_allocnos_from_stack, i64 37}
!189 = !{ptr @color_allocnos, ptr @ira_free_bitmap, i64 38}
!190 = !{ptr @put_allocno_into_bucket, ptr @setup_allocno_left_conflicts_size, i64 107432}
!191 = !{ptr @put_allocno_into_bucket, ptr @setup_allocno_available_regs_num, i64 107432}
!192 = !{ptr @put_allocno_into_bucket, ptr @add_allocno_to_bucket, i64 107432}
!193 = !{ptr @push_allocnos_to_stack, ptr @VEC_ira_allocno_t_base_truncate, i64 38}
!194 = !{ptr @push_allocnos_to_stack, ptr @calculate_allocno_spill_cost, i64 1466}
!195 = !{ptr @push_allocnos_to_stack, ptr @splay_tree_new_with_allocator, i64 1}
!196 = !{ptr @push_allocnos_to_stack, ptr @push_only_colorable, i64 288}
!197 = !{ptr @push_allocnos_to_stack, ptr @splay_tree_insert, i64 11}
!198 = !{ptr @push_allocnos_to_stack, ptr @push_allocno_to_spill, i64 1}
!199 = !{ptr @push_allocnos_to_stack, ptr @VEC_ira_allocno_t_base_length, i64 20}
!200 = !{ptr @push_allocnos_to_stack, ptr @VEC_ira_allocno_t_base_pop, i64 19}
!201 = !{ptr @push_allocnos_to_stack, ptr @splay_tree_min, i64 1}
!202 = !{ptr @push_allocnos_to_stack, ptr @splay_tree_remove, i64 1}
!203 = !{ptr @push_allocnos_to_stack, ptr @allocno_spill_priority, i64 37350}
!204 = !{ptr @push_allocnos_to_stack, ptr @remove_allocno_from_bucket_and_push, i64 249}
!205 = !{ptr @push_allocnos_to_stack, ptr @splay_tree_delete, i64 1}
!206 = !{ptr @pop_allocnos_from_stack, ptr @VEC_ira_allocno_t_base_length, i64 104717}
!207 = !{ptr @pop_allocnos_from_stack, ptr @VEC_ira_allocno_t_base_pop, i64 104679}
!208 = !{ptr @pop_allocnos_from_stack, ptr @fwrite, i64 3}
!209 = !{ptr @pop_allocnos_from_stack, ptr @print_coalesced_allocno, i64 1}
!210 = !{ptr @pop_allocnos_from_stack, ptr @assign_hard_reg, i64 104678}
!211 = !{ptr @pop_allocnos_from_stack, ptr @fprintf, i64 1}
!212 = !{ptr @setup_allocno_left_conflicts_size, ptr @hard_reg_set_empty_p, i64 108572}
!213 = !{ptr @setup_allocno_left_conflicts_size, ptr @bitmap_clear, i64 1}
!214 = !{ptr @setup_allocno_left_conflicts_size, ptr @ira_allocno_conflict_iter_init, i64 107433}
!215 = !{ptr @setup_allocno_left_conflicts_size, ptr @ira_allocno_conflict_iter_cond, i64 442719}
!216 = !{ptr @setup_allocno_left_conflicts_size, ptr @bitmap_bit_p, i64 335287}
!217 = !{ptr @setup_allocno_left_conflicts_size, ptr @ira_allocno_conflict_iter_next, i64 335286}
!218 = !{ptr @setup_allocno_available_regs_num, ptr @fprintf, i64 1}
!219 = !{ptr @push_only_colorable, ptr @sort_bucket, i64 294}
!220 = !{ptr @push_only_colorable, ptr @remove_allocno_from_bucket_and_push, i64 106815}
!221 = !{ptr @remove_allocno_from_bucket_and_push, ptr @delete_allocno_from_bucket, i64 107433}
!222 = !{ptr @remove_allocno_from_bucket_and_push, ptr @fwrite, i64 1}
!223 = !{ptr @remove_allocno_from_bucket_and_push, ptr @print_coalesced_allocno, i64 1}
!224 = !{ptr @remove_allocno_from_bucket_and_push, ptr @fputc, i64 1}
!225 = !{ptr @remove_allocno_from_bucket_and_push, ptr @push_allocno_to_stack, i64 107433}
!226 = !{ptr @sort_bucket, ptr @spec_qsort, i64 102}
!227 = !{ptr @bucket_allocno_compare_func, ptr @get_coalesced_allocnos_attributes, i64 13703316}
!228 = !{ptr @push_allocno_to_stack, ptr @VEC_ira_allocno_t_heap_safe_push, i64 107433}
!229 = !{ptr @push_allocno_to_stack, ptr @bitmap_clear, i64 1}
!230 = !{ptr @push_allocno_to_stack, ptr @ira_allocno_conflict_iter_init, i64 107433}
!231 = !{ptr @push_allocno_to_stack, ptr @ira_allocno_conflict_iter_cond, i64 442719}
!232 = !{ptr @push_allocno_to_stack, ptr @bitmap_bit_p, i64 335287}
!233 = !{ptr @push_allocno_to_stack, ptr @delete_allocno_from_bucket, i64 1249}
!234 = !{ptr @push_allocno_to_stack, ptr @add_allocno_to_ordered_bucket, i64 1249}
!235 = !{ptr @push_allocno_to_stack, ptr @ira_allocno_conflict_iter_next, i64 335286}
!236 = !{ptr @add_allocno_to_ordered_bucket, ptr @bucket_allocno_compare_func, i64 5467194}
!237 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!238 = !{!"function_entry_count", i64 0}
!239 = !{!240, !241, i64 8}
!240 = !{!"ira_loop_tree_node", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !244, i64 56, !242, i64 60, !241, i64 64, !242, i64 72, !242, i64 76, !241, i64 184, !241, i64 192, !241, i64 200, !241, i64 208}
!241 = !{!"any pointer", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C/C++ TBAA"}
!244 = !{!"int", !242, i64 0}
!245 = !{!246, !241, i64 8}
!246 = !{!"loop", !244, i64 0, !244, i64 4, !241, i64 8, !241, i64 16, !247, i64 24, !244, i64 32, !244, i64 36, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !248, i64 80, !248, i64 96, !242, i64 112, !242, i64 113, !244, i64 116, !241, i64 120, !241, i64 128, !242, i64 136, !241, i64 144}
!247 = !{!"lpt_decision", !244, i64 0, !244, i64 4}
!248 = !{!"", !249, i64 0, !249, i64 8}
!249 = !{!"long", !242, i64 0}
!250 = !{i64 0, i64 4, !251, i64 8, i64 8, !252}
!251 = !{!244, !244, i64 0}
!252 = !{!241, !241, i64 0}
!253 = !{i64 0, i64 8, !252}
!254 = !{i8 0, i8 2}
!255 = !{!256, !241, i64 0}
!256 = !{!"edge_def", !241, i64 0, !241, i64 8, !242, i64 16, !241, i64 24, !241, i64 32, !244, i64 40, !244, i64 44, !244, i64 48, !244, i64 52, !249, i64 56}
!257 = !{!246, !241, i64 16}
!258 = !{!259, !244, i64 80}
!259 = !{!"basic_block_def", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !242, i64 32, !241, i64 48, !241, i64 56, !242, i64 64, !249, i64 72, !244, i64 80, !244, i64 84, !244, i64 88, !244, i64 92, !244, i64 96}
!260 = !{!261, !241, i64 24}
!261 = !{!"df_lr_bb_info", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24}
!262 = !{!256, !241, i64 8}
!263 = !{!261, !241, i64 16}
!264 = !{!259, !244, i64 88}
!265 = !{!256, !244, i64 52}
!266 = distinct !{!266, !267}
!267 = !{!"llvm.loop.mustprogress"}
!268 = !{i32 0, i32 2}
!269 = distinct !{!269, !267}
!270 = !{!271, !241, i64 8}
!271 = !{!"function", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96, !244, i64 104, !244, i64 108, !244, i64 112, !244, i64 116, !244, i64 120, !244, i64 124, !241, i64 128, !244, i64 136, !244, i64 137, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139}
!272 = !{!273, !241, i64 0}
!273 = !{!"control_flow_graph", !241, i64 0, !241, i64 8, !241, i64 16, !244, i64 24, !244, i64 28, !244, i64 32, !241, i64 40, !244, i64 48, !242, i64 52, !242, i64 60, !244, i64 68, !244, i64 72}
!274 = !{!259, !249, i64 72}
!275 = !{!"ira-color.c:ei_start_1"}
!276 = !{!"ira-color.c:ei_cond"}
!277 = !{!"ira-color.c:df_lr_get_bb_info"}
!278 = !{!279, !244, i64 16}
!279 = !{!"dataflow", !241, i64 0, !241, i64 8, !244, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !244, i64 48, !242, i64 52, !242, i64 53, !242, i64 54}
!280 = !{!279, !241, i64 8}
!281 = !{!"ira-color.c:ei_next"}
!282 = !{!283, !244, i64 0}
!283 = !{!"", !244, i64 0, !241, i64 8}
!284 = !{!"ira-color.c:VEC_edge_base_iterate"}
!285 = !{!286, !244, i64 0}
!286 = !{!"VEC_edge_base", !244, i64 0, !244, i64 4, !242, i64 8}
!287 = !{!"ira-color.c:VEC_edge_heap_free"}
!288 = !{!289, !244, i64 0}
!289 = !{!"ira_allocno", !244, i64 0, !244, i64 4, !244, i64 8, !244, i64 12, !241, i64 16, !241, i64 24, !241, i64 32, !244, i64 40, !244, i64 44, !244, i64 48, !244, i64 52, !244, i64 56, !244, i64 60, !244, i64 64, !244, i64 68, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96, !241, i64 104, !241, i64 112, !244, i64 120, !244, i64 124, !241, i64 128, !244, i64 136, !244, i64 140, !249, i64 144, !249, i64 152, !244, i64 160, !244, i64 164, !244, i64 168, !244, i64 172, !244, i64 172, !244, i64 172, !244, i64 172, !244, i64 172, !244, i64 172, !244, i64 172, !244, i64 172, !244, i64 173, !244, i64 173, !244, i64 173, !244, i64 173, !241, i64 176, !241, i64 184, !241, i64 192, !241, i64 200, !241, i64 208, !244, i64 216, !244, i64 220, !241, i64 224, !241, i64 232, !244, i64 240}
!290 = !{!289, !244, i64 48}
!291 = !{!289, !244, i64 12}
!292 = !{!289, !244, i64 4}
!293 = distinct !{!293, !267}
!294 = distinct !{!294, !267}
!295 = distinct !{!295, !267}
!296 = distinct !{!296, !267}
!297 = !{!"function_entry_count", i64 114}
!298 = !{!"ira-color.c:ira_allocno_iter_init"}
!299 = !{!300, !244, i64 0}
!300 = !{!"", !244, i64 0}
!301 = !{!"function_entry_count", i64 322413}
!302 = !{!"ira-color.c:ira_allocno_iter_cond"}
!303 = !{!"branch_weights", i32 229, i32 1}
!304 = !{!"branch_weights", i32 1, i32 322300}
!305 = !{!"branch_weights", i32 229, i32 644371}
!306 = distinct !{!306, !267}
!307 = !{!"function_entry_count", i64 322299}
!308 = !{!"ira-color.c:ira_allocno_conflict_iter_init"}
!309 = !{!310, !242, i64 0}
!310 = !{!"", !242, i64 0, !241, i64 8, !244, i64 16, !244, i64 20, !244, i64 24, !244, i64 28, !249, i64 32}
!311 = !{!289, !241, i64 128}
!312 = !{!310, !241, i64 8}
!313 = !{!310, !244, i64 16}
!314 = !{!"branch_weights", i32 5212, i32 317089}
!315 = !{!289, !244, i64 120}
!316 = !{!289, !244, i64 124}
!317 = !{!"branch_weights", i32 1, i32 5212}
!318 = !{!310, !244, i64 24}
!319 = !{!310, !244, i64 28}
!320 = !{!"branch_weights", i32 0, i32 -2147483648}
!321 = !{!249, !249, i64 0}
!322 = !{!310, !249, i64 32}
!323 = !{!"function_entry_count", i64 1328163}
!324 = !{!"ira-color.c:ira_allocno_conflict_iter_cond"}
!325 = !{!"branch_weights", i32 478348, i32 849817}
!326 = !{!"branch_weights", i32 20218, i32 452919}
!327 = !{!310, !244, i64 20}
!328 = !{!"branch_weights", i32 317089, i32 532729}
!329 = !{!"branch_weights", i32 276052, i32 197085}
!330 = !{!"branch_weights", i32 15007, i32 5212}
!331 = !{!"branch_weights", i32 0, i32 20218}
!332 = distinct !{!332, !267}
!333 = !{!"branch_weights", i32 0, i32 276052}
!334 = distinct !{!334, !267}
!335 = !{!"function_entry_count", i64 1005864}
!336 = !{!"ira-color.c:ira_allocno_conflict_iter_next"}
!337 = !{!"branch_weights", i32 473137, i32 532729}
!338 = !{!"ira-color.c:setup_allocno_priorities"}
!339 = !{!289, !244, i64 40}
!340 = !{!289, !244, i64 60}
!341 = !{!289, !244, i64 52}
!342 = !{!289, !244, i64 8}
!343 = distinct !{!343, !267}
!344 = !{!289, !244, i64 68}
!345 = distinct !{!345, !267}
!346 = !{!"ira-color.c:allocno_priority_compare_func"}
!347 = !{!"ira-color.c:update_curr_costs"}
!348 = !{!289, !241, i64 72}
!349 = !{!350, !241, i64 8}
!350 = !{!"ira_allocno_copy", !244, i64 0, !241, i64 8, !241, i64 16, !244, i64 24, !242, i64 28, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72}
!351 = !{!350, !241, i64 48}
!352 = !{!350, !241, i64 16}
!353 = !{!350, !241, i64 64}
!354 = !{!242, !242, i64 0}
!355 = !{!356, !356, i64 0}
!356 = !{!"short", !242, i64 0}
!357 = !{i32 0, i32 65536}
!358 = !{!289, !241, i64 184}
!359 = !{!289, !241, i64 200}
!360 = !{!350, !244, i64 24}
!361 = !{!289, !241, i64 192}
!362 = !{!289, !241, i64 208}
!363 = distinct !{!363, !267}
!364 = !{!"function_entry_count", i64 107433}
!365 = !{!"ira-color.c:assign_hard_reg"}
!366 = !{!"branch_weights", i32 1, i32 107434}
!367 = !{!289, !241, i64 104}
!368 = !{!289, !244, i64 64}
!369 = !{!289, !249, i64 152}
!370 = !{!"branch_weights", i32 107434, i32 1}
!371 = !{!289, !244, i64 56}
!372 = !{!"branch_weights", i32 107433, i32 1}
!373 = !{!"branch_weights", i32 233317, i32 411283}
!374 = !{!"branch_weights", i32 107433, i32 537166}
!375 = distinct !{!375, !267}
!376 = !{!"branch_weights", i32 1, i32 107433}
!377 = !{!"branch_weights", i32 335289, i32 1}
!378 = !{!"branch_weights", i32 1, i32 335289}
!379 = !{!"branch_weights", i32 167645, i32 167645}
!380 = !{!"branch_weights", i32 166255, i32 1391}
!381 = !{!"branch_weights", i32 166255, i32 1}
!382 = !{!289, !241, i64 96}
!383 = !{!"branch_weights", i32 166045, i32 1601}
!384 = !{!"branch_weights", i32 1538095349, i32 -1257000931}
!385 = !{!"branch_weights", i32 1, i32 661411}
!386 = !{!"branch_weights", i32 551176, i32 110235}
!387 = distinct !{!387, !267}
!388 = !{!"branch_weights", i32 107433, i32 227856}
!389 = distinct !{!389, !267}
!390 = !{!"branch_weights", i32 1, i32 644599}
!391 = !{!"branch_weights", i32 167203, i32 477397}
!392 = !{!"branch_weights", i32 477397, i32 1}
!393 = !{!"branch_weights", i32 10199, i32 467199}
!394 = !{!"branch_weights", i32 6286, i32 3914}
!395 = !{!"branch_weights", i32 108493, i32 368905}
!396 = distinct !{!396, !267}
!397 = !{!"branch_weights", i32 303, i32 107132}
!398 = !{!"branch_weights", i32 91809, i32 28002655}
!399 = !{!"branch_weights", i32 8138125, i32 -1417535616}
!400 = !{!"branch_weights", i32 303, i32 1}
!401 = distinct !{!401, !267}
!402 = !{!"branch_weights", i32 2147463668, i32 19980}
!403 = !{!"branch_weights", i32 107132, i32 303}
!404 = !{!"function_entry_count", i64 38}
!405 = !{!"branch_weights", i32 155, i32 1}
!406 = !{!"branch_weights", i32 182366, i32 107434}
!407 = !{!"branch_weights", i32 155, i32 1159041}
!408 = distinct !{!408, !267}
!409 = !{!"branch_weights", i32 1, i32 39}
!410 = !{!"branch_weights", i32 37, i32 3}
!411 = !{!"branch_weights", i32 9, i32 30}
!412 = !{!"branch_weights", i32 9, i32 1}
!413 = !{!"branch_weights", i32 1, i32 9}
!414 = !{!"branch_weights", i32 9, i32 91}
!415 = !{!"branch_weights", i32 303, i32 92113}
!416 = !{!289, !244, i64 44}
!417 = !{!"branch_weights", i32 9, i32 295}
!418 = !{!"branch_weights", i32 9, i32 0}
!419 = distinct !{!419, !267}
!420 = !{!"branch_weights", i32 1, i32 155}
!421 = !{!"branch_weights", i32 155, i32 429581}
!422 = distinct !{!422, !267}
!423 = !{!"ira-color.c:coalesce_allocnos"}
!424 = !{!"branch_weights", i32 1, i32 302}
!425 = !{!"branch_weights", i32 1, i32 303}
!426 = !{!350, !241, i64 32}
!427 = !{!350, !242, i64 28}
!428 = !{!"branch_weights", i32 302, i32 1}
!429 = distinct !{!429, !267}
!430 = distinct !{!430, !267}
!431 = !{!"branch_weights", i32 2092064716, i32 55418932}
!432 = !{!"branch_weights", i32 -2147483648, i32 0}
!433 = distinct !{!433, !267}
!434 = !{!350, !244, i64 0}
!435 = distinct !{!435, !267}
!436 = distinct !{!436, !267}
!437 = !{!"function_entry_count", i64 40}
!438 = !{!"ira-color.c:setup_coalesced_allocno_costs_and_nums"}
!439 = !{!"branch_weights", i32 163, i32 1}
!440 = !{!"branch_weights", i32 183440, i32 108820}
!441 = !{!"branch_weights", i32 108526, i32 295}
!442 = !{!"branch_weights", i32 163, i32 1168873}
!443 = distinct !{!443, !267}
!444 = !{!"function_entry_count", i64 4564441}
!445 = !{!"ira-color.c:coalesced_pseudo_reg_freq_compare"}
!446 = !{!"branch_weights", i32 4221447, i32 342996}
!447 = !{!"branch_weights", i32 1713, i32 4219735}
!448 = !{!"ira-color.c:collect_spilled_coalesced_allocnos"}
!449 = !{!"branch_weights", i32 108216, i32 605}
!450 = !{!"branch_weights", i32 311, i32 295}
!451 = distinct !{!451, !267}
!452 = !{!"ira-color.c:coalesce_spill_slots"}
!453 = !{!"branch_weights", i32 1, i32 143}
!454 = !{!289, !244, i64 240}
!455 = !{!"branch_weights", i32 679, i32 193}
!456 = !{!"branch_weights", i32 679, i32 1}
!457 = !{!"branch_weights", i32 295, i32 385}
!458 = !{!"branch_weights", i32 143, i32 13793}
!459 = distinct !{!459, !267}
!460 = !{!"branch_weights", i32 295, i32 87321}
!461 = !{!"branch_weights", i32 155, i32 1057}
!462 = distinct !{!462, !267}
!463 = !{!"branch_weights", i32 429581, i32 155}
!464 = distinct !{!464, !267}
!465 = !{!"function_entry_count", i64 4494541}
!466 = !{!"ira-color.c:coalesced_pseudo_reg_slot_compare"}
!467 = !{!"branch_weights", i32 2822029, i32 1672514}
!468 = !{!"branch_weights", i32 1669370, i32 3145}
!469 = !{!"branch_weights", i32 2139124, i32 2352275}
!470 = !{!"branch_weights", i32 2352129, i32 147}
!471 = !{!"branch_weights", i32 633, i32 2513}
!472 = !{!"branch_weights", i32 327, i32 2187}
!473 = !{!"branch_weights", i32 1669, i32 519}
!474 = !{!475, !242, i64 477}
!475 = !{!"rtl_data", !476, i64 0, !477, i64 40, !478, i64 96, !479, i64 112, !481, i64 208, !482, i64 248, !244, i64 312, !241, i64 320, !241, i64 328, !241, i64 336, !241, i64 344, !241, i64 352, !241, i64 360, !241, i64 368, !241, i64 376, !241, i64 384, !241, i64 392, !249, i64 400, !241, i64 408, !241, i64 416, !241, i64 424, !244, i64 432, !244, i64 436, !244, i64 440, !244, i64 444, !244, i64 448, !244, i64 452, !241, i64 456, !242, i64 464, !242, i64 465, !242, i64 466, !242, i64 467, !242, i64 468, !242, i64 469, !242, i64 470, !242, i64 471, !242, i64 472, !242, i64 473, !242, i64 474, !242, i64 475, !242, i64 476, !242, i64 477, !242, i64 478, !242, i64 479, !242, i64 480, !242, i64 481, !242, i64 482, !242, i64 483, !242, i64 484, !242, i64 485}
!476 = !{!"expr_status", !244, i64 0, !244, i64 4, !244, i64 8, !241, i64 16, !241, i64 24, !241, i64 32}
!477 = !{!"emit_status", !244, i64 0, !244, i64 4, !241, i64 8, !241, i64 16, !241, i64 24, !244, i64 32, !244, i64 36, !244, i64 40, !244, i64 44, !241, i64 48}
!478 = !{!"varasm_status", !241, i64 0, !244, i64 8}
!479 = !{!"incoming_args", !244, i64 0, !244, i64 4, !244, i64 8, !241, i64 16, !480, i64 24, !241, i64 88}
!480 = !{!"ix86_args", !244, i64 0, !244, i64 4, !244, i64 8, !244, i64 12, !244, i64 16, !244, i64 20, !244, i64 24, !244, i64 28, !244, i64 32, !244, i64 36, !244, i64 40, !244, i64 44, !244, i64 48, !244, i64 52, !244, i64 56, !244, i64 60}
!481 = !{!"function_subsections", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32}
!482 = !{!"rtl_eh", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !242, i64 48}
!483 = !{!"branch_weights", i32 1, i32 519}
!484 = !{!"branch_weights", i32 1669, i32 1}
!485 = !{!"function_entry_count", i64 107131}
!486 = !{!"ira-color.c:update_copy_costs"}
!487 = !{!"branch_weights", i32 1, i32 107132}
!488 = !{!"branch_weights", i32 94775, i32 14320}
!489 = !{!"branch_weights", i32 11159, i32 3162}
!490 = !{!"branch_weights", i32 3162, i32 1}
!491 = !{!"branch_weights", i32 1, i32 14320}
!492 = !{!"branch_weights", i32 9386, i32 4935}
!493 = !{!"branch_weights", i32 1202, i32 8185}
!494 = !{!"branch_weights", i32 1, i32 9386}
!495 = !{!"branch_weights", i32 7423, i32 1964}
!496 = !{!"branch_weights", i32 14320, i32 0}
!497 = distinct !{!497, !267}
!498 = !{!"branch_weights", i32 107132, i32 1964}
!499 = distinct !{!499, !267}
!500 = !{!"function_entry_count", i64 76}
!501 = !{!"branch_weights", i32 1, i32 77}
!502 = !{!"branch_weights", i32 362199, i32 2147121449}
!503 = !{!"branch_weights", i32 1, i32 0}
!504 = distinct !{!504, !267}
!505 = !{!"branch_weights", i32 27531768, i32 2119951880}
!506 = distinct !{!506, !267}
!507 = distinct !{!507, !267}
!508 = distinct !{!508, !267}
!509 = distinct !{!509, !267}
!510 = !{!"ira-color.c:pseudo_reg_compare"}
!511 = !{!512, !244, i64 0}
!512 = !{!"reg_info_t", !244, i64 0, !244, i64 4, !244, i64 8, !244, i64 12, !244, i64 16, !244, i64 20, !244, i64 24}
!513 = !{!"ira-color.c:allocno_reload_assign"}
!514 = !{!289, !244, i64 168}
!515 = !{!"function_entry_count", i64 302}
!516 = !{!517, !241, i64 32}
!517 = !{!"ira_spilled_reg_stack_slot", !518, i64 0, !241, i64 32, !244, i64 40}
!518 = !{!"bitmap_head_def", !241, i64 0, !241, i64 8, !244, i64 16, !241, i64 24}
!519 = !{!517, !244, i64 40}
!520 = distinct !{!520, !267}
!521 = distinct !{!521, !267}
!522 = distinct !{!522, !267}
!523 = !{!"branch_weights", i32 61003036, i32 2086480612}
!524 = distinct !{!524, !267}
!525 = !{!"function_entry_count", i64 152}
!526 = !{!"ira-color.c:bmp_iter_set_init"}
!527 = !{!518, !241, i64 0}
!528 = !{!529, !241, i64 0}
!529 = !{!"", !241, i64 0, !241, i64 8, !244, i64 16, !249, i64 24}
!530 = !{!529, !241, i64 8}
!531 = !{!"branch_weights", i32 1, i32 153}
!532 = !{!533, !244, i64 16}
!533 = !{!"bitmap_element_def", !241, i64 0, !241, i64 8, !244, i64 16, !242, i64 24}
!534 = !{!"branch_weights", i32 153, i32 1}
!535 = !{!529, !244, i64 16}
!536 = !{!529, !249, i64 24}
!537 = !{!"function_entry_count", i64 429884}
!538 = !{!"ira-color.c:bmp_iter_set"}
!539 = !{!"branch_weights", i32 6793, i32 423093}
!540 = !{!"branch_weights", i32 1, i32 429732}
!541 = !{!"branch_weights", i32 0, i32 1}
!542 = distinct !{!542, !267}
!543 = !{!"branch_weights", i32 1, i32 3456}
!544 = !{!"branch_weights", i32 121, i32 6641}
!545 = !{!"branch_weights", i32 3456, i32 3305}
!546 = distinct !{!546, !267}
!547 = !{!533, !241, i64 0}
!548 = !{!"branch_weights", i32 153, i32 3305}
!549 = !{!"ira-color.c:allocnos_have_intersected_live_ranges_p"}
!550 = !{!289, !241, i64 16}
!551 = !{!289, !241, i64 112}
!552 = !{!"function_entry_count", i64 429732}
!553 = !{!"ira-color.c:bmp_iter_next"}
!554 = !{!"function_entry_count", i64 8}
!555 = !{!"ira-color.c:bitmap_initialize_stat"}
!556 = !{!518, !241, i64 24}
!557 = !{!"function_entry_count", i64 126}
!558 = !{!"branch_weights", i32 127, i32 16257}
!559 = !{!"branch_weights", i32 127, i32 1}
!560 = !{!"branch_weights", i32 1, i32 127}
!561 = !{!"function_entry_count", i64 252}
!562 = !{!"ira-color.c:calculate_spill_cost"}
!563 = !{!"branch_weights", i32 252, i32 1}
!564 = distinct !{!564, !267}
!565 = !{!"branch_weights", i32 1, i32 253}
!566 = !{!"ira-color.c:initiate_cost_update"}
!567 = !{!"ira-color.c:finish_cost_update"}
!568 = distinct !{!568, !267}
!569 = !{!"ira-color.c:color"}
!570 = !{!"ira-color.c:fast_allocation"}
!571 = distinct !{!571, !267}
!572 = !{!289, !249, i64 144}
!573 = !{!574, !244, i64 8}
!574 = !{!"ira_allocno_live_range", !241, i64 0, !244, i64 8, !244, i64 12, !241, i64 16, !241, i64 24, !241, i64 32}
!575 = !{!574, !244, i64 12}
!576 = distinct !{!576, !267}
!577 = distinct !{!577, !267}
!578 = distinct !{!578, !267}
!579 = distinct !{!579, !267}
!580 = distinct !{!580, !267}
!581 = distinct !{!581, !267}
!582 = !{!"ira-color.c:ei_end_p"}
!583 = !{!"ira-color.c:ei_edge"}
!584 = !{!"ira-color.c:VEC_edge_base_length"}
!585 = !{!"ira-color.c:ei_container"}
!586 = !{!"ira-color.c:VEC_edge_base_index"}
!587 = !{!"function_entry_count", i64 9385}
!588 = !{!"ira-color.c:ira_get_register_move_cost"}
!589 = !{!"function_entry_count", i64 3926}
!590 = !{!"ira-color.c:ira_allocate_and_set_or_copy_costs"}
!591 = !{!"branch_weights", i32 2099, i32 1829}
!592 = !{!"branch_weights", i32 1687, i32 413}
!593 = !{!"branch_weights", i32 1686, i32 1}
!594 = !{!"branch_weights", i32 1686, i32 0}
!595 = distinct !{!595, !267, !596, !597}
!596 = !{!"llvm.loop.isvectorized", i32 1}
!597 = !{!"llvm.loop.unroll.runtime.disable"}
!598 = !{!"function_entry_count", i64 321997}
!599 = !{!"ira-color.c:start_update_cost"}
!600 = !{!"function_entry_count", i64 289655}
!601 = !{!"ira-color.c:ira_allocate_and_copy_costs"}
!602 = !{!"branch_weights", i32 -1944005955, i32 1963262431}
!603 = !{!"function_entry_count", i64 166254}
!604 = !{!"ira-color.c:hard_reg_set_subset_p"}
!605 = !{!"function_entry_count", i64 286762}
!606 = !{!"ira-color.c:queue_update_cost"}
!607 = !{!608, !244, i64 0}
!608 = !{!"update_cost_queue_elem", !244, i64 0, !244, i64 4, !241, i64 8}
!609 = !{!"branch_weights", i32 6526, i32 280238}
!610 = !{!"branch_weights", i32 1, i32 280238}
!611 = !{!608, !244, i64 4}
!612 = !{!608, !241, i64 8}
!613 = !{!"branch_weights", i32 121357, i32 158882}
!614 = !{!"function_entry_count", i64 214866}
!615 = !{!"ira-color.c:update_conflict_hard_regno_costs"}
!616 = !{!"branch_weights", i32 1, i32 214866}
!617 = !{!"branch_weights", i32 214866, i32 63409}
!618 = distinct !{!618, !267}
!619 = !{!"branch_weights", i32 256146, i32 22129}
!620 = !{!"branch_weights", i32 12535, i32 9595}
!621 = !{!"branch_weights", i32 9595, i32 1}
!622 = !{!"branch_weights", i32 1, i32 22129}
!623 = !{!"branch_weights", i32 18203, i32 3927}
!624 = !{!"branch_weights", i32 16179, i32 2025}
!625 = !{!"branch_weights", i32 11799, i32 4381}
!626 = !{!"branch_weights", i32 1, i32 4381}
!627 = !{!"branch_weights", i32 4380, i32 1}
!628 = !{!"branch_weights", i32 1, i32 26281}
!629 = !{!"branch_weights", i32 26253, i32 29}
!630 = !{!"branch_weights", i32 13, i32 17}
!631 = !{!"branch_weights", i32 21901, i32 4380}
!632 = distinct !{!632, !267}
!633 = !{!"branch_weights", i32 1502806202, i32 644677446}
!634 = !{!"branch_weights", i32 22129, i32 0}
!635 = distinct !{!635, !267}
!636 = !{!"function_entry_count", i64 654796}
!637 = !{!"ira-color.c:ira_hard_reg_not_in_set_p"}
!638 = !{!"branch_weights", i32 654797, i32 481310}
!639 = !{!"branch_weights", i32 481310, i32 173488}
!640 = distinct !{!640, !267}
!641 = !{!"ira-color.c:allocno_cost_compare_func"}
!642 = !{!"ira-color.c:VEC_ira_allocno_t_heap_safe_push"}
!643 = !{!"ira-color.c:print_coalesced_allocno"}
!644 = !{!"function_entry_count", i64 602234}
!645 = !{!"ira-color.c:get_next_update_cost"}
!646 = !{!"branch_weights", i32 321998, i32 280238}
!647 = !{!"ira-color.c:VEC_ira_allocno_t_heap_reserve"}
!648 = !{!"ira-color.c:VEC_ira_allocno_t_base_quick_push"}
!649 = !{!650, !244, i64 0}
!650 = !{!"VEC_ira_allocno_t_base", !244, i64 0, !244, i64 4, !242, i64 8}
!651 = !{!"ira-color.c:VEC_ira_allocno_t_base_space"}
!652 = !{!650, !244, i64 4}
!653 = !{!"ira-color.c:copy_freq_compare_func"}
!654 = !{!"ira-color.c:coalesced_allocno_conflict_p"}
!655 = distinct !{!655, !267}
!656 = !{!"function_entry_count", i64 294}
!657 = !{!"ira-color.c:merge_allocnos"}
!658 = !{!"branch_weights", i32 1, i32 295}
!659 = !{!"branch_weights", i32 295, i32 1}
!660 = !{!"function_entry_count", i64 678}
!661 = !{!"ira-color.c:slot_coalesced_allocno_live_ranges_intersect_p"}
!662 = !{!"ira-color.c:setup_slot_coalesced_allocno_live_ranges"}
!663 = !{!"ira-color.c:rhs_regno"}
!664 = !{!"ira-color.c:REG_N_REFS"}
!665 = !{!666, !244, i64 4}
!666 = !{!"regstat_n_sets_and_refs_t", !244, i64 0, !244, i64 4}
!667 = !{!"ira-color.c:VEC_ira_allocno_t_heap_alloc"}
!668 = !{!"ira-color.c:do_coloring"}
!669 = !{!"branch_weights", i32 39, i32 1561}
!670 = !{!"ira-color.c:VEC_ira_allocno_t_heap_free"}
!671 = !{!"ira-color.c:move_spill_restore"}
!672 = !{!289, !241, i64 32}
!673 = !{!289, !241, i64 88}
!674 = !{!289, !241, i64 80}
!675 = !{!240, !241, i64 40}
!676 = !{!"branch_weights", i32 107132, i32 1}
!677 = !{!"branch_weights", i32 100683, i32 6450}
!678 = !{!240, !241, i64 192}
!679 = !{!"branch_weights", i32 100683, i32 1}
!680 = distinct !{!680, !267}
!681 = !{!240, !241, i64 64}
!682 = !{i32 -214748, i32 214749}
!683 = distinct !{!683, !267}
!684 = !{!240, !241, i64 48}
!685 = !{!246, !244, i64 0}
!686 = !{!"branch_weights", i32 127, i32 19713}
!687 = !{!"branch_weights", i32 2093373824, i32 54109824}
!688 = !{!"ira-color.c:color_pass"}
!689 = !{!240, !241, i64 184}
!690 = distinct !{!690, !267}
!691 = !{!"branch_weights", i32 79, i32 1}
!692 = distinct !{!692, !267}
!693 = !{!"branch_weights", i32 38, i32 1}
!694 = distinct !{!694, !267}
!695 = distinct !{!695, !267}
!696 = !{!"ira-color.c:print_loop_title"}
!697 = !{!240, !241, i64 0}
!698 = !{!273, !241, i64 8}
!699 = distinct !{!699, !267}
!700 = distinct !{!700, !267}
!701 = distinct !{!701, !267}
!702 = !{!240, !241, i64 200}
!703 = distinct !{!703, !267}
!704 = distinct !{!704, !267}
!705 = distinct !{!705, !267}
!706 = !{!"ira-color.c:color_allocnos"}
!707 = !{!"branch_weights", i32 39, i32 1}
!708 = distinct !{!708, !267}
!709 = distinct !{!709, !267}
!710 = distinct !{!710, !267}
!711 = distinct !{!711, !267}
!712 = !{!"ira-color.c:loop_depth"}
!713 = !{!246, !241, i64 40}
!714 = !{!"ira-color.c:VEC_loop_p_base_length"}
!715 = !{!716, !244, i64 0}
!716 = !{!"VEC_loop_p_base", !244, i64 0, !244, i64 4, !242, i64 8}
!717 = !{!"ira-color.c:put_allocno_into_bucket"}
!718 = !{!289, !244, i64 216}
!719 = !{!289, !244, i64 220}
!720 = !{!"branch_weights", i32 1505, i32 105930}
!721 = !{!"ira-color.c:push_allocnos_to_stack"}
!722 = !{!"branch_weights", i32 155, i32 153}
!723 = distinct !{!723, !267}
!724 = !{!"branch_weights", i32 1, i32 1505}
!725 = !{!"branch_weights", i32 1505, i32 1}
!726 = !{!"branch_weights", i32 155, i32 5865}
!727 = distinct !{!727, !267}
!728 = !{!"branch_weights", i32 39, i32 39}
!729 = !{!"branch_weights", i32 153, i32 155}
!730 = distinct !{!730, !267}
!731 = distinct !{!731, !267}
!732 = !{!"branch_weights", i32 1, i32 257}
!733 = !{!"branch_weights", i32 155, i32 873}
!734 = distinct !{!734, !267}
!735 = !{!736, !249, i64 0}
!736 = !{!"splay_tree_node_s", !249, i64 0, !249, i64 8, !241, i64 16, !241, i64 24}
!737 = !{!"branch_weights", i32 1, i32 256}
!738 = !{!"branch_weights", i32 669, i32 37999}
!739 = !{!"branch_weights", i32 35, i32 635}
!740 = !{!"branch_weights", i32 176941, i32 2147306707}
!741 = !{!"branch_weights", i32 257, i32 38377}
!742 = !{!"branch_weights", i32 35359, i32 3019}
!743 = !{!"branch_weights", i32 23407659, i32 1226921941}
!744 = !{!"branch_weights", i32 3019, i32 1}
!745 = !{!"branch_weights", i32 661, i32 34699}
!746 = !{!"branch_weights", i32 7919, i32 26781}
!747 = !{!"branch_weights", i32 339, i32 7581}
!748 = !{!"branch_weights", i32 3899, i32 3683}
!749 = !{!"branch_weights", i32 1693, i32 2207}
!750 = !{!"branch_weights", i32 256, i32 38411}
!751 = distinct !{!751, !267}
!752 = !{!"branch_weights", i32 77, i32 1}
!753 = distinct !{!753, !267}
!754 = !{!"ira-color.c:pop_allocnos_from_stack"}
!755 = !{!"branch_weights", i32 26858, i32 -1409424349}
!756 = !{!"branch_weights", i32 26783, i32 -1425624157}
!757 = distinct !{!757, !267}
!758 = !{!"ira-color.c:setup_allocno_left_conflicts_size"}
!759 = !{!"branch_weights", i32 143129, i32 13608551}
!760 = !{!"branch_weights", i32 209, i32 1147}
!761 = !{!"branch_weights", i32 21, i32 1127}
!762 = !{!"branch_weights", i32 127, i32 173313}
!763 = distinct !{!763, !267}
!764 = distinct !{!764, !267}
!765 = distinct !{!765, !267}
!766 = !{!"ira-color.c:setup_allocno_available_regs_num"}
!767 = !{!"branch_weights", i32 643453, i32 1147}
!768 = !{!"branch_weights", i32 643453, i32 1}
!769 = !{!"branch_weights", i32 537166, i32 107433}
!770 = distinct !{!770, !267}
!771 = !{!"branch_weights", i32 29560, i32 -1116361368}
!772 = !{!"ira-color.c:add_allocno_to_bucket"}
!773 = !{!289, !241, i64 224}
!774 = !{!289, !241, i64 232}
!775 = !{!"branch_weights", i32 77, i32 107358}
!776 = !{!"function_entry_count", i64 108579}
!777 = !{!"ira-color.c:hard_reg_set_empty_p"}
!778 = !{!"ira-color.c:VEC_ira_allocno_t_base_truncate"}
!779 = !{!"function_entry_count", i64 1504}
!780 = !{!"ira-color.c:calculate_allocno_spill_cost"}
!781 = !{!"ira-color.c:allocno_spill_priority_compare"}
!782 = !{!"ira-color.c:splay_tree_allocate"}
!783 = !{!"ira-color.c:splay_tree_free"}
!784 = distinct !{!784, !267}
!785 = !{!"ira-color.c:push_only_colorable"}
!786 = !{!"branch_weights", i32 1, i32 294}
!787 = !{!"branch_weights", i32 294, i32 106884}
!788 = distinct !{!788, !267}
!789 = !{!"ira-color.c:push_allocno_to_spill"}
!790 = !{!"function_entry_count", i64 107471}
!791 = !{!"ira-color.c:VEC_ira_allocno_t_base_length"}
!792 = !{!"branch_weights", i32 1, i32 107472}
!793 = !{!"ira-color.c:VEC_ira_allocno_t_base_pop"}
!794 = !{!"function_entry_count", i64 38632}
!795 = !{!"ira-color.c:allocno_spill_priority"}
!796 = !{!"ira-color.c:remove_allocno_from_bucket_and_push"}
!797 = !{!"branch_weights", i32 257, i32 107178}
!798 = !{!"ira-color.c:sort_bucket"}
!799 = !{!"branch_weights", i32 294, i32 105958}
!800 = distinct !{!800, !267}
!801 = !{!"branch_weights", i32 1397675657, i32 749807991}
!802 = !{!"branch_weights", i32 205, i32 1}
!803 = !{!"branch_weights", i32 103, i32 106022}
!804 = !{!"branch_weights", i32 212043, i32 205}
!805 = distinct !{!805, !267}
!806 = !{!"function_entry_count", i64 6851659}
!807 = !{!"ira-color.c:bucket_allocno_compare_func"}
!808 = !{!"branch_weights", i32 6851660, i32 1}
!809 = !{!"branch_weights", i32 4184436, i32 2667225}
!810 = !{!"branch_weights", i32 1330846, i32 2853591}
!811 = !{!"function_entry_count", i64 13703318}
!812 = !{!"ira-color.c:get_coalesced_allocnos_attributes"}
!813 = !{!"branch_weights", i32 13703319, i32 1}
!814 = !{!"function_entry_count", i64 108681}
!815 = !{!"ira-color.c:delete_allocno_from_bucket"}
!816 = !{!"branch_weights", i32 1505, i32 107178}
!817 = !{!"branch_weights", i32 107420, i32 1263}
!818 = !{!"branch_weights", i32 299, i32 108384}
!819 = !{!"ira-color.c:push_allocno_to_stack"}
!820 = !{!"branch_weights", i32 -781861543, i32 -781819632}
!821 = !{!"branch_weights", i32 155807, i32 11839}
!822 = !{!"branch_weights", i32 155807, i32 1}
!823 = !{!"branch_weights", i32 154559, i32 1249}
!824 = distinct !{!824, !267}
!825 = !{!"function_entry_count", i64 1248}
!826 = !{!"ira-color.c:add_allocno_to_ordered_bucket"}
!827 = !{!"branch_weights", i32 1, i32 259}
!828 = !{!"branch_weights", i32 989, i32 1}
!829 = !{!"branch_weights", i32 5491461, i32 989}
!830 = distinct !{!830, !267}
!831 = !{!"branch_weights", i32 259, i32 5493180}
!832 = !{!"branch_weights", i32 687948488, i32 1459535160}
