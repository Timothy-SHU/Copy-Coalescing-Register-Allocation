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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.update_cost_queue_elem = type { i32, i32, ptr }
%struct.VEC_ira_allocno_t_base = type { i32, i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ira_spilled_reg_stack_slot = type { %struct.bitmap_head_def, ptr, i32 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@allocno_stack_vec = internal unnamed_addr global ptr null, align 8
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
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@removed_splay_allocno_vec = internal unnamed_addr global ptr null, align 8
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
@colorable_allocno_bucket = internal unnamed_addr global ptr null, align 8
@uncolorable_allocno_bucket = internal unnamed_addr global ptr null, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !87 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !88
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !87 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !88
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !87 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !98

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !92
  %11 = load i8, ptr %3, align 1, !tbaa !99
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !87 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !98

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !92
  %11 = load i8, ptr %3, align 1, !tbaa !99
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !87 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !88
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !98

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #23
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !92
  %11 = load i8, ptr %3, align 1, !tbaa !99
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !87 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !88
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !87 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !98

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !100
  store i8 %12, ptr %4, align 1, !tbaa !99
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !87 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !98

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !100
  store i8 %12, ptr %4, align 1, !tbaa !99
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !87 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !88
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !98

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !100
  store i8 %12, ptr %4, align 1, !tbaa !99
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !87 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #23
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !87 {
  %2 = load i32, ptr %0, align 8, !tbaa !102
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !87 {
  %2 = load i32, ptr %0, align 8, !tbaa !102
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !87 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !103
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !87 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !103
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !87 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #23
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !104

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !87 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ira_loop_edge_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !87 {
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  br i1 %4, label %7, label %97

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = icmp eq ptr %9, null
  %11 = icmp slt i32 %1, 0
  br label %12

12:                                               ; preds = %95, %7
  %13 = phi i32 [ 0, %7 ], [ %96, %95 ]
  %14 = phi i32 [ 0, %7 ], [ %86, %95 ]
  br i1 %10, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 687, ptr noundef nonnull @.str.5) #23
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr %9, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 8, !tbaa !113
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ 0, %16 ]
  %23 = icmp eq i32 %22, %13
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = zext i32 %13 to i64
  %26 = getelementptr inbounds %struct.VEC_edge_base, ptr %17, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  br label %28

28:                                               ; preds = %21, %24
  %29 = phi ptr [ %27, %24 ], [ null, %21 ]
  br i1 %23, label %169, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %29, align 8, !tbaa !115
  %32 = load ptr, ptr %5, align 8, !tbaa !107
  %33 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %85, label %36

36:                                               ; preds = %30
  br i1 %11, label %75, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !118
  %40 = load ptr, ptr @df, align 8, !tbaa !88
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 1, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.dataflow, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !120
  %45 = icmp ugt i32 %44, %39
  tail call void @llvm.assume(i1 %45)
  %46 = getelementptr inbounds %struct.dataflow, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !122
  %48 = zext i32 %39 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.df_lr_bb_info, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !123
  %53 = tail call i32 @bitmap_bit_p(ptr noundef %52, i32 noundef %1) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !125
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !118
  %60 = load ptr, ptr @df, align 8, !tbaa !88
  %61 = getelementptr inbounds %struct.df, ptr %60, i64 0, i32 1, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !88
  %63 = getelementptr inbounds %struct.dataflow, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !120
  %65 = icmp ugt i32 %64, %59
  tail call void @llvm.assume(i1 %65)
  %66 = getelementptr inbounds %struct.dataflow, ptr %62, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  %68 = zext i32 %59 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !88
  %71 = getelementptr inbounds %struct.df_lr_bb_info, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !126
  %73 = tail call i32 @bitmap_bit_p(ptr noundef %72, i32 noundef %1) #23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %55, %36
  %76 = load ptr, ptr %29, align 8, !tbaa !115
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 11
  %78 = load i32, ptr %77, align 8, !tbaa !127
  %79 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !128
  %81 = mul nsw i32 %80, %78
  %82 = add nsw i32 %81, 5000
  %83 = sdiv i32 %82, 10000
  %84 = add nsw i32 %83, %14
  br label %85

85:                                               ; preds = %75, %55, %37, %30
  %86 = phi i32 [ %84, %75 ], [ %14, %55 ], [ %14, %37 ], [ %14, %30 ]
  %87 = load ptr, ptr %9, align 8, !tbaa !88
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %87, align 8, !tbaa !113
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %90, %89 ], [ 0, %85 ]
  %93 = icmp ult i32 %13, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.5) #23
  br label %95

95:                                               ; preds = %91, %94
  %96 = add i32 %13, 1
  br label %12, !llvm.loop !129

97:                                               ; preds = %3
  %98 = tail call ptr @get_loop_exit_edges(ptr noundef %6) #23
  %99 = icmp eq ptr %98, null
  %100 = icmp slt i32 %1, 0
  br label %101

101:                                              ; preds = %164, %97
  %102 = phi i64 [ %166, %164 ], [ 0, %97 ]
  %103 = phi i32 [ %165, %164 ], [ 0, %97 ]
  br i1 %99, label %111, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %98, align 8, !tbaa !113
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %102, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.VEC_edge_base, ptr %98, i64 0, i32 2, i64 %102
  %110 = load ptr, ptr %109, align 8, !tbaa !88
  br label %111

111:                                              ; preds = %101, %104, %108
  %112 = phi ptr [ %110, %108 ], [ null, %104 ], [ null, %101 ]
  %113 = phi i1 [ false, %108 ], [ true, %104 ], [ true, %101 ]
  br i1 %113, label %167, label %114

114:                                              ; preds = %111
  br i1 %100, label %154, label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %112, align 8, !tbaa !115
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 9
  %118 = load i32, ptr %117, align 8, !tbaa !118
  %119 = load ptr, ptr @df, align 8, !tbaa !88
  %120 = getelementptr inbounds %struct.df, ptr %119, i64 0, i32 1, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !88
  %122 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !120
  %124 = icmp ugt i32 %123, %118
  tail call void @llvm.assume(i1 %124)
  %125 = getelementptr inbounds %struct.dataflow, ptr %121, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !122
  %127 = zext i32 %118 to i64
  %128 = getelementptr inbounds ptr, ptr %126, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !88
  %130 = getelementptr inbounds %struct.df_lr_bb_info, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !123
  %132 = tail call i32 @bitmap_bit_p(ptr noundef %131, i32 noundef %1) #23
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %164, label %134

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !125
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !118
  %139 = load ptr, ptr @df, align 8, !tbaa !88
  %140 = getelementptr inbounds %struct.df, ptr %139, i64 0, i32 1, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !88
  %142 = getelementptr inbounds %struct.dataflow, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !120
  %144 = icmp ugt i32 %143, %138
  tail call void @llvm.assume(i1 %144)
  %145 = getelementptr inbounds %struct.dataflow, ptr %141, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !122
  %147 = zext i32 %138 to i64
  %148 = getelementptr inbounds ptr, ptr %146, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !88
  %150 = getelementptr inbounds %struct.df_lr_bb_info, ptr %149, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !126
  %152 = tail call i32 @bitmap_bit_p(ptr noundef %151, i32 noundef %1) #23
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %134, %114
  %155 = load ptr, ptr %112, align 8, !tbaa !115
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 11
  %157 = load i32, ptr %156, align 8, !tbaa !127
  %158 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 8
  %159 = load i32, ptr %158, align 4, !tbaa !128
  %160 = mul nsw i32 %159, %157
  %161 = add nsw i32 %160, 5000
  %162 = sdiv i32 %161, 10000
  %163 = add nsw i32 %162, %103
  br label %164

164:                                              ; preds = %115, %134, %154
  %165 = phi i32 [ %163, %154 ], [ %103, %134 ], [ %103, %115 ]
  %166 = add nuw i64 %102, 1
  br label %101, !llvm.loop !130

167:                                              ; preds = %111
  br i1 %99, label %169, label %168

168:                                              ; preds = %167
  tail call void @free(ptr noundef %98)
  br label %169

169:                                              ; preds = %28, %168, %167
  %170 = phi i32 [ %103, %167 ], [ %103, %168 ], [ %14, %28 ]
  %171 = load i32, ptr @optimize_size, align 4, !tbaa !103
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %169
  %174 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !103
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @cfun, align 8, !tbaa !88
  %178 = getelementptr inbounds %struct.function, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !131
  %180 = load ptr, ptr %179, align 8, !tbaa !133
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 8
  %182 = load i64, ptr %181, align 8, !tbaa !135
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %176, %173
  %185 = add i32 %170, 9
  %186 = icmp ult i32 %185, 19
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = sdiv i32 %170, 10
  br label %189

189:                                              ; preds = %176, %187, %184, %169
  %190 = phi i32 [ 1000, %169 ], [ %188, %187 ], [ 1, %184 ], [ 1000, %176 ]
  ret i32 %190
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_reassign_conflict_allocnos(i32 noundef %0) local_unnamed_addr #9 !prof !87 {
  %2 = tail call ptr @ira_allocate_bitmap() #23
  br label %3

3:                                                ; preds = %167, %1
  %4 = phi ptr [ undef, %1 ], [ %171, %167 ]
  %5 = phi ptr [ undef, %1 ], [ %42, %167 ]
  %6 = phi i32 [ 0, %1 ], [ %43, %167 ]
  %7 = phi i32 [ 0, %1 ], [ %116, %167 ]
  br label %8

8:                                                ; preds = %79, %3
  %9 = phi ptr [ %5, %3 ], [ %42, %79 ]
  %10 = phi i32 [ %6, %3 ], [ %43, %79 ]
  %11 = phi i32 [ %7, %3 ], [ %71, %79 ]
  %12 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %16 = sext i32 %10 to i64
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %27

21:                                               ; preds = %33
  %22 = getelementptr inbounds ptr, ptr %15, i64 %35
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25, !llvm.loop !136

25:                                               ; preds = %21
  %26 = icmp slt i64 %35, %17
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i64 [ %16, %14 ], [ %35, %25 ]
  %29 = phi i1 [ %13, %14 ], [ %26, %25 ]
  %30 = phi ptr [ %19, %14 ], [ %23, %25 ]
  %31 = trunc i64 %28 to i32
  %32 = add nsw i32 %31, 1
  br label %40

33:                                               ; preds = %14, %21
  %34 = phi i64 [ %35, %21 ], [ %16, %14 ]
  %35 = add nsw i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %12, %36
  br i1 %37, label %38, label %21, !llvm.loop !136

38:                                               ; preds = %33
  %39 = icmp slt i64 %35, %17
  br label %40

40:                                               ; preds = %38, %8, %27
  %41 = phi i1 [ %29, %27 ], [ %13, %8 ], [ %39, %38 ]
  %42 = phi ptr [ %30, %27 ], [ %9, %8 ], [ %9, %38 ]
  %43 = phi i32 [ %32, %27 ], [ %10, %8 ], [ %10, %38 ]
  br i1 %41, label %44, label %190

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 31
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 256
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i32, ptr %42, align 8, !tbaa !137
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %50) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !139
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %59 = add nsw i32 %11, 1
  %60 = sext i32 %11 to i64
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60
  store ptr %42, ptr %61, align 8, !tbaa !88
  br label %66

62:                                               ; preds = %53
  %63 = load i16, ptr %45, align 4
  %64 = or i16 %63, 256
  store i16 %64, ptr %45, align 4
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 3
  store i32 -1, ptr %65, align 4, !tbaa !140
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i32 [ %59, %57 ], [ %11, %62 ]
  %68 = load i32, ptr %42, align 8, !tbaa !137
  %69 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %68) #23
  br label %70

70:                                               ; preds = %66, %49, %44
  %71 = phi i32 [ %11, %44 ], [ %11, %49 ], [ %67, %66 ]
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !141
  %74 = icmp slt i32 %73, %0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !139
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %70
  br label %8, !llvm.loop !142

80:                                               ; preds = %75
  %81 = load i16, ptr %45, align 4
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 23
  %83 = load ptr, ptr %82, align 8, !tbaa !143
  %84 = and i16 %81, 2048
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 21
  %88 = load i32, ptr %87, align 8, !tbaa !144
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 22
  %90 = load i32, ptr %89, align 4, !tbaa !145
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = sub i32 %90, %88
  %94 = add i32 %93, 64
  %95 = sdiv i32 %94, 64
  %96 = shl nsw i32 %95, 3
  br label %97

97:                                               ; preds = %86, %92
  %98 = phi i32 [ %96, %92 ], [ 0, %86 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %83, align 8, !tbaa !146
  br label %102

102:                                              ; preds = %97, %100, %80
  %103 = phi i32 [ 0, %80 ], [ %88, %100 ], [ %88, %97 ]
  %104 = phi i32 [ 0, %80 ], [ %98, %100 ], [ %98, %97 ]
  %105 = phi i64 [ 0, %80 ], [ %101, %100 ], [ 0, %97 ]
  %106 = zext i32 %104 to i64
  %107 = zext i1 %85 to i32
  %108 = xor i1 %85, true
  %109 = zext i1 %108 to i32
  %110 = zext i1 %85 to i64
  br label %111

111:                                              ; preds = %185, %102
  %112 = phi i32 [ 0, %102 ], [ %187, %185 ]
  %113 = phi i32 [ 0, %102 ], [ %188, %185 ]
  %114 = phi i64 [ %105, %102 ], [ %189, %185 ]
  %115 = phi ptr [ %4, %102 ], [ %171, %185 ]
  %116 = phi i32 [ %71, %102 ], [ %186, %185 ]
  br i1 %85, label %117, label %124

117:                                              ; preds = %111
  %118 = icmp eq i64 %114, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %117
  %120 = add i32 %113, 1
  %121 = zext i32 %120 to i64
  %122 = shl nuw nsw i64 %121, 3
  %123 = icmp ult i64 %122, %106
  br i1 %123, label %144, label %167

124:                                              ; preds = %111
  %125 = zext i32 %113 to i64
  %126 = getelementptr inbounds ptr, ptr %83, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !88
  %128 = icmp ne ptr %127, null
  %129 = select i1 %128, ptr %127, ptr %115
  %130 = zext i1 %128 to i8
  br label %167

131:                                              ; preds = %144
  %132 = shl i32 %146, 6
  br label %133

133:                                              ; preds = %131, %117
  %134 = phi i32 [ %112, %117 ], [ %132, %131 ]
  %135 = phi i32 [ %113, %117 ], [ %146, %131 ]
  %136 = phi i64 [ %114, %117 ], [ %148, %131 ]
  %137 = and i64 %136, 1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %150, label %157

139:                                              ; preds = %144
  %140 = add i32 %146, 1
  %141 = zext i32 %140 to i64
  %142 = shl nuw nsw i64 %141, 3
  %143 = icmp ult i64 %142, %106
  br i1 %143, label %144, label %165, !llvm.loop !147

144:                                              ; preds = %119, %139
  %145 = phi i64 [ %141, %139 ], [ %121, %119 ]
  %146 = phi i32 [ %140, %139 ], [ %120, %119 ]
  %147 = getelementptr inbounds i64, ptr %83, i64 %145
  %148 = load i64, ptr %147, align 8, !tbaa !146
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %139, label %131, !llvm.loop !147

150:                                              ; preds = %133, %150
  %151 = phi i64 [ %154, %150 ], [ %136, %133 ]
  %152 = phi i32 [ %153, %150 ], [ %134, %133 ]
  %153 = add i32 %152, 1
  %154 = lshr exact i64 %151, 1
  %155 = and i64 %151, 2
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %150, label %157, !llvm.loop !148

157:                                              ; preds = %150, %133
  %158 = phi i32 [ %134, %133 ], [ %153, %150 ]
  %159 = phi i64 [ %136, %133 ], [ %154, %150 ]
  %160 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !88
  %161 = add i32 %158, %103
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !88
  br label %167

165:                                              ; preds = %139
  %166 = shl i32 %146, 6
  br label %167

167:                                              ; preds = %165, %119, %124, %157
  %168 = phi i32 [ %158, %157 ], [ %112, %124 ], [ %112, %119 ], [ %166, %165 ]
  %169 = phi i32 [ %135, %157 ], [ %113, %124 ], [ %120, %119 ], [ %140, %165 ]
  %170 = phi i64 [ %159, %157 ], [ %114, %124 ], [ %114, %119 ], [ %148, %165 ]
  %171 = phi ptr [ %164, %157 ], [ %129, %124 ], [ %115, %119 ], [ %115, %165 ]
  %172 = phi i8 [ 1, %157 ], [ %130, %124 ], [ 0, %119 ], [ 0, %165 ]
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %3, label %174, !llvm.loop !142

174:                                              ; preds = %167
  %175 = load i32, ptr %171, align 8, !tbaa !137
  %176 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %175) #23
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i32, ptr %171, align 8, !tbaa !137
  %180 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %179) #23
  %181 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %182 = add nsw i32 %116, 1
  %183 = sext i32 %116 to i64
  %184 = getelementptr inbounds ptr, ptr %181, i64 %183
  store ptr %171, ptr %184, align 8, !tbaa !88
  br label %185

185:                                              ; preds = %174, %178
  %186 = phi i32 [ %116, %174 ], [ %182, %178 ]
  %187 = add i32 %168, %107
  %188 = add i32 %169, %109
  %189 = lshr i64 %170, %110
  br label %111, !llvm.loop !149

190:                                              ; preds = %40
  tail call void @ira_free_bitmap(ptr noundef %2) #23
  %191 = icmp sgt i32 %11, 1
  br i1 %191, label %192, label %196

192:                                              ; preds = %190
  %193 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call fastcc void @setup_allocno_priorities(ptr noundef %193, i32 noundef %11)
  %194 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %195 = zext nneg i32 %11 to i64
  tail call void @spec_qsort(ptr noundef %194, i64 noundef %195, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #23
  br label %196

196:                                              ; preds = %192, %190
  %197 = icmp sgt i32 %11, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  %199 = zext nneg i32 %11 to i64
  br label %204

200:                                              ; preds = %204, %196
  %201 = icmp sgt i32 %11, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %200
  %203 = zext nneg i32 %11 to i64
  br label %214

204:                                              ; preds = %198, %204
  %205 = phi i64 [ 0, %198 ], [ %212, %204 ]
  %206 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %207 = getelementptr inbounds ptr, ptr %206, i64 %205
  %208 = load ptr, ptr %207, align 8, !tbaa !88
  %209 = getelementptr inbounds %struct.ira_allocno, ptr %208, i64 0, i32 31
  %210 = load i16, ptr %209, align 4
  %211 = and i16 %210, -257
  store i16 %211, ptr %209, align 4
  tail call fastcc void @update_curr_costs(ptr noundef %208)
  %212 = add nuw nsw i64 %205, 1
  %213 = icmp eq i64 %212, %199
  br i1 %213, label %200, label %204, !llvm.loop !150

214:                                              ; preds = %202, %233
  %215 = phi i64 [ 0, %202 ], [ %234, %233 ]
  %216 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %217 = getelementptr inbounds ptr, ptr %216, i64 %215
  %218 = load ptr, ptr %217, align 8, !tbaa !88
  %219 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %218, i8 noundef zeroext 1), !range !151
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %214
  %222 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %223 = icmp sgt i32 %222, 3
  %224 = load ptr, ptr @ira_dump_file, align 8
  %225 = icmp ne ptr %224, null
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.ira_allocno, ptr %218, i64 0, i32 3
  %229 = load i32, ptr %228, align 4, !tbaa !140
  %230 = getelementptr inbounds %struct.ira_allocno, ptr %218, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !141
  %232 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %224, ptr noundef nonnull @.str, i32 noundef %229, i32 noundef %231)
  br label %233

233:                                              ; preds = %214, %227, %221
  %234 = add nuw nsw i64 %215, 1
  %235 = icmp eq i64 %234, %203
  br i1 %235, label %236, label %214, !llvm.loop !152

236:                                              ; preds = %233, %200
  ret void
}

declare ptr @ira_allocate_bitmap() local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @setup_allocno_priorities(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !87 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %39

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %37, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %36, %6 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !153
  %13 = sext i32 %12 to i64
  %14 = tail call i32 @floor_log2(i64 noundef %13) #23
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !154
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 10
  %19 = load i32, ptr %18, align 4, !tbaa !155
  %20 = sub nsw i32 %17, %19
  %21 = mul nsw i32 %20, %15
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !139
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !156
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !103
  %30 = mul nsw i32 %21, %29
  %31 = load ptr, ptr @allocno_priorities, align 8, !tbaa !88
  %32 = load i32, ptr %10, align 8, !tbaa !137
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 %30, ptr %34, align 4, !tbaa !103
  %35 = tail call i32 @llvm.abs.i32(i32 %30, i1 true)
  %36 = tail call i32 @llvm.smax.i32(i32 %8, i32 %35)
  %37 = add nuw nsw i64 %7, 1
  %38 = icmp eq i64 %37, %5
  br i1 %38, label %39, label %6, !llvm.loop !157

39:                                               ; preds = %6, %2
  %40 = phi i32 [ 0, %2 ], [ %36, %6 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = udiv i32 2147483647, %40
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %43, %42 ], [ 1, %39 ]
  %46 = icmp sgt i32 %1, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load ptr, ptr @allocno_priorities, align 8, !tbaa !88
  %49 = zext nneg i32 %1 to i64
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ 0, %47 ], [ %63, %50 ]
  %52 = getelementptr inbounds ptr, ptr %0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %53, i64 0, i32 14
  %55 = load i32, ptr %54, align 4, !tbaa !158
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 1)
  %57 = load i32, ptr %53, align 8, !tbaa !137
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %48, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !103
  %61 = mul nsw i32 %60, %45
  %62 = sdiv i32 %61, %56
  store i32 %62, ptr %59, align 4, !tbaa !103
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, %49
  br i1 %64, label %65, label %50, !llvm.loop !159

65:                                               ; preds = %50, %44
  ret void
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_priority_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !87 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = load ptr, ptr @allocno_priorities, align 8, !tbaa !88
  %6 = load i32, ptr %3, align 8, !tbaa !137
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !103
  %10 = load i32, ptr %4, align 8, !tbaa !137
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !103
  %14 = sub nsw i32 %13, %9
  %15 = icmp eq i32 %13, %9
  %16 = sub nsw i32 %6, %10
  %17 = select i1 %15, i32 %16, i32 %14
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_curr_costs(ptr noundef %0) unnamed_addr #9 !prof !87 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !139
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %145, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  %10 = icmp eq ptr %9, null
  br i1 %10, label %145, label %11

11:                                               ; preds = %5
  %12 = zext i32 %3 to i64
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %13
  %15 = zext i32 %7 to i64
  %16 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %20 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %12
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %23 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %12
  br label %24

24:                                               ; preds = %11, %143
  %25 = phi ptr [ undef, %11 ], [ %46, %143 ]
  %26 = phi ptr [ %9, %11 ], [ %46, %143 ]
  %27 = phi ptr [ undef, %11 ], [ %45, %143 ]
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !163
  %34 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !164
  br label %44

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !164
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !165
  br label %44

43:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2265, ptr noundef nonnull @.str.5) #23
  br label %44

44:                                               ; preds = %40, %43, %31
  %45 = phi ptr [ %35, %31 ], [ %29, %40 ], [ %27, %43 ]
  %46 = phi ptr [ %33, %31 ], [ %42, %40 ], [ %25, %43 ]
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !139
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %12, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !99
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %143, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 31
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 256
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %143, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !140
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %143, label %62

62:                                               ; preds = %58
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %12, i64 %63
  %67 = load i16, ptr %66, align 2, !tbaa !166
  %68 = sext i16 %67 to i64
  %69 = icmp slt i16 %67, 0
  br i1 %69, label %143, label %70

70:                                               ; preds = %62
  %71 = load ptr, ptr %28, align 8, !tbaa !161
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load ptr, ptr %16, align 8, !tbaa !88
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void @ira_init_register_move_cost(i32 noundef %7) #23
  br label %77

77:                                               ; preds = %73, %76
  %78 = zext i32 %65 to i64
  br label %85

79:                                               ; preds = %70
  %80 = load ptr, ptr %14, align 8, !tbaa !88
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void @ira_init_register_move_cost(i32 noundef %7) #23
  br label %83

83:                                               ; preds = %79, %82
  %84 = zext i32 %65 to i64
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi i64 [ %84, %83 ], [ %12, %77 ]
  %87 = phi i64 [ %12, %83 ], [ %78, %77 ]
  %88 = phi ptr [ %14, %83 ], [ %16, %77 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !88
  %90 = getelementptr inbounds [27 x i16], ptr %89, i64 %87, i64 %86
  %91 = load i16, ptr %90, align 2, !tbaa !166
  %92 = zext i16 %91 to i32
  %93 = load i32, ptr %18, align 4, !tbaa !155
  %94 = load ptr, ptr %19, align 8, !tbaa !167
  %95 = load ptr, ptr %17, align 8, !tbaa !88
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %85
  %98 = tail call ptr @ira_allocate_cost_vector(i32 noundef %3) #23
  store ptr %98, ptr %17, align 8, !tbaa !88
  %99 = load i32, ptr %20, align 4, !tbaa !103
  %100 = icmp eq ptr %94, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %101
  %104 = zext nneg i32 %99 to i64
  br label %108

105:                                              ; preds = %97
  %106 = sext i32 %99 to i64
  %107 = shl nsw i64 %106, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %98, ptr nonnull align 4 %94, i64 %107, i1 false)
  br label %113

108:                                              ; preds = %103, %108
  %109 = phi i64 [ 0, %103 ], [ %111, %108 ]
  %110 = getelementptr inbounds i32, ptr %98, i64 %109
  store i32 %93, ptr %110, align 4, !tbaa !103
  %111 = add nuw nsw i64 %109, 1
  %112 = icmp eq i64 %111, %104
  br i1 %112, label %113, label %108, !llvm.loop !168

113:                                              ; preds = %108, %101, %85, %105
  %114 = load ptr, ptr %22, align 8, !tbaa !169
  %115 = load ptr, ptr %21, align 8, !tbaa !88
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = tail call ptr @ira_allocate_cost_vector(i32 noundef %3) #23
  store ptr %118, ptr %21, align 8, !tbaa !88
  %119 = load i32, ptr %23, align 4, !tbaa !103
  %120 = icmp eq ptr %114, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = icmp sgt i32 %119, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %121
  %124 = zext nneg i32 %119 to i64
  %125 = shl nuw nsw i64 %124, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %118, i8 0, i64 %125, i1 false), !tbaa !103
  br label %129

126:                                              ; preds = %117
  %127 = sext i32 %119 to i64
  %128 = shl nsw i64 %127, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %118, ptr nonnull align 4 %114, i64 %128, i1 false)
  br label %129

129:                                              ; preds = %123, %121, %113, %126
  %130 = getelementptr inbounds %struct.ira_allocno_copy, ptr %26, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !170
  %132 = mul nsw i32 %131, %92
  %133 = load ptr, ptr %17, align 8, !tbaa !171
  %134 = getelementptr inbounds i32, ptr %133, i64 %68
  %135 = load i32, ptr %134, align 4, !tbaa !103
  %136 = sub nsw i32 %135, %132
  store i32 %136, ptr %134, align 4, !tbaa !103
  %137 = load i32, ptr %130, align 8, !tbaa !170
  %138 = mul nsw i32 %137, %92
  %139 = load ptr, ptr %21, align 8, !tbaa !172
  %140 = getelementptr inbounds i32, ptr %139, i64 %68
  %141 = load i32, ptr %140, align 4, !tbaa !103
  %142 = sub nsw i32 %141, %138
  store i32 %142, ptr %140, align 4, !tbaa !103
  br label %143

143:                                              ; preds = %62, %44, %53, %58, %129
  %144 = icmp eq ptr %46, null
  br i1 %144, label %145, label %24, !llvm.loop !173

145:                                              ; preds = %143, %5, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @assign_hard_reg(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !174 !PGOFuncName !175 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !139
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !103
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !156
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.full_costs, i8 0, i64 %11, i1 false), !prof !176
  %12 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %12, label %13, label %15, !prof !177

13:                                               ; preds = %2
  %14 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  tail call void @bitmap_clear(ptr noundef %14) #23
  br label %15

15:                                               ; preds = %13, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.costs, i8 0, i64 %11, i1 false), !prof !176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @assign_hard_reg.full_costs, i8 0, i64 %11, i1 false), !prof !176
  %16 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @update_cost_check, align 4, !tbaa !103
  store ptr null, ptr @update_cost_queue, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 19
  %19 = icmp sgt i32 %7, 0
  %20 = icmp eq i8 %1, 0
  %21 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %5
  %22 = icmp slt i32 %7, 1
  %23 = zext i32 %7 to i64
  br label %24

24:                                               ; preds = %289, %15
  %25 = phi ptr [ undef, %15 ], [ %172, %289 ]
  %26 = phi i32 [ 0, %15 ], [ %33, %289 ]
  %27 = phi i64 [ 0, %15 ], [ %116, %289 ]
  %28 = phi ptr [ %18, %15 ], [ %291, %289 ]
  %29 = phi i32 [ 0, %15 ], [ %59, %289 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !178
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !179
  %33 = add nsw i32 %32, %26
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 27
  %35 = load i64, ptr %34, align 8, !tbaa !180
  %36 = or i64 %35, %27
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 34
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 33
  %39 = load ptr, ptr %38, align 8, !tbaa !167
  %40 = load ptr, ptr %37, align 8, !tbaa !88
  %41 = icmp ne ptr %40, null
  %42 = icmp eq ptr %39, null
  %43 = or i1 %42, %41
  br i1 %43, label %49, label %44, !prof !181

44:                                               ; preds = %24
  %45 = tail call ptr @ira_allocate_cost_vector(i32 noundef %4) #23
  store ptr %45, ptr %37, align 8, !tbaa !88
  %46 = load i32, ptr %6, align 4, !tbaa !103
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %45, ptr align 4 %39, i64 %48, i1 false), !prof !182
  br label %49

49:                                               ; preds = %24, %44
  %50 = load ptr, ptr %37, align 8, !tbaa !171
  %51 = icmp eq i32 %29, 0
  br i1 %51, label %52, label %57, !prof !183

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 31
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 32
  %56 = icmp ne i16 %55, 0
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi i1 [ true, %49 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 11
  %61 = load i32, ptr %60, align 8, !tbaa !184
  br i1 %19, label %62, label %80, !prof !185

62:                                               ; preds = %57
  %63 = zext nneg i32 %7 to i64
  %64 = icmp eq ptr %50, null
  br label %65

65:                                               ; preds = %62, %70
  %66 = phi i64 [ 0, %62 ], [ %78, %70 ]
  br i1 %64, label %70, label %67, !prof !186

67:                                               ; preds = %65
  %68 = getelementptr inbounds i32, ptr %50, i64 %66
  %69 = load i32, ptr %68, align 4, !tbaa !103
  br label %70

70:                                               ; preds = %65, %67
  %71 = phi i32 [ %69, %67 ], [ %61, %65 ]
  %72 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.costs, i64 0, i64 %66
  %73 = load i32, ptr %72, align 4, !tbaa !103
  %74 = add nsw i32 %73, %71
  store i32 %74, ptr %72, align 4, !tbaa !103
  %75 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %66
  %76 = load i32, ptr %75, align 4, !tbaa !103
  %77 = add nsw i32 %76, %71
  store i32 %77, ptr %75, align 4, !tbaa !103
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %78, %63
  br i1 %79, label %80, label %65, !prof !187, !llvm.loop !188

80:                                               ; preds = %70, %57
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 31
  %82 = load i16, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 23
  %84 = load ptr, ptr %83, align 8, !tbaa !143
  %85 = and i16 %82, 2048
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %103, !prof !189

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 21
  %89 = load i32, ptr %88, align 8, !tbaa !144
  %90 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 22
  %91 = load i32, ptr %90, align 4, !tbaa !145
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %98, label %93, !prof !190

93:                                               ; preds = %87
  %94 = sub i32 %91, %89
  %95 = add i32 %94, 64
  %96 = sdiv i32 %95, 64
  %97 = shl nsw i32 %96, 3
  br label %98

98:                                               ; preds = %87, %93
  %99 = phi i32 [ %97, %93 ], [ 0, %87 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101, !prof !190

101:                                              ; preds = %98
  %102 = load i64, ptr %84, align 8, !tbaa !146
  br label %103

103:                                              ; preds = %98, %101, %80
  %104 = phi i32 [ 0, %80 ], [ %99, %101 ], [ %99, %98 ]
  %105 = phi i32 [ 0, %80 ], [ %89, %101 ], [ %89, %98 ]
  %106 = phi i64 [ 0, %80 ], [ %102, %101 ], [ 0, %98 ]
  %107 = zext i1 %86 to i32
  %108 = xor i1 %86, true
  %109 = zext i1 %108 to i32
  %110 = zext i1 %86 to i64
  br label %111

111:                                              ; preds = %284, %103
  %112 = phi i32 [ 0, %103 ], [ %286, %284 ]
  %113 = phi i32 [ 0, %103 ], [ %287, %284 ]
  %114 = phi i64 [ %106, %103 ], [ %288, %284 ]
  %115 = phi ptr [ %25, %103 ], [ %172, %284 ]
  %116 = phi i64 [ %36, %103 ], [ %285, %284 ]
  br i1 %86, label %117, label %125, !prof !191

117:                                              ; preds = %111
  %118 = icmp eq i64 %114, 0
  br i1 %118, label %119, label %134, !prof !192

119:                                              ; preds = %117
  %120 = zext i32 %104 to i64
  %121 = add i32 %113, 1
  %122 = zext i32 %121 to i64
  %123 = shl nuw nsw i64 %122, 3
  %124 = icmp ult i64 %123, %120
  br i1 %124, label %145, label %168, !prof !193

125:                                              ; preds = %111
  %126 = zext i32 %113 to i64
  %127 = getelementptr inbounds ptr, ptr %84, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !88
  %129 = icmp ne ptr %128, null
  %130 = select i1 %129, ptr %128, ptr %115, !prof !194
  %131 = zext i1 %129 to i8
  br label %168

132:                                              ; preds = %145
  %133 = shl i32 %147, 6
  br label %134

134:                                              ; preds = %132, %117
  %135 = phi i32 [ %112, %117 ], [ %133, %132 ]
  %136 = phi i32 [ %113, %117 ], [ %147, %132 ]
  %137 = phi i64 [ %114, %117 ], [ %149, %132 ]
  %138 = and i64 %137, 1
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %151, label %158, !prof !195

140:                                              ; preds = %145
  %141 = add i32 %147, 1
  %142 = zext i32 %141 to i64
  %143 = shl nuw nsw i64 %142, 3
  %144 = icmp ult i64 %143, %120
  br i1 %144, label %145, label %166, !prof !196, !llvm.loop !147

145:                                              ; preds = %119, %140
  %146 = phi i64 [ %142, %140 ], [ %122, %119 ]
  %147 = phi i32 [ %141, %140 ], [ %121, %119 ]
  %148 = getelementptr inbounds i64, ptr %84, i64 %146
  %149 = load i64, ptr %148, align 8, !tbaa !146
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %140, label %132, !prof !197, !llvm.loop !147

151:                                              ; preds = %134, %151
  %152 = phi i64 [ %155, %151 ], [ %137, %134 ]
  %153 = phi i32 [ %154, %151 ], [ %135, %134 ]
  %154 = add i32 %153, 1
  %155 = lshr exact i64 %152, 1
  %156 = and i64 %152, 2
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %151, label %158, !prof !198, !llvm.loop !148

158:                                              ; preds = %151, %134
  %159 = phi i32 [ %135, %134 ], [ %154, %151 ]
  %160 = phi i64 [ %137, %134 ], [ %155, %151 ]
  %161 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !88
  %162 = add i32 %159, %105
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !88
  br label %168

166:                                              ; preds = %140
  %167 = shl i32 %147, 6
  br label %168

168:                                              ; preds = %166, %119, %125, %158
  %169 = phi i32 [ %159, %158 ], [ %112, %125 ], [ %112, %119 ], [ %167, %166 ]
  %170 = phi i32 [ %136, %158 ], [ %113, %125 ], [ %121, %119 ], [ %141, %166 ]
  %171 = phi i64 [ %160, %158 ], [ %114, %125 ], [ %114, %119 ], [ %149, %166 ]
  %172 = phi ptr [ %165, %158 ], [ %130, %125 ], [ %115, %119 ], [ %115, %166 ]
  %173 = phi i8 [ 1, %158 ], [ %131, %125 ], [ 0, %119 ], [ 0, %166 ]
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %289, label %175, !prof !199

175:                                              ; preds = %168
  br i1 %20, label %176, label %181, !prof !200

176:                                              ; preds = %175
  %177 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %178 = load i32, ptr %172, align 8, !tbaa !137
  %179 = tail call i32 @bitmap_bit_p(ptr noundef %177, i32 noundef %178) #23
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %284, label %181, !prof !201

181:                                              ; preds = %176, %175
  %182 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 9
  %183 = load i32, ptr %182, align 8, !tbaa !139
  %184 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %184, label %185, label %194, !prof !201

185:                                              ; preds = %181
  %186 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %187 = load i32, ptr %172, align 8, !tbaa !137
  %188 = tail call i32 @bitmap_bit_p(ptr noundef %186, i32 noundef %187) #23
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %284

190:                                              ; preds = %185
  %191 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %192 = load i32, ptr %172, align 8, !tbaa !137
  %193 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %191, i32 noundef %192) #23
  br label %194

194:                                              ; preds = %190, %181
  %195 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 31
  %196 = load i16, ptr %195, align 4
  %197 = and i16 %196, 256
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %219, label %199, !prof !202

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !140
  %202 = icmp sgt i32 %201, -1
  br i1 %202, label %203, label %284, !prof !203

203:                                              ; preds = %199
  %204 = zext nneg i32 %201 to i64
  %205 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %5, i64 %204
  %206 = load i16, ptr %205, align 2, !tbaa !166
  %207 = icmp sgt i16 %206, -1
  br i1 %207, label %208, label %284, !prof !204

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 2
  %210 = load i32, ptr %209, align 8, !tbaa !156
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %204, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !146
  %214 = or i64 %213, %116
  %215 = load i64, ptr %21, align 8, !tbaa !146
  %216 = xor i64 %214, -1
  %217 = and i64 %215, %216
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %709, label %284, !prof !205

219:                                              ; preds = %194
  %220 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 18
  %221 = load ptr, ptr %220, align 8, !tbaa !206
  %222 = getelementptr inbounds %struct.ira_allocno, ptr %221, i64 0, i32 31
  %223 = load i16, ptr %222, align 4
  %224 = and i16 %223, 512
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %284, !prof !207

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 36
  %228 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 35
  %229 = load ptr, ptr %228, align 8, !tbaa !169
  %230 = load ptr, ptr %227, align 8, !tbaa !88
  %231 = icmp ne ptr %230, null
  %232 = icmp eq ptr %229, null
  %233 = or i1 %232, %231
  br i1 %233, label %241, label %234, !prof !208

234:                                              ; preds = %226
  %235 = tail call ptr @ira_allocate_cost_vector(i32 noundef %183) #23
  store ptr %235, ptr %227, align 8, !tbaa !88
  %236 = zext i32 %183 to i64
  %237 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !103
  %239 = sext i32 %238 to i64
  %240 = shl nsw i64 %239, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %235, ptr align 4 %229, i64 %240, i1 false), !prof !209
  br label %241

241:                                              ; preds = %226, %234
  %242 = load ptr, ptr %227, align 8, !tbaa !172
  %243 = icmp eq ptr %242, null
  %244 = select i1 %243, i1 true, i1 %22
  br i1 %244, label %265, label %245, !prof !210

245:                                              ; preds = %241
  %246 = zext i32 %183 to i64
  br label %247

247:                                              ; preds = %245, %263
  %248 = phi i64 [ %23, %245 ], [ %249, %263 ]
  %249 = add nsw i64 %248, -1
  %250 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %5, i64 %249
  %251 = load i16, ptr %250, align 2, !tbaa !166
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %246, i64 %252
  %254 = load i16, ptr %253, align 2, !tbaa !166
  %255 = icmp slt i16 %254, 0
  br i1 %255, label %263, label %256, !prof !211

256:                                              ; preds = %247
  %257 = zext nneg i16 %254 to i64
  %258 = getelementptr inbounds i32, ptr %242, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !103
  %260 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %249
  %261 = load i32, ptr %260, align 4, !tbaa !103
  %262 = sub nsw i32 %261, %259
  store i32 %262, ptr %260, align 4, !tbaa !103
  br label %263

263:                                              ; preds = %247, %256
  %264 = icmp sgt i64 %248, 1
  br i1 %264, label %247, label %265, !prof !212, !llvm.loop !213

265:                                              ; preds = %263, %241
  %266 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %267 = load i32, ptr %172, align 8, !tbaa !137
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %266, i64 %268
  %270 = load i32, ptr %269, align 8, !tbaa !214
  %271 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %284, label %273, !prof !216

273:                                              ; preds = %265
  %274 = load i32, ptr %182, align 8, !tbaa !139
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %284, label %276, !prof !216

276:                                              ; preds = %273
  store i32 %271, ptr %269, align 8, !tbaa !214
  %277 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %266, i64 %268, i32 1
  store i32 4, ptr %277, align 4, !tbaa !217
  %278 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %266, i64 %268, i32 2
  store ptr null, ptr %278, align 8, !tbaa !218
  %279 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %280 = icmp eq ptr %279, null
  %281 = load ptr, ptr @update_cost_queue_tail, align 8
  %282 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %281, i64 0, i32 2
  %283 = select i1 %280, ptr @update_cost_queue, ptr %282, !prof !219
  store ptr %172, ptr %283, align 8, !tbaa !88
  store ptr %269, ptr @update_cost_queue_tail, align 8, !tbaa !88
  br label %284

284:                                              ; preds = %276, %273, %265, %176, %219, %199, %203, %208, %185
  %285 = phi i64 [ %116, %185 ], [ %214, %208 ], [ %116, %203 ], [ %116, %199 ], [ %116, %219 ], [ %116, %176 ], [ %116, %265 ], [ %116, %273 ], [ %116, %276 ]
  %286 = add i32 %169, %107
  %287 = add i32 %170, %109
  %288 = lshr i64 %171, %110
  br label %111, !llvm.loop !220

289:                                              ; preds = %168
  %290 = icmp eq ptr %30, %0
  %291 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 19
  br i1 %290, label %295, label %24, !prof !183, !llvm.loop !221

292:                                              ; preds = %435, %313
  %293 = phi ptr [ %298, %313 ], [ %338, %435 ]
  %294 = phi ptr [ %299, %313 ], [ %339, %435 ]
  br label %295, !llvm.loop !222

295:                                              ; preds = %289, %292
  %296 = phi i32 [ %311, %292 ], [ undef, %289 ]
  %297 = phi ptr [ %312, %292 ], [ undef, %289 ]
  %298 = phi ptr [ %293, %292 ], [ undef, %289 ]
  %299 = phi ptr [ %294, %292 ], [ undef, %289 ]
  %300 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %301 = icmp eq ptr %300, null
  br i1 %301, label %310, label %302, !prof !223

302:                                              ; preds = %295
  %303 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %304 = load i32, ptr %300, align 8, !tbaa !137
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %303, i64 %305, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !217
  %308 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %303, i64 %305, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !218
  store ptr %309, ptr @update_cost_queue, align 8, !tbaa !88
  br label %310

310:                                              ; preds = %302, %295
  %311 = phi i32 [ %296, %295 ], [ %307, %302 ]
  %312 = phi ptr [ %297, %295 ], [ %300, %302 ]
  br i1 %301, label %437, label %313, !prof !223

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.ira_allocno, ptr %312, i64 0, i32 15
  %315 = load ptr, ptr %314, align 8, !tbaa !160
  %316 = icmp eq ptr %315, null
  br i1 %316, label %292, label %317, !prof !224

317:                                              ; preds = %313, %435
  %318 = phi ptr [ %339, %435 ], [ %299, %313 ]
  %319 = phi ptr [ %339, %435 ], [ %315, %313 ]
  %320 = phi ptr [ %338, %435 ], [ %298, %313 ]
  %321 = getelementptr inbounds %struct.ira_allocno_copy, ptr %319, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !161
  %323 = icmp eq ptr %322, %312
  br i1 %323, label %324, label %329, !prof !225

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.ira_allocno_copy, ptr %319, i64 0, i32 7
  %326 = load ptr, ptr %325, align 8, !tbaa !163
  %327 = getelementptr inbounds %struct.ira_allocno_copy, ptr %319, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !164
  br label %337

329:                                              ; preds = %317
  %330 = getelementptr inbounds %struct.ira_allocno_copy, ptr %319, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !164
  %332 = icmp eq ptr %331, %312
  br i1 %332, label %333, label %336, !prof !226

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.ira_allocno_copy, ptr %319, i64 0, i32 9
  %335 = load ptr, ptr %334, align 8, !tbaa !165
  br label %337

336:                                              ; preds = %329
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 347, ptr noundef nonnull @.str.5) #23
  br label %337

337:                                              ; preds = %336, %333, %324
  %338 = phi ptr [ %328, %324 ], [ %322, %333 ], [ %320, %336 ]
  %339 = phi ptr [ %326, %324 ], [ %335, %333 ], [ %318, %336 ]
  %340 = getelementptr inbounds %struct.ira_allocno, ptr %338, i64 0, i32 9
  %341 = load i32, ptr %340, align 8, !tbaa !139
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %5, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !99
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %435, label %346, !prof !227

346:                                              ; preds = %337
  %347 = getelementptr inbounds %struct.ira_allocno, ptr %338, i64 0, i32 31
  %348 = load i16, ptr %347, align 4
  %349 = and i16 %348, 256
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %351, label %435, !prof !228

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.ira_allocno, ptr %338, i64 0, i32 18
  %353 = load ptr, ptr %352, align 8, !tbaa !206
  %354 = getelementptr inbounds %struct.ira_allocno, ptr %353, i64 0, i32 31
  %355 = load i16, ptr %354, align 4
  %356 = and i16 %355, 512
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %358, label %435, !prof !229

358:                                              ; preds = %351
  %359 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %342
  %360 = load i32, ptr %359, align 4, !tbaa !103
  %361 = getelementptr inbounds %struct.ira_allocno, ptr %338, i64 0, i32 36
  %362 = getelementptr inbounds %struct.ira_allocno, ptr %338, i64 0, i32 35
  %363 = load ptr, ptr %362, align 8, !tbaa !169
  %364 = load ptr, ptr %361, align 8, !tbaa !88
  %365 = icmp ne ptr %364, null
  %366 = icmp eq ptr %363, null
  %367 = or i1 %366, %365
  br i1 %367, label %373, label %368, !prof !230

368:                                              ; preds = %358
  %369 = tail call ptr @ira_allocate_cost_vector(i32 noundef %341) #23
  store ptr %369, ptr %361, align 8, !tbaa !88
  %370 = load i32, ptr %359, align 4, !tbaa !103
  %371 = sext i32 %370 to i64
  %372 = shl nsw i64 %371, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %369, ptr align 4 %363, i64 %372, i1 false), !prof !231
  br label %373

373:                                              ; preds = %368, %358
  %374 = load ptr, ptr %361, align 8, !tbaa !172
  %375 = icmp eq ptr %374, null
  br i1 %375, label %410, label %376, !prof !232

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.ira_allocno_copy, ptr %319, i64 0, i32 3
  %378 = load i32, ptr %377, align 8, !tbaa !170
  %379 = getelementptr inbounds %struct.ira_allocno, ptr %338, i64 0, i32 8
  %380 = load i32, ptr %379, align 4, !tbaa !233
  %381 = tail call i32 @llvm.umax.i32(i32 %380, i32 1)
  %382 = mul nsw i32 %381, %311
  %383 = icmp sgt i32 %360, 0
  br i1 %383, label %384, label %410, !prof !234

384:                                              ; preds = %376
  %385 = zext nneg i32 %360 to i64
  br label %386

386:                                              ; preds = %407, %384
  %387 = phi i64 [ %385, %384 ], [ %389, %407 ]
  %388 = phi i8 [ 0, %384 ], [ %408, %407 ]
  %389 = add nsw i64 %387, -1
  %390 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %342, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !166
  %392 = sext i16 %391 to i64
  %393 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %5, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !166
  %395 = sext i16 %394 to i64
  %396 = icmp slt i16 %394, 0
  br i1 %396, label %407, label %397, !prof !235

397:                                              ; preds = %386
  %398 = getelementptr inbounds i32, ptr %374, i64 %389
  %399 = load i32, ptr %398, align 4, !tbaa !103
  %400 = mul nsw i32 %399, %378
  %401 = sdiv i32 %400, %382
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %407, label %403, !prof !236

403:                                              ; preds = %397
  %404 = getelementptr inbounds i32, ptr @assign_hard_reg.full_costs, i64 %395
  %405 = load i32, ptr %404, align 4, !tbaa !103
  %406 = sub i32 %405, %401
  store i32 %406, ptr %404, align 4, !tbaa !103
  br label %407

407:                                              ; preds = %403, %397, %386
  %408 = phi i8 [ %388, %386 ], [ %388, %397 ], [ 1, %403 ]
  %409 = icmp sgt i64 %387, 1
  br i1 %409, label %386, label %410, !prof !237, !llvm.loop !238

410:                                              ; preds = %407, %376, %373
  %411 = phi i8 [ 1, %373 ], [ 0, %376 ], [ %408, %407 ]
  %412 = icmp slt i32 %311, 257
  %413 = icmp ne i8 %411, 0
  %414 = select i1 %413, i1 %412, i1 false, !prof !239
  br i1 %414, label %415, label %435, !prof !240

415:                                              ; preds = %410
  %416 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %417 = load i32, ptr %338, align 8, !tbaa !137
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %416, i64 %418
  %420 = load i32, ptr %419, align 8, !tbaa !214
  %421 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %435, label %423, !prof !241

423:                                              ; preds = %415
  %424 = load i32, ptr %340, align 8, !tbaa !139
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %435, label %426, !prof !242

426:                                              ; preds = %423
  %427 = shl nsw i32 %311, 2
  store i32 %421, ptr %419, align 8, !tbaa !214
  %428 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %416, i64 %418, i32 1
  store i32 %427, ptr %428, align 4, !tbaa !217
  %429 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %416, i64 %418, i32 2
  store ptr null, ptr %429, align 8, !tbaa !218
  %430 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %431 = icmp eq ptr %430, null
  %432 = load ptr, ptr @update_cost_queue_tail, align 8
  %433 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %432, i64 0, i32 2
  %434 = select i1 %431, ptr @update_cost_queue, ptr %433, !prof !243
  store ptr %338, ptr %434, align 8, !tbaa !88
  store ptr %419, ptr @update_cost_queue_tail, align 8, !tbaa !88
  br label %435

435:                                              ; preds = %426, %423, %415, %410, %351, %346, %337
  %436 = icmp eq ptr %339, null
  br i1 %436, label %292, label %317, !prof !244, !llvm.loop !245

437:                                              ; preds = %310
  %438 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %439 = add nsw i32 %438, 1
  store i32 %439, ptr @update_cost_check, align 4, !tbaa !103
  store ptr null, ptr @update_cost_queue, align 8, !tbaa !88
  %440 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %441 = load ptr, ptr @update_cost_queue_tail, align 8, !tbaa !88
  br label %442

442:                                              ; preds = %465, %437
  %443 = phi ptr [ %441, %437 ], [ %466, %465 ]
  %444 = phi ptr [ null, %437 ], [ %467, %465 ]
  %445 = phi ptr [ %18, %437 ], [ %469, %465 ]
  %446 = load ptr, ptr %445, align 8, !tbaa !178
  %447 = load i32, ptr %446, align 8, !tbaa !137
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %440, i64 %448
  %450 = load i32, ptr %449, align 8, !tbaa !214
  %451 = icmp eq i32 %450, %439
  br i1 %451, label %465, label %452, !prof !177

452:                                              ; preds = %442
  %453 = getelementptr inbounds %struct.ira_allocno, ptr %446, i64 0, i32 9
  %454 = load i32, ptr %453, align 8, !tbaa !139
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %465, label %456, !prof !177

456:                                              ; preds = %452
  store i32 %439, ptr %449, align 8, !tbaa !214
  %457 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %440, i64 %448, i32 1
  store i32 4, ptr %457, align 4, !tbaa !217
  %458 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %440, i64 %448, i32 2
  store ptr null, ptr %458, align 8, !tbaa !218
  %459 = icmp eq ptr %444, null
  br i1 %459, label %462, label %460, !prof !183

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %443, i64 0, i32 2
  br label %462

462:                                              ; preds = %456, %460
  %463 = phi ptr [ %461, %460 ], [ @update_cost_queue, %456 ]
  %464 = phi ptr [ %444, %460 ], [ %446, %456 ]
  store ptr %446, ptr %463, align 8, !tbaa !88
  store ptr %449, ptr @update_cost_queue_tail, align 8, !tbaa !88
  br label %465

465:                                              ; preds = %442, %452, %462
  %466 = phi ptr [ %443, %442 ], [ %443, %452 ], [ %449, %462 ]
  %467 = phi ptr [ %444, %442 ], [ %444, %452 ], [ %464, %462 ]
  %468 = icmp eq ptr %446, %0
  %469 = getelementptr inbounds %struct.ira_allocno, ptr %446, i64 0, i32 19
  br i1 %468, label %473, label %442, !prof !183, !llvm.loop !246

470:                                              ; preds = %619, %497
  %471 = phi ptr [ %476, %497 ], [ %522, %619 ]
  %472 = phi ptr [ %477, %497 ], [ %523, %619 ]
  br label %473, !llvm.loop !222

473:                                              ; preds = %465, %470
  %474 = phi i32 [ %489, %470 ], [ undef, %465 ]
  %475 = phi ptr [ %490, %470 ], [ undef, %465 ]
  %476 = phi ptr [ %471, %470 ], [ undef, %465 ]
  %477 = phi ptr [ %472, %470 ], [ undef, %465 ]
  %478 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %479 = icmp eq ptr %478, null
  br i1 %479, label %488, label %480, !prof !223

480:                                              ; preds = %473
  %481 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %482 = load i32, ptr %478, align 8, !tbaa !137
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %481, i64 %483, i32 1
  %485 = load i32, ptr %484, align 4, !tbaa !217
  %486 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %481, i64 %483, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !218
  store ptr %487, ptr @update_cost_queue, align 8, !tbaa !88
  br label %488

488:                                              ; preds = %480, %473
  %489 = phi i32 [ %474, %473 ], [ %485, %480 ]
  %490 = phi ptr [ %475, %473 ], [ %478, %480 ]
  br i1 %479, label %491, label %497, !prof !223

491:                                              ; preds = %488
  %492 = icmp sgt i32 %7, 0
  br i1 %492, label %493, label %695, !prof !185

493:                                              ; preds = %491
  %494 = zext i32 %9 to i64
  %495 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %5, i64 %494
  %496 = zext nneg i32 %7 to i64
  br label %621

497:                                              ; preds = %488
  %498 = getelementptr inbounds %struct.ira_allocno, ptr %490, i64 0, i32 15
  %499 = load ptr, ptr %498, align 8, !tbaa !160
  %500 = icmp eq ptr %499, null
  br i1 %500, label %470, label %501, !prof !224

501:                                              ; preds = %497, %619
  %502 = phi ptr [ %523, %619 ], [ %477, %497 ]
  %503 = phi ptr [ %523, %619 ], [ %499, %497 ]
  %504 = phi ptr [ %522, %619 ], [ %476, %497 ]
  %505 = getelementptr inbounds %struct.ira_allocno_copy, ptr %503, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !161
  %507 = icmp eq ptr %506, %490
  br i1 %507, label %508, label %513, !prof !225

508:                                              ; preds = %501
  %509 = getelementptr inbounds %struct.ira_allocno_copy, ptr %503, i64 0, i32 7
  %510 = load ptr, ptr %509, align 8, !tbaa !163
  %511 = getelementptr inbounds %struct.ira_allocno_copy, ptr %503, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !164
  br label %521

513:                                              ; preds = %501
  %514 = getelementptr inbounds %struct.ira_allocno_copy, ptr %503, i64 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !164
  %516 = icmp eq ptr %515, %490
  br i1 %516, label %517, label %520, !prof !226

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.ira_allocno_copy, ptr %503, i64 0, i32 9
  %519 = load ptr, ptr %518, align 8, !tbaa !165
  br label %521

520:                                              ; preds = %513
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 347, ptr noundef nonnull @.str.5) #23
  br label %521

521:                                              ; preds = %520, %517, %508
  %522 = phi ptr [ %512, %508 ], [ %506, %517 ], [ %504, %520 ]
  %523 = phi ptr [ %510, %508 ], [ %519, %517 ], [ %502, %520 ]
  %524 = getelementptr inbounds %struct.ira_allocno, ptr %522, i64 0, i32 9
  %525 = load i32, ptr %524, align 8, !tbaa !139
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %5, i64 %526
  %528 = load i8, ptr %527, align 1, !tbaa !99
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %619, label %530, !prof !227

530:                                              ; preds = %521
  %531 = getelementptr inbounds %struct.ira_allocno, ptr %522, i64 0, i32 31
  %532 = load i16, ptr %531, align 4
  %533 = and i16 %532, 256
  %534 = icmp eq i16 %533, 0
  br i1 %534, label %535, label %619, !prof !228

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.ira_allocno, ptr %522, i64 0, i32 18
  %537 = load ptr, ptr %536, align 8, !tbaa !206
  %538 = getelementptr inbounds %struct.ira_allocno, ptr %537, i64 0, i32 31
  %539 = load i16, ptr %538, align 4
  %540 = and i16 %539, 512
  %541 = icmp eq i16 %540, 0
  br i1 %541, label %542, label %619, !prof !229

542:                                              ; preds = %535
  %543 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %526
  %544 = load i32, ptr %543, align 4, !tbaa !103
  %545 = getelementptr inbounds %struct.ira_allocno, ptr %522, i64 0, i32 36
  %546 = getelementptr inbounds %struct.ira_allocno, ptr %522, i64 0, i32 35
  %547 = load ptr, ptr %546, align 8, !tbaa !169
  %548 = load ptr, ptr %545, align 8, !tbaa !88
  %549 = icmp ne ptr %548, null
  %550 = icmp eq ptr %547, null
  %551 = or i1 %550, %549
  br i1 %551, label %557, label %552, !prof !230

552:                                              ; preds = %542
  %553 = tail call ptr @ira_allocate_cost_vector(i32 noundef %525) #23
  store ptr %553, ptr %545, align 8, !tbaa !88
  %554 = load i32, ptr %543, align 4, !tbaa !103
  %555 = sext i32 %554 to i64
  %556 = shl nsw i64 %555, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %553, ptr align 4 %547, i64 %556, i1 false), !prof !231
  br label %557

557:                                              ; preds = %552, %542
  %558 = load ptr, ptr %545, align 8, !tbaa !172
  %559 = icmp eq ptr %558, null
  br i1 %559, label %594, label %560, !prof !232

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.ira_allocno_copy, ptr %503, i64 0, i32 3
  %562 = load i32, ptr %561, align 8, !tbaa !170
  %563 = getelementptr inbounds %struct.ira_allocno, ptr %522, i64 0, i32 8
  %564 = load i32, ptr %563, align 4, !tbaa !233
  %565 = tail call i32 @llvm.umax.i32(i32 %564, i32 1)
  %566 = mul nsw i32 %565, %489
  %567 = icmp sgt i32 %544, 0
  br i1 %567, label %568, label %594, !prof !234

568:                                              ; preds = %560
  %569 = zext nneg i32 %544 to i64
  br label %570

570:                                              ; preds = %591, %568
  %571 = phi i64 [ %569, %568 ], [ %573, %591 ]
  %572 = phi i8 [ 0, %568 ], [ %592, %591 ]
  %573 = add nsw i64 %571, -1
  %574 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %526, i64 %573
  %575 = load i16, ptr %574, align 2, !tbaa !166
  %576 = sext i16 %575 to i64
  %577 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %5, i64 %576
  %578 = load i16, ptr %577, align 2, !tbaa !166
  %579 = sext i16 %578 to i64
  %580 = icmp slt i16 %578, 0
  br i1 %580, label %591, label %581, !prof !235

581:                                              ; preds = %570
  %582 = getelementptr inbounds i32, ptr %558, i64 %573
  %583 = load i32, ptr %582, align 4, !tbaa !103
  %584 = mul nsw i32 %583, %562
  %585 = sdiv i32 %584, %566
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %591, label %587, !prof !236

587:                                              ; preds = %581
  %588 = getelementptr inbounds i32, ptr @assign_hard_reg.full_costs, i64 %579
  %589 = load i32, ptr %588, align 4, !tbaa !103
  %590 = add nsw i32 %589, %585
  store i32 %590, ptr %588, align 4, !tbaa !103
  br label %591

591:                                              ; preds = %587, %581, %570
  %592 = phi i8 [ %572, %570 ], [ %572, %581 ], [ 1, %587 ]
  %593 = icmp sgt i64 %571, 1
  br i1 %593, label %570, label %594, !prof !237, !llvm.loop !238

594:                                              ; preds = %591, %560, %557
  %595 = phi i8 [ 1, %557 ], [ 0, %560 ], [ %592, %591 ]
  %596 = icmp slt i32 %489, 257
  %597 = icmp ne i8 %595, 0
  %598 = select i1 %597, i1 %596, i1 false, !prof !239
  br i1 %598, label %599, label %619, !prof !240

599:                                              ; preds = %594
  %600 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %601 = load i32, ptr %522, align 8, !tbaa !137
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %600, i64 %602
  %604 = load i32, ptr %603, align 8, !tbaa !214
  %605 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %606 = icmp eq i32 %604, %605
  br i1 %606, label %619, label %607, !prof !241

607:                                              ; preds = %599
  %608 = load i32, ptr %524, align 8, !tbaa !139
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %619, label %610, !prof !242

610:                                              ; preds = %607
  %611 = shl nsw i32 %489, 2
  store i32 %605, ptr %603, align 8, !tbaa !214
  %612 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %600, i64 %602, i32 1
  store i32 %611, ptr %612, align 4, !tbaa !217
  %613 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %600, i64 %602, i32 2
  store ptr null, ptr %613, align 8, !tbaa !218
  %614 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %615 = icmp eq ptr %614, null
  %616 = load ptr, ptr @update_cost_queue_tail, align 8
  %617 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %616, i64 0, i32 2
  %618 = select i1 %615, ptr @update_cost_queue, ptr %617, !prof !243
  store ptr %522, ptr %618, align 8, !tbaa !88
  store ptr %603, ptr @update_cost_queue_tail, align 8, !tbaa !88
  br label %619

619:                                              ; preds = %610, %607, %599, %594, %535, %530, %521
  %620 = icmp eq ptr %523, null
  br i1 %620, label %470, label %501, !prof !244, !llvm.loop !245

621:                                              ; preds = %493, %690
  %622 = phi i64 [ 0, %493 ], [ %693, %690 ]
  %623 = phi i32 [ -1, %493 ], [ %692, %690 ]
  %624 = phi i32 [ 2147483647, %493 ], [ %691, %690 ]
  %625 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %5, i64 %622
  %626 = load i16, ptr %625, align 2, !tbaa !166
  %627 = sext i16 %626 to i32
  %628 = icmp sgt i16 %626, 7
  %629 = select i1 %58, i1 %628, i1 false, !prof !247
  %630 = icmp slt i16 %626, 16
  %631 = select i1 %629, i1 %630, i1 false, !prof !247
  br i1 %631, label %690, label %632, !prof !247

632:                                              ; preds = %621
  %633 = sext i16 %626 to i64
  %634 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %633, i64 %494
  %635 = load i8, ptr %634, align 1, !tbaa !99
  %636 = zext i8 %635 to i64
  br label %637

637:                                              ; preds = %640, %632
  %638 = phi i64 [ %642, %640 ], [ %636, %632 ]
  %639 = icmp sgt i64 %638, 0
  br i1 %639, label %640, label %648, !prof !248

640:                                              ; preds = %637
  %641 = sext i16 %626 to i64
  %642 = add nsw i64 %638, -1
  %643 = add nsw i64 %642, %641
  %644 = shl nuw i64 1, %643
  %645 = and i64 %644, %116
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %637, label %647, !prof !249, !llvm.loop !250

647:                                              ; preds = %640
  br i1 %639, label %690, label %648, !prof !251

648:                                              ; preds = %637, %647
  %649 = load i64, ptr %495, align 8, !tbaa !146
  %650 = zext nneg i32 %627 to i64
  %651 = shl nuw i64 1, %650
  %652 = and i64 %649, %651
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %690, !prof !252

654:                                              ; preds = %648
  %655 = getelementptr inbounds [53 x i32], ptr @assign_hard_reg.full_costs, i64 0, i64 %622
  %656 = load i32, ptr %655, align 4, !tbaa !103
  %657 = getelementptr inbounds [53 x i8], ptr @allocated_hardreg_p, i64 0, i64 %633
  %658 = load i8, ptr %657, align 1, !tbaa !99
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %660, label %685, !prof !253

660:                                              ; preds = %654, %663
  %661 = phi i64 [ %666, %663 ], [ %636, %654 ]
  %662 = icmp sgt i64 %661, 0
  br i1 %662, label %663, label %672, !prof !254

663:                                              ; preds = %660
  %664 = load i64, ptr @call_used_reg_set, align 8
  %665 = sext i16 %626 to i64
  %666 = add nsw i64 %661, -1
  %667 = add nsw i64 %666, %665
  %668 = shl nuw i64 1, %667
  %669 = and i64 %668, %664
  %670 = icmp eq i64 %669, 0
  br i1 %670, label %660, label %671, !prof !255, !llvm.loop !250

671:                                              ; preds = %663
  br i1 %662, label %685, label %672, !prof !256

672:                                              ; preds = %660, %671
  %673 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %633
  %674 = load i32, ptr %673, align 4, !tbaa !103
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %494, i64 %675
  %677 = load i16, ptr %676, align 4, !tbaa !166
  %678 = sext i16 %677 to i32
  %679 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %494, i64 %675, i64 1
  %680 = load i16, ptr %679, align 2, !tbaa !166
  %681 = sext i16 %680 to i32
  %682 = add nsw i32 %678, -1
  %683 = add nsw i32 %682, %681
  %684 = add nsw i32 %683, %656
  br label %685

685:                                              ; preds = %672, %671, %654
  %686 = phi i32 [ %656, %654 ], [ %684, %672 ], [ %656, %671 ]
  %687 = icmp sgt i32 %624, %686
  %688 = tail call i32 @llvm.smin.i32(i32 %624, i32 %686)
  %689 = select i1 %687, i32 %627, i32 %623, !prof !257
  br label %690

690:                                              ; preds = %685, %647, %648, %621
  %691 = phi i32 [ %624, %621 ], [ %624, %648 ], [ %624, %647 ], [ %688, %685 ]
  %692 = phi i32 [ %623, %621 ], [ %623, %648 ], [ %623, %647 ], [ %689, %685 ]
  %693 = add nuw nsw i64 %622, 1
  %694 = icmp eq i64 %693, %496
  br i1 %694, label %695, label %621, !prof !187, !llvm.loop !258

695:                                              ; preds = %690, %491
  %696 = phi i32 [ 2147483647, %491 ], [ %691, %690 ]
  %697 = phi i32 [ -1, %491 ], [ %692, %690 ]
  %698 = icmp sgt i32 %696, %33
  br i1 %698, label %699, label %709, !prof !259

699:                                              ; preds = %695
  %700 = icmp eq i8 %1, 0
  %701 = load i32, ptr @internal_flag_ira_verbose, align 4
  %702 = icmp sgt i32 %701, 3
  %703 = select i1 %700, i1 %702, i1 false, !prof !260
  %704 = load ptr, ptr @ira_dump_file, align 8
  %705 = icmp ne ptr %704, null
  %706 = select i1 %703, i1 %705, i1 false, !prof !260
  br i1 %706, label %707, label %709, !prof !261

707:                                              ; preds = %699
  %708 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %704, ptr noundef nonnull @.str.13, i32 noundef %33, i32 noundef %696)
  br label %709

709:                                              ; preds = %208, %699, %707, %695
  %710 = phi i32 [ %697, %695 ], [ -1, %707 ], [ -1, %699 ], [ -1, %208 ]
  %711 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !103
  %712 = icmp ne i32 %711, 1
  %713 = icmp slt i32 %710, 0
  %714 = select i1 %712, i1 %713, i1 false, !prof !183
  br i1 %714, label %715, label %778, !prof !259

715:                                              ; preds = %709
  %716 = load ptr, ptr %18, align 8, !tbaa !178
  %717 = icmp eq ptr %716, %0
  br i1 %717, label %778, label %718, !prof !260

718:                                              ; preds = %715
  %719 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  store ptr %716, ptr %719, align 8, !tbaa !88
  br label %720

720:                                              ; preds = %718, %720
  %721 = phi i32 [ 2, %718 ], [ %729, %720 ]
  %722 = phi i64 [ 1, %718 ], [ %726, %720 ]
  %723 = phi ptr [ %716, %718 ], [ %725, %720 ]
  %724 = getelementptr inbounds %struct.ira_allocno, ptr %723, i64 0, i32 19
  %725 = load ptr, ptr %724, align 8, !tbaa !178
  %726 = add nuw i64 %722, 1
  %727 = getelementptr inbounds ptr, ptr %719, i64 %722
  store ptr %725, ptr %727, align 8, !tbaa !88
  %728 = icmp eq ptr %725, %0
  %729 = add nuw i32 %721, 1
  br i1 %728, label %730, label %720, !llvm.loop !262

730:                                              ; preds = %720
  %731 = and i64 %726, 4294967295
  tail call void @spec_qsort(ptr noundef nonnull %719, i64 noundef %731, i64 noundef 8, ptr noundef nonnull @allocno_cost_compare_func) #23
  %732 = zext i32 %721 to i64
  br label %733

733:                                              ; preds = %730, %775
  %734 = phi i64 [ 0, %730 ], [ %776, %775 ]
  %735 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %736 = getelementptr inbounds ptr, ptr %735, i64 %734
  %737 = load ptr, ptr %736, align 8, !tbaa !88
  %738 = getelementptr inbounds %struct.ira_allocno, ptr %737, i64 0, i32 18
  store ptr %737, ptr %738, align 8, !tbaa !206
  %739 = getelementptr inbounds %struct.ira_allocno, ptr %737, i64 0, i32 19
  store ptr %737, ptr %739, align 8, !tbaa !178
  %740 = load ptr, ptr @allocno_stack_vec, align 8, !tbaa !88
  %741 = icmp eq ptr %740, null
  br i1 %741, label %747, label %742

742:                                              ; preds = %733
  %743 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %740, i64 0, i32 1
  %744 = load i32, ptr %743, align 4, !tbaa !263
  %745 = load i32, ptr %740, align 8, !tbaa !265
  %746 = icmp eq i32 %744, %745
  br i1 %746, label %747, label %749

747:                                              ; preds = %733, %742
  %748 = tail call ptr @vec_heap_p_reserve(ptr noundef %740, i32 noundef 1) #23
  store ptr %748, ptr @allocno_stack_vec, align 8, !tbaa !88
  br label %749

749:                                              ; preds = %742, %747
  %750 = load ptr, ptr @allocno_stack_vec, align 8, !tbaa !88
  %751 = load i32, ptr %750, align 8, !tbaa !265
  %752 = add i32 %751, 1
  store i32 %752, ptr %750, align 8, !tbaa !265
  %753 = zext i32 %751 to i64
  %754 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %750, i64 0, i32 2, i64 %753
  store ptr %737, ptr %754, align 8, !tbaa !88
  %755 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %756 = icmp sgt i32 %755, 3
  %757 = load ptr, ptr @ira_dump_file, align 8
  %758 = icmp ne ptr %757, null
  %759 = select i1 %756, i1 %758, i1 false
  br i1 %759, label %760, label %775

760:                                              ; preds = %749
  %761 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 15, i64 1, ptr nonnull %757)
  %762 = getelementptr inbounds %struct.ira_allocno, ptr %737, i64 0, i32 19
  %763 = load ptr, ptr %762, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %763) #23
  %764 = icmp eq ptr %763, %737
  br i1 %764, label %772, label %765

765:                                              ; preds = %760, %765
  %766 = phi ptr [ %770, %765 ], [ %763, %760 ]
  %767 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %768 = tail call i32 @fputc(i32 43, ptr %767)
  %769 = getelementptr inbounds %struct.ira_allocno, ptr %766, i64 0, i32 19
  %770 = load ptr, ptr %769, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %770) #23
  %771 = icmp eq ptr %770, %737
  br i1 %771, label %772, label %765, !llvm.loop !266

772:                                              ; preds = %765, %760
  %773 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %774 = tail call i32 @fputc(i32 10, ptr %773)
  br label %775

775:                                              ; preds = %749, %772
  %776 = add nuw nsw i64 %734, 1
  %777 = icmp eq i64 %776, %732
  br i1 %777, label %797, label %733, !llvm.loop !267

778:                                              ; preds = %715, %709
  %779 = icmp sgt i32 %710, -1
  br i1 %779, label %780, label %783, !prof !268

780:                                              ; preds = %778
  %781 = zext nneg i32 %710 to i64
  %782 = getelementptr inbounds [53 x i8], ptr @allocated_hardreg_p, i64 0, i64 %781
  store i8 1, ptr %782, align 1, !tbaa !99
  br label %783

783:                                              ; preds = %780, %778
  br label %784

784:                                              ; preds = %783, %792
  %785 = phi ptr [ %794, %792 ], [ %18, %783 ]
  %786 = load ptr, ptr %785, align 8, !tbaa !178
  %787 = getelementptr inbounds %struct.ira_allocno, ptr %786, i64 0, i32 3
  store i32 %710, ptr %787, align 4, !tbaa !140
  %788 = getelementptr inbounds %struct.ira_allocno, ptr %786, i64 0, i32 31
  %789 = load i16, ptr %788, align 4
  %790 = or i16 %789, 256
  store i16 %790, ptr %788, align 4
  br i1 %779, label %791, label %792, !prof !268

791:                                              ; preds = %784
  tail call fastcc void @update_copy_costs(ptr noundef %786, i8 noundef zeroext 1)
  br label %792

792:                                              ; preds = %791, %784
  tail call void @ira_free_allocno_updated_costs(ptr noundef %786) #23
  %793 = icmp eq ptr %786, %0
  %794 = getelementptr inbounds %struct.ira_allocno, ptr %786, i64 0, i32 19
  br i1 %793, label %795, label %784, !prof !183, !llvm.loop !269

795:                                              ; preds = %792
  %796 = zext i1 %779 to i8
  br label %797

797:                                              ; preds = %775, %795
  %798 = phi i8 [ %796, %795 ], [ 0, %775 ]
  ret i8 %798
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ira_sort_regnos_for_alter_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #13 !prof !270 {
  %4 = tail call i32 @max_reg_num() #23
  %5 = tail call ptr @ira_allocate_bitmap() #23
  store ptr %5, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %6 = tail call ptr @ira_allocate_bitmap() #23
  store ptr %6, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %26, !prof !271

8:                                                ; preds = %3
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi i64 [ 0, %8 ], [ %24, %23 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !103
  %14 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !272

19:                                               ; preds = %10
  %20 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %21 = load i32, ptr %17, align 8, !tbaa !137
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %21) #23
  br label %23

23:                                               ; preds = %10, %19
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !prof !273, !llvm.loop !274

26:                                               ; preds = %23, %3
  store i1 false, ptr @allocno_coalesced_p, align 1
  tail call fastcc void @coalesce_allocnos(i8 noundef zeroext 1)
  %27 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  tail call void @ira_free_bitmap(ptr noundef %27) #23
  %28 = sext i32 %4 to i64
  %29 = shl nsw i64 %28, 2
  %30 = tail call ptr @ira_allocate(i64 noundef %29) #23
  store ptr %30, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !88
  %31 = tail call ptr @ira_allocate(i64 noundef %29) #23
  store ptr %31, ptr @regno_coalesced_allocno_num, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 4 %31, i8 0, i64 %29, i1 false), !prof !275
  %32 = icmp sgt i32 %1, 0
  br i1 %32, label %33, label %83, !prof !276

33:                                               ; preds = %26
  %34 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %35 = load ptr, ptr @regno_coalesced_allocno_cost, align 8
  %36 = zext nneg i32 %1 to i64
  br label %37

37:                                               ; preds = %79, %33
  %38 = phi i64 [ 0, %33 ], [ %81, %79 ]
  %39 = phi i32 [ 0, %33 ], [ %80, %79 ]
  %40 = getelementptr inbounds i32, ptr %0, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !103
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %34, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50, !prof !277

46:                                               ; preds = %37
  %47 = getelementptr inbounds i32, ptr %35, i64 %42
  store i32 0, ptr %47, align 4, !tbaa !103
  %48 = add nsw i32 %39, 1
  %49 = getelementptr inbounds i32, ptr %31, i64 %42
  store i32 %48, ptr %49, align 4, !tbaa !103
  br label %79

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %44, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !206
  %53 = icmp eq ptr %52, %44
  br i1 %53, label %54, label %79, !prof !278

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %44, i64 0, i32 19
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ 0, %54 ], [ %62, %56 ]
  %58 = phi ptr [ %55, %54 ], [ %64, %56 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !178
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !233
  %62 = add nsw i32 %61, %57
  %63 = icmp eq ptr %59, %44
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 19
  br i1 %63, label %65, label %56, !prof !278, !llvm.loop !279

65:                                               ; preds = %56
  %66 = add nsw i32 %39, 1
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi ptr [ %78, %67 ], [ %55, %65 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !178
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !141
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %31, i64 %72
  store i32 %66, ptr %73, align 4, !tbaa !103
  %74 = load i32, ptr %70, align 4, !tbaa !141
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %35, i64 %75
  store i32 %62, ptr %76, align 4, !tbaa !103
  %77 = icmp eq ptr %69, %44
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 19
  br i1 %77, label %79, label %67, !prof !278, !llvm.loop !280

79:                                               ; preds = %67, %50, %46
  %80 = phi i32 [ %48, %46 ], [ %39, %50 ], [ %66, %67 ]
  %81 = add nuw nsw i64 %38, 1
  %82 = icmp eq i64 %81, %36
  br i1 %82, label %83, label %37, !prof !281, !llvm.loop !282

83:                                               ; preds = %79, %26
  %84 = sext i32 %1 to i64
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %84, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_freq_compare) #23
  %85 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 3
  %88 = tail call ptr @ira_allocate(i64 noundef %87) #23
  %89 = icmp sgt i32 %1, 0
  br i1 %89, label %90, label %118, !prof !271

90:                                               ; preds = %83
  %91 = zext nneg i32 %1 to i64
  br label %92

92:                                               ; preds = %90, %114
  %93 = phi i64 [ 0, %90 ], [ %116, %114 ]
  %94 = phi i32 [ 0, %90 ], [ %115, %114 ]
  %95 = getelementptr inbounds i32, ptr %0, i64 %93
  %96 = load i32, ptr %95, align 4, !tbaa !103
  %97 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !88
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %102, !prof !272

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %100, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !140
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %114, label %106, !prof !268

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %100, i64 0, i32 18
  %108 = load ptr, ptr %107, align 8, !tbaa !206
  %109 = icmp eq ptr %108, %100
  br i1 %109, label %110, label %114, !prof !260

110:                                              ; preds = %106
  %111 = add nsw i32 %94, 1
  %112 = sext i32 %94 to i64
  %113 = getelementptr inbounds ptr, ptr %88, i64 %112
  store ptr %100, ptr %113, align 8, !tbaa !88
  br label %114

114:                                              ; preds = %110, %106, %102, %92
  %115 = phi i32 [ %94, %92 ], [ %94, %102 ], [ %94, %106 ], [ %111, %110 ]
  %116 = add nuw nsw i64 %93, 1
  %117 = icmp eq i64 %116, %91
  br i1 %117, label %118, label %92, !prof !273, !llvm.loop !283

118:                                              ; preds = %114, %83
  %119 = phi i32 [ 0, %83 ], [ %115, %114 ]
  %120 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !103
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %322, label %122, !prof !284

122:                                              ; preds = %118
  %123 = tail call ptr @regstat_get_setjmp_crosses() #23
  %124 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 3
  %127 = tail call ptr @ira_allocate(i64 noundef %126) #23
  store ptr %127, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %128 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %129 = sext i32 %128 to i64
  %130 = shl nsw i64 %129, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %127, i8 0, i64 %130, i1 false), !prof !285
  %131 = icmp sgt i32 %119, 0
  br i1 %131, label %132, label %136, !prof !271

132:                                              ; preds = %122
  %133 = zext nneg i32 %119 to i64
  br label %140

134:                                              ; preds = %275
  %135 = icmp eq i8 %278, 0
  br label %136

136:                                              ; preds = %134, %122
  %137 = phi i1 [ true, %122 ], [ %135, %134 ]
  %138 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %281, label %290, !prof !271

140:                                              ; preds = %132, %275
  %141 = phi i64 [ 0, %132 ], [ %279, %275 ]
  %142 = phi i8 [ 0, %132 ], [ %278, %275 ]
  %143 = phi ptr [ undef, %132 ], [ %277, %275 ]
  %144 = phi i32 [ 0, %132 ], [ %276, %275 ]
  %145 = getelementptr inbounds ptr, ptr %88, i64 %141
  %146 = load ptr, ptr %145, align 8, !tbaa !88
  %147 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 18
  %148 = load ptr, ptr %147, align 8, !tbaa !206
  %149 = icmp eq ptr %148, %146
  br i1 %149, label %150, label %275, !prof !260

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !141
  %153 = tail call i32 @bitmap_bit_p(ptr noundef %123, i32 noundef %152) #23
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %275, !prof !260

155:                                              ; preds = %150
  %156 = load i32, ptr %151, align 4, !tbaa !141
  %157 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !103
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %170, !prof !260

159:                                              ; preds = %155
  %160 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %161 = sext i32 %156 to i64
  %162 = getelementptr inbounds ptr, ptr %160, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !88
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %275, !prof !260

165:                                              ; preds = %159
  %166 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %167 = getelementptr inbounds i8, ptr %166, i64 %161
  %168 = load i8, ptr %167, align 1, !tbaa !99
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %275, !prof !260

170:                                              ; preds = %165, %155
  %171 = icmp ne i64 %141, 0
  br i1 %171, label %172, label %222, !prof !286

172:                                              ; preds = %170, %218
  %173 = phi i64 [ %219, %218 ], [ 0, %170 ]
  %174 = phi i1 [ %220, %218 ], [ %171, %170 ]
  %175 = getelementptr inbounds ptr, ptr %88, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !88
  %177 = getelementptr inbounds %struct.ira_allocno, ptr %176, i64 0, i32 41
  %178 = load i32, ptr %177, align 8, !tbaa !287
  %179 = getelementptr inbounds %struct.ira_allocno, ptr %176, i64 0, i32 18
  %180 = load ptr, ptr %179, align 8, !tbaa !206
  %181 = icmp eq ptr %180, %176
  br i1 %181, label %182, label %218, !prof !288

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %176, i64 0, i32 1
  %184 = load i32, ptr %183, align 4, !tbaa !141
  %185 = tail call i32 @bitmap_bit_p(ptr noundef %123, i32 noundef %184) #23
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %218, !prof !289

187:                                              ; preds = %182
  %188 = load i32, ptr %183, align 4, !tbaa !141
  %189 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !103
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %202, !prof !289

191:                                              ; preds = %187
  %192 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %193 = sext i32 %188 to i64
  %194 = getelementptr inbounds i8, ptr %192, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !99
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %218, !prof !289

197:                                              ; preds = %191
  %198 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %199 = getelementptr inbounds ptr, ptr %198, i64 %193
  %200 = load ptr, ptr %199, align 8, !tbaa !88
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %218, !prof !289

202:                                              ; preds = %197, %187
  %203 = sext i32 %178 to i64
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi ptr [ %146, %202 ], [ %207, %204 ]
  %206 = getelementptr inbounds %struct.ira_allocno, ptr %205, i64 0, i32 19
  %207 = load ptr, ptr %206, align 8, !tbaa !178
  %208 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %209 = getelementptr inbounds ptr, ptr %208, i64 %203
  %210 = load ptr, ptr %209, align 8, !tbaa !88
  %211 = getelementptr inbounds %struct.ira_allocno, ptr %207, i64 0, i32 20
  %212 = load ptr, ptr %211, align 8, !tbaa !290
  %213 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %210, ptr noundef %212) #23
  %214 = icmp ne i8 %213, 0
  %215 = icmp eq ptr %207, %146
  %216 = or i1 %215, %214
  br i1 %216, label %217, label %204, !prof !289, !llvm.loop !291

217:                                              ; preds = %204
  br i1 %214, label %218, label %222, !prof !292

218:                                              ; preds = %217, %197, %191, %182, %172
  %219 = add nuw nsw i64 %173, 1
  %220 = icmp ult i64 %219, %141
  %221 = icmp eq i64 %219, %141
  br i1 %221, label %222, label %172, !prof !293, !llvm.loop !294

222:                                              ; preds = %218, %217, %170
  %223 = phi i1 [ %171, %170 ], [ %220, %218 ], [ %174, %217 ]
  %224 = phi ptr [ %143, %170 ], [ %176, %217 ], [ %176, %218 ]
  br i1 %223, label %228, label %225, !prof !295

225:                                              ; preds = %222
  %226 = add nsw i32 %144, 1
  %227 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 41
  store i32 %144, ptr %227, align 8, !tbaa !287
  tail call fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef %146)
  br label %275

228:                                              ; preds = %222
  store i1 true, ptr @allocno_coalesced_p, align 1
  %229 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %230 = icmp sgt i32 %229, 3
  %231 = load ptr, ptr @ira_dump_file, align 8
  %232 = icmp ne ptr %231, null
  %233 = select i1 %230, i1 %232, i1 false, !prof !296
  br i1 %233, label %234, label %241, !prof !297

234:                                              ; preds = %228
  %235 = load i32, ptr %146, align 8, !tbaa !137
  %236 = load i32, ptr %151, align 4, !tbaa !141
  %237 = load i32, ptr %224, align 8, !tbaa !137
  %238 = getelementptr inbounds %struct.ira_allocno, ptr %224, i64 0, i32 1
  %239 = load i32, ptr %238, align 4, !tbaa !141
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %231, ptr noundef nonnull @.str.17, i32 noundef %235, i32 noundef %236, i32 noundef %237, i32 noundef %239)
  br label %241

241:                                              ; preds = %234, %228
  %242 = getelementptr inbounds %struct.ira_allocno, ptr %224, i64 0, i32 41
  %243 = load i32, ptr %242, align 8, !tbaa !287
  %244 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 41
  store i32 %243, ptr %244, align 8, !tbaa !287
  %245 = sext i32 %243 to i64
  br label %246

246:                                              ; preds = %246, %241
  %247 = phi ptr [ %146, %241 ], [ %249, %246 ]
  %248 = getelementptr inbounds %struct.ira_allocno, ptr %247, i64 0, i32 19
  %249 = load ptr, ptr %248, align 8, !tbaa !178
  %250 = getelementptr inbounds %struct.ira_allocno, ptr %249, i64 0, i32 20
  %251 = load ptr, ptr %250, align 8, !tbaa !290
  %252 = tail call ptr @ira_copy_allocno_live_range_list(ptr noundef %251) #23
  %253 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %254 = getelementptr inbounds ptr, ptr %253, i64 %245
  %255 = load ptr, ptr %254, align 8, !tbaa !88
  %256 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %255, ptr noundef %252) #23
  %257 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %258 = getelementptr inbounds ptr, ptr %257, i64 %245
  store ptr %256, ptr %258, align 8, !tbaa !88
  %259 = icmp eq ptr %249, %146
  br i1 %259, label %260, label %246, !prof !260, !llvm.loop !298

260:                                              ; preds = %246
  %261 = getelementptr inbounds %struct.ira_allocno, ptr %224, i64 0, i32 18
  %262 = load ptr, ptr %261, align 8, !tbaa !206
  %263 = load ptr, ptr %147, align 8, !tbaa !206
  %264 = icmp eq ptr %262, %263
  br i1 %264, label %275, label %265, !prof !297

265:                                              ; preds = %260, %265
  %266 = phi ptr [ %268, %265 ], [ %146, %260 ]
  %267 = getelementptr inbounds %struct.ira_allocno, ptr %266, i64 0, i32 19
  %268 = load ptr, ptr %267, align 8, !tbaa !178
  %269 = getelementptr inbounds %struct.ira_allocno, ptr %268, i64 0, i32 18
  store ptr %262, ptr %269, align 8, !tbaa !206
  %270 = icmp eq ptr %268, %146
  br i1 %270, label %271, label %265, !prof !296, !llvm.loop !299

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.ira_allocno, ptr %266, i64 0, i32 19
  %273 = getelementptr inbounds %struct.ira_allocno, ptr %262, i64 0, i32 19
  %274 = load ptr, ptr %273, align 8, !tbaa !178
  store ptr %146, ptr %273, align 8, !tbaa !178
  store ptr %274, ptr %272, align 8, !tbaa !178
  br label %275

275:                                              ; preds = %271, %260, %225, %165, %159, %150, %140
  %276 = phi i32 [ %144, %140 ], [ %144, %150 ], [ %144, %159 ], [ %144, %165 ], [ %226, %225 ], [ %144, %260 ], [ %144, %271 ]
  %277 = phi ptr [ %143, %140 ], [ %143, %150 ], [ %143, %159 ], [ %143, %165 ], [ %224, %225 ], [ %224, %260 ], [ %224, %271 ]
  %278 = phi i8 [ %142, %140 ], [ %142, %150 ], [ %142, %159 ], [ %142, %165 ], [ %142, %225 ], [ 1, %260 ], [ 1, %271 ]
  %279 = add nuw nsw i64 %141, 1
  %280 = icmp eq i64 %279, %133
  br i1 %280, label %134, label %140, !prof !300, !llvm.loop !301

281:                                              ; preds = %136, %281
  %282 = phi i64 [ %286, %281 ], [ 0, %136 ]
  %283 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %284 = getelementptr inbounds ptr, ptr %283, i64 %282
  %285 = load ptr, ptr %284, align 8, !tbaa !88
  tail call void @ira_finish_allocno_live_range_list(ptr noundef %285) #23
  %286 = add nuw nsw i64 %282, 1
  %287 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %288 = sext i32 %287 to i64
  %289 = icmp slt i64 %286, %288
  br i1 %289, label %281, label %290, !prof !302, !llvm.loop !303

290:                                              ; preds = %281, %136
  %291 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %291) #23
  br i1 %137, label %322, label %292, !prof !304

292:                                              ; preds = %290
  tail call fastcc void @setup_coalesced_allocno_costs_and_nums(ptr noundef %0, i32 noundef %1)
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %84, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_freq_compare) #23
  %293 = icmp sgt i32 %1, 0
  br i1 %293, label %294, label %322, !prof !286

294:                                              ; preds = %292
  %295 = zext nneg i32 %1 to i64
  br label %296

296:                                              ; preds = %294, %318
  %297 = phi i64 [ 0, %294 ], [ %320, %318 ]
  %298 = phi i32 [ 0, %294 ], [ %319, %318 ]
  %299 = getelementptr inbounds i32, ptr %0, i64 %297
  %300 = load i32, ptr %299, align 4, !tbaa !103
  %301 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds ptr, ptr %301, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !88
  %305 = icmp eq ptr %304, null
  br i1 %305, label %318, label %306, !prof !305

306:                                              ; preds = %296
  %307 = getelementptr inbounds %struct.ira_allocno, ptr %304, i64 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !140
  %309 = icmp sgt i32 %308, -1
  br i1 %309, label %318, label %310, !prof !306

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.ira_allocno, ptr %304, i64 0, i32 18
  %312 = load ptr, ptr %311, align 8, !tbaa !206
  %313 = icmp eq ptr %312, %304
  br i1 %313, label %314, label %318, !prof !307

314:                                              ; preds = %310
  %315 = add nsw i32 %298, 1
  %316 = sext i32 %298 to i64
  %317 = getelementptr inbounds ptr, ptr %88, i64 %316
  store ptr %304, ptr %317, align 8, !tbaa !88
  br label %318

318:                                              ; preds = %314, %310, %306, %296
  %319 = phi i32 [ %298, %296 ], [ %298, %306 ], [ %298, %310 ], [ %315, %314 ]
  %320 = add nuw nsw i64 %297, 1
  %321 = icmp eq i64 %320, %295
  br i1 %321, label %322, label %296, !prof !308, !llvm.loop !283

322:                                              ; preds = %318, %292, %290, %118
  %323 = phi i32 [ %119, %290 ], [ %119, %118 ], [ 0, %292 ], [ %319, %318 ]
  %324 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  tail call void @ira_free_bitmap(ptr noundef %324) #23
  store i1 false, ptr @allocno_coalesced_p, align 1
  %325 = icmp sgt i32 %323, 0
  br i1 %325, label %326, label %416, !prof !309

326:                                              ; preds = %322
  %327 = zext nneg i32 %323 to i64
  br label %328

328:                                              ; preds = %326, %409
  %329 = phi i64 [ 0, %326 ], [ %412, %409 ]
  %330 = phi i32 [ 1, %326 ], [ %411, %409 ]
  %331 = phi ptr [ undef, %326 ], [ %410, %409 ]
  %332 = getelementptr inbounds ptr, ptr %88, i64 %329
  %333 = load ptr, ptr %332, align 8, !tbaa !88
  %334 = getelementptr inbounds %struct.ira_allocno, ptr %333, i64 0, i32 18
  %335 = load ptr, ptr %334, align 8, !tbaa !206
  %336 = icmp eq ptr %335, %333
  br i1 %336, label %337, label %409, !prof !310

337:                                              ; preds = %328
  %338 = getelementptr inbounds %struct.ira_allocno, ptr %333, i64 0, i32 3
  %339 = load i32, ptr %338, align 4, !tbaa !140
  %340 = icmp sgt i32 %339, -1
  br i1 %340, label %409, label %341, !prof !311

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.ira_allocno, ptr %333, i64 0, i32 1
  %343 = load i32, ptr %342, align 4, !tbaa !141
  %344 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !103
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %357, !prof !310

346:                                              ; preds = %341
  %347 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %348 = sext i32 %343 to i64
  %349 = getelementptr inbounds ptr, ptr %347, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !88
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %409, !prof !310

352:                                              ; preds = %346
  %353 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %354 = getelementptr inbounds i8, ptr %353, i64 %348
  %355 = load i8, ptr %354, align 1, !tbaa !99
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %409, !prof !310

357:                                              ; preds = %352, %341
  %358 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %359 = icmp sgt i32 %358, 3
  %360 = load ptr, ptr @ira_dump_file, align 8
  %361 = icmp ne ptr %360, null
  %362 = select i1 %359, i1 %361, i1 false, !prof !310
  br i1 %362, label %363, label %365, !prof !311

363:                                              ; preds = %357
  %364 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %360, ptr noundef nonnull @.str.1, i32 noundef %330)
  br label %365

365:                                              ; preds = %363, %357
  %366 = xor i32 %330, -1
  br label %367

367:                                              ; preds = %398, %365
  %368 = phi ptr [ %333, %365 ], [ %370, %398 ]
  %369 = getelementptr inbounds %struct.ira_allocno, ptr %368, i64 0, i32 19
  %370 = load ptr, ptr %369, align 8, !tbaa !178
  %371 = getelementptr inbounds %struct.ira_allocno, ptr %370, i64 0, i32 3
  store i32 %366, ptr %371, align 4, !tbaa !140
  %372 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %373 = icmp sgt i32 %372, 3
  %374 = load ptr, ptr @ira_dump_file, align 8
  %375 = icmp ne ptr %374, null
  %376 = select i1 %373, i1 %375, i1 false, !prof !260
  br i1 %376, label %377, label %398, !prof !261

377:                                              ; preds = %367
  %378 = load i32, ptr %370, align 8, !tbaa !137
  %379 = getelementptr inbounds %struct.ira_allocno, ptr %370, i64 0, i32 1
  %380 = load i32, ptr %379, align 4, !tbaa !141
  %381 = getelementptr inbounds %struct.ira_allocno, ptr %370, i64 0, i32 8
  %382 = load i32, ptr %381, align 4, !tbaa !233
  %383 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !88
  %384 = sext i32 %380 to i64
  %385 = getelementptr inbounds ptr, ptr %383, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !88
  %387 = load i32, ptr %386, align 8
  %388 = lshr i32 %387, 16
  %389 = and i32 %388, 255
  %390 = zext nneg i32 %389 to i64
  %391 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !99
  %393 = zext i8 %392 to i32
  %394 = getelementptr inbounds i32, ptr %2, i64 %384
  %395 = load i32, ptr %394, align 4, !tbaa !103
  %396 = tail call i32 @llvm.umax.i32(i32 %395, i32 %393)
  %397 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %374, ptr noundef nonnull @.str.2, i32 noundef %378, i32 noundef %380, i32 noundef %382, i32 noundef %396)
  br label %398

398:                                              ; preds = %367, %377
  %399 = icmp eq ptr %370, %333
  br i1 %399, label %400, label %367, !prof !307, !llvm.loop !312

400:                                              ; preds = %398
  %401 = add nsw i32 %330, 1
  %402 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %403 = icmp sgt i32 %402, 3
  %404 = load ptr, ptr @ira_dump_file, align 8
  %405 = icmp ne ptr %404, null
  %406 = select i1 %403, i1 %405, i1 false, !prof !310
  br i1 %406, label %407, label %409, !prof !311

407:                                              ; preds = %400
  %408 = tail call i32 @fputc(i32 10, ptr nonnull %404)
  br label %409

409:                                              ; preds = %400, %407, %328, %337, %346, %352
  %410 = phi ptr [ %331, %337 ], [ %370, %407 ], [ %370, %400 ], [ %331, %352 ], [ %331, %346 ], [ %331, %328 ]
  %411 = phi i32 [ %330, %337 ], [ %401, %407 ], [ %401, %400 ], [ %330, %352 ], [ %330, %346 ], [ %330, %328 ]
  %412 = add nuw nsw i64 %329, 1
  %413 = icmp eq i64 %412, %327
  br i1 %413, label %414, label %328, !prof !310, !llvm.loop !313

414:                                              ; preds = %409
  %415 = add nsw i32 %411, -1
  br label %416

416:                                              ; preds = %414, %322
  %417 = phi ptr [ undef, %322 ], [ %410, %414 ]
  %418 = phi i32 [ 0, %322 ], [ %415, %414 ]
  store i32 %418, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !103
  tail call void @ira_free(ptr noundef %88) #23
  store ptr %2, ptr @regno_max_ref_width, align 8, !tbaa !88
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %84, i64 noundef 4, ptr noundef nonnull @coalesced_pseudo_reg_slot_compare) #23
  %419 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %420 = load ptr, ptr @ira_allocnos, align 8
  br label %421

421:                                              ; preds = %454, %416
  %422 = phi ptr [ %417, %416 ], [ %452, %454 ]
  %423 = phi i32 [ 0, %416 ], [ %453, %454 ]
  %424 = icmp slt i32 %423, %419
  br i1 %424, label %425, label %450, !prof !271

425:                                              ; preds = %421
  %426 = sext i32 %423 to i64
  %427 = getelementptr inbounds ptr, ptr %420, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !88
  %429 = icmp eq ptr %428, null
  br i1 %429, label %442, label %436, !prof !314

430:                                              ; preds = %442
  %431 = getelementptr inbounds ptr, ptr %420, i64 %445
  %432 = load ptr, ptr %431, align 8, !tbaa !88
  %433 = icmp eq ptr %432, null
  br i1 %433, label %442, label %434, !prof !314, !llvm.loop !136

434:                                              ; preds = %430
  %435 = icmp slt i64 %445, %444
  br label %436

436:                                              ; preds = %434, %425
  %437 = phi i64 [ %426, %425 ], [ %445, %434 ]
  %438 = phi i1 [ %424, %425 ], [ %435, %434 ]
  %439 = phi ptr [ %428, %425 ], [ %432, %434 ]
  %440 = trunc i64 %437 to i32
  %441 = add nsw i32 %440, 1
  br label %450

442:                                              ; preds = %425, %430
  %443 = phi i64 [ %445, %430 ], [ %426, %425 ]
  %444 = sext i32 %419 to i64
  %445 = add nsw i64 %443, 1
  %446 = trunc i64 %445 to i32
  %447 = icmp eq i32 %419, %446
  br i1 %447, label %448, label %430, !prof !315, !llvm.loop !136

448:                                              ; preds = %442
  %449 = icmp slt i64 %445, %444
  br label %450

450:                                              ; preds = %448, %421, %436
  %451 = phi i1 [ %438, %436 ], [ %424, %421 ], [ %449, %448 ]
  %452 = phi ptr [ %439, %436 ], [ %422, %421 ], [ %422, %448 ]
  %453 = phi i32 [ %441, %436 ], [ %423, %421 ], [ %423, %448 ]
  br i1 %451, label %454, label %457, !prof !316

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.ira_allocno, ptr %452, i64 0, i32 18
  store ptr %452, ptr %455, align 8, !tbaa !206
  %456 = getelementptr inbounds %struct.ira_allocno, ptr %452, i64 0, i32 19
  store ptr %452, ptr %456, align 8, !tbaa !178
  br label %421, !llvm.loop !317

457:                                              ; preds = %450
  %458 = load ptr, ptr @regno_coalesced_allocno_num, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %458) #23
  %459 = load ptr, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %459) #23
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @coalesce_allocnos(i8 noundef zeroext %0) unnamed_addr #13 !prof !270 !PGOFuncName !318 {
  %2 = load i32, ptr @ira_copies_num, align 4, !tbaa !103
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #23
  %6 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %7 = load ptr, ptr %6, align 8, !tbaa !319
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @bitmap_zero_bits, ptr %7, !prof !284
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !321
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3, i64 0
  %14 = load i64, ptr %13, align 8, !tbaa !146
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %12, %16
  %18 = icmp eq i8 %0, 0
  br label %19

19:                                               ; preds = %192, %1
  %20 = phi i64 [ %14, %1 ], [ %195, %192 ]
  %21 = phi i32 [ 0, %1 ], [ %78, %192 ]
  %22 = phi i32 [ %17, %1 ], [ %196, %192 ]
  %23 = phi ptr [ %9, %1 ], [ %80, %192 ]
  %24 = phi ptr [ undef, %1 ], [ %193, %192 ]
  %25 = phi i32 [ 0, %1 ], [ %194, %192 ]
  %26 = icmp eq i64 %20, 0
  br i1 %26, label %41, label %27, !prof !323

27:                                               ; preds = %55, %19
  %28 = phi i64 [ %20, %19 ], [ %60, %55 ]
  %29 = phi i32 [ %21, %19 ], [ %56, %55 ]
  %30 = phi i32 [ %22, %19 ], [ %57, %55 ]
  %31 = phi ptr [ %23, %19 ], [ %48, %55 ]
  %32 = and i64 %28, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76, !prof !314

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %30, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %28, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !prof !314, !llvm.loop !324

41:                                               ; preds = %19
  %42 = add i32 %22, 63
  %43 = and i32 %42, -64
  %44 = add i32 %21, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %20, %41 ], [ %67, %72 ]
  %47 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %48 = phi ptr [ %23, %41 ], [ %70, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51, !prof !325

51:                                               ; preds = %45
  %52 = add i32 %47, 128
  %53 = shl i32 %49, 6
  %54 = sub i32 %52, %53
  br label %55

55:                                               ; preds = %51, %62
  %56 = phi i32 [ %64, %62 ], [ %49, %51 ]
  %57 = phi i32 [ %63, %62 ], [ %47, %51 ]
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.bitmap_element_def, ptr %48, i64 0, i32 3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !146
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27, !prof !326

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !prof !327, !llvm.loop !328

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %47, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %48, align 8, !tbaa !329
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !330

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !321
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !331

76:                                               ; preds = %66, %34, %27
  %77 = phi i64 [ %28, %27 ], [ %37, %34 ], [ %67, %66 ]
  %78 = phi i32 [ %29, %27 ], [ %29, %34 ], [ %69, %66 ]
  %79 = phi i32 [ %30, %27 ], [ %38, %34 ], [ %68, %66 ]
  %80 = phi ptr [ %31, %27 ], [ %31, %34 ], [ %70, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %197, label %82, !prof !332

82:                                               ; preds = %76
  %83 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %84 = zext i32 %79 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !88
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !141
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 31
  %90 = load i16, ptr %89, align 4
  %91 = and i16 %90, 256
  %92 = icmp eq i16 %91, 0
  br i1 %18, label %93, label %94, !prof !177

93:                                               ; preds = %82
  br i1 %92, label %113, label %192

94:                                               ; preds = %82
  br i1 %92, label %192, label %95, !prof !177

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !140
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %192, label %99, !prof !268

99:                                               ; preds = %95
  %100 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !103
  %101 = icmp slt i32 %88, %100
  br i1 %101, label %102, label %113, !prof !260

102:                                              ; preds = %99
  %103 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %104 = sext i32 %88 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !88
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %192, !prof !260

108:                                              ; preds = %102
  %109 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %110 = getelementptr inbounds i8, ptr %109, i64 %104
  %111 = load i8, ptr %110, align 1, !tbaa !99
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %192, !prof !260

113:                                              ; preds = %108, %93, %99
  %114 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !139
  %116 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !156
  %118 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 15
  %119 = load ptr, ptr %118, align 8, !tbaa !160
  %120 = icmp eq ptr %119, null
  br i1 %120, label %192, label %121, !prof !333

121:                                              ; preds = %113, %188
  %122 = phi i32 [ %190, %188 ], [ %25, %113 ]
  %123 = phi ptr [ %189, %188 ], [ %119, %113 ]
  %124 = phi ptr [ %189, %188 ], [ %24, %113 ]
  %125 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !161
  %127 = icmp eq ptr %126, %86
  br i1 %127, label %128, label %180, !prof !261

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !163
  %131 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !164
  %133 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !141
  br i1 %18, label %135, label %143

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 9
  %137 = load i32, ptr %136, align 8, !tbaa !139
  %138 = icmp eq i32 %137, %115
  br i1 %138, label %139, label %188

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !156
  %142 = icmp eq i32 %141, %117
  br i1 %142, label %143, label %188

143:                                              ; preds = %139, %128
  %144 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !334
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 4
  %149 = load i8, ptr %148, align 4, !tbaa !335
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %188, label %151

151:                                              ; preds = %147, %143
  %152 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 31
  %153 = load i16, ptr %152, align 4
  %154 = and i16 %153, 256
  %155 = icmp eq i16 %154, 0
  br i1 %18, label %156, label %157

156:                                              ; preds = %151
  br i1 %155, label %176, label %188

157:                                              ; preds = %151
  br i1 %155, label %188, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.ira_allocno, ptr %132, i64 0, i32 3
  %160 = load i32, ptr %159, align 4, !tbaa !140
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %158
  %163 = load i32, ptr @ira_reg_equiv_len, align 4, !tbaa !103
  %164 = icmp slt i32 %134, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %167 = sext i32 %134 to i64
  %168 = getelementptr inbounds i8, ptr %166, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !99
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %165
  %172 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %173 = getelementptr inbounds ptr, ptr %172, i64 %167
  %174 = load ptr, ptr %173, align 8, !tbaa !88
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %188

176:                                              ; preds = %171, %162, %156
  %177 = add nsw i32 %122, 1
  %178 = sext i32 %122 to i64
  %179 = getelementptr inbounds ptr, ptr %5, i64 %178
  store ptr %123, ptr %179, align 8, !tbaa !88
  br label %188

180:                                              ; preds = %121
  %181 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !164
  %183 = icmp eq ptr %182, %86
  br i1 %183, label %184, label %187, !prof !260

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ira_allocno_copy, ptr %123, i64 0, i32 9
  %186 = load ptr, ptr %185, align 8, !tbaa !165
  br label %188

187:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1667, ptr noundef nonnull @.str.5) #23
  br label %188

188:                                              ; preds = %156, %147, %139, %176, %171, %165, %158, %157, %135, %187, %184
  %189 = phi ptr [ %130, %176 ], [ %130, %165 ], [ %130, %171 ], [ %130, %158 ], [ %130, %157 ], [ %130, %135 ], [ %186, %184 ], [ %124, %187 ], [ %130, %139 ], [ %130, %147 ], [ %130, %156 ]
  %190 = phi i32 [ %177, %176 ], [ %122, %165 ], [ %122, %171 ], [ %122, %158 ], [ %122, %157 ], [ %122, %135 ], [ %122, %184 ], [ %122, %187 ], [ %122, %139 ], [ %122, %147 ], [ %122, %156 ]
  %191 = icmp eq ptr %189, null
  br i1 %191, label %192, label %121, !prof !336, !llvm.loop !337

192:                                              ; preds = %188, %113, %93, %94, %95, %102, %108
  %193 = phi ptr [ %24, %95 ], [ %24, %102 ], [ %24, %108 ], [ %24, %94 ], [ %24, %93 ], [ %24, %113 ], [ %189, %188 ]
  %194 = phi i32 [ %25, %95 ], [ %25, %102 ], [ %25, %108 ], [ %25, %94 ], [ %25, %93 ], [ %25, %113 ], [ %190, %188 ]
  %195 = lshr i64 %77, 1
  %196 = add i32 %79, 1
  br label %19, !llvm.loop !338

197:                                              ; preds = %76
  %198 = sext i32 %25 to i64
  tail call void @spec_qsort(ptr noundef %5, i64 noundef %198, i64 noundef 8, ptr noundef nonnull @copy_freq_compare_func) #23
  %199 = icmp eq i32 %25, 0
  br i1 %199, label %450, label %203, !prof !339

200:                                              ; preds = %446, %422
  %201 = phi i32 [ 0, %422 ], [ %447, %446 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %450, label %203, !prof !339, !llvm.loop !340

203:                                              ; preds = %197, %200
  %204 = phi i32 [ %201, %200 ], [ %25, %197 ]
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %422

206:                                              ; preds = %203
  %207 = icmp eq i8 %0, 0
  %208 = zext nneg i32 %204 to i64
  br label %209

209:                                              ; preds = %206, %417
  %210 = phi i64 [ 0, %206 ], [ %418, %417 ]
  %211 = getelementptr inbounds ptr, ptr %5, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !88
  %213 = getelementptr inbounds %struct.ira_allocno_copy, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !161
  %215 = getelementptr inbounds %struct.ira_allocno_copy, ptr %212, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !164
  %217 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %217, label %218, label %228

218:                                              ; preds = %209
  %219 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  tail call void @bitmap_clear(ptr noundef %219) #23
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi ptr [ %214, %218 ], [ %223, %220 ]
  %222 = getelementptr inbounds %struct.ira_allocno, ptr %221, i64 0, i32 19
  %223 = load ptr, ptr %222, align 8, !tbaa !178
  %224 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %225 = load i32, ptr %223, align 8, !tbaa !137
  %226 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %224, i32 noundef %225) #23
  %227 = icmp eq ptr %223, %214
  br i1 %227, label %228, label %220, !llvm.loop !341

228:                                              ; preds = %220, %209
  br label %229

229:                                              ; preds = %228, %372
  %230 = phi ptr [ %373, %372 ], [ undef, %228 ]
  %231 = phi ptr [ %233, %372 ], [ %216, %228 ]
  %232 = getelementptr inbounds %struct.ira_allocno, ptr %231, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !178
  br i1 %207, label %265, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.ira_allocno, ptr %233, i64 0, i32 4
  %236 = getelementptr inbounds %struct.ira_allocno, ptr %233, i64 0, i32 20
  br label %237

237:                                              ; preds = %234, %263
  %238 = phi ptr [ %240, %263 ], [ %214, %234 ]
  %239 = getelementptr inbounds %struct.ira_allocno, ptr %238, i64 0, i32 19
  %240 = load ptr, ptr %239, align 8, !tbaa !178
  %241 = icmp eq ptr %233, %240
  br i1 %241, label %260, label %242

242:                                              ; preds = %237
  %243 = load ptr, ptr %235, align 8, !tbaa !342
  %244 = icmp eq ptr %243, null
  br i1 %244, label %255, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ira_allocno, ptr %240, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !342
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1, i32 0, i32 0, i64 1
  %251 = load i32, ptr %250, align 8, !tbaa !99
  %252 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load i32, ptr %252, align 8, !tbaa !99
  %254 = icmp eq i32 %251, %253
  br i1 %254, label %260, label %255

255:                                              ; preds = %249, %245, %242
  %256 = load ptr, ptr %236, align 8, !tbaa !290
  %257 = getelementptr inbounds %struct.ira_allocno, ptr %240, i64 0, i32 20
  %258 = load ptr, ptr %257, align 8, !tbaa !290
  %259 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %256, ptr noundef %258) #23
  br label %260

260:                                              ; preds = %255, %249, %237
  %261 = phi i8 [ %259, %255 ], [ 0, %237 ], [ 0, %249 ]
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %417

263:                                              ; preds = %260
  %264 = icmp eq ptr %240, %214
  br i1 %264, label %372, label %237, !llvm.loop !343

265:                                              ; preds = %229
  %266 = getelementptr inbounds %struct.ira_allocno, ptr %233, i64 0, i32 31
  %267 = load i16, ptr %266, align 4
  %268 = getelementptr inbounds %struct.ira_allocno, ptr %233, i64 0, i32 23
  %269 = load ptr, ptr %268, align 8, !tbaa !143
  %270 = and i16 %267, 2048
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.ira_allocno, ptr %233, i64 0, i32 21
  %274 = load i32, ptr %273, align 8, !tbaa !144
  %275 = getelementptr inbounds %struct.ira_allocno, ptr %233, i64 0, i32 22
  %276 = load i32, ptr %275, align 4, !tbaa !145
  %277 = icmp sgt i32 %274, %276
  br i1 %277, label %283, label %278

278:                                              ; preds = %272
  %279 = sub i32 %276, %274
  %280 = add i32 %279, 64
  %281 = sdiv i32 %280, 64
  %282 = shl nsw i32 %281, 3
  br label %283

283:                                              ; preds = %278, %272
  %284 = phi i32 [ %282, %278 ], [ 0, %272 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = load i64, ptr %269, align 8, !tbaa !146
  br label %288

288:                                              ; preds = %286, %283, %265
  %289 = phi i32 [ 0, %265 ], [ %284, %286 ], [ %284, %283 ]
  %290 = phi i32 [ 0, %265 ], [ %274, %286 ], [ %274, %283 ]
  %291 = phi i64 [ 0, %265 ], [ %287, %286 ], [ 0, %283 ]
  %292 = zext i32 %289 to i64
  %293 = zext i1 %271 to i32
  %294 = xor i1 %271, true
  %295 = zext i1 %294 to i32
  %296 = zext i1 %271 to i64
  br label %297

297:                                              ; preds = %368, %288
  %298 = phi i32 [ 0, %288 ], [ %369, %368 ]
  %299 = phi i32 [ 0, %288 ], [ %370, %368 ]
  %300 = phi i64 [ %291, %288 ], [ %371, %368 ]
  %301 = phi ptr [ %230, %288 ], [ %356, %368 ]
  br i1 %271, label %302, label %309

302:                                              ; preds = %297
  %303 = icmp eq i64 %300, 0
  br i1 %303, label %304, label %318

304:                                              ; preds = %302
  %305 = add i32 %299, 1
  %306 = zext i32 %305 to i64
  %307 = shl nuw nsw i64 %306, 3
  %308 = icmp ult i64 %307, %292
  br i1 %308, label %329, label %352

309:                                              ; preds = %297
  %310 = zext i32 %299 to i64
  %311 = getelementptr inbounds ptr, ptr %269, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !88
  %313 = icmp ne ptr %312, null
  %314 = select i1 %313, ptr %312, ptr %301
  %315 = zext i1 %313 to i8
  br label %352

316:                                              ; preds = %329
  %317 = shl i32 %331, 6
  br label %318

318:                                              ; preds = %316, %302
  %319 = phi i32 [ %298, %302 ], [ %317, %316 ]
  %320 = phi i32 [ %299, %302 ], [ %331, %316 ]
  %321 = phi i64 [ %300, %302 ], [ %333, %316 ]
  %322 = and i64 %321, 1
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %335, label %342

324:                                              ; preds = %329
  %325 = add i32 %331, 1
  %326 = zext i32 %325 to i64
  %327 = shl nuw nsw i64 %326, 3
  %328 = icmp ult i64 %327, %292
  br i1 %328, label %329, label %350, !llvm.loop !147

329:                                              ; preds = %304, %324
  %330 = phi i64 [ %326, %324 ], [ %306, %304 ]
  %331 = phi i32 [ %325, %324 ], [ %305, %304 ]
  %332 = getelementptr inbounds i64, ptr %269, i64 %330
  %333 = load i64, ptr %332, align 8, !tbaa !146
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %324, label %316, !llvm.loop !147

335:                                              ; preds = %318, %335
  %336 = phi i64 [ %339, %335 ], [ %321, %318 ]
  %337 = phi i32 [ %338, %335 ], [ %319, %318 ]
  %338 = add i32 %337, 1
  %339 = lshr exact i64 %336, 1
  %340 = and i64 %336, 2
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %335, label %342, !llvm.loop !148

342:                                              ; preds = %335, %318
  %343 = phi i32 [ %319, %318 ], [ %338, %335 ]
  %344 = phi i64 [ %321, %318 ], [ %339, %335 ]
  %345 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !88
  %346 = add i32 %343, %290
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !88
  br label %352

350:                                              ; preds = %324
  %351 = shl i32 %331, 6
  br label %352

352:                                              ; preds = %350, %304, %342, %309
  %353 = phi i32 [ %343, %342 ], [ %298, %309 ], [ %298, %304 ], [ %351, %350 ]
  %354 = phi i32 [ %320, %342 ], [ %299, %309 ], [ %305, %304 ], [ %325, %350 ]
  %355 = phi i64 [ %344, %342 ], [ %300, %309 ], [ %300, %304 ], [ %333, %350 ]
  %356 = phi ptr [ %349, %342 ], [ %314, %309 ], [ %301, %304 ], [ %301, %350 ]
  %357 = phi i8 [ 1, %342 ], [ %315, %309 ], [ 0, %304 ], [ 0, %350 ]
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %372, label %359

359:                                              ; preds = %352
  %360 = icmp eq ptr %356, %214
  br i1 %360, label %417, label %361

361:                                              ; preds = %359
  %362 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %362, label %363, label %368

363:                                              ; preds = %361
  %364 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %365 = load i32, ptr %356, align 8, !tbaa !137
  %366 = tail call i32 @bitmap_bit_p(ptr noundef %364, i32 noundef %365) #23
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %417

368:                                              ; preds = %363, %361
  %369 = add i32 %353, %293
  %370 = add i32 %354, %295
  %371 = lshr i64 %355, %296
  br label %297, !llvm.loop !344

372:                                              ; preds = %263, %352
  %373 = phi ptr [ %356, %352 ], [ %240, %263 ]
  %374 = icmp eq ptr %233, %216
  br i1 %374, label %375, label %229, !llvm.loop !345

375:                                              ; preds = %372
  %376 = trunc i64 %210 to i32
  %377 = getelementptr inbounds %struct.ira_allocno_copy, ptr %212, i64 0, i32 1
  %378 = getelementptr inbounds %struct.ira_allocno_copy, ptr %212, i64 0, i32 2
  store i1 true, ptr @allocno_coalesced_p, align 1
  %379 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %380 = icmp sgt i32 %379, 3
  %381 = load ptr, ptr @ira_dump_file, align 8
  %382 = icmp ne ptr %381, null
  %383 = select i1 %380, i1 %382, i1 false
  br i1 %383, label %384, label %397

384:                                              ; preds = %375
  %385 = load i32, ptr %212, align 8, !tbaa !346
  %386 = load ptr, ptr %377, align 8, !tbaa !161
  %387 = load i32, ptr %386, align 8, !tbaa !137
  %388 = getelementptr inbounds %struct.ira_allocno, ptr %386, i64 0, i32 1
  %389 = load i32, ptr %388, align 4, !tbaa !141
  %390 = load ptr, ptr %378, align 8, !tbaa !164
  %391 = load i32, ptr %390, align 8, !tbaa !137
  %392 = getelementptr inbounds %struct.ira_allocno, ptr %390, i64 0, i32 1
  %393 = load i32, ptr %392, align 4, !tbaa !141
  %394 = getelementptr inbounds %struct.ira_allocno_copy, ptr %212, i64 0, i32 3
  %395 = load i32, ptr %394, align 8, !tbaa !170
  %396 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %381, ptr noundef nonnull @.str.16, i32 noundef %385, i32 noundef %387, i32 noundef %389, i32 noundef %391, i32 noundef %393, i32 noundef %395)
  br label %397

397:                                              ; preds = %384, %375
  %398 = load ptr, ptr %377, align 8, !tbaa !161
  %399 = load ptr, ptr %378, align 8, !tbaa !164
  %400 = getelementptr inbounds %struct.ira_allocno, ptr %398, i64 0, i32 18
  %401 = load ptr, ptr %400, align 8, !tbaa !206
  %402 = getelementptr inbounds %struct.ira_allocno, ptr %399, i64 0, i32 18
  %403 = load ptr, ptr %402, align 8, !tbaa !206
  %404 = icmp eq ptr %401, %403
  br i1 %404, label %415, label %405

405:                                              ; preds = %397, %405
  %406 = phi ptr [ %408, %405 ], [ %399, %397 ]
  %407 = getelementptr inbounds %struct.ira_allocno, ptr %406, i64 0, i32 19
  %408 = load ptr, ptr %407, align 8, !tbaa !178
  %409 = getelementptr inbounds %struct.ira_allocno, ptr %408, i64 0, i32 18
  store ptr %401, ptr %409, align 8, !tbaa !206
  %410 = icmp eq ptr %408, %399
  br i1 %410, label %411, label %405, !llvm.loop !299

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.ira_allocno, ptr %406, i64 0, i32 19
  %413 = getelementptr inbounds %struct.ira_allocno, ptr %401, i64 0, i32 19
  %414 = load ptr, ptr %413, align 8, !tbaa !178
  store ptr %399, ptr %413, align 8, !tbaa !178
  store ptr %414, ptr %412, align 8, !tbaa !178
  br label %415

415:                                              ; preds = %397, %411
  %416 = add nuw nsw i32 %376, 1
  br label %422

417:                                              ; preds = %260, %363, %359
  %418 = add nuw nsw i64 %210, 1
  %419 = icmp eq i64 %418, %208
  br i1 %419, label %420, label %209, !llvm.loop !347

420:                                              ; preds = %417
  %421 = trunc i64 %418 to i32
  br label %422

422:                                              ; preds = %420, %203, %415
  %423 = phi i32 [ %416, %415 ], [ 0, %203 ], [ %421, %420 ]
  %424 = icmp slt i32 %423, %204
  br i1 %424, label %425, label %200

425:                                              ; preds = %422
  %426 = zext nneg i32 %423 to i64
  %427 = zext i32 %204 to i64
  br label %428

428:                                              ; preds = %425, %446
  %429 = phi i64 [ %426, %425 ], [ %448, %446 ]
  %430 = phi i32 [ 0, %425 ], [ %447, %446 ]
  %431 = getelementptr inbounds ptr, ptr %5, i64 %429
  %432 = load ptr, ptr %431, align 8, !tbaa !88
  %433 = getelementptr inbounds %struct.ira_allocno_copy, ptr %432, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !161
  %435 = getelementptr inbounds %struct.ira_allocno, ptr %434, i64 0, i32 18
  %436 = load ptr, ptr %435, align 8, !tbaa !206
  %437 = getelementptr inbounds %struct.ira_allocno_copy, ptr %432, i64 0, i32 2
  %438 = load ptr, ptr %437, align 8, !tbaa !164
  %439 = getelementptr inbounds %struct.ira_allocno, ptr %438, i64 0, i32 18
  %440 = load ptr, ptr %439, align 8, !tbaa !206
  %441 = icmp eq ptr %436, %440
  br i1 %441, label %446, label %442

442:                                              ; preds = %428
  %443 = add nsw i32 %430, 1
  %444 = sext i32 %430 to i64
  %445 = getelementptr inbounds ptr, ptr %5, i64 %444
  store ptr %432, ptr %445, align 8, !tbaa !88
  br label %446

446:                                              ; preds = %428, %442
  %447 = phi i32 [ %443, %442 ], [ %430, %428 ]
  %448 = add nuw nsw i64 %429, 1
  %449 = icmp eq i64 %448, %427
  br i1 %449, label %200, label %428, !llvm.loop !348

450:                                              ; preds = %200, %197
  tail call void @ira_free(ptr noundef %5) #23
  ret void
}

declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @setup_coalesced_allocno_costs_and_nums(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 !prof !349 !PGOFuncName !350 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %55, !prof !276

4:                                                ; preds = %2
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %6 = load ptr, ptr @regno_coalesced_allocno_num, align 8
  %7 = load ptr, ptr @regno_coalesced_allocno_cost, align 8
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %4, %51
  %10 = phi i64 [ 0, %4 ], [ %53, %51 ]
  %11 = phi i32 [ 0, %4 ], [ %52, %51 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !103
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %5, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !277

18:                                               ; preds = %9
  %19 = getelementptr inbounds i32, ptr %7, i64 %14
  store i32 0, ptr %19, align 4, !tbaa !103
  %20 = add nsw i32 %11, 1
  %21 = getelementptr inbounds i32, ptr %6, i64 %14
  store i32 %20, ptr %21, align 4, !tbaa !103
  br label %51

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %51, !prof !278

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 19
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %34, %28 ]
  %30 = phi ptr [ %27, %26 ], [ %36, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !178
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !233
  %34 = add nsw i32 %33, %29
  %35 = icmp eq ptr %31, %16
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 19
  br i1 %35, label %37, label %28, !prof !278, !llvm.loop !279

37:                                               ; preds = %28
  %38 = add nsw i32 %11, 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %50, %39 ], [ %27, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !178
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !141
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %6, i64 %44
  store i32 %38, ptr %45, align 4, !tbaa !103
  %46 = load i32, ptr %42, align 4, !tbaa !141
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %7, i64 %47
  store i32 %34, ptr %48, align 4, !tbaa !103
  %49 = icmp eq ptr %41, %16
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 19
  br i1 %49, label %51, label %39, !prof !278, !llvm.loop !280

51:                                               ; preds = %39, %22, %18
  %52 = phi i32 [ %20, %18 ], [ %11, %22 ], [ %38, %39 ]
  %53 = add nuw nsw i64 %10, 1
  %54 = icmp eq i64 %53, %8
  br i1 %54, label %55, label %9, !prof !281, !llvm.loop !282

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @coalesced_pseudo_reg_freq_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !351 !PGOFuncName !352 {
  %3 = load i32, ptr %0, align 4, !tbaa !103
  %4 = load i32, ptr %1, align 4, !tbaa !103
  %5 = load ptr, ptr @regno_coalesced_allocno_cost, align 8, !tbaa !88
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !103
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24, !prof !353

14:                                               ; preds = %2
  %15 = load ptr, ptr @regno_coalesced_allocno_num, align 8, !tbaa !88
  %16 = getelementptr inbounds i32, ptr %15, i64 %9
  %17 = load i32, ptr %16, align 4, !tbaa !103
  %18 = getelementptr inbounds i32, ptr %15, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !103
  %20 = sub nsw i32 %17, %19
  %21 = icmp eq i32 %17, %19
  %22 = sub nsw i32 %3, %4
  %23 = select i1 %21, i32 %22, i32 %20, !prof !354
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i32 [ %12, %2 ], [ %23, %14 ]
  ret i32 %25
}

declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @coalesced_pseudo_reg_slot_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !355 !PGOFuncName !356 {
  %3 = load i32, ptr %0, align 4, !tbaa !103
  %4 = load i32, ptr %1, align 4, !tbaa !103
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %8, null
  br i1 %12, label %17, label %13, !prof !357

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !140
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %25, !prof !358

17:                                               ; preds = %13, %2
  %18 = icmp eq ptr %11, null
  br i1 %18, label %23, label %19, !prof !359

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !140
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %70, !prof !360

23:                                               ; preds = %19, %17
  %24 = sub nsw i32 %3, %4
  br label %70

25:                                               ; preds = %13
  %26 = icmp eq ptr %11, null
  br i1 %26, label %70, label %27, !prof !361

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !140
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %70, label %31, !prof !362

31:                                               ; preds = %27
  %32 = icmp eq i32 %29, %15
  br i1 %32, label %39, label %33, !prof !363

33:                                               ; preds = %31
  %34 = sub nsw i32 %29, %15
  %35 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !364
  %36 = icmp eq i8 %35, 0
  %37 = sub nsw i32 0, %34
  %38 = select i1 %36, i32 %37, i32 %34, !prof !373
  br label %70

39:                                               ; preds = %31
  %40 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !88
  %41 = getelementptr inbounds ptr, ptr %40, i64 %6
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !99
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr @regno_max_ref_width, align 8, !tbaa !88
  %51 = getelementptr inbounds i32, ptr %50, i64 %6
  %52 = load i32, ptr %51, align 4, !tbaa !103
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %49)
  %54 = getelementptr inbounds ptr, ptr %40, i64 %9
  %55 = load ptr, ptr %54, align 8, !tbaa !88
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !99
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds i32, ptr %50, i64 %9
  %64 = load i32, ptr %63, align 4, !tbaa !103
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 %62)
  %66 = sub nsw i32 %65, %53
  %67 = icmp eq i32 %65, %53
  %68 = sub nsw i32 %3, %4
  %69 = select i1 %67, i32 %68, i32 %66, !prof !374
  br label %70

70:                                               ; preds = %39, %25, %27, %19, %33, %23
  %71 = phi i32 [ %24, %23 ], [ %38, %33 ], [ 1, %19 ], [ -1, %27 ], [ -1, %25 ], [ %69, %39 ]
  ret i32 %71
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_mark_allocation_change(i32 noundef %0) local_unnamed_addr #9 !prof !87 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !139
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %9 = getelementptr inbounds i16, ptr %8, i64 %3
  %10 = load i16, ptr %9, align 2, !tbaa !166
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !140
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %65, label %15

15:                                               ; preds = %1
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !154
  br label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %22 = load ptr, ptr %21, align 8, !tbaa !167
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 10
  br label %33

26:                                               ; preds = %20
  %27 = zext i32 %7 to i64
  %28 = zext nneg i32 %13 to i64
  %29 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %27, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !166
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds i32, ptr %22, i64 %31
  br label %33

33:                                               ; preds = %26, %24
  %34 = phi ptr [ %25, %24 ], [ %32, %26 ]
  %35 = load i32, ptr %34, align 4, !tbaa !103
  tail call fastcc void @update_copy_costs(ptr noundef %5, i8 noundef zeroext 0)
  br label %36

36:                                               ; preds = %33, %17
  %37 = phi i32 [ %19, %17 ], [ %35, %33 ]
  %38 = load i32, ptr @ira_overall_cost, align 4, !tbaa !103
  %39 = add nsw i32 %38, %37
  store i32 %39, ptr @ira_overall_cost, align 4, !tbaa !103
  store i32 %11, ptr %12, align 4, !tbaa !140
  %40 = icmp slt i16 %10, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  store i32 -1, ptr %12, align 4, !tbaa !140
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 12
  %43 = load i32, ptr %42, align 4, !tbaa !154
  %44 = sub i32 %43, %37
  br label %61

45:                                               ; preds = %36
  %46 = zext i32 %7 to i64
  %47 = zext nneg i32 %11 to i64
  %48 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !166
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %53 = load ptr, ptr %52, align 8, !tbaa !167
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 10
  %56 = zext nneg i16 %49 to i64
  %57 = getelementptr inbounds i32, ptr %53, i64 %56
  %58 = select i1 %54, ptr %55, ptr %57
  %59 = load i32, ptr %58, align 4, !tbaa !103
  %60 = sub i32 %59, %37
  tail call fastcc void @update_copy_costs(ptr noundef %5, i8 noundef zeroext 1)
  br label %61

61:                                               ; preds = %45, %51, %41
  %62 = phi i32 [ %44, %41 ], [ %60, %51 ], [ 0, %45 ]
  %63 = load i32, ptr @ira_overall_cost, align 4, !tbaa !103
  %64 = add nsw i32 %63, %62
  store i32 %64, ptr @ira_overall_cost, align 4, !tbaa !103
  br label %65

65:                                               ; preds = %1, %61
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_copy_costs(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !375 !PGOFuncName !376 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !139
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %187, label %6, !prof !377

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !140
  %9 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @update_cost_check, align 4, !tbaa !103
  store ptr null, ptr @update_cost_queue, align 8, !tbaa !88
  br label %11

11:                                               ; preds = %184, %6
  %12 = phi ptr [ %0, %6 ], [ %185, %184 ]
  %13 = phi i32 [ 1, %6 ], [ %186, %184 ]
  %14 = phi ptr [ undef, %6 ], [ %172, %184 ]
  %15 = phi ptr [ undef, %6 ], [ %173, %184 ]
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !156
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = icmp eq ptr %19, null
  br i1 %20, label %171, label %21, !prof !378

21:                                               ; preds = %11
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !103
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %21, %169
  %27 = phi ptr [ %15, %21 ], [ %48, %169 ]
  %28 = phi ptr [ %19, %21 ], [ %48, %169 ]
  %29 = phi ptr [ %14, %21 ], [ %47, %169 ]
  %30 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !161
  %32 = icmp eq ptr %31, %12
  br i1 %32, label %33, label %38, !prof !379

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !163
  %36 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !164
  br label %46

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !164
  %41 = icmp eq ptr %40, %12
  br i1 %41, label %42, label %45, !prof !380

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !165
  br label %46

45:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 280, ptr noundef nonnull @.str.5) #23
  br label %46

46:                                               ; preds = %42, %45, %33
  %47 = phi ptr [ %37, %33 ], [ %31, %42 ], [ %29, %45 ]
  %48 = phi ptr [ %35, %33 ], [ %44, %42 ], [ %27, %45 ]
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !139
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %25, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !99
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %169, label %55, !prof !381

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 31
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 256
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %169, !prof !382

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !164
  %63 = icmp eq ptr %62, %12
  br i1 %63, label %64, label %73, !prof !383

64:                                               ; preds = %60
  %65 = zext i32 %17 to i64
  %66 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !88
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !384

69:                                               ; preds = %64
  tail call void @ira_init_register_move_cost(i32 noundef %17) #23
  br label %70

70:                                               ; preds = %64, %69
  %71 = load ptr, ptr %66, align 8, !tbaa !88
  %72 = getelementptr inbounds [27 x i16], ptr %71, i64 %25, i64 %51
  br label %82

73:                                               ; preds = %60
  %74 = zext i32 %17 to i64
  %75 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !88
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79, !prof !385

78:                                               ; preds = %73
  tail call void @ira_init_register_move_cost(i32 noundef %17) #23
  br label %79

79:                                               ; preds = %73, %78
  %80 = load ptr, ptr %75, align 8, !tbaa !88
  %81 = getelementptr inbounds [27 x i16], ptr %80, i64 %51, i64 %25
  br label %82

82:                                               ; preds = %79, %70
  %83 = phi ptr [ %72, %70 ], [ %81, %79 ]
  %84 = icmp eq i8 %1, 0
  %85 = load i16, ptr %83, align 2, !tbaa !166
  %86 = zext i16 %85 to i32
  %87 = sub nsw i32 0, %86
  %88 = select i1 %84, i32 %86, i32 %87, !prof !386
  %89 = getelementptr inbounds %struct.ira_allocno_copy, ptr %28, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !170
  %91 = mul nsw i32 %88, %90
  %92 = sdiv i32 %91, %13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %169, label %94, !prof !387

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 34
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 11
  %97 = load i32, ptr %96, align 8, !tbaa !184
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 33
  %99 = load ptr, ptr %98, align 8, !tbaa !167
  %100 = load ptr, ptr %95, align 8, !tbaa !88
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %119, !prof !388

102:                                              ; preds = %94
  %103 = tail call ptr @ira_allocate_cost_vector(i32 noundef %50) #23
  store ptr %103, ptr %95, align 8, !tbaa !88
  %104 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %51
  %105 = load i32, ptr %104, align 4, !tbaa !103
  %106 = icmp eq ptr %99, null
  br i1 %106, label %107, label %111, !prof !389

107:                                              ; preds = %102
  %108 = icmp sgt i32 %105, 0
  br i1 %108, label %109, label %119, !prof !390

109:                                              ; preds = %107
  %110 = zext nneg i32 %105 to i64
  br label %114

111:                                              ; preds = %102
  %112 = sext i32 %105 to i64
  %113 = shl nsw i64 %112, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %103, ptr nonnull align 4 %99, i64 %113, i1 false), !prof !391
  br label %119

114:                                              ; preds = %109, %114
  %115 = phi i64 [ 0, %109 ], [ %117, %114 ]
  %116 = getelementptr inbounds i32, ptr %103, i64 %115
  store i32 %97, ptr %116, align 4, !tbaa !103
  %117 = add nuw nsw i64 %115, 1
  %118 = icmp eq i64 %117, %110
  br i1 %118, label %119, label %114, !prof !392, !llvm.loop !168

119:                                              ; preds = %114, %107, %94, %111
  %120 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 36
  %121 = getelementptr inbounds %struct.ira_allocno, ptr %47, i64 0, i32 35
  %122 = load ptr, ptr %121, align 8, !tbaa !169
  %123 = load ptr, ptr %120, align 8, !tbaa !88
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %138, !prof !393

125:                                              ; preds = %119
  %126 = tail call ptr @ira_allocate_cost_vector(i32 noundef %50) #23
  store ptr %126, ptr %120, align 8, !tbaa !88
  %127 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %51
  %128 = load i32, ptr %127, align 4, !tbaa !103
  %129 = icmp eq ptr %122, null
  br i1 %129, label %130, label %135, !prof !394

130:                                              ; preds = %125
  %131 = icmp sgt i32 %128, 0
  br i1 %131, label %132, label %138, !prof !395

132:                                              ; preds = %130
  %133 = zext nneg i32 %128 to i64
  %134 = shl nuw nsw i64 %133, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %126, i8 0, i64 %134, i1 false), !tbaa !103
  br label %138

135:                                              ; preds = %125
  %136 = sext i32 %128 to i64
  %137 = shl nsw i64 %136, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %126, ptr nonnull align 4 %122, i64 %137, i1 false)
  br label %138

138:                                              ; preds = %132, %130, %119, %135
  %139 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %51, i64 %22
  %140 = load i16, ptr %139, align 2, !tbaa !166
  %141 = load ptr, ptr %95, align 8, !tbaa !171
  %142 = sext i16 %140 to i64
  %143 = getelementptr inbounds i32, ptr %141, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !103
  %145 = add nsw i32 %144, %92
  store i32 %145, ptr %143, align 4, !tbaa !103
  %146 = load ptr, ptr %120, align 8, !tbaa !172
  %147 = getelementptr inbounds i32, ptr %146, i64 %142
  %148 = load i32, ptr %147, align 4, !tbaa !103
  %149 = add nsw i32 %148, %92
  store i32 %149, ptr %147, align 4, !tbaa !103
  %150 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %151 = load i32, ptr %47, align 8, !tbaa !137
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %150, i64 %152
  %154 = load i32, ptr %153, align 8, !tbaa !214
  %155 = load i32, ptr @update_cost_check, align 4, !tbaa !103
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %169, label %157, !prof !396

157:                                              ; preds = %138
  %158 = load i32, ptr %49, align 8, !tbaa !139
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %169, label %160, !prof !396

160:                                              ; preds = %157
  %161 = shl nsw i32 %13, 2
  store i32 %155, ptr %153, align 8, !tbaa !214
  %162 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %150, i64 %152, i32 1
  store i32 %161, ptr %162, align 4, !tbaa !217
  %163 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %150, i64 %152, i32 2
  store ptr null, ptr %163, align 8, !tbaa !218
  %164 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %165 = icmp eq ptr %164, null
  %166 = load ptr, ptr @update_cost_queue_tail, align 8
  %167 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %166, i64 0, i32 2
  %168 = select i1 %165, ptr @update_cost_queue, ptr %167, !prof !397
  store ptr %47, ptr %168, align 8, !tbaa !88
  store ptr %153, ptr @update_cost_queue_tail, align 8, !tbaa !88
  br label %169

169:                                              ; preds = %160, %157, %138, %82, %46, %55
  %170 = icmp eq ptr %48, null
  br i1 %170, label %171, label %26, !prof !398, !llvm.loop !399

171:                                              ; preds = %169, %11
  %172 = phi ptr [ %14, %11 ], [ %47, %169 ]
  %173 = phi ptr [ %15, %11 ], [ %48, %169 ]
  %174 = load ptr, ptr @update_cost_queue, align 8, !tbaa !88
  %175 = icmp eq ptr %174, null
  br i1 %175, label %184, label %176, !prof !400

176:                                              ; preds = %171
  %177 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  %178 = load i32, ptr %174, align 8, !tbaa !137
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %177, i64 %179, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !217
  %182 = getelementptr inbounds %struct.update_cost_queue_elem, ptr %177, i64 %179, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !218
  store ptr %183, ptr @update_cost_queue, align 8, !tbaa !88
  br label %184

184:                                              ; preds = %171, %176
  %185 = phi ptr [ %12, %171 ], [ %174, %176 ]
  %186 = phi i32 [ %13, %171 ], [ %181, %176 ]
  br i1 %175, label %187, label %11, !prof !400, !llvm.loop !401

187:                                              ; preds = %184, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_mark_memory_move_deletion(i32 noundef %0, i32 noundef %1) local_unnamed_addr #17 !prof !87 {
  %3 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
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

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ira_reassign_pseudos(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) local_unnamed_addr #13 !prof !402 {
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %10, !prof !403

8:                                                ; preds = %6
  %9 = zext nneg i32 %1 to i64
  tail call void @spec_qsort(ptr noundef %0, i64 noundef %9, i64 noundef 4, ptr noundef nonnull @pseudo_reg_compare) #23
  br label %10

10:                                               ; preds = %8, %6
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %65, !prof !314

12:                                               ; preds = %10, %59
  %13 = phi i64 [ %63, %59 ], [ 0, %10 ]
  %14 = phi i8 [ %61, %59 ], [ 0, %10 ]
  %15 = phi i32 [ %60, %59 ], [ 0, %10 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !103
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %3, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !146
  %21 = getelementptr inbounds i64, ptr %4, i64 %18
  %22 = load i64, ptr %21, align 8, !tbaa !146
  %23 = or i64 %20, %22
  %24 = or i64 %23, %2
  %25 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %26 = getelementptr inbounds i16, ptr %25, i64 %18
  %27 = load i16, ptr %26, align 2, !tbaa !166
  %28 = icmp slt i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2929, ptr noundef nonnull @.str.5) #23
  br label %30

30:                                               ; preds = %12, %29
  %31 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %32 = getelementptr inbounds ptr, ptr %31, i64 %18
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  tail call void @ira_mark_allocation_change(i32 noundef %17)
  %34 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %35 = icmp sgt i32 %34, 3
  %36 = load ptr, ptr @ira_dump_file, align 8
  %37 = icmp ne ptr %36, null
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load i32, ptr %33, align 8, !tbaa !137
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !154
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %33, i64 0, i32 10
  %44 = load i32, ptr %43, align 4, !tbaa !155
  %45 = sub nsw i32 %42, %44
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %36, ptr noundef nonnull @.str.6, i32 noundef %17, i32 noundef %40, i32 noundef %45)
  br label %47

47:                                               ; preds = %39, %30
  %48 = tail call fastcc zeroext i8 @allocno_reload_assign(ptr noundef %33, i64 noundef %24), !range !151
  %49 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %50 = getelementptr inbounds i16, ptr %49, i64 %18
  %51 = load i16, ptr %50, align 2, !tbaa !166
  %52 = icmp sgt i16 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %17) #23
  br label %59

55:                                               ; preds = %47
  %56 = add nsw i32 %15, 1
  %57 = sext i32 %15 to i64
  %58 = getelementptr inbounds i32, ptr %0, i64 %57
  store i32 %17, ptr %58, align 4, !tbaa !103
  br label %59

59:                                               ; preds = %53, %55
  %60 = phi i32 [ %15, %53 ], [ %56, %55 ]
  %61 = phi i8 [ 1, %53 ], [ %14, %55 ]
  %62 = zext nneg i32 %1 to i64
  %63 = add nuw nsw i64 %13, 1
  %64 = icmp eq i64 %63, %62
  br i1 %64, label %65, label %12, !prof !339, !llvm.loop !404

65:                                               ; preds = %59, %10
  %66 = phi i32 [ 0, %10 ], [ %60, %59 ]
  %67 = phi i8 [ 0, %10 ], [ %61, %59 ]
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %276, label %69, !prof !405

69:                                               ; preds = %65
  %70 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %71 = icmp sgt i32 %70, 3
  %72 = load ptr, ptr @ira_dump_file, align 8
  %73 = icmp ne ptr %72, null
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr nonnull %72)
  %77 = icmp sgt i32 %66, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = zext nneg i32 %66 to i64
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i64 [ 0, %78 ], [ %86, %80 ]
  %82 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %83 = getelementptr inbounds i32, ptr %0, i64 %81
  %84 = load i32, ptr %83, align 4, !tbaa !103
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.8, i32 noundef %84)
  %86 = add nuw nsw i64 %81, 1
  %87 = icmp eq i64 %86, %79
  br i1 %87, label %88, label %80, !llvm.loop !406

88:                                               ; preds = %80, %75
  %89 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %90 = tail call i32 @fputc(i32 10, ptr %89)
  br label %91

91:                                               ; preds = %88, %69
  %92 = icmp sgt i32 %66, 0
  br i1 %92, label %93, label %229

93:                                               ; preds = %91
  %94 = zext nneg i32 %66 to i64
  br label %95

95:                                               ; preds = %93, %226
  %96 = phi i64 [ 0, %93 ], [ %227, %226 ]
  %97 = phi i32 [ 0, %93 ], [ %141, %226 ]
  %98 = phi ptr [ undef, %93 ], [ %196, %226 ]
  %99 = getelementptr inbounds i32, ptr %0, i64 %96
  %100 = load i32, ptr %99, align 4, !tbaa !103
  %101 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !88
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 31
  %106 = load i16, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 23
  %108 = load ptr, ptr %107, align 8, !tbaa !143
  %109 = and i16 %106, 2048
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 21
  %113 = load i32, ptr %112, align 8, !tbaa !144
  %114 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 22
  %115 = load i32, ptr %114, align 4, !tbaa !145
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %111
  %118 = sub i32 %115, %113
  %119 = add i32 %118, 64
  %120 = sdiv i32 %119, 64
  %121 = shl nsw i32 %120, 3
  br label %122

122:                                              ; preds = %111, %117
  %123 = phi i32 [ %121, %117 ], [ 0, %111 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %108, align 8, !tbaa !146
  br label %127

127:                                              ; preds = %122, %125, %95
  %128 = phi i32 [ 0, %95 ], [ %123, %125 ], [ %123, %122 ]
  %129 = phi i32 [ 0, %95 ], [ %113, %125 ], [ %113, %122 ]
  %130 = phi i64 [ 0, %95 ], [ %126, %125 ], [ 0, %122 ]
  %131 = zext i32 %128 to i64
  %132 = zext i1 %110 to i32
  %133 = xor i1 %110, true
  %134 = zext i1 %133 to i32
  %135 = zext i1 %110 to i64
  br label %136

136:                                              ; preds = %221, %127
  %137 = phi i32 [ 0, %127 ], [ %223, %221 ]
  %138 = phi i32 [ 0, %127 ], [ %224, %221 ]
  %139 = phi i64 [ %130, %127 ], [ %225, %221 ]
  %140 = phi ptr [ %98, %127 ], [ %196, %221 ]
  %141 = phi i32 [ %97, %127 ], [ %222, %221 ]
  br i1 %110, label %142, label %149

142:                                              ; preds = %136
  %143 = icmp eq i64 %139, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %142
  %145 = add i32 %138, 1
  %146 = zext i32 %145 to i64
  %147 = shl nuw nsw i64 %146, 3
  %148 = icmp ult i64 %147, %131
  br i1 %148, label %169, label %192

149:                                              ; preds = %136
  %150 = zext i32 %138 to i64
  %151 = getelementptr inbounds ptr, ptr %108, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !88
  %153 = icmp ne ptr %152, null
  %154 = select i1 %153, ptr %152, ptr %140
  %155 = zext i1 %153 to i8
  br label %192

156:                                              ; preds = %169
  %157 = shl i32 %171, 6
  br label %158

158:                                              ; preds = %156, %142
  %159 = phi i32 [ %137, %142 ], [ %157, %156 ]
  %160 = phi i32 [ %138, %142 ], [ %171, %156 ]
  %161 = phi i64 [ %139, %142 ], [ %173, %156 ]
  %162 = and i64 %161, 1
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %175, label %182

164:                                              ; preds = %169
  %165 = add i32 %171, 1
  %166 = zext i32 %165 to i64
  %167 = shl nuw nsw i64 %166, 3
  %168 = icmp ult i64 %167, %131
  br i1 %168, label %169, label %190, !llvm.loop !147

169:                                              ; preds = %144, %164
  %170 = phi i64 [ %166, %164 ], [ %146, %144 ]
  %171 = phi i32 [ %165, %164 ], [ %145, %144 ]
  %172 = getelementptr inbounds i64, ptr %108, i64 %170
  %173 = load i64, ptr %172, align 8, !tbaa !146
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %164, label %156, !llvm.loop !147

175:                                              ; preds = %158, %175
  %176 = phi i64 [ %179, %175 ], [ %161, %158 ]
  %177 = phi i32 [ %178, %175 ], [ %159, %158 ]
  %178 = add i32 %177, 1
  %179 = lshr exact i64 %176, 1
  %180 = and i64 %176, 2
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %175, label %182, !llvm.loop !148

182:                                              ; preds = %175, %158
  %183 = phi i32 [ %159, %158 ], [ %178, %175 ]
  %184 = phi i64 [ %161, %158 ], [ %179, %175 ]
  %185 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !88
  %186 = add i32 %183, %129
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %185, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !88
  br label %192

190:                                              ; preds = %164
  %191 = shl i32 %171, 6
  br label %192

192:                                              ; preds = %190, %144, %149, %182
  %193 = phi i32 [ %183, %182 ], [ %137, %149 ], [ %137, %144 ], [ %191, %190 ]
  %194 = phi i32 [ %160, %182 ], [ %138, %149 ], [ %145, %144 ], [ %165, %190 ]
  %195 = phi i64 [ %184, %182 ], [ %139, %149 ], [ %139, %144 ], [ %173, %190 ]
  %196 = phi ptr [ %189, %182 ], [ %154, %149 ], [ %140, %144 ], [ %140, %190 ]
  %197 = phi i8 [ 1, %182 ], [ %155, %149 ], [ 0, %144 ], [ 0, %190 ]
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %226, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %196, i64 0, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !140
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.ira_allocno, ptr %196, i64 0, i32 31
  %205 = load i16, ptr %204, align 4
  %206 = and i16 %205, 8
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %203
  %209 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %210 = load i32, ptr %196, align 8, !tbaa !137
  %211 = tail call i32 @bitmap_bit_p(ptr noundef %209, i32 noundef %210) #23
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %215 = add nsw i32 %141, 1
  %216 = sext i32 %141 to i64
  %217 = getelementptr inbounds ptr, ptr %214, i64 %216
  store ptr %196, ptr %217, align 8, !tbaa !88
  %218 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %219 = load i32, ptr %196, align 8, !tbaa !137
  %220 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %218, i32 noundef %219) #23
  br label %221

221:                                              ; preds = %199, %203, %208, %213
  %222 = phi i32 [ %141, %203 ], [ %141, %208 ], [ %215, %213 ], [ %141, %199 ]
  %223 = add i32 %193, %132
  %224 = add i32 %194, %134
  %225 = lshr i64 %195, %135
  br label %136, !llvm.loop !407

226:                                              ; preds = %192
  %227 = add nuw nsw i64 %96, 1
  %228 = icmp eq i64 %227, %94
  br i1 %228, label %229, label %95, !llvm.loop !408

229:                                              ; preds = %226, %91
  %230 = phi i32 [ 0, %91 ], [ %141, %226 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %276, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call fastcc void @setup_allocno_priorities(ptr noundef %233, i32 noundef %230)
  %234 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %235 = sext i32 %230 to i64
  tail call void @spec_qsort(ptr noundef %234, i64 noundef %235, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #23
  %236 = icmp sgt i32 %230, 0
  br i1 %236, label %237, label %276

237:                                              ; preds = %232
  %238 = zext nneg i32 %230 to i64
  br label %239

239:                                              ; preds = %237, %272
  %240 = phi i64 [ 0, %237 ], [ %274, %272 ]
  %241 = phi i8 [ %67, %237 ], [ %273, %272 ]
  %242 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %243 = getelementptr inbounds ptr, ptr %242, i64 %240
  %244 = load ptr, ptr %243, align 8, !tbaa !88
  %245 = getelementptr inbounds %struct.ira_allocno, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !141
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, ptr %3, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !146
  %250 = getelementptr inbounds i64, ptr %4, i64 %247
  %251 = load i64, ptr %250, align 8, !tbaa !146
  %252 = or i64 %249, %251
  %253 = or i64 %252, %2
  %254 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %255 = icmp sgt i32 %254, 3
  %256 = load ptr, ptr @ira_dump_file, align 8
  %257 = icmp ne ptr %256, null
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %259, label %267

259:                                              ; preds = %239
  %260 = load i32, ptr %244, align 8, !tbaa !137
  %261 = getelementptr inbounds %struct.ira_allocno, ptr %244, i64 0, i32 12
  %262 = load i32, ptr %261, align 4, !tbaa !154
  %263 = getelementptr inbounds %struct.ira_allocno, ptr %244, i64 0, i32 10
  %264 = load i32, ptr %263, align 4, !tbaa !155
  %265 = sub nsw i32 %262, %264
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %256, ptr noundef nonnull @.str.9, i32 noundef %246, i32 noundef %260, i32 noundef %265)
  br label %267

267:                                              ; preds = %259, %239
  %268 = tail call fastcc zeroext i8 @allocno_reload_assign(ptr noundef %244, i64 noundef %253), !range !151
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %5, i32 noundef %246) #23
  br label %272

272:                                              ; preds = %267, %270
  %273 = phi i8 [ 1, %270 ], [ %241, %267 ]
  %274 = add nuw nsw i64 %240, 1
  %275 = icmp eq i64 %274, %238
  br i1 %275, label %276, label %239, !llvm.loop !409

276:                                              ; preds = %272, %232, %229, %65
  %277 = phi i8 [ %67, %65 ], [ %67, %229 ], [ %67, %232 ], [ %273, %272 ]
  ret i8 %277
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @pseudo_reg_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !87 {
  %3 = load i32, ptr %0, align 4, !tbaa !103
  %4 = load i32, ptr %1, align 4, !tbaa !103
  %5 = load ptr, ptr @reg_info_p, align 8, !tbaa !88
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.reg_info_t, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !410
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds %struct.reg_info_t, ptr %5, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !410
  %12 = sub nsw i32 %8, %11
  %13 = icmp eq i32 %8, %11
  %14 = sub nsw i32 %3, %4
  %15 = select i1 %13, i32 %14, i32 %12
  ret i32 %15
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @allocno_reload_assign(ptr noundef %0, i64 noundef %1) unnamed_addr #9 !prof !87 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !141
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %6 = load i64, ptr %5, align 8, !tbaa !180
  %7 = or i64 %6, %1
  store i64 %7, ptr %5, align 8, !tbaa !180
  %8 = load i32, ptr @flag_caller_saves, align 4, !tbaa !103
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !412
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr @call_used_reg_set, align 8, !tbaa !146
  %16 = or i64 %15, %7
  store i64 %16, ptr %5, align 8, !tbaa !180
  br label %17

17:                                               ; preds = %14, %10, %2
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, -257
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !139
  tail call fastcc void @update_curr_costs(ptr noundef %0)
  %23 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %0, i8 noundef zeroext 1), !range !151
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !140
  %26 = trunc i32 %25 to i16
  %27 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %28 = sext i32 %4 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  store i16 %26, ptr %29, align 2, !tbaa !166
  %30 = icmp slt i32 %25, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 -1, ptr %24, align 4, !tbaa !140
  br label %77

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !154
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %36 = load ptr, ptr %35, align 8, !tbaa !167
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  br label %47

40:                                               ; preds = %32
  %41 = zext i32 %22 to i64
  %42 = zext nneg i32 %25 to i64
  %43 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %41, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !166
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i32, ptr %36, i64 %45
  br label %47

47:                                               ; preds = %40, %38
  %48 = phi ptr [ %39, %38 ], [ %46, %40 ]
  %49 = load i32, ptr %48, align 4, !tbaa !103
  %50 = sub i32 %49, %34
  %51 = load i32, ptr @ira_overall_cost, align 4, !tbaa !103
  %52 = add i32 %50, %51
  store i32 %52, ptr @ira_overall_cost, align 4, !tbaa !103
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %54 = load i32, ptr %53, align 8, !tbaa !412
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !156
  %59 = load i64, ptr @call_used_reg_set, align 8, !tbaa !146
  %60 = zext nneg i32 %25 to i64
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %60, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !99
  %64 = zext i8 %63 to i64
  %65 = zext nneg i32 %25 to i64
  br label %66

66:                                               ; preds = %69, %56
  %67 = phi i64 [ %70, %69 ], [ %64, %56 ]
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = add nsw i64 %67, -1
  %71 = add nsw i64 %70, %65
  %72 = shl nuw i64 1, %71
  %73 = and i64 %72, %59
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %66, label %75, !llvm.loop !250

75:                                               ; preds = %69
  br i1 %68, label %76, label %77

76:                                               ; preds = %75
  store i32 1, ptr @caller_save_needed, align 4, !tbaa !103
  br label %77

77:                                               ; preds = %66, %47, %75, %76, %31
  %78 = shl i32 %25, 16
  %79 = ashr exact i32 %78, 16
  %80 = icmp sgt i16 %26, -1
  %81 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %82 = icmp sgt i32 %81, 3
  %83 = load ptr, ptr @ira_dump_file, align 8
  %84 = icmp ne ptr %83, null
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %80, label %86, label %107

86:                                               ; preds = %77
  br i1 %85, label %87, label %89

87:                                               ; preds = %86
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %83, ptr noundef nonnull @.str.18, i32 noundef %79)
  br label %89

89:                                               ; preds = %87, %86
  %90 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !88
  %91 = getelementptr inbounds ptr, ptr %90, i64 %28
  %92 = load ptr, ptr %91, align 8, !tbaa !88
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !99
  %95 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %96 = getelementptr inbounds i16, ptr %95, i64 %28
  %97 = load i16, ptr %96, align 2, !tbaa !166
  %98 = sext i16 %97 to i32
  tail call void @df_ref_change_reg_with_loc(i32 noundef %94, i32 noundef %98, ptr noundef %92) #23
  %99 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %100 = getelementptr inbounds i16, ptr %99, i64 %28
  %101 = load i16, ptr %100, align 2, !tbaa !166
  %102 = sext i16 %101 to i32
  %103 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !88
  %104 = getelementptr inbounds ptr, ptr %103, i64 %28
  %105 = load ptr, ptr %104, align 8, !tbaa !88
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  store i32 %102, ptr %106, align 8, !tbaa !99
  tail call void @mark_home_live(i32 noundef %4) #23
  br label %110

107:                                              ; preds = %77
  br i1 %85, label %108, label %110

108:                                              ; preds = %107
  %109 = tail call i32 @fputc(i32 10, ptr nonnull %83)
  br label %110

110:                                              ; preds = %107, %108, %89
  %111 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %112 = getelementptr inbounds i16, ptr %111, i64 %28
  %113 = load i16, ptr %112, align 2, !tbaa !166
  %114 = icmp sgt i16 %113, -1
  %115 = zext i1 %114 to i8
  ret i8 %115
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ira_reuse_stack_slot(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !413 {
  %4 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = load i32, ptr @flag_ira_share_spill_slots, align 4, !tbaa !103
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %341, label %10, !prof !261

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !140
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21, !prof !261

14:                                               ; preds = %10
  %15 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !103
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %223

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 4
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 20
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 15
  br label %28

21:                                               ; preds = %10
  %22 = sub i32 -2, %12
  %23 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !88
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %23, i64 %24, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !414
  br label %236

28:                                               ; preds = %17, %211
  %29 = phi i64 [ 0, %17 ], [ %216, %211 ]
  %30 = phi ptr [ undef, %17 ], [ %215, %211 ]
  %31 = phi ptr [ undef, %17 ], [ %214, %211 ]
  %32 = phi i32 [ -1, %17 ], [ %213, %211 ]
  %33 = phi i32 [ -1, %17 ], [ %212, %211 ]
  %34 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %34, i64 %29
  %36 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %34, i64 %29, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !414
  %38 = icmp eq ptr %37, null
  br i1 %38, label %211, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %34, i64 %29, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !416
  %42 = icmp ult i32 %41, %2
  br i1 %42, label %211, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %37, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !99
  %50 = zext i8 %49 to i32
  %51 = icmp ult i32 %50, %1
  br i1 %51, label %211, label %52

52:                                               ; preds = %43
  %53 = load ptr, ptr %35, align 8, !tbaa !319
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @bitmap_zero_bits, ptr %53
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !321
  %58 = icmp eq i32 %57, 0
  %59 = shl i32 %57, 7
  %60 = select i1 %58, i32 53, i32 %59
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %55, i64 0, i32 3, i64 0
  %62 = load i64, ptr %61, align 8, !tbaa !146
  %63 = and i32 %60, 53
  %64 = zext nneg i32 %63 to i64
  %65 = lshr i64 %62, %64
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = add nuw nsw i32 %60, %67
  br label %69

69:                                               ; preds = %158, %52
  %70 = phi i64 [ %65, %52 ], [ %159, %158 ]
  %71 = phi i32 [ %68, %52 ], [ %160, %158 ]
  %72 = phi i32 [ 0, %52 ], [ %128, %158 ]
  %73 = phi ptr [ %55, %52 ], [ %129, %158 ]
  %74 = phi ptr [ %30, %52 ], [ %135, %158 ]
  %75 = icmp eq i64 %70, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %104, %69
  %77 = phi i64 [ %70, %69 ], [ %109, %104 ]
  %78 = phi i32 [ %71, %69 ], [ %106, %104 ]
  %79 = phi i32 [ %72, %69 ], [ %105, %104 ]
  %80 = phi ptr [ %73, %69 ], [ %97, %104 ]
  %81 = and i64 %77, 1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %76, %83
  %84 = phi i32 [ %87, %83 ], [ %78, %76 ]
  %85 = phi i64 [ %86, %83 ], [ %77, %76 ]
  %86 = lshr exact i64 %85, 1
  %87 = add i32 %84, 1
  %88 = and i64 %85, 2
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %83, label %125, !llvm.loop !324

90:                                               ; preds = %69
  %91 = add i32 %71, 63
  %92 = and i32 %91, -64
  %93 = add i32 %72, 1
  br label %94

94:                                               ; preds = %121, %90
  %95 = phi i64 [ %70, %90 ], [ %116, %121 ]
  %96 = phi i32 [ %92, %90 ], [ %124, %121 ]
  %97 = phi ptr [ %73, %90 ], [ %119, %121 ]
  %98 = phi i32 [ %93, %90 ], [ 0, %121 ]
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %115, label %100

100:                                              ; preds = %94
  %101 = add i32 %96, 128
  %102 = shl i32 %98, 6
  %103 = sub i32 %101, %102
  br label %104

104:                                              ; preds = %100, %111
  %105 = phi i32 [ %113, %111 ], [ %98, %100 ]
  %106 = phi i32 [ %112, %111 ], [ %96, %100 ]
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 3, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !146
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %76

111:                                              ; preds = %104
  %112 = add i32 %106, 64
  %113 = add i32 %105, 1
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %104, !llvm.loop !328

115:                                              ; preds = %111, %94
  %116 = phi i64 [ %95, %94 ], [ %109, %111 ]
  %117 = phi i32 [ %96, %94 ], [ %103, %111 ]
  %118 = phi i32 [ %98, %94 ], [ 2, %111 ]
  %119 = load ptr, ptr %97, align 8, !tbaa !329
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !321
  %124 = shl i32 %123, 7
  br label %94, !llvm.loop !331

125:                                              ; preds = %115, %83, %76
  %126 = phi i64 [ %77, %76 ], [ %86, %83 ], [ %116, %115 ]
  %127 = phi i32 [ %78, %76 ], [ %87, %83 ], [ %117, %115 ]
  %128 = phi i32 [ %79, %76 ], [ %79, %83 ], [ %118, %115 ]
  %129 = phi ptr [ %80, %76 ], [ %80, %83 ], [ %119, %115 ]
  %130 = phi i1 [ false, %76 ], [ false, %83 ], [ true, %115 ]
  br i1 %130, label %161, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %133 = zext i32 %127 to i64
  %134 = getelementptr inbounds ptr, ptr %132, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !88
  %136 = icmp eq ptr %7, %135
  br i1 %136, label %155, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %18, align 8, !tbaa !342
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !342
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load i32, ptr %145, align 8, !tbaa !99
  %147 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load i32, ptr %147, align 8, !tbaa !99
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %144, %140, %137
  %151 = load ptr, ptr %19, align 8, !tbaa !290
  %152 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 20
  %153 = load ptr, ptr %152, align 8, !tbaa !290
  %154 = tail call zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef %151, ptr noundef %153) #23
  br label %155

155:                                              ; preds = %131, %144, %150
  %156 = phi i8 [ %154, %150 ], [ 0, %131 ], [ 0, %144 ]
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %211

158:                                              ; preds = %155
  %159 = lshr i64 %126, 1
  %160 = add i32 %127, 1
  br label %69, !llvm.loop !417

161:                                              ; preds = %125
  %162 = load ptr, ptr %20, align 8, !tbaa !160
  %163 = icmp eq ptr %162, null
  br i1 %163, label %203, label %164

164:                                              ; preds = %161, %200
  %165 = phi ptr [ %187, %200 ], [ %74, %161 ]
  %166 = phi ptr [ %186, %200 ], [ %31, %161 ]
  %167 = phi ptr [ %186, %200 ], [ %162, %161 ]
  %168 = phi i32 [ %201, %200 ], [ 0, %161 ]
  %169 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !161
  %171 = icmp eq ptr %170, %7
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 7
  %174 = load ptr, ptr %173, align 8, !tbaa !163
  %175 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !164
  br label %185

177:                                              ; preds = %164
  %178 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !164
  %180 = icmp eq ptr %179, %7
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !165
  br label %185

184:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3074, ptr noundef nonnull @.str.5) #23
  br label %185

185:                                              ; preds = %181, %184, %172
  %186 = phi ptr [ %174, %172 ], [ %183, %181 ], [ %166, %184 ]
  %187 = phi ptr [ %176, %172 ], [ %170, %181 ], [ %165, %184 ]
  %188 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !334
  %190 = icmp eq ptr %189, null
  br i1 %190, label %200, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.ira_allocno, ptr %187, i64 0, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !141
  %194 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %35, i32 noundef %193) #23
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.ira_allocno_copy, ptr %167, i64 0, i32 3
  %198 = load i32, ptr %197, align 8, !tbaa !170
  %199 = add nsw i32 %198, %168
  br label %200

200:                                              ; preds = %191, %196, %185
  %201 = phi i32 [ %168, %185 ], [ %199, %196 ], [ %168, %191 ]
  %202 = icmp eq ptr %186, null
  br i1 %202, label %203, label %164, !llvm.loop !418

203:                                              ; preds = %200, %161
  %204 = phi i32 [ 0, %161 ], [ %201, %200 ]
  %205 = phi ptr [ %31, %161 ], [ %186, %200 ]
  %206 = phi ptr [ %74, %161 ], [ %187, %200 ]
  %207 = icmp sgt i32 %204, %32
  %208 = trunc i64 %29 to i32
  %209 = select i1 %207, i32 %208, i32 %33
  %210 = tail call i32 @llvm.smax.i32(i32 %204, i32 %32)
  br label %211

211:                                              ; preds = %155, %203, %39, %43, %28
  %212 = phi i32 [ %33, %28 ], [ %33, %39 ], [ %33, %43 ], [ %209, %203 ], [ %33, %155 ]
  %213 = phi i32 [ %32, %28 ], [ %32, %39 ], [ %32, %43 ], [ %210, %203 ], [ %32, %155 ]
  %214 = phi ptr [ %31, %28 ], [ %31, %39 ], [ %31, %43 ], [ %205, %203 ], [ %31, %155 ]
  %215 = phi ptr [ %30, %28 ], [ %30, %39 ], [ %30, %43 ], [ %206, %203 ], [ %135, %155 ]
  %216 = add nuw nsw i64 %29, 1
  %217 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !103
  %218 = sext i32 %217 to i64
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %28, label %220, !llvm.loop !419

220:                                              ; preds = %211
  %221 = trunc i64 %216 to i32
  %222 = icmp sgt i32 %213, -1
  br label %223

223:                                              ; preds = %220, %14
  %224 = phi i32 [ 0, %14 ], [ %221, %220 ]
  %225 = phi i32 [ -1, %14 ], [ %212, %220 ]
  %226 = phi i1 [ false, %14 ], [ %222, %220 ]
  %227 = phi ptr [ null, %14 ], [ %35, %220 ]
  br i1 %226, label %228, label %236

228:                                              ; preds = %223
  %229 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !88
  %230 = sext i32 %225 to i64
  %231 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %229, i64 %230
  %232 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %231, i32 noundef %0) #23
  %233 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %229, i64 %230, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !414
  %235 = sub i32 -2, %225
  store i32 %235, ptr %11, align 4, !tbaa !140
  br label %236

236:                                              ; preds = %223, %228, %21
  %237 = phi i32 [ %22, %21 ], [ %225, %228 ], [ %224, %223 ]
  %238 = phi ptr [ %27, %21 ], [ %234, %228 ], [ null, %223 ]
  %239 = phi ptr [ %25, %21 ], [ %231, %228 ], [ %227, %223 ]
  %240 = icmp eq ptr %238, null
  br i1 %240, label %341, label %241, !prof !307

241:                                              ; preds = %236
  %242 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %239, i32 noundef %0) #23
  %243 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %244 = icmp sgt i32 %243, 3
  %245 = load ptr, ptr @ira_dump_file, align 8
  %246 = icmp ne ptr %245, null
  %247 = select i1 %244, i1 %246, i1 false, !prof !296
  br i1 %247, label %248, label %341, !prof !297

248:                                              ; preds = %241
  %249 = load ptr, ptr @reg_info_p, align 8, !tbaa !88
  %250 = getelementptr inbounds %struct.reg_info_t, ptr %249, i64 %5
  %251 = load i32, ptr %250, align 4, !tbaa !410
  %252 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %245, ptr noundef nonnull @.str.10, i32 noundef %0, i32 noundef %251, i32 noundef %237)
  %253 = load ptr, ptr %239, align 8, !tbaa !319
  %254 = icmp eq ptr %253, null
  %255 = select i1 %254, ptr @bitmap_zero_bits, ptr %253
  %256 = getelementptr inbounds %struct.bitmap_element_def, ptr %255, i64 0, i32 2
  %257 = load i32, ptr %256, align 8, !tbaa !321
  %258 = icmp eq i32 %257, 0
  %259 = shl i32 %257, 7
  %260 = select i1 %258, i32 53, i32 %259
  %261 = getelementptr inbounds %struct.bitmap_element_def, ptr %255, i64 0, i32 3, i64 0
  %262 = load i64, ptr %261, align 8, !tbaa !146
  %263 = and i32 %260, 53
  %264 = zext nneg i32 %263 to i64
  %265 = lshr i64 %262, %264
  %266 = icmp eq i64 %265, 0
  %267 = zext i1 %266 to i32
  %268 = add nuw nsw i32 %260, %267
  br label %269

269:                                              ; preds = %335, %248
  %270 = phi i64 [ %265, %248 ], [ %336, %335 ]
  %271 = phi i32 [ %268, %248 ], [ %337, %335 ]
  %272 = phi i32 [ 0, %248 ], [ %327, %335 ]
  %273 = phi ptr [ %255, %248 ], [ %328, %335 ]
  %274 = icmp eq i64 %270, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %303, %269
  %276 = phi i64 [ %270, %269 ], [ %308, %303 ]
  %277 = phi i32 [ %271, %269 ], [ %305, %303 ]
  %278 = phi i32 [ %272, %269 ], [ %304, %303 ]
  %279 = phi ptr [ %273, %269 ], [ %296, %303 ]
  %280 = and i64 %276, 1
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %324

282:                                              ; preds = %275, %282
  %283 = phi i32 [ %286, %282 ], [ %277, %275 ]
  %284 = phi i64 [ %285, %282 ], [ %276, %275 ]
  %285 = lshr exact i64 %284, 1
  %286 = add i32 %283, 1
  %287 = and i64 %284, 2
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %282, label %324, !llvm.loop !324

289:                                              ; preds = %269
  %290 = add i32 %271, 63
  %291 = and i32 %290, -64
  %292 = add i32 %272, 1
  br label %293

293:                                              ; preds = %320, %289
  %294 = phi i64 [ %270, %289 ], [ %315, %320 ]
  %295 = phi i32 [ %291, %289 ], [ %323, %320 ]
  %296 = phi ptr [ %273, %289 ], [ %318, %320 ]
  %297 = phi i32 [ %292, %289 ], [ 0, %320 ]
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %314, label %299

299:                                              ; preds = %293
  %300 = add i32 %295, 128
  %301 = shl i32 %297, 6
  %302 = sub i32 %300, %301
  br label %303

303:                                              ; preds = %299, %310
  %304 = phi i32 [ %312, %310 ], [ %297, %299 ]
  %305 = phi i32 [ %311, %310 ], [ %295, %299 ]
  %306 = zext i32 %304 to i64
  %307 = getelementptr inbounds %struct.bitmap_element_def, ptr %296, i64 0, i32 3, i64 %306
  %308 = load i64, ptr %307, align 8, !tbaa !146
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %275

310:                                              ; preds = %303
  %311 = add i32 %305, 64
  %312 = add i32 %304, 1
  %313 = icmp eq i32 %312, 2
  br i1 %313, label %314, label %303, !llvm.loop !328

314:                                              ; preds = %310, %293
  %315 = phi i64 [ %294, %293 ], [ %308, %310 ]
  %316 = phi i32 [ %295, %293 ], [ %302, %310 ]
  %317 = phi i32 [ %297, %293 ], [ 2, %310 ]
  %318 = load ptr, ptr %296, align 8, !tbaa !329
  %319 = icmp eq ptr %318, null
  br i1 %319, label %324, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.bitmap_element_def, ptr %318, i64 0, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !321
  %323 = shl i32 %322, 7
  br label %293, !llvm.loop !331

324:                                              ; preds = %314, %282, %275
  %325 = phi i64 [ %276, %275 ], [ %285, %282 ], [ %315, %314 ]
  %326 = phi i32 [ %277, %275 ], [ %286, %282 ], [ %316, %314 ]
  %327 = phi i32 [ %278, %275 ], [ %278, %282 ], [ %317, %314 ]
  %328 = phi ptr [ %279, %275 ], [ %279, %282 ], [ %318, %314 ]
  %329 = phi i1 [ false, %275 ], [ false, %282 ], [ true, %314 ]
  br i1 %329, label %338, label %330

330:                                              ; preds = %324
  %331 = icmp eq i32 %326, %0
  br i1 %331, label %335, label %332

332:                                              ; preds = %330
  %333 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %334 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %333, ptr noundef nonnull @.str.8, i32 noundef %326)
  br label %335

335:                                              ; preds = %330, %332
  %336 = lshr i64 %325, 1
  %337 = add i32 %326, 1
  br label %269, !llvm.loop !420

338:                                              ; preds = %324
  %339 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %340 = tail call i32 @fputc(i32 10, ptr %339)
  br label %341

341:                                              ; preds = %236, %338, %241, %3
  %342 = phi ptr [ null, %3 ], [ %238, %241 ], [ %238, %338 ], [ %238, %236 ]
  ret ptr %342
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_mark_new_stack_slot(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !421 {
  %4 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !140
  %10 = sub i32 -2, %9
  %11 = icmp eq i32 %9, -1
  br i1 %11, label %12, label %16, !prof !311

12:                                               ; preds = %3
  %13 = load i32, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !103
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @ira_spilled_reg_stack_slots_num, align 4, !tbaa !103
  %15 = sub i32 -2, %13
  store i32 %15, ptr %8, align 4, !tbaa !140
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %13, %12 ], [ %10, %3 ]
  %18 = load ptr, ptr @ira_spilled_reg_stack_slots, align 8, !tbaa !88
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.bitmap_head_def, ptr %20, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %21, align 8, !tbaa !422
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %20, i32 noundef %1) #23
  %23 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19, i32 1
  store ptr %0, ptr %23, align 8, !tbaa !414
  %24 = getelementptr inbounds %struct.ira_spilled_reg_stack_slot, ptr %18, i64 %19, i32 2
  store i32 %2, ptr %24, align 8, !tbaa !416
  %25 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %26 = icmp sgt i32 %25, 3
  %27 = load ptr, ptr @ira_dump_file, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false, !prof !310
  br i1 %29, label %30, label %35, !prof !311

30:                                               ; preds = %16
  %31 = load ptr, ptr @reg_info_p, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.reg_info_t, ptr %31, i64 %5
  %33 = load i32, ptr %32, align 4, !tbaa !410
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.11, i32 noundef %1, i32 noundef %33, i32 noundef %17)
  br label %35

35:                                               ; preds = %30, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ira_better_spill_reload_regno_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #13 !prof !423 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  %14 = call fastcc i32 @calculate_spill_cost(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %12)
  %15 = call fastcc i32 @calculate_spill_cost(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %13)
  %16 = load i32, ptr %8, align 4, !tbaa !103
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false, !prof !424
  br i1 %20, label %49, label %21, !prof !425

21:                                               ; preds = %5
  %22 = icmp ne i32 %16, 0
  %23 = icmp eq i32 %18, 0
  %24 = select i1 %22, i1 %23, i1 false, !prof !425
  br i1 %24, label %49, label %25, !prof !425

25:                                               ; preds = %21
  %26 = icmp eq i32 %14, %15
  br i1 %26, label %29, label %27, !prof !424

27:                                               ; preds = %25
  %28 = icmp slt i32 %14, %15
  br label %49

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4, !tbaa !103
  %31 = load i32, ptr %7, align 4, !tbaa !103
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %35, label %33, !prof !424

33:                                               ; preds = %29
  %34 = icmp sgt i32 %30, %31
  br label %49

35:                                               ; preds = %29
  %36 = load i32, ptr %12, align 4, !tbaa !103
  %37 = icmp sgt i32 %36, -1
  %38 = load i32, ptr %13, align 4
  %39 = icmp sgt i32 %38, -1
  %40 = select i1 %37, i1 %39, i1 false, !prof !425
  br i1 %40, label %41, label %49, !prof !425

41:                                               ; preds = %35
  %42 = zext nneg i32 %36 to i64
  %43 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !103
  %45 = zext nneg i32 %38 to i64
  %46 = getelementptr inbounds [53 x i32], ptr @inv_reg_alloc_order, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !103
  %48 = icmp slt i32 %44, %47
  br label %49

49:                                               ; preds = %35, %21, %5, %41, %33, %27
  %50 = phi i1 [ %28, %27 ], [ %34, %33 ], [ %48, %41 ], [ true, %5 ], [ false, %21 ], [ false, %35 ]
  %51 = zext i1 %50 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  ret i8 %51
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @calculate_spill_cost(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #13 !prof !426 !PGOFuncName !427 {
  store i32 0, ptr %5, align 4, !tbaa !103
  %9 = load i32, ptr %0, align 4, !tbaa !103
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %149, label %11, !prof !339

11:                                               ; preds = %8, %143
  %12 = phi i64 [ %145, %143 ], [ 0, %8 ]
  %13 = phi i32 [ %147, %143 ], [ %9, %8 ]
  %14 = phi i32 [ %32, %143 ], [ 0, %8 ]
  %15 = phi i32 [ %144, %143 ], [ 0, %8 ]
  %16 = phi i32 [ %67, %143 ], [ 0, %8 ]
  %17 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !88
  %18 = zext nneg i32 %13 to i64
  %19 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %17, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !428
  %21 = load i32, ptr %5, align 4, !tbaa !103
  %22 = add nsw i32 %21, %20
  store i32 %22, ptr %5, align 4, !tbaa !103
  %23 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %24 = getelementptr inbounds i16, ptr %23, i64 %18
  %25 = load i16, ptr %24, align 2, !tbaa !166
  %26 = sext i16 %25 to i32
  %27 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !88
  %28 = getelementptr inbounds ptr, ptr %27, i64 %18
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !158
  %32 = add nsw i32 %31, %14
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !154
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 10
  %36 = load i32, ptr %35, align 4, !tbaa !155
  %37 = sub nsw i32 %34, %36
  %38 = add nsw i32 %37, %15
  %39 = sext i16 %25 to i64
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !156
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %39, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !99
  %45 = zext i8 %44 to i32
  %46 = icmp eq i8 %44, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %11
  %48 = load i64, ptr @call_used_reg_set, align 8, !tbaa !146
  %49 = sext i16 %25 to i64
  %50 = zext i8 %44 to i64
  br label %51

51:                                               ; preds = %47, %57
  %52 = phi i64 [ 0, %47 ], [ %58, %57 ]
  %53 = add nsw i64 %52, %49
  %54 = shl nuw i64 1, %53
  %55 = and i64 %48, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = add nuw nsw i64 %52, 1
  %59 = icmp eq i64 %58, %50
  br i1 %59, label %62, label %51, !llvm.loop !430

60:                                               ; preds = %51
  %61 = trunc i64 %52 to i32
  br label %62

62:                                               ; preds = %60, %57, %11
  %63 = phi i32 [ 0, %11 ], [ %61, %60 ], [ %45, %57 ]
  %64 = icmp eq ptr %1, null
  %65 = icmp eq i32 %63, %45
  %66 = zext i1 %65 to i32
  %67 = add nuw nsw i32 %16, %66
  br i1 %64, label %76, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %1, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !99
  %75 = icmp eq i32 %74, %26
  br label %76

76:                                               ; preds = %72, %68, %62
  %77 = phi i1 [ false, %68 ], [ false, %62 ], [ %75, %72 ]
  %78 = icmp eq ptr %2, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %2, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !99
  %86 = icmp eq i32 %85, %26
  br label %87

87:                                               ; preds = %83, %79, %76
  %88 = phi i1 [ false, %79 ], [ false, %76 ], [ %86, %83 ]
  %89 = select i1 %77, i1 true, i1 %88
  br i1 %89, label %90, label %143

90:                                               ; preds = %87
  %91 = tail call ptr @find_regno_note(ptr noundef %3, i32 noundef 1, i32 noundef %26) #23
  %92 = icmp eq ptr %91, null
  br i1 %92, label %143, label %93

93:                                               ; preds = %90
  br i1 %77, label %94, label %103

94:                                               ; preds = %93
  %95 = load i32, ptr %40, align 8, !tbaa !156
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !139
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %96, i64 %99, i64 1
  %101 = load i16, ptr %100, align 2, !tbaa !166
  %102 = sext i16 %101 to i32
  br label %103

103:                                              ; preds = %94, %93
  %104 = phi i32 [ %102, %94 ], [ 0, %93 ]
  br i1 %88, label %105, label %115

105:                                              ; preds = %103
  %106 = load i32, ptr %40, align 8, !tbaa !156
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !139
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %107, i64 %110
  %112 = load i16, ptr %111, align 4, !tbaa !166
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %104, %113
  br label %115

115:                                              ; preds = %105, %103
  %116 = phi i32 [ %114, %105 ], [ %104, %103 ]
  %117 = load i32, ptr @optimize_size, align 4, !tbaa !103
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !103
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr @cfun, align 8, !tbaa !88
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !131
  %126 = load ptr, ptr %125, align 8, !tbaa !133
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 8
  %128 = load i64, ptr %127, align 8, !tbaa !135
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %122, %119
  %131 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !99
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 11
  %134 = load i32, ptr %133, align 8, !tbaa !127
  %135 = add i32 %134, 9
  %136 = icmp ult i32 %135, 19
  br i1 %136, label %139, label %137

137:                                              ; preds = %130
  %138 = sdiv i32 %134, -10
  br label %139

139:                                              ; preds = %122, %137, %130, %115
  %140 = phi i32 [ -1000, %115 ], [ %138, %137 ], [ -1, %130 ], [ -1000, %122 ]
  %141 = mul i32 %140, %116
  %142 = add i32 %141, %38
  br label %143

143:                                              ; preds = %90, %139, %87
  %144 = phi i32 [ %142, %139 ], [ %38, %90 ], [ %38, %87 ]
  %145 = add nuw i64 %12, 1
  %146 = getelementptr inbounds i32, ptr %0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !103
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %11, !prof !339, !llvm.loop !431

149:                                              ; preds = %143, %8
  %150 = phi i32 [ 0, %8 ], [ %67, %143 ]
  %151 = phi i32 [ 0, %8 ], [ %144, %143 ]
  %152 = phi i32 [ 0, %8 ], [ %32, %143 ]
  store i32 %152, ptr %4, align 4, !tbaa !103
  store i32 %150, ptr %6, align 4, !tbaa !103
  %153 = load i32, ptr %0, align 4, !tbaa !103
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %155, label %161, !prof !432

155:                                              ; preds = %149
  %156 = load ptr, ptr @reg_renumber, align 8, !tbaa !88
  %157 = zext nneg i32 %153 to i64
  %158 = getelementptr inbounds i16, ptr %156, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !166
  %160 = sext i16 %159 to i32
  br label %161

161:                                              ; preds = %155, %149
  %162 = phi i32 [ %160, %155 ], [ -1, %149 ]
  store i32 %162, ptr %7, align 4, !tbaa !103
  ret i32 %151
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_initiate_assign() local_unnamed_addr #13 !prof !270 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #23
  store ptr %4, ptr @sorted_allocnos, align 8, !tbaa !88
  %5 = tail call ptr @ira_allocate_bitmap() #23
  store ptr %5, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %6 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 4
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #23
  store ptr %9, ptr @update_cost_queue_elems, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 %8, i1 false), !prof !433
  store i32 0, ptr @update_cost_check, align 4, !tbaa !103
  %10 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #23
  store ptr %13, ptr @allocno_priorities, align 8, !tbaa !88
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_finish_assign() local_unnamed_addr #13 !prof !270 {
  %1 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %1) #23
  %2 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  tail call void @ira_free_bitmap(ptr noundef %2) #23
  %3 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %3) #23
  %4 = load ptr, ptr @allocno_priorities, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %4) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_color() local_unnamed_addr #13 !prof !270 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %2 = load ptr, ptr @ira_allocnos, align 8
  br label %3

3:                                                ; preds = %36, %0
  %4 = phi ptr [ undef, %0 ], [ %34, %36 ]
  %5 = phi i32 [ 0, %0 ], [ %35, %36 ]
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %32, !prof !271

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %18, !prof !314

12:                                               ; preds = %24
  %13 = getelementptr inbounds ptr, ptr %2, i64 %27
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16, !prof !314, !llvm.loop !136

16:                                               ; preds = %12
  %17 = icmp slt i64 %27, %26
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i64 [ %8, %7 ], [ %27, %16 ]
  %20 = phi i1 [ %6, %7 ], [ %17, %16 ]
  %21 = phi ptr [ %10, %7 ], [ %14, %16 ]
  %22 = trunc i64 %19 to i32
  %23 = add nsw i32 %22, 1
  br label %32

24:                                               ; preds = %7, %12
  %25 = phi i64 [ %27, %12 ], [ %8, %7 ]
  %26 = sext i32 %1 to i64
  %27 = add nsw i64 %25, 1
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %1, %28
  br i1 %29, label %30, label %12, !prof !315, !llvm.loop !136

30:                                               ; preds = %24
  %31 = icmp slt i64 %27, %26
  br label %32

32:                                               ; preds = %30, %3, %18
  %33 = phi i1 [ %20, %18 ], [ %6, %3 ], [ %31, %30 ]
  %34 = phi ptr [ %21, %18 ], [ %4, %3 ], [ %4, %30 ]
  %35 = phi i32 [ %23, %18 ], [ %5, %3 ], [ %5, %30 ]
  br i1 %33, label %36, label %43, !prof !316

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !154
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 13
  store i32 %38, ptr %39, align 8, !tbaa !179
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 10
  %41 = load i32, ptr %40, align 4, !tbaa !155
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 11
  store i32 %41, ptr %42, align 8, !tbaa !184
  br label %3, !llvm.loop !434

43:                                               ; preds = %32
  %44 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !99
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %356, label %46, !prof !284

46:                                               ; preds = %43
  %47 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %1) #23
  store ptr %47, ptr @allocno_stack_vec, align 8, !tbaa !88
  %48 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %49 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %48) #23
  store ptr %49, ptr @removed_splay_allocno_vec, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @allocated_hardreg_p, i8 0, i64 53, i1 false)
  %50 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  %53 = tail call ptr @ira_allocate(i64 noundef %52) #23
  store ptr %53, ptr @sorted_allocnos, align 8, !tbaa !88
  %54 = tail call ptr @ira_allocate_bitmap() #23
  store ptr %54, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %55 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %56 = sext i32 %55 to i64
  %57 = shl nsw i64 %56, 4
  %58 = tail call ptr @ira_allocate(i64 noundef %57) #23
  store ptr %58, ptr @update_cost_queue_elems, align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 %57, i1 false), !prof !433
  store i32 0, ptr @update_cost_check, align 4, !tbaa !103
  %59 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 2
  %62 = tail call ptr @ira_allocate(i64 noundef %61) #23
  store ptr %62, ptr @allocno_priorities, align 8, !tbaa !88
  %63 = tail call ptr @ira_allocate_bitmap() #23
  store ptr %63, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %64 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 3
  %67 = tail call ptr @ira_allocate(i64 noundef %66) #23
  store ptr %67, ptr @allocnos_for_spilling, align 8, !tbaa !88
  %68 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.19, i64 noundef 32, i64 noundef 100) #23
  store ptr %68, ptr @splay_tree_node_pool, align 8, !tbaa !88
  %69 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %70 = icmp sgt i32 %69, 0
  %71 = load ptr, ptr @ira_dump_file, align 8
  %72 = icmp ne ptr %71, null
  %73 = select i1 %70, i1 %72, i1 false, !prof !435
  br i1 %73, label %74, label %76, !prof !284

74:                                               ; preds = %46
  %75 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 26, i64 1, ptr nonnull %71)
  br label %76

76:                                               ; preds = %74, %46
  %77 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !88
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 0, ptr noundef %77, ptr noundef nonnull @color_pass, ptr noundef null) #23
  %78 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %79 = icmp sgt i32 %78, 1
  %80 = load ptr, ptr @ira_dump_file, align 8
  %81 = icmp ne ptr %80, null
  %82 = select i1 %79, i1 %81, i1 false, !prof !435
  br i1 %82, label %83, label %84, !prof !284

83:                                               ; preds = %76
  tail call void @ira_print_disposition(ptr noundef nonnull %80) #23
  br label %84

84:                                               ; preds = %83, %76
  %85 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !88
  tail call void @free_alloc_pool(ptr noundef %85) #23
  %86 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  tail call void @ira_free_bitmap(ptr noundef %86) #23
  %87 = load ptr, ptr @allocnos_for_spilling, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %87) #23
  %88 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %88) #23
  %89 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  tail call void @ira_free_bitmap(ptr noundef %89) #23
  %90 = load ptr, ptr @update_cost_queue_elems, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %90) #23
  %91 = load ptr, ptr @allocno_priorities, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %91) #23
  %92 = load ptr, ptr @removed_splay_allocno_vec, align 8, !tbaa !88
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94, !prof !284

94:                                               ; preds = %84
  tail call void @free(ptr noundef %92)
  br label %95

95:                                               ; preds = %94, %84
  store ptr null, ptr @removed_splay_allocno_vec, align 8, !tbaa !88
  %96 = load ptr, ptr @allocno_stack_vec, align 8, !tbaa !88
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !284

98:                                               ; preds = %95
  tail call void @free(ptr noundef %96)
  br label %99

99:                                               ; preds = %98, %95
  store ptr null, ptr @allocno_stack_vec, align 8, !tbaa !88
  br label %100

100:                                              ; preds = %355, %99
  %101 = phi ptr [ undef, %99 ], [ %150, %355 ]
  %102 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %103 = icmp sgt i32 %102, 0
  %104 = load ptr, ptr @ira_dump_file, align 8
  %105 = icmp ne ptr %104, null
  %106 = select i1 %103, i1 %105, i1 false, !prof !435
  br i1 %106, label %107, label %109, !prof !284

107:                                              ; preds = %100
  %108 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 36, i64 1, ptr nonnull %104)
  br label %109

109:                                              ; preds = %107, %100
  br label %110

110:                                              ; preds = %354, %109
  %111 = phi ptr [ %101, %109 ], [ %150, %354 ]
  %112 = phi i32 [ 0, %109 ], [ %151, %354 ]
  %113 = phi i1 [ true, %109 ], [ false, %354 ]
  br label %114

114:                                              ; preds = %110, %335
  %115 = phi ptr [ %150, %335 ], [ %111, %110 ]
  %116 = phi i32 [ %151, %335 ], [ %112, %110 ]
  br label %117

117:                                              ; preds = %189, %114
  %118 = phi ptr [ %115, %114 ], [ %150, %189 ]
  %119 = phi i32 [ %116, %114 ], [ %151, %189 ]
  %120 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %148, !prof !271

122:                                              ; preds = %117
  %123 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %124 = sext i32 %119 to i64
  %125 = sext i32 %120 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !88
  %128 = icmp eq ptr %127, null
  br i1 %128, label %141, label %135, !prof !314

129:                                              ; preds = %141
  %130 = getelementptr inbounds ptr, ptr %123, i64 %143
  %131 = load ptr, ptr %130, align 8, !tbaa !88
  %132 = icmp eq ptr %131, null
  br i1 %132, label %141, label %133, !prof !314, !llvm.loop !136

133:                                              ; preds = %129
  %134 = icmp slt i64 %143, %125
  br label %135

135:                                              ; preds = %133, %122
  %136 = phi i64 [ %124, %122 ], [ %143, %133 ]
  %137 = phi i1 [ %121, %122 ], [ %134, %133 ]
  %138 = phi ptr [ %127, %122 ], [ %131, %133 ]
  %139 = trunc i64 %136 to i32
  %140 = add nsw i32 %139, 1
  br label %148

141:                                              ; preds = %122, %129
  %142 = phi i64 [ %143, %129 ], [ %124, %122 ]
  %143 = add nsw i64 %142, 1
  %144 = trunc i64 %143 to i32
  %145 = icmp eq i32 %120, %144
  br i1 %145, label %146, label %129, !prof !315, !llvm.loop !136

146:                                              ; preds = %141
  %147 = icmp slt i64 %143, %125
  br label %148

148:                                              ; preds = %146, %117, %135
  %149 = phi i1 [ %137, %135 ], [ %121, %117 ], [ %147, %146 ]
  %150 = phi ptr [ %138, %135 ], [ %118, %117 ], [ %118, %146 ]
  %151 = phi i32 [ %140, %135 ], [ %119, %117 ], [ %119, %146 ]
  br i1 %149, label %152, label %355, !prof !316

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !141
  %155 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8, !tbaa !436
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !437
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %189, !prof !183

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 16
  %162 = load ptr, ptr %161, align 8, !tbaa !438
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %189, !prof !183

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !140
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %189, label %168, !prof !259

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %156, i64 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !439
  %171 = icmp eq ptr %170, null
  br i1 %171, label %189, label %172, !prof !377

172:                                              ; preds = %168
  %173 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %174 = sext i32 %154 to i64
  %175 = getelementptr inbounds i8, ptr %173, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !99
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %189, !prof !440

178:                                              ; preds = %172
  %179 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %180 = getelementptr inbounds ptr, ptr %179, i64 %174
  %181 = load ptr, ptr %180, align 8, !tbaa !88
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %189, !prof !441

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %156, i64 0, i32 13
  %185 = load ptr, ptr %184, align 8, !tbaa !442
  %186 = load i32, ptr %150, align 8, !tbaa !137
  %187 = tail call i32 @bitmap_bit_p(ptr noundef %185, i32 noundef %186) #23
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190, !prof !443

189:                                              ; preds = %183, %178, %172, %168, %164, %160, %152
  br label %117, !llvm.loop !444

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 2
  %192 = load i32, ptr %191, align 8, !tbaa !156
  %193 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 9
  %194 = load i32, ptr %193, align 8, !tbaa !139
  %195 = zext i32 %194 to i64
  %196 = zext nneg i32 %166 to i64
  %197 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %195, i64 %196
  %198 = load i16, ptr %197, align 2, !tbaa !166
  %199 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 12
  %200 = load i32, ptr %199, align 4, !tbaa !154
  %201 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 33
  %202 = load ptr, ptr %201, align 8, !tbaa !167
  %203 = icmp eq ptr %202, null
  %204 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 10
  %205 = sext i16 %198 to i64
  %206 = getelementptr inbounds i32, ptr %202, i64 %205
  %207 = select i1 %203, ptr %204, ptr %206
  %208 = load i32, ptr %207, align 4, !tbaa !103
  %209 = sub nsw i32 %200, %208
  %210 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %156, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !88
  %212 = icmp eq ptr %211, null
  br i1 %212, label %282, label %213

213:                                              ; preds = %190
  %214 = zext i32 %192 to i64
  %215 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %214, i64 %195
  %216 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %214, i64 %195, i64 1
  br label %217

217:                                              ; preds = %213, %277
  %218 = phi ptr [ %211, %213 ], [ %280, %277 ]
  %219 = phi i32 [ %209, %213 ], [ %278, %277 ]
  %220 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %218, i64 0, i32 9
  %221 = load ptr, ptr %220, align 8, !tbaa !445
  %222 = getelementptr inbounds ptr, ptr %221, i64 %174
  %223 = load ptr, ptr %222, align 8, !tbaa !88
  %224 = icmp eq ptr %223, null
  br i1 %224, label %277, label %225

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.ira_allocno, ptr %223, i64 0, i32 12
  %227 = load i32, ptr %226, align 4, !tbaa !154
  %228 = getelementptr inbounds %struct.ira_allocno, ptr %223, i64 0, i32 33
  %229 = load ptr, ptr %228, align 8, !tbaa !167
  %230 = icmp eq ptr %229, null
  %231 = getelementptr inbounds %struct.ira_allocno, ptr %223, i64 0, i32 10
  %232 = getelementptr inbounds i32, ptr %229, i64 %205
  %233 = select i1 %230, ptr %231, ptr %232
  %234 = load i32, ptr %233, align 4, !tbaa !103
  %235 = sub i32 %234, %227
  %236 = add i32 %235, %219
  %237 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %218, i32 noundef %154, i8 noundef zeroext 1), !range !446
  %238 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %218, i32 noundef %154, i8 noundef zeroext 0), !range !446
  %239 = getelementptr inbounds %struct.ira_allocno, ptr %223, i64 0, i32 3
  %240 = load i32, ptr %239, align 4, !tbaa !140
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %225
  %243 = zext i32 %192 to i64
  %244 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %243, i64 %195
  %245 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %243, i64 %195, i64 1
  %246 = load i16, ptr %244, align 4, !tbaa !166
  %247 = sext i16 %246 to i32
  %248 = load i16, ptr %245, align 2, !tbaa !166
  %249 = sext i16 %248 to i32
  %250 = mul i32 %237, %247
  %251 = mul i32 %238, %249
  %252 = add i32 %251, %250
  %253 = sub i32 %236, %252
  br label %277

254:                                              ; preds = %225
  %255 = load i16, ptr %215, align 4, !tbaa !166
  %256 = sext i16 %255 to i32
  %257 = mul nsw i32 %237, %256
  %258 = load i16, ptr %216, align 2, !tbaa !166
  %259 = sext i16 %258 to i32
  %260 = mul nsw i32 %238, %259
  %261 = add i32 %257, %236
  %262 = add i32 %261, %260
  %263 = icmp eq i32 %240, %166
  br i1 %263, label %277, label %264

264:                                              ; preds = %254
  %265 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %214
  %266 = load ptr, ptr %265, align 8, !tbaa !88
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  tail call void @ira_init_register_move_cost(i32 noundef %192) #23
  br label %269

269:                                              ; preds = %268, %264
  %270 = load ptr, ptr %265, align 8, !tbaa !88
  %271 = getelementptr inbounds [27 x i16], ptr %270, i64 %195, i64 %195
  %272 = load i16, ptr %271, align 2, !tbaa !166
  %273 = zext i16 %272 to i32
  %274 = add nsw i32 %238, %237
  %275 = mul nsw i32 %274, %273
  %276 = sub nsw i32 %262, %275
  br label %277

277:                                              ; preds = %269, %254, %242, %217
  %278 = phi i32 [ %219, %217 ], [ %253, %242 ], [ %276, %269 ], [ %262, %254 ]
  %279 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %218, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !88
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %217, !llvm.loop !447

282:                                              ; preds = %277, %190
  %283 = phi i32 [ %209, %190 ], [ %278, %277 ]
  %284 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %156, i64 0, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !448
  %286 = icmp eq ptr %285, null
  br i1 %286, label %335, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %285, i64 0, i32 9
  %289 = load ptr, ptr %288, align 8, !tbaa !445
  %290 = getelementptr inbounds ptr, ptr %289, i64 %174
  %291 = load ptr, ptr %290, align 8, !tbaa !88
  %292 = icmp eq ptr %291, null
  br i1 %292, label %335, label %293

293:                                              ; preds = %287
  %294 = tail call i32 @ira_loop_edge_freq(ptr noundef %156, i32 noundef %154, i8 noundef zeroext 1), !range !446
  %295 = tail call i32 @ira_loop_edge_freq(ptr noundef %156, i32 noundef %154, i8 noundef zeroext 0), !range !446
  %296 = getelementptr inbounds %struct.ira_allocno, ptr %291, i64 0, i32 3
  %297 = load i32, ptr %296, align 4, !tbaa !140
  %298 = icmp slt i32 %297, 0
  %299 = zext i32 %192 to i64
  %300 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %299, i64 %195
  br i1 %298, label %301, label %311

301:                                              ; preds = %293
  %302 = load i16, ptr %300, align 4, !tbaa !166
  %303 = sext i16 %302 to i32
  %304 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %299, i64 %195, i64 1
  %305 = load i16, ptr %304, align 2, !tbaa !166
  %306 = sext i16 %305 to i32
  %307 = mul i32 %294, %303
  %308 = mul i32 %295, %306
  %309 = add i32 %308, %307
  %310 = sub i32 %283, %309
  br label %335

311:                                              ; preds = %293
  %312 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %299, i64 %195, i64 1
  %313 = load i16, ptr %312, align 2, !tbaa !166
  %314 = sext i16 %313 to i32
  %315 = mul nsw i32 %294, %314
  %316 = load i16, ptr %300, align 4, !tbaa !166
  %317 = sext i16 %316 to i32
  %318 = mul nsw i32 %295, %317
  %319 = add i32 %315, %283
  %320 = add i32 %319, %318
  %321 = icmp eq i32 %297, %166
  br i1 %321, label %335, label %322

322:                                              ; preds = %311
  %323 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %299
  %324 = load ptr, ptr %323, align 8, !tbaa !88
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  tail call void @ira_init_register_move_cost(i32 noundef %192) #23
  br label %327

327:                                              ; preds = %326, %322
  %328 = load ptr, ptr %323, align 8, !tbaa !88
  %329 = getelementptr inbounds [27 x i16], ptr %328, i64 %195, i64 %195
  %330 = load i16, ptr %329, align 2, !tbaa !166
  %331 = zext i16 %330 to i32
  %332 = add nsw i32 %295, %294
  %333 = mul nsw i32 %332, %331
  %334 = sub nsw i32 %320, %333
  br label %335

335:                                              ; preds = %327, %311, %301, %287, %282
  %336 = phi i32 [ %310, %301 ], [ %334, %327 ], [ %320, %311 ], [ %283, %287 ], [ %283, %282 ]
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %114, !llvm.loop !444

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 3
  store i32 -1, ptr %339, align 4, !tbaa !140
  %340 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %341 = icmp sgt i32 %340, 3
  %342 = load ptr, ptr @ira_dump_file, align 8
  %343 = icmp ne ptr %342, null
  %344 = select i1 %341, i1 %343, i1 false
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load i32, ptr %150, align 8, !tbaa !137
  %347 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %156, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !107
  %349 = load i32, ptr %348, align 8, !tbaa !449
  %350 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %342, ptr noundef nonnull @.str.44, i32 noundef %346, i32 noundef %154, i32 noundef %349)
  %351 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %352 = sub nsw i32 0, %336
  %353 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef nonnull @.str.45, i32 noundef %352)
  br label %354

354:                                              ; preds = %345, %338
  br label %110, !llvm.loop !444

355:                                              ; preds = %148
  br i1 %113, label %556, label %100, !prof !435, !llvm.loop !450

356:                                              ; preds = %43
  %357 = sext i32 %1 to i64
  %358 = shl nsw i64 %357, 3
  %359 = tail call ptr @ira_allocate(i64 noundef %358) #23
  store ptr %359, ptr @sorted_allocnos, align 8, !tbaa !88
  %360 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !103
  %361 = sext i32 %360 to i64
  br label %362

362:                                              ; preds = %397, %356
  %363 = phi i32 [ %400, %397 ], [ 0, %356 ]
  %364 = phi i64 [ %398, %397 ], [ 0, %356 ]
  %365 = phi ptr [ %395, %397 ], [ undef, %356 ]
  %366 = phi i32 [ %396, %397 ], [ 0, %356 ]
  %367 = icmp slt i32 %366, %360
  br i1 %367, label %368, label %393

368:                                              ; preds = %362
  %369 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %370 = sext i32 %366 to i64
  %371 = getelementptr inbounds ptr, ptr %369, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !88
  %373 = icmp eq ptr %372, null
  br i1 %373, label %386, label %380

374:                                              ; preds = %386
  %375 = getelementptr inbounds ptr, ptr %369, i64 %388
  %376 = load ptr, ptr %375, align 8, !tbaa !88
  %377 = icmp eq ptr %376, null
  br i1 %377, label %386, label %378, !llvm.loop !136

378:                                              ; preds = %374
  %379 = icmp slt i64 %388, %361
  br label %380

380:                                              ; preds = %378, %368
  %381 = phi i64 [ %370, %368 ], [ %388, %378 ]
  %382 = phi i1 [ %367, %368 ], [ %379, %378 ]
  %383 = phi ptr [ %372, %368 ], [ %376, %378 ]
  %384 = trunc i64 %381 to i32
  %385 = add nsw i32 %384, 1
  br label %393

386:                                              ; preds = %368, %374
  %387 = phi i64 [ %388, %374 ], [ %370, %368 ]
  %388 = add nsw i64 %387, 1
  %389 = trunc i64 %388 to i32
  %390 = icmp eq i32 %360, %389
  br i1 %390, label %391, label %374, !llvm.loop !136

391:                                              ; preds = %386
  %392 = icmp slt i64 %388, %361
  br label %393

393:                                              ; preds = %391, %362, %380
  %394 = phi i1 [ %382, %380 ], [ %367, %362 ], [ %392, %391 ]
  %395 = phi ptr [ %383, %380 ], [ %365, %362 ], [ %365, %391 ]
  %396 = phi i32 [ %385, %380 ], [ %366, %362 ], [ %366, %391 ]
  br i1 %394, label %397, label %401

397:                                              ; preds = %393
  %398 = add nuw i64 %364, 1
  %399 = getelementptr inbounds ptr, ptr %359, i64 %364
  store ptr %395, ptr %399, align 8, !tbaa !88
  %400 = add nuw i32 %363, 1
  br label %362, !llvm.loop !451

401:                                              ; preds = %393
  %402 = trunc i64 %364 to i32
  %403 = sext i32 %360 to i64
  %404 = shl nsw i64 %403, 2
  %405 = tail call ptr @ira_allocate(i64 noundef %404) #23
  store ptr %405, ptr @allocno_priorities, align 8, !tbaa !88
  %406 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call fastcc void @setup_allocno_priorities(ptr noundef %406, i32 noundef %402)
  %407 = load i32, ptr @ira_max_point, align 4, !tbaa !103
  %408 = sext i32 %407 to i64
  %409 = shl nsw i64 %408, 3
  %410 = tail call ptr @ira_allocate(i64 noundef %409) #23
  %411 = load i32, ptr @ira_max_point, align 4, !tbaa !103
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %401
  %414 = zext nneg i32 %411 to i64
  %415 = shl nuw nsw i64 %414, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %410, i8 0, i64 %415, i1 false), !tbaa !146
  br label %416

416:                                              ; preds = %413, %401
  %417 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %418 = and i64 %364, 4294967295
  tail call void @spec_qsort(ptr noundef %417, i64 noundef %418, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #23
  %419 = icmp eq i32 %402, 0
  br i1 %419, label %547, label %420

420:                                              ; preds = %416
  %421 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %422 = zext i32 %363 to i64
  br label %423

423:                                              ; preds = %420, %544
  %424 = phi i64 [ 0, %420 ], [ %545, %544 ]
  %425 = getelementptr inbounds ptr, ptr %421, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !88
  %427 = getelementptr inbounds %struct.ira_allocno, ptr %426, i64 0, i32 26
  %428 = load i64, ptr %427, align 8, !tbaa !452
  %429 = getelementptr inbounds %struct.ira_allocno, ptr %426, i64 0, i32 20
  %430 = load ptr, ptr %429, align 8, !tbaa !88
  %431 = icmp eq ptr %430, null
  br i1 %431, label %457, label %432

432:                                              ; preds = %423, %452
  %433 = phi ptr [ %455, %452 ], [ %430, %423 ]
  %434 = phi i64 [ %453, %452 ], [ %428, %423 ]
  %435 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %433, i64 0, i32 1
  %436 = load i32, ptr %435, align 8, !tbaa !453
  %437 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %433, i64 0, i32 2
  %438 = load i32, ptr %437, align 4, !tbaa !455
  %439 = icmp sgt i32 %436, %438
  br i1 %439, label %452, label %440

440:                                              ; preds = %432
  %441 = sext i32 %436 to i64
  %442 = add i32 %438, 1
  br label %443

443:                                              ; preds = %440, %443
  %444 = phi i64 [ %441, %440 ], [ %449, %443 ]
  %445 = phi i64 [ %434, %440 ], [ %448, %443 ]
  %446 = getelementptr inbounds i64, ptr %410, i64 %444
  %447 = load i64, ptr %446, align 8, !tbaa !146
  %448 = or i64 %447, %445
  %449 = add nsw i64 %444, 1
  %450 = trunc i64 %449 to i32
  %451 = icmp eq i32 %442, %450
  br i1 %451, label %452, label %443, !llvm.loop !456

452:                                              ; preds = %443, %432
  %453 = phi i64 [ %434, %432 ], [ %448, %443 ]
  %454 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %433, i64 0, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !88
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %432, !llvm.loop !457

457:                                              ; preds = %452, %423
  %458 = phi i64 [ %428, %423 ], [ %453, %452 ]
  %459 = getelementptr inbounds %struct.ira_allocno, ptr %426, i64 0, i32 9
  %460 = load i32, ptr %459, align 8, !tbaa !139
  %461 = getelementptr inbounds %struct.ira_allocno, ptr %426, i64 0, i32 31
  %462 = load i16, ptr %461, align 4
  %463 = or i16 %462, 256
  store i16 %463, ptr %461, align 4
  %464 = getelementptr inbounds %struct.ira_allocno, ptr %426, i64 0, i32 3
  store i32 -1, ptr %464, align 4, !tbaa !140
  %465 = zext i32 %460 to i64
  %466 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %465
  %467 = load i64, ptr %466, align 8, !tbaa !146
  %468 = xor i64 %458, -1
  %469 = and i64 %467, %468
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %544, label %471

471:                                              ; preds = %457
  %472 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %465
  %473 = load i32, ptr %472, align 4, !tbaa !103
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %544

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.ira_allocno, ptr %426, i64 0, i32 2
  %477 = load i32, ptr %476, align 8, !tbaa !156
  %478 = and i16 %462, 16
  %479 = icmp ne i16 %478, 0
  %480 = zext i32 %477 to i64
  %481 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %465, i64 %480
  %482 = zext nneg i32 %473 to i64
  br label %483

483:                                              ; preds = %475, %541
  %484 = phi i64 [ 0, %475 ], [ %542, %541 ]
  %485 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %465, i64 %484
  %486 = load i16, ptr %485, align 2, !tbaa !166
  %487 = sext i16 %486 to i32
  %488 = icmp sgt i16 %486, 7
  %489 = select i1 %479, i1 %488, i1 false
  %490 = icmp slt i16 %486, 16
  %491 = select i1 %489, i1 %490, i1 false
  br i1 %491, label %541, label %492

492:                                              ; preds = %483
  %493 = sext i16 %486 to i64
  %494 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %493, i64 %480
  %495 = load i8, ptr %494, align 1, !tbaa !99
  %496 = zext i8 %495 to i64
  %497 = sext i16 %486 to i64
  br label %498

498:                                              ; preds = %501, %492
  %499 = phi i64 [ %502, %501 ], [ %496, %492 ]
  %500 = icmp sgt i64 %499, 0
  br i1 %500, label %501, label %507

501:                                              ; preds = %498
  %502 = add nsw i64 %499, -1
  %503 = add nsw i64 %502, %497
  %504 = shl nuw i64 1, %503
  %505 = and i64 %504, %458
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %498, label %541, !llvm.loop !250

507:                                              ; preds = %498
  %508 = load i64, ptr %481, align 8, !tbaa !146
  %509 = zext nneg i32 %487 to i64
  %510 = shl nuw i64 1, %509
  %511 = and i64 %508, %510
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %513, label %541

513:                                              ; preds = %507
  store i32 %487, ptr %464, align 4, !tbaa !140
  %514 = load ptr, ptr %429, align 8, !tbaa !88
  %515 = icmp eq ptr %514, null
  br i1 %515, label %544, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds [53 x [87 x i64]], ptr @ira_reg_mode_hard_regset, i64 0, i64 %493, i64 %480
  br label %518

518:                                              ; preds = %516, %537
  %519 = phi ptr [ %514, %516 ], [ %539, %537 ]
  %520 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %519, i64 0, i32 1
  %521 = load i32, ptr %520, align 8, !tbaa !453
  %522 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %519, i64 0, i32 2
  %523 = load i32, ptr %522, align 4, !tbaa !455
  %524 = icmp sgt i32 %521, %523
  br i1 %524, label %537, label %525

525:                                              ; preds = %518
  %526 = sext i32 %521 to i64
  %527 = add i32 %523, 1
  br label %528

528:                                              ; preds = %525, %528
  %529 = phi i64 [ %526, %525 ], [ %534, %528 ]
  %530 = load i64, ptr %517, align 8, !tbaa !146
  %531 = getelementptr inbounds i64, ptr %410, i64 %529
  %532 = load i64, ptr %531, align 8, !tbaa !146
  %533 = or i64 %532, %530
  store i64 %533, ptr %531, align 8, !tbaa !146
  %534 = add nsw i64 %529, 1
  %535 = trunc i64 %534 to i32
  %536 = icmp eq i32 %527, %535
  br i1 %536, label %537, label %528, !llvm.loop !458

537:                                              ; preds = %528, %518
  %538 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %519, i64 0, i32 3
  %539 = load ptr, ptr %538, align 8, !tbaa !88
  %540 = icmp eq ptr %539, null
  br i1 %540, label %544, label %518, !llvm.loop !459

541:                                              ; preds = %501, %507, %483
  %542 = add nuw nsw i64 %484, 1
  %543 = icmp eq i64 %542, %482
  br i1 %543, label %544, label %483, !llvm.loop !460

544:                                              ; preds = %541, %537, %471, %513, %457
  %545 = add nuw nsw i64 %424, 1
  %546 = icmp eq i64 %545, %422
  br i1 %546, label %547, label %423, !llvm.loop !461

547:                                              ; preds = %544, %416
  %548 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %548) #23
  tail call void @ira_free(ptr noundef %410) #23
  %549 = load ptr, ptr @allocno_priorities, align 8, !tbaa !88
  tail call void @ira_free(ptr noundef %549) #23
  %550 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %551 = icmp sgt i32 %550, 1
  %552 = load ptr, ptr @ira_dump_file, align 8
  %553 = icmp ne ptr %552, null
  %554 = select i1 %551, i1 %553, i1 false
  br i1 %554, label %555, label %556

555:                                              ; preds = %547
  tail call void @ira_print_disposition(ptr noundef nonnull %552) #23
  br label %556

556:                                              ; preds = %355, %555, %547
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_cost_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !87 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !179
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !184
  %9 = sub nsw i32 %6, %8
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !184
  %14 = sub i32 %13, %11
  %15 = add i32 %14, %9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, ptr %3, align 8, !tbaa !137
  %19 = load i32, ptr %4, align 8, !tbaa !137
  %20 = sub nsw i32 %18, %19
  br label %21

21:                                               ; preds = %2, %17
  %22 = phi i32 [ %20, %17 ], [ %15, %2 ]
  ret i32 %22
}

declare void @ira_free_allocno_updated_costs(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_print_expanded_allocno(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @copy_freq_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !87 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.ira_allocno_copy, ptr %3, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.ira_allocno_copy, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !170
  %9 = sub nsw i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 8, !tbaa !346
  %13 = load i32, ptr %4, align 8, !tbaa !346
  %14 = sub nsw i32 %12, %13
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %14, %11 ], [ %9, %2 ]
  ret i32 %16
}

declare ptr @regstat_get_setjmp_crosses() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @setup_slot_coalesced_allocno_live_ranges(ptr noundef readonly %0) unnamed_addr #13 !prof !421 !PGOFuncName !462 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 8, !tbaa !287
  %4 = sext i32 %3 to i64
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %0, %1 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  %11 = tail call ptr @ira_copy_allocno_live_range_list(ptr noundef %10) #23
  %12 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %13 = getelementptr inbounds ptr, ptr %12, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %14, ptr noundef %11) #23
  %16 = load ptr, ptr @slot_coalesced_allocnos_live_ranges, align 8, !tbaa !88
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  store ptr %15, ptr %17, align 8, !tbaa !88
  %18 = icmp eq ptr %8, %0
  br i1 %18, label %19, label %5, !prof !260, !llvm.loop !298

19:                                               ; preds = %5
  ret void
}

declare void @ira_finish_allocno_live_range_list(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ira_copy_allocno_live_range_list(ptr noundef) local_unnamed_addr #3

declare ptr @ira_merge_allocno_live_ranges(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_home_live(i32 noundef) local_unnamed_addr #3

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @color_pass(ptr noundef readonly %0) #13 !prof !270 !PGOFuncName !463 {
  %2 = alloca [27 x i32], align 16
  %3 = alloca [27 x ptr], align 16
  %4 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %5 = icmp sgt i32 %4, 1
  %6 = load ptr, ptr @ira_dump_file, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false, !prof !435
  br i1 %8, label %9, label %382, !prof !284

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = load i32, ptr %11, align 8, !tbaa !449
  %13 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !448
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = load i32, ptr %18, align 8, !tbaa !449
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i32 [ %19, %16 ], [ -1, %9 ]
  %22 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !118
  %26 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !464
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = load i32, ptr %27, align 8, !tbaa !465
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ 0, %20 ]
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %21, i32 noundef %25, i32 noundef %32)
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  %36 = icmp eq ptr %35, null
  br i1 %36, label %101, label %37

37:                                               ; preds = %31, %97
  %38 = phi ptr [ %99, %97 ], [ %35, %31 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !467
  %40 = icmp eq ptr %39, null
  br i1 %40, label %97, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !118
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.8, i32 noundef %44)
  %46 = load ptr, ptr %38, align 8, !tbaa !467
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  br label %48

48:                                               ; preds = %95, %41
  %49 = phi i32 [ 0, %41 ], [ %96, %95 ]
  %50 = load ptr, ptr %47, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !113
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %53, %52 ], [ 0, %48 ]
  %56 = icmp eq i32 %55, %49
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = zext i32 %49 to i64
  %59 = getelementptr inbounds %struct.VEC_edge_base, ptr %50, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi ptr [ %60, %57 ], [ null, %54 ]
  br i1 %56, label %97, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !125
  %66 = load ptr, ptr @cfun, align 8, !tbaa !88
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !131
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !468
  %71 = icmp eq ptr %65, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !88
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !118
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %73, i64 %76, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !448
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %86, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %82 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %78, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !107
  %84 = load i32, ptr %83, align 8, !tbaa !449
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.22, i32 noundef %75, i32 noundef %84)
  br label %86

86:                                               ; preds = %80, %72, %63
  %87 = load ptr, ptr %47, align 8, !tbaa !88
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %87, align 8, !tbaa !113
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i32 [ %90, %89 ], [ 0, %86 ]
  %93 = icmp ult i32 %49, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.5) #23
  br label %95

95:                                               ; preds = %94, %91
  %96 = add i32 %49, 1
  br label %48, !llvm.loop !469

97:                                               ; preds = %61, %37
  %98 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %38, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %37, !llvm.loop !470

101:                                              ; preds = %97, %31
  %102 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %103 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 9, i64 1, ptr %102)
  %104 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !471
  %106 = load ptr, ptr %105, align 8, !tbaa !319
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, ptr @bitmap_zero_bits, ptr %106
  %109 = getelementptr inbounds %struct.bitmap_element_def, ptr %108, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !321
  %111 = shl i32 %110, 7
  %112 = getelementptr inbounds %struct.bitmap_element_def, ptr %108, i64 0, i32 3, i64 0
  %113 = load i64, ptr %112, align 8, !tbaa !146
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = or disjoint i32 %111, %115
  br label %117

117:                                              ; preds = %179, %101
  %118 = phi ptr [ %108, %101 ], [ %173, %179 ]
  %119 = phi i32 [ 0, %101 ], [ %174, %179 ]
  %120 = phi i64 [ %113, %101 ], [ %187, %179 ]
  %121 = phi i32 [ %116, %101 ], [ %188, %179 ]
  %122 = icmp eq i64 %120, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %151, %117
  %124 = phi ptr [ %118, %117 ], [ %142, %151 ]
  %125 = phi i32 [ %119, %117 ], [ %152, %151 ]
  %126 = phi i64 [ %120, %117 ], [ %156, %151 ]
  %127 = phi i32 [ %121, %117 ], [ %153, %151 ]
  %128 = and i64 %126, 1
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %123, %130
  %131 = phi i32 [ %134, %130 ], [ %127, %123 ]
  %132 = phi i64 [ %133, %130 ], [ %126, %123 ]
  %133 = lshr exact i64 %132, 1
  %134 = add i32 %131, 1
  %135 = and i64 %132, 2
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %130, label %172, !llvm.loop !324

137:                                              ; preds = %117
  %138 = add i32 %121, 63
  %139 = and i32 %138, -64
  %140 = add i32 %119, 1
  br label %141

141:                                              ; preds = %168, %137
  %142 = phi ptr [ %118, %137 ], [ %166, %168 ]
  %143 = phi i64 [ %120, %137 ], [ %163, %168 ]
  %144 = phi i32 [ %139, %137 ], [ %171, %168 ]
  %145 = phi i32 [ %140, %137 ], [ 0, %168 ]
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %162, label %147

147:                                              ; preds = %141
  %148 = add i32 %144, 128
  %149 = shl i32 %145, 6
  %150 = sub i32 %148, %149
  br label %151

151:                                              ; preds = %147, %158
  %152 = phi i32 [ %160, %158 ], [ %145, %147 ]
  %153 = phi i32 [ %159, %158 ], [ %144, %147 ]
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds %struct.bitmap_element_def, ptr %142, i64 0, i32 3, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !146
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %123

158:                                              ; preds = %151
  %159 = add i32 %153, 64
  %160 = add i32 %152, 1
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %151, !llvm.loop !328

162:                                              ; preds = %158, %141
  %163 = phi i64 [ %143, %141 ], [ %156, %158 ]
  %164 = phi i32 [ %144, %141 ], [ %150, %158 ]
  %165 = phi i32 [ %145, %141 ], [ 2, %158 ]
  %166 = load ptr, ptr %142, align 8, !tbaa !329
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.bitmap_element_def, ptr %166, i64 0, i32 2
  %170 = load i32, ptr %169, align 8, !tbaa !321
  %171 = shl i32 %170, 7
  br label %141, !llvm.loop !331

172:                                              ; preds = %162, %130, %123
  %173 = phi ptr [ %124, %123 ], [ %124, %130 ], [ %166, %162 ]
  %174 = phi i32 [ %125, %123 ], [ %125, %130 ], [ %165, %162 ]
  %175 = phi i64 [ %126, %123 ], [ %133, %130 ], [ %163, %162 ]
  %176 = phi i32 [ %127, %123 ], [ %134, %130 ], [ %164, %162 ]
  %177 = phi i1 [ false, %123 ], [ false, %130 ], [ true, %162 ]
  %178 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  br i1 %177, label %189, label %179

179:                                              ; preds = %172
  %180 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %181 = zext i32 %176 to i64
  %182 = getelementptr inbounds ptr, ptr %180, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !88
  %184 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !141
  %186 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.24, i32 noundef %176, i32 noundef %185)
  %187 = lshr i64 %175, 1
  %188 = add i32 %176, 1
  br label %117, !llvm.loop !472

189:                                              ; preds = %172
  %190 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr %178)
  %191 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %192 = load ptr, ptr %191, align 8, !tbaa !473
  %193 = load ptr, ptr %192, align 8, !tbaa !319
  %194 = icmp eq ptr %193, null
  %195 = select i1 %194, ptr @bitmap_zero_bits, ptr %193
  %196 = getelementptr inbounds %struct.bitmap_element_def, ptr %195, i64 0, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !321
  %198 = shl i32 %197, 7
  %199 = getelementptr inbounds %struct.bitmap_element_def, ptr %195, i64 0, i32 3, i64 0
  %200 = load i64, ptr %199, align 8, !tbaa !146
  %201 = icmp eq i64 %200, 0
  %202 = zext i1 %201 to i32
  %203 = or disjoint i32 %198, %202
  br label %204

204:                                              ; preds = %266, %189
  %205 = phi ptr [ %195, %189 ], [ %260, %266 ]
  %206 = phi i32 [ 0, %189 ], [ %261, %266 ]
  %207 = phi i64 [ %200, %189 ], [ %268, %266 ]
  %208 = phi i32 [ %203, %189 ], [ %269, %266 ]
  %209 = icmp eq i64 %207, 0
  br i1 %209, label %224, label %210

210:                                              ; preds = %238, %204
  %211 = phi ptr [ %205, %204 ], [ %229, %238 ]
  %212 = phi i32 [ %206, %204 ], [ %239, %238 ]
  %213 = phi i64 [ %207, %204 ], [ %243, %238 ]
  %214 = phi i32 [ %208, %204 ], [ %240, %238 ]
  %215 = and i64 %213, 1
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %259

217:                                              ; preds = %210, %217
  %218 = phi i32 [ %221, %217 ], [ %214, %210 ]
  %219 = phi i64 [ %220, %217 ], [ %213, %210 ]
  %220 = lshr exact i64 %219, 1
  %221 = add i32 %218, 1
  %222 = and i64 %219, 2
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %217, label %259, !llvm.loop !324

224:                                              ; preds = %204
  %225 = add i32 %208, 63
  %226 = and i32 %225, -64
  %227 = add i32 %206, 1
  br label %228

228:                                              ; preds = %255, %224
  %229 = phi ptr [ %205, %224 ], [ %253, %255 ]
  %230 = phi i64 [ %207, %224 ], [ %250, %255 ]
  %231 = phi i32 [ %226, %224 ], [ %258, %255 ]
  %232 = phi i32 [ %227, %224 ], [ 0, %255 ]
  %233 = icmp eq i32 %232, 2
  br i1 %233, label %249, label %234

234:                                              ; preds = %228
  %235 = add i32 %231, 128
  %236 = shl i32 %232, 6
  %237 = sub i32 %235, %236
  br label %238

238:                                              ; preds = %234, %245
  %239 = phi i32 [ %247, %245 ], [ %232, %234 ]
  %240 = phi i32 [ %246, %245 ], [ %231, %234 ]
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds %struct.bitmap_element_def, ptr %229, i64 0, i32 3, i64 %241
  %243 = load i64, ptr %242, align 8, !tbaa !146
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %210

245:                                              ; preds = %238
  %246 = add i32 %240, 64
  %247 = add i32 %239, 1
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %238, !llvm.loop !328

249:                                              ; preds = %245, %228
  %250 = phi i64 [ %230, %228 ], [ %243, %245 ]
  %251 = phi i32 [ %231, %228 ], [ %237, %245 ]
  %252 = phi i32 [ %232, %228 ], [ 2, %245 ]
  %253 = load ptr, ptr %229, align 8, !tbaa !329
  %254 = icmp eq ptr %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.bitmap_element_def, ptr %253, i64 0, i32 2
  %257 = load i32, ptr %256, align 8, !tbaa !321
  %258 = shl i32 %257, 7
  br label %228, !llvm.loop !331

259:                                              ; preds = %249, %217, %210
  %260 = phi ptr [ %211, %210 ], [ %211, %217 ], [ %253, %249 ]
  %261 = phi i32 [ %212, %210 ], [ %212, %217 ], [ %252, %249 ]
  %262 = phi i64 [ %213, %210 ], [ %220, %217 ], [ %250, %249 ]
  %263 = phi i32 [ %214, %210 ], [ %221, %217 ], [ %251, %249 ]
  %264 = phi i1 [ false, %210 ], [ false, %217 ], [ true, %249 ]
  %265 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  br i1 %264, label %270, label %266

266:                                              ; preds = %259
  %267 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.8, i32 noundef %263)
  %268 = lshr i64 %262, 1
  %269 = add i32 %263, 1
  br label %204, !llvm.loop !474

270:                                              ; preds = %259
  %271 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 12, i64 1, ptr %265)
  %272 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 13
  %273 = load ptr, ptr %272, align 8, !tbaa !442
  %274 = load ptr, ptr %273, align 8, !tbaa !319
  %275 = icmp eq ptr %274, null
  %276 = select i1 %275, ptr @bitmap_zero_bits, ptr %274
  %277 = getelementptr inbounds %struct.bitmap_element_def, ptr %276, i64 0, i32 2
  %278 = load i32, ptr %277, align 8, !tbaa !321
  %279 = shl i32 %278, 7
  %280 = getelementptr inbounds %struct.bitmap_element_def, ptr %276, i64 0, i32 3, i64 0
  %281 = load i64, ptr %280, align 8, !tbaa !146
  %282 = icmp eq i64 %281, 0
  %283 = zext i1 %282 to i32
  %284 = or disjoint i32 %279, %283
  br label %285

285:                                              ; preds = %347, %270
  %286 = phi ptr [ %276, %270 ], [ %341, %347 ]
  %287 = phi i32 [ 0, %270 ], [ %342, %347 ]
  %288 = phi i64 [ %281, %270 ], [ %355, %347 ]
  %289 = phi i32 [ %284, %270 ], [ %356, %347 ]
  %290 = icmp eq i64 %288, 0
  br i1 %290, label %305, label %291

291:                                              ; preds = %319, %285
  %292 = phi ptr [ %286, %285 ], [ %310, %319 ]
  %293 = phi i32 [ %287, %285 ], [ %320, %319 ]
  %294 = phi i64 [ %288, %285 ], [ %324, %319 ]
  %295 = phi i32 [ %289, %285 ], [ %321, %319 ]
  %296 = and i64 %294, 1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %340

298:                                              ; preds = %291, %298
  %299 = phi i32 [ %302, %298 ], [ %295, %291 ]
  %300 = phi i64 [ %301, %298 ], [ %294, %291 ]
  %301 = lshr exact i64 %300, 1
  %302 = add i32 %299, 1
  %303 = and i64 %300, 2
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %298, label %340, !llvm.loop !324

305:                                              ; preds = %285
  %306 = add i32 %289, 63
  %307 = and i32 %306, -64
  %308 = add i32 %287, 1
  br label %309

309:                                              ; preds = %336, %305
  %310 = phi ptr [ %286, %305 ], [ %334, %336 ]
  %311 = phi i64 [ %288, %305 ], [ %331, %336 ]
  %312 = phi i32 [ %307, %305 ], [ %339, %336 ]
  %313 = phi i32 [ %308, %305 ], [ 0, %336 ]
  %314 = icmp eq i32 %313, 2
  br i1 %314, label %330, label %315

315:                                              ; preds = %309
  %316 = add i32 %312, 128
  %317 = shl i32 %313, 6
  %318 = sub i32 %316, %317
  br label %319

319:                                              ; preds = %315, %326
  %320 = phi i32 [ %328, %326 ], [ %313, %315 ]
  %321 = phi i32 [ %327, %326 ], [ %312, %315 ]
  %322 = zext i32 %320 to i64
  %323 = getelementptr inbounds %struct.bitmap_element_def, ptr %310, i64 0, i32 3, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !146
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %291

326:                                              ; preds = %319
  %327 = add i32 %321, 64
  %328 = add i32 %320, 1
  %329 = icmp eq i32 %328, 2
  br i1 %329, label %330, label %319, !llvm.loop !328

330:                                              ; preds = %326, %309
  %331 = phi i64 [ %311, %309 ], [ %324, %326 ]
  %332 = phi i32 [ %312, %309 ], [ %318, %326 ]
  %333 = phi i32 [ %313, %309 ], [ 2, %326 ]
  %334 = load ptr, ptr %310, align 8, !tbaa !329
  %335 = icmp eq ptr %334, null
  br i1 %335, label %340, label %336

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.bitmap_element_def, ptr %334, i64 0, i32 2
  %338 = load i32, ptr %337, align 8, !tbaa !321
  %339 = shl i32 %338, 7
  br label %309, !llvm.loop !331

340:                                              ; preds = %330, %298, %291
  %341 = phi ptr [ %292, %291 ], [ %292, %298 ], [ %334, %330 ]
  %342 = phi i32 [ %293, %291 ], [ %293, %298 ], [ %333, %330 ]
  %343 = phi i64 [ %294, %291 ], [ %301, %298 ], [ %331, %330 ]
  %344 = phi i32 [ %295, %291 ], [ %302, %298 ], [ %332, %330 ]
  %345 = phi i1 [ false, %291 ], [ false, %298 ], [ true, %330 ]
  %346 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  br i1 %345, label %357, label %347

347:                                              ; preds = %340
  %348 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %349 = zext i32 %344 to i64
  %350 = getelementptr inbounds ptr, ptr %348, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !88
  %352 = getelementptr inbounds %struct.ira_allocno, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !141
  %354 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef nonnull @.str.24, i32 noundef %344, i32 noundef %353)
  %355 = lshr i64 %343, 1
  %356 = add i32 %344, 1
  br label %285, !llvm.loop !475

357:                                              ; preds = %340
  %358 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr %346)
  %359 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %379

361:                                              ; preds = %357, %374
  %362 = phi i64 [ %375, %374 ], [ 0, %357 ]
  %363 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !103
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !103
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %361
  %370 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %371 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %365
  %372 = load ptr, ptr %371, align 8, !tbaa !88
  %373 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %370, ptr noundef nonnull @.str.28, ptr noundef %372, i32 noundef %367)
  br label %374

374:                                              ; preds = %369, %361
  %375 = add nuw nsw i64 %362, 1
  %376 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %377 = sext i32 %376 to i64
  %378 = icmp slt i64 %375, %377
  br i1 %378, label %361, label %379, !llvm.loop !476

379:                                              ; preds = %374, %357
  %380 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %381 = tail call i32 @fputc(i32 10, ptr %380)
  br label %382

382:                                              ; preds = %379, %1
  %383 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %384 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %385 = load ptr, ptr %384, align 8, !tbaa !471
  tail call void @bitmap_copy(ptr noundef %383, ptr noundef %385) #23
  %386 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %387 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  tail call void @bitmap_copy(ptr noundef %386, ptr noundef %387) #23
  %388 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %389 = load ptr, ptr %388, align 8, !tbaa !319
  %390 = icmp eq ptr %389, null
  %391 = select i1 %390, ptr @bitmap_zero_bits, ptr %389, !prof !284
  %392 = getelementptr inbounds %struct.bitmap_element_def, ptr %391, i64 0, i32 2
  %393 = load i32, ptr %392, align 8, !tbaa !321
  %394 = shl i32 %393, 7
  %395 = getelementptr inbounds %struct.bitmap_element_def, ptr %391, i64 0, i32 3, i64 0
  %396 = load i64, ptr %395, align 8, !tbaa !146
  %397 = icmp eq i64 %396, 0
  %398 = zext i1 %397 to i32
  %399 = or disjoint i32 %394, %398
  br label %400

400:                                              ; preds = %474, %382
  %401 = phi i64 [ %396, %382 ], [ %475, %474 ]
  %402 = phi i32 [ %399, %382 ], [ %476, %474 ]
  %403 = phi i32 [ 0, %382 ], [ %458, %474 ]
  %404 = phi ptr [ %391, %382 ], [ %459, %474 ]
  %405 = icmp eq i64 %401, 0
  br i1 %405, label %420, label %406, !prof !323

406:                                              ; preds = %434, %400
  %407 = phi i64 [ %401, %400 ], [ %439, %434 ]
  %408 = phi i32 [ %402, %400 ], [ %436, %434 ]
  %409 = phi i32 [ %403, %400 ], [ %435, %434 ]
  %410 = phi ptr [ %404, %400 ], [ %427, %434 ]
  %411 = and i64 %407, 1
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %413, label %455, !prof !314

413:                                              ; preds = %406, %413
  %414 = phi i32 [ %417, %413 ], [ %408, %406 ]
  %415 = phi i64 [ %416, %413 ], [ %407, %406 ]
  %416 = lshr exact i64 %415, 1
  %417 = add i32 %414, 1
  %418 = and i64 %415, 2
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %413, label %455, !prof !314, !llvm.loop !324

420:                                              ; preds = %400
  %421 = add i32 %402, 63
  %422 = and i32 %421, -64
  %423 = add i32 %403, 1
  br label %424

424:                                              ; preds = %451, %420
  %425 = phi i64 [ %401, %420 ], [ %446, %451 ]
  %426 = phi i32 [ %422, %420 ], [ %454, %451 ]
  %427 = phi ptr [ %404, %420 ], [ %449, %451 ]
  %428 = phi i32 [ %423, %420 ], [ 0, %451 ]
  %429 = icmp eq i32 %428, 2
  br i1 %429, label %445, label %430, !prof !325

430:                                              ; preds = %424
  %431 = add i32 %426, 128
  %432 = shl i32 %428, 6
  %433 = sub i32 %431, %432
  br label %434

434:                                              ; preds = %430, %441
  %435 = phi i32 [ %443, %441 ], [ %428, %430 ]
  %436 = phi i32 [ %442, %441 ], [ %426, %430 ]
  %437 = zext i32 %435 to i64
  %438 = getelementptr inbounds %struct.bitmap_element_def, ptr %427, i64 0, i32 3, i64 %437
  %439 = load i64, ptr %438, align 8, !tbaa !146
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %406, !prof !326

441:                                              ; preds = %434
  %442 = add i32 %436, 64
  %443 = add i32 %435, 1
  %444 = icmp eq i32 %443, 2
  br i1 %444, label %445, label %434, !prof !327, !llvm.loop !328

445:                                              ; preds = %441, %424
  %446 = phi i64 [ %425, %424 ], [ %439, %441 ]
  %447 = phi i32 [ %426, %424 ], [ %433, %441 ]
  %448 = phi i32 [ %428, %424 ], [ 2, %441 ]
  %449 = load ptr, ptr %427, align 8, !tbaa !329
  %450 = icmp eq ptr %449, null
  br i1 %450, label %455, label %451, !prof !330

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.bitmap_element_def, ptr %449, i64 0, i32 2
  %453 = load i32, ptr %452, align 8, !tbaa !321
  %454 = shl i32 %453, 7
  br label %424, !llvm.loop !331

455:                                              ; preds = %445, %413, %406
  %456 = phi i64 [ %407, %406 ], [ %416, %413 ], [ %446, %445 ]
  %457 = phi i32 [ %408, %406 ], [ %417, %413 ], [ %447, %445 ]
  %458 = phi i32 [ %409, %406 ], [ %409, %413 ], [ %448, %445 ]
  %459 = phi ptr [ %410, %406 ], [ %410, %413 ], [ %449, %445 ]
  %460 = phi i1 [ false, %406 ], [ false, %413 ], [ true, %445 ]
  br i1 %460, label %477, label %461, !prof !332

461:                                              ; preds = %455
  %462 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %463 = zext i32 %457 to i64
  %464 = getelementptr inbounds ptr, ptr %462, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !88
  %466 = getelementptr inbounds %struct.ira_allocno, ptr %465, i64 0, i32 31
  %467 = load i16, ptr %466, align 4
  %468 = and i16 %467, 256
  %469 = icmp eq i16 %468, 0
  br i1 %469, label %474, label %470, !prof !183

470:                                              ; preds = %461
  %471 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %472 = load i32, ptr %465, align 8, !tbaa !137
  %473 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %471, i32 noundef %472) #23
  br label %474

474:                                              ; preds = %461, %470
  %475 = lshr i64 %456, 1
  %476 = add i32 %457, 1
  br label %400, !llvm.loop !477

477:                                              ; preds = %455
  store i1 false, ptr @allocno_coalesced_p, align 1
  %478 = tail call ptr @ira_allocate_bitmap() #23
  store ptr %478, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %479 = load i32, ptr @flag_ira_coalesce, align 4, !tbaa !103
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %482, label %481, !prof !435

481:                                              ; preds = %477
  tail call fastcc void @coalesce_allocnos(i8 noundef zeroext 0)
  br label %482

482:                                              ; preds = %481, %477
  %483 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !103
  %484 = icmp eq i32 %483, 1
  br i1 %484, label %485, label %653, !prof !284

485:                                              ; preds = %482
  %486 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %487 = load ptr, ptr %486, align 8, !tbaa !319
  %488 = icmp eq ptr %487, null
  %489 = select i1 %488, ptr @bitmap_zero_bits, ptr %487
  %490 = getelementptr inbounds %struct.bitmap_element_def, ptr %489, i64 0, i32 2
  %491 = load i32, ptr %490, align 8, !tbaa !321
  %492 = shl i32 %491, 7
  %493 = getelementptr inbounds %struct.bitmap_element_def, ptr %489, i64 0, i32 3, i64 0
  %494 = load i64, ptr %493, align 8, !tbaa !146
  %495 = icmp eq i64 %494, 0
  %496 = zext i1 %495 to i32
  %497 = or disjoint i32 %492, %496
  br label %498

498:                                              ; preds = %598, %485
  %499 = phi i64 [ %494, %485 ], [ %600, %598 ]
  %500 = phi i32 [ %497, %485 ], [ %601, %598 ]
  %501 = phi i32 [ 0, %485 ], [ %557, %598 ]
  %502 = phi ptr [ %489, %485 ], [ %558, %598 ]
  %503 = phi i32 [ 0, %485 ], [ %599, %598 ]
  %504 = icmp eq i64 %499, 0
  br i1 %504, label %519, label %505

505:                                              ; preds = %533, %498
  %506 = phi i64 [ %499, %498 ], [ %538, %533 ]
  %507 = phi i32 [ %500, %498 ], [ %535, %533 ]
  %508 = phi i32 [ %501, %498 ], [ %534, %533 ]
  %509 = phi ptr [ %502, %498 ], [ %526, %533 ]
  %510 = and i64 %506, 1
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %554

512:                                              ; preds = %505, %512
  %513 = phi i32 [ %516, %512 ], [ %507, %505 ]
  %514 = phi i64 [ %515, %512 ], [ %506, %505 ]
  %515 = lshr exact i64 %514, 1
  %516 = add i32 %513, 1
  %517 = and i64 %514, 2
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %512, label %554, !llvm.loop !324

519:                                              ; preds = %498
  %520 = add i32 %500, 63
  %521 = and i32 %520, -64
  %522 = add i32 %501, 1
  br label %523

523:                                              ; preds = %550, %519
  %524 = phi i64 [ %499, %519 ], [ %545, %550 ]
  %525 = phi i32 [ %521, %519 ], [ %553, %550 ]
  %526 = phi ptr [ %502, %519 ], [ %548, %550 ]
  %527 = phi i32 [ %522, %519 ], [ 0, %550 ]
  %528 = icmp eq i32 %527, 2
  br i1 %528, label %544, label %529

529:                                              ; preds = %523
  %530 = add i32 %525, 128
  %531 = shl i32 %527, 6
  %532 = sub i32 %530, %531
  br label %533

533:                                              ; preds = %529, %540
  %534 = phi i32 [ %542, %540 ], [ %527, %529 ]
  %535 = phi i32 [ %541, %540 ], [ %525, %529 ]
  %536 = zext i32 %534 to i64
  %537 = getelementptr inbounds %struct.bitmap_element_def, ptr %526, i64 0, i32 3, i64 %536
  %538 = load i64, ptr %537, align 8, !tbaa !146
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %540, label %505

540:                                              ; preds = %533
  %541 = add i32 %535, 64
  %542 = add i32 %534, 1
  %543 = icmp eq i32 %542, 2
  br i1 %543, label %544, label %533, !llvm.loop !328

544:                                              ; preds = %540, %523
  %545 = phi i64 [ %524, %523 ], [ %538, %540 ]
  %546 = phi i32 [ %525, %523 ], [ %532, %540 ]
  %547 = phi i32 [ %527, %523 ], [ 2, %540 ]
  %548 = load ptr, ptr %526, align 8, !tbaa !329
  %549 = icmp eq ptr %548, null
  br i1 %549, label %554, label %550

550:                                              ; preds = %544
  %551 = getelementptr inbounds %struct.bitmap_element_def, ptr %548, i64 0, i32 2
  %552 = load i32, ptr %551, align 8, !tbaa !321
  %553 = shl i32 %552, 7
  br label %523, !llvm.loop !331

554:                                              ; preds = %544, %512, %505
  %555 = phi i64 [ %506, %505 ], [ %515, %512 ], [ %545, %544 ]
  %556 = phi i32 [ %507, %505 ], [ %516, %512 ], [ %546, %544 ]
  %557 = phi i32 [ %508, %505 ], [ %508, %512 ], [ %547, %544 ]
  %558 = phi ptr [ %509, %505 ], [ %509, %512 ], [ %548, %544 ]
  %559 = phi i1 [ false, %505 ], [ false, %512 ], [ true, %544 ]
  br i1 %559, label %602, label %560

560:                                              ; preds = %554
  %561 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %562 = zext i32 %556 to i64
  %563 = getelementptr inbounds ptr, ptr %561, i64 %562
  %564 = load ptr, ptr %563, align 8, !tbaa !88
  %565 = getelementptr inbounds %struct.ira_allocno, ptr %564, i64 0, i32 9
  %566 = load i32, ptr %565, align 8, !tbaa !139
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %593

568:                                              ; preds = %560
  %569 = getelementptr inbounds %struct.ira_allocno, ptr %564, i64 0, i32 3
  store i32 -1, ptr %569, align 4, !tbaa !140
  %570 = getelementptr inbounds %struct.ira_allocno, ptr %564, i64 0, i32 31
  %571 = load i16, ptr %570, align 4
  %572 = or i16 %571, 256
  store i16 %572, ptr %570, align 4
  %573 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %574 = icmp sgt i32 %573, 3
  %575 = load ptr, ptr @ira_dump_file, align 8
  %576 = icmp ne ptr %575, null
  %577 = select i1 %574, i1 %576, i1 false
  br i1 %577, label %578, label %598

578:                                              ; preds = %568
  %579 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr nonnull %575)
  %580 = getelementptr inbounds %struct.ira_allocno, ptr %564, i64 0, i32 19
  %581 = load ptr, ptr %580, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %581) #23
  %582 = icmp eq ptr %581, %564
  br i1 %582, label %590, label %583

583:                                              ; preds = %578, %583
  %584 = phi ptr [ %588, %583 ], [ %581, %578 ]
  %585 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %586 = tail call i32 @fputc(i32 43, ptr %585)
  %587 = getelementptr inbounds %struct.ira_allocno, ptr %584, i64 0, i32 19
  %588 = load ptr, ptr %587, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %588) #23
  %589 = icmp eq ptr %588, %564
  br i1 %589, label %590, label %583, !llvm.loop !266

590:                                              ; preds = %583, %578
  %591 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %592 = tail call i32 @fputc(i32 10, ptr %591)
  br label %598

593:                                              ; preds = %560
  %594 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %595 = add i32 %503, 1
  %596 = zext i32 %503 to i64
  %597 = getelementptr inbounds ptr, ptr %594, i64 %596
  store ptr %564, ptr %597, align 8, !tbaa !88
  br label %598

598:                                              ; preds = %593, %590, %568
  %599 = phi i32 [ %503, %590 ], [ %503, %568 ], [ %595, %593 ]
  %600 = lshr i64 %555, 1
  %601 = add i32 %556, 1
  br label %498, !llvm.loop !478

602:                                              ; preds = %554
  %603 = icmp eq i32 %503, 0
  br i1 %603, label %1695, label %604

604:                                              ; preds = %602
  %605 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  tail call fastcc void @setup_allocno_priorities(ptr noundef %605, i32 noundef %503)
  %606 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %607 = zext i32 %503 to i64
  tail call void @spec_qsort(ptr noundef %606, i64 noundef %607, i64 noundef 8, ptr noundef nonnull @allocno_priority_compare_func) #23
  %608 = zext i32 %503 to i64
  br label %609

609:                                              ; preds = %604, %650
  %610 = phi i64 [ 0, %604 ], [ %651, %650 ]
  %611 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %612 = getelementptr inbounds ptr, ptr %611, i64 %610
  %613 = load ptr, ptr %612, align 8, !tbaa !88
  %614 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %615 = icmp sgt i32 %614, 3
  %616 = load ptr, ptr @ira_dump_file, align 8
  %617 = icmp ne ptr %616, null
  %618 = select i1 %615, i1 %617, i1 false
  br i1 %618, label %619, label %634

619:                                              ; preds = %609
  %620 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 6, i64 1, ptr nonnull %616)
  %621 = getelementptr inbounds %struct.ira_allocno, ptr %613, i64 0, i32 19
  %622 = load ptr, ptr %621, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %622) #23
  %623 = icmp eq ptr %622, %613
  br i1 %623, label %631, label %624

624:                                              ; preds = %619, %624
  %625 = phi ptr [ %629, %624 ], [ %622, %619 ]
  %626 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %627 = tail call i32 @fputc(i32 43, ptr %626)
  %628 = getelementptr inbounds %struct.ira_allocno, ptr %625, i64 0, i32 19
  %629 = load ptr, ptr %628, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %629) #23
  %630 = icmp eq ptr %629, %613
  br i1 %630, label %631, label %624, !llvm.loop !266

631:                                              ; preds = %624, %619
  %632 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %633 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %632)
  br label %634

634:                                              ; preds = %631, %609
  %635 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %613, i8 noundef zeroext 0), !range !151
  %636 = icmp eq i8 %635, 0
  %637 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %638 = icmp sgt i32 %637, 3
  %639 = load ptr, ptr @ira_dump_file, align 8
  %640 = icmp ne ptr %639, null
  %641 = select i1 %638, i1 %640, i1 false
  br i1 %636, label %647, label %642

642:                                              ; preds = %634
  br i1 %641, label %643, label %650

643:                                              ; preds = %642
  %644 = getelementptr inbounds %struct.ira_allocno, ptr %613, i64 0, i32 3
  %645 = load i32, ptr %644, align 4, !tbaa !140
  %646 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %639, ptr noundef nonnull @.str.32, i32 noundef %645)
  br label %650

647:                                              ; preds = %634
  br i1 %641, label %648, label %650

648:                                              ; preds = %647
  %649 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr nonnull %639)
  br label %650

650:                                              ; preds = %648, %647, %643, %642
  %651 = add nuw nsw i64 %610, 1
  %652 = icmp eq i64 %651, %608
  br i1 %652, label %1695, label %609, !llvm.loop !479

653:                                              ; preds = %482
  store ptr null, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  store ptr null, ptr @uncolorable_allocno_bucket, align 8, !tbaa !88
  %654 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %655 = load ptr, ptr %654, align 8, !tbaa !319
  %656 = icmp eq ptr %655, null
  %657 = select i1 %656, ptr @bitmap_zero_bits, ptr %655, !prof !284
  %658 = getelementptr inbounds %struct.bitmap_element_def, ptr %657, i64 0, i32 2
  %659 = load i32, ptr %658, align 8, !tbaa !321
  %660 = shl i32 %659, 7
  %661 = getelementptr inbounds %struct.bitmap_element_def, ptr %657, i64 0, i32 3, i64 0
  %662 = load i64, ptr %661, align 8, !tbaa !146
  %663 = icmp eq i64 %662, 0
  %664 = zext i1 %663 to i32
  %665 = or disjoint i32 %660, %664
  br label %666

666:                                              ; preds = %1087, %653
  %667 = phi i64 [ %662, %653 ], [ %1088, %1087 ]
  %668 = phi i32 [ %665, %653 ], [ %1089, %1087 ]
  %669 = phi i32 [ 0, %653 ], [ %724, %1087 ]
  %670 = phi ptr [ %657, %653 ], [ %725, %1087 ]
  %671 = icmp eq i64 %667, 0
  br i1 %671, label %686, label %672, !prof !323

672:                                              ; preds = %700, %666
  %673 = phi i64 [ %667, %666 ], [ %705, %700 ]
  %674 = phi i32 [ %668, %666 ], [ %702, %700 ]
  %675 = phi i32 [ %669, %666 ], [ %701, %700 ]
  %676 = phi ptr [ %670, %666 ], [ %693, %700 ]
  %677 = and i64 %673, 1
  %678 = icmp eq i64 %677, 0
  br i1 %678, label %679, label %721, !prof !314

679:                                              ; preds = %672, %679
  %680 = phi i32 [ %683, %679 ], [ %674, %672 ]
  %681 = phi i64 [ %682, %679 ], [ %673, %672 ]
  %682 = lshr exact i64 %681, 1
  %683 = add i32 %680, 1
  %684 = and i64 %681, 2
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %679, label %721, !prof !314, !llvm.loop !324

686:                                              ; preds = %666
  %687 = add i32 %668, 63
  %688 = and i32 %687, -64
  %689 = add i32 %669, 1
  br label %690

690:                                              ; preds = %717, %686
  %691 = phi i64 [ %667, %686 ], [ %712, %717 ]
  %692 = phi i32 [ %688, %686 ], [ %720, %717 ]
  %693 = phi ptr [ %670, %686 ], [ %715, %717 ]
  %694 = phi i32 [ %689, %686 ], [ 0, %717 ]
  %695 = icmp eq i32 %694, 2
  br i1 %695, label %711, label %696, !prof !325

696:                                              ; preds = %690
  %697 = add i32 %692, 128
  %698 = shl i32 %694, 6
  %699 = sub i32 %697, %698
  br label %700

700:                                              ; preds = %696, %707
  %701 = phi i32 [ %709, %707 ], [ %694, %696 ]
  %702 = phi i32 [ %708, %707 ], [ %692, %696 ]
  %703 = zext i32 %701 to i64
  %704 = getelementptr inbounds %struct.bitmap_element_def, ptr %693, i64 0, i32 3, i64 %703
  %705 = load i64, ptr %704, align 8, !tbaa !146
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %707, label %672, !prof !326

707:                                              ; preds = %700
  %708 = add i32 %702, 64
  %709 = add i32 %701, 1
  %710 = icmp eq i32 %709, 2
  br i1 %710, label %711, label %700, !prof !327, !llvm.loop !328

711:                                              ; preds = %707, %690
  %712 = phi i64 [ %691, %690 ], [ %705, %707 ]
  %713 = phi i32 [ %692, %690 ], [ %699, %707 ]
  %714 = phi i32 [ %694, %690 ], [ 2, %707 ]
  %715 = load ptr, ptr %693, align 8, !tbaa !329
  %716 = icmp eq ptr %715, null
  br i1 %716, label %721, label %717, !prof !330

717:                                              ; preds = %711
  %718 = getelementptr inbounds %struct.bitmap_element_def, ptr %715, i64 0, i32 2
  %719 = load i32, ptr %718, align 8, !tbaa !321
  %720 = shl i32 %719, 7
  br label %690, !llvm.loop !331

721:                                              ; preds = %711, %679, %672
  %722 = phi i64 [ %673, %672 ], [ %682, %679 ], [ %712, %711 ]
  %723 = phi i32 [ %674, %672 ], [ %683, %679 ], [ %713, %711 ]
  %724 = phi i32 [ %675, %672 ], [ %675, %679 ], [ %714, %711 ]
  %725 = phi ptr [ %676, %672 ], [ %676, %679 ], [ %715, %711 ]
  %726 = phi i1 [ false, %672 ], [ false, %679 ], [ true, %711 ]
  br i1 %726, label %1090, label %727, !prof !332

727:                                              ; preds = %721
  %728 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %729 = zext i32 %723 to i64
  %730 = getelementptr inbounds ptr, ptr %728, i64 %729
  %731 = load ptr, ptr %730, align 8, !tbaa !88
  %732 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 9
  %733 = load i32, ptr %732, align 8, !tbaa !139
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %760, !prof !177

735:                                              ; preds = %727
  %736 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 3
  store i32 -1, ptr %736, align 4, !tbaa !140
  %737 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 31
  %738 = load i16, ptr %737, align 4
  %739 = or i16 %738, 256
  store i16 %739, ptr %737, align 4
  %740 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %741 = icmp sgt i32 %740, 3
  %742 = load ptr, ptr @ira_dump_file, align 8
  %743 = icmp ne ptr %742, null
  %744 = select i1 %741, i1 %743, i1 false
  br i1 %744, label %745, label %1087

745:                                              ; preds = %735
  %746 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr nonnull %742)
  %747 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 19
  %748 = load ptr, ptr %747, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %748) #23
  %749 = icmp eq ptr %748, %731
  br i1 %749, label %757, label %750

750:                                              ; preds = %745, %750
  %751 = phi ptr [ %755, %750 ], [ %748, %745 ]
  %752 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %753 = tail call i32 @fputc(i32 43, ptr %752)
  %754 = getelementptr inbounds %struct.ira_allocno, ptr %751, i64 0, i32 19
  %755 = load ptr, ptr %754, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %755) #23
  %756 = icmp eq ptr %755, %731
  br i1 %756, label %757, label %750, !llvm.loop !266

757:                                              ; preds = %750, %745
  %758 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %759 = tail call i32 @fputc(i32 10, ptr %758)
  br label %1087

760:                                              ; preds = %727
  %761 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 18
  %762 = load ptr, ptr %761, align 8, !tbaa !206
  %763 = icmp eq ptr %762, %731
  br i1 %763, label %764, label %1087, !prof !183

764:                                              ; preds = %760
  %765 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 31
  %766 = load i16, ptr %765, align 4
  %767 = or i16 %766, 128
  store i16 %767, ptr %765, align 4
  %768 = zext i32 %733 to i64
  %769 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %768
  %770 = load i32, ptr %769, align 4, !tbaa !103
  %771 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 19
  br label %772

772:                                              ; preds = %772, %764
  %773 = phi ptr [ %771, %764 ], [ %780, %772 ]
  %774 = phi i64 [ 0, %764 ], [ %778, %772 ]
  %775 = load ptr, ptr %773, align 8, !tbaa !178
  %776 = getelementptr inbounds %struct.ira_allocno, ptr %775, i64 0, i32 27
  %777 = load i64, ptr %776, align 8, !tbaa !180
  %778 = or i64 %777, %774
  %779 = icmp eq ptr %775, %731
  %780 = getelementptr inbounds %struct.ira_allocno, ptr %775, i64 0, i32 19
  br i1 %779, label %781, label %772, !prof !183, !llvm.loop !480

781:                                              ; preds = %772
  %782 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %768
  %783 = load i64, ptr %782, align 8, !tbaa !146
  %784 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !146
  %785 = xor i64 %784, -1
  %786 = and i64 %783, %785
  %787 = and i64 %786, %778
  %788 = icmp ne i64 %787, 0
  %789 = icmp sgt i32 %770, 0
  %790 = select i1 %788, i1 %789, i1 false
  br i1 %790, label %791, label %813, !prof !481

791:                                              ; preds = %781, %807
  %792 = phi i64 [ %811, %807 ], [ 0, %781 ]
  %793 = phi i64 [ %809, %807 ], [ %787, %781 ]
  %794 = phi i32 [ %808, %807 ], [ 0, %781 ]
  %795 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %768, i64 %792
  %796 = load i16, ptr %795, align 2, !tbaa !166
  %797 = sext i16 %796 to i64
  %798 = and i64 %797, 4294967295
  %799 = shl nuw i64 1, %798
  %800 = and i64 %799, %793
  %801 = icmp eq i64 %800, 0
  br i1 %801, label %807, label %802, !prof !482

802:                                              ; preds = %791
  %803 = add nsw i32 %794, 1
  %804 = xor i64 %799, -1
  %805 = and i64 %793, %804
  %806 = icmp eq i64 %805, 0
  br i1 %806, label %813, label %807, !prof !483

807:                                              ; preds = %802, %791
  %808 = phi i32 [ %803, %802 ], [ %794, %791 ]
  %809 = phi i64 [ %805, %802 ], [ %793, %791 ]
  %810 = zext i32 %770 to i64
  %811 = add nuw nsw i64 %792, 1
  %812 = icmp eq i64 %811, %810
  br i1 %812, label %813, label %791, !prof !484, !llvm.loop !485

813:                                              ; preds = %807, %802, %781
  %814 = phi i32 [ 0, %781 ], [ %803, %802 ], [ %808, %807 ]
  %815 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %815, label %816, label %818, !prof !177

816:                                              ; preds = %813
  %817 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  tail call void @bitmap_clear(ptr noundef %817) #23
  br label %818

818:                                              ; preds = %816, %813
  br label %819

819:                                              ; preds = %818, %984
  %820 = phi ptr [ %917, %984 ], [ undef, %818 ]
  %821 = phi i32 [ %860, %984 ], [ %814, %818 ]
  %822 = phi ptr [ %986, %984 ], [ %771, %818 ]
  %823 = phi i64 [ %861, %984 ], [ 0, %818 ]
  %824 = load ptr, ptr %822, align 8, !tbaa !178
  %825 = getelementptr inbounds %struct.ira_allocno, ptr %824, i64 0, i32 31
  %826 = load i16, ptr %825, align 4
  %827 = getelementptr inbounds %struct.ira_allocno, ptr %824, i64 0, i32 23
  %828 = load ptr, ptr %827, align 8, !tbaa !143
  %829 = and i16 %826, 2048
  %830 = icmp eq i16 %829, 0
  br i1 %830, label %831, label %847, !prof !189

831:                                              ; preds = %819
  %832 = getelementptr inbounds %struct.ira_allocno, ptr %824, i64 0, i32 21
  %833 = load i32, ptr %832, align 8, !tbaa !144
  %834 = getelementptr inbounds %struct.ira_allocno, ptr %824, i64 0, i32 22
  %835 = load i32, ptr %834, align 4, !tbaa !145
  %836 = icmp sgt i32 %833, %835
  br i1 %836, label %842, label %837, !prof !190

837:                                              ; preds = %831
  %838 = sub i32 %835, %833
  %839 = add i32 %838, 64
  %840 = sdiv i32 %839, 64
  %841 = shl nsw i32 %840, 3
  br label %842

842:                                              ; preds = %837, %831
  %843 = phi i32 [ %841, %837 ], [ 0, %831 ]
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %847, label %845, !prof !190

845:                                              ; preds = %842
  %846 = load i64, ptr %828, align 8, !tbaa !146
  br label %847

847:                                              ; preds = %845, %842, %819
  %848 = phi i32 [ 0, %819 ], [ %843, %845 ], [ %843, %842 ]
  %849 = phi i32 [ 0, %819 ], [ %833, %845 ], [ %833, %842 ]
  %850 = phi i64 [ 0, %819 ], [ %846, %845 ], [ 0, %842 ]
  %851 = zext i1 %830 to i32
  %852 = xor i1 %830, true
  %853 = zext i1 %852 to i32
  %854 = zext i1 %830 to i64
  br label %855

855:                                              ; preds = %978, %847
  %856 = phi i32 [ 0, %847 ], [ %981, %978 ]
  %857 = phi i32 [ 0, %847 ], [ %982, %978 ]
  %858 = phi i64 [ %850, %847 ], [ %983, %978 ]
  %859 = phi ptr [ %820, %847 ], [ %922, %978 ]
  %860 = phi i32 [ %821, %847 ], [ %979, %978 ]
  %861 = phi i64 [ %823, %847 ], [ %980, %978 ]
  br i1 %830, label %862, label %870, !prof !191

862:                                              ; preds = %855
  %863 = icmp eq i64 %858, 0
  br i1 %863, label %864, label %879, !prof !192

864:                                              ; preds = %862
  %865 = zext i32 %848 to i64
  %866 = add i32 %857, 1
  %867 = zext i32 %866 to i64
  %868 = shl nuw nsw i64 %867, 3
  %869 = icmp ult i64 %868, %865
  br i1 %869, label %890, label %913, !prof !193

870:                                              ; preds = %855
  %871 = zext i32 %857 to i64
  %872 = getelementptr inbounds ptr, ptr %828, i64 %871
  %873 = load ptr, ptr %872, align 8, !tbaa !88
  %874 = icmp ne ptr %873, null
  %875 = select i1 %874, ptr %873, ptr %859, !prof !194
  %876 = zext i1 %874 to i8
  br label %913

877:                                              ; preds = %890
  %878 = shl i32 %892, 6
  br label %879

879:                                              ; preds = %877, %862
  %880 = phi i32 [ %856, %862 ], [ %878, %877 ]
  %881 = phi i32 [ %857, %862 ], [ %892, %877 ]
  %882 = phi i64 [ %858, %862 ], [ %894, %877 ]
  %883 = and i64 %882, 1
  %884 = icmp eq i64 %883, 0
  br i1 %884, label %896, label %903, !prof !195

885:                                              ; preds = %890
  %886 = add i32 %892, 1
  %887 = zext i32 %886 to i64
  %888 = shl nuw nsw i64 %887, 3
  %889 = icmp ult i64 %888, %865
  br i1 %889, label %890, label %911, !prof !196, !llvm.loop !147

890:                                              ; preds = %864, %885
  %891 = phi i64 [ %887, %885 ], [ %867, %864 ]
  %892 = phi i32 [ %886, %885 ], [ %866, %864 ]
  %893 = getelementptr inbounds i64, ptr %828, i64 %891
  %894 = load i64, ptr %893, align 8, !tbaa !146
  %895 = icmp eq i64 %894, 0
  br i1 %895, label %885, label %877, !prof !197, !llvm.loop !147

896:                                              ; preds = %879, %896
  %897 = phi i64 [ %900, %896 ], [ %882, %879 ]
  %898 = phi i32 [ %899, %896 ], [ %880, %879 ]
  %899 = add i32 %898, 1
  %900 = lshr exact i64 %897, 1
  %901 = and i64 %897, 2
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %896, label %903, !prof !198, !llvm.loop !148

903:                                              ; preds = %896, %879
  %904 = phi i32 [ %880, %879 ], [ %899, %896 ]
  %905 = phi i64 [ %882, %879 ], [ %900, %896 ]
  %906 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !88
  %907 = add i32 %904, %849
  %908 = zext i32 %907 to i64
  %909 = getelementptr inbounds ptr, ptr %906, i64 %908
  %910 = load ptr, ptr %909, align 8, !tbaa !88
  br label %913

911:                                              ; preds = %885
  %912 = shl i32 %892, 6
  br label %913

913:                                              ; preds = %911, %864, %903, %870
  %914 = phi i32 [ %904, %903 ], [ %856, %870 ], [ %856, %864 ], [ %912, %911 ]
  %915 = phi i32 [ %881, %903 ], [ %857, %870 ], [ %866, %864 ], [ %886, %911 ]
  %916 = phi i64 [ %905, %903 ], [ %858, %870 ], [ %858, %864 ], [ %894, %911 ]
  %917 = phi ptr [ %910, %903 ], [ %875, %870 ], [ %859, %864 ], [ %859, %911 ]
  %918 = phi i8 [ 1, %903 ], [ %876, %870 ], [ 0, %864 ], [ 0, %911 ]
  %919 = icmp eq i8 %918, 0
  br i1 %919, label %984, label %920, !prof !199

920:                                              ; preds = %913
  %921 = getelementptr inbounds %struct.ira_allocno, ptr %917, i64 0, i32 18
  %922 = load ptr, ptr %921, align 8, !tbaa !206
  %923 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %924 = load i32, ptr %922, align 8, !tbaa !137
  %925 = tail call i32 @bitmap_bit_p(ptr noundef %923, i32 noundef %924) #23
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %978, label %927, !prof !201

927:                                              ; preds = %920
  %928 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %928, label %929, label %938, !prof !201

929:                                              ; preds = %927
  %930 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %931 = load i32, ptr %922, align 8, !tbaa !137
  %932 = tail call i32 @bitmap_bit_p(ptr noundef %930, i32 noundef %931) #23
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %978

934:                                              ; preds = %929
  %935 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %936 = load i32, ptr %922, align 8, !tbaa !137
  %937 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %935, i32 noundef %936) #23
  br label %938

938:                                              ; preds = %934, %927
  %939 = getelementptr inbounds %struct.ira_allocno, ptr %922, i64 0, i32 31
  %940 = load i16, ptr %939, align 4
  %941 = and i16 %940, 256
  %942 = icmp eq i16 %941, 0
  br i1 %942, label %943, label %950, !prof !200

943:                                              ; preds = %938
  %944 = getelementptr inbounds %struct.ira_allocno, ptr %922, i64 0, i32 2
  %945 = load i32, ptr %944, align 8, !tbaa !156
  %946 = zext i32 %945 to i64
  %947 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %768, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !103
  %949 = add nsw i32 %948, %860
  br label %978

950:                                              ; preds = %938
  %951 = getelementptr inbounds %struct.ira_allocno, ptr %922, i64 0, i32 3
  %952 = load i32, ptr %951, align 4, !tbaa !140
  %953 = icmp sgt i32 %952, -1
  br i1 %953, label %954, label %978

954:                                              ; preds = %950
  %955 = zext nneg i32 %952 to i64
  %956 = getelementptr inbounds %struct.ira_allocno, ptr %922, i64 0, i32 2
  %957 = load i32, ptr %956, align 8, !tbaa !156
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %955, i64 %958
  %960 = load i8, ptr %959, align 1, !tbaa !99
  %961 = zext i8 %960 to i32
  %962 = add nuw nsw i32 %952, %961
  %963 = icmp eq i8 %960, 0
  br i1 %963, label %978, label %964

964:                                              ; preds = %954, %964
  %965 = phi i64 [ %975, %964 ], [ %955, %954 ]
  %966 = phi i64 [ %974, %964 ], [ %861, %954 ]
  %967 = phi i32 [ %972, %964 ], [ %860, %954 ]
  %968 = shl nuw i64 1, %965
  %969 = and i64 %968, %966
  %970 = icmp eq i64 %969, 0
  %971 = zext i1 %970 to i32
  %972 = add nsw i32 %967, %971
  %973 = select i1 %970, i64 %968, i64 0
  %974 = or i64 %973, %966
  %975 = add nuw nsw i64 %965, 1
  %976 = trunc i64 %975 to i32
  %977 = icmp sgt i32 %962, %976
  br i1 %977, label %964, label %978, !llvm.loop !486

978:                                              ; preds = %964, %954, %950, %943, %929, %920
  %979 = phi i32 [ %860, %929 ], [ %860, %950 ], [ %949, %943 ], [ %860, %920 ], [ %860, %954 ], [ %972, %964 ]
  %980 = phi i64 [ %861, %929 ], [ %861, %950 ], [ %861, %943 ], [ %861, %920 ], [ %861, %954 ], [ %974, %964 ]
  %981 = add i32 %914, %851
  %982 = add i32 %915, %853
  %983 = lshr i64 %916, %854
  br label %855, !llvm.loop !487

984:                                              ; preds = %913
  %985 = icmp eq ptr %824, %731
  %986 = getelementptr inbounds %struct.ira_allocno, ptr %824, i64 0, i32 19
  br i1 %985, label %987, label %819, !prof !183, !llvm.loop !488

987:                                              ; preds = %984
  %988 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 37
  store i32 %860, ptr %988, align 8, !tbaa !489
  %989 = load i32, ptr %732, align 8, !tbaa !139
  %990 = zext i32 %989 to i64
  %991 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %990
  %992 = load i32, ptr %991, align 4, !tbaa !103
  %993 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 38
  store i32 %992, ptr %993, align 4, !tbaa !490
  %994 = icmp eq i32 %989, 0
  br i1 %994, label %1053, label %995, !prof !177

995:                                              ; preds = %987
  %996 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %990
  %997 = load i32, ptr %996, align 4, !tbaa !103
  br label %998

998:                                              ; preds = %998, %995
  %999 = phi ptr [ %731, %995 ], [ %1002, %998 ]
  %1000 = phi i64 [ 0, %995 ], [ %1005, %998 ]
  %1001 = getelementptr inbounds %struct.ira_allocno, ptr %999, i64 0, i32 19
  %1002 = load ptr, ptr %1001, align 8, !tbaa !178
  %1003 = getelementptr inbounds %struct.ira_allocno, ptr %1002, i64 0, i32 27
  %1004 = load i64, ptr %1003, align 8, !tbaa !180
  %1005 = or i64 %1004, %1000
  %1006 = icmp eq ptr %1002, %731
  br i1 %1006, label %1007, label %998, !prof !183, !llvm.loop !491

1007:                                             ; preds = %998
  %1008 = icmp sgt i32 %997, 0
  br i1 %1008, label %1009, label %1035, !prof !185

1009:                                             ; preds = %1007
  %1010 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 2
  %1011 = load i32, ptr %1010, align 8, !tbaa !156
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds [27 x [87 x i64]], ptr @prohibited_class_mode_regs, i64 0, i64 %990, i64 %1012
  %1014 = zext nneg i32 %997 to i64
  br label %1015

1015:                                             ; preds = %1009, %1032
  %1016 = phi i64 [ %1014, %1009 ], [ %1018, %1032 ]
  %1017 = phi i32 [ 0, %1009 ], [ %1033, %1032 ]
  %1018 = add nsw i64 %1016, -1
  %1019 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %990, i64 %1018
  %1020 = load i16, ptr %1019, align 2, !tbaa !166
  %1021 = sext i16 %1020 to i64
  %1022 = and i64 %1021, 4294967295
  %1023 = shl nuw i64 1, %1022
  %1024 = and i64 %1023, %1005
  %1025 = icmp eq i64 %1024, 0
  br i1 %1025, label %1026, label %1030, !prof !492

1026:                                             ; preds = %1015
  %1027 = load i64, ptr %1013, align 8, !tbaa !146
  %1028 = and i64 %1027, %1023
  %1029 = icmp eq i64 %1028, 0
  br i1 %1029, label %1032, label %1030, !prof !493

1030:                                             ; preds = %1026, %1015
  %1031 = add nsw i32 %1017, 1
  br label %1032

1032:                                             ; preds = %1030, %1026
  %1033 = phi i32 [ %1031, %1030 ], [ %1017, %1026 ]
  %1034 = icmp sgt i64 %1016, 1
  br i1 %1034, label %1015, label %1035, !prof !494, !llvm.loop !495

1035:                                             ; preds = %1032, %1007
  %1036 = phi i32 [ 0, %1007 ], [ %1033, %1032 ]
  %1037 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1038 = icmp sgt i32 %1037, 2
  %1039 = icmp sgt i32 %1036, 0
  %1040 = select i1 %1038, i1 %1039, i1 false, !prof !183
  %1041 = load ptr, ptr @ira_dump_file, align 8
  %1042 = icmp ne ptr %1041, null
  %1043 = select i1 %1040, i1 %1042, i1 false, !prof !481
  br i1 %1043, label %1044, label %1050, !prof !177

1044:                                             ; preds = %1035
  %1045 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 1
  %1046 = load i32, ptr %1045, align 4, !tbaa !141
  %1047 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %990
  %1048 = load ptr, ptr %1047, align 8, !tbaa !88
  %1049 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1041, ptr noundef nonnull @.str.34, i32 noundef %1046, ptr noundef %1048, i32 noundef %1036)
  br label %1050

1050:                                             ; preds = %1044, %1035
  %1051 = load i32, ptr %993, align 4, !tbaa !490
  %1052 = sub nsw i32 %1051, %1036
  store i32 %1052, ptr %993, align 4, !tbaa !490
  br label %1053

1053:                                             ; preds = %1050, %987
  %1054 = load i32, ptr %988, align 8, !tbaa !489
  %1055 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 2
  %1056 = load i32, ptr %1055, align 8, !tbaa !156
  %1057 = zext i32 %1056 to i64
  %1058 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %768, i64 %1057
  %1059 = load i32, ptr %1058, align 4, !tbaa !103
  %1060 = add nsw i32 %1059, %1054
  %1061 = load i32, ptr %993, align 4, !tbaa !490
  %1062 = icmp sgt i32 %1060, %1061
  br i1 %1062, label %1071, label %1063, !prof !496

1063:                                             ; preds = %1053
  %1064 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  %1065 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 39
  store ptr %1064, ptr %1065, align 8, !tbaa !497
  %1066 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 40
  store ptr null, ptr %1066, align 8, !tbaa !498
  %1067 = icmp eq ptr %1064, null
  br i1 %1067, label %1070, label %1068, !prof !499

1068:                                             ; preds = %1063
  %1069 = getelementptr inbounds %struct.ira_allocno, ptr %1064, i64 0, i32 40
  store ptr %731, ptr %1069, align 8, !tbaa !498
  br label %1070

1070:                                             ; preds = %1068, %1063
  store ptr %731, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  br label %1087

1071:                                             ; preds = %1053
  %1072 = load i32, ptr %732, align 8, !tbaa !139
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1079, label %1074, !prof !500

1074:                                             ; preds = %1071
  %1075 = zext i32 %1072 to i64
  %1076 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %1075
  %1077 = load i32, ptr %1076, align 4, !tbaa !103
  %1078 = add nsw i32 %1077, 1
  store i32 %1078, ptr %1076, align 4, !tbaa !103
  br label %1079

1079:                                             ; preds = %1074, %1071
  %1080 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !88
  %1081 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 39
  store ptr %1080, ptr %1081, align 8, !tbaa !497
  %1082 = getelementptr inbounds %struct.ira_allocno, ptr %731, i64 0, i32 40
  store ptr null, ptr %1082, align 8, !tbaa !498
  %1083 = icmp eq ptr %1080, null
  br i1 %1083, label %1086, label %1084, !prof !501

1084:                                             ; preds = %1079
  %1085 = getelementptr inbounds %struct.ira_allocno, ptr %1080, i64 0, i32 40
  store ptr %731, ptr %1085, align 8, !tbaa !498
  br label %1086

1086:                                             ; preds = %1084, %1079
  store ptr %731, ptr @uncolorable_allocno_bucket, align 8, !tbaa !88
  br label %1087

1087:                                             ; preds = %1086, %1070, %760, %757, %735
  %1088 = lshr i64 %722, 1
  %1089 = add i32 %723, 1
  br label %666, !llvm.loop !502

1090:                                             ; preds = %721
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %3) #23
  %1091 = load ptr, ptr @removed_splay_allocno_vec, align 8
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1094, label %1093, !prof !284

1093:                                             ; preds = %1090
  store i32 0, ptr %1091, align 8, !tbaa !265
  br label %1094

1094:                                             ; preds = %1093, %1090
  %1095 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %1096 = icmp sgt i32 %1095, 0
  br i1 %1096, label %1097, label %1099, !prof !271

1097:                                             ; preds = %1094
  %1098 = zext nneg i32 %1095 to i64
  br label %1102

1099:                                             ; preds = %1102, %1094
  %1100 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !88
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1112, label %1115, !prof !503

1102:                                             ; preds = %1097, %1102
  %1103 = phi i64 [ 0, %1097 ], [ %1110, %1102 ]
  %1104 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1103
  %1105 = load i32, ptr %1104, align 4, !tbaa !103
  %1106 = zext i32 %1105 to i64
  %1107 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %1106
  store i32 0, ptr %1107, align 4, !tbaa !103
  %1108 = getelementptr inbounds [27 x ptr], ptr %3, i64 0, i64 %1106
  store ptr null, ptr %1108, align 8, !tbaa !88
  %1109 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %1106
  store ptr null, ptr %1109, align 8, !tbaa !88
  %1110 = add nuw nsw i64 %1103, 1
  %1111 = icmp eq i64 %1110, %1098
  br i1 %1111, label %1099, label %1102, !prof !504, !llvm.loop !505

1112:                                             ; preds = %1208, %1099
  %1113 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %1114 = icmp sgt i32 %1113, 0
  br i1 %1114, label %1215, label %1212, !prof !271

1115:                                             ; preds = %1099, %1208
  %1116 = phi ptr [ %1210, %1208 ], [ %1100, %1099 ]
  %1117 = getelementptr inbounds %struct.ira_allocno, ptr %1116, i64 0, i32 9
  %1118 = load i32, ptr %1117, align 8, !tbaa !139
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1208, label %1120, !prof !500

1120:                                             ; preds = %1115
  %1121 = zext i32 %1118 to i64
  %1122 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %1121
  %1123 = load i32, ptr %1122, align 4, !tbaa !103
  %1124 = add nsw i32 %1123, 1
  store i32 %1124, ptr %1122, align 4, !tbaa !103
  br label %1125

1125:                                             ; preds = %1202, %1120
  %1126 = phi ptr [ %1116, %1120 ], [ %1129, %1202 ]
  %1127 = phi i32 [ 0, %1120 ], [ %1204, %1202 ]
  %1128 = getelementptr inbounds %struct.ira_allocno, ptr %1126, i64 0, i32 19
  %1129 = load ptr, ptr %1128, align 8, !tbaa !178
  %1130 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 1
  %1131 = load i32, ptr %1130, align 4, !tbaa !141
  %1132 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 13
  %1133 = load i32, ptr %1132, align 8, !tbaa !179
  %1134 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 11
  %1135 = load i32, ptr %1134, align 8, !tbaa !184
  %1136 = sub nsw i32 %1133, %1135
  %1137 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 16
  %1138 = load ptr, ptr %1137, align 8, !tbaa !438
  %1139 = icmp eq ptr %1138, null
  br i1 %1139, label %1140, label %1202, !prof !506

1140:                                             ; preds = %1125
  %1141 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 6
  %1142 = load ptr, ptr %1141, align 8, !tbaa !436
  %1143 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1142, i64 0, i32 6
  %1144 = load ptr, ptr %1143, align 8, !tbaa !448
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1202, label %1146, !prof !506

1146:                                             ; preds = %1140
  %1147 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1144, i64 0, i32 9
  %1148 = load ptr, ptr %1147, align 8, !tbaa !445
  %1149 = sext i32 %1131 to i64
  %1150 = getelementptr inbounds ptr, ptr %1148, i64 %1149
  %1151 = load ptr, ptr %1150, align 8, !tbaa !88
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %1202, label %1153

1153:                                             ; preds = %1146
  %1154 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 2
  %1155 = load i32, ptr %1154, align 8, !tbaa !156
  %1156 = getelementptr inbounds %struct.ira_allocno, ptr %1129, i64 0, i32 9
  %1157 = load i32, ptr %1156, align 8, !tbaa !139
  %1158 = getelementptr inbounds %struct.ira_allocno, ptr %1151, i64 0, i32 3
  %1159 = load i32, ptr %1158, align 4, !tbaa !140
  %1160 = icmp slt i32 %1159, 0
  %1161 = zext i32 %1155 to i64
  %1162 = zext i32 %1157 to i64
  %1163 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %1161, i64 %1162
  br i1 %1160, label %1164, label %1176

1164:                                             ; preds = %1153
  %1165 = load i16, ptr %1163, align 4, !tbaa !166
  %1166 = sext i16 %1165 to i32
  %1167 = tail call i32 @ira_loop_edge_freq(ptr noundef %1142, i32 noundef %1131, i8 noundef zeroext 1), !range !446
  %1168 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %1161, i64 %1162, i64 1
  %1169 = load i16, ptr %1168, align 2, !tbaa !166
  %1170 = sext i16 %1169 to i32
  %1171 = tail call i32 @ira_loop_edge_freq(ptr noundef %1142, i32 noundef %1131, i8 noundef zeroext 0), !range !446
  %1172 = mul i32 %1167, %1166
  %1173 = mul i32 %1171, %1170
  %1174 = add i32 %1173, %1172
  %1175 = sub i32 %1136, %1174
  br label %1202

1176:                                             ; preds = %1153
  %1177 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %1161, i64 %1162, i64 1
  %1178 = load i16, ptr %1177, align 2, !tbaa !166
  %1179 = sext i16 %1178 to i32
  %1180 = tail call i32 @ira_loop_edge_freq(ptr noundef %1142, i32 noundef %1131, i8 noundef zeroext 1), !range !446
  %1181 = mul nsw i32 %1180, %1179
  %1182 = load i16, ptr %1163, align 4, !tbaa !166
  %1183 = sext i16 %1182 to i32
  %1184 = tail call i32 @ira_loop_edge_freq(ptr noundef %1142, i32 noundef %1131, i8 noundef zeroext 0), !range !446
  %1185 = mul nsw i32 %1184, %1183
  %1186 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %1161
  %1187 = load ptr, ptr %1186, align 8, !tbaa !88
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1189, label %1190

1189:                                             ; preds = %1176
  tail call void @ira_init_register_move_cost(i32 noundef %1155) #23
  br label %1190

1190:                                             ; preds = %1189, %1176
  %1191 = load ptr, ptr %1186, align 8, !tbaa !88
  %1192 = getelementptr inbounds [27 x i16], ptr %1191, i64 %1162, i64 %1162
  %1193 = load i16, ptr %1192, align 2, !tbaa !166
  %1194 = zext i16 %1193 to i32
  %1195 = tail call i32 @ira_loop_edge_freq(ptr noundef %1142, i32 noundef %1131, i8 noundef zeroext 0), !range !446
  %1196 = tail call i32 @ira_loop_edge_freq(ptr noundef %1142, i32 noundef %1131, i8 noundef zeroext 1), !range !446
  %1197 = add nsw i32 %1196, %1195
  %1198 = mul nsw i32 %1197, %1194
  %1199 = add i32 %1181, %1136
  %1200 = add i32 %1199, %1185
  %1201 = sub i32 %1200, %1198
  br label %1202

1202:                                             ; preds = %1125, %1190, %1164, %1146, %1140
  %1203 = phi i32 [ %1136, %1140 ], [ %1136, %1146 ], [ %1175, %1164 ], [ %1201, %1190 ], [ %1136, %1125 ]
  %1204 = add nsw i32 %1203, %1127
  %1205 = icmp eq ptr %1129, %1116
  br i1 %1205, label %1206, label %1125, !prof !506, !llvm.loop !507

1206:                                             ; preds = %1202
  %1207 = getelementptr inbounds %struct.ira_allocno, ptr %1116, i64 0, i32 41
  store i32 %1204, ptr %1207, align 8, !tbaa !287
  br label %1208

1208:                                             ; preds = %1206, %1115
  %1209 = getelementptr inbounds %struct.ira_allocno, ptr %1116, i64 0, i32 39
  %1210 = load ptr, ptr %1209, align 8, !tbaa !88
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1112, label %1115, !prof !508, !llvm.loop !509

1212:                                             ; preds = %1238, %1112
  %1213 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !88
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1267, label %1243, !prof !503

1215:                                             ; preds = %1112, %1238
  %1216 = phi i64 [ %1239, %1238 ], [ 0, %1112 ]
  %1217 = phi i32 [ %1231, %1238 ], [ 0, %1112 ]
  %1218 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1216
  %1219 = load i32, ptr %1218, align 4, !tbaa !103
  %1220 = zext i32 %1219 to i64
  %1221 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %1220
  %1222 = load i32, ptr %1221, align 4, !tbaa !103
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1230, label %1224, !prof !510

1224:                                             ; preds = %1215
  %1225 = load ptr, ptr @allocnos_for_spilling, align 8, !tbaa !88
  %1226 = sext i32 %1217 to i64
  %1227 = getelementptr inbounds ptr, ptr %1225, i64 %1226
  %1228 = getelementptr inbounds [27 x ptr], ptr %3, i64 0, i64 %1220
  store ptr %1227, ptr %1228, align 8, !tbaa !88
  %1229 = add nsw i32 %1222, %1217
  store i32 0, ptr %1221, align 4, !tbaa !103
  br label %1230

1230:                                             ; preds = %1224, %1215
  %1231 = phi i32 [ %1229, %1224 ], [ %1217, %1215 ]
  %1232 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %1220
  %1233 = load i32, ptr %1232, align 4, !tbaa !103
  %1234 = icmp sgt i32 %1233, 4000
  br i1 %1234, label %1235, label %1238, !prof !403

1235:                                             ; preds = %1230
  %1236 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @allocno_spill_priority_compare, ptr noundef null, ptr noundef null, ptr noundef nonnull @splay_tree_allocate, ptr noundef nonnull @splay_tree_free, ptr noundef null) #23
  %1237 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %1220
  store ptr %1236, ptr %1237, align 8, !tbaa !88
  br label %1238

1238:                                             ; preds = %1235, %1230
  %1239 = add nuw nsw i64 %1216, 1
  %1240 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %1241 = sext i32 %1240 to i64
  %1242 = icmp slt i64 %1239, %1241
  br i1 %1242, label %1215, label %1212, !prof !511, !llvm.loop !512

1243:                                             ; preds = %1212, %1263
  %1244 = phi ptr [ %1265, %1263 ], [ %1213, %1212 ]
  %1245 = getelementptr inbounds %struct.ira_allocno, ptr %1244, i64 0, i32 9
  %1246 = load i32, ptr %1245, align 8, !tbaa !139
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1263, label %1248, !prof !500

1248:                                             ; preds = %1243
  %1249 = zext i32 %1246 to i64
  %1250 = getelementptr inbounds [27 x ptr], ptr %3, i64 0, i64 %1249
  %1251 = load ptr, ptr %1250, align 8, !tbaa !88
  %1252 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %1249
  %1253 = load i32, ptr %1252, align 4, !tbaa !103
  %1254 = add nsw i32 %1253, 1
  store i32 %1254, ptr %1252, align 4, !tbaa !103
  %1255 = sext i32 %1253 to i64
  %1256 = getelementptr inbounds ptr, ptr %1251, i64 %1255
  store ptr %1244, ptr %1256, align 8, !tbaa !88
  %1257 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %1249
  %1258 = load ptr, ptr %1257, align 8, !tbaa !88
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1263, label %1260, !prof !506

1260:                                             ; preds = %1248
  %1261 = ptrtoint ptr %1244 to i64
  %1262 = tail call ptr @splay_tree_insert(ptr noundef nonnull %1258, i64 noundef %1261, i64 noundef %1261) #23
  br label %1263

1263:                                             ; preds = %1260, %1248, %1243
  %1264 = getelementptr inbounds %struct.ira_allocno, ptr %1244, i64 0, i32 39
  %1265 = load ptr, ptr %1264, align 8, !tbaa !88
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1267, label %1243, !prof !508, !llvm.loop !513

1267:                                             ; preds = %1263, %1212
  br label %1268

1268:                                             ; preds = %1385, %1267
  %1269 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1283, label %1271, !prof !514

1271:                                             ; preds = %1268
  %1272 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  br label %1273

1273:                                             ; preds = %1271, %1273
  %1274 = phi i64 [ 0, %1271 ], [ %1276, %1273 ]
  %1275 = phi ptr [ %1269, %1271 ], [ %1279, %1273 ]
  %1276 = add nuw i64 %1274, 1
  %1277 = getelementptr inbounds ptr, ptr %1272, i64 %1274
  store ptr %1275, ptr %1277, align 8, !tbaa !88
  %1278 = getelementptr inbounds %struct.ira_allocno, ptr %1275, i64 0, i32 39
  %1279 = load ptr, ptr %1278, align 8, !tbaa !88
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %1281, label %1273, !prof !515, !llvm.loop !516

1281:                                             ; preds = %1273
  %1282 = trunc i64 %1276 to i32
  br label %1283

1283:                                             ; preds = %1281, %1268
  %1284 = phi i32 [ 0, %1268 ], [ %1282, %1281 ]
  %1285 = icmp ult i32 %1284, 2
  br i1 %1285, label %1308, label %1286, !prof !517

1286:                                             ; preds = %1283
  %1287 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %1288 = zext nneg i32 %1284 to i64
  tail call void @spec_qsort(ptr noundef %1287, i64 noundef %1288, i64 noundef 8, ptr noundef nonnull @bucket_allocno_compare_func) #23
  %1289 = icmp sgt i32 %1284, 0
  br i1 %1289, label %1290, label %1306, !prof !518

1290:                                             ; preds = %1286
  %1291 = load ptr, ptr @sorted_allocnos, align 8, !tbaa !88
  %1292 = zext nneg i32 %1284 to i64
  br label %1293

1293:                                             ; preds = %1290, %1304
  %1294 = phi i64 [ %1292, %1290 ], [ %1296, %1304 ]
  %1295 = phi ptr [ null, %1290 ], [ %1298, %1304 ]
  %1296 = add nsw i64 %1294, -1
  %1297 = getelementptr inbounds ptr, ptr %1291, i64 %1296
  %1298 = load ptr, ptr %1297, align 8, !tbaa !88
  %1299 = getelementptr inbounds %struct.ira_allocno, ptr %1298, i64 0, i32 39
  store ptr %1295, ptr %1299, align 8, !tbaa !497
  %1300 = getelementptr inbounds %struct.ira_allocno, ptr %1298, i64 0, i32 40
  store ptr null, ptr %1300, align 8, !tbaa !498
  %1301 = icmp eq ptr %1295, null
  br i1 %1301, label %1304, label %1302, !prof !519

1302:                                             ; preds = %1293
  %1303 = getelementptr inbounds %struct.ira_allocno, ptr %1295, i64 0, i32 40
  store ptr %1298, ptr %1303, align 8, !tbaa !498
  br label %1304

1304:                                             ; preds = %1302, %1293
  %1305 = icmp sgt i64 %1294, 1
  br i1 %1305, label %1293, label %1306, !prof !520, !llvm.loop !521

1306:                                             ; preds = %1304, %1286
  %1307 = phi ptr [ null, %1286 ], [ %1298, %1304 ]
  store ptr %1307, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  br label %1308

1308:                                             ; preds = %1306, %1283
  %1309 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  %1310 = icmp eq ptr %1309, null
  br i1 %1310, label %1349, label %1311, !prof !514

1311:                                             ; preds = %1308, %1346
  %1312 = phi ptr [ %1347, %1346 ], [ %1309, %1308 ]
  %1313 = getelementptr inbounds %struct.ira_allocno, ptr %1312, i64 0, i32 40
  %1314 = load ptr, ptr %1313, align 8, !tbaa !498
  %1315 = getelementptr inbounds %struct.ira_allocno, ptr %1312, i64 0, i32 39
  %1316 = load ptr, ptr %1315, align 8, !tbaa !497
  %1317 = icmp eq ptr %1314, null
  br i1 %1317, label %1320, label %1318, !prof !522

1318:                                             ; preds = %1311
  %1319 = getelementptr inbounds %struct.ira_allocno, ptr %1314, i64 0, i32 39
  br label %1320

1320:                                             ; preds = %1311, %1318
  %1321 = phi ptr [ %1319, %1318 ], [ @colorable_allocno_bucket, %1311 ]
  store ptr %1316, ptr %1321, align 8, !tbaa !88
  %1322 = icmp eq ptr %1316, null
  br i1 %1322, label %1325, label %1323, !prof !523

1323:                                             ; preds = %1320
  %1324 = getelementptr inbounds %struct.ira_allocno, ptr %1316, i64 0, i32 40
  store ptr %1314, ptr %1324, align 8, !tbaa !498
  br label %1325

1325:                                             ; preds = %1323, %1320
  %1326 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1327 = icmp sgt i32 %1326, 3
  %1328 = load ptr, ptr @ira_dump_file, align 8
  %1329 = icmp ne ptr %1328, null
  %1330 = select i1 %1327, i1 %1329, i1 false, !prof !183
  br i1 %1330, label %1331, label %1346, !prof !177

1331:                                             ; preds = %1325
  %1332 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr nonnull %1328)
  %1333 = getelementptr inbounds %struct.ira_allocno, ptr %1312, i64 0, i32 19
  %1334 = load ptr, ptr %1333, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %1334) #23
  %1335 = icmp eq ptr %1334, %1312
  br i1 %1335, label %1343, label %1336

1336:                                             ; preds = %1331, %1336
  %1337 = phi ptr [ %1341, %1336 ], [ %1334, %1331 ]
  %1338 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %1339 = tail call i32 @fputc(i32 43, ptr %1338)
  %1340 = getelementptr inbounds %struct.ira_allocno, ptr %1337, i64 0, i32 19
  %1341 = load ptr, ptr %1340, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %1341) #23
  %1342 = icmp eq ptr %1341, %1312
  br i1 %1342, label %1343, label %1336, !llvm.loop !266

1343:                                             ; preds = %1336, %1331
  %1344 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %1345 = tail call i32 @fputc(i32 10, ptr %1344)
  br label %1346

1346:                                             ; preds = %1325, %1343
  tail call fastcc void @push_allocno_to_stack(ptr noundef nonnull %1312)
  %1347 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  %1348 = icmp eq ptr %1347, null
  br i1 %1348, label %1349, label %1311, !prof !524, !llvm.loop !525

1349:                                             ; preds = %1346, %1308
  %1350 = load ptr, ptr @uncolorable_allocno_bucket, align 8, !tbaa !88
  %1351 = icmp eq ptr %1350, null
  br i1 %1351, label %1352, label %1355, !prof !526

1352:                                             ; preds = %1349
  %1353 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %1354 = icmp sgt i32 %1353, 0
  br i1 %1354, label %1600, label %1614, !prof !271

1355:                                             ; preds = %1349
  %1356 = getelementptr inbounds %struct.ira_allocno, ptr %1350, i64 0, i32 9
  %1357 = load i32, ptr %1356, align 8, !tbaa !139
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1359, label %1386, !prof !527

1359:                                             ; preds = %1355
  %1360 = getelementptr inbounds %struct.ira_allocno, ptr %1350, i64 0, i32 40
  %1361 = load ptr, ptr %1360, align 8, !tbaa !498
  %1362 = getelementptr inbounds %struct.ira_allocno, ptr %1350, i64 0, i32 39
  %1363 = load ptr, ptr %1362, align 8, !tbaa !497
  %1364 = icmp eq ptr %1361, null
  %1365 = getelementptr inbounds %struct.ira_allocno, ptr %1361, i64 0, i32 39
  %1366 = select i1 %1364, ptr @uncolorable_allocno_bucket, ptr %1365
  store ptr %1363, ptr %1366, align 8, !tbaa !88
  %1367 = icmp eq ptr %1363, null
  br i1 %1367, label %1370, label %1368

1368:                                             ; preds = %1359
  %1369 = getelementptr inbounds %struct.ira_allocno, ptr %1363, i64 0, i32 40
  store ptr %1361, ptr %1369, align 8, !tbaa !498
  br label %1370

1370:                                             ; preds = %1368, %1359
  %1371 = getelementptr inbounds %struct.ira_allocno, ptr %1350, i64 0, i32 31
  %1372 = load i16, ptr %1371, align 4
  %1373 = or i16 %1372, 512
  store i16 %1373, ptr %1371, align 4
  %1374 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1375 = icmp sgt i32 %1374, 3
  %1376 = load ptr, ptr @ira_dump_file, align 8
  %1377 = icmp ne ptr %1376, null
  %1378 = select i1 %1375, i1 %1377, i1 false
  br i1 %1378, label %1379, label %1384

1379:                                             ; preds = %1370
  %1380 = load i32, ptr %1350, align 8, !tbaa !137
  %1381 = getelementptr inbounds %struct.ira_allocno, ptr %1350, i64 0, i32 1
  %1382 = load i32, ptr %1381, align 4, !tbaa !141
  %1383 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1376, ptr noundef nonnull @.str.35, i32 noundef %1380, i32 noundef %1382)
  br label %1384

1384:                                             ; preds = %1379, %1370
  tail call fastcc void @push_allocno_to_stack(ptr noundef nonnull %1350)
  br label %1385

1385:                                             ; preds = %1384, %1596
  br label %1268, !llvm.loop !528

1386:                                             ; preds = %1355
  %1387 = zext i32 %1357 to i64
  %1388 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %1387
  %1389 = load i32, ptr %1388, align 4, !tbaa !103
  %1390 = icmp sgt i32 %1389, 4000
  br i1 %1390, label %1391, label %1435, !prof !527

1391:                                             ; preds = %1386, %1427
  %1392 = load ptr, ptr @removed_splay_allocno_vec, align 8
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1396, label %1394

1394:                                             ; preds = %1391
  %1395 = load i32, ptr %1392, align 8, !tbaa !265
  br label %1396

1396:                                             ; preds = %1394, %1391
  %1397 = phi i32 [ %1395, %1394 ], [ 0, %1391 ]
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1428, label %1399

1399:                                             ; preds = %1396
  %1400 = load i32, ptr %1392, align 8, !tbaa !265
  %1401 = add i32 %1400, -1
  store i32 %1401, ptr %1392, align 8, !tbaa !265
  %1402 = zext i32 %1401 to i64
  %1403 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %1392, i64 0, i32 2, i64 %1402
  %1404 = load ptr, ptr %1403, align 8, !tbaa !88
  %1405 = getelementptr inbounds %struct.ira_allocno, ptr %1404, i64 0, i32 31
  %1406 = load i16, ptr %1405, align 4
  %1407 = and i16 %1406, -1025
  store i16 %1407, ptr %1405, align 4
  %1408 = getelementptr inbounds %struct.ira_allocno, ptr %1404, i64 0, i32 9
  %1409 = load i32, ptr %1408, align 8, !tbaa !139
  %1410 = getelementptr inbounds %struct.ira_allocno, ptr %1404, i64 0, i32 37
  %1411 = load i32, ptr %1410, align 8, !tbaa !489
  %1412 = zext i32 %1409 to i64
  %1413 = getelementptr inbounds %struct.ira_allocno, ptr %1404, i64 0, i32 2
  %1414 = load i32, ptr %1413, align 8, !tbaa !156
  %1415 = zext i32 %1414 to i64
  %1416 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %1412, i64 %1415
  %1417 = load i32, ptr %1416, align 4, !tbaa !103
  %1418 = add nsw i32 %1417, %1411
  %1419 = getelementptr inbounds %struct.ira_allocno, ptr %1404, i64 0, i32 38
  %1420 = load i32, ptr %1419, align 4, !tbaa !490
  %1421 = icmp sgt i32 %1418, %1420
  br i1 %1421, label %1422, label %1427

1422:                                             ; preds = %1399
  %1423 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %1412
  %1424 = load ptr, ptr %1423, align 8, !tbaa !88
  %1425 = ptrtoint ptr %1404 to i64
  %1426 = tail call ptr @splay_tree_insert(ptr noundef %1424, i64 noundef %1425, i64 noundef %1425) #23
  br label %1427

1427:                                             ; preds = %1422, %1399
  br label %1391, !llvm.loop !529

1428:                                             ; preds = %1396
  %1429 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %1387
  %1430 = load ptr, ptr %1429, align 8, !tbaa !88
  %1431 = tail call ptr @splay_tree_min(ptr noundef %1430) #23
  %1432 = load i64, ptr %1431, align 8, !tbaa !530
  %1433 = inttoptr i64 %1432 to ptr
  %1434 = load ptr, ptr %1429, align 8, !tbaa !88
  tail call void @splay_tree_remove(ptr noundef %1434, i64 noundef %1432) #23
  br label %1535

1435:                                             ; preds = %1386
  %1436 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %1387
  %1437 = load i32, ptr %1436, align 4, !tbaa !103
  %1438 = getelementptr inbounds [27 x ptr], ptr %3, i64 0, i64 %1387
  %1439 = load ptr, ptr %1438, align 8, !tbaa !88
  %1440 = add nsw i32 %1437, -1
  %1441 = icmp slt i32 %1437, 1
  br i1 %1441, label %1531, label %1442, !prof !532

1442:                                             ; preds = %1435, %1515
  %1443 = phi i32 [ %1529, %1515 ], [ %1440, %1435 ]
  %1444 = phi i32 [ %1519, %1515 ], [ 0, %1435 ]
  %1445 = phi ptr [ %1518, %1515 ], [ null, %1435 ]
  %1446 = phi i32 [ %1517, %1515 ], [ 0, %1435 ]
  %1447 = phi i32 [ %1516, %1515 ], [ 0, %1435 ]
  %1448 = sext i32 %1444 to i64
  %1449 = getelementptr inbounds ptr, ptr %1439, i64 %1448
  %1450 = load ptr, ptr %1449, align 8, !tbaa !88
  %1451 = getelementptr inbounds %struct.ira_allocno, ptr %1450, i64 0, i32 31
  %1452 = load i16, ptr %1451, align 4
  %1453 = and i16 %1452, 128
  %1454 = icmp eq i16 %1453, 0
  br i1 %1454, label %1455, label %1464, !prof !533

1455:                                             ; preds = %1442
  %1456 = sext i32 %1443 to i64
  %1457 = getelementptr inbounds ptr, ptr %1439, i64 %1456
  %1458 = load ptr, ptr %1457, align 8, !tbaa !88
  %1459 = getelementptr inbounds %struct.ira_allocno, ptr %1458, i64 0, i32 31
  %1460 = load i16, ptr %1459, align 4
  %1461 = and i16 %1460, 128
  %1462 = icmp eq i16 %1461, 0
  br i1 %1462, label %1464, label %1463, !prof !534

1463:                                             ; preds = %1455
  store ptr %1450, ptr %1457, align 8, !tbaa !88
  store ptr %1458, ptr %1449, align 8, !tbaa !88
  br label %1464

1464:                                             ; preds = %1463, %1455, %1442
  %1465 = phi ptr [ %1450, %1442 ], [ %1458, %1463 ], [ %1450, %1455 ]
  %1466 = getelementptr inbounds %struct.ira_allocno, ptr %1465, i64 0, i32 31
  %1467 = load i16, ptr %1466, align 4
  %1468 = and i16 %1467, 128
  %1469 = icmp eq i16 %1468, 0
  br i1 %1469, label %1515, label %1470, !prof !535

1470:                                             ; preds = %1464
  %1471 = add nsw i32 %1444, 1
  %1472 = getelementptr inbounds %struct.ira_allocno, ptr %1465, i64 0, i32 41
  %1473 = load i32, ptr %1472, align 8, !tbaa !287
  %1474 = getelementptr inbounds %struct.ira_allocno, ptr %1465, i64 0, i32 37
  %1475 = load i32, ptr %1474, align 8, !tbaa !489
  %1476 = getelementptr inbounds %struct.ira_allocno, ptr %1465, i64 0, i32 9
  %1477 = load i32, ptr %1476, align 8, !tbaa !139
  %1478 = zext i32 %1477 to i64
  %1479 = getelementptr inbounds %struct.ira_allocno, ptr %1465, i64 0, i32 2
  %1480 = load i32, ptr %1479, align 8, !tbaa !156
  %1481 = zext i32 %1480 to i64
  %1482 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %1478, i64 %1481
  %1483 = load i32, ptr %1482, align 4, !tbaa !103
  %1484 = mul nsw i32 %1483, %1475
  %1485 = add nsw i32 %1484, 1
  %1486 = sdiv i32 %1473, %1485
  %1487 = icmp eq ptr %1445, null
  br i1 %1487, label %1514, label %1488, !prof !536

1488:                                             ; preds = %1470
  %1489 = and i16 %1467, 64
  %1490 = icmp eq i16 %1489, 0
  br i1 %1490, label %1491, label %1497, !prof !537

1491:                                             ; preds = %1488
  %1492 = getelementptr inbounds %struct.ira_allocno, ptr %1445, i64 0, i32 31
  %1493 = load i16, ptr %1492, align 4
  %1494 = and i16 %1493, 64
  %1495 = icmp eq i16 %1494, 0
  br i1 %1495, label %1496, label %1514, !prof !538

1496:                                             ; preds = %1491
  br i1 %1490, label %1502, label %1497, !prof !537

1497:                                             ; preds = %1488, %1496
  %1498 = getelementptr inbounds %struct.ira_allocno, ptr %1445, i64 0, i32 31
  %1499 = load i16, ptr %1498, align 4
  %1500 = and i16 %1499, 64
  %1501 = icmp eq i16 %1500, 0
  br i1 %1501, label %1515, label %1502, !prof !539

1502:                                             ; preds = %1497, %1496
  %1503 = icmp sgt i32 %1447, %1486
  br i1 %1503, label %1514, label %1504, !prof !540

1504:                                             ; preds = %1502
  %1505 = icmp eq i32 %1447, %1486
  br i1 %1505, label %1506, label %1515, !prof !541

1506:                                             ; preds = %1504
  %1507 = icmp sgt i32 %1446, %1473
  br i1 %1507, label %1514, label %1508, !prof !542

1508:                                             ; preds = %1506
  %1509 = icmp eq i32 %1446, %1473
  br i1 %1509, label %1510, label %1515, !prof !543

1510:                                             ; preds = %1508
  %1511 = load i32, ptr %1445, align 8, !tbaa !137
  %1512 = load i32, ptr %1465, align 8, !tbaa !137
  %1513 = icmp sgt i32 %1511, %1512
  br i1 %1513, label %1514, label %1515, !prof !544

1514:                                             ; preds = %1491, %1510, %1506, %1502, %1470
  br label %1515

1515:                                             ; preds = %1510, %1514, %1508, %1504, %1497, %1464
  %1516 = phi i32 [ %1486, %1514 ], [ %1447, %1508 ], [ %1447, %1504 ], [ %1447, %1497 ], [ %1447, %1464 ], [ %1447, %1510 ]
  %1517 = phi i32 [ %1473, %1514 ], [ %1446, %1508 ], [ %1446, %1504 ], [ %1446, %1497 ], [ %1446, %1464 ], [ %1446, %1510 ]
  %1518 = phi ptr [ %1465, %1514 ], [ %1445, %1508 ], [ %1445, %1504 ], [ %1445, %1497 ], [ %1445, %1464 ], [ %1445, %1510 ]
  %1519 = phi i32 [ %1471, %1514 ], [ %1471, %1508 ], [ %1471, %1504 ], [ %1471, %1497 ], [ %1444, %1464 ], [ %1471, %1510 ]
  %1520 = sext i32 %1443 to i64
  %1521 = getelementptr inbounds ptr, ptr %1439, i64 %1520
  %1522 = load ptr, ptr %1521, align 8, !tbaa !88
  %1523 = getelementptr inbounds %struct.ira_allocno, ptr %1522, i64 0, i32 31
  %1524 = load i16, ptr %1523, align 4
  %1525 = lshr i16 %1524, 7
  %1526 = and i16 %1525, 1
  %1527 = add nsw i16 %1526, -1
  %1528 = sext i16 %1527 to i32
  %1529 = add nsw i32 %1443, %1528
  %1530 = icmp sgt i32 %1519, %1529
  br i1 %1530, label %1531, label %1442, !prof !545, !llvm.loop !546

1531:                                             ; preds = %1515, %1435
  %1532 = phi ptr [ null, %1435 ], [ %1518, %1515 ]
  %1533 = phi i32 [ %1440, %1435 ], [ %1529, %1515 ]
  %1534 = add nsw i32 %1533, 1
  store i32 %1534, ptr %1436, align 4, !tbaa !103
  br label %1535

1535:                                             ; preds = %1531, %1428
  %1536 = phi ptr [ %1433, %1428 ], [ %1532, %1531 ]
  %1537 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 9
  %1538 = load i32, ptr %1537, align 8, !tbaa !139
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1545, label %1540, !prof !527

1540:                                             ; preds = %1535
  %1541 = zext i32 %1538 to i64
  %1542 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %1541
  %1543 = load i32, ptr %1542, align 4, !tbaa !103
  %1544 = add nsw i32 %1543, -1
  store i32 %1544, ptr %1542, align 4, !tbaa !103
  br label %1545

1545:                                             ; preds = %1540, %1535
  %1546 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 40
  %1547 = load ptr, ptr %1546, align 8, !tbaa !498
  %1548 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 39
  %1549 = load ptr, ptr %1548, align 8, !tbaa !497
  %1550 = icmp eq ptr %1547, null
  %1551 = getelementptr inbounds %struct.ira_allocno, ptr %1547, i64 0, i32 39
  %1552 = select i1 %1550, ptr @uncolorable_allocno_bucket, ptr %1551, !prof !527
  store ptr %1549, ptr %1552, align 8, !tbaa !88
  %1553 = icmp eq ptr %1549, null
  br i1 %1553, label %1556, label %1554, !prof !547

1554:                                             ; preds = %1545
  %1555 = getelementptr inbounds %struct.ira_allocno, ptr %1549, i64 0, i32 40
  store ptr %1547, ptr %1555, align 8, !tbaa !498
  br label %1556

1556:                                             ; preds = %1554, %1545
  %1557 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1558 = icmp sgt i32 %1557, 3
  %1559 = load ptr, ptr @ira_dump_file, align 8
  %1560 = icmp ne ptr %1559, null
  %1561 = select i1 %1558, i1 %1560, i1 false, !prof !183
  br i1 %1561, label %1562, label %1596, !prof !177

1562:                                             ; preds = %1556
  %1563 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 13, i64 1, ptr nonnull %1559)
  %1564 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 19
  %1565 = load ptr, ptr %1564, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %1565) #23
  %1566 = icmp eq ptr %1565, %1536
  br i1 %1566, label %1574, label %1567

1567:                                             ; preds = %1562, %1567
  %1568 = phi ptr [ %1572, %1567 ], [ %1565, %1562 ]
  %1569 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %1570 = tail call i32 @fputc(i32 43, ptr %1569)
  %1571 = getelementptr inbounds %struct.ira_allocno, ptr %1568, i64 0, i32 19
  %1572 = load ptr, ptr %1571, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %1572) #23
  %1573 = icmp eq ptr %1572, %1536
  br i1 %1573, label %1574, label %1567, !llvm.loop !266

1574:                                             ; preds = %1567, %1562
  %1575 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %1576 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 31
  %1577 = load i16, ptr %1576, align 4
  %1578 = and i16 %1577, 64
  %1579 = icmp eq i16 %1578, 0
  %1580 = select i1 %1579, ptr @.str.39, ptr @.str.38
  %1581 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 41
  %1582 = load i32, ptr %1581, align 8, !tbaa !287
  %1583 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 37
  %1584 = load i32, ptr %1583, align 8, !tbaa !489
  %1585 = load i32, ptr %1537, align 8, !tbaa !139
  %1586 = zext i32 %1585 to i64
  %1587 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 2
  %1588 = load i32, ptr %1587, align 8, !tbaa !156
  %1589 = zext i32 %1588 to i64
  %1590 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %1586, i64 %1589
  %1591 = load i32, ptr %1590, align 4, !tbaa !103
  %1592 = mul nsw i32 %1591, %1584
  %1593 = add nsw i32 %1592, 1
  %1594 = sdiv i32 %1582, %1593
  %1595 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1575, ptr noundef nonnull @.str.37, ptr noundef nonnull %1580, i32 noundef %1594, i32 noundef %1582)
  br label %1596

1596:                                             ; preds = %1556, %1574
  %1597 = getelementptr inbounds %struct.ira_allocno, ptr %1536, i64 0, i32 31
  %1598 = load i16, ptr %1597, align 4
  %1599 = or i16 %1598, 512
  store i16 %1599, ptr %1597, align 4
  tail call fastcc void @push_allocno_to_stack(ptr noundef %1536)
  br label %1385

1600:                                             ; preds = %1352, %1609
  %1601 = phi i64 [ %1610, %1609 ], [ 0, %1352 ]
  %1602 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1601
  %1603 = load i32, ptr %1602, align 4, !tbaa !103
  %1604 = zext i32 %1603 to i64
  %1605 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %1604
  %1606 = load ptr, ptr %1605, align 8, !tbaa !88
  %1607 = icmp eq ptr %1606, null
  br i1 %1607, label %1609, label %1608, !prof !405

1608:                                             ; preds = %1600
  tail call void @splay_tree_delete(ptr noundef nonnull %1606) #23
  br label %1609

1609:                                             ; preds = %1608, %1600
  %1610 = add nuw nsw i64 %1601, 1
  %1611 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %1612 = sext i32 %1611 to i64
  %1613 = icmp slt i64 %1610, %1612
  br i1 %1613, label %1600, label %1614, !prof !511, !llvm.loop !548

1614:                                             ; preds = %1609, %1352
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %2) #23
  br label %1615

1615:                                             ; preds = %1691, %1614
  %1616 = load ptr, ptr @allocno_stack_vec, align 8
  %1617 = icmp eq ptr %1616, null
  br i1 %1617, label %1620, label %1618, !prof !549

1618:                                             ; preds = %1615
  %1619 = load i32, ptr %1616, align 8, !tbaa !265
  br label %1620

1620:                                             ; preds = %1618, %1615
  %1621 = phi i32 [ %1619, %1618 ], [ 0, %1615 ]
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1695, label %1623, !prof !332

1623:                                             ; preds = %1620
  %1624 = load i32, ptr %1616, align 8, !tbaa !265
  %1625 = add i32 %1624, -1
  store i32 %1625, ptr %1616, align 8, !tbaa !265
  %1626 = zext i32 %1625 to i64
  %1627 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %1616, i64 0, i32 2, i64 %1626
  %1628 = load ptr, ptr %1627, align 8, !tbaa !88
  %1629 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 9
  %1630 = load i32, ptr %1629, align 8, !tbaa !139
  %1631 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1632 = icmp sgt i32 %1631, 3
  %1633 = load ptr, ptr @ira_dump_file, align 8
  %1634 = icmp ne ptr %1633, null
  %1635 = select i1 %1632, i1 %1634, i1 false, !prof !183
  br i1 %1635, label %1636, label %1651, !prof !177

1636:                                             ; preds = %1623
  %1637 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 13, i64 1, ptr nonnull %1633)
  %1638 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 19
  %1639 = load ptr, ptr %1638, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %1639) #23
  %1640 = icmp eq ptr %1639, %1628
  br i1 %1640, label %1648, label %1641

1641:                                             ; preds = %1636, %1641
  %1642 = phi ptr [ %1646, %1641 ], [ %1639, %1636 ]
  %1643 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %1644 = tail call i32 @fputc(i32 43, ptr %1643)
  %1645 = getelementptr inbounds %struct.ira_allocno, ptr %1642, i64 0, i32 19
  %1646 = load ptr, ptr %1645, align 8, !tbaa !178
  tail call void @ira_print_expanded_allocno(ptr noundef %1646) #23
  %1647 = icmp eq ptr %1646, %1628
  br i1 %1647, label %1648, label %1641, !llvm.loop !266

1648:                                             ; preds = %1641, %1636
  %1649 = load ptr, ptr @ira_dump_file, align 8, !tbaa !88
  %1650 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 5, i64 1, ptr %1649)
  br label %1651

1651:                                             ; preds = %1648, %1623
  %1652 = icmp eq i32 %1630, 0
  br i1 %1652, label %1653, label %1665, !prof !177

1653:                                             ; preds = %1651
  %1654 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 3
  store i32 -1, ptr %1654, align 4, !tbaa !140
  %1655 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 31
  %1656 = load i16, ptr %1655, align 4
  %1657 = or i16 %1656, 256
  store i16 %1657, ptr %1655, align 4
  %1658 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1659 = icmp sgt i32 %1658, 3
  %1660 = load ptr, ptr @ira_dump_file, align 8
  %1661 = icmp ne ptr %1660, null
  %1662 = select i1 %1659, i1 %1661, i1 false
  br i1 %1662, label %1663, label %1691

1663:                                             ; preds = %1653
  %1664 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 14, i64 1, ptr nonnull %1660)
  br label %1691

1665:                                             ; preds = %1651
  %1666 = tail call fastcc zeroext i8 @assign_hard_reg(ptr noundef %1628, i8 noundef zeroext 0), !range !151
  %1667 = icmp eq i8 %1666, 0
  br i1 %1667, label %1678, label %1668, !prof !259

1668:                                             ; preds = %1665
  %1669 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1670 = icmp sgt i32 %1669, 3
  %1671 = load ptr, ptr @ira_dump_file, align 8
  %1672 = icmp ne ptr %1671, null
  %1673 = select i1 %1670, i1 %1672, i1 false, !prof !440
  br i1 %1673, label %1674, label %1691, !prof !377

1674:                                             ; preds = %1668
  %1675 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 3
  %1676 = load i32, ptr %1675, align 4, !tbaa !140
  %1677 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1671, ptr noundef nonnull @.str.41, i32 noundef %1676)
  br label %1691

1678:                                             ; preds = %1665
  %1679 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 31
  %1680 = load i16, ptr %1679, align 4
  %1681 = and i16 %1680, 256
  %1682 = icmp eq i16 %1681, 0
  br i1 %1682, label %1691, label %1683, !prof !261

1683:                                             ; preds = %1678
  %1684 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !103
  %1685 = icmp sgt i32 %1684, 3
  %1686 = load ptr, ptr @ira_dump_file, align 8
  %1687 = icmp ne ptr %1686, null
  %1688 = select i1 %1685, i1 %1687, i1 false, !prof !260
  br i1 %1688, label %1689, label %1691, !prof !261

1689:                                             ; preds = %1683
  %1690 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 6, i64 1, ptr nonnull %1686)
  br label %1691

1691:                                             ; preds = %1689, %1683, %1678, %1674, %1668, %1663, %1653
  %1692 = getelementptr inbounds %struct.ira_allocno, ptr %1628, i64 0, i32 31
  %1693 = load i16, ptr %1692, align 4
  %1694 = or i16 %1693, 128
  store i16 %1694, ptr %1692, align 4
  br label %1615, !llvm.loop !550

1695:                                             ; preds = %1620, %650, %602
  %1696 = load i32, ptr @flag_ira_coalesce, align 4, !tbaa !103
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %1781, label %1698, !prof !435

1698:                                             ; preds = %1695
  %1699 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %1700 = load ptr, ptr %1699, align 8, !tbaa !319
  %1701 = icmp eq ptr %1700, null
  %1702 = select i1 %1701, ptr @bitmap_zero_bits, ptr %1700
  %1703 = getelementptr inbounds %struct.bitmap_element_def, ptr %1702, i64 0, i32 2
  %1704 = load i32, ptr %1703, align 8, !tbaa !321
  %1705 = shl i32 %1704, 7
  %1706 = getelementptr inbounds %struct.bitmap_element_def, ptr %1702, i64 0, i32 3, i64 0
  %1707 = load i64, ptr %1706, align 8, !tbaa !146
  %1708 = icmp eq i64 %1707, 0
  %1709 = zext i1 %1708 to i32
  %1710 = or disjoint i32 %1705, %1709
  %1711 = load ptr, ptr @ira_allocnos, align 8
  br label %1712

1712:                                             ; preds = %1773, %1698
  %1713 = phi i64 [ %1707, %1698 ], [ %1779, %1773 ]
  %1714 = phi i32 [ %1710, %1698 ], [ %1780, %1773 ]
  %1715 = phi i32 [ 0, %1698 ], [ %1770, %1773 ]
  %1716 = phi ptr [ %1702, %1698 ], [ %1771, %1773 ]
  %1717 = icmp eq i64 %1713, 0
  br i1 %1717, label %1732, label %1718

1718:                                             ; preds = %1746, %1712
  %1719 = phi i64 [ %1713, %1712 ], [ %1751, %1746 ]
  %1720 = phi i32 [ %1714, %1712 ], [ %1748, %1746 ]
  %1721 = phi i32 [ %1715, %1712 ], [ %1747, %1746 ]
  %1722 = phi ptr [ %1716, %1712 ], [ %1739, %1746 ]
  %1723 = and i64 %1719, 1
  %1724 = icmp eq i64 %1723, 0
  br i1 %1724, label %1725, label %1767

1725:                                             ; preds = %1718, %1725
  %1726 = phi i32 [ %1729, %1725 ], [ %1720, %1718 ]
  %1727 = phi i64 [ %1728, %1725 ], [ %1719, %1718 ]
  %1728 = lshr exact i64 %1727, 1
  %1729 = add i32 %1726, 1
  %1730 = and i64 %1727, 2
  %1731 = icmp eq i64 %1730, 0
  br i1 %1731, label %1725, label %1767, !llvm.loop !324

1732:                                             ; preds = %1712
  %1733 = add i32 %1714, 63
  %1734 = and i32 %1733, -64
  %1735 = add i32 %1715, 1
  br label %1736

1736:                                             ; preds = %1763, %1732
  %1737 = phi i64 [ %1713, %1732 ], [ %1758, %1763 ]
  %1738 = phi i32 [ %1734, %1732 ], [ %1766, %1763 ]
  %1739 = phi ptr [ %1716, %1732 ], [ %1761, %1763 ]
  %1740 = phi i32 [ %1735, %1732 ], [ 0, %1763 ]
  %1741 = icmp eq i32 %1740, 2
  br i1 %1741, label %1757, label %1742

1742:                                             ; preds = %1736
  %1743 = add i32 %1738, 128
  %1744 = shl i32 %1740, 6
  %1745 = sub i32 %1743, %1744
  br label %1746

1746:                                             ; preds = %1742, %1753
  %1747 = phi i32 [ %1755, %1753 ], [ %1740, %1742 ]
  %1748 = phi i32 [ %1754, %1753 ], [ %1738, %1742 ]
  %1749 = zext i32 %1747 to i64
  %1750 = getelementptr inbounds %struct.bitmap_element_def, ptr %1739, i64 0, i32 3, i64 %1749
  %1751 = load i64, ptr %1750, align 8, !tbaa !146
  %1752 = icmp eq i64 %1751, 0
  br i1 %1752, label %1753, label %1718

1753:                                             ; preds = %1746
  %1754 = add i32 %1748, 64
  %1755 = add i32 %1747, 1
  %1756 = icmp eq i32 %1755, 2
  br i1 %1756, label %1757, label %1746, !llvm.loop !328

1757:                                             ; preds = %1753, %1736
  %1758 = phi i64 [ %1737, %1736 ], [ %1751, %1753 ]
  %1759 = phi i32 [ %1738, %1736 ], [ %1745, %1753 ]
  %1760 = phi i32 [ %1740, %1736 ], [ 2, %1753 ]
  %1761 = load ptr, ptr %1739, align 8, !tbaa !329
  %1762 = icmp eq ptr %1761, null
  br i1 %1762, label %1767, label %1763

1763:                                             ; preds = %1757
  %1764 = getelementptr inbounds %struct.bitmap_element_def, ptr %1761, i64 0, i32 2
  %1765 = load i32, ptr %1764, align 8, !tbaa !321
  %1766 = shl i32 %1765, 7
  br label %1736, !llvm.loop !331

1767:                                             ; preds = %1757, %1725, %1718
  %1768 = phi i64 [ %1719, %1718 ], [ %1728, %1725 ], [ %1758, %1757 ]
  %1769 = phi i32 [ %1720, %1718 ], [ %1729, %1725 ], [ %1759, %1757 ]
  %1770 = phi i32 [ %1721, %1718 ], [ %1721, %1725 ], [ %1760, %1757 ]
  %1771 = phi ptr [ %1722, %1718 ], [ %1722, %1725 ], [ %1761, %1757 ]
  %1772 = phi i1 [ false, %1718 ], [ false, %1725 ], [ true, %1757 ]
  br i1 %1772, label %1781, label %1773

1773:                                             ; preds = %1767
  %1774 = zext i32 %1769 to i64
  %1775 = getelementptr inbounds ptr, ptr %1711, i64 %1774
  %1776 = load ptr, ptr %1775, align 8, !tbaa !88
  %1777 = getelementptr inbounds %struct.ira_allocno, ptr %1776, i64 0, i32 18
  store ptr %1776, ptr %1777, align 8, !tbaa !206
  %1778 = getelementptr inbounds %struct.ira_allocno, ptr %1776, i64 0, i32 19
  store ptr %1776, ptr %1778, align 8, !tbaa !178
  %1779 = lshr i64 %1768, 1
  %1780 = add i32 %1769, 1
  br label %1712, !llvm.loop !551

1781:                                             ; preds = %1767, %1695
  %1782 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  tail call void @ira_free_bitmap(ptr noundef %1782) #23
  store i1 false, ptr @allocno_coalesced_p, align 1
  %1783 = load i32, ptr @flag_ira_region, align 4
  %1784 = add i32 %1783, -1
  %1785 = icmp ult i32 %1784, 2
  br i1 %1785, label %1786, label %1905, !prof !435

1786:                                             ; preds = %1781
  %1787 = load ptr, ptr %384, align 8, !tbaa !471
  %1788 = load ptr, ptr %1787, align 8, !tbaa !319
  %1789 = icmp eq ptr %1788, null
  %1790 = select i1 %1789, ptr @bitmap_zero_bits, ptr %1788, !prof !284
  %1791 = getelementptr inbounds %struct.bitmap_element_def, ptr %1790, i64 0, i32 2
  %1792 = load i32, ptr %1791, align 8, !tbaa !321
  %1793 = shl i32 %1792, 7
  %1794 = getelementptr inbounds %struct.bitmap_element_def, ptr %1790, i64 0, i32 3, i64 0
  %1795 = load i64, ptr %1794, align 8, !tbaa !146
  %1796 = icmp eq i64 %1795, 0
  %1797 = zext i1 %1796 to i32
  %1798 = or disjoint i32 %1793, %1797
  br label %1799

1799:                                             ; preds = %1901, %1786
  %1800 = phi i64 [ %1795, %1786 ], [ %1903, %1901 ]
  %1801 = phi i32 [ %1798, %1786 ], [ %1904, %1901 ]
  %1802 = phi i32 [ 0, %1786 ], [ %1858, %1901 ]
  %1803 = phi ptr [ %1790, %1786 ], [ %1859, %1901 ]
  %1804 = phi i32 [ -1, %1786 ], [ %1902, %1901 ]
  %1805 = icmp eq i64 %1800, 0
  br i1 %1805, label %1820, label %1806, !prof !323

1806:                                             ; preds = %1834, %1799
  %1807 = phi i64 [ %1800, %1799 ], [ %1839, %1834 ]
  %1808 = phi i32 [ %1801, %1799 ], [ %1836, %1834 ]
  %1809 = phi i32 [ %1802, %1799 ], [ %1835, %1834 ]
  %1810 = phi ptr [ %1803, %1799 ], [ %1827, %1834 ]
  %1811 = and i64 %1807, 1
  %1812 = icmp eq i64 %1811, 0
  br i1 %1812, label %1813, label %1855, !prof !314

1813:                                             ; preds = %1806, %1813
  %1814 = phi i32 [ %1817, %1813 ], [ %1808, %1806 ]
  %1815 = phi i64 [ %1816, %1813 ], [ %1807, %1806 ]
  %1816 = lshr exact i64 %1815, 1
  %1817 = add i32 %1814, 1
  %1818 = and i64 %1815, 2
  %1819 = icmp eq i64 %1818, 0
  br i1 %1819, label %1813, label %1855, !prof !314, !llvm.loop !324

1820:                                             ; preds = %1799
  %1821 = add i32 %1801, 63
  %1822 = and i32 %1821, -64
  %1823 = add i32 %1802, 1
  br label %1824

1824:                                             ; preds = %1851, %1820
  %1825 = phi i64 [ %1800, %1820 ], [ %1846, %1851 ]
  %1826 = phi i32 [ %1822, %1820 ], [ %1854, %1851 ]
  %1827 = phi ptr [ %1803, %1820 ], [ %1849, %1851 ]
  %1828 = phi i32 [ %1823, %1820 ], [ 0, %1851 ]
  %1829 = icmp eq i32 %1828, 2
  br i1 %1829, label %1845, label %1830, !prof !325

1830:                                             ; preds = %1824
  %1831 = add i32 %1826, 128
  %1832 = shl i32 %1828, 6
  %1833 = sub i32 %1831, %1832
  br label %1834

1834:                                             ; preds = %1830, %1841
  %1835 = phi i32 [ %1843, %1841 ], [ %1828, %1830 ]
  %1836 = phi i32 [ %1842, %1841 ], [ %1826, %1830 ]
  %1837 = zext i32 %1835 to i64
  %1838 = getelementptr inbounds %struct.bitmap_element_def, ptr %1827, i64 0, i32 3, i64 %1837
  %1839 = load i64, ptr %1838, align 8, !tbaa !146
  %1840 = icmp eq i64 %1839, 0
  br i1 %1840, label %1841, label %1806, !prof !326

1841:                                             ; preds = %1834
  %1842 = add i32 %1836, 64
  %1843 = add i32 %1835, 1
  %1844 = icmp eq i32 %1843, 2
  br i1 %1844, label %1845, label %1834, !prof !327, !llvm.loop !328

1845:                                             ; preds = %1841, %1824
  %1846 = phi i64 [ %1825, %1824 ], [ %1839, %1841 ]
  %1847 = phi i32 [ %1826, %1824 ], [ %1833, %1841 ]
  %1848 = phi i32 [ %1828, %1824 ], [ 2, %1841 ]
  %1849 = load ptr, ptr %1827, align 8, !tbaa !329
  %1850 = icmp eq ptr %1849, null
  br i1 %1850, label %1855, label %1851, !prof !330

1851:                                             ; preds = %1845
  %1852 = getelementptr inbounds %struct.bitmap_element_def, ptr %1849, i64 0, i32 2
  %1853 = load i32, ptr %1852, align 8, !tbaa !321
  %1854 = shl i32 %1853, 7
  br label %1824, !llvm.loop !331

1855:                                             ; preds = %1845, %1813, %1806
  %1856 = phi i64 [ %1807, %1806 ], [ %1816, %1813 ], [ %1846, %1845 ]
  %1857 = phi i32 [ %1808, %1806 ], [ %1817, %1813 ], [ %1847, %1845 ]
  %1858 = phi i32 [ %1809, %1806 ], [ %1809, %1813 ], [ %1848, %1845 ]
  %1859 = phi ptr [ %1810, %1806 ], [ %1810, %1813 ], [ %1849, %1845 ]
  %1860 = phi i1 [ false, %1806 ], [ false, %1813 ], [ true, %1845 ]
  br i1 %1860, label %1905, label %1861, !prof !332

1861:                                             ; preds = %1855
  %1862 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %1863 = zext i32 %1857 to i64
  %1864 = getelementptr inbounds ptr, ptr %1862, i64 %1863
  %1865 = load ptr, ptr %1864, align 8, !tbaa !88
  %1866 = getelementptr inbounds %struct.ira_allocno, ptr %1865, i64 0, i32 17
  %1867 = load ptr, ptr %1866, align 8, !tbaa !437
  %1868 = icmp eq ptr %1867, null
  br i1 %1868, label %1901, label %1869, !prof !183

1869:                                             ; preds = %1861
  %1870 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %1871 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1870, i32 noundef %1857) #23
  %1872 = load i32, ptr @flag_ira_region, align 4, !tbaa !103
  %1873 = icmp eq i32 %1872, 2
  br i1 %1873, label %1874, label %1901

1874:                                             ; preds = %1869
  %1875 = getelementptr inbounds %struct.ira_allocno, ptr %1865, i64 0, i32 9
  %1876 = load i32, ptr %1875, align 8, !tbaa !139
  %1877 = zext i32 %1876 to i64
  %1878 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %1877
  %1879 = load i32, ptr %1878, align 4, !tbaa !103
  %1880 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %1877
  %1881 = load i32, ptr %1880, align 4, !tbaa !103
  %1882 = icmp sgt i32 %1879, %1881
  br i1 %1882, label %1901, label %1883

1883:                                             ; preds = %1874
  %1884 = getelementptr inbounds %struct.ira_allocno, ptr %1865, i64 0, i32 3
  %1885 = load i32, ptr %1884, align 4, !tbaa !140
  %1886 = icmp sgt i32 %1885, -1
  br i1 %1886, label %1887, label %1892

1887:                                             ; preds = %1883
  %1888 = zext nneg i32 %1885 to i64
  %1889 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %1877, i64 %1888
  %1890 = load i16, ptr %1889, align 2, !tbaa !166
  %1891 = sext i16 %1890 to i32
  br label %1892

1892:                                             ; preds = %1887, %1883
  %1893 = phi i32 [ %1891, %1887 ], [ %1804, %1883 ]
  %1894 = load ptr, ptr %1866, align 8, !tbaa !437
  %1895 = getelementptr inbounds %struct.ira_allocno, ptr %1894, i64 0, i32 3
  store i32 %1885, ptr %1895, align 4, !tbaa !140
  %1896 = getelementptr inbounds %struct.ira_allocno, ptr %1894, i64 0, i32 31
  %1897 = load i16, ptr %1896, align 4
  %1898 = or i16 %1897, 256
  store i16 %1898, ptr %1896, align 4
  br i1 %1886, label %1899, label %1900

1899:                                             ; preds = %1892
  tail call fastcc void @update_copy_costs(ptr noundef %1894, i8 noundef zeroext 1)
  br label %1900

1900:                                             ; preds = %1899, %1892
  tail call void @ira_free_allocno_updated_costs(ptr noundef %1894) #23
  br label %1901

1901:                                             ; preds = %1869, %1874, %1900, %1861
  %1902 = phi i32 [ %1804, %1861 ], [ %1893, %1900 ], [ %1804, %1874 ], [ %1804, %1869 ]
  %1903 = lshr i64 %1856, 1
  %1904 = add i32 %1857, 1
  br label %1799, !llvm.loop !552

1905:                                             ; preds = %1855, %1781
  %1906 = phi i32 [ -1, %1781 ], [ %1804, %1855 ]
  %1907 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  %1908 = load ptr, ptr %1907, align 8, !tbaa !88
  %1909 = icmp eq ptr %1908, null
  br i1 %1909, label %2173, label %1910, !prof !339

1910:                                             ; preds = %1905, %2169
  %1911 = phi ptr [ %2171, %2169 ], [ %1908, %1905 ]
  %1912 = phi i32 [ %1931, %2169 ], [ %1906, %1905 ]
  %1913 = load ptr, ptr @consideration_allocno_bitmap, align 8, !tbaa !88
  %1914 = load ptr, ptr %1913, align 8, !tbaa !319
  %1915 = icmp eq ptr %1914, null
  %1916 = select i1 %1915, ptr @bitmap_zero_bits, ptr %1914
  %1917 = getelementptr inbounds %struct.bitmap_element_def, ptr %1916, i64 0, i32 2
  %1918 = load i32, ptr %1917, align 8, !tbaa !321
  %1919 = shl i32 %1918, 7
  %1920 = getelementptr inbounds %struct.bitmap_element_def, ptr %1916, i64 0, i32 3, i64 0
  %1921 = load i64, ptr %1920, align 8, !tbaa !146
  %1922 = icmp eq i64 %1921, 0
  %1923 = zext i1 %1922 to i32
  %1924 = or disjoint i32 %1919, %1923
  %1925 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1911, i64 0, i32 9
  br label %1926

1926:                                             ; preds = %2166, %1910
  %1927 = phi i64 [ %1921, %1910 ], [ %2167, %2166 ]
  %1928 = phi i32 [ %1924, %1910 ], [ %2168, %2166 ]
  %1929 = phi i32 [ 0, %1910 ], [ %1985, %2166 ]
  %1930 = phi ptr [ %1916, %1910 ], [ %1986, %2166 ]
  %1931 = phi i32 [ %1912, %1910 ], [ %2007, %2166 ]
  %1932 = icmp eq i64 %1927, 0
  br i1 %1932, label %1947, label %1933

1933:                                             ; preds = %1961, %1926
  %1934 = phi i64 [ %1927, %1926 ], [ %1966, %1961 ]
  %1935 = phi i32 [ %1928, %1926 ], [ %1963, %1961 ]
  %1936 = phi i32 [ %1929, %1926 ], [ %1962, %1961 ]
  %1937 = phi ptr [ %1930, %1926 ], [ %1954, %1961 ]
  %1938 = and i64 %1934, 1
  %1939 = icmp eq i64 %1938, 0
  br i1 %1939, label %1940, label %1982

1940:                                             ; preds = %1933, %1940
  %1941 = phi i32 [ %1944, %1940 ], [ %1935, %1933 ]
  %1942 = phi i64 [ %1943, %1940 ], [ %1934, %1933 ]
  %1943 = lshr exact i64 %1942, 1
  %1944 = add i32 %1941, 1
  %1945 = and i64 %1942, 2
  %1946 = icmp eq i64 %1945, 0
  br i1 %1946, label %1940, label %1982, !llvm.loop !324

1947:                                             ; preds = %1926
  %1948 = add i32 %1928, 63
  %1949 = and i32 %1948, -64
  %1950 = add i32 %1929, 1
  br label %1951

1951:                                             ; preds = %1978, %1947
  %1952 = phi i64 [ %1927, %1947 ], [ %1973, %1978 ]
  %1953 = phi i32 [ %1949, %1947 ], [ %1981, %1978 ]
  %1954 = phi ptr [ %1930, %1947 ], [ %1976, %1978 ]
  %1955 = phi i32 [ %1950, %1947 ], [ 0, %1978 ]
  %1956 = icmp eq i32 %1955, 2
  br i1 %1956, label %1972, label %1957

1957:                                             ; preds = %1951
  %1958 = add i32 %1953, 128
  %1959 = shl i32 %1955, 6
  %1960 = sub i32 %1958, %1959
  br label %1961

1961:                                             ; preds = %1957, %1968
  %1962 = phi i32 [ %1970, %1968 ], [ %1955, %1957 ]
  %1963 = phi i32 [ %1969, %1968 ], [ %1953, %1957 ]
  %1964 = zext i32 %1962 to i64
  %1965 = getelementptr inbounds %struct.bitmap_element_def, ptr %1954, i64 0, i32 3, i64 %1964
  %1966 = load i64, ptr %1965, align 8, !tbaa !146
  %1967 = icmp eq i64 %1966, 0
  br i1 %1967, label %1968, label %1933

1968:                                             ; preds = %1961
  %1969 = add i32 %1963, 64
  %1970 = add i32 %1962, 1
  %1971 = icmp eq i32 %1970, 2
  br i1 %1971, label %1972, label %1961, !llvm.loop !328

1972:                                             ; preds = %1968, %1951
  %1973 = phi i64 [ %1952, %1951 ], [ %1966, %1968 ]
  %1974 = phi i32 [ %1953, %1951 ], [ %1960, %1968 ]
  %1975 = phi i32 [ %1955, %1951 ], [ 2, %1968 ]
  %1976 = load ptr, ptr %1954, align 8, !tbaa !329
  %1977 = icmp eq ptr %1976, null
  br i1 %1977, label %1982, label %1978

1978:                                             ; preds = %1972
  %1979 = getelementptr inbounds %struct.bitmap_element_def, ptr %1976, i64 0, i32 2
  %1980 = load i32, ptr %1979, align 8, !tbaa !321
  %1981 = shl i32 %1980, 7
  br label %1951, !llvm.loop !331

1982:                                             ; preds = %1972, %1940, %1933
  %1983 = phi i64 [ %1934, %1933 ], [ %1943, %1940 ], [ %1973, %1972 ]
  %1984 = phi i32 [ %1935, %1933 ], [ %1944, %1940 ], [ %1974, %1972 ]
  %1985 = phi i32 [ %1936, %1933 ], [ %1936, %1940 ], [ %1975, %1972 ]
  %1986 = phi ptr [ %1937, %1933 ], [ %1937, %1940 ], [ %1976, %1972 ]
  %1987 = phi i1 [ false, %1933 ], [ false, %1940 ], [ true, %1972 ]
  br i1 %1987, label %2169, label %1988

1988:                                             ; preds = %1982
  %1989 = load ptr, ptr @ira_allocnos, align 8, !tbaa !88
  %1990 = zext i32 %1984 to i64
  %1991 = getelementptr inbounds ptr, ptr %1989, i64 %1990
  %1992 = load ptr, ptr %1991, align 8, !tbaa !88
  %1993 = getelementptr inbounds %struct.ira_allocno, ptr %1992, i64 0, i32 2
  %1994 = load i32, ptr %1993, align 8, !tbaa !156
  %1995 = getelementptr inbounds %struct.ira_allocno, ptr %1992, i64 0, i32 9
  %1996 = load i32, ptr %1995, align 8, !tbaa !139
  %1997 = getelementptr inbounds %struct.ira_allocno, ptr %1992, i64 0, i32 3
  %1998 = load i32, ptr %1997, align 4, !tbaa !140
  %1999 = icmp sgt i32 %1998, -1
  br i1 %1999, label %2000, label %2006

2000:                                             ; preds = %1988
  %2001 = zext i32 %1996 to i64
  %2002 = zext nneg i32 %1998 to i64
  %2003 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %2001, i64 %2002
  %2004 = load i16, ptr %2003, align 2, !tbaa !166
  %2005 = sext i16 %2004 to i32
  br label %2006

2006:                                             ; preds = %2000, %1988
  %2007 = phi i32 [ %2005, %2000 ], [ %1931, %1988 ]
  %2008 = getelementptr inbounds %struct.ira_allocno, ptr %1992, i64 0, i32 1
  %2009 = load i32, ptr %2008, align 4, !tbaa !141
  %2010 = load ptr, ptr %1925, align 8, !tbaa !445
  %2011 = sext i32 %2009 to i64
  %2012 = getelementptr inbounds ptr, ptr %2010, i64 %2011
  %2013 = load ptr, ptr %2012, align 8, !tbaa !88
  %2014 = icmp eq ptr %2013, null
  br i1 %2014, label %2166, label %2015

2015:                                             ; preds = %2006
  %2016 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 16
  %2017 = load ptr, ptr %2016, align 8, !tbaa !438
  %2018 = icmp eq ptr %2017, null
  br i1 %2018, label %2019, label %2166

2019:                                             ; preds = %2015
  %2020 = load i32, ptr @flag_ira_region, align 4, !tbaa !103
  %2021 = icmp eq i32 %2020, 2
  br i1 %2021, label %2022, label %2039

2022:                                             ; preds = %2019
  %2023 = zext i32 %1996 to i64
  %2024 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %2023
  %2025 = load i32, ptr %2024, align 4, !tbaa !103
  %2026 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %2023
  %2027 = load i32, ptr %2026, align 4, !tbaa !103
  %2028 = icmp sgt i32 %2025, %2027
  br i1 %2028, label %2039, label %2029

2029:                                             ; preds = %2022
  %2030 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 31
  %2031 = load i16, ptr %2030, align 4
  %2032 = and i16 %2031, 256
  %2033 = icmp eq i16 %2032, 0
  br i1 %2033, label %2034, label %2166

2034:                                             ; preds = %2029
  %2035 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 3
  store i32 %1998, ptr %2035, align 4, !tbaa !140
  %2036 = or disjoint i16 %2031, 256
  store i16 %2036, ptr %2030, align 4
  br i1 %1999, label %2037, label %2038

2037:                                             ; preds = %2034
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %2013, i8 noundef zeroext 1)
  br label %2038

2038:                                             ; preds = %2037, %2034
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %2013) #23
  br label %2166

2039:                                             ; preds = %2022, %2019
  %2040 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %1911, i32 noundef %2009, i8 noundef zeroext 1), !range !446
  %2041 = tail call i32 @ira_loop_edge_freq(ptr noundef nonnull %1911, i32 noundef %2009, i8 noundef zeroext 0), !range !446
  %2042 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !88
  %2043 = getelementptr inbounds i8, ptr %2042, i64 %2011
  %2044 = load i8, ptr %2043, align 1, !tbaa !99
  %2045 = icmp eq i8 %2044, 0
  br i1 %2045, label %2046, label %2051

2046:                                             ; preds = %2039
  %2047 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !88
  %2048 = getelementptr inbounds ptr, ptr %2047, i64 %2011
  %2049 = load ptr, ptr %2048, align 8, !tbaa !88
  %2050 = icmp eq ptr %2049, null
  br i1 %2050, label %2061, label %2051

2051:                                             ; preds = %2046, %2039
  %2052 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 31
  %2053 = load i16, ptr %2052, align 4
  %2054 = and i16 %2053, 256
  %2055 = icmp eq i16 %2054, 0
  br i1 %2055, label %2056, label %2166

2056:                                             ; preds = %2051
  %2057 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 3
  store i32 %1998, ptr %2057, align 4, !tbaa !140
  %2058 = or disjoint i16 %2053, 256
  store i16 %2058, ptr %2052, align 4
  br i1 %1999, label %2059, label %2060

2059:                                             ; preds = %2056
  tail call fastcc void @update_copy_costs(ptr noundef nonnull %2013, i8 noundef zeroext 1)
  br label %2060

2060:                                             ; preds = %2059, %2056
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %2013) #23
  br label %2166

2061:                                             ; preds = %2046
  %2062 = icmp slt i32 %1998, 0
  br i1 %2062, label %2063, label %2078

2063:                                             ; preds = %2061
  %2064 = zext i32 %1994 to i64
  %2065 = zext i32 %1996 to i64
  %2066 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2064, i64 %2065
  %2067 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2064, i64 %2065, i64 1
  %2068 = load i16, ptr %2067, align 2, !tbaa !166
  %2069 = sext i16 %2068 to i32
  %2070 = load i16, ptr %2066, align 4, !tbaa !166
  %2071 = sext i16 %2070 to i32
  %2072 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 13
  %2073 = load i32, ptr %2072, align 8, !tbaa !179
  %2074 = mul i32 %2041, %2069
  %2075 = mul i32 %2040, %2071
  %2076 = add i32 %2075, %2074
  %2077 = sub i32 %2073, %2076
  store i32 %2077, ptr %2072, align 8, !tbaa !179
  br label %2166

2078:                                             ; preds = %2061
  %2079 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 9
  %2080 = load i32, ptr %2079, align 8, !tbaa !139
  %2081 = zext i32 %1994 to i64
  %2082 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %2081
  %2083 = load ptr, ptr %2082, align 8, !tbaa !88
  %2084 = icmp eq ptr %2083, null
  br i1 %2084, label %2085, label %2086

2085:                                             ; preds = %2078
  tail call void @ira_init_register_move_cost(i32 noundef %1994) #23
  br label %2086

2086:                                             ; preds = %2078, %2085
  %2087 = load ptr, ptr %2082, align 8, !tbaa !88
  %2088 = zext i32 %1996 to i64
  %2089 = getelementptr inbounds [27 x i16], ptr %2087, i64 %2088, i64 %2088
  %2090 = load i16, ptr %2089, align 2, !tbaa !166
  %2091 = zext i16 %2090 to i32
  %2092 = add nsw i32 %2041, %2040
  %2093 = mul nsw i32 %2092, %2091
  %2094 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 34
  %2095 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 11
  %2096 = load i32, ptr %2095, align 8, !tbaa !184
  %2097 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 33
  %2098 = load ptr, ptr %2097, align 8, !tbaa !167
  %2099 = load ptr, ptr %2094, align 8, !tbaa !88
  %2100 = icmp eq ptr %2099, null
  br i1 %2100, label %2101, label %2119

2101:                                             ; preds = %2086
  %2102 = tail call ptr @ira_allocate_cost_vector(i32 noundef %2080) #23
  store ptr %2102, ptr %2094, align 8, !tbaa !88
  %2103 = zext i32 %2080 to i64
  %2104 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %2103
  %2105 = load i32, ptr %2104, align 4, !tbaa !103
  %2106 = icmp eq ptr %2098, null
  br i1 %2106, label %2107, label %2111

2107:                                             ; preds = %2101
  %2108 = icmp sgt i32 %2105, 0
  br i1 %2108, label %2109, label %2119

2109:                                             ; preds = %2107
  %2110 = zext nneg i32 %2105 to i64
  br label %2114

2111:                                             ; preds = %2101
  %2112 = sext i32 %2105 to i64
  %2113 = shl nsw i64 %2112, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2102, ptr nonnull align 4 %2098, i64 %2113, i1 false)
  br label %2119

2114:                                             ; preds = %2109, %2114
  %2115 = phi i64 [ 0, %2109 ], [ %2117, %2114 ]
  %2116 = getelementptr inbounds i32, ptr %2102, i64 %2115
  store i32 %2096, ptr %2116, align 4, !tbaa !103
  %2117 = add nuw nsw i64 %2115, 1
  %2118 = icmp eq i64 %2117, %2110
  br i1 %2118, label %2119, label %2114, !llvm.loop !168

2119:                                             ; preds = %2114, %2107, %2086, %2111
  %2120 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 36
  %2121 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 35
  %2122 = load ptr, ptr %2121, align 8, !tbaa !169
  %2123 = load ptr, ptr %2120, align 8, !tbaa !88
  %2124 = icmp eq ptr %2123, null
  br i1 %2124, label %2125, label %2139

2125:                                             ; preds = %2119
  %2126 = tail call ptr @ira_allocate_cost_vector(i32 noundef %2080) #23
  store ptr %2126, ptr %2120, align 8, !tbaa !88
  %2127 = zext i32 %2080 to i64
  %2128 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %2127
  %2129 = load i32, ptr %2128, align 4, !tbaa !103
  %2130 = icmp eq ptr %2122, null
  br i1 %2130, label %2131, label %2136

2131:                                             ; preds = %2125
  %2132 = icmp sgt i32 %2129, 0
  br i1 %2132, label %2133, label %2139

2133:                                             ; preds = %2131
  %2134 = zext nneg i32 %2129 to i64
  %2135 = shl nuw nsw i64 %2134, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2126, i8 0, i64 %2135, i1 false), !tbaa !103
  br label %2139

2136:                                             ; preds = %2125
  %2137 = sext i32 %2129 to i64
  %2138 = shl nsw i64 %2137, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2126, ptr nonnull align 4 %2122, i64 %2138, i1 false)
  br label %2139

2139:                                             ; preds = %2133, %2131, %2119, %2136
  %2140 = load ptr, ptr %2094, align 8, !tbaa !171
  %2141 = sext i32 %2007 to i64
  %2142 = getelementptr inbounds i32, ptr %2140, i64 %2141
  %2143 = load i32, ptr %2142, align 4, !tbaa !103
  %2144 = sub nsw i32 %2143, %2093
  store i32 %2144, ptr %2142, align 4, !tbaa !103
  %2145 = load ptr, ptr %2120, align 8, !tbaa !172
  %2146 = getelementptr inbounds i32, ptr %2145, i64 %2141
  %2147 = load i32, ptr %2146, align 4, !tbaa !103
  %2148 = sub nsw i32 %2147, %2093
  store i32 %2148, ptr %2146, align 4, !tbaa !103
  %2149 = load i32, ptr %2095, align 8, !tbaa !184
  %2150 = load i32, ptr %2142, align 4, !tbaa !103
  %2151 = icmp sgt i32 %2149, %2150
  br i1 %2151, label %2152, label %2153

2152:                                             ; preds = %2139
  store i32 %2150, ptr %2095, align 8, !tbaa !184
  br label %2153

2153:                                             ; preds = %2152, %2139
  %2154 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2081, i64 %2088
  %2155 = load i16, ptr %2154, align 4, !tbaa !166
  %2156 = sext i16 %2155 to i32
  %2157 = mul nsw i32 %2041, %2156
  %2158 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %2081, i64 %2088, i64 1
  %2159 = load i16, ptr %2158, align 2, !tbaa !166
  %2160 = sext i16 %2159 to i32
  %2161 = mul nsw i32 %2040, %2160
  %2162 = getelementptr inbounds %struct.ira_allocno, ptr %2013, i64 0, i32 13
  %2163 = load i32, ptr %2162, align 8, !tbaa !179
  %2164 = add i32 %2163, %2157
  %2165 = add i32 %2164, %2161
  store i32 %2165, ptr %2162, align 8, !tbaa !179
  br label %2166

2166:                                             ; preds = %2060, %2051, %2153, %2063, %2029, %2038, %2006, %2015
  %2167 = lshr i64 %1983, 1
  %2168 = add i32 %1984, 1
  br label %1926, !llvm.loop !553

2169:                                             ; preds = %1982
  %2170 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1911, i64 0, i32 2
  %2171 = load ptr, ptr %2170, align 8, !tbaa !88
  %2172 = icmp eq ptr %2171, null
  br i1 %2172, label %2173, label %1910, !prof !339, !llvm.loop !554

2173:                                             ; preds = %2169, %1905
  ret void
}

declare void @ira_print_disposition(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_spill_priority_compare(i64 noundef %0, i64 noundef %1) #11 !prof !87 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 41
  %6 = load i32, ptr %5, align 8, !tbaa !287
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 37
  %8 = load i32, ptr %7, align 8, !tbaa !489
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !139
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !156
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !103
  %17 = mul nsw i32 %16, %8
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %6, %18
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 41
  %21 = load i32, ptr %20, align 8, !tbaa !287
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 37
  %23 = load i32, ptr %22, align 8, !tbaa !489
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !139
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !156
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !103
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
  %41 = load i32, ptr %3, align 8, !tbaa !137
  %42 = load i32, ptr %4, align 8, !tbaa !137
  %43 = sub nsw i32 %41, %42
  br label %44

44:                                               ; preds = %37, %2, %40
  %45 = phi i32 [ %43, %40 ], [ %35, %2 ], [ %38, %37 ]
  ret i32 %45
}

; Function Attrs: cold nounwind uwtable
define internal ptr @splay_tree_allocate(i32 noundef %0, ptr nocapture readnone %1) #9 !prof !87 {
  %3 = icmp eq i32 %0, 32
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = sext i32 %0 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  br label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !88
  %9 = tail call ptr @pool_alloc(ptr noundef %8) #23
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %6, %4 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: cold nounwind uwtable
define internal void @splay_tree_free(ptr noundef %0, ptr nocapture readnone %1) #9 !prof !87 {
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !103
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %19, label %10, !llvm.loop !555

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !103
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %7

18:                                               ; preds = %10
  tail call void @ira_free(ptr noundef %0) #23
  br label %21

19:                                               ; preds = %7, %2
  %20 = load ptr, ptr @splay_tree_node_pool, align 8, !tbaa !88
  tail call void @pool_free(ptr noundef %20, ptr noundef %0) #23
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #3

declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @bucket_allocno_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 !prof !556 !PGOFuncName !557 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !139
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !139
  %9 = sub i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47, !prof !558

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %19, %11 ], [ 0, %2 ]
  %13 = phi i32 [ %22, %11 ], [ 0, %2 ]
  %14 = phi ptr [ %16, %11 ], [ %3, %2 ]
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !233
  %19 = add nsw i32 %18, %12
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 38
  %21 = load i32, ptr %20, align 4, !tbaa !490
  %22 = add nsw i32 %21, %13
  %23 = icmp eq ptr %16, %3
  br i1 %23, label %24, label %11, !prof !558, !llvm.loop !559

24:                                               ; preds = %11, %24
  %25 = phi i32 [ %32, %24 ], [ 0, %11 ]
  %26 = phi i32 [ %35, %24 ], [ 0, %11 ]
  %27 = phi ptr [ %29, %24 ], [ %4, %11 ]
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %27, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !233
  %32 = add nsw i32 %31, %25
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 38
  %34 = load i32, ptr %33, align 4, !tbaa !490
  %35 = add nsw i32 %34, %26
  %36 = icmp eq ptr %29, %4
  br i1 %36, label %37, label %24, !prof !558, !llvm.loop !559

37:                                               ; preds = %24
  %38 = sub nsw i32 %35, %22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47, !prof !560

40:                                               ; preds = %37
  %41 = sub nsw i32 %19, %32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47, !prof !561

43:                                               ; preds = %40
  %44 = load i32, ptr %4, align 8, !tbaa !137
  %45 = load i32, ptr %3, align 8, !tbaa !137
  %46 = sub nsw i32 %44, %45
  br label %47

47:                                               ; preds = %40, %37, %2, %43
  %48 = phi i32 [ %46, %43 ], [ %9, %2 ], [ %38, %37 ], [ %41, %40 ]
  ret i32 %48
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @push_allocno_to_stack(ptr noundef %0) unnamed_addr #12 !prof !174 !PGOFuncName !562 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, -129
  store i16 %4, ptr %2, align 4
  %5 = load ptr, ptr @allocno_stack_vec, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !177

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !263
  %10 = load i32, ptr %5, align 8, !tbaa !265
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14, !prof !177

12:                                               ; preds = %1, %7
  %13 = tail call ptr @vec_heap_p_reserve(ptr noundef %5, i32 noundef 1) #23
  store ptr %13, ptr @allocno_stack_vec, align 8, !tbaa !88
  br label %14

14:                                               ; preds = %7, %12
  %15 = load ptr, ptr @allocno_stack_vec, align 8, !tbaa !88
  %16 = load i32, ptr %15, align 8, !tbaa !265
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !265
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %15, i64 0, i32 2, i64 %18
  store ptr %0, ptr %19, align 8, !tbaa !88
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !139
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %294, label %23, !prof !177

23:                                               ; preds = %14
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !156
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !103
  %30 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %30, label %31, label %33, !prof !177

31:                                               ; preds = %23
  %32 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  tail call void @bitmap_clear(ptr noundef %32) #23
  br label %33

33:                                               ; preds = %31, %23
  %34 = getelementptr inbounds [27 x ptr], ptr @uncolorable_allocnos_splay_tree, i64 0, i64 %24
  br label %35

35:                                               ; preds = %292, %33
  %36 = phi ptr [ undef, %33 ], [ %130, %292 ]
  %37 = phi ptr [ %0, %33 ], [ %39, %292 ]
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !178
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 31
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !143
  %44 = and i16 %41, 2048
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %62, !prof !189

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 21
  %48 = load i32, ptr %47, align 8, !tbaa !144
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 22
  %50 = load i32, ptr %49, align 4, !tbaa !145
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %57, label %52, !prof !190

52:                                               ; preds = %46
  %53 = sub i32 %50, %48
  %54 = add i32 %53, 64
  %55 = sdiv i32 %54, 64
  %56 = shl nsw i32 %55, 3
  br label %57

57:                                               ; preds = %46, %52
  %58 = phi i32 [ %56, %52 ], [ 0, %46 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !190

60:                                               ; preds = %57
  %61 = load i64, ptr %43, align 8, !tbaa !146
  br label %62

62:                                               ; preds = %57, %60, %35
  %63 = phi i32 [ 0, %35 ], [ %58, %60 ], [ %58, %57 ]
  %64 = phi i32 [ 0, %35 ], [ %48, %60 ], [ %48, %57 ]
  %65 = phi i64 [ 0, %35 ], [ %61, %60 ], [ 0, %57 ]
  %66 = zext i1 %45 to i32
  %67 = xor i1 %45, true
  %68 = zext i1 %67 to i32
  %69 = zext i1 %45 to i64
  br label %70

70:                                               ; preds = %288, %62
  %71 = phi i32 [ 0, %62 ], [ %289, %288 ]
  %72 = phi i32 [ 0, %62 ], [ %290, %288 ]
  %73 = phi i64 [ %65, %62 ], [ %291, %288 ]
  %74 = phi ptr [ %36, %62 ], [ %135, %288 ]
  br i1 %45, label %75, label %83, !prof !191

75:                                               ; preds = %70
  %76 = icmp eq i64 %73, 0
  br i1 %76, label %77, label %92, !prof !192

77:                                               ; preds = %75
  %78 = zext i32 %63 to i64
  %79 = add i32 %72, 1
  %80 = zext i32 %79 to i64
  %81 = shl nuw nsw i64 %80, 3
  %82 = icmp ult i64 %81, %78
  br i1 %82, label %103, label %126, !prof !193

83:                                               ; preds = %70
  %84 = zext i32 %72 to i64
  %85 = getelementptr inbounds ptr, ptr %43, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !88
  %87 = icmp ne ptr %86, null
  %88 = select i1 %87, ptr %86, ptr %74, !prof !194
  %89 = zext i1 %87 to i8
  br label %126

90:                                               ; preds = %103
  %91 = shl i32 %105, 6
  br label %92

92:                                               ; preds = %90, %75
  %93 = phi i32 [ %71, %75 ], [ %91, %90 ]
  %94 = phi i32 [ %72, %75 ], [ %105, %90 ]
  %95 = phi i64 [ %73, %75 ], [ %107, %90 ]
  %96 = and i64 %95, 1
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %109, label %116, !prof !195

98:                                               ; preds = %103
  %99 = add i32 %105, 1
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 3
  %102 = icmp ult i64 %101, %78
  br i1 %102, label %103, label %124, !prof !196, !llvm.loop !147

103:                                              ; preds = %77, %98
  %104 = phi i64 [ %100, %98 ], [ %80, %77 ]
  %105 = phi i32 [ %99, %98 ], [ %79, %77 ]
  %106 = getelementptr inbounds i64, ptr %43, i64 %104
  %107 = load i64, ptr %106, align 8, !tbaa !146
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %98, label %90, !prof !197, !llvm.loop !147

109:                                              ; preds = %92, %109
  %110 = phi i64 [ %113, %109 ], [ %95, %92 ]
  %111 = phi i32 [ %112, %109 ], [ %93, %92 ]
  %112 = add i32 %111, 1
  %113 = lshr exact i64 %110, 1
  %114 = and i64 %110, 2
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %109, label %116, !prof !198, !llvm.loop !148

116:                                              ; preds = %109, %92
  %117 = phi i32 [ %93, %92 ], [ %112, %109 ]
  %118 = phi i64 [ %95, %92 ], [ %113, %109 ]
  %119 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !88
  %120 = add i32 %117, %64
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !88
  br label %126

124:                                              ; preds = %98
  %125 = shl i32 %105, 6
  br label %126

126:                                              ; preds = %124, %77, %83, %116
  %127 = phi i32 [ %117, %116 ], [ %71, %83 ], [ %71, %77 ], [ %125, %124 ]
  %128 = phi i32 [ %94, %116 ], [ %72, %83 ], [ %79, %77 ], [ %99, %124 ]
  %129 = phi i64 [ %118, %116 ], [ %73, %83 ], [ %73, %77 ], [ %107, %124 ]
  %130 = phi ptr [ %123, %116 ], [ %88, %83 ], [ %74, %77 ], [ %74, %124 ]
  %131 = phi i8 [ 1, %116 ], [ %89, %83 ], [ 0, %77 ], [ 0, %124 ]
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %292, label %133, !prof !199

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %130, i64 0, i32 18
  %135 = load ptr, ptr %134, align 8, !tbaa !206
  %136 = load ptr, ptr @coloring_allocno_bitmap, align 8, !tbaa !88
  %137 = load i32, ptr %135, align 8, !tbaa !137
  %138 = tail call i32 @bitmap_bit_p(ptr noundef %136, i32 noundef %137) #23
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %288, label %140, !prof !201

140:                                              ; preds = %133
  %141 = load i1, ptr @allocno_coalesced_p, align 1
  br i1 %141, label %142, label %151, !prof !201

142:                                              ; preds = %140
  %143 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %144 = load i32, ptr %135, align 8, !tbaa !137
  %145 = tail call i32 @bitmap_bit_p(ptr noundef %143, i32 noundef %144) #23
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %288

147:                                              ; preds = %142
  %148 = load ptr, ptr @processed_coalesced_allocno_bitmap, align 8, !tbaa !88
  %149 = load i32, ptr %135, align 8, !tbaa !137
  %150 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %148, i32 noundef %149) #23
  br label %151

151:                                              ; preds = %147, %140
  %152 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 31
  %153 = load i16, ptr %152, align 4
  %154 = and i16 %153, 384
  %155 = icmp eq i16 %154, 128
  br i1 %155, label %156, label %288, !prof !202

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 37
  %158 = load i32, ptr %157, align 8, !tbaa !489
  %159 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !156
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %24, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !103
  %164 = add nsw i32 %163, %158
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 38
  %166 = load i32, ptr %165, align 4, !tbaa !490
  %167 = icmp sgt i32 %164, %166
  %168 = sub nsw i32 %158, %29
  br i1 %167, label %170, label %169, !prof !563

169:                                              ; preds = %156
  store i32 %168, ptr %157, align 8, !tbaa !489
  br label %288

170:                                              ; preds = %156
  %171 = load ptr, ptr %34, align 8, !tbaa !88
  %172 = icmp ne ptr %171, null
  %173 = and i16 %153, 1024
  %174 = icmp eq i16 %173, 0
  %175 = and i1 %174, %172
  br i1 %175, label %176, label %199, !prof !564

176:                                              ; preds = %170
  %177 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %24
  %178 = load i32, ptr %177, align 4, !tbaa !103
  %179 = icmp sgt i32 %178, 4000
  br i1 %179, label %180, label %199

180:                                              ; preds = %176
  %181 = ptrtoint ptr %135 to i64
  tail call void @splay_tree_remove(ptr noundef nonnull %171, i64 noundef %181) #23
  %182 = load i16, ptr %152, align 4
  %183 = or i16 %182, 1024
  store i16 %183, ptr %152, align 4
  %184 = load ptr, ptr @removed_splay_allocno_vec, align 8, !tbaa !88
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %184, i64 0, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !263
  %189 = load i32, ptr %184, align 8, !tbaa !265
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %180, %186
  %192 = tail call ptr @vec_heap_p_reserve(ptr noundef %184, i32 noundef 1) #23
  store ptr %192, ptr @removed_splay_allocno_vec, align 8, !tbaa !88
  br label %193

193:                                              ; preds = %186, %191
  %194 = load ptr, ptr @removed_splay_allocno_vec, align 8, !tbaa !88
  %195 = load i32, ptr %194, align 8, !tbaa !265
  %196 = add i32 %195, 1
  store i32 %196, ptr %194, align 8, !tbaa !265
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %194, i64 0, i32 2, i64 %197
  store ptr %135, ptr %198, align 8, !tbaa !88
  br label %199

199:                                              ; preds = %193, %176, %170
  store i32 %168, ptr %157, align 8, !tbaa !489
  %200 = add nsw i32 %163, %168
  %201 = load i32, ptr %165, align 4, !tbaa !490
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %288, label %203, !prof !565

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 9
  %205 = load i32, ptr %204, align 8, !tbaa !139
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %212, label %207, !prof !566

207:                                              ; preds = %203
  %208 = zext i32 %205 to i64
  %209 = getelementptr inbounds [27 x i32], ptr @uncolorable_allocnos_num, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !103
  %211 = add nsw i32 %210, -1
  store i32 %211, ptr %209, align 4, !tbaa !103
  br label %212

212:                                              ; preds = %207, %203
  %213 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 40
  %214 = load ptr, ptr %213, align 8, !tbaa !498
  %215 = getelementptr inbounds %struct.ira_allocno, ptr %135, i64 0, i32 39
  %216 = load ptr, ptr %215, align 8, !tbaa !497
  %217 = icmp eq ptr %214, null
  %218 = getelementptr inbounds %struct.ira_allocno, ptr %214, i64 0, i32 39
  %219 = select i1 %217, ptr @uncolorable_allocno_bucket, ptr %218, !prof !567
  store ptr %216, ptr %219, align 8, !tbaa !88
  %220 = icmp eq ptr %216, null
  br i1 %220, label %223, label %221, !prof !568

221:                                              ; preds = %212
  %222 = getelementptr inbounds %struct.ira_allocno, ptr %216, i64 0, i32 40
  store ptr %214, ptr %222, align 8, !tbaa !498
  br label %223

223:                                              ; preds = %212, %221
  %224 = load ptr, ptr @colorable_allocno_bucket, align 8, !tbaa !88
  %225 = icmp eq ptr %224, null
  br i1 %225, label %279, label %226, !prof !569

226:                                              ; preds = %223
  %227 = load i32, ptr %204, align 8, !tbaa !139
  br label %228

228:                                              ; preds = %226, %275
  %229 = phi i1 [ %225, %226 ], [ %278, %275 ]
  %230 = phi ptr [ %224, %226 ], [ %277, %275 ]
  %231 = phi ptr [ null, %226 ], [ %230, %275 ]
  %232 = getelementptr inbounds %struct.ira_allocno, ptr %230, i64 0, i32 9
  %233 = load i32, ptr %232, align 8, !tbaa !139
  %234 = sub i32 %233, %227
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %272, !prof !558

236:                                              ; preds = %228, %236
  %237 = phi i32 [ %244, %236 ], [ 0, %228 ]
  %238 = phi i32 [ %247, %236 ], [ 0, %228 ]
  %239 = phi ptr [ %241, %236 ], [ %135, %228 ]
  %240 = getelementptr inbounds %struct.ira_allocno, ptr %239, i64 0, i32 19
  %241 = load ptr, ptr %240, align 8, !tbaa !178
  %242 = getelementptr inbounds %struct.ira_allocno, ptr %241, i64 0, i32 8
  %243 = load i32, ptr %242, align 4, !tbaa !233
  %244 = add nsw i32 %243, %237
  %245 = getelementptr inbounds %struct.ira_allocno, ptr %241, i64 0, i32 38
  %246 = load i32, ptr %245, align 4, !tbaa !490
  %247 = add nsw i32 %246, %238
  %248 = icmp eq ptr %241, %135
  br i1 %248, label %249, label %236, !prof !558, !llvm.loop !559

249:                                              ; preds = %236, %249
  %250 = phi i32 [ %257, %249 ], [ 0, %236 ]
  %251 = phi i32 [ %260, %249 ], [ 0, %236 ]
  %252 = phi ptr [ %254, %249 ], [ %230, %236 ]
  %253 = getelementptr inbounds %struct.ira_allocno, ptr %252, i64 0, i32 19
  %254 = load ptr, ptr %253, align 8, !tbaa !178
  %255 = getelementptr inbounds %struct.ira_allocno, ptr %254, i64 0, i32 8
  %256 = load i32, ptr %255, align 4, !tbaa !233
  %257 = add nsw i32 %256, %250
  %258 = getelementptr inbounds %struct.ira_allocno, ptr %254, i64 0, i32 38
  %259 = load i32, ptr %258, align 4, !tbaa !490
  %260 = add nsw i32 %259, %251
  %261 = icmp eq ptr %254, %230
  br i1 %261, label %262, label %249, !prof !558, !llvm.loop !559

262:                                              ; preds = %249
  %263 = sub nsw i32 %260, %247
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %272, !prof !560

265:                                              ; preds = %262
  %266 = sub nsw i32 %244, %257
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272, !prof !561

268:                                              ; preds = %265
  %269 = load i32, ptr %230, align 8, !tbaa !137
  %270 = load i32, ptr %135, align 8, !tbaa !137
  %271 = sub nsw i32 %269, %270
  br label %272

272:                                              ; preds = %228, %262, %265, %268
  %273 = phi i32 [ %271, %268 ], [ %234, %228 ], [ %263, %262 ], [ %266, %265 ]
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %279, label %275, !prof !570

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.ira_allocno, ptr %230, i64 0, i32 39
  %277 = load ptr, ptr %276, align 8, !tbaa !88
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %228, !prof !571, !llvm.loop !572

279:                                              ; preds = %275, %272, %223
  %280 = phi ptr [ null, %223 ], [ %230, %275 ], [ %231, %272 ]
  %281 = phi ptr [ %224, %223 ], [ %277, %275 ], [ %230, %272 ]
  %282 = phi i1 [ %225, %223 ], [ %278, %275 ], [ %229, %272 ]
  store ptr %281, ptr %215, align 8, !tbaa !497
  store ptr %280, ptr %213, align 8, !tbaa !498
  %283 = icmp eq ptr %280, null
  %284 = getelementptr inbounds %struct.ira_allocno, ptr %280, i64 0, i32 39
  %285 = select i1 %283, ptr @colorable_allocno_bucket, ptr %284, !prof !573
  store ptr %135, ptr %285, align 8, !tbaa !88
  br i1 %282, label %288, label %286, !prof !574

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.ira_allocno, ptr %281, i64 0, i32 40
  store ptr %135, ptr %287, align 8, !tbaa !498
  br label %288

288:                                              ; preds = %286, %279, %133, %199, %151, %142, %169
  %289 = add i32 %127, %66
  %290 = add i32 %128, %68
  %291 = lshr i64 %129, %69
  br label %70, !llvm.loop !575

292:                                              ; preds = %126
  %293 = icmp eq ptr %39, %0
  br i1 %293, label %294, label %35, !prof !183, !llvm.loop !576

294:                                              ; preds = %292, %14
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!86}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!35 = !{ptr @assign_hard_reg, ptr @ira_allocate_cost_vector, i64 131813}
!36 = !{ptr @assign_hard_reg, ptr @bitmap_bit_p, i64 335288}
!37 = !{ptr @assign_hard_reg, ptr @update_copy_costs, i64 107131}
!38 = !{ptr @assign_hard_reg, ptr @ira_free_allocno_updated_costs, i64 107433}
!39 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @max_reg_num, i64 38}
!40 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocate_bitmap, i64 76}
!41 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @bitmap_set_bit, i64 107433}
!42 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @coalesce_allocnos, i64 38}
!43 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_free_bitmap, i64 76}
!44 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocate, i64 152}
!45 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @spec_qsort, i64 78}
!46 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @regstat_get_setjmp_crosses, i64 38}
!47 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @bitmap_bit_p, i64 981}
!48 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_allocno_live_ranges_intersect_p, i64 679}
!49 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @setup_slot_coalesced_allocno_live_ranges, i64 8}
!50 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_copy_allocno_live_range_list, i64 294}
!51 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_merge_allocno_live_ranges, i64 294}
!52 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_finish_allocno_live_range_list, i64 107433}
!53 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @ira_free, i64 152}
!54 = !{ptr @ira_sort_regnos_for_alter_reg, ptr @setup_coalesced_allocno_costs_and_nums, i64 2}
!55 = !{ptr @coalesce_allocnos, ptr @ira_allocate, i64 38}
!56 = !{ptr @coalesce_allocnos, ptr @spec_qsort, i64 38}
!57 = !{ptr @coalesce_allocnos, ptr @ira_free, i64 38}
!58 = !{ptr @update_copy_costs, ptr @ira_allocate_cost_vector, i64 2098}
!59 = !{ptr @ira_reuse_stack_slot, ptr @bitmap_set_bit, i64 294}
!60 = !{ptr @ira_mark_new_stack_slot, ptr @bitmap_set_bit, i64 8}
!61 = !{ptr @ira_better_spill_reload_regno_p, ptr @calculate_spill_cost, i64 252}
!62 = !{ptr @ira_initiate_assign, ptr @ira_allocate, i64 114}
!63 = !{ptr @ira_initiate_assign, ptr @ira_allocate_bitmap, i64 38}
!64 = !{ptr @ira_finish_assign, ptr @ira_free, i64 114}
!65 = !{ptr @ira_finish_assign, ptr @ira_free_bitmap, i64 38}
!66 = !{ptr @ira_color, ptr @vec_heap_p_reserve_exact, i64 76}
!67 = !{ptr @ira_color, ptr @ira_allocate, i64 152}
!68 = !{ptr @ira_color, ptr @ira_allocate_bitmap, i64 76}
!69 = !{ptr @ira_color, ptr @create_alloc_pool, i64 38}
!70 = !{ptr @ira_color, ptr @ira_traverse_loop_tree, i64 38}
!71 = !{ptr @ira_color, ptr @free_alloc_pool, i64 38}
!72 = !{ptr @ira_color, ptr @ira_free_bitmap, i64 76}
!73 = !{ptr @ira_color, ptr @ira_free, i64 152}
!74 = !{ptr @ira_color, ptr @free, i64 76}
!75 = !{ptr @ira_color, ptr @bitmap_bit_p, i64 100682}
!76 = !{ptr @setup_slot_coalesced_allocno_live_ranges, ptr @ira_copy_allocno_live_range_list, i64 8}
!77 = !{ptr @setup_slot_coalesced_allocno_live_ranges, ptr @ira_merge_allocno_live_ranges, i64 8}
!78 = !{ptr @color_pass, ptr @bitmap_copy, i64 76}
!79 = !{ptr @color_pass, ptr @ira_allocate_bitmap, i64 38}
!80 = !{ptr @color_pass, ptr @bitmap_bit_p, i64 335288}
!81 = !{ptr @color_pass, ptr @spec_qsort, i64 102}
!82 = !{ptr @color_pass, ptr @push_allocno_to_stack, i64 107433}
!83 = !{ptr @color_pass, ptr @assign_hard_reg, i64 107433}
!84 = !{ptr @color_pass, ptr @ira_free_bitmap, i64 38}
!85 = !{ptr @push_allocno_to_stack, ptr @bitmap_bit_p, i64 335288}
!86 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!87 = !{!"function_entry_count", i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"any pointer", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!93, !89, i64 8}
!93 = !{!"_IO_FILE", !94, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !89, i64 104, !94, i64 112, !94, i64 116, !95, i64 120, !96, i64 128, !90, i64 130, !90, i64 131, !89, i64 136, !95, i64 144, !89, i64 152, !89, i64 160, !89, i64 168, !89, i64 176, !95, i64 184, !94, i64 192, !90, i64 196}
!94 = !{!"int", !90, i64 0}
!95 = !{!"long", !90, i64 0}
!96 = !{!"short", !90, i64 0}
!97 = !{!93, !89, i64 16}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!90, !90, i64 0}
!100 = !{!93, !89, i64 40}
!101 = !{!93, !89, i64 48}
!102 = !{!93, !94, i64 0}
!103 = !{!94, !94, i64 0}
!104 = distinct !{!104, !105, !106}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!108, !89, i64 8}
!108 = !{!"ira_loop_tree_node", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !94, i64 56, !90, i64 60, !89, i64 64, !90, i64 72, !90, i64 76, !89, i64 184, !89, i64 192, !89, i64 200, !89, i64 208}
!109 = !{!110, !89, i64 8}
!110 = !{!"loop", !94, i64 0, !94, i64 4, !89, i64 8, !89, i64 16, !111, i64 24, !94, i64 32, !94, i64 36, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !112, i64 80, !112, i64 96, !90, i64 112, !90, i64 113, !94, i64 116, !89, i64 120, !89, i64 128, !90, i64 136, !89, i64 144}
!111 = !{!"lpt_decision", !94, i64 0, !94, i64 4}
!112 = !{!"", !95, i64 0, !95, i64 8}
!113 = !{!114, !94, i64 0}
!114 = !{!"VEC_edge_base", !94, i64 0, !94, i64 4, !90, i64 8}
!115 = !{!116, !89, i64 0}
!116 = !{!"edge_def", !89, i64 0, !89, i64 8, !90, i64 16, !89, i64 24, !89, i64 32, !94, i64 40, !94, i64 44, !94, i64 48, !94, i64 52, !95, i64 56}
!117 = !{!110, !89, i64 16}
!118 = !{!119, !94, i64 80}
!119 = !{!"basic_block_def", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !90, i64 32, !89, i64 48, !89, i64 56, !90, i64 64, !95, i64 72, !94, i64 80, !94, i64 84, !94, i64 88, !94, i64 92, !94, i64 96}
!120 = !{!121, !94, i64 16}
!121 = !{!"dataflow", !89, i64 0, !89, i64 8, !94, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !94, i64 48, !90, i64 52, !90, i64 53, !90, i64 54}
!122 = !{!121, !89, i64 8}
!123 = !{!124, !89, i64 24}
!124 = !{!"df_lr_bb_info", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24}
!125 = !{!116, !89, i64 8}
!126 = !{!124, !89, i64 16}
!127 = !{!119, !94, i64 88}
!128 = !{!116, !94, i64 52}
!129 = distinct !{!129, !105, !106}
!130 = distinct !{!130, !105, !106}
!131 = !{!132, !89, i64 8}
!132 = !{!"function", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !94, i64 104, !94, i64 108, !94, i64 112, !94, i64 116, !94, i64 120, !94, i64 124, !89, i64 128, !94, i64 136, !94, i64 137, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 138, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139, !94, i64 139}
!133 = !{!134, !89, i64 0}
!134 = !{!"control_flow_graph", !89, i64 0, !89, i64 8, !89, i64 16, !94, i64 24, !94, i64 28, !94, i64 32, !89, i64 40, !94, i64 48, !90, i64 52, !90, i64 60, !94, i64 68, !94, i64 72}
!135 = !{!119, !95, i64 72}
!136 = distinct !{!136, !105, !106}
!137 = !{!138, !94, i64 0}
!138 = !{!"ira_allocno", !94, i64 0, !94, i64 4, !94, i64 8, !94, i64 12, !89, i64 16, !89, i64 24, !89, i64 32, !94, i64 40, !94, i64 44, !94, i64 48, !94, i64 52, !94, i64 56, !94, i64 60, !94, i64 64, !94, i64 68, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !89, i64 104, !89, i64 112, !94, i64 120, !94, i64 124, !89, i64 128, !94, i64 136, !94, i64 140, !95, i64 144, !95, i64 152, !94, i64 160, !94, i64 164, !94, i64 168, !94, i64 172, !94, i64 172, !94, i64 172, !94, i64 172, !94, i64 172, !94, i64 172, !94, i64 172, !94, i64 172, !94, i64 173, !94, i64 173, !94, i64 173, !94, i64 173, !89, i64 176, !89, i64 184, !89, i64 192, !89, i64 200, !89, i64 208, !94, i64 216, !94, i64 220, !89, i64 224, !89, i64 232, !94, i64 240}
!139 = !{!138, !94, i64 48}
!140 = !{!138, !94, i64 12}
!141 = !{!138, !94, i64 4}
!142 = distinct !{!142, !105, !106}
!143 = !{!138, !89, i64 128}
!144 = !{!138, !94, i64 120}
!145 = !{!138, !94, i64 124}
!146 = !{!95, !95, i64 0}
!147 = distinct !{!147, !105, !106}
!148 = distinct !{!148, !105, !106}
!149 = distinct !{!149, !105, !106}
!150 = distinct !{!150, !105, !106}
!151 = !{i8 0, i8 2}
!152 = distinct !{!152, !105, !106}
!153 = !{!138, !94, i64 40}
!154 = !{!138, !94, i64 60}
!155 = !{!138, !94, i64 52}
!156 = !{!138, !94, i64 8}
!157 = distinct !{!157, !105, !106}
!158 = !{!138, !94, i64 68}
!159 = distinct !{!159, !105, !106}
!160 = !{!138, !89, i64 72}
!161 = !{!162, !89, i64 8}
!162 = !{!"ira_allocno_copy", !94, i64 0, !89, i64 8, !89, i64 16, !94, i64 24, !90, i64 28, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72}
!163 = !{!162, !89, i64 48}
!164 = !{!162, !89, i64 16}
!165 = !{!162, !89, i64 64}
!166 = !{!96, !96, i64 0}
!167 = !{!138, !89, i64 184}
!168 = distinct !{!168, !105, !106}
!169 = !{!138, !89, i64 200}
!170 = !{!162, !94, i64 24}
!171 = !{!138, !89, i64 192}
!172 = !{!138, !89, i64 208}
!173 = distinct !{!173, !105, !106}
!174 = !{!"function_entry_count", i64 107433}
!175 = !{!"ira-color.c;assign_hard_reg"}
!176 = !{!"VP", i32 1, i64 107433, i64 17, i64 107433}
!177 = !{!"branch_weights", i32 0, i32 107433}
!178 = !{!138, !89, i64 104}
!179 = !{!138, !94, i64 64}
!180 = !{!138, !95, i64 152}
!181 = !{!"branch_weights", i32 39971, i32 67462}
!182 = !{!"VP", i32 1, i64 67462, i64 17, i64 67462}
!183 = !{!"branch_weights", i32 107433, i32 0}
!184 = !{!138, !94, i64 56}
!185 = !{!"branch_weights", i32 107432, i32 1}
!186 = !{!"branch_weights", i32 233316, i32 411282}
!187 = !{!"branch_weights", i32 107432, i32 537166}
!188 = distinct !{!188, !105, !106}
!189 = !{!"branch_weights", i32 1737, i32 105696}
!190 = !{!"branch_weights", i32 0, i32 1737}
!191 = !{!"branch_weights", i32 159449, i32 283272}
!192 = !{!"branch_weights", i32 6739, i32 150973}
!193 = !{!"branch_weights", i32 1736, i32 1}
!194 = !{!"branch_weights", i32 177576, i32 105696}
!195 = !{!"branch_weights", i32 92017, i32 65695}
!196 = !{!"branch_weights", i32 3266, i32 1736}
!197 = !{!"branch_weights", i32 0, i32 6739}
!198 = !{!"branch_weights", i32 0, i32 92017}
!199 = !{!"branch_weights", i32 107433, i32 335288}
!200 = !{!"branch_weights", i32 335288, i32 0}
!201 = !{!"branch_weights", i32 0, i32 335288}
!202 = !{!"branch_weights", i32 167644, i32 167644}
!203 = !{!"branch_weights", i32 166254, i32 1390}
!204 = !{!"branch_weights", i32 166254, i32 0}
!205 = !{!"branch_weights", i32 0, i32 166254}
!206 = !{!138, !89, i64 96}
!207 = !{!"branch_weights", i32 166044, i32 1600}
!208 = !{!"branch_weights", i32 101831, i32 64213}
!209 = !{!"VP", i32 1, i64 64213, i64 17, i64 64213}
!210 = !{!"branch_weights", i32 1538053837, i32 -1257056049}
!211 = !{!"branch_weights", i32 0, i32 661410}
!212 = !{!"branch_weights", i32 551176, i32 110234}
!213 = distinct !{!213, !105, !106}
!214 = !{!215, !94, i64 0}
!215 = !{!"update_cost_queue_elem", !94, i64 0, !94, i64 4, !89, i64 8}
!216 = !{!"branch_weights", i32 0, i32 166044}
!217 = !{!215, !94, i64 4}
!218 = !{!215, !89, i64 8}
!219 = !{!"branch_weights", i32 10124, i32 155920}
!220 = distinct !{!220, !105, !106}
!221 = distinct !{!221, !106}
!222 = distinct !{!222, !105, !106}
!223 = !{!"branch_weights", i32 214866, i32 278274}
!224 = !{!"branch_weights", i32 256146, i32 22128}
!225 = !{!"branch_weights", i32 12534, i32 9594}
!226 = !{!"branch_weights", i32 9594, i32 0}
!227 = !{!"branch_weights", i32 0, i32 22128}
!228 = !{!"branch_weights", i32 18202, i32 3926}
!229 = !{!"branch_weights", i32 16178, i32 2024}
!230 = !{!"branch_weights", i32 16040, i32 138}
!231 = !{!"VP", i32 1, i64 69, i64 17, i64 69}
!232 = !{!"branch_weights", i32 11798, i32 4380}
!233 = !{!138, !94, i64 44}
!234 = !{!"branch_weights", i32 4379, i32 1}
!235 = !{!"branch_weights", i32 0, i32 26280}
!236 = !{!"branch_weights", i32 26252, i32 28}
!237 = !{!"branch_weights", i32 21901, i32 4379}
!238 = distinct !{!238, !105, !106}
!239 = !{!"branch_weights", i32 11826, i32 4352}
!240 = !{!"branch_weights", i32 11322, i32 4856}
!241 = !{!"branch_weights", i32 6525, i32 4797}
!242 = !{!"branch_weights", i32 0, i32 4797}
!243 = !{!"branch_weights", i32 2692, i32 2105}
!244 = !{!"branch_weights", i32 22128, i32 0}
!245 = distinct !{!245, !105, !106}
!246 = distinct !{!246, !106}
!247 = !{!"branch_weights", i32 0, i32 644598}
!248 = !{!"branch_weights", i32 644598, i32 477396}
!249 = !{!"branch_weights", i32 477396, i32 167202}
!250 = distinct !{!250, !105, !106}
!251 = !{!"branch_weights", i32 167202, i32 477396}
!252 = !{!"branch_weights", i32 477396, i32 0}
!253 = !{!"branch_weights", i32 10198, i32 467198}
!254 = !{!"branch_weights", i32 10198, i32 3913}
!255 = !{!"branch_weights", i32 3913, i32 6285}
!256 = !{!"branch_weights", i32 6285, i32 3913}
!257 = !{!"branch_weights", i32 108492, i32 368904}
!258 = distinct !{!258, !105, !106}
!259 = !{!"branch_weights", i32 302, i32 107131}
!260 = !{!"branch_weights", i32 302, i32 0}
!261 = !{!"branch_weights", i32 0, i32 302}
!262 = distinct !{!262, !106}
!263 = !{!264, !94, i64 4}
!264 = !{!"VEC_ira_allocno_t_base", !94, i64 0, !94, i64 4, !90, i64 8}
!265 = !{!264, !94, i64 0}
!266 = distinct !{!266, !106}
!267 = distinct !{!267, !105, !106}
!268 = !{!"branch_weights", i32 107131, i32 302}
!269 = distinct !{!269, !106}
!270 = !{!"function_entry_count", i64 38}
!271 = !{!"branch_weights", i32 151, i32 1}
!272 = !{!"branch_weights", i32 182365, i32 107433}
!273 = !{!"branch_weights", i32 151, i32 1159041}
!274 = distinct !{!274, !105, !106}
!275 = !{!"VP", i32 1, i64 38, i64 513, i64 27, i64 257, i64 11}
!276 = !{!"branch_weights", i32 159, i32 1}
!277 = !{!"branch_weights", i32 183439, i32 108819}
!278 = !{!"branch_weights", i32 108525, i32 294}
!279 = distinct !{!279, !106}
!280 = distinct !{!280, !106}
!281 = !{!"branch_weights", i32 159, i32 1168873}
!282 = distinct !{!282, !105, !106}
!283 = distinct !{!283, !105, !106}
!284 = !{!"branch_weights", i32 0, i32 38}
!285 = !{!"VP", i32 1, i64 38, i64 513, i64 21, i64 257, i64 5, i64 33, i64 5, i64 129, i64 3}
!286 = !{!"branch_weights", i32 127, i32 1}
!287 = !{!138, !94, i64 240}
!288 = !{!"branch_weights", i32 678, i32 192}
!289 = !{!"branch_weights", i32 678, i32 0}
!290 = !{!138, !89, i64 112}
!291 = distinct !{!291, !106}
!292 = !{!"branch_weights", i32 384, i32 294}
!293 = !{!"branch_weights", i32 127, i32 13793}
!294 = distinct !{!294, !105, !106}
!295 = !{!"branch_weights", i32 294, i32 8}
!296 = !{!"branch_weights", i32 294, i32 0}
!297 = !{!"branch_weights", i32 0, i32 294}
!298 = distinct !{!298, !106}
!299 = distinct !{!299, !106}
!300 = !{!"branch_weights", i32 151, i32 1057}
!301 = distinct !{!301, !105, !106}
!302 = !{!"branch_weights", i32 429581, i32 151}
!303 = distinct !{!303, !105, !106}
!304 = !{!"branch_weights", i32 36, i32 2}
!305 = !{!"branch_weights", i32 1074, i32 1386}
!306 = !{!"branch_weights", i32 1084, i32 302}
!307 = !{!"branch_weights", i32 8, i32 294}
!308 = !{!"branch_weights", i32 127, i32 157313}
!309 = !{!"branch_weights", i32 8, i32 30}
!310 = !{!"branch_weights", i32 8, i32 0}
!311 = !{!"branch_weights", i32 0, i32 8}
!312 = distinct !{!312, !106}
!313 = distinct !{!313, !105, !106}
!314 = !{!"branch_weights", i32 0, i32 1}
!315 = !{!"branch_weights", i32 151, i32 429581}
!316 = !{!"branch_weights", i32 107433, i32 38}
!317 = distinct !{!317, !105, !106}
!318 = !{!"ira-color.c;coalesce_allocnos"}
!319 = !{!320, !89, i64 0}
!320 = !{!"bitmap_head_def", !89, i64 0, !89, i64 8, !94, i64 16, !89, i64 24}
!321 = !{!322, !94, i64 16}
!322 = !{!"bitmap_element_def", !89, i64 0, !89, i64 8, !94, i64 16, !90, i64 24}
!323 = !{!"branch_weights", i32 1698, i32 105773}
!324 = distinct !{!324, !105, !106}
!325 = !{!"branch_weights", i32 1, i32 863}
!326 = !{!"branch_weights", i32 30, i32 1660}
!327 = !{!"branch_weights", i32 863, i32 827}
!328 = distinct !{!328, !105, !106}
!329 = !{!322, !89, i64 0}
!330 = !{!"branch_weights", i32 38, i32 826}
!331 = distinct !{!331, !106}
!332 = !{!"branch_weights", i32 38, i32 107433}
!333 = !{!"branch_weights", i32 1, i32 301}
!334 = !{!162, !89, i64 32}
!335 = !{!162, !90, i64 28}
!336 = !{!"branch_weights", i32 301, i32 1}
!337 = distinct !{!337, !105, !106}
!338 = distinct !{!338, !105, !106}
!339 = !{!"branch_weights", i32 1, i32 0}
!340 = distinct !{!340, !105, !106}
!341 = distinct !{!341, !106}
!342 = !{!138, !89, i64 16}
!343 = distinct !{!343, !106}
!344 = distinct !{!344, !105, !106}
!345 = distinct !{!345, !106}
!346 = !{!162, !94, i64 0}
!347 = distinct !{!347, !105, !106}
!348 = distinct !{!348, !105, !106}
!349 = !{!"function_entry_count", i64 2}
!350 = !{!"ira-color.c;setup_coalesced_allocno_costs_and_nums"}
!351 = !{!"function_entry_count", i64 4564441}
!352 = !{!"ira-color.c;coalesced_pseudo_reg_freq_compare"}
!353 = !{!"branch_weights", i32 4221446, i32 342995}
!354 = !{!"branch_weights", i32 1712, i32 4219734}
!355 = !{!"function_entry_count", i64 4494541}
!356 = !{!"ira-color.c;coalesced_pseudo_reg_slot_compare"}
!357 = !{!"branch_weights", i32 2822028, i32 1672513}
!358 = !{!"branch_weights", i32 1669369, i32 3144}
!359 = !{!"branch_weights", i32 2139123, i32 2352274}
!360 = !{!"branch_weights", i32 2352128, i32 146}
!361 = !{!"branch_weights", i32 632, i32 2512}
!362 = !{!"branch_weights", i32 326, i32 2186}
!363 = !{!"branch_weights", i32 1668, i32 518}
!364 = !{!365, !90, i64 477}
!365 = !{!"rtl_data", !366, i64 0, !367, i64 40, !368, i64 96, !369, i64 112, !371, i64 208, !372, i64 248, !94, i64 312, !89, i64 320, !89, i64 328, !89, i64 336, !89, i64 344, !89, i64 352, !89, i64 360, !89, i64 368, !89, i64 376, !89, i64 384, !89, i64 392, !95, i64 400, !89, i64 408, !89, i64 416, !89, i64 424, !94, i64 432, !94, i64 436, !94, i64 440, !94, i64 444, !94, i64 448, !94, i64 452, !89, i64 456, !90, i64 464, !90, i64 465, !90, i64 466, !90, i64 467, !90, i64 468, !90, i64 469, !90, i64 470, !90, i64 471, !90, i64 472, !90, i64 473, !90, i64 474, !90, i64 475, !90, i64 476, !90, i64 477, !90, i64 478, !90, i64 479, !90, i64 480, !90, i64 481, !90, i64 482, !90, i64 483, !90, i64 484, !90, i64 485}
!366 = !{!"expr_status", !94, i64 0, !94, i64 4, !94, i64 8, !89, i64 16, !89, i64 24, !89, i64 32}
!367 = !{!"emit_status", !94, i64 0, !94, i64 4, !89, i64 8, !89, i64 16, !89, i64 24, !94, i64 32, !94, i64 36, !94, i64 40, !94, i64 44, !89, i64 48}
!368 = !{!"varasm_status", !89, i64 0, !94, i64 8}
!369 = !{!"incoming_args", !94, i64 0, !94, i64 4, !94, i64 8, !89, i64 16, !370, i64 24, !89, i64 88}
!370 = !{!"ix86_args", !94, i64 0, !94, i64 4, !94, i64 8, !94, i64 12, !94, i64 16, !94, i64 20, !94, i64 24, !94, i64 28, !94, i64 32, !94, i64 36, !94, i64 40, !94, i64 44, !94, i64 48, !94, i64 52, !94, i64 56, !94, i64 60}
!371 = !{!"function_subsections", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32}
!372 = !{!"rtl_eh", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !90, i64 48}
!373 = !{!"branch_weights", i32 0, i32 518}
!374 = !{!"branch_weights", i32 1668, i32 0}
!375 = !{!"function_entry_count", i64 107131}
!376 = !{!"ira-color.c;update_copy_costs"}
!377 = !{!"branch_weights", i32 0, i32 107131}
!378 = !{!"branch_weights", i32 94775, i32 14319}
!379 = !{!"branch_weights", i32 11158, i32 3161}
!380 = !{!"branch_weights", i32 3161, i32 0}
!381 = !{!"branch_weights", i32 0, i32 14319}
!382 = !{!"branch_weights", i32 9385, i32 4934}
!383 = !{!"branch_weights", i32 1201, i32 8184}
!384 = !{!"branch_weights", i32 0, i32 1201}
!385 = !{!"branch_weights", i32 0, i32 8184}
!386 = !{!"branch_weights", i32 0, i32 9385}
!387 = !{!"branch_weights", i32 7422, i32 1963}
!388 = !{!"branch_weights", i32 1085, i32 878}
!389 = !{!"branch_weights", i32 673, i32 412}
!390 = !{!"branch_weights", i32 672, i32 1}
!391 = !{!"VP", i32 1, i64 412, i64 17, i64 412}
!392 = !{!"branch_weights", i32 672, i32 3366}
!393 = !{!"branch_weights", i32 1013, i32 950}
!394 = !{!"branch_weights", i32 1013, i32 0}
!395 = !{!"branch_weights", i32 1012, i32 1}
!396 = !{!"branch_weights", i32 0, i32 1963}
!397 = !{!"branch_weights", i32 1107, i32 856}
!398 = !{!"branch_weights", i32 14319, i32 0}
!399 = distinct !{!399, !105, !106}
!400 = !{!"branch_weights", i32 107131, i32 1963}
!401 = distinct !{!401, !105, !106}
!402 = !{!"function_entry_count", i64 76}
!403 = !{!"branch_weights", i32 0, i32 76}
!404 = distinct !{!404, !105, !106}
!405 = !{!"branch_weights", i32 76, i32 0}
!406 = distinct !{!406, !105, !106}
!407 = distinct !{!407, !105, !106}
!408 = distinct !{!408, !105, !106}
!409 = distinct !{!409, !105, !106}
!410 = !{!411, !94, i64 0}
!411 = !{!"reg_info_t", !94, i64 0, !94, i64 4, !94, i64 8, !94, i64 12, !94, i64 16, !94, i64 20, !94, i64 24}
!412 = !{!138, !94, i64 168}
!413 = !{!"function_entry_count", i64 302}
!414 = !{!415, !89, i64 32}
!415 = !{!"ira_spilled_reg_stack_slot", !320, i64 0, !89, i64 32, !94, i64 40}
!416 = !{!415, !94, i64 40}
!417 = distinct !{!417, !105, !106}
!418 = distinct !{!418, !105, !106}
!419 = distinct !{!419, !105, !106}
!420 = distinct !{!420, !105, !106}
!421 = !{!"function_entry_count", i64 8}
!422 = !{!320, !89, i64 24}
!423 = !{!"function_entry_count", i64 126}
!424 = !{!"branch_weights", i32 126, i32 0}
!425 = !{!"branch_weights", i32 0, i32 126}
!426 = !{!"function_entry_count", i64 252}
!427 = !{!"ira-color.c;calculate_spill_cost"}
!428 = !{!429, !94, i64 4}
!429 = !{!"regstat_n_sets_and_refs_t", !94, i64 0, !94, i64 4}
!430 = distinct !{!430, !105, !106}
!431 = distinct !{!431, !106}
!432 = !{!"branch_weights", i32 0, i32 252}
!433 = !{!"VP", i32 1, i64 38, i64 513, i64 26, i64 65, i64 5, i64 257, i64 3, i64 129, i64 2}
!434 = distinct !{!434, !105, !106}
!435 = !{!"branch_weights", i32 38, i32 0}
!436 = !{!138, !89, i64 32}
!437 = !{!138, !89, i64 88}
!438 = !{!138, !89, i64 80}
!439 = !{!108, !89, i64 40}
!440 = !{!"branch_weights", i32 107131, i32 0}
!441 = !{!"branch_weights", i32 100682, i32 6449}
!442 = !{!108, !89, i64 192}
!443 = !{!"branch_weights", i32 100682, i32 0}
!444 = distinct !{!444, !105, !106}
!445 = !{!108, !89, i64 64}
!446 = !{i32 -214748, i32 214749}
!447 = distinct !{!447, !105, !106}
!448 = !{!108, !89, i64 48}
!449 = !{!110, !94, i64 0}
!450 = distinct !{!450, !106}
!451 = distinct !{!451, !105, !106}
!452 = !{!138, !95, i64 144}
!453 = !{!454, !94, i64 8}
!454 = !{!"ira_allocno_live_range", !89, i64 0, !94, i64 8, !94, i64 12, !89, i64 16, !89, i64 24, !89, i64 32}
!455 = !{!454, !94, i64 12}
!456 = distinct !{!456, !105, !106}
!457 = distinct !{!457, !105, !106}
!458 = distinct !{!458, !105, !106}
!459 = distinct !{!459, !105, !106}
!460 = distinct !{!460, !105, !106}
!461 = distinct !{!461, !105, !106}
!462 = !{!"ira-color.c;setup_slot_coalesced_allocno_live_ranges"}
!463 = !{!"ira-color.c;color_pass"}
!464 = !{!110, !89, i64 40}
!465 = !{!466, !94, i64 0}
!466 = !{!"VEC_loop_p_base", !94, i64 0, !94, i64 4, !90, i64 8}
!467 = !{!108, !89, i64 0}
!468 = !{!134, !89, i64 8}
!469 = distinct !{!469, !105, !106}
!470 = distinct !{!470, !105, !106}
!471 = !{!108, !89, i64 184}
!472 = distinct !{!472, !105, !106}
!473 = !{!108, !89, i64 200}
!474 = distinct !{!474, !105, !106}
!475 = distinct !{!475, !105, !106}
!476 = distinct !{!476, !105, !106}
!477 = distinct !{!477, !105, !106}
!478 = distinct !{!478, !105, !106}
!479 = distinct !{!479, !105, !106}
!480 = distinct !{!480, !106}
!481 = !{!"branch_weights", i32 1126, i32 106307}
!482 = !{!"branch_weights", i32 208, i32 1146}
!483 = !{!"branch_weights", i32 1126, i32 20}
!484 = !{!"branch_weights", i32 0, i32 1354}
!485 = distinct !{!485, !105, !106}
!486 = distinct !{!486, !105, !106}
!487 = distinct !{!487, !105, !106}
!488 = distinct !{!488, !106}
!489 = !{!138, !94, i64 216}
!490 = !{!138, !94, i64 220}
!491 = distinct !{!491, !106}
!492 = !{!"branch_weights", i32 643452, i32 1146}
!493 = !{!"branch_weights", i32 643452, i32 0}
!494 = !{!"branch_weights", i32 537166, i32 107432}
!495 = distinct !{!495, !105, !106}
!496 = !{!"branch_weights", i32 1504, i32 105929}
!497 = !{!138, !89, i64 224}
!498 = !{!138, !89, i64 232}
!499 = !{!"branch_weights", i32 38, i32 105891}
!500 = !{!"branch_weights", i32 0, i32 1504}
!501 = !{!"branch_weights", i32 38, i32 1466}
!502 = distinct !{!502, !105, !106}
!503 = !{!"branch_weights", i32 1, i32 151}
!504 = !{!"branch_weights", i32 151, i32 153}
!505 = distinct !{!505, !105, !106}
!506 = !{!"branch_weights", i32 1504, i32 0}
!507 = distinct !{!507, !106}
!508 = !{!"branch_weights", i32 151, i32 5865}
!509 = distinct !{!509, !105, !106}
!510 = !{!"branch_weights", i32 38, i32 38}
!511 = !{!"branch_weights", i32 153, i32 151}
!512 = distinct !{!512, !105, !106}
!513 = distinct !{!513, !105, !106}
!514 = !{!"branch_weights", i32 1, i32 293}
!515 = !{!"branch_weights", i32 293, i32 105958}
!516 = distinct !{!516, !105, !106}
!517 = !{!"branch_weights", i32 192, i32 102}
!518 = !{!"branch_weights", i32 203, i32 1}
!519 = !{!"branch_weights", i32 102, i32 106021}
!520 = !{!"branch_weights", i32 212043, i32 203}
!521 = distinct !{!521, !105, !106}
!522 = !{!"branch_weights", i32 107177, i32 0}
!523 = !{!"branch_weights", i32 230, i32 106947}
!524 = !{!"branch_weights", i32 293, i32 106884}
!525 = distinct !{!525, !105, !106}
!526 = !{!"branch_weights", i32 38, i32 256}
!527 = !{!"branch_weights", i32 0, i32 256}
!528 = distinct !{!528, !106}
!529 = distinct !{!529, !105, !106}
!530 = !{!531, !95, i64 0}
!531 = !{!"splay_tree_node_s", !95, i64 0, !95, i64 8, !89, i64 16, !89, i64 24}
!532 = !{!"branch_weights", i32 1, i32 255}
!533 = !{!"branch_weights", i32 668, i32 37998}
!534 = !{!"branch_weights", i32 34, i32 634}
!535 = !{!"branch_weights", i32 34, i32 38632}
!536 = !{!"branch_weights", i32 256, i32 38376}
!537 = !{!"branch_weights", i32 35358, i32 3018}
!538 = !{!"branch_weights", i32 35358, i32 0}
!539 = !{!"branch_weights", i32 3018, i32 0}
!540 = !{!"branch_weights", i32 660, i32 34698}
!541 = !{!"branch_weights", i32 7918, i32 26780}
!542 = !{!"branch_weights", i32 338, i32 7580}
!543 = !{!"branch_weights", i32 3898, i32 3682}
!544 = !{!"branch_weights", i32 1692, i32 2206}
!545 = !{!"branch_weights", i32 255, i32 38411}
!546 = distinct !{!546, !105, !106}
!547 = !{!"branch_weights", i32 4, i32 252}
!548 = distinct !{!548, !105, !106}
!549 = !{!"branch_weights", i32 0, i32 107471}
!550 = distinct !{!550, !105, !106}
!551 = distinct !{!551, !105, !106}
!552 = distinct !{!552, !105, !106}
!553 = distinct !{!553, !105, !106}
!554 = distinct !{!554, !105, !106}
!555 = distinct !{!555, !105, !106}
!556 = !{!"function_entry_count", i64 1358223}
!557 = !{!"ira-color.c;bucket_allocno_compare_func"}
!558 = !{!"branch_weights", i32 6851659, i32 0}
!559 = distinct !{!559, !106}
!560 = !{!"branch_weights", i32 4184435, i32 2667224}
!561 = !{!"branch_weights", i32 1330845, i32 2853590}
!562 = !{!"ira-color.c;push_allocno_to_stack"}
!563 = !{!"branch_weights", i32 155806, i32 11838}
!564 = !{!"branch_weights", i32 0, i32 155806}
!565 = !{!"branch_weights", i32 154558, i32 1248}
!566 = !{!"branch_weights", i32 0, i32 1248}
!567 = !{!"branch_weights", i32 242, i32 1006}
!568 = !{!"branch_weights", i32 64, i32 1184}
!569 = !{!"branch_weights", i32 1, i32 258}
!570 = !{!"branch_weights", i32 989, i32 5492449}
!571 = !{!"branch_weights", i32 258, i32 5493180}
!572 = distinct !{!572, !105, !106}
!573 = !{!"branch_weights", i32 320, i32 928}
!574 = !{!"branch_weights", i32 259, i32 989}
!575 = distinct !{!575, !105, !106}
!576 = distinct !{!576, !106}
