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
define dso_local i32 @ira_loop_edge_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br i1 %7, label %10, label %64

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef %12) #23
  store i32 0, ptr %4, align 8, !tbaa.struct !16
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !19
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %5) #23, !range !20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %110, label %17

17:                                               ; preds = %10
  %18 = icmp slt i32 %1, 0
  br label %19

19:                                               ; preds = %17, %58
  %20 = phi i32 [ 0, %17 ], [ %59, %58 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !18
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = load ptr, ptr %8, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %58, label %27

27:                                               ; preds = %19
  br i1 %18, label %48, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !24
  %31 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %30) #23
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !26
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %1) #24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !24
  %41 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %40) #23
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = tail call i32 @bitmap_bit_p(ptr noundef %43, i32 noundef %1) #24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %21, align 8, !tbaa !21
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi ptr [ %47, %46 ], [ %22, %27 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 11
  %51 = load i32, ptr %50, align 8, !tbaa !30
  %52 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !31
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
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %5) #23, !range !20
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %110, label %19, !llvm.loop !32

64:                                               ; preds = %3
  %65 = tail call ptr @get_loop_exit_edges(ptr noundef %9) #24
  store ptr %65, ptr %6, align 8, !tbaa !18
  %66 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %65, i32 noundef 0, ptr noundef nonnull %5) #23, !range !34
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %64
  %69 = icmp slt i32 %1, 0
  br label %70

70:                                               ; preds = %68, %103
  %71 = phi i32 [ 0, %68 ], [ %104, %103 ]
  %72 = phi i32 [ 0, %68 ], [ %105, %103 ]
  %73 = load ptr, ptr %5, align 8, !tbaa !18
  br i1 %69, label %93, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %73, align 8, !tbaa !21
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !24
  %78 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %77) #23
  %79 = getelementptr inbounds %struct.df_lr_bb_info, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !26
  %81 = tail call i32 @bitmap_bit_p(ptr noundef %80, i32 noundef %1) #24
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !28
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !24
  %88 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %87) #23
  %89 = getelementptr inbounds %struct.df_lr_bb_info, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !29
  %91 = tail call i32 @bitmap_bit_p(ptr noundef %90, i32 noundef %1) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %83, %70
  %94 = load ptr, ptr %73, align 8, !tbaa !21
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 11
  %96 = load i32, ptr %95, align 8, !tbaa !30
  %97 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 8
  %98 = load i32, ptr %97, align 4, !tbaa !31
  %99 = mul nsw i32 %98, %96
  %100 = add nsw i32 %99, 5000
  %101 = sdiv i32 %100, 10000
  %102 = add nsw i32 %101, %71
  br label %103

103:                                              ; preds = %74, %83, %93
  %104 = phi i32 [ %102, %93 ], [ %71, %83 ], [ %71, %74 ]
  %105 = add nuw nsw i32 %72, 1
  %106 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %65, i32 noundef %105, ptr noundef nonnull %5) #23, !range !34
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %70, !llvm.loop !35

108:                                              ; preds = %103, %64
  %109 = phi i32 [ 0, %64 ], [ %104, %103 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %6) #23
  br label %110

110:                                              ; preds = %58, %10, %108
  %111 = phi i32 [ %109, %108 ], [ 0, %10 ], [ %59, %58 ]
  %112 = load i32, ptr @optimize_size, align 4, !tbaa !17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !17
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @cfun, align 8, !tbaa !18
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !36
  %121 = load ptr, ptr %120, align 8, !tbaa !38
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 8
  %123 = load i64, ptr %122, align 8, !tbaa !40
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #2 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !18
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @df, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
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
  %16 = load i32, ptr %0, align 8, !tbaa !44
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !46
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !18
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_reassign_conflict_allocnos(i32 noundef %0) local_unnamed_addr #0 {
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
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @ira_free_bitmap(ptr noundef %6) #24
  br label %114

10:                                               ; preds = %1, %47
  %11 = phi i32 [ %48, %47 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 31
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load i32, ptr %12, align 8, !tbaa !48
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %18) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %27 = add nsw i32 %11, 1
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %12, ptr %29, align 8, !tbaa !18
  br label %34

30:                                               ; preds = %21
  %31 = load i16, ptr %13, align 4
  %32 = or i16 %31, 256
  store i16 %32, ptr %13, align 4
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 3
  store i32 -1, ptr %33, align 4, !tbaa !51
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %27, %25 ], [ %11, %30 ]
  %36 = load i32, ptr %12, align 8, !tbaa !48
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %36) #24
  br label %38

38:                                               ; preds = %34, %17, %10
  %39 = phi i32 [ %11, %10 ], [ %11, %17 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !52
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %67, %38, %43, %51
  %48 = phi i32 [ %39, %51 ], [ %39, %43 ], [ %39, %38 ], [ %68, %67 ]
  %49 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %2) #23, !range !20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %71, label %10, !llvm.loop !53

51:                                               ; preds = %43
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %4, ptr noundef nonnull %12) #23
  %52 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %47, label %54, !llvm.loop !53

54:                                               ; preds = %51, %67
  %55 = phi i32 [ %68, %67 ], [ %39, %51 ]
  %56 = load ptr, ptr %3, align 8, !tbaa !18
  %57 = load i32, ptr %56, align 8, !tbaa !48
  %58 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %57) #24
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, ptr %56, align 8, !tbaa !48
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %61) #24
  %63 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %64 = add nsw i32 %55, 1
  %65 = sext i32 %55 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  store ptr %56, ptr %66, align 8, !tbaa !18
  br label %67

67:                                               ; preds = %54, %60
  %68 = phi i32 [ %55, %54 ], [ %64, %60 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %4) #23
  %69 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %47, label %54, !llvm.loop !54

71:                                               ; preds = %47
  tail call void @ira_free_bitmap(ptr noundef %6) #24
  %72 = icmp sgt i32 %48, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  tail call fastcc void @setup_allocno_priorities(ptr noundef %74, i32 noundef %48) #23
  %75 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
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
  %84 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %85 = getelementptr inbounds ptr, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !18
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 31
  %88 = load i16, ptr %87, align 4
  %89 = and i16 %88, -257
  store i16 %89, ptr %87, align 4
  tail call fastcc void @update_curr_costs(ptr noundef %86) #23
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %81
  br i1 %91, label %92, label %82, !llvm.loop !55

92:                                               ; preds = %82, %111
  %93 = phi i64 [ %112, %111 ], [ 0, %82 ]
  %94 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %95 = getelementptr inbounds ptr, ptr %94, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !18
  %97 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %96, i8 noundef zeroext 1) #23, !range !20
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %101 = icmp sgt i32 %100, 3
  %102 = load ptr, ptr @ira_dump_file, align 8
  %103 = icmp ne ptr %102, null
  %104 = select i1 %101, i1 %103, i1 false
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ira_allocno, ptr %96, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !51
  %108 = getelementptr inbounds %struct.ira_allocno, ptr %96, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !52
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str, i32 noundef %107, i32 noundef %109) #23
  br label %111

111:                                              ; preds = %92, %105, %99
  %112 = add nuw nsw i64 %93, 1
  %113 = icmp eq i64 %112, %81
  br i1 %113, label %114, label %92, !llvm.loop !56

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
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  store i32 0, ptr %0, align 4, !tbaa !57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 4, !tbaa !57
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !18
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !57
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !59

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  store i8 %7, ptr %0, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !64
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 22
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %24, align 4, !tbaa !68
  br label %36

25:                                               ; preds = %15
  %26 = sub i32 %19, %17
  %27 = add i32 %26, 64
  %28 = sdiv i32 %27, 64
  %29 = shl nsw i32 %28, 3
  %30 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %32, align 4, !tbaa !68
  %33 = icmp ugt i32 %26, -128
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load i64, ptr %9, align 8, !tbaa !69
  br label %36

36:                                               ; preds = %21, %25, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %25 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  store i64 %37, ptr %38, align 8, !tbaa !70
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_conflict_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 {
  %3 = load i8, ptr %0, align 8, !tbaa !60
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !71
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %10, align 8, !tbaa !64
  br label %34

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !64
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %17
  store ptr %24, ptr %1, align 8, !tbaa !18
  br label %64

27:                                               ; preds = %40
  store i32 %36, ptr %10, align 8, !tbaa !64
  br label %28

28:                                               ; preds = %27, %5
  %29 = phi i64 [ %44, %27 ], [ %7, %5 ]
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !67
  br i1 %31, label %46, label %54

34:                                               ; preds = %9, %40
  %35 = phi i32 [ %16, %9 ], [ %36, %40 ]
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = icmp ult i64 %38, %13
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = shl i32 %36, 6
  store i32 %41, ptr %14, align 8, !tbaa !67
  %42 = load ptr, ptr %15, align 8, !tbaa !63
  %43 = getelementptr inbounds i64, ptr %42, i64 %37
  %44 = load i64, ptr %43, align 8, !tbaa !69
  store i64 %44, ptr %6, align 8, !tbaa !70
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %34, label %27, !llvm.loop !72

46:                                               ; preds = %28, %46
  %47 = phi i32 [ %49, %46 ], [ %33, %28 ]
  %48 = phi i64 [ %50, %46 ], [ %29, %28 ]
  %49 = add i32 %47, 1
  %50 = lshr exact i64 %48, 1
  %51 = and i64 %48, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %46, label %53, !llvm.loop !73

53:                                               ; preds = %46
  store i32 %49, ptr %32, align 8, !tbaa !67
  store i64 %50, ptr %6, align 8, !tbaa !70
  br label %54

54:                                               ; preds = %28, %53
  %55 = phi i32 [ %49, %53 ], [ %33, %28 ]
  %56 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !18
  %57 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !68
  %59 = add i32 %58, %55
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %56, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !18
  store ptr %62, ptr %1, align 8, !tbaa !18
  br label %64

63:                                               ; preds = %34
  store i32 %36, ptr %10, align 8, !tbaa !64
  br label %64

64:                                               ; preds = %63, %17, %54, %26
  %65 = phi i8 [ 1, %26 ], [ 1, %54 ], [ 0, %17 ], [ 0, %63 ]
  ret i8 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_next(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load i8, ptr %0, align 8, !tbaa !60
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !70
  %9 = lshr i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %10, %6 ], [ %5, %4 ]
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_priorities(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %63

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %37, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %36, %6 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = sext i32 %12 to i64
  %14 = tail call i32 @floor_log2(i64 noundef %13) #24
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !75
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = sub nsw i32 %17, %19
  %21 = mul nsw i32 %20, %15
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !50
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !17
  %30 = mul nsw i32 %21, %29
  %31 = load ptr, ptr @allocno_priorities, align 8, !tbaa !18
  %32 = load i32, ptr %10, align 8, !tbaa !48
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 %30, ptr %34, align 4, !tbaa !17
  %35 = tail call i32 @llvm.abs.i32(i32 %30, i1 true)
  %36 = tail call i32 @llvm.smax.i32(i32 %8, i32 %35)
  %37 = add nuw nsw i64 %7, 1
  %38 = icmp eq i64 %37, %5
  br i1 %38, label %39, label %6, !llvm.loop !78

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
  %46 = load ptr, ptr @allocno_priorities, align 8, !tbaa !18
  %47 = zext nneg i32 %1 to i64
  br label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ 0, %45 ], [ %61, %48 ]
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 14
  %53 = load i32, ptr %52, align 4, !tbaa !79
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 1)
  %55 = load i32, ptr %51, align 8, !tbaa !48
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %46, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !17
  %59 = mul nsw i32 %58, %44
  %60 = sdiv i32 %59, %54
  store i32 %60, ptr %57, align 4, !tbaa !17
  %61 = add nuw nsw i64 %49, 1
  %62 = icmp eq i64 %61, %47
  br i1 %62, label %63, label %48, !llvm.loop !80

63:                                               ; preds = %48, %2, %43
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_priority_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = load ptr, ptr @allocno_priorities, align 8, !tbaa !18
  %6 = load i32, ptr %3, align 8, !tbaa !48
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = load i32, ptr %4, align 8, !tbaa !48
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = sub nsw i32 %13, %9
  %15 = icmp eq i32 %13, %9
  %16 = sub nsw i32 %6, %10
  %17 = select i1 %15, i32 %16, i32 %14
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_curr_costs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !81
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
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  br label %38

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  br label %38

37:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2265, ptr noundef nonnull @.str.5) #24
  br label %38

38:                                               ; preds = %34, %37, %25
  %39 = phi ptr [ %29, %25 ], [ %23, %34 ], [ %21, %37 ]
  %40 = phi ptr [ %27, %25 ], [ %36, %34 ], [ %19, %37 ]
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !50
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %12, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !87
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
  %54 = load i32, ptr %53, align 4, !tbaa !51
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %52
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !17
  %60 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %12, i64 %57
  %61 = load i16, ptr %60, align 2, !tbaa !88
  %62 = sext i16 %61 to i64
  %63 = icmp slt i16 %61, 0
  br i1 %63, label %89, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %22, align 8, !tbaa !82
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %7, i32 noundef %59, i32 noundef %3) #23, !range !90
  br label %71

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %7, i32 noundef %3, i32 noundef %59) #23, !range !90
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load i32, ptr %14, align 4, !tbaa !76
  %74 = load ptr, ptr %15, align 8, !tbaa !91
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %13, i32 noundef %3, i32 noundef %73, ptr noundef %74) #23
  %75 = load ptr, ptr %17, align 8, !tbaa !92
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %16, i32 noundef %3, i32 noundef 0, ptr noundef %75) #23
  %76 = getelementptr inbounds %struct.ira_allocno_copy, ptr %20, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !93
  %78 = mul nsw i32 %77, %72
  %79 = load ptr, ptr %13, align 8, !tbaa !94
  %80 = getelementptr inbounds i32, ptr %79, i64 %62
  %81 = load i32, ptr %80, align 4, !tbaa !17
  %82 = sub nsw i32 %81, %78
  store i32 %82, ptr %80, align 4, !tbaa !17
  %83 = load i32, ptr %76, align 8, !tbaa !93
  %84 = mul nsw i32 %83, %72
  %85 = load ptr, ptr %16, align 8, !tbaa !95
  %86 = getelementptr inbounds i32, ptr %85, i64 %62
  %87 = load i32, ptr %86, align 4, !tbaa !17
  %88 = sub nsw i32 %87, %84
  store i32 %88, ptr %86, align 4, !tbaa !17
  br label %89

89:                                               ; preds = %56, %38, %47, %52, %71
  %90 = icmp eq ptr %40, null
  br i1 %90, label %91, label %18, !llvm.loop !96

91:                                               ; preds = %89, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @assign_hard_reg(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = sext i32 %9 to i64
  %13 = shl nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.full_costs, i8 0, i64 %13, i1 false)
  %14 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  tail call void @bitmap_clear(ptr noundef %16) #24
  br label %17

17:                                               ; preds = %15, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.costs, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.full_costs, i8 0, i64 %13, i1 false)
  tail call fastcc void @start_update_cost() #23
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  %19 = icmp sgt i32 %9, 0
  %20 = icmp eq i8 %1, 0
  %21 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %7
  %22 = icmp slt i32 %9, 1
  %23 = zext i32 %9 to i64
  br label %24

24:                                               ; preds = %155, %17
  %25 = phi i32 [ 0, %17 ], [ %32, %155 ]
  %26 = phi i64 [ 0, %17 ], [ %156, %155 ]
  %27 = phi ptr [ %18, %17 ], [ %158, %155 ]
  %28 = phi i32 [ 0, %17 ], [ %48, %155 ]
  %29 = load ptr, ptr %27, align 8, !tbaa !97
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !98
  %32 = add nsw i32 %31, %25
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 27
  %34 = load i64, ptr %33, align 8, !tbaa !99
  %35 = or i64 %34, %26
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 34
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 33
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %36, i32 noundef %6, ptr noundef %38) #23
  %39 = load ptr, ptr %36, align 8, !tbaa !94
  %40 = icmp eq i32 %28, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 31
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 32
  %45 = icmp ne i16 %44, 0
  br label %46

46:                                               ; preds = %41, %24
  %47 = phi i1 [ true, %24 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !100
  br i1 %19, label %51, label %68

51:                                               ; preds = %46
  %52 = icmp eq ptr %39, null
  br label %53

53:                                               ; preds = %51, %58
  %54 = phi i64 [ 0, %51 ], [ %66, %58 ]
  br i1 %52, label %58, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds i32, ptr %39, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !17
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi i32 [ %57, %55 ], [ %50, %53 ]
  %60 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.costs, i64 0, i64 %54
  %61 = load i32, ptr %60, align 4, !tbaa !17
  %62 = add nsw i32 %61, %59
  store i32 %62, ptr %60, align 4, !tbaa !17
  %63 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %54
  %64 = load i32, ptr %63, align 4, !tbaa !17
  %65 = add nsw i32 %64, %59
  store i32 %65, ptr %63, align 4, !tbaa !17
  %66 = add nuw nsw i64 %54, 1
  %67 = icmp eq i64 %66, %23
  br i1 %67, label %68, label %53, !llvm.loop !101

68:                                               ; preds = %58, %46
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %4, ptr noundef %29) #23
  %69 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %155, label %71

71:                                               ; preds = %68, %151
  %72 = phi i64 [ %152, %151 ], [ %35, %68 ]
  %73 = load ptr, ptr %3, align 8, !tbaa !18
  br i1 %20, label %74, label %79

74:                                               ; preds = %71
  %75 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  %76 = load i32, ptr %73, align 8, !tbaa !48
  %77 = tail call i32 @bitmap_bit_p(ptr noundef %75, i32 noundef %76) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %151, label %79

79:                                               ; preds = %74, %71
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !50
  %82 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %85 = load i32, ptr %73, align 8, !tbaa !48
  %86 = tail call i32 @bitmap_bit_p(ptr noundef %84, i32 noundef %85) #24
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %151

88:                                               ; preds = %83
  %89 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %90 = load i32, ptr %73, align 8, !tbaa !48
  %91 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %89, i32 noundef %90) #24
  br label %92

92:                                               ; preds = %88, %79
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 31
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 256
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !51
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %151

101:                                              ; preds = %97
  %102 = zext nneg i32 %99 to i64
  %103 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %7, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !88
  %105 = icmp sgt i16 %104, -1
  br i1 %105, label %106, label %151

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !77
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %102, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !69
  %112 = or i64 %111, %72
  %113 = load i64, ptr %21, align 8, !tbaa !69
  %114 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %113, i64 noundef %112) #23, !range !20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %151, label %236

116:                                              ; preds = %92
  %117 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 18
  %118 = load ptr, ptr %117, align 8, !tbaa !102
  %119 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 31
  %120 = load i16, ptr %119, align 4
  %121 = and i16 %120, 512
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 36
  %125 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 35
  %126 = load ptr, ptr %125, align 8, !tbaa !92
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %124, i32 noundef %81, ptr noundef %126) #23
  %127 = load ptr, ptr %124, align 8, !tbaa !95
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, i1 true, i1 %22
  br i1 %129, label %150, label %130

130:                                              ; preds = %123
  %131 = zext i32 %81 to i64
  br label %132

132:                                              ; preds = %130, %148
  %133 = phi i64 [ %23, %130 ], [ %134, %148 ]
  %134 = add nsw i64 %133, -1
  %135 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !88
  %137 = sext i16 %136 to i64
  %138 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %131, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !88
  %140 = icmp slt i16 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %132
  %142 = zext nneg i16 %139 to i64
  %143 = getelementptr inbounds i32, ptr %127, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !17
  %145 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %134
  %146 = load i32, ptr %145, align 4, !tbaa !17
  %147 = sub nsw i32 %146, %144
  store i32 %147, ptr %145, align 4, !tbaa !17
  br label %148

148:                                              ; preds = %132, %141
  %149 = icmp sgt i64 %133, 1
  br i1 %149, label %132, label %150, !llvm.loop !103

150:                                              ; preds = %148, %123
  tail call fastcc void @queue_update_cost(ptr noundef %73, i32 noundef 4) #23
  br label %151

151:                                              ; preds = %74, %116, %150, %97, %101, %106, %83
  %152 = phi i64 [ %72, %83 ], [ %112, %106 ], [ %72, %101 ], [ %72, %97 ], [ %72, %116 ], [ %72, %150 ], [ %72, %74 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %4) #23
  %153 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !20
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %71, !llvm.loop !104

155:                                              ; preds = %151, %68
  %156 = phi i64 [ %35, %68 ], [ %152, %151 ]
  %157 = icmp eq ptr %29, %0
  %158 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 19
  br i1 %157, label %159, label %24

159:                                              ; preds = %155
  tail call fastcc void @update_conflict_hard_regno_costs(i32 noundef %6, i8 noundef zeroext 1) #23
  tail call fastcc void @start_update_cost() #23
  br label %160

160:                                              ; preds = %160, %159
  %161 = phi ptr [ %18, %159 ], [ %164, %160 ]
  %162 = load ptr, ptr %161, align 8, !tbaa !97
  tail call fastcc void @queue_update_cost(ptr noundef %162, i32 noundef 4) #23
  %163 = icmp eq ptr %162, %0
  %164 = getelementptr inbounds %struct.ira_allocno, ptr %162, i64 0, i32 19
  br i1 %163, label %165, label %160

165:                                              ; preds = %160
  tail call fastcc void @update_conflict_hard_regno_costs(i32 noundef %6, i8 noundef zeroext 0) #23
  br i1 %19, label %166, label %223

166:                                              ; preds = %165
  %167 = zext i32 %11 to i64
  %168 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %7, i64 %167
  %169 = load i64, ptr @call_used_reg_set, align 8
  br label %170

170:                                              ; preds = %166, %218
  %171 = phi i64 [ 0, %166 ], [ %221, %218 ]
  %172 = phi i32 [ -1, %166 ], [ %220, %218 ]
  %173 = phi i32 [ 2147483647, %166 ], [ %219, %218 ]
  %174 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %7, i64 %171
  %175 = load i16, ptr %174, align 2, !tbaa !88
  %176 = sext i16 %175 to i32
  %177 = icmp sgt i16 %175, 7
  %178 = select i1 %47, i1 %177, i1 false
  %179 = icmp slt i16 %175, 16
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %218, label %181

181:                                              ; preds = %170
  %182 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %176, i32 noundef %11, i64 noundef %156) #23, !range !20
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %218, label %184

184:                                              ; preds = %181
  %185 = load i64, ptr %168, align 8, !tbaa !69
  %186 = zext nneg i32 %176 to i64
  %187 = shl nuw i64 1, %186
  %188 = and i64 %185, %187
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %184
  %191 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %171
  %192 = load i32, ptr %191, align 4, !tbaa !17
  %193 = sext i16 %175 to i64
  %194 = getelementptr inbounds [53 x i8], ptr @allocated_hardreg_p, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !87
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %190
  %198 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %176, i32 noundef %11, i64 noundef %169) #23, !range !20
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %193
  %202 = load i32, ptr %201, align 4, !tbaa !17
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %167, i64 %203
  %205 = load i16, ptr %204, align 4, !tbaa !88
  %206 = sext i16 %205 to i32
  %207 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %167, i64 %203, i64 1
  %208 = load i16, ptr %207, align 2, !tbaa !88
  %209 = sext i16 %208 to i32
  %210 = add nsw i32 %206, -1
  %211 = add nsw i32 %210, %209
  %212 = add nsw i32 %211, %192
  br label %213

213:                                              ; preds = %200, %197, %190
  %214 = phi i32 [ %192, %190 ], [ %212, %200 ], [ %192, %197 ]
  %215 = icmp sgt i32 %173, %214
  %216 = tail call i32 @llvm.smin.i32(i32 %173, i32 %214)
  %217 = select i1 %215, i32 %176, i32 %172
  br label %218

218:                                              ; preds = %213, %181, %184, %170
  %219 = phi i32 [ %173, %170 ], [ %173, %184 ], [ %173, %181 ], [ %216, %213 ]
  %220 = phi i32 [ %172, %170 ], [ %172, %184 ], [ %172, %181 ], [ %217, %213 ]
  %221 = add nuw nsw i64 %171, 1
  %222 = icmp eq i64 %221, %23
  br i1 %222, label %223, label %170, !llvm.loop !105

223:                                              ; preds = %218, %165
  %224 = phi i32 [ 2147483647, %165 ], [ %219, %218 ]
  %225 = phi i32 [ -1, %165 ], [ %220, %218 ]
  %226 = icmp sgt i32 %224, %32
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = load i32, ptr @internal_flag_ira_verbose, align 4
  %229 = icmp sgt i32 %228, 3
  %230 = select i1 %20, i1 %229, i1 false
  %231 = load ptr, ptr @ira_dump_file, align 8
  %232 = icmp ne ptr %231, null
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %231, ptr noundef nonnull @.str.13, i32 noundef %32, i32 noundef %224) #23
  br label %236

236:                                              ; preds = %106, %227, %234, %223
  %237 = phi i32 [ %225, %223 ], [ -1, %234 ], [ -1, %227 ], [ -1, %106 ]
  %238 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !17
  %239 = icmp ne i32 %238, 1
  %240 = icmp slt i32 %237, 0
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %242, label %279

242:                                              ; preds = %236
  %243 = load ptr, ptr %18, align 8, !tbaa !97
  %244 = icmp eq ptr %243, %0
  br i1 %244, label %284, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  store ptr %243, ptr %246, align 8, !tbaa !18
  br label %247

247:                                              ; preds = %245, %247
  %248 = phi i32 [ 2, %245 ], [ %256, %247 ]
  %249 = phi i64 [ 1, %245 ], [ %253, %247 ]
  %250 = phi ptr [ %243, %245 ], [ %252, %247 ]
  %251 = getelementptr inbounds %struct.ira_allocno, ptr %250, i64 0, i32 19
  %252 = load ptr, ptr %251, align 8, !tbaa !97
  %253 = add nuw i64 %249, 1
  %254 = getelementptr inbounds ptr, ptr %246, i64 %249
  store ptr %252, ptr %254, align 8, !tbaa !18
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
  %262 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %263 = getelementptr inbounds ptr, ptr %262, i64 %261
  %264 = load ptr, ptr %263, align 8, !tbaa !18
  %265 = getelementptr inbounds %struct.ira_allocno, ptr %264, i64 0, i32 18
  store ptr %264, ptr %265, align 8, !tbaa !102
  %266 = getelementptr inbounds %struct.ira_allocno, ptr %264, i64 0, i32 19
  store ptr %264, ptr %266, align 8, !tbaa !97
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @allocno_stack_vec, ptr noundef %264) #23
  %267 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %268 = icmp sgt i32 %267, 3
  %269 = load ptr, ptr @ira_dump_file, align 8
  %270 = icmp ne ptr %269, null
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %276

272:                                              ; preds = %260
  %273 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 15, i64 1, ptr nonnull %269)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %264) #23
  %274 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %275 = tail call i32 @fputc(i32 10, ptr %274)
  br label %276

276:                                              ; preds = %260, %272
  %277 = add nuw nsw i64 %261, 1
  %278 = icmp eq i64 %277, %259
  br i1 %278, label %299, label %260, !llvm.loop !106

279:                                              ; preds = %236
  %280 = icmp sgt i32 %237, -1
  br i1 %280, label %281, label %284

281:                                              ; preds = %279
  %282 = zext nneg i32 %237 to i64
  %283 = getelementptr inbounds [53 x i8], ptr @allocated_hardreg_p, i64 0, i64 %282
  store i8 1, ptr %283, align 1, !tbaa !87
  br label %284

284:                                              ; preds = %242, %281, %279
  %285 = phi i1 [ true, %281 ], [ false, %279 ], [ false, %242 ]
  br label %286

286:                                              ; preds = %294, %284
  %287 = phi ptr [ %18, %284 ], [ %296, %294 ]
  %288 = load ptr, ptr %287, align 8, !tbaa !97
  %289 = getelementptr inbounds %struct.ira_allocno, ptr %288, i64 0, i32 3
  store i32 %237, ptr %289, align 4, !tbaa !51
  %290 = getelementptr inbounds %struct.ira_allocno, ptr %288, i64 0, i32 31
  %291 = load i16, ptr %290, align 4
  %292 = or i16 %291, 256
  store i16 %292, ptr %290, align 4
  br i1 %285, label %293, label %294

293:                                              ; preds = %286
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %288, i8 noundef zeroext 1) #23
  br label %294

294:                                              ; preds = %293, %286
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %288) #24
  %295 = icmp eq ptr %288, %0
  %296 = getelementptr inbounds %struct.ira_allocno, ptr %288, i64 0, i32 19
  br i1 %295, label %297, label %286

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
define dso_local void @ira_sort_regnos_for_alter_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  %6 = tail call i32 @max_reg_num() #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %7 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %7, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %8 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %8, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = zext nneg i32 %1 to i64
  %12 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %10, %27
  %14 = phi ptr [ %12, %10 ], [ %28, %27 ]
  %15 = phi i64 [ 0, %10 ], [ %29, %27 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %14, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  %24 = load i32, ptr %20, align 8, !tbaa !48
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %24) #24
  %26 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %13, %22
  %28 = phi ptr [ %14, %13 ], [ %26, %22 ]
  %29 = add nuw nsw i64 %15, 1
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %31, label %13, !llvm.loop !107

31:                                               ; preds = %27, %3
  store i1 false, ptr @allocno_coalesced_p, align 1
  tail call fastcc void @coalesce_allocnos(i8 noundef zeroext 1) #23
  %32 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  tail call void @ira_free_bitmap(ptr noundef %32) #24
  %33 = sext i32 %6 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @ira_allocate(i64 noundef %34) #24
  store ptr %35, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !18
  %36 = tail call ptr @ira_allocate(i64 noundef %34) #24
  store ptr %36, ptr @regno_coalesced_allocno_num, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 4 %36, i8 0, i64 %34, i1 false)
  tail call fastcc void @setup_coalesced_allocno_costs_and_nums(ptr noundef %0, i32 noundef %1) #23
  %37 = sext i32 %1 to i64
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %37, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_freq_compare) #24
  %38 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr @ira_allocate(i64 noundef %40) #24
  %42 = tail call fastcc i32 @collect_spilled_coalesced_allocnos(ptr noundef %0, i32 noundef %1, ptr noundef %41) #23
  %43 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = tail call fastcc zeroext i8 @coalesce_spill_slots(ptr noundef %41, i32 noundef %42) #23, !range !20
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  tail call fastcc void @setup_coalesced_allocno_costs_and_nums(ptr noundef %0, i32 noundef %1) #23
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %37, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_freq_compare) #24
  %49 = tail call fastcc i32 @collect_spilled_coalesced_allocnos(ptr noundef %0, i32 noundef %1, ptr noundef %41) #23
  br label %50

50:                                               ; preds = %48, %45, %31
  %51 = phi i32 [ %49, %48 ], [ %42, %45 ], [ %42, %31 ]
  %52 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  tail call void @ira_free_bitmap(ptr noundef %52) #24
  store i1 false, ptr @allocno_coalesced_p, align 1
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %150

54:                                               ; preds = %50
  %55 = zext nneg i32 %51 to i64
  br label %56

56:                                               ; preds = %54, %143
  %57 = phi i64 [ 0, %54 ], [ %146, %143 ]
  %58 = phi i32 [ 1, %54 ], [ %145, %143 ]
  %59 = phi ptr [ undef, %54 ], [ %144, %143 ]
  %60 = getelementptr inbounds ptr, ptr %41, i64 %57
  %61 = load ptr, ptr %60, align 8, !tbaa !18
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !102
  %64 = icmp eq ptr %63, %61
  br i1 %64, label %65, label %143

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !51
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %143, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !52
  %72 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !17
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %76 = sext i32 %71 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !18
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %143

80:                                               ; preds = %74
  %81 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %82 = getelementptr inbounds i8, ptr %81, i64 %76
  %83 = load i8, ptr %82, align 1, !tbaa !87
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %143

85:                                               ; preds = %80, %69
  %86 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %87 = icmp sgt i32 %86, 3
  %88 = load ptr, ptr @ira_dump_file, align 8
  %89 = icmp ne ptr %88, null
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.1, i32 noundef %58) #23
  %93 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
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
  %104 = load ptr, ptr %103, align 8, !tbaa !97
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 3
  store i32 %98, ptr %105, align 4, !tbaa !51
  %106 = icmp sgt i32 %101, 3
  %107 = icmp ne ptr %100, null
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %132

109:                                              ; preds = %99
  %110 = load i32, ptr %104, align 8, !tbaa !48
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !52
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 8
  %114 = load i32, ptr %113, align 4, !tbaa !108
  %115 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !18
  %116 = sext i32 %112 to i64
  %117 = getelementptr inbounds ptr, ptr %115, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !18
  %119 = load i32, ptr %118, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !87
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds i32, ptr %2, i64 %116
  %127 = load i32, ptr %126, align 4, !tbaa !17
  %128 = tail call i32 @llvm.umax.i32(i32 %127, i32 %125)
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.2, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %128) #23
  %130 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %131 = load ptr, ptr @ira_dump_file, align 8
  br label %132

132:                                              ; preds = %109, %99
  %133 = phi ptr [ %131, %109 ], [ %100, %99 ]
  %134 = phi i32 [ %130, %109 ], [ %101, %99 ]
  %135 = icmp eq ptr %104, %61
  br i1 %135, label %136, label %99

136:                                              ; preds = %132
  %137 = add nsw i32 %58, 1
  %138 = icmp sgt i32 %134, 3
  %139 = icmp ne ptr %133, null
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = tail call i32 @fputc(i32 10, ptr nonnull %133)
  br label %143

143:                                              ; preds = %136, %141, %56, %65, %74, %80
  %144 = phi ptr [ %59, %56 ], [ %59, %65 ], [ %59, %74 ], [ %59, %80 ], [ %61, %141 ], [ %61, %136 ]
  %145 = phi i32 [ %58, %56 ], [ %58, %65 ], [ %58, %74 ], [ %58, %80 ], [ %137, %141 ], [ %137, %136 ]
  %146 = add nuw nsw i64 %57, 1
  %147 = icmp eq i64 %146, %55
  br i1 %147, label %148, label %56, !llvm.loop !109

148:                                              ; preds = %143
  %149 = add nsw i32 %145, -1
  br label %150

150:                                              ; preds = %148, %50
  %151 = phi ptr [ undef, %50 ], [ %144, %148 ]
  %152 = phi i32 [ 0, %50 ], [ %149, %148 ]
  store ptr %151, ptr %4, align 8, !tbaa !18
  store i32 %152, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !17
  tail call void @ira_free(ptr noundef %41) #24
  store ptr %2, ptr @regno_max_ref_width, align 8, !tbaa !18
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %37, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_slot_compare) #24
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #23
  %153 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150, %155
  %156 = load ptr, ptr %4, align 8, !tbaa !18
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 18
  store ptr %156, ptr %157, align 8, !tbaa !102
  %158 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 19
  store ptr %156, ptr %158, align 8, !tbaa !97
  %159 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %155, !llvm.loop !110

161:                                              ; preds = %155, %150
  %162 = load ptr, ptr @regno_coalesced_allocno_num, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %162) #24
  %163 = load ptr, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %163) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @coalesce_allocnos(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ira_allocate(i64 noundef %6) #24
  %8 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #23
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @spec_qsort(ptr noundef %7, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @copy_freq_compare_func) #24
  br label %207

12:                                               ; preds = %1
  %13 = icmp eq i8 %0, 0
  br label %14

14:                                               ; preds = %12, %126
  %15 = phi i32 [ 0, %12 ], [ %127, %126 ]
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %17 = load i32, ptr %2, align 4, !tbaa !17
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 31
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  br i1 %13, label %27, label %28

27:                                               ; preds = %14
  br i1 %26, label %47, label %126

28:                                               ; preds = %14
  br i1 %26, label %126, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !51
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %126, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !17
  %35 = icmp slt i32 %22, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %38 = sext i32 %22 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %126

42:                                               ; preds = %36
  %43 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %44 = getelementptr inbounds i8, ptr %43, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !87
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %126

47:                                               ; preds = %27, %42, %33
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !50
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 15
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  %54 = icmp eq ptr %53, null
  br i1 %54, label %126, label %55

55:                                               ; preds = %47, %122
  %56 = phi i32 [ %124, %122 ], [ %15, %47 ]
  %57 = phi ptr [ %123, %122 ], [ %53, %47 ]
  %58 = phi ptr [ %123, %122 ], [ null, %47 ]
  %59 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !82
  %61 = icmp eq ptr %60, %20
  br i1 %61, label %62, label %114

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !84
  %65 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !85
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !52
  br i1 %13, label %69, label %77

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !50
  %72 = icmp eq i32 %71, %49
  br i1 %72, label %73, label %122

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %66, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !77
  %76 = icmp eq i32 %75, %51
  br i1 %76, label %77, label %122

77:                                               ; preds = %73, %62
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !111
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 4
  %83 = load i8, ptr %82, align 4, !tbaa !112
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
  %94 = load i32, ptr %93, align 4, !tbaa !51
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !17
  %98 = icmp slt i32 %68, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %101 = sext i32 %68 to i64
  %102 = getelementptr inbounds i8, ptr %100, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !87
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %107 = getelementptr inbounds ptr, ptr %106, i64 %101
  %108 = load ptr, ptr %107, align 8, !tbaa !18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105, %96, %90
  %111 = add nsw i32 %56, 1
  %112 = sext i32 %56 to i64
  %113 = getelementptr inbounds ptr, ptr %7, i64 %112
  store ptr %57, ptr %113, align 8, !tbaa !18
  br label %122

114:                                              ; preds = %55
  %115 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !85
  %117 = icmp eq ptr %116, %20
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ira_allocno_copy, ptr %57, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !86
  br label %122

121:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1667, ptr noundef nonnull @.str.5) #24
  br label %122

122:                                              ; preds = %90, %110, %105, %99, %92, %91, %81, %73, %69, %121, %118
  %123 = phi ptr [ %64, %110 ], [ %64, %99 ], [ %64, %105 ], [ %64, %92 ], [ %64, %91 ], [ %64, %81 ], [ %64, %73 ], [ %64, %69 ], [ %120, %118 ], [ %58, %121 ], [ %64, %90 ]
  %124 = phi i32 [ %111, %110 ], [ %56, %99 ], [ %56, %105 ], [ %56, %92 ], [ %56, %91 ], [ %56, %81 ], [ %56, %73 ], [ %56, %69 ], [ %56, %118 ], [ %56, %121 ], [ %56, %90 ]
  %125 = icmp eq ptr %123, null
  br i1 %125, label %126, label %55, !llvm.loop !113

126:                                              ; preds = %122, %47, %27, %28, %29, %36, %42
  %127 = phi i32 [ %15, %29 ], [ %15, %36 ], [ %15, %42 ], [ %15, %28 ], [ %15, %27 ], [ %15, %47 ], [ %124, %122 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %128 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %14, !llvm.loop !114

130:                                              ; preds = %126
  %131 = sext i32 %127 to i64
  tail call void @spec_qsort(ptr noundef %7, i64 noundef %131, i64 noundef 8, ptr noundef nonnull @copy_freq_compare_func) #24
  %132 = icmp eq i32 %127, 0
  br i1 %132, label %207, label %135

133:                                              ; preds = %203
  %134 = icmp eq i32 %204, 0
  br i1 %134, label %207, label %135, !llvm.loop !115

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
  %143 = load ptr, ptr %142, align 8, !tbaa !18
  %144 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !82
  %146 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !85
  %148 = tail call fastcc zeroext i8 @coalesced_allocno_conflict_p(ptr noundef %145, ptr noundef %147, i8 noundef zeroext %0) #23, !range !20
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 1
  %152 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 2
  %153 = trunc i64 %141 to i32
  store i1 true, ptr @allocno_coalesced_p, align 1
  %154 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %155 = icmp sgt i32 %154, 3
  %156 = load ptr, ptr @ira_dump_file, align 8
  %157 = icmp ne ptr %156, null
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %172

159:                                              ; preds = %150
  %160 = load i32, ptr %143, align 8, !tbaa !116
  %161 = load ptr, ptr %151, align 8, !tbaa !82
  %162 = load i32, ptr %161, align 8, !tbaa !48
  %163 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !52
  %165 = load ptr, ptr %152, align 8, !tbaa !85
  %166 = load i32, ptr %165, align 8, !tbaa !48
  %167 = getelementptr inbounds %struct.ira_allocno, ptr %165, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !52
  %169 = getelementptr inbounds %struct.ira_allocno_copy, ptr %143, i64 0, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !93
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %156, ptr noundef nonnull @.str.16, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %170) #23
  br label %172

172:                                              ; preds = %159, %150
  %173 = load ptr, ptr %151, align 8, !tbaa !82
  %174 = load ptr, ptr %152, align 8, !tbaa !85
  tail call fastcc void @merge_allocnos(ptr noundef %173, ptr noundef %174) #23
  %175 = add nuw nsw i32 %153, 1
  br label %179

176:                                              ; preds = %140
  %177 = add nuw nsw i64 %141, 1
  %178 = icmp eq i64 %177, %139
  br i1 %178, label %207, label %140, !llvm.loop !117

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
  %189 = load ptr, ptr %188, align 8, !tbaa !18
  %190 = getelementptr inbounds %struct.ira_allocno_copy, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !82
  %192 = getelementptr inbounds %struct.ira_allocno, ptr %191, i64 0, i32 18
  %193 = load ptr, ptr %192, align 8, !tbaa !102
  %194 = getelementptr inbounds %struct.ira_allocno_copy, ptr %189, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !85
  %196 = getelementptr inbounds %struct.ira_allocno, ptr %195, i64 0, i32 18
  %197 = load ptr, ptr %196, align 8, !tbaa !102
  %198 = icmp eq ptr %193, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %185
  %200 = add nsw i32 %187, 1
  %201 = sext i32 %187 to i64
  %202 = getelementptr inbounds ptr, ptr %7, i64 %201
  store ptr %189, ptr %202, align 8, !tbaa !18
  br label %203

203:                                              ; preds = %185, %199
  %204 = phi i32 [ %200, %199 ], [ %187, %185 ]
  %205 = add nuw nsw i64 %186, 1
  %206 = icmp eq i64 %205, %184
  br i1 %206, label %133, label %185, !llvm.loop !118

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
define internal fastcc void @setup_coalesced_allocno_costs_and_nums(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %2
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %6 = load ptr, ptr @regno_coalesced_allocno_num, align 8
  %7 = load ptr, ptr @regno_coalesced_allocno_cost, align 8
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %4, %51
  %10 = phi i64 [ 0, %4 ], [ %53, %51 ]
  %11 = phi i32 [ 0, %4 ], [ %52, %51 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %5, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = getelementptr inbounds i32, ptr %7, i64 %14
  store i32 0, ptr %19, align 4, !tbaa !17
  %20 = add nsw i32 %11, 1
  %21 = getelementptr inbounds i32, ptr %6, i64 %14
  store i32 %20, ptr %21, align 4, !tbaa !17
  br label %51

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 19
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %34, %28 ]
  %30 = phi ptr [ %27, %26 ], [ %36, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !108
  %34 = add nsw i32 %33, %29
  %35 = icmp eq ptr %31, %16
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 19
  br i1 %35, label %37, label %28

37:                                               ; preds = %28
  %38 = add nsw i32 %11, 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %50, %39 ], [ %27, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !52
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %6, i64 %44
  store i32 %38, ptr %45, align 4, !tbaa !17
  %46 = load i32, ptr %42, align 4, !tbaa !52
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %7, i64 %47
  store i32 %34, ptr %48, align 4, !tbaa !17
  %49 = icmp eq ptr %41, %16
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 19
  br i1 %49, label %51, label %39

51:                                               ; preds = %39, %22, %18
  %52 = phi i32 [ %20, %18 ], [ %11, %22 ], [ %38, %39 ]
  %53 = add nuw nsw i64 %10, 1
  %54 = icmp eq i64 %53, %8
  br i1 %54, label %55, label %9, !llvm.loop !119

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @coalesced_pseudo_reg_freq_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !17
  %4 = load i32, ptr %1, align 4, !tbaa !17
  %5 = load ptr, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !18
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load ptr, ptr @regno_coalesced_allocno_num, align 8, !tbaa !18
  %16 = getelementptr inbounds i32, ptr %15, i64 %9
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = getelementptr inbounds i32, ptr %15, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !17
  %20 = sub nsw i32 %17, %19
  %21 = icmp eq i32 %17, %19
  %22 = sub nsw i32 %3, %4
  %23 = select i1 %21, i32 %22, i32 %20
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i32 [ %12, %2 ], [ %23, %14 ]
  ret i32 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @collect_spilled_coalesced_allocnos(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  br label %8

8:                                                ; preds = %5, %31
  %9 = phi ptr [ %7, %5 ], [ %32, %31 ]
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = phi i32 [ 0, %5 ], [ %33, %31 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = add nsw i32 %11, 1
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds ptr, ptr %2, i64 %28
  store ptr %16, ptr %29, align 8, !tbaa !18
  %30 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  br label %31

31:                                               ; preds = %8, %18, %22, %26
  %32 = phi ptr [ %9, %8 ], [ %9, %18 ], [ %9, %22 ], [ %30, %26 ]
  %33 = phi i32 [ %11, %8 ], [ %11, %18 ], [ %11, %22 ], [ %27, %26 ]
  %34 = add nuw nsw i64 %10, 1
  %35 = icmp eq i64 %34, %6
  br i1 %35, label %36, label %8, !llvm.loop !120

36:                                               ; preds = %31, %3
  %37 = phi i32 [ 0, %3 ], [ %33, %31 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @coalesce_spill_slots(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @regstat_get_setjmp_crosses() #24
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @ira_allocate(i64 noundef %6) #24
  store ptr %7, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !18
  %8 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = zext nneg i32 %1 to i64
  br label %18

14:                                               ; preds = %103, %2
  %15 = phi i8 [ 0, %2 ], [ %105, %103 ]
  %16 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %108, label %117

18:                                               ; preds = %12, %103
  %19 = phi i64 [ 0, %12 ], [ %106, %103 ]
  %20 = phi i8 [ 0, %12 ], [ %105, %103 ]
  %21 = phi i32 [ 0, %12 ], [ %104, %103 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %27, label %103

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !52
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %29) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %103

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 4, !tbaa !52
  %34 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !17
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %103

42:                                               ; preds = %36
  %43 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %44 = getelementptr inbounds i8, ptr %43, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !87
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %103

47:                                               ; preds = %42, %32
  %48 = icmp eq i64 %19, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %47, %81
  %50 = phi i64 [ %82, %81 ], [ 0, %47 ]
  %51 = getelementptr inbounds ptr, ptr %0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 41
  %54 = load i32, ptr %53, align 8, !tbaa !121
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !102
  %57 = icmp eq ptr %56, %52
  br i1 %57, label %58, label %81

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !52
  %61 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %60) #24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32, ptr %59, align 4, !tbaa !52
  %65 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !17
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %69 = sext i32 %64 to i64
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !87
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %75 = getelementptr inbounds ptr, ptr %74, i64 %69
  %76 = load ptr, ptr %75, align 8, !tbaa !18
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %63
  %79 = tail call fastcc zeroext i8 @slot_coalesced_allocno_live_ranges_intersect_p(ptr noundef %23, i32 noundef %54) #23, !range !20
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %49, %58, %67, %73, %78
  %82 = add nuw nsw i64 %50, 1
  %83 = icmp eq i64 %82, %19
  br i1 %83, label %84, label %49, !llvm.loop !122

84:                                               ; preds = %81, %47
  %85 = add nsw i32 %21, 1
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 41
  store i32 %21, ptr %86, align 8, !tbaa !121
  tail call fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef %23) #23
  br label %103

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 41
  store i1 true, ptr @allocno_coalesced_p, align 1
  %89 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %90 = icmp sgt i32 %89, 3
  %91 = load ptr, ptr @ira_dump_file, align 8
  %92 = icmp ne ptr %91, null
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, ptr %23, align 8, !tbaa !48
  %96 = load i32, ptr %28, align 4, !tbaa !52
  %97 = load i32, ptr %52, align 8, !tbaa !48
  %98 = load i32, ptr %59, align 4, !tbaa !52
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.17, i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98) #23
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, ptr %88, align 8, !tbaa !121
  %102 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 41
  store i32 %101, ptr %102, align 8, !tbaa !121
  tail call fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef %23) #23
  tail call fastcc void @merge_allocnos(ptr noundef nonnull %52, ptr noundef %23) #23
  br label %103

103:                                              ; preds = %84, %100, %18, %27, %36, %42
  %104 = phi i32 [ %21, %18 ], [ %21, %27 ], [ %21, %36 ], [ %21, %42 ], [ %85, %84 ], [ %21, %100 ]
  %105 = phi i8 [ %20, %18 ], [ %20, %27 ], [ %20, %36 ], [ %20, %42 ], [ %20, %84 ], [ 1, %100 ]
  %106 = add nuw nsw i64 %19, 1
  %107 = icmp eq i64 %106, %13
  br i1 %107, label %14, label %18, !llvm.loop !123

108:                                              ; preds = %14, %108
  %109 = phi i64 [ %113, %108 ], [ 0, %14 ]
  %110 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !18
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !18
  tail call void @ira_finish_allocno_live_range_list(ptr noundef %112) #24
  %113 = add nuw nsw i64 %109, 1
  %114 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %108, label %117, !llvm.loop !124

117:                                              ; preds = %108, %14
  %118 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %118) #24
  ret i8 %15
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @coalesced_pseudo_reg_slot_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !17
  %4 = load i32, ptr %1, align 4, !tbaa !17
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp eq ptr %8, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %2
  %18 = icmp eq ptr %11, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %70

23:                                               ; preds = %19, %17
  %24 = sub nsw i32 %3, %4
  br label %70

25:                                               ; preds = %13
  %26 = icmp eq ptr %11, null
  br i1 %26, label %70, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %70, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %29, %15
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = sub nsw i32 %29, %15
  %35 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !125
  %36 = icmp eq i8 %35, 0
  %37 = sub nsw i32 0, %34
  %38 = select i1 %36, i32 %37, i32 %34
  br label %70

39:                                               ; preds = %31
  %40 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !18
  %41 = getelementptr inbounds ptr, ptr %40, i64 %6
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !87
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr @regno_max_ref_width, align 8, !tbaa !18
  %51 = getelementptr inbounds i32, ptr %50, i64 %6
  %52 = load i32, ptr %51, align 4, !tbaa !17
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %49)
  %54 = getelementptr inbounds ptr, ptr %40, i64 %9
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !87
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i32, ptr %50, i64 %9
  %64 = load i32, ptr %63, align 4, !tbaa !17
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 %62)
  %66 = sub nsw i32 %65, %53
  %67 = icmp eq i32 %65, %53
  %68 = sub nsw i32 %3, %4
  %69 = select i1 %67, i32 %68, i32 %66
  br label %70

70:                                               ; preds = %39, %25, %27, %19, %33, %23
  %71 = phi i32 [ %24, %23 ], [ %38, %33 ], [ 1, %19 ], [ -1, %27 ], [ -1, %25 ], [ %69, %39 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_mark_allocation_change(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %9 = getelementptr inbounds i16, ptr %8, i64 %3
  %10 = load i16, ptr %9, align 2, !tbaa !88
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %66, label %15

15:                                               ; preds = %1
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !75
  br label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 10
  br label %33

26:                                               ; preds = %20
  %27 = zext i32 %7 to i64
  %28 = zext nneg i32 %13 to i64
  %29 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %27, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !88
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds i32, ptr %22, i64 %31
  br label %33

33:                                               ; preds = %26, %24
  %34 = phi ptr [ %25, %24 ], [ %32, %26 ]
  %35 = load i32, ptr %34, align 4, !tbaa !17
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %5, i8 noundef zeroext 0) #23
  br label %36

36:                                               ; preds = %33, %17
  %37 = phi i32 [ %19, %17 ], [ %35, %33 ]
  %38 = load i32, ptr @ira_overall_cost, align 4, !tbaa !17
  %39 = add nsw i32 %38, %37
  store i32 %39, ptr @ira_overall_cost, align 4, !tbaa !17
  store i32 %11, ptr %12, align 4, !tbaa !51
  %40 = icmp slt i16 %10, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  store i32 -1, ptr %12, align 4, !tbaa !51
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 12
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = sub i32 %43, %37
  br label %62

45:                                               ; preds = %36
  %46 = zext i32 %7 to i64
  %47 = zext nneg i32 %11 to i64
  %48 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !88
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 10
  %56 = zext nneg i16 %49 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  %58 = select i1 %54, ptr %55, ptr %57
  %59 = load i32, ptr %58, align 4, !tbaa !17
  %60 = sub i32 %59, %37
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %5, i8 noundef zeroext 1) #23
  %61 = load i32, ptr @ira_overall_cost, align 4, !tbaa !17
  br label %62

62:                                               ; preds = %45, %51, %41
  %63 = phi i32 [ %39, %41 ], [ %61, %51 ], [ %39, %45 ]
  %64 = phi i32 [ %44, %41 ], [ %60, %51 ], [ 0, %45 ]
  %65 = add nsw i32 %63, %64
  store i32 %65, ptr @ira_overall_cost, align 4, !tbaa !17
  br label %66

66:                                               ; preds = %1, %62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_copy_costs(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %104, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !17
  tail call fastcc void @start_update_cost() #23
  store i32 1, ptr %4, align 4, !tbaa !17
  %14 = zext i32 %13 to i64
  %15 = icmp eq i8 %1, 0
  br label %16

16:                                               ; preds = %100, %8
  %17 = phi ptr [ undef, %8 ], [ %101, %100 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %18, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, null
  br i1 %23, label %100, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %4, align 4
  %26 = shl nsw i32 %25, 2
  br label %27

27:                                               ; preds = %24, %98
  %28 = phi ptr [ null, %24 ], [ %49, %98 ]
  %29 = phi ptr [ %22, %24 ], [ %49, %98 ]
  %30 = phi ptr [ %17, %24 ], [ %48, %98 ]
  %31 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = icmp eq ptr %32, %18
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  br label %47

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = icmp eq ptr %41, %18
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !86
  br label %47

46:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 280, ptr noundef nonnull @.str.5) #24
  br label %47

47:                                               ; preds = %43, %46, %34
  %48 = phi ptr [ %38, %34 ], [ %32, %43 ], [ %30, %46 ]
  %49 = phi ptr [ %36, %34 ], [ %45, %43 ], [ %28, %46 ]
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %14, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !87
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %98, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 31
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, 256
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !85
  %64 = icmp eq ptr %63, %18
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %20, i32 noundef %13, i32 noundef %51) #23, !range !90
  br label %69

67:                                               ; preds = %61
  %68 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %20, i32 noundef %51, i32 noundef %13) #23, !range !90
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = sub nsw i32 0, %70
  %72 = select i1 %15, i32 %70, i32 %71
  %73 = getelementptr inbounds %struct.ira_allocno_copy, ptr %29, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !93
  %75 = mul nsw i32 %74, %72
  %76 = sdiv i32 %75, %25
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 34
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 11
  %81 = load i32, ptr %80, align 8, !tbaa !100
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 33
  %83 = load ptr, ptr %82, align 8, !tbaa !91
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %79, i32 noundef %51, i32 noundef %81, ptr noundef %83) #23
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 36
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 35
  %86 = load ptr, ptr %85, align 8, !tbaa !92
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %84, i32 noundef %51, i32 noundef 0, ptr noundef %86) #23
  %87 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %52, i64 %11
  %88 = load i16, ptr %87, align 2, !tbaa !88
  %89 = load ptr, ptr %79, align 8, !tbaa !94
  %90 = sext i16 %88 to i64
  %91 = getelementptr inbounds i32, ptr %89, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !17
  %93 = add nsw i32 %92, %76
  store i32 %93, ptr %91, align 4, !tbaa !17
  %94 = load ptr, ptr %84, align 8, !tbaa !95
  %95 = getelementptr inbounds i32, ptr %94, i64 %90
  %96 = load i32, ptr %95, align 4, !tbaa !17
  %97 = add nsw i32 %96, %76
  store i32 %97, ptr %95, align 4, !tbaa !17
  tail call fastcc void @queue_update_cost(ptr noundef nonnull %48, i32 noundef %26) #23
  br label %98

98:                                               ; preds = %69, %47, %56, %78
  %99 = icmp eq ptr %49, null
  br i1 %99, label %100, label %27, !llvm.loop !134

100:                                              ; preds = %98, %16
  %101 = phi ptr [ %17, %16 ], [ %48, %98 ]
  %102 = call fastcc zeroext i8 @get_next_update_cost(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !20
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %16, !llvm.loop !135

104:                                              ; preds = %100, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_mark_memory_move_deletion(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !18
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
define dso_local zeroext i8 @ira_reassign_pseudos(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #22
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = zext nneg i32 %1 to i64
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %11, i64 noundef 4, ptr noundef nonnull @pseudo_reg_compare) #24
  br label %14

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %188

14:                                               ; preds = %10, %12
  %15 = zext nneg i32 %1 to i64
  %16 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %14, %65
  %18 = phi ptr [ %16, %14 ], [ %66, %65 ]
  %19 = phi i64 [ 0, %14 ], [ %69, %65 ]
  %20 = phi i8 [ 0, %14 ], [ %68, %65 ]
  %21 = phi i32 [ 0, %14 ], [ %67, %65 ]
  %22 = getelementptr inbounds i32, ptr %0, i64 %19
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, ptr %3, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds i64, ptr %4, i64 %24
  %28 = load i64, ptr %27, align 8, !tbaa !69
  %29 = or i64 %26, %28
  %30 = or i64 %29, %2
  %31 = getelementptr inbounds i16, ptr %18, i64 %24
  %32 = load i16, ptr %31, align 2, !tbaa !88
  %33 = icmp slt i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2929, ptr noundef nonnull @.str.5) #24
  br label %35

35:                                               ; preds = %17, %34
  %36 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %37 = getelementptr inbounds ptr, ptr %36, i64 %24
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  tail call void @ira_mark_allocation_change(i32 noundef %23) #23
  %39 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %40 = icmp sgt i32 %39, 3
  %41 = load ptr, ptr @ira_dump_file, align 8
  %42 = icmp ne ptr %41, null
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32, ptr %38, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %38, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !75
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %38, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !76
  %50 = sub nsw i32 %47, %49
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.6, i32 noundef %23, i32 noundef %45, i32 noundef %50) #23
  br label %52

52:                                               ; preds = %44, %35
  %53 = tail call fastcc zeroext i8 @allocno_reload_assign(ptr noundef %38, i64 noundef %30) #23, !range !20
  %54 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %55 = getelementptr inbounds i16, ptr %54, i64 %24
  %56 = load i16, ptr %55, align 2, !tbaa !88
  %57 = icmp sgt i16 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %23) #24
  %60 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  br label %65

61:                                               ; preds = %52
  %62 = add nsw i32 %21, 1
  %63 = sext i32 %21 to i64
  %64 = getelementptr inbounds i32, ptr %0, i64 %63
  store i32 %23, ptr %64, align 4, !tbaa !17
  br label %65

65:                                               ; preds = %58, %61
  %66 = phi ptr [ %60, %58 ], [ %54, %61 ]
  %67 = phi i32 [ %21, %58 ], [ %62, %61 ]
  %68 = phi i8 [ 1, %58 ], [ %20, %61 ]
  %69 = add nuw nsw i64 %19, 1
  %70 = icmp eq i64 %69, %15
  br i1 %70, label %71, label %17, !llvm.loop !136

71:                                               ; preds = %65
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %188, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
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
  %86 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %87 = getelementptr inbounds i32, ptr %0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !17
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.8, i32 noundef %88) #23
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %83
  br i1 %91, label %92, label %84, !llvm.loop !137

92:                                               ; preds = %84, %79
  %93 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
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
  %103 = load i32, ptr %102, align 4, !tbaa !17
  %104 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !18
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %8, ptr noundef %107) #23
  %108 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %8, ptr noundef nonnull %7) #23, !range !20
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %99, %134
  %111 = phi i32 [ %135, %134 ], [ %101, %99 ]
  %112 = load ptr, ptr %7, align 8, !tbaa !18
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !51
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ira_allocno, ptr %112, i64 0, i32 31
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 8
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  %123 = load i32, ptr %112, align 8, !tbaa !48
  %124 = tail call i32 @bitmap_bit_p(ptr noundef %122, i32 noundef %123) #24
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %128 = add nsw i32 %111, 1
  %129 = sext i32 %111 to i64
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129
  store ptr %112, ptr %130, align 8, !tbaa !18
  %131 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  %132 = load i32, ptr %112, align 8, !tbaa !48
  %133 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %131, i32 noundef %132) #24
  br label %134

134:                                              ; preds = %110, %116, %121, %126
  %135 = phi i32 [ %111, %116 ], [ %111, %121 ], [ %128, %126 ], [ %111, %110 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %8) #23
  %136 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %8, ptr noundef nonnull %7) #23, !range !20
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %110, !llvm.loop !138

138:                                              ; preds = %134, %99
  %139 = phi i32 [ %101, %99 ], [ %135, %134 ]
  %140 = add nuw nsw i64 %100, 1
  %141 = icmp eq i64 %140, %98
  br i1 %141, label %142, label %99, !llvm.loop !139

142:                                              ; preds = %138
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %188, label %144

144:                                              ; preds = %142
  %145 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  tail call fastcc void @setup_allocno_priorities(ptr noundef %145, i32 noundef %139) #23
  %146 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
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
  %154 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %155 = getelementptr inbounds ptr, ptr %154, i64 %152
  %156 = load ptr, ptr %155, align 8, !tbaa !18
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !52
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, ptr %3, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !69
  %162 = getelementptr inbounds i64, ptr %4, i64 %159
  %163 = load i64, ptr %162, align 8, !tbaa !69
  %164 = or i64 %161, %163
  %165 = or i64 %164, %2
  %166 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %167 = icmp sgt i32 %166, 3
  %168 = load ptr, ptr @ira_dump_file, align 8
  %169 = icmp ne ptr %168, null
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %179

171:                                              ; preds = %151
  %172 = load i32, ptr %156, align 8, !tbaa !48
  %173 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 12
  %174 = load i32, ptr %173, align 4, !tbaa !75
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %156, i64 0, i32 10
  %176 = load i32, ptr %175, align 4, !tbaa !76
  %177 = sub nsw i32 %174, %176
  %178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %168, ptr noundef nonnull @.str.9, i32 noundef %158, i32 noundef %172, i32 noundef %177) #23
  br label %179

179:                                              ; preds = %171, %151
  %180 = tail call fastcc zeroext i8 @allocno_reload_assign(ptr noundef nonnull %156, i64 noundef %165) #23, !range !20
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %158) #24
  br label %184

184:                                              ; preds = %179, %182
  %185 = phi i8 [ 1, %182 ], [ %153, %179 ]
  %186 = add nuw nsw i64 %152, 1
  %187 = icmp eq i64 %186, %150
  br i1 %187, label %188, label %151, !llvm.loop !140

188:                                              ; preds = %184, %95, %12, %144, %142, %71
  %189 = phi i8 [ %68, %71 ], [ %68, %142 ], [ %68, %144 ], [ 0, %12 ], [ %68, %95 ], [ %185, %184 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret i8 %189
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @pseudo_reg_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !17
  %4 = load i32, ptr %1, align 4, !tbaa !17
  %5 = load ptr, ptr @reg_info_p, align 8, !tbaa !18
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.reg_info_t, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !141
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds %struct.reg_info_t, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !141
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i32 %8, %11
  %14 = sub nsw i32 %3, %4
  %15 = select i1 %13, i32 %14, i32 %12
  ret i32 %15
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @allocno_reload_assign(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %6 = load i64, ptr %5, align 8, !tbaa !99
  %7 = or i64 %6, %1
  store i64 %7, ptr %5, align 8, !tbaa !99
  %8 = load i32, ptr @flag_caller_saves, align 4, !tbaa !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr @call_used_reg_set, align 8, !tbaa !69
  %16 = or i64 %15, %7
  store i64 %16, ptr %5, align 8, !tbaa !99
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, -257
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !50
  tail call fastcc void @update_curr_costs(ptr noundef nonnull %0) #23
  %23 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef nonnull %0, i8 noundef zeroext 1) #23, !range !20
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !51
  %26 = trunc i32 %25 to i16
  %27 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %28 = sext i32 %4 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  store i16 %26, ptr %29, align 2, !tbaa !88
  %30 = icmp slt i32 %25, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 -1, ptr %24, align 4, !tbaa !51
  br label %63

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !75
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  br label %47

40:                                               ; preds = %32
  %41 = zext i32 %22 to i64
  %42 = zext nneg i32 %25 to i64
  %43 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %41, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !88
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i32, ptr %36, i64 %45
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi ptr [ %39, %38 ], [ %46, %40 ]
  %49 = load i32, ptr %48, align 4, !tbaa !17
  %50 = sub i32 %49, %34
  %51 = load i32, ptr @ira_overall_cost, align 4, !tbaa !17
  %52 = add i32 %50, %51
  store i32 %52, ptr @ira_overall_cost, align 4, !tbaa !17
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %54 = load i32, ptr %53, align 8, !tbaa !143
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !77
  %59 = load i64, ptr @call_used_reg_set, align 8, !tbaa !69
  %60 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %25, i32 noundef %58, i64 noundef %59) #23, !range !20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, ptr @caller_save_needed, align 4, !tbaa !17
  br label %63

63:                                               ; preds = %47, %56, %62, %31
  %64 = shl i32 %25, 16
  %65 = ashr exact i32 %64, 16
  %66 = icmp sgt i16 %26, -1
  %67 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %68 = icmp sgt i32 %67, 3
  %69 = load ptr, ptr @ira_dump_file, align 8
  %70 = icmp ne ptr %69, null
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %66, label %72, label %93

72:                                               ; preds = %63
  br i1 %71, label %73, label %78

73:                                               ; preds = %72
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %69, ptr noundef nonnull @.str.18, i32 noundef %65) #23
  %75 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %76 = getelementptr inbounds i16, ptr %75, i64 %28
  %77 = load i16, ptr %76, align 2, !tbaa !88
  br label %78

78:                                               ; preds = %73, %72
  %79 = phi i16 [ %77, %73 ], [ %26, %72 ]
  %80 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !18
  %81 = getelementptr inbounds ptr, ptr %80, i64 %28
  %82 = load ptr, ptr %81, align 8, !tbaa !18
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef %82) #23
  %84 = sext i16 %79 to i32
  tail call void @df_ref_change_reg_with_loc(i32 noundef %83, i32 noundef %84, ptr noundef %82) #24
  %85 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %86 = getelementptr inbounds i16, ptr %85, i64 %28
  %87 = load i16, ptr %86, align 2, !tbaa !88
  %88 = sext i16 %87 to i32
  %89 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !18
  %90 = getelementptr inbounds ptr, ptr %89, i64 %28
  %91 = load ptr, ptr %90, align 8, !tbaa !18
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  store i32 %88, ptr %92, align 8, !tbaa !87
  tail call void @mark_home_live(i32 noundef %4) #24
  br label %96

93:                                               ; preds = %63
  br i1 %71, label %94, label %96

94:                                               ; preds = %93
  %95 = tail call i32 @fputc(i32 10, ptr nonnull %69)
  br label %96

96:                                               ; preds = %93, %94, %78
  %97 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %98 = getelementptr inbounds i16, ptr %97, i64 %28
  %99 = load i16, ptr %98, align 2, !tbaa !88
  %100 = icmp sgt i16 %99, -1
  %101 = zext i1 %100 to i8
  ret i8 %101
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_reuse_stack_slot(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %6 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %10 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %164, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !51
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !17
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %164

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 15
  br label %28

21:                                               ; preds = %12
  %22 = sub nuw i32 -2, %14
  %23 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !18
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %23, i64 %24, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !144
  br label %133

28:                                               ; preds = %19, %115
  %29 = phi i64 [ 0, %19 ], [ %119, %115 ]
  %30 = phi ptr [ undef, %19 ], [ %118, %115 ]
  %31 = phi i32 [ -1, %19 ], [ %117, %115 ]
  %32 = phi i32 [ -1, %19 ], [ %116, %115 ]
  %33 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %33, i64 %29
  %35 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %33, i64 %29, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !144
  %37 = icmp eq ptr %36, null
  br i1 %37, label %115, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %33, i64 %29, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !147
  %41 = icmp ult i32 %40, %2
  br i1 %41, label %115, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %36, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !87
  %49 = zext i8 %48 to i32
  %50 = icmp ult i32 %49, %1
  br i1 %50, label %115, label %51

51:                                               ; preds = %42
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef 53, ptr noundef nonnull %4) #23
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51, %62
  %55 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %56 = load i32, ptr %4, align 4, !tbaa !17
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = tail call fastcc zeroext i8 @allocnos_have_intersected_live_ranges_p(ptr noundef %9, ptr noundef %59) #23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %54
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %63 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %54, !llvm.loop !148

65:                                               ; preds = %62, %51
  %66 = phi ptr [ %30, %51 ], [ %59, %62 ]
  %67 = load ptr, ptr %20, align 8, !tbaa !81
  %68 = icmp eq ptr %67, null
  br i1 %68, label %108, label %69

69:                                               ; preds = %65, %105
  %70 = phi ptr [ %92, %105 ], [ %66, %65 ]
  %71 = phi ptr [ %91, %105 ], [ null, %65 ]
  %72 = phi ptr [ %91, %105 ], [ %67, %65 ]
  %73 = phi i32 [ %106, %105 ], [ 0, %65 ]
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !82
  %76 = icmp eq ptr %75, %9
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !84
  %80 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !85
  br label %90

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !85
  %85 = icmp eq ptr %84, %9
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !86
  br label %90

89:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3074, ptr noundef nonnull @.str.5) #24
  br label %90

90:                                               ; preds = %86, %89, %77
  %91 = phi ptr [ %79, %77 ], [ %88, %86 ], [ %71, %89 ]
  %92 = phi ptr [ %81, %77 ], [ %75, %86 ], [ %70, %89 ]
  %93 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !111
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %92, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !52
  %99 = tail call i32 @bitmap_bit_p(ptr noundef %34, i32 noundef %98) #24
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ira_allocno_copy, ptr %72, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !93
  %104 = add nsw i32 %103, %73
  br label %105

105:                                              ; preds = %96, %101, %90
  %106 = phi i32 [ %73, %90 ], [ %104, %101 ], [ %73, %96 ]
  %107 = icmp eq ptr %91, null
  br i1 %107, label %108, label %69, !llvm.loop !149

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
  %120 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !17
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %28, label %123, !llvm.loop !150

123:                                              ; preds = %115
  %124 = icmp sgt i32 %117, -1
  br i1 %124, label %125, label %164

125:                                              ; preds = %123
  %126 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !18
  %127 = sext i32 %116 to i64
  %128 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %126, i64 %127
  %129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %128, i32 noundef %0) #24
  %130 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %126, i64 %127, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !144
  %132 = sub i32 -2, %116
  store i32 %132, ptr %13, align 4, !tbaa !51
  br label %133

133:                                              ; preds = %125, %21
  %134 = phi i32 [ %22, %21 ], [ %116, %125 ]
  %135 = phi ptr [ %27, %21 ], [ %131, %125 ]
  %136 = phi ptr [ %25, %21 ], [ %128, %125 ]
  %137 = icmp eq ptr %135, null
  br i1 %137, label %164, label %138

138:                                              ; preds = %133
  %139 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %136, i32 noundef %0) #24
  %140 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %141 = icmp sgt i32 %140, 3
  %142 = load ptr, ptr @ira_dump_file, align 8
  %143 = icmp ne ptr %142, null
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %164

145:                                              ; preds = %138
  %146 = load ptr, ptr @reg_info_p, align 8, !tbaa !18
  %147 = getelementptr inbounds %struct.reg_info_t, ptr %146, i64 %7
  %148 = load i32, ptr %147, align 4, !tbaa !141
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %142, ptr noundef nonnull @.str.10, i32 noundef %0, i32 noundef %148, i32 noundef %134) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %136, i32 noundef 53, ptr noundef nonnull %4) #23
  %150 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %145, %158
  %153 = load i32, ptr %4, align 4, !tbaa !17
  %154 = icmp eq i32 %153, %0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.8, i32 noundef %153) #23
  br label %158

158:                                              ; preds = %152, %155
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %159 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %152, !llvm.loop !151

161:                                              ; preds = %158, %145
  %162 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %163 = tail call i32 @fputc(i32 10, ptr %162)
  br label %164

164:                                              ; preds = %16, %123, %133, %161, %138, %3
  %165 = phi ptr [ null, %3 ], [ %135, %138 ], [ %135, %161 ], [ null, %133 ], [ null, %123 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret ptr %165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = load ptr, ptr %1, align 8, !tbaa !152
  store ptr %5, ptr %0, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !155
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !153
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !156
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !158
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !159
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !159
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !17
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !160

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !17
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !17
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !158
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !153
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !158
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !69
  store i64 %35, ptr %3, align 8, !tbaa !159
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !17
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !17
  %40 = load i32, ptr %23, align 8, !tbaa !158
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !158
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !161

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !162
  store ptr %44, ptr %0, align 8, !tbaa !153
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !156
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !17
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !159
  store i32 %16, ptr %1, align 4, !tbaa !17
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @allocnos_have_intersected_live_ranges_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !87
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12, %8, %4
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %20, ptr noundef %22) #24
  br label %24

24:                                               ; preds = %12, %2, %18
  %25 = phi i8 [ %23, %18 ], [ 0, %2 ], [ 0, %12 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !159
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !159
  %6 = load i32, ptr %1, align 4, !tbaa !17
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_mark_new_stack_slot(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !51
  %10 = sub i32 -2, %9
  %11 = icmp eq i32 %9, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !17
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !17
  %15 = sub i32 -2, %13
  store i32 %15, ptr %8, align 4, !tbaa !51
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %13, %12 ], [ %10, %3 ]
  %18 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !18
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %20) #23
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %1) #24
  %22 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19, i32 1
  store ptr %0, ptr %22, align 8, !tbaa !144
  %23 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19, i32 2
  store i32 %2, ptr %23, align 8, !tbaa !147
  %24 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %25 = icmp sgt i32 %24, 3
  %26 = load ptr, ptr @ira_dump_file, align 8
  %27 = icmp ne ptr %26, null
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load ptr, ptr @reg_info_p, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.reg_info_t, ptr %30, i64 %5
  %32 = load i32, ptr %31, align 4, !tbaa !141
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %32, i32 noundef %17) #23
  br label %34

34:                                               ; preds = %29, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !165
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ira_better_spill_reload_regno_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
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
  %16 = load i32, ptr %8, align 4, !tbaa !17
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %49, label %21

21:                                               ; preds = %5
  %22 = icmp ne i32 %16, 0
  %23 = icmp eq i32 %18, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %14, %15
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %14, %15
  br label %49

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4, !tbaa !17
  %31 = load i32, ptr %7, align 4, !tbaa !17
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = icmp sgt i32 %30, %31
  br label %49

35:                                               ; preds = %29
  %36 = load i32, ptr %12, align 4, !tbaa !17
  %37 = icmp sgt i32 %36, -1
  %38 = load i32, ptr %13, align 4
  %39 = icmp sgt i32 %38, -1
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = zext nneg i32 %36 to i64
  %43 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !17
  %45 = zext nneg i32 %38 to i64
  %46 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !17
  %48 = icmp slt i32 %44, %47
  br label %49

49:                                               ; preds = %35, %21, %5, %41, %33, %27
  %50 = phi i1 [ %28, %27 ], [ %34, %33 ], [ %48, %41 ], [ true, %5 ], [ false, %21 ], [ false, %35 ]
  %51 = zext i1 %50 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_spill_cost(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  store i32 0, ptr %5, align 4, !tbaa !17
  %9 = load i32, ptr %0, align 4, !tbaa !17
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %152, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %1, null
  %13 = icmp eq ptr %2, null
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %16 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %11, %144
  %18 = phi ptr [ %16, %11 ], [ %145, %144 ]
  %19 = phi ptr [ %15, %11 ], [ %146, %144 ]
  %20 = phi i64 [ 0, %11 ], [ %148, %144 ]
  %21 = phi i32 [ %9, %11 ], [ %150, %144 ]
  %22 = phi i32 [ 0, %11 ], [ %36, %144 ]
  %23 = phi i32 [ 0, %11 ], [ %147, %144 ]
  %24 = phi i32 [ 0, %11 ], [ %70, %144 ]
  %25 = tail call fastcc i32 @REG_N_REFS(i32 noundef %21) #23
  %26 = load i32, ptr %5, align 4, !tbaa !17
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %5, align 4, !tbaa !17
  %28 = zext nneg i32 %21 to i64
  %29 = getelementptr inbounds i16, ptr %19, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !88
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds ptr, ptr %18, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 14
  %35 = load i32, ptr %34, align 4, !tbaa !79
  %36 = add nsw i32 %35, %22
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !75
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 10
  %40 = load i32, ptr %39, align 4, !tbaa !76
  %41 = sub nsw i32 %38, %40
  %42 = add nsw i32 %41, %23
  %43 = sext i16 %30 to i64
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !77
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %43, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !87
  %49 = zext i8 %48 to i32
  %50 = icmp eq i8 %48, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %17
  %52 = load i64, ptr @call_used_reg_set, align 8, !tbaa !69
  %53 = sext i16 %30 to i64
  %54 = zext i8 %48 to i64
  br label %55

55:                                               ; preds = %51, %61
  %56 = phi i64 [ 0, %51 ], [ %62, %61 ]
  %57 = add nsw i64 %56, %53
  %58 = shl nuw i64 1, %57
  %59 = and i64 %52, %58
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, %54
  br i1 %63, label %66, label %55, !llvm.loop !166

64:                                               ; preds = %55
  %65 = trunc i64 %56 to i32
  br label %66

66:                                               ; preds = %61, %64, %17
  %67 = phi i32 [ 0, %17 ], [ %65, %64 ], [ %49, %61 ]
  %68 = icmp eq i32 %67, %49
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %24, %69
  br i1 %12, label %78, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %1, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #23
  %77 = icmp eq i32 %76, %31
  br label %78

78:                                               ; preds = %75, %71, %66
  %79 = phi i1 [ false, %71 ], [ false, %66 ], [ %77, %75 ]
  br i1 %13, label %87, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %2, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 37
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #23
  %86 = icmp eq i32 %85, %31
  br label %87

87:                                               ; preds = %84, %80, %78
  %88 = phi i1 [ false, %80 ], [ false, %78 ], [ %86, %84 ]
  %89 = select i1 %79, i1 true, i1 %88
  br i1 %89, label %90, label %144

90:                                               ; preds = %87
  %91 = tail call ptr @find_regno_note(ptr noundef %3, i32 noundef 1, i32 noundef %31) #24
  %92 = icmp eq ptr %91, null
  %93 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %94 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !18
  br i1 %92, label %144, label %95

95:                                               ; preds = %90
  br i1 %79, label %96, label %105

96:                                               ; preds = %95
  %97 = load i32, ptr %44, align 8, !tbaa !77
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !50
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %98, i64 %101, i64 1
  %103 = load i16, ptr %102, align 2, !tbaa !88
  %104 = sext i16 %103 to i32
  br label %105

105:                                              ; preds = %96, %95
  %106 = phi i32 [ %104, %96 ], [ 0, %95 ]
  br i1 %88, label %107, label %117

107:                                              ; preds = %105
  %108 = load i32, ptr %44, align 8, !tbaa !77
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !50
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %109, i64 %112
  %114 = load i16, ptr %113, align 4, !tbaa !88
  %115 = sext i16 %114 to i32
  %116 = add nsw i32 %106, %115
  br label %117

117:                                              ; preds = %107, %105
  %118 = phi i32 [ %116, %107 ], [ %106, %105 ]
  %119 = load i32, ptr @optimize_size, align 4, !tbaa !17
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !17
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @cfun, align 8, !tbaa !18
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !36
  %128 = load ptr, ptr %127, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 8
  %130 = load i64, ptr %129, align 8, !tbaa !40
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %124, %121
  %133 = load ptr, ptr %14, align 8, !tbaa !87
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 11
  %135 = load i32, ptr %134, align 8, !tbaa !30
  %136 = add i32 %135, 9
  %137 = icmp ult i32 %136, 19
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = sdiv i32 %135, -10
  br label %140

140:                                              ; preds = %138, %132, %117, %124
  %141 = phi i32 [ -1000, %124 ], [ -1000, %117 ], [ %139, %138 ], [ -1, %132 ]
  %142 = mul i32 %141, %118
  %143 = add i32 %142, %42
  br label %144

144:                                              ; preds = %90, %140, %87
  %145 = phi ptr [ %94, %140 ], [ %94, %90 ], [ %18, %87 ]
  %146 = phi ptr [ %93, %140 ], [ %93, %90 ], [ %19, %87 ]
  %147 = phi i32 [ %143, %140 ], [ %42, %90 ], [ %42, %87 ]
  %148 = add nuw i64 %20, 1
  %149 = getelementptr inbounds i32, ptr %0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !17
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %17

152:                                              ; preds = %144, %8
  %153 = phi i32 [ 0, %8 ], [ %70, %144 ]
  %154 = phi i32 [ 0, %8 ], [ %147, %144 ]
  %155 = phi i32 [ 0, %8 ], [ %36, %144 ]
  store i32 %155, ptr %4, align 4, !tbaa !17
  store i32 %153, ptr %6, align 4, !tbaa !17
  %156 = load i32, ptr %0, align 4, !tbaa !17
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load ptr, ptr @reg_renumber, align 8, !tbaa !18
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds i16, ptr %159, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !88
  %163 = sext i16 %162 to i32
  br label %164

164:                                              ; preds = %158, %152
  %165 = phi i32 [ %163, %158 ], [ -1, %152 ]
  store i32 %165, ptr %7, align 4, !tbaa !17
  ret i32 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_initiate_assign() local_unnamed_addr #0 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #24
  store ptr %4, ptr @sorted_allocnos, align 8, !tbaa !18
  %5 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %5, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  tail call fastcc void @initiate_cost_update() #23
  %6 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #24
  store ptr %9, ptr @allocno_priorities, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_cost_update() unnamed_addr #0 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 4
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #24
  store ptr %4, ptr @update_cost_queue_elems, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %3, i1 false)
  store i32 0, ptr @update_cost_check, align 4, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_assign() local_unnamed_addr #0 {
  %1 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %1) #24
  %2 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  tail call void @ira_free_bitmap(ptr noundef %2) #24
  tail call fastcc void @finish_cost_update() #23
  %3 = load ptr, ptr @allocno_priorities, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_cost_update() unnamed_addr #0 {
  %1 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_color() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #23
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = load ptr, ptr %1, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !75
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 13
  store i32 %8, ptr %9, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 11
  store i32 %11, ptr %12, align 8, !tbaa !100
  %13 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !167

15:                                               ; preds = %5, %0
  %16 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !87
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

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
define internal fastcc void @color() unnamed_addr #0 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %2 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %1) #23
  store ptr %2, ptr @allocno_stack_vec, align 8, !tbaa !18
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %4 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %3) #23
  store ptr %4, ptr @removed_splay_allocno_vec, align 8, !tbaa !18
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
define internal fastcc void @fast_allocation() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #24
  store ptr %6, ptr @sorted_allocnos, align 8, !tbaa !18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #23
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %0, %9
  %10 = phi i64 [ %12, %9 ], [ 0, %0 ]
  %11 = load ptr, ptr %1, align 8, !tbaa !18
  %12 = add nuw i64 %10, 1
  %13 = getelementptr inbounds ptr, ptr %6, i64 %10
  store ptr %11, ptr %13, align 8, !tbaa !18
  %14 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !168

16:                                               ; preds = %9
  %17 = trunc i64 %12 to i32
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %20 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = tail call ptr @ira_allocate(i64 noundef %22) #24
  store ptr %23, ptr @allocno_priorities, align 8, !tbaa !18
  %24 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  tail call fastcc void @setup_allocno_priorities(ptr noundef %24, i32 noundef %19) #23
  %25 = load i32, ptr @ira_max_point, align 4, !tbaa !17
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = tail call ptr @ira_allocate(i64 noundef %27) #24
  %29 = load i32, ptr @ira_max_point, align 4, !tbaa !17
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = zext nneg i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %33, i1 false), !tbaa !69
  br label %34

34:                                               ; preds = %31, %18
  %35 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %36 = zext i32 %19 to i64
  tail call void @spec_qsort(ptr noundef %35, i64 noundef %36, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #24
  %37 = icmp eq i32 %19, 0
  %38 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  br i1 %37, label %149, label %39

39:                                               ; preds = %34, %146
  %40 = phi i64 [ %147, %146 ], [ 0, %34 ]
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 26
  %44 = load i64, ptr %43, align 8, !tbaa !169
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %39, %68
  %49 = phi ptr [ %71, %68 ], [ %46, %39 ]
  %50 = phi i64 [ %69, %68 ], [ %44, %39 ]
  %51 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %49, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !170
  %53 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %49, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !172
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
  %63 = load i64, ptr %62, align 8, !tbaa !69
  %64 = or i64 %63, %61
  %65 = add nsw i64 %60, 1
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %58, %66
  br i1 %67, label %68, label %59, !llvm.loop !173

68:                                               ; preds = %59, %48
  %69 = phi i64 [ %50, %48 ], [ %64, %59 ]
  %70 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %49, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %48, !llvm.loop !174

73:                                               ; preds = %68, %39
  %74 = phi i64 [ %44, %39 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !50
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 31
  %78 = load i16, ptr %77, align 4
  %79 = or i16 %78, 256
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 3
  store i32 -1, ptr %80, align 4, !tbaa !51
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !69
  %84 = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 noundef %83, i64 noundef %74) #23, !range !20
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %146

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !77
  %89 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %81
  %90 = load i32, ptr %89, align 4, !tbaa !17
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
  %101 = load i16, ptr %100, align 2, !tbaa !88
  %102 = sext i16 %101 to i32
  %103 = icmp sgt i16 %101, 7
  %104 = select i1 %94, i1 %103, i1 false
  %105 = icmp slt i16 %101, 16
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %143, label %107

107:                                              ; preds = %98
  %108 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %102, i32 noundef %88, i64 noundef %74) #23, !range !20
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %143, label %110

110:                                              ; preds = %107
  %111 = load i64, ptr %96, align 8, !tbaa !69
  %112 = zext nneg i32 %102 to i64
  %113 = shl nuw i64 1, %112
  %114 = and i64 %111, %113
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %110
  store i32 %102, ptr %80, align 4, !tbaa !51
  br i1 %47, label %146, label %117

117:                                              ; preds = %116
  %118 = sext i16 %101 to i64
  %119 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %118, i64 %95
  br label %120

120:                                              ; preds = %117, %139
  %121 = phi ptr [ %46, %117 ], [ %141, %139 ]
  %122 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !170
  %124 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %121, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !172
  %126 = icmp sgt i32 %123, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %120
  %128 = sext i32 %123 to i64
  %129 = add i32 %125, 1
  br label %130

130:                                              ; preds = %127, %130
  %131 = phi i64 [ %128, %127 ], [ %136, %130 ]
  %132 = load i64, ptr %119, align 8, !tbaa !69
  %133 = getelementptr inbounds i64, ptr %28, i64 %131
  %134 = load i64, ptr %133, align 8, !tbaa !69
  %135 = or i64 %134, %132
  store i64 %135, ptr %133, align 8, !tbaa !69
  %136 = add nsw i64 %131, 1
  %137 = trunc i64 %136 to i32
  %138 = icmp eq i32 %129, %137
  br i1 %138, label %139, label %130, !llvm.loop !175

139:                                              ; preds = %130, %120
  %140 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %121, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !18
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %120, !llvm.loop !176

143:                                              ; preds = %107, %110, %98
  %144 = add nuw nsw i64 %99, 1
  %145 = icmp eq i64 %144, %97
  br i1 %145, label %146, label %98, !llvm.loop !177

146:                                              ; preds = %143, %139, %86, %116, %73
  %147 = add nuw nsw i64 %40, 1
  %148 = icmp eq i64 %147, %36
  br i1 %148, label %149, label %39, !llvm.loop !178

149:                                              ; preds = %146, %34
  tail call void @ira_free(ptr noundef %38) #24
  tail call void @ira_free(ptr noundef %28) #24
  %150 = load ptr, ptr @allocno_priorities, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %150) #24
  %151 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !46
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.5) #24
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  ret ptr %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #24
  %9 = load ptr, ptr %5, align 8, !tbaa !18
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !88
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_or_copy_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  %8 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %8, ptr %0, align 8, !tbaa !18
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %7
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %51

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
  store i32 %2, ptr %28, align 4, !tbaa !17
  br label %29

29:                                               ; preds = %27, %22
  %30 = extractelement <4 x i1> %25, i64 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i64 %23, 1
  %33 = getelementptr inbounds i32, ptr %8, i64 %32
  store i32 %2, ptr %33, align 4, !tbaa !17
  br label %34

34:                                               ; preds = %31, %29
  %35 = extractelement <4 x i1> %25, i64 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = or disjoint i64 %23, 2
  %38 = getelementptr inbounds i32, ptr %8, i64 %37
  store i32 %2, ptr %38, align 4, !tbaa !17
  br label %39

39:                                               ; preds = %36, %34
  %40 = extractelement <4 x i1> %25, i64 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = or disjoint i64 %23, 3
  %43 = getelementptr inbounds i32, ptr %8, i64 %42
  store i32 %2, ptr %43, align 4, !tbaa !17
  br label %44

44:                                               ; preds = %41, %39
  %45 = add i64 %23, 4
  %46 = add <4 x i64> %24, <i64 4, i64 4, i64 4, i64 4>
  %47 = icmp eq i64 %45, %18
  br i1 %47, label %51, label %22, !llvm.loop !179

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
define internal fastcc void @start_update_cost() unnamed_addr #17 {
  %1 = load i32, ptr @update_cost_check, align 4, !tbaa !17
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @update_cost_check, align 4, !tbaa !17
  store ptr null, ptr @update_cost_queue, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_copy_costs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !18
  %5 = icmp ne ptr %4, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %9, ptr %0, align 8, !tbaa !18
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr nonnull align 4 %2, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_subset_p(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = xor i64 %1, -1
  %4 = and i64 %3, %0
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @queue_update_cost(ptr noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !18
  %4 = load i32, ptr %0, align 8, !tbaa !48
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %3, i64 %5
  %7 = load i32, ptr %6, align 8, !tbaa !182
  %8 = load i32, ptr @update_cost_check, align 4, !tbaa !17
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  store i32 %8, ptr %6, align 8, !tbaa !182
  %15 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %3, i64 %5, i32 1
  store i32 %1, ptr %15, align 4, !tbaa !184
  %16 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %3, i64 %5, i32 2
  store ptr null, ptr %16, align 8, !tbaa !185
  %17 = load ptr, ptr @update_cost_queue, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @update_cost_queue_tail, align 8
  %20 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %19, i64 0, i32 2
  %21 = select i1 %18, ptr @update_cost_queue, ptr %20
  store ptr %0, ptr %21, align 8, !tbaa !18
  store ptr %6, ptr @update_cost_queue_tail, align 8, !tbaa !18
  br label %22

22:                                               ; preds = %14, %10, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_conflict_hard_regno_costs(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = call fastcc zeroext i8 @get_next_update_cost(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %116, label %7

7:                                                ; preds = %2
  %8 = zext i32 %0 to i64
  %9 = icmp eq i8 %1, 0
  br label %14

10:                                               ; preds = %114, %14
  %11 = phi ptr [ %15, %14 ], [ %45, %114 ]
  %12 = call fastcc zeroext i8 @get_next_update_cost(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %116, label %14, !llvm.loop !186

14:                                               ; preds = %7, %10
  %15 = phi ptr [ undef, %7 ], [ %11, %10 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 %21, 257
  %23 = shl nsw i32 %21, 2
  br label %24

24:                                               ; preds = %20, %114
  %25 = phi ptr [ null, %20 ], [ %46, %114 ]
  %26 = phi ptr [ %18, %20 ], [ %46, %114 ]
  %27 = phi ptr [ %15, %20 ], [ %45, %114 ]
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  br label %44

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  %39 = icmp eq ptr %38, %16
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  br label %44

43:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 347, ptr noundef nonnull @.str.5) #24
  br label %44

44:                                               ; preds = %40, %43, %31
  %45 = phi ptr [ %35, %31 ], [ %29, %40 ], [ %27, %43 ]
  %46 = phi ptr [ %33, %31 ], [ %42, %40 ], [ %25, %43 ]
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !50
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %8, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !87
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %114, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 31
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 256
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %114

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 18
  %60 = load ptr, ptr %59, align 8, !tbaa !102
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %60, i64 0, i32 31
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 512
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %58
  %66 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %49
  %67 = load i32, ptr %66, align 4, !tbaa !17
  %68 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 36
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 35
  %70 = load ptr, ptr %69, align 8, !tbaa !92
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %68, i32 noundef %48, ptr noundef %70) #23
  %71 = load ptr, ptr %68, align 8, !tbaa !95
  %72 = icmp eq ptr %71, null
  br i1 %72, label %109, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !93
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 8
  %77 = load i32, ptr %76, align 4, !tbaa !108
  %78 = tail call i32 @llvm.umax.i32(i32 %77, i32 1)
  %79 = mul nsw i32 %78, %21
  %80 = icmp sgt i32 %67, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %73
  %82 = zext nneg i32 %67 to i64
  br label %83

83:                                               ; preds = %81, %106
  %84 = phi i64 [ %82, %81 ], [ %86, %106 ]
  %85 = phi i8 [ 0, %81 ], [ %107, %106 ]
  %86 = add nsw i64 %84, -1
  %87 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %49, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !88
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %8, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !88
  %92 = sext i16 %91 to i64
  %93 = icmp slt i16 %91, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %83
  %95 = getelementptr inbounds i32, ptr %71, i64 %86
  %96 = load i32, ptr %95, align 4, !tbaa !17
  %97 = mul nsw i32 %96, %75
  %98 = sdiv i32 %97, %79
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = sub nsw i32 0, %98
  %102 = select i1 %9, i32 %98, i32 %101
  %103 = getelementptr inbounds i32, ptr @assign_hard_reg.full_costs, i64 %92
  %104 = load i32, ptr %103, align 4, !tbaa !17
  %105 = add nsw i32 %104, %102
  store i32 %105, ptr %103, align 4, !tbaa !17
  br label %106

106:                                              ; preds = %94, %83, %100
  %107 = phi i8 [ %85, %83 ], [ %85, %94 ], [ 1, %100 ]
  %108 = icmp ugt i64 %84, 1
  br i1 %108, label %83, label %109, !llvm.loop !187

109:                                              ; preds = %106, %65
  %110 = phi i8 [ 1, %65 ], [ %107, %106 ]
  %111 = icmp ne i8 %110, 0
  %112 = select i1 %111, i1 %22, i1 false
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  tail call fastcc void @queue_update_cost(ptr noundef %45, i32 noundef %23) #23
  br label %114

114:                                              ; preds = %73, %109, %113, %44, %53, %58
  %115 = icmp eq ptr %46, null
  br i1 %115, label %10, label %24, !llvm.loop !188

116:                                              ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #18 {
  %4 = sext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !87
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %12, %3
  %10 = phi i64 [ %13, %12 ], [ %8, %3 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %10, -1
  %14 = add nsw i64 %13, %4
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !189

18:                                               ; preds = %9, %12
  %19 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_cost_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !100
  %9 = sub nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !100
  %14 = sub i32 %13, %11
  %15 = add i32 %14, %9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, ptr %3, align 8, !tbaa !48
  %19 = load i32, ptr %4, align 8, !tbaa !48
  %20 = sub nsw i32 %18, %19
  br label %21

21:                                               ; preds = %2, %17
  %22 = phi i32 [ %20, %17 ], [ %15, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_ira_allocno_t_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  tail call fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_coalesced_allocno(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  tail call void @ira_print_expanded_allocno(ptr noundef %3) #24
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %8 = tail call i32 @fputc(i32 43, ptr %7)
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  tail call void @ira_print_expanded_allocno(ptr noundef %10) #24
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @get_next_update_cost(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 {
  %3 = load ptr, ptr @update_cost_queue, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  store ptr %3, ptr %0, align 8, !tbaa !18
  %6 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !18
  %7 = load i32, ptr %3, align 8, !tbaa !48
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %6, i64 %8, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !184
  store i32 %10, ptr %1, align 4, !tbaa !17
  %11 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %6, i64 %8, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !185
  store ptr %12, ptr @update_cost_queue, align 8, !tbaa !18
  br label %13

13:                                               ; preds = %2, %5
  %14 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = tail call fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #24
  store ptr %6, ptr %0, align 8, !tbaa !18
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !190
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !190
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef readonly %0) unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !192
  %6 = load i32, ptr %0, align 8, !tbaa !190
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
define internal i32 @copy_freq_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.ira_allocno_copy, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.ira_allocno_copy, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = sub nsw i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 8, !tbaa !116
  %13 = load i32, ptr %4, align 8, !tbaa !116
  %14 = sub nsw i32 %12, %13
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %14, %11 ], [ %9, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @coalesced_allocno_conflict_p(ptr noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %6 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  tail call void @bitmap_clear(ptr noundef %8) #24
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %0, %7 ], [ %12, %9 ]
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %14 = load i32, ptr %12, align 8, !tbaa !48
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #24
  %16 = icmp eq ptr %12, %0
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %3
  %18 = icmp eq i8 %2, 0
  br label %19

19:                                               ; preds = %48, %17
  %20 = phi ptr [ %1, %17 ], [ %22, %48 ]
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  br i1 %18, label %31, label %23

23:                                               ; preds = %19, %29
  %24 = phi ptr [ %26, %29 ], [ %0, %19 ]
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = tail call fastcc zeroext i8 @allocnos_have_intersected_live_ranges_p(ptr noundef %22, ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = icmp eq ptr %26, %0
  br i1 %30, label %47, label %23

31:                                               ; preds = %19
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %5, ptr noundef %22) #23
  %32 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %31, %44
  %35 = load ptr, ptr %4, align 8, !tbaa !18
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %41 = load i32, ptr %35, align 8, !tbaa !48
  %42 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37, %39
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %5) #23
  %45 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !20
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %34, !llvm.loop !193

47:                                               ; preds = %29
  store ptr %0, ptr %4, align 8, !tbaa !18
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
define internal fastcc void @merge_allocnos(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 18
  store ptr %4, ptr %12, align 8, !tbaa !102
  %13 = icmp eq ptr %11, %1
  br i1 %13, label %14, label %8

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %9, i64 0, i32 19
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  store ptr %1, ptr %16, align 8, !tbaa !97
  store ptr %17, ptr %15, align 8, !tbaa !97
  br label %18

18:                                               ; preds = %2, %14
  ret void
}

; Function Attrs: optsize
declare ptr @regstat_get_setjmp_crosses() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @slot_coalesced_allocno_live_ranges_intersect_p(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi ptr [ %0, %2 ], [ %7, %15 ]
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !18
  %9 = getelementptr inbounds ptr, ptr %8, i64 %3
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %10, ptr noundef %12) #24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = icmp eq ptr %7, %0
  br i1 %16, label %17, label %4

17:                                               ; preds = %15, %4
  %18 = phi i8 [ 1, %4 ], [ 0, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 8, !tbaa !121
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %0, %1 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = tail call ptr @ira_copy_allocno_live_range_list(ptr noundef %10) #24
  %12 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !18
  %13 = getelementptr inbounds ptr, ptr %12, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %14, ptr noundef %11) #24
  %16 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !18
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  store ptr %15, ptr %17, align 8, !tbaa !18
  %18 = icmp eq ptr %8, %0
  br i1 %18, label %19, label %5

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !87
  ret i32 %3
}

; Function Attrs: optsize
declare void @mark_home_live(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !18
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !194
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_coloring() unnamed_addr #0 {
  %1 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %1, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  %2 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !17
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #24
  store ptr %5, ptr @allocnos_for_spilling, align 8, !tbaa !18
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.19, i64 noundef 32, i64 noundef 100) #24
  store ptr %6, ptr @splay_tree_node_pool, align 8, !tbaa !18
  %7 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %8 = icmp sgt i32 %7, 0
  %9 = load ptr, ptr @ira_dump_file, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 26, i64 1, ptr nonnull %9)
  br label %14

14:                                               ; preds = %12, %0
  %15 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !18
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 0, ptr noundef %15, ptr noundef nonnull @color_pass, ptr noundef null) #24
  %16 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %17 = icmp sgt i32 %16, 1
  %18 = load ptr, ptr @ira_dump_file, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @ira_print_disposition(ptr noundef nonnull %18) #24
  br label %22

22:                                               ; preds = %21, %14
  %23 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !18
  tail call void @free_alloc_pool(ptr noundef %23) #24
  %24 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  tail call void @ira_free_bitmap(ptr noundef %24) #24
  %25 = load ptr, ptr @allocnos_for_spilling, align 8, !tbaa !18
  tail call void @ira_free(ptr noundef %25) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_spill_restore() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  br label %3

3:                                                ; preds = %204, %0
  %4 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %5 = icmp sgt i32 %4, 0
  %6 = load ptr, ptr @ira_dump_file, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 36, i64 1, ptr nonnull %6)
  br label %11

11:                                               ; preds = %9, %3
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #23
  %12 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %207, label %14

14:                                               ; preds = %11, %200
  %15 = phi i8 [ %201, %200 ], [ 0, %11 ]
  br label %16

16:                                               ; preds = %14, %54
  %17 = load ptr, ptr %1, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !51
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !87
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %45 = getelementptr inbounds ptr, ptr %44, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !200
  %51 = load i32, ptr %17, align 8, !tbaa !48
  %52 = tail call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %51) #24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %43, %37, %33, %29, %25, %16
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %204, label %16, !llvm.loop !201

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 3
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !77
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !50
  %63 = zext i32 %62 to i64
  %64 = zext nneg i32 %31 to i64
  %65 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %63, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !88
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 12
  %68 = load i32, ptr %67, align 4, !tbaa !75
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 33
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 10
  %73 = sext i16 %66 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  %75 = select i1 %71, ptr %72, ptr %74
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = sub nsw i32 %68, %76
  %78 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !18
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
  %89 = load ptr, ptr %88, align 8, !tbaa !202
  %90 = getelementptr inbounds ptr, ptr %89, i64 %39
  %91 = load ptr, ptr %90, align 8, !tbaa !18
  %92 = icmp eq ptr %91, null
  br i1 %92, label %132, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 12
  %95 = load i32, ptr %94, align 4, !tbaa !75
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 33
  %97 = load ptr, ptr %96, align 8, !tbaa !91
  %98 = icmp eq ptr %97, null
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 10
  %100 = getelementptr inbounds i32, ptr %97, i64 %73
  %101 = select i1 %98, ptr %99, ptr %100
  %102 = load i32, ptr %101, align 4, !tbaa !17
  %103 = sub i32 %102, %95
  %104 = add i32 %103, %87
  %105 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %86, i32 noundef %19, i8 noundef zeroext 1) #23, !range !203
  %106 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %86, i32 noundef %19, i8 noundef zeroext 0) #23, !range !203
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %91, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !51
  %109 = icmp slt i32 %108, 0
  %110 = load i16, ptr %83, align 4, !tbaa !88
  %111 = sext i16 %110 to i32
  br i1 %109, label %112, label %119

112:                                              ; preds = %93
  %113 = load i16, ptr %84, align 2, !tbaa !88
  %114 = sext i16 %113 to i32
  %115 = mul i32 %105, %111
  %116 = mul i32 %106, %114
  %117 = add i32 %116, %115
  %118 = sub i32 %104, %117
  br label %132

119:                                              ; preds = %93
  %120 = mul nsw i32 %105, %111
  %121 = load i16, ptr %84, align 2, !tbaa !88
  %122 = sext i16 %121 to i32
  %123 = mul nsw i32 %106, %122
  %124 = add i32 %120, %104
  %125 = add i32 %124, %123
  %126 = icmp eq i32 %108, %31
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %60, i32 noundef %62, i32 noundef %62) #23, !range !90
  %129 = add nsw i32 %106, %105
  %130 = mul nsw i32 %128, %129
  %131 = sub nsw i32 %125, %130
  br label %132

132:                                              ; preds = %112, %127, %119, %85
  %133 = phi i32 [ %87, %85 ], [ %118, %112 ], [ %131, %127 ], [ %125, %119 ]
  %134 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %86, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !18
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %85, !llvm.loop !204

137:                                              ; preds = %132, %57
  %138 = phi i32 [ %77, %57 ], [ %133, %132 ]
  %139 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !205
  %141 = icmp eq ptr %140, null
  br i1 %141, label %182, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %140, i64 0, i32 9
  %144 = load ptr, ptr %143, align 8, !tbaa !202
  %145 = getelementptr inbounds ptr, ptr %144, i64 %39
  %146 = load ptr, ptr %145, align 8, !tbaa !18
  %147 = icmp eq ptr %146, null
  br i1 %147, label %182, label %148

148:                                              ; preds = %142
  %149 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %21, i32 noundef %19, i8 noundef zeroext 1) #23, !range !203
  %150 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %21, i32 noundef %19, i8 noundef zeroext 0) #23, !range !203
  %151 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !51
  %153 = icmp slt i32 %152, 0
  %154 = zext i32 %60 to i64
  %155 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %154, i64 %63
  br i1 %153, label %156, label %166

156:                                              ; preds = %148
  %157 = load i16, ptr %155, align 4, !tbaa !88
  %158 = sext i16 %157 to i32
  %159 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %154, i64 %63, i64 1
  %160 = load i16, ptr %159, align 2, !tbaa !88
  %161 = sext i16 %160 to i32
  %162 = mul i32 %149, %158
  %163 = mul i32 %150, %161
  %164 = add i32 %163, %162
  %165 = sub i32 %138, %164
  br label %182

166:                                              ; preds = %148
  %167 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %154, i64 %63, i64 1
  %168 = load i16, ptr %167, align 2, !tbaa !88
  %169 = sext i16 %168 to i32
  %170 = mul nsw i32 %149, %169
  %171 = load i16, ptr %155, align 4, !tbaa !88
  %172 = sext i16 %171 to i32
  %173 = mul nsw i32 %150, %172
  %174 = add i32 %170, %138
  %175 = add i32 %174, %173
  %176 = icmp eq i32 %152, %31
  br i1 %176, label %182, label %177

177:                                              ; preds = %166
  %178 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %60, i32 noundef %62, i32 noundef %62) #23, !range !90
  %179 = add nsw i32 %150, %149
  %180 = mul nsw i32 %178, %179
  %181 = sub nsw i32 %175, %180
  br label %182

182:                                              ; preds = %156, %177, %166, %142, %137
  %183 = phi i32 [ %165, %156 ], [ %181, %177 ], [ %175, %166 ], [ %138, %142 ], [ %138, %137 ]
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  store i32 -1, ptr %58, align 4, !tbaa !51
  %186 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %187 = icmp sgt i32 %186, 3
  %188 = load ptr, ptr @ira_dump_file, align 8
  %189 = icmp ne ptr %188, null
  %190 = select i1 %187, i1 %189, i1 false
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load i32, ptr %17, align 8, !tbaa !48
  %193 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !5
  %195 = load i32, ptr %194, align 8, !tbaa !206
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %188, ptr noundef nonnull @.str.44, i32 noundef %192, i32 noundef %19, i32 noundef %195) #23
  %197 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %198 = sub nsw i32 0, %183
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.45, i32 noundef %198) #23
  br label %200

200:                                              ; preds = %185, %191, %182
  %201 = phi i8 [ %15, %182 ], [ 1, %191 ], [ 1, %185 ]
  %202 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %14, !llvm.loop !201

204:                                              ; preds = %200, %54
  %205 = phi i8 [ %15, %54 ], [ %201, %200 ]
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %3

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
define internal void @color_pass(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %5 = icmp sgt i32 %4, 1
  %6 = load ptr, ptr @ira_dump_file, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call fastcc void @print_loop_title(ptr noundef %0) #23
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !207
  tail call void @bitmap_copy(ptr noundef %11, ptr noundef %13) #24
  %14 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  %15 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  tail call void @bitmap_copy(ptr noundef %14, ptr noundef %15) #24
  %16 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %16, i32 noundef 0, ptr noundef nonnull %2) #23
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %19, %36
  %22 = phi ptr [ %20, %19 ], [ %37, %36 ]
  %23 = load i32, ptr %2, align 4, !tbaa !17
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %26, i64 0, i32 31
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 256
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  %33 = load i32, ptr %26, align 8, !tbaa !48
  %34 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %33) #24
  %35 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  br label %36

36:                                               ; preds = %21, %31
  %37 = phi ptr [ %22, %21 ], [ %35, %31 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %21, !llvm.loop !208

40:                                               ; preds = %36, %10
  tail call fastcc void @color_allocnos() #23
  %41 = load i32, ptr @flag_ira_region, align 4
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %99

44:                                               ; preds = %40
  %45 = load ptr, ptr %12, align 8, !tbaa !207
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %45, i32 noundef 0, ptr noundef nonnull %2) #23
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %44, %95
  %49 = phi i32 [ %96, %95 ], [ -1, %44 ]
  %50 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %51 = load i32, ptr %2, align 4, !tbaa !17
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !197
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58

58:                                               ; preds = %48
  %59 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  %60 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %59, i32 noundef %51) #24
  %61 = load i32, ptr @flag_ira_region, align 4, !tbaa !17
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %95

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !50
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !17
  %69 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %66
  %70 = load i32, ptr %69, align 4, !tbaa !17
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %95, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !51
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %55, align 8, !tbaa !197
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %77, i64 0, i32 3
  store i32 %74, ptr %78, align 4, !tbaa !51
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %77, i64 0, i32 31
  %80 = load i16, ptr %79, align 4
  %81 = or i16 %80, 256
  store i16 %81, ptr %79, align 4
  br label %92

82:                                               ; preds = %72
  %83 = zext nneg i32 %74 to i64
  %84 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %66, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !88
  %86 = sext i16 %85 to i32
  %87 = load ptr, ptr %55, align 8, !tbaa !197
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 3
  store i32 %74, ptr %88, align 4, !tbaa !51
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
  %97 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %48, !llvm.loop !209

99:                                               ; preds = %95, %44, %40
  %100 = phi i32 [ -1, %40 ], [ -1, %44 ], [ %96, %95 ]
  %101 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !18
  %103 = icmp eq ptr %102, null
  br i1 %103, label %254, label %104

104:                                              ; preds = %99, %249
  %105 = phi ptr [ %252, %249 ], [ %102, %99 ]
  %106 = phi i32 [ %250, %249 ], [ %100, %99 ]
  %107 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %107, i32 noundef 0, ptr noundef nonnull %2) #23
  %108 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %249, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %105, i64 0, i32 9
  br label %112

112:                                              ; preds = %110, %246
  %113 = phi i32 [ %106, %110 ], [ %133, %246 ]
  %114 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %115 = load i32, ptr %2, align 4, !tbaa !17
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !18
  %119 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !77
  %121 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 9
  %122 = load i32, ptr %121, align 8, !tbaa !50
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 3
  %124 = load i32, ptr %123, align 4, !tbaa !51
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = zext i32 %122 to i64
  %128 = zext nneg i32 %124 to i64
  %129 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %127, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !88
  %131 = sext i16 %130 to i32
  br label %132

132:                                              ; preds = %126, %112
  %133 = phi i32 [ %131, %126 ], [ %113, %112 ]
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %118, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !52
  %136 = load ptr, ptr %111, align 8, !tbaa !202
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds ptr, ptr %136, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !18
  %140 = icmp eq ptr %139, null
  br i1 %140, label %246, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 16
  %143 = load ptr, ptr %142, align 8, !tbaa !198
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %246

145:                                              ; preds = %141
  %146 = load i32, ptr @flag_ira_region, align 4, !tbaa !17
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = zext i32 %122 to i64
  %150 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !17
  %152 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %149
  %153 = load i32, ptr %152, align 4, !tbaa !17
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
  store i32 %124, ptr %161, align 4, !tbaa !51
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
  %166 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %105, i32 noundef %135, i8 noundef zeroext 1) #23, !range !203
  %167 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %105, i32 noundef %135, i8 noundef zeroext 0) #23, !range !203
  %168 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !18
  %169 = getelementptr inbounds i8, ptr %168, i64 %137
  %170 = load i8, ptr %169, align 1, !tbaa !87
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !18
  %174 = getelementptr inbounds ptr, ptr %173, i64 %137
  %175 = load ptr, ptr %174, align 8, !tbaa !18
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
  store i32 %124, ptr %183, align 4, !tbaa !51
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
  %194 = load i16, ptr %193, align 2, !tbaa !88
  %195 = sext i16 %194 to i32
  %196 = load i16, ptr %192, align 4, !tbaa !88
  %197 = sext i16 %196 to i32
  %198 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 13
  %199 = load i32, ptr %198, align 8, !tbaa !98
  %200 = mul i32 %167, %195
  %201 = mul i32 %166, %197
  %202 = add i32 %201, %200
  %203 = sub i32 %199, %202
  store i32 %203, ptr %198, align 8, !tbaa !98
  br label %246

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 9
  %206 = load i32, ptr %205, align 8, !tbaa !50
  %207 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %120, i32 noundef %122, i32 noundef %122) #23, !range !90
  %208 = add nsw i32 %167, %166
  %209 = mul nsw i32 %207, %208
  %210 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 34
  %211 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 11
  %212 = load i32, ptr %211, align 8, !tbaa !100
  %213 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 33
  %214 = load ptr, ptr %213, align 8, !tbaa !91
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %210, i32 noundef %206, i32 noundef %212, ptr noundef %214) #23
  %215 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 36
  %216 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 35
  %217 = load ptr, ptr %216, align 8, !tbaa !92
  tail call fastcc void @ira_allocate_and_set_or_copy_costs(ptr noundef nonnull %215, i32 noundef %206, i32 noundef 0, ptr noundef %217) #23
  %218 = load ptr, ptr %210, align 8, !tbaa !94
  %219 = sext i32 %133 to i64
  %220 = getelementptr inbounds i32, ptr %218, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !17
  %222 = sub nsw i32 %221, %209
  store i32 %222, ptr %220, align 4, !tbaa !17
  %223 = load ptr, ptr %215, align 8, !tbaa !95
  %224 = getelementptr inbounds i32, ptr %223, i64 %219
  %225 = load i32, ptr %224, align 4, !tbaa !17
  %226 = sub nsw i32 %225, %209
  store i32 %226, ptr %224, align 4, !tbaa !17
  %227 = load i32, ptr %211, align 8, !tbaa !100
  %228 = load i32, ptr %220, align 4, !tbaa !17
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %204
  store i32 %228, ptr %211, align 8, !tbaa !100
  br label %231

231:                                              ; preds = %230, %204
  %232 = zext i32 %120 to i64
  %233 = zext i32 %122 to i64
  %234 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %232, i64 %233
  %235 = load i16, ptr %234, align 4, !tbaa !88
  %236 = sext i16 %235 to i32
  %237 = mul nsw i32 %167, %236
  %238 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %232, i64 %233, i64 1
  %239 = load i16, ptr %238, align 2, !tbaa !88
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %166, %240
  %242 = getelementptr inbounds %struct.ira_allocno, ptr %139, i64 0, i32 13
  %243 = load i32, ptr %242, align 8, !tbaa !98
  %244 = add i32 %243, %237
  %245 = add i32 %244, %241
  store i32 %245, ptr %242, align 8, !tbaa !98
  br label %246

246:                                              ; preds = %186, %177, %231, %189, %155, %164, %132, %141
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %247 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %112, !llvm.loop !210

249:                                              ; preds = %246, %104
  %250 = phi i32 [ %106, %104 ], [ %133, %246 ]
  %251 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %105, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !18
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %104, !llvm.loop !211

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
define internal fastcc void @print_loop_title(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %6 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load i32, ptr %8, align 8, !tbaa !206
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !205
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i32, ptr %15, align 8, !tbaa !206
  br label %17

17:                                               ; preds = %1, %13
  %18 = phi i32 [ %16, %13 ], [ -1, %1 ]
  %19 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !24
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %8) #23
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %18, i32 noundef %22, i32 noundef %23) #23
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %77, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds i8, ptr %5, i64 8
  br label %30

30:                                               ; preds = %28, %73
  %31 = phi ptr [ %26, %28 ], [ %75, %73 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !212
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !24
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %37) #23
  %39 = load ptr, ptr %31, align 8, !tbaa !212
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %41 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %40) #23
  store i32 0, ptr %5, align 8, !tbaa.struct !16
  store ptr %41, ptr %29, align 8, !tbaa.struct !19
  %42 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %41, ptr noundef nonnull %4) #23, !range !20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %34, %68
  %45 = load ptr, ptr %4, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !28
  %48 = load ptr, ptr @cfun, align 8, !tbaa !18
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !213
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !18
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !24
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %55, i64 %58, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !205
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %64 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = load i32, ptr %65, align 8, !tbaa !206
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.22, i32 noundef %57, i32 noundef %66) #23
  br label %68

68:                                               ; preds = %44, %54, %62
  call fastcc void @ei_next(ptr noundef nonnull %5) #23
  %69 = load i32, ptr %5, align 8
  %70 = load ptr, ptr %29, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %4) #23, !range !20
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %44, !llvm.loop !214

73:                                               ; preds = %68, %34, %30
  %74 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %30, !llvm.loop !215

77:                                               ; preds = %73, %17
  %78 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %79 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 9, i64 1, ptr %78)
  %80 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !207
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %81, i32 noundef 0, ptr noundef nonnull %2) #23
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %77, %84
  %85 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %86 = load i32, ptr %2, align 4, !tbaa !17
  %87 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !52
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.24, i32 noundef %86, i32 noundef %92) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %94 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %84, !llvm.loop !216

96:                                               ; preds = %84, %77
  %97 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %98 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr %97)
  %99 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %100 = load ptr, ptr %99, align 8, !tbaa !217
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %100, i32 noundef 0, ptr noundef nonnull %2) #23
  %101 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96, %103
  %104 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %105 = load i32, ptr %2, align 4, !tbaa !17
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.8, i32 noundef %105) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %107 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %103, !llvm.loop !218

109:                                              ; preds = %103, %96
  %110 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %111 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %110)
  %112 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 13
  %113 = load ptr, ptr %112, align 8, !tbaa !200
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %113, i32 noundef 0, ptr noundef nonnull %2) #23
  %114 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %109, %116
  %117 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %118 = load i32, ptr %2, align 4, !tbaa !17
  %119 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !18
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !52
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.24, i32 noundef %118, i32 noundef %124) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #23
  %126 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %116, !llvm.loop !219

128:                                              ; preds = %116, %109
  %129 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %130 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr %129)
  %131 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128, %148
  %134 = phi i32 [ %149, %148 ], [ %131, %128 ]
  %135 = phi i64 [ %150, %148 ], [ 0, %128 ]
  %136 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !17
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !17
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %144 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %138
  %145 = load ptr, ptr %144, align 8, !tbaa !18
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.28, ptr noundef %145, i32 noundef %140) #23
  %147 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  br label %148

148:                                              ; preds = %133, %142
  %149 = phi i32 [ %134, %133 ], [ %147, %142 ]
  %150 = add nuw nsw i64 %135, 1
  %151 = sext i32 %149 to i64
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %133, label %153, !llvm.loop !220

153:                                              ; preds = %148, %128
  %154 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
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
define internal fastcc void @color_allocnos() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  store i1 false, ptr @allocno_coalesced_p, align 1
  %3 = tail call ptr @ira_allocate_bitmap() #24
  store ptr %3, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %4 = load i32, ptr @flag_ira_coalesce, align 4, !tbaa !17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call fastcc void @coalesce_allocnos(i8 noundef zeroext 0) #23
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !17
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %86

10:                                               ; preds = %7
  %11 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %1) #23
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %119, label %14

14:                                               ; preds = %10, %43
  %15 = phi i32 [ %44, %43 ], [ 0, %10 ]
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %17 = load i32, ptr %1, align 4, !tbaa !17
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 3
  store i32 -1, ptr %25, align 4, !tbaa !51
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 31
  %27 = load i16, ptr %26, align 4
  %28 = or i16 %27, 256
  store i16 %28, ptr %26, align 4
  %29 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %30 = icmp sgt i32 %29, 3
  %31 = load ptr, ptr @ira_dump_file, align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr nonnull %31)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %20) #23
  %36 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %43

38:                                               ; preds = %14
  %39 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %40 = add i32 %15, 1
  %41 = zext i32 %15 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %20, ptr %42, align 8, !tbaa !18
  br label %43

43:                                               ; preds = %24, %34, %38
  %44 = phi i32 [ %15, %34 ], [ %15, %24 ], [ %40, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %14, !llvm.loop !221

47:                                               ; preds = %43
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %119, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  tail call fastcc void @setup_allocno_priorities(ptr noundef %50, i32 noundef %44) #23
  %51 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %52 = zext i32 %44 to i64
  tail call void @spec_qsort(ptr noundef %51, i64 noundef %52, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #24
  br label %53

53:                                               ; preds = %49, %83
  %54 = phi i64 [ 0, %49 ], [ %84, %83 ]
  %55 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %59 = icmp sgt i32 %58, 3
  %60 = load ptr, ptr @ira_dump_file, align 8
  %61 = icmp ne ptr %60, null
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 6, i64 1, ptr nonnull %60)
  tail call fastcc void @print_coalesced_allocno(ptr noundef %57) #23
  %65 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %66 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %65)
  br label %67

67:                                               ; preds = %63, %53
  %68 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %57, i8 noundef zeroext 0) #23, !range !20
  %69 = icmp eq i8 %68, 0
  %70 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %71 = icmp sgt i32 %70, 3
  %72 = load ptr, ptr @ira_dump_file, align 8
  %73 = icmp ne ptr %72, null
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %69, label %80, label %75

75:                                               ; preds = %67
  br i1 %74, label %76, label %83

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %57, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !51
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
  br i1 %85, label %118, label %53, !llvm.loop !222

86:                                               ; preds = %7
  store ptr null, ptr @colorable_allocno_bucket, align 8, !tbaa !18
  store ptr null, ptr @uncolorable_allocno_bucket, align 8, !tbaa !18
  %87 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %87, i32 noundef 0, ptr noundef nonnull %1) #23
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %86, %114
  %91 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  %92 = load i32, ptr %1, align 4, !tbaa !17
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !18
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %95, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !50
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %95, i64 0, i32 3
  store i32 -1, ptr %100, align 4, !tbaa !51
  %101 = getelementptr inbounds %struct.ira_allocno, ptr %95, i64 0, i32 31
  %102 = load i16, ptr %101, align 4
  %103 = or i16 %102, 256
  store i16 %103, ptr %101, align 4
  %104 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %105 = icmp sgt i32 %104, 3
  %106 = load ptr, ptr @ira_dump_file, align 8
  %107 = icmp ne ptr %106, null
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr nonnull %106)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %95) #23
  %111 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %112 = tail call i32 @fputc(i32 10, ptr %111)
  br label %114

113:                                              ; preds = %90
  tail call fastcc void @put_allocno_into_bucket(ptr noundef nonnull %95) #23
  br label %114

114:                                              ; preds = %99, %109, %113
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %115 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %90, !llvm.loop !223

117:                                              ; preds = %114, %86
  tail call fastcc void @push_allocnos_to_stack() #23
  tail call fastcc void @pop_allocnos_from_stack() #23
  br label %119

118:                                              ; preds = %83
  store i32 %44, ptr %1, align 4, !tbaa !17
  br label %119

119:                                              ; preds = %10, %118, %47, %117
  %120 = load i32, ptr @flag_ira_coalesce, align 4, !tbaa !17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %123, i32 noundef 0, ptr noundef nonnull %1) #23
  %124 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr @ira_allocnos, align 8, !tbaa !18
  br label %128

128:                                              ; preds = %126, %128
  %129 = load i32, ptr %1, align 4, !tbaa !17
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %127, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !18
  %133 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 18
  store ptr %132, ptr %133, align 8, !tbaa !102
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 19
  store ptr %132, ptr %134, align 8, !tbaa !97
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %135 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #23, !range !20
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %128, !llvm.loop !224

137:                                              ; preds = %128, %122, %119
  %138 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  tail call void @ira_free_bitmap(ptr noundef %138) #24
  store i1 false, ptr @allocno_coalesced_p, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #23
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !226
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @put_allocno_into_bucket(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %9 = load i16, ptr %8, align 4
  %10 = or i16 %9, 128
  store i16 %10, ptr %8, align 4
  tail call fastcc void @setup_allocno_left_conflicts_size(ptr noundef nonnull %0) #23
  tail call fastcc void @setup_allocno_available_regs_num(ptr noundef nonnull %0) #23
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 37
  %12 = load i32, ptr %11, align 8, !tbaa !228
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !77
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %13, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = add nsw i32 %18, %12
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  %21 = load i32, ptr %20, align 4, !tbaa !229
  %22 = icmp sgt i32 %19, %21
  %23 = select i1 %22, ptr @uncolorable_allocno_bucket, ptr @colorable_allocno_bucket
  tail call fastcc void @add_allocno_to_bucket(ptr noundef nonnull %0, ptr noundef nonnull %23) #23
  br label %24

24:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_allocnos_to_stack() unnamed_addr #0 {
  %1 = alloca [27 x i32], align 16
  %2 = alloca [27 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %2) #22
  %3 = load ptr, ptr @removed_splay_allocno_vec, align 8
  tail call fastcc void @VEC_ira_allocno_t_base_truncate(ptr noundef %3) #23
  %4 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = zext nneg i32 %4 to i64
  br label %11

8:                                                ; preds = %11, %0
  %9 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %26

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %19, %11 ]
  %13 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !17
  %17 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %15
  store ptr null, ptr %17, align 8, !tbaa !18
  %18 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %15
  store ptr null, ptr %18, align 8, !tbaa !18
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %8, label %11, !llvm.loop !230

21:                                               ; preds = %46
  %22 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i32 [ %22, %21 ], [ %4, %8 ]
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %53, label %50

26:                                               ; preds = %8, %46
  %27 = phi ptr [ %48, %46 ], [ %9, %8 ]
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !50
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !17
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !17
  br label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %27, %31 ], [ %40, %36 ]
  %38 = phi i32 [ 0, %31 ], [ %42, %36 ]
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = tail call fastcc i32 @calculate_allocno_spill_cost(ptr noundef %40) #23
  %42 = add nsw i32 %41, %38
  %43 = icmp eq ptr %40, %27
  br i1 %43, label %44, label %36

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 41
  store i32 %42, ptr %45, align 8, !tbaa !121
  br label %46

46:                                               ; preds = %26, %44
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 39
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %21, label %26, !llvm.loop !231

50:                                               ; preds = %78, %23
  %51 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %83, label %86

53:                                               ; preds = %23, %78
  %54 = phi i32 [ %79, %78 ], [ %24, %23 ]
  %55 = phi i64 [ %80, %78 ], [ 0, %23 ]
  %56 = phi i32 [ %70, %78 ], [ 0, %23 ]
  %57 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %55
  %58 = load i32, ptr %57, align 4, !tbaa !17
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %53
  %64 = load ptr, ptr @allocnos_for_spilling, align 8, !tbaa !18
  %65 = sext i32 %56 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %59
  store ptr %66, ptr %67, align 8, !tbaa !18
  %68 = add nsw i32 %61, %56
  store i32 0, ptr %60, align 4, !tbaa !17
  br label %69

69:                                               ; preds = %63, %53
  %70 = phi i32 [ %68, %63 ], [ %56, %53 ]
  %71 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %59
  %72 = load i32, ptr %71, align 4, !tbaa !17
  %73 = icmp sgt i32 %72, 4000
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @allocno_spill_priority_compare, ptr noundef null, ptr noundef null, ptr noundef nonnull @splay_tree_allocate, ptr noundef nonnull @splay_tree_free, ptr noundef null) #24
  %76 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %59
  store ptr %75, ptr %76, align 8, !tbaa !18
  %77 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  br label %78

78:                                               ; preds = %69, %74
  %79 = phi i32 [ %54, %69 ], [ %77, %74 ]
  %80 = add nuw nsw i64 %55, 1
  %81 = sext i32 %79 to i64
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %53, label %50, !llvm.loop !232

83:                                               ; preds = %106, %50
  tail call fastcc void @push_only_colorable() #23
  %84 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !18
  %85 = icmp eq ptr %84, null
  br i1 %85, label %110, label %113

86:                                               ; preds = %50, %106
  %87 = phi ptr [ %108, %106 ], [ %51, %50 ]
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 9
  %89 = load i32, ptr %88, align 8, !tbaa !50
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = zext i32 %89 to i64
  %93 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %92
  %96 = load i32, ptr %95, align 4, !tbaa !17
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %95, align 4, !tbaa !17
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds ptr, ptr %94, i64 %98
  store ptr %87, ptr %99, align 8, !tbaa !18
  %100 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %92
  %101 = load ptr, ptr %100, align 8, !tbaa !18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = ptrtoint ptr %87 to i64
  %105 = tail call ptr @splay_tree_insert(ptr noundef nonnull %101, i64 noundef %104, i64 noundef %104) #24
  br label %106

106:                                              ; preds = %86, %103, %91
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %87, i64 0, i32 39
  %108 = load ptr, ptr %107, align 8, !tbaa !18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %83, label %86, !llvm.loop !233

110:                                              ; preds = %119, %83
  %111 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %254, label %270

113:                                              ; preds = %83, %119
  %114 = phi ptr [ %120, %119 ], [ %84, %83 ]
  %115 = getelementptr inbounds %struct.ira_allocno, ptr %114, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !50
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  tail call fastcc void @push_allocno_to_spill(ptr noundef nonnull %114) #23
  br label %119

119:                                              ; preds = %118, %252
  tail call fastcc void @push_only_colorable() #23
  %120 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !18
  %121 = icmp eq ptr %120, null
  br i1 %121, label %110, label %113

122:                                              ; preds = %113
  %123 = zext i32 %116 to i64
  %124 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !17
  %126 = icmp sgt i32 %125, 4000
  br i1 %126, label %127, label %167

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
  %138 = load i32, ptr %137, align 8, !tbaa !50
  %139 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 37
  %140 = load i32, ptr %139, align 8, !tbaa !228
  %141 = zext i32 %138 to i64
  %142 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !77
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %141, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !17
  %147 = add nsw i32 %146, %140
  %148 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 38
  %149 = load i32, ptr %148, align 4, !tbaa !229
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %131
  %152 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %141
  %153 = load ptr, ptr %152, align 8, !tbaa !18
  %154 = ptrtoint ptr %133 to i64
  %155 = tail call ptr @splay_tree_insert(ptr noundef %153, i64 noundef %154, i64 noundef %154) #24
  br label %156

156:                                              ; preds = %151, %131
  %157 = load ptr, ptr @removed_splay_allocno_vec, align 8
  %158 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %157) #23
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %131, !llvm.loop !234

160:                                              ; preds = %156, %127
  %161 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %123
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  %163 = tail call ptr @splay_tree_min(ptr noundef %162) #24
  %164 = load i64, ptr %163, align 8, !tbaa !235
  %165 = inttoptr i64 %164 to ptr
  %166 = load ptr, ptr %161, align 8, !tbaa !18
  tail call void @splay_tree_remove(ptr noundef %166, i64 noundef %164) #24
  br label %252

167:                                              ; preds = %122
  %168 = getelementptr inbounds [27 x i32], ptr %1, i64 0, i64 %123
  %169 = load i32, ptr %168, align 4, !tbaa !17
  %170 = getelementptr inbounds [27 x ptr], ptr %2, i64 0, i64 %123
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = add nsw i32 %169, -1
  %173 = icmp slt i32 %169, 1
  br i1 %173, label %248, label %174

174:                                              ; preds = %167, %232
  %175 = phi i32 [ %246, %232 ], [ %172, %167 ]
  %176 = phi i32 [ %236, %232 ], [ 0, %167 ]
  %177 = phi ptr [ %235, %232 ], [ null, %167 ]
  %178 = phi i32 [ %234, %232 ], [ 0, %167 ]
  %179 = phi i32 [ %233, %232 ], [ 0, %167 ]
  %180 = sext i32 %176 to i64
  %181 = getelementptr inbounds ptr, ptr %171, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !18
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %182, i64 0, i32 31
  %184 = load i16, ptr %183, align 4
  %185 = and i16 %184, 128
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %174
  %188 = sext i32 %175 to i64
  %189 = getelementptr inbounds ptr, ptr %171, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !18
  %191 = getelementptr inbounds %struct.ira_allocno, ptr %190, i64 0, i32 31
  %192 = load i16, ptr %191, align 4
  %193 = and i16 %192, 128
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %232, label %195

195:                                              ; preds = %187
  store ptr %182, ptr %189, align 8, !tbaa !18
  store ptr %190, ptr %181, align 8, !tbaa !18
  %196 = load i16, ptr %191, align 4
  %197 = and i16 %196, 128
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %232, label %199

199:                                              ; preds = %174, %195
  %200 = phi ptr [ %190, %195 ], [ %182, %174 ]
  %201 = phi i16 [ %196, %195 ], [ %184, %174 ]
  %202 = add nsw i32 %176, 1
  %203 = getelementptr inbounds %struct.ira_allocno, ptr %200, i64 0, i32 41
  %204 = load i32, ptr %203, align 8, !tbaa !121
  %205 = tail call fastcc i32 @allocno_spill_priority(ptr noundef nonnull %200) #23
  %206 = icmp eq ptr %177, null
  br i1 %206, label %231, label %207

207:                                              ; preds = %199
  %208 = and i16 %201, 64
  %209 = icmp eq i16 %208, 0
  %210 = getelementptr inbounds %struct.ira_allocno, ptr %177, i64 0, i32 31
  %211 = load i16, ptr %210, align 4
  %212 = and i16 %211, 64
  br i1 %209, label %213, label %217

213:                                              ; preds = %207
  %214 = icmp ne i16 %212, 0
  %215 = icmp sgt i32 %179, %205
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %231, label %221

217:                                              ; preds = %207
  %218 = icmp eq i16 %212, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %217
  %220 = icmp sgt i32 %179, %205
  br i1 %220, label %231, label %221

221:                                              ; preds = %213, %219
  %222 = icmp eq i32 %179, %205
  br i1 %222, label %223, label %232

223:                                              ; preds = %221
  %224 = icmp sgt i32 %178, %204
  br i1 %224, label %231, label %225

225:                                              ; preds = %223
  %226 = icmp eq i32 %178, %204
  br i1 %226, label %227, label %232

227:                                              ; preds = %225
  %228 = load i32, ptr %177, align 8, !tbaa !48
  %229 = load i32, ptr %200, align 8, !tbaa !48
  %230 = icmp sgt i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227, %223, %219, %213, %199
  br label %232

232:                                              ; preds = %187, %217, %221, %225, %227, %231, %195
  %233 = phi i32 [ %205, %231 ], [ %179, %227 ], [ %179, %225 ], [ %179, %221 ], [ %179, %217 ], [ %179, %195 ], [ %179, %187 ]
  %234 = phi i32 [ %204, %231 ], [ %178, %227 ], [ %178, %225 ], [ %178, %221 ], [ %178, %217 ], [ %178, %195 ], [ %178, %187 ]
  %235 = phi ptr [ %200, %231 ], [ %177, %227 ], [ %177, %225 ], [ %177, %221 ], [ %177, %217 ], [ %177, %195 ], [ %177, %187 ]
  %236 = phi i32 [ %202, %231 ], [ %202, %227 ], [ %202, %225 ], [ %202, %221 ], [ %202, %217 ], [ %176, %195 ], [ %176, %187 ]
  %237 = sext i32 %175 to i64
  %238 = getelementptr inbounds ptr, ptr %171, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !18
  %240 = getelementptr inbounds %struct.ira_allocno, ptr %239, i64 0, i32 31
  %241 = load i16, ptr %240, align 4
  %242 = lshr i16 %241, 7
  %243 = and i16 %242, 1
  %244 = add nsw i16 %243, -1
  %245 = sext i16 %244 to i32
  %246 = add nsw i32 %175, %245
  %247 = icmp sgt i32 %236, %246
  br i1 %247, label %248, label %174, !llvm.loop !237

248:                                              ; preds = %232, %167
  %249 = phi ptr [ null, %167 ], [ %235, %232 ]
  %250 = phi i32 [ %172, %167 ], [ %246, %232 ]
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %168, align 4, !tbaa !17
  br label %252

252:                                              ; preds = %248, %160
  %253 = phi ptr [ %165, %160 ], [ %249, %248 ]
  tail call fastcc void @remove_allocno_from_bucket_and_push(ptr noundef %253, i8 noundef zeroext 0) #23
  br label %119

254:                                              ; preds = %110, %265
  %255 = phi i32 [ %266, %265 ], [ %111, %110 ]
  %256 = phi i64 [ %267, %265 ], [ 0, %110 ]
  %257 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !17
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !18
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %254
  tail call void @splay_tree_delete(ptr noundef nonnull %261) #24
  %264 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  br label %265

265:                                              ; preds = %254, %263
  %266 = phi i32 [ %255, %254 ], [ %264, %263 ]
  %267 = add nuw nsw i64 %256, 1
  %268 = sext i32 %266 to i64
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %254, label %270, !llvm.loop !238

270:                                              ; preds = %265, %110
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pop_allocnos_from_stack() unnamed_addr #0 {
  %1 = load ptr, ptr @allocno_stack_vec, align 8
  %2 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %0, %58
  %5 = phi ptr [ %62, %58 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_ira_allocno_t_base_pop(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %10 = icmp sgt i32 %9, 3
  %11 = load ptr, ptr @ira_dump_file, align 8
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 13, i64 1, ptr nonnull %11)
  tail call fastcc void @print_coalesced_allocno(ptr noundef nonnull %6) #23
  %16 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
  %17 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  store i32 -1, ptr %21, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %23 = load i16, ptr %22, align 4
  %24 = or i16 %23, 256
  store i16 %24, ptr %22, align 4
  %25 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %26 = icmp sgt i32 %25, 3
  %27 = load ptr, ptr @ira_dump_file, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %58

30:                                               ; preds = %20
  %31 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr nonnull %27)
  br label %58

32:                                               ; preds = %18
  %33 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef nonnull %6, i8 noundef zeroext 0) #23, !range !20
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %37 = icmp sgt i32 %36, 3
  %38 = load ptr, ptr @ira_dump_file, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !51
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.41, i32 noundef %43) #23
  br label %58

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 256
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %52 = icmp sgt i32 %51, 3
  %53 = load ptr, ptr @ira_dump_file, align 8
  %54 = icmp ne ptr %53, null
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %58

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
  br i1 %64, label %65, label %4, !llvm.loop !239

65:                                               ; preds = %58, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_left_conflicts_size(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %9, %1 ], [ %18, %10 ]
  %12 = phi i64 [ 0, %1 ], [ %16, %10 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !97
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 27
  %15 = load i64, ptr %14, align 8, !tbaa !99
  %16 = or i64 %15, %12
  %17 = icmp eq ptr %13, %0
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 19
  br i1 %17, label %19, label %10

19:                                               ; preds = %10
  %20 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %6
  %21 = load i64, ptr %20, align 8, !tbaa !69
  %22 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !69
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = and i64 %24, %16
  %26 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %25) #23, !range !20
  %27 = icmp eq i8 %26, 0
  %28 = icmp sgt i32 %8, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %54

30:                                               ; preds = %19
  %31 = zext nneg i32 %8 to i64
  br label %32

32:                                               ; preds = %30, %49
  %33 = phi i64 [ 0, %30 ], [ %52, %49 ]
  %34 = phi i64 [ %25, %30 ], [ %51, %49 ]
  %35 = phi i32 [ 0, %30 ], [ %50, %49 ]
  %36 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %6, i64 %33
  %37 = load i16, ptr %36, align 2, !tbaa !88
  %38 = sext i16 %37 to i64
  %39 = and i64 %38, 4294967295
  %40 = shl nuw i64 1, %39
  %41 = and i64 %40, %34
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %32
  %44 = add nsw i32 %35, 1
  %45 = xor i64 %40, -1
  %46 = and i64 %34, %45
  %47 = tail call fastcc zeroext i8 @hard_reg_set_empty_p(i64 noundef %46) #23, !range !20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32, %43
  %50 = phi i32 [ %44, %43 ], [ %35, %32 ]
  %51 = phi i64 [ %46, %43 ], [ %34, %32 ]
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, %31
  br i1 %53, label %54, label %32, !llvm.loop !240

54:                                               ; preds = %43, %49, %19
  %55 = phi i32 [ 0, %19 ], [ %44, %43 ], [ %50, %49 ]
  %56 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  tail call void @bitmap_clear(ptr noundef %58) #24
  br label %59

59:                                               ; preds = %57, %54
  %60 = icmp eq i32 %5, 0
  br i1 %60, label %139, label %61

61:                                               ; preds = %59, %134
  %62 = phi i32 [ %135, %134 ], [ %55, %59 ]
  %63 = phi ptr [ %138, %134 ], [ %9, %59 ]
  %64 = phi i64 [ %136, %134 ], [ 0, %59 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !97
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %3, ptr noundef %65) #23
  %66 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %134, label %68

68:                                               ; preds = %61, %129
  %69 = phi i64 [ %131, %129 ], [ %64, %61 ]
  %70 = phi i32 [ %130, %129 ], [ %62, %61 ]
  %71 = load ptr, ptr %2, align 8, !tbaa !18
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 18
  %73 = load ptr, ptr %72, align 8, !tbaa !102
  store ptr %73, ptr %2, align 8, !tbaa !18
  %74 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !18
  %75 = load i32, ptr %73, align 8, !tbaa !48
  %76 = tail call i32 @bitmap_bit_p(ptr noundef %74, i32 noundef %75) #24
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %129, label %78

78:                                               ; preds = %68
  %79 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %78
  %81 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %82 = load i32, ptr %73, align 8, !tbaa !48
  %83 = tail call i32 @bitmap_bit_p(ptr noundef %81, i32 noundef %82) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %80
  %86 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %87 = load i32, ptr %73, align 8, !tbaa !48
  %88 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %86, i32 noundef %87) #24
  br label %89

89:                                               ; preds = %85, %78
  %90 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 31
  %91 = load i16, ptr %90, align 4
  %92 = and i16 %91, 256
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !77
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %6, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !17
  %100 = add nsw i32 %99, %70
  br label %129

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !51
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %129

105:                                              ; preds = %101
  %106 = zext nneg i32 %103 to i64
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !77
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %106, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !87
  %112 = zext i8 %111 to i32
  %113 = add nuw nsw i32 %103, %112
  %114 = icmp eq i8 %111, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %105, %115
  %116 = phi i64 [ %126, %115 ], [ %106, %105 ]
  %117 = phi i64 [ %125, %115 ], [ %69, %105 ]
  %118 = phi i32 [ %123, %115 ], [ %70, %105 ]
  %119 = shl nuw i64 1, %116
  %120 = and i64 %119, %117
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = add nsw i32 %118, %122
  %124 = select i1 %121, i64 %119, i64 0
  %125 = or i64 %124, %117
  %126 = add nuw nsw i64 %116, 1
  %127 = trunc i64 %126 to i32
  %128 = icmp sgt i32 %113, %127
  br i1 %128, label %115, label %129, !llvm.loop !241

129:                                              ; preds = %115, %105, %68, %101, %94, %80
  %130 = phi i32 [ %70, %80 ], [ %70, %101 ], [ %100, %94 ], [ %70, %68 ], [ %70, %105 ], [ %123, %115 ]
  %131 = phi i64 [ %69, %80 ], [ %69, %101 ], [ %69, %94 ], [ %69, %68 ], [ %69, %105 ], [ %125, %115 ]
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %3) #23
  %132 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %68, !llvm.loop !242

134:                                              ; preds = %129, %61
  %135 = phi i32 [ %62, %61 ], [ %130, %129 ]
  %136 = phi i64 [ %64, %61 ], [ %131, %129 ]
  %137 = icmp eq ptr %65, %0
  %138 = getelementptr inbounds %struct.ira_allocno, ptr %65, i64 0, i32 19
  br i1 %137, label %139, label %61

139:                                              ; preds = %134, %59
  %140 = phi i32 [ %55, %59 ], [ %135, %134 ]
  %141 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 37
  store i32 %140, ptr %141, align 8, !tbaa !228
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_available_regs_num(ptr noundef %0) unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  store i32 %6, ptr %7, align 4, !tbaa !229
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %68, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !17
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %0, %9 ], [ %16, %12 ]
  %14 = phi i64 [ 0, %9 ], [ %19, %12 ]
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 27
  %18 = load i64, ptr %17, align 8, !tbaa !99
  %19 = or i64 %18, %14
  %20 = icmp eq ptr %16, %0
  br i1 %20, label %21, label %12

21:                                               ; preds = %12
  %22 = icmp sgt i32 %11, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !77
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %4, i64 %26
  %28 = zext nneg i32 %11 to i64
  br label %29

29:                                               ; preds = %23, %46
  %30 = phi i64 [ %28, %23 ], [ %32, %46 ]
  %31 = phi i32 [ 0, %23 ], [ %47, %46 ]
  %32 = add nsw i64 %30, -1
  %33 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %4, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !88
  %35 = sext i16 %34 to i64
  %36 = and i64 %35, 4294967295
  %37 = shl nuw i64 1, %36
  %38 = and i64 %37, %19
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i64, ptr %27, align 8, !tbaa !69
  %42 = and i64 %41, %37
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %29
  %45 = add nsw i32 %31, 1
  br label %46

46:                                               ; preds = %40, %44
  %47 = phi i32 [ %45, %44 ], [ %31, %40 ]
  %48 = icmp ugt i64 %30, 1
  br i1 %48, label %29, label %49, !llvm.loop !243

49:                                               ; preds = %46, %21
  %50 = phi i32 [ 0, %21 ], [ %47, %46 ]
  %51 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %52 = icmp sgt i32 %51, 2
  %53 = icmp sgt i32 %50, 0
  %54 = select i1 %52, i1 %53, i1 false
  %55 = load ptr, ptr @ira_dump_file, align 8
  %56 = icmp ne ptr %55, null
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !52
  %61 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %4
  %62 = load ptr, ptr %61, align 8, !tbaa !18
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.34, i32 noundef %60, ptr noundef %62, i32 noundef %50) #23
  %64 = load i32, ptr %7, align 4, !tbaa !229
  br label %65

65:                                               ; preds = %58, %49
  %66 = phi i32 [ %64, %58 ], [ %6, %49 ]
  %67 = sub nsw i32 %66, %50
  store i32 %67, ptr %7, align 4, !tbaa !229
  br label %68

68:                                               ; preds = %1, %65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_allocno_to_bucket(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %1, @uncolorable_allocno_bucket
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !17
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = load ptr, ptr %1, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  store ptr %14, ptr %15, align 8, !tbaa !244
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  store ptr null, ptr %16, align 8, !tbaa !245
  %17 = icmp eq ptr %14, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 40
  store ptr %0, ptr %19, align 8, !tbaa !245
  br label %20

20:                                               ; preds = %18, %13
  store ptr %0, ptr %1, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_empty_p(i64 noundef %0) unnamed_addr #2 {
  %2 = icmp eq i64 %0, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_ira_allocno_t_base_truncate(ptr noundef writeonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !190
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_allocno_spill_cost(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = sub nsw i32 %5, %7
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !196
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = icmp eq ptr %16, null
  br i1 %17, label %66, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %16, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %66, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !77
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !51
  %32 = icmp slt i32 %31, 0
  %33 = zext i32 %27 to i64
  %34 = zext i32 %29 to i64
  %35 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %33, i64 %34
  br i1 %32, label %36, label %48

36:                                               ; preds = %25
  %37 = load i16, ptr %35, align 4, !tbaa !88
  %38 = sext i16 %37 to i32
  %39 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 1) #23, !range !203
  %40 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %33, i64 %34, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !88
  %42 = sext i16 %41 to i32
  %43 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 0) #23, !range !203
  %44 = mul i32 %39, %38
  %45 = mul i32 %43, %42
  %46 = add i32 %45, %44
  %47 = sub i32 %8, %46
  br label %66

48:                                               ; preds = %25
  %49 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %33, i64 %34, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !88
  %51 = sext i16 %50 to i32
  %52 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 1) #23, !range !203
  %53 = mul nsw i32 %52, %51
  %54 = load i16, ptr %35, align 4, !tbaa !88
  %55 = sext i16 %54 to i32
  %56 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 0) #23, !range !203
  %57 = mul nsw i32 %56, %55
  %58 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %27, i32 noundef %29, i32 noundef %29) #23, !range !90
  %59 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 0) #23, !range !203
  %60 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext 1) #23, !range !203
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
define internal i32 @allocno_spill_priority_compare(i64 noundef %0, i64 noundef %1) #5 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 41
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 37
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = mul nsw i32 %16, %8
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %6, %18
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 41
  %21 = load i32, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 37
  %23 = load i32, ptr %22, align 8, !tbaa !228
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !50
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !17
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
  %41 = load i32, ptr %3, align 8, !tbaa !48
  %42 = load i32, ptr %4, align 8, !tbaa !48
  %43 = sub nsw i32 %41, %42
  br label %44

44:                                               ; preds = %37, %2, %40
  %45 = phi i32 [ %43, %40 ], [ %35, %2 ], [ %38, %37 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @splay_tree_allocate(i32 noundef %0, ptr nocapture readnone %1) #0 {
  %3 = icmp eq i32 %0, 32
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = sext i32 %0 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #24
  br label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !18
  %9 = tail call ptr @pool_alloc(ptr noundef %8) #24
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %6, %4 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splay_tree_free(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !17
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %19, label %10, !llvm.loop !246

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %7

18:                                               ; preds = %10
  tail call void @ira_free(ptr noundef %0) #24
  br label %21

19:                                               ; preds = %7, %2
  %20 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !18
  tail call void @pool_free(ptr noundef %20, ptr noundef %0) #24
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_only_colorable() unnamed_addr #0 {
  tail call fastcc void @sort_bucket() #23
  %1 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call fastcc void @remove_allocno_from_bucket_and_push(ptr noundef nonnull %4, i8 noundef zeroext 1) #23
  %5 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !247

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_allocno_to_spill(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef %0, ptr noundef nonnull @uncolorable_allocno_bucket) #23
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %3 = load i16, ptr %2, align 4
  %4 = or i16 %3, 512
  store i16 %4, ptr %2, align 4
  %5 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %6 = icmp sgt i32 %5, 3
  %7 = load ptr, ptr @ira_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, ptr %0, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %13) #23
  br label %15

15:                                               ; preds = %10, %1
  tail call fastcc void @push_allocno_to_stack(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef readonly %0) unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !190
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_ira_allocno_t_base_pop(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !190
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !190
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @allocno_spill_priority(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 37
  %5 = load i32, ptr %4, align 8, !tbaa !228
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !77
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !17
  %14 = mul nsw i32 %13, %5
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %3, %15
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_allocno_from_bucket_and_push(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef %0, ptr noundef nonnull @uncolorable_allocno_bucket) #23
  %5 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %6 = icmp sgt i32 %5, 3
  %7 = load ptr, ptr @ira_dump_file, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %16, label %32

10:                                               ; preds = %2
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef %0, ptr noundef nonnull @colorable_allocno_bucket) #23
  %11 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !17
  %12 = icmp sgt i32 %11, 3
  %13 = load ptr, ptr @ira_dump_file, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %36

16:                                               ; preds = %10, %4
  %17 = phi ptr [ %13, %10 ], [ %7, %4 ]
  %18 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr nonnull %17)
  tail call fastcc void @print_coalesced_allocno(ptr noundef %0) #23
  %19 = load ptr, ptr @ira_dump_file, align 8, !tbaa !18
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
  %30 = load i32, ptr %29, align 8, !tbaa !121
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
define internal fastcc void @sort_bucket() unnamed_addr #0 {
  %1 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = phi ptr [ %1, %3 ], [ %11, %5 ]
  %8 = add nuw i64 %6, 1
  %9 = getelementptr inbounds ptr, ptr %4, i64 %6
  store ptr %7, ptr %9, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !248

13:                                               ; preds = %5
  %14 = trunc i64 %8 to i32
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  %18 = and i64 %8, 4294967295
  tail call void @spec_qsort(ptr noundef %17, i64 noundef %18, i64 noundef 8, ptr noundef nonnull @bucket_allocno_compare_func) #24
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !18
  br label %22

22:                                               ; preds = %20, %33
  %23 = phi i64 [ %18, %20 ], [ %25, %33 ]
  %24 = phi ptr [ null, %20 ], [ %27, %33 ]
  %25 = add nsw i64 %23, -1
  %26 = getelementptr inbounds ptr, ptr %21, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 39
  store ptr %24, ptr %28, align 8, !tbaa !244
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 40
  store ptr null, ptr %29, align 8, !tbaa !245
  %30 = icmp eq ptr %24, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 40
  store ptr %27, ptr %32, align 8, !tbaa !245
  br label %33

33:                                               ; preds = %31, %22
  %34 = icmp ugt i64 %23, 1
  br i1 %34, label %22, label %35, !llvm.loop !249

35:                                               ; preds = %33, %16
  %36 = phi ptr [ null, %16 ], [ %27, %33 ]
  store ptr %36, ptr @colorable_allocno_bucket, align 8, !tbaa !18
  br label %37

37:                                               ; preds = %0, %13, %35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @bucket_allocno_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = sub i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  call fastcc void @get_coalesced_allocnos_attributes(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %5) #23
  call fastcc void @get_coalesced_allocnos_attributes(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6) #23
  %16 = load i32, ptr %6, align 4, !tbaa !17
  %17 = load i32, ptr %5, align 4, !tbaa !17
  %18 = sub nsw i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4, !tbaa !17
  %22 = load i32, ptr %4, align 4, !tbaa !17
  %23 = sub nsw i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, ptr %8, align 8, !tbaa !48
  %27 = load i32, ptr %7, align 8, !tbaa !48
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
define internal fastcc void @get_coalesced_allocnos_attributes(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  store i32 0, ptr %1, align 4, !tbaa !17
  store i32 0, ptr %2, align 4, !tbaa !17
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !108
  %10 = load i32, ptr %1, align 4, !tbaa !17
  %11 = add nsw i32 %10, %9
  store i32 %11, ptr %1, align 4, !tbaa !17
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 38
  %13 = load i32, ptr %12, align 4, !tbaa !229
  %14 = load i32, ptr %2, align 4, !tbaa !17
  %15 = add nsw i32 %14, %13
  store i32 %15, ptr %2, align 4, !tbaa !17
  %16 = icmp eq ptr %7, %0
  br i1 %16, label %17, label %4

17:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delete_allocno_from_bucket(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #11 {
  %3 = icmp eq ptr %1, @uncolorable_allocno_bucket
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !17
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  %15 = load ptr, ptr %14, align 8, !tbaa !245
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !244
  %18 = icmp eq ptr %15, null
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 39
  %20 = select i1 %18, ptr %1, ptr %19
  store ptr %17, ptr %20, align 8, !tbaa !18
  %21 = icmp eq ptr %17, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 40
  store ptr %15, ptr %23, align 8, !tbaa !245
  br label %24

24:                                               ; preds = %22, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_allocno_to_stack(ptr noundef %0) unnamed_addr #0 {
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
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %1
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  tail call void @bitmap_clear(ptr noundef %19) #24
  br label %20

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %11
  %22 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %11
  br label %23

23:                                               ; preds = %89, %20
  %24 = phi ptr [ %0, %20 ], [ %26, %89 ]
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %3, ptr noundef %26) #23
  %27 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %89, label %29

29:                                               ; preds = %23, %86
  %30 = load ptr, ptr %2, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  store ptr %32, ptr %2, align 8, !tbaa !18
  %33 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !18
  %34 = load i32, ptr %32, align 8, !tbaa !48
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %34) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %29
  %38 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %41 = load i32, ptr %32, align 8, !tbaa !48
  %42 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  %45 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !18
  %46 = load i32, ptr %32, align 8, !tbaa !48
  %47 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %45, i32 noundef %46) #24
  br label %48

48:                                               ; preds = %44, %37
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 31
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 384
  %52 = icmp eq i16 %51, 128
  br i1 %52, label %53, label %86

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 37
  %55 = load i32, ptr %54, align 8, !tbaa !228
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !77
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !17
  %61 = add nsw i32 %60, %55
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 38
  %63 = load i32, ptr %62, align 4, !tbaa !229
  %64 = icmp sgt i32 %61, %63
  %65 = sub nsw i32 %55, %16
  br i1 %64, label %67, label %66

66:                                               ; preds = %53
  store i32 %65, ptr %54, align 8, !tbaa !228
  br label %86

67:                                               ; preds = %53
  %68 = load ptr, ptr %21, align 8, !tbaa !18
  %69 = icmp ne ptr %68, null
  %70 = and i16 %50, 1024
  %71 = icmp eq i16 %70, 0
  %72 = and i1 %71, %69
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32, ptr %22, align 4, !tbaa !17
  %75 = icmp sgt i32 %74, 4000
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = ptrtoint ptr %32 to i64
  tail call void @splay_tree_remove(ptr noundef nonnull %68, i64 noundef %77) #24
  %78 = load i16, ptr %49, align 4
  %79 = or i16 %78, 1024
  store i16 %79, ptr %49, align 4
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @removed_splay_allocno_vec, ptr noundef nonnull %32) #23
  %80 = load i32, ptr %62, align 4, !tbaa !229
  br label %81

81:                                               ; preds = %76, %73, %67
  %82 = phi i32 [ %80, %76 ], [ %63, %73 ], [ %63, %67 ]
  store i32 %65, ptr %54, align 8, !tbaa !228
  %83 = add nsw i32 %60, %65
  %84 = icmp sgt i32 %83, %82
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call fastcc void @delete_allocno_from_bucket(ptr noundef nonnull %32, ptr noundef nonnull @uncolorable_allocno_bucket) #23
  tail call fastcc void @add_allocno_to_ordered_bucket(ptr noundef nonnull %32) #23
  br label %86

86:                                               ; preds = %29, %81, %85, %48, %39, %66
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %3) #23
  %87 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #23, !range !20
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %29, !llvm.loop !250

89:                                               ; preds = %86, %23
  %90 = icmp eq ptr %26, %0
  br i1 %90, label %91, label %23

91:                                               ; preds = %89, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_allocno_to_ordered_bucket(ptr noundef %0) unnamed_addr #14 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !18
  store ptr %4, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call i32 @bucket_allocno_compare_func(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %14, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %32

11:                                               ; preds = %14
  %12 = call i32 @bucket_allocno_compare_func(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %23, !llvm.loop !251

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %17, %11 ], [ %4, %6 ]
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  store ptr %17, ptr %3, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !251

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  store ptr null, ptr %20, align 8, !tbaa !244
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  store ptr %15, ptr %21, align 8, !tbaa !245
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 39
  br label %32

23:                                               ; preds = %11, %6
  %24 = phi ptr [ %4, %6 ], [ %17, %11 ]
  %25 = phi ptr [ null, %6 ], [ %15, %11 ]
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 39
  store ptr %24, ptr %26, align 8, !tbaa !244
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 40
  store ptr %25, ptr %27, align 8, !tbaa !245
  %28 = icmp eq ptr %25, null
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 39
  %30 = select i1 %28, ptr @colorable_allocno_bucket, ptr %29
  store ptr %0, ptr %30, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 40
  br label %32

32:                                               ; preds = %19, %9, %23
  %33 = phi ptr [ %22, %19 ], [ @colorable_allocno_bucket, %9 ], [ %31, %23 ]
  store ptr %0, ptr %33, align 8, !tbaa !18
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
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ira_loop_tree_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 60, !7, i64 64, !8, i64 72, !8, i64 76, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 8}
!12 = !{!"loop", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !13, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !14, i64 80, !14, i64 96, !8, i64 112, !8, i64 113, !10, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!13 = !{!"lpt_decision", !10, i64 0, !10, i64 4}
!14 = !{!"", !15, i64 0, !15, i64 8}
!15 = !{!"long", !8, i64 0}
!16 = !{i64 0, i64 4, !17, i64 8, i64 8, !18}
!17 = !{!10, !10, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{i64 0, i64 8, !18}
!20 = !{i8 0, i8 2}
!21 = !{!22, !7, i64 0}
!22 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !15, i64 56}
!23 = !{!12, !7, i64 16}
!24 = !{!25, !10, i64 80}
!25 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !15, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!26 = !{!27, !7, i64 24}
!27 = !{!"df_lr_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!28 = !{!22, !7, i64 8}
!29 = !{!27, !7, i64 16}
!30 = !{!25, !10, i64 88}
!31 = !{!22, !10, i64 52}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{i32 0, i32 2}
!35 = distinct !{!35, !33}
!36 = !{!37, !7, i64 8}
!37 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!38 = !{!39, !7, i64 0}
!39 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!40 = !{!25, !15, i64 72}
!41 = !{!42, !10, i64 16}
!42 = !{!"dataflow", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!43 = !{!42, !7, i64 8}
!44 = !{!45, !10, i64 0}
!45 = !{!"", !10, i64 0, !7, i64 8}
!46 = !{!47, !10, i64 0}
!47 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !8, i64 8}
!48 = !{!49, !10, i64 0}
!49 = !{!"ira_allocno", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 140, !15, i64 144, !15, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 173, !10, i64 173, !10, i64 173, !10, i64 173, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !10, i64 216, !10, i64 220, !7, i64 224, !7, i64 232, !10, i64 240}
!50 = !{!49, !10, i64 48}
!51 = !{!49, !10, i64 12}
!52 = !{!49, !10, i64 4}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33}
!57 = !{!58, !10, i64 0}
!58 = !{!"", !10, i64 0}
!59 = distinct !{!59, !33}
!60 = !{!61, !8, i64 0}
!61 = !{!"", !8, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !15, i64 32}
!62 = !{!49, !7, i64 128}
!63 = !{!61, !7, i64 8}
!64 = !{!61, !10, i64 16}
!65 = !{!49, !10, i64 120}
!66 = !{!49, !10, i64 124}
!67 = !{!61, !10, i64 24}
!68 = !{!61, !10, i64 28}
!69 = !{!15, !15, i64 0}
!70 = !{!61, !15, i64 32}
!71 = !{!61, !10, i64 20}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = !{!49, !10, i64 40}
!75 = !{!49, !10, i64 60}
!76 = !{!49, !10, i64 52}
!77 = !{!49, !10, i64 8}
!78 = distinct !{!78, !33}
!79 = !{!49, !10, i64 68}
!80 = distinct !{!80, !33}
!81 = !{!49, !7, i64 72}
!82 = !{!83, !7, i64 8}
!83 = !{!"ira_allocno_copy", !10, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!84 = !{!83, !7, i64 48}
!85 = !{!83, !7, i64 16}
!86 = !{!83, !7, i64 64}
!87 = !{!8, !8, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !8, i64 0}
!90 = !{i32 0, i32 65536}
!91 = !{!49, !7, i64 184}
!92 = !{!49, !7, i64 200}
!93 = !{!83, !10, i64 24}
!94 = !{!49, !7, i64 192}
!95 = !{!49, !7, i64 208}
!96 = distinct !{!96, !33}
!97 = !{!49, !7, i64 104}
!98 = !{!49, !10, i64 64}
!99 = !{!49, !15, i64 152}
!100 = !{!49, !10, i64 56}
!101 = distinct !{!101, !33}
!102 = !{!49, !7, i64 96}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = distinct !{!105, !33}
!106 = distinct !{!106, !33}
!107 = distinct !{!107, !33}
!108 = !{!49, !10, i64 44}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !33}
!111 = !{!83, !7, i64 32}
!112 = !{!83, !8, i64 28}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, !33}
!116 = !{!83, !10, i64 0}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = !{!49, !10, i64 240}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = !{!126, !8, i64 477}
!126 = !{!"rtl_data", !127, i64 0, !128, i64 40, !129, i64 96, !130, i64 112, !132, i64 208, !133, i64 248, !10, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !15, i64 400, !7, i64 408, !7, i64 416, !7, i64 424, !10, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !7, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!127 = !{!"expr_status", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!128 = !{!"emit_status", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !7, i64 48}
!129 = !{!"varasm_status", !7, i64 0, !10, i64 8}
!130 = !{!"incoming_args", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !131, i64 24, !7, i64 88}
!131 = !{!"ix86_args", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60}
!132 = !{!"function_subsections", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!133 = !{!"rtl_eh", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = !{!142, !10, i64 0}
!142 = !{!"reg_info_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!143 = !{!49, !10, i64 168}
!144 = !{!145, !7, i64 32}
!145 = !{!"ira_spilled_reg_stack_slot", !146, i64 0, !7, i64 32, !10, i64 40}
!146 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24}
!147 = !{!145, !10, i64 40}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = !{!146, !7, i64 0}
!153 = !{!154, !7, i64 0}
!154 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !15, i64 24}
!155 = !{!154, !7, i64 8}
!156 = !{!157, !10, i64 16}
!157 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24}
!158 = !{!154, !10, i64 16}
!159 = !{!154, !15, i64 24}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !33}
!162 = !{!157, !7, i64 0}
!163 = !{!49, !7, i64 16}
!164 = !{!49, !7, i64 112}
!165 = !{!146, !7, i64 24}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
!168 = distinct !{!168, !33}
!169 = !{!49, !15, i64 144}
!170 = !{!171, !10, i64 8}
!171 = !{!"ira_allocno_live_range", !7, i64 0, !10, i64 8, !10, i64 12, !7, i64 16, !7, i64 24, !7, i64 32}
!172 = !{!171, !10, i64 12}
!173 = distinct !{!173, !33}
!174 = distinct !{!174, !33}
!175 = distinct !{!175, !33}
!176 = distinct !{!176, !33}
!177 = distinct !{!177, !33}
!178 = distinct !{!178, !33}
!179 = distinct !{!179, !33, !180, !181}
!180 = !{!"llvm.loop.isvectorized", i32 1}
!181 = !{!"llvm.loop.unroll.runtime.disable"}
!182 = !{!183, !10, i64 0}
!183 = !{!"update_cost_queue_elem", !10, i64 0, !10, i64 4, !7, i64 8}
!184 = !{!183, !10, i64 4}
!185 = !{!183, !7, i64 8}
!186 = distinct !{!186, !33}
!187 = distinct !{!187, !33}
!188 = distinct !{!188, !33}
!189 = distinct !{!189, !33}
!190 = !{!191, !10, i64 0}
!191 = !{!"VEC_ira_allocno_t_base", !10, i64 0, !10, i64 4, !8, i64 8}
!192 = !{!191, !10, i64 4}
!193 = distinct !{!193, !33}
!194 = !{!195, !10, i64 4}
!195 = !{!"regstat_n_sets_and_refs_t", !10, i64 0, !10, i64 4}
!196 = !{!49, !7, i64 32}
!197 = !{!49, !7, i64 88}
!198 = !{!49, !7, i64 80}
!199 = !{!6, !7, i64 40}
!200 = !{!6, !7, i64 192}
!201 = distinct !{!201, !33}
!202 = !{!6, !7, i64 64}
!203 = !{i32 -214748, i32 214749}
!204 = distinct !{!204, !33}
!205 = !{!6, !7, i64 48}
!206 = !{!12, !10, i64 0}
!207 = !{!6, !7, i64 184}
!208 = distinct !{!208, !33}
!209 = distinct !{!209, !33}
!210 = distinct !{!210, !33}
!211 = distinct !{!211, !33}
!212 = !{!6, !7, i64 0}
!213 = !{!39, !7, i64 8}
!214 = distinct !{!214, !33}
!215 = distinct !{!215, !33}
!216 = distinct !{!216, !33}
!217 = !{!6, !7, i64 200}
!218 = distinct !{!218, !33}
!219 = distinct !{!219, !33}
!220 = distinct !{!220, !33}
!221 = distinct !{!221, !33}
!222 = distinct !{!222, !33}
!223 = distinct !{!223, !33}
!224 = distinct !{!224, !33}
!225 = !{!12, !7, i64 40}
!226 = !{!227, !10, i64 0}
!227 = !{!"VEC_loop_p_base", !10, i64 0, !10, i64 4, !8, i64 8}
!228 = !{!49, !10, i64 216}
!229 = !{!49, !10, i64 220}
!230 = distinct !{!230, !33}
!231 = distinct !{!231, !33}
!232 = distinct !{!232, !33}
!233 = distinct !{!233, !33}
!234 = distinct !{!234, !33}
!235 = !{!236, !15, i64 0}
!236 = !{!"splay_tree_node_s", !15, i64 0, !15, i64 8, !7, i64 16, !7, i64 24}
!237 = distinct !{!237, !33}
!238 = distinct !{!238, !33}
!239 = distinct !{!239, !33}
!240 = distinct !{!240, !33}
!241 = distinct !{!241, !33}
!242 = distinct !{!242, !33}
!243 = distinct !{!243, !33}
!244 = !{!49, !7, i64 224}
!245 = !{!49, !7, i64 232}
!246 = distinct !{!246, !33}
!247 = distinct !{!247, !33}
!248 = distinct !{!248, !33}
!249 = distinct !{!249, !33}
!250 = distinct !{!250, !33}
!251 = distinct !{!251, !33}
