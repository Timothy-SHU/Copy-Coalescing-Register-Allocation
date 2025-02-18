; ModuleID = 'cfgrtl.c'
source_filename = "cfgrtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@x_rtl = external global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [9 x i8] c"cfgrtl.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"*free_cfg\00", align 1
@pass_free_cfg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr null, ptr @rest_of_pass_free_cfg, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Removing jump %i.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Redirecting jump %i from %i to %i.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Replacing insn %i by jump %i\0A\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c";; Start of basic block (\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c") -> %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c";; Pred edge \00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c";; Insn is not within a basic block\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c";; Insn is in multiple basic blocks\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c";; End of basic block %d -> (\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c";; Succ edge \00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"\0A;; Insns in epilogue delay list:\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Purged edges from bb %i\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Purged non-fallthru edges from bb %i\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@rtl_cfg_hooks = dso_local local_unnamed_addr global %struct.cfg_hooks { ptr @.str.19, ptr @rtl_verify_flow_info, ptr @rtl_dump_bb, ptr @rtl_create_basic_block, ptr @rtl_redirect_edge_and_branch, ptr @rtl_redirect_edge_and_branch_force, ptr @rtl_can_remove_branch_p, ptr @rtl_delete_block, ptr @rtl_split_block, ptr @rtl_move_block_after, ptr @rtl_can_merge_blocks, ptr @rtl_merge_blocks, ptr @rtl_predict_edge, ptr @rtl_predicted_by_p, ptr null, ptr null, ptr @rtl_split_edge, ptr @rtl_make_forwarder_block, ptr @rtl_tidy_fallthru_edge, ptr @rtl_block_ends_with_call_p, ptr @rtl_block_ends_with_condjump_p, ptr @rtl_flow_call_edges_add, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"cfglayout mode\00", align 1
@cfg_layout_rtl_cfg_hooks = dso_local local_unnamed_addr global %struct.cfg_hooks { ptr @.str.20, ptr @rtl_verify_flow_info_1, ptr @rtl_dump_bb, ptr @cfg_layout_create_basic_block, ptr @cfg_layout_redirect_edge_and_branch, ptr @cfg_layout_redirect_edge_and_branch_force, ptr @rtl_can_remove_branch_p, ptr @cfg_layout_delete_block, ptr @cfg_layout_split_block, ptr @rtl_move_block_after, ptr @cfg_layout_can_merge_blocks_p, ptr @cfg_layout_merge_blocks, ptr @rtl_predict_edge, ptr @rtl_predicted_by_p, ptr @cfg_layout_can_duplicate_bb_p, ptr @cfg_layout_duplicate_bb, ptr @cfg_layout_split_edge, ptr @rtl_make_forwarder_block, ptr null, ptr @rtl_block_ends_with_call_p, ptr @rtl_block_ends_with_condjump_p, ptr @rtl_flow_call_edges_add, ptr null, ptr null, ptr @duplicate_loop_to_header_edge, ptr @rtl_lv_add_condition_to_bb, ptr null, ptr @rtl_extract_cond_bb_edges, ptr null }, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"insn %d outside of basic blocks has non-NULL bb field\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"end insn %d for block %d not found in the insn stream\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"insn %d is in multiple basic blocks (%d and %d)\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"head insn %d for block %d not found in the insn stream\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"missing barrier after block %i\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"verify_flow_info: Incorrect blocks for fallthru %i->%i\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"verify_flow_info: Incorrect fallthru %i->%i\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"wrong insn in the fallthru edge\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"basic blocks not laid down consecutively\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"insn outside basic block\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"return not followed by barrier\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"number of bb notes in insn chain (%d) != n_basic_blocks (%d)\00", align 1
@currently_expanding_to_rtl = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [30 x i8] c"Edge %i->%i redirected to %i\0A\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.35 = private unnamed_addr constant [19 x i8] c"deleting block %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"merging block %d into block %d\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.37 = private unnamed_addr constant [33 x i8] c"BB_RTL flag not set for block %d\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"insn %d basic block pointer is %d, should be %d\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"insn %d in header of bb %d has non-NULL basic block\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"insn %d in footer of bb %d has non-NULL basic block\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"verify_flow_info: REG_BR_PROB does not match cfg %wi %i\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"fallthru edge crosses section boundary (bb %i)\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"missing REG_EH_REGION note in the end of bb %i\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"too many eh edges %i\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"too many outgoing branch edges from bb %i\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"fallthru edge after unconditional jump %i\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"wrong number of branch edges after unconditional jump %i\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"wrong amount of branch edges after conditional jump %i\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"call edges for non-call insn in bb %i\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"abnormal edges for no purpose in bb %i\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"insn %d inside basic block %d but block_for_insn is NULL\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"insn %d inside basic block %d but block_for_insn is %i\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"NOTE_INSN_BASIC_BLOCK is missing for block %d\00", align 1
@.str.54 = private unnamed_addr constant [53 x i8] c"NOTE_INSN_BASIC_BLOCK %d in middle of basic block %d\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"in basic block %d:\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"flow control insn inside a basic block\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"Redirecting entry edge from bb %i to %i\0A\00", align 1
@.str.58 = private unnamed_addr constant [59 x i8] c"Fallthru edge unified with branch %i->%i redirected to %i\0A\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"Fallthru edge %i->%i redirected to %i\0A\00", align 1
@cfg_layout_function_footer = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [26 x i8] c"Merged blocks %d and %d.\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !169 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !170
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !169 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !170
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !169 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !180

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !174
  %11 = load i8, ptr %3, align 1, !tbaa !181
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !169 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !180

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !174
  %11 = load i8, ptr %3, align 1, !tbaa !181
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !169 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !180

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !174
  %11 = load i8, ptr %3, align 1, !tbaa !181
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !169 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !170
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !169 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !180

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !182
  store i8 %12, ptr %4, align 1, !tbaa !181
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !169 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !180

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !182
  store i8 %12, ptr %4, align 1, !tbaa !181
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !169 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !180

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !182
  store i8 %12, ptr %4, align 1, !tbaa !181
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !169 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !169 {
  %2 = load i32, ptr %0, align 8, !tbaa !184
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !169 {
  %2 = load i32, ptr %0, align 8, !tbaa !184
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !169 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !185
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !169 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !185
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !169 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !169 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !169 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !169 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !186

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !169 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @delete_insn(ptr noundef %0) local_unnamed_addr #9 !prof !189 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %27, !prof !190

7:                                                ; preds = %1
  %8 = and i32 %4, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !191

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18, !prof !191

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !192
  %16 = tail call i32 @in_expr_list_p(ptr noundef %15, ptr noundef nonnull %0) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18, !prof !191

18:                                               ; preds = %10, %7, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !181
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, -65536
  %23 = or disjoint i32 %22, 13
  store i32 %23, ptr %0, align 8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store i32 1, ptr %24, align 8, !tbaa !181
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  store ptr %20, ptr %25, align 8, !tbaa !181
  tail call void @remove_node_from_expr_list(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #20
  br label %35

26:                                               ; preds = %14
  tail call void @remove_node_from_expr_list(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #20
  br label %27

27:                                               ; preds = %1, %26
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !201

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.1) #20
  br label %32

32:                                               ; preds = %27, %31
  tail call void @remove_insn(ptr noundef nonnull %0) #20
  %33 = load i32, ptr %0, align 8
  %34 = or i32 %33, 134217728
  store i32 %34, ptr %0, align 8
  br label %35

35:                                               ; preds = %18, %32
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %67, !prof !202

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43, !prof !203

43:                                               ; preds = %39
  %44 = load i32, ptr %41, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %51, !prof !204

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !181
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %48, align 8, !tbaa !181
  br label %51

51:                                               ; preds = %47, %43, %39
  %52 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef null) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %67, label %54, !prof !205

54:                                               ; preds = %51, %61
  %55 = phi ptr [ %65, %61 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !181
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 12
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !181
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %62, align 8, !tbaa !181
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %55) #20
  %65 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 9, ptr noundef null) #20
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %54, !prof !205, !llvm.loop !206

67:                                               ; preds = %61, %54, %51, %35
  %68 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef null) #20
  %69 = icmp eq ptr %68, null
  br i1 %69, label %83, label %70, !prof !207

70:                                               ; preds = %67, %77
  %71 = phi ptr [ %81, %77 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %77, label %83, !prof !208

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !181
  %80 = add nsw i32 %79, -1
  store i32 %80, ptr %78, align 8, !tbaa !181
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %71) #20
  %81 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef null) #20
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %70, !prof !208, !llvm.loop !209

83:                                               ; preds = %70, %77, %67
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %121, !prof !202

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !181
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65534
  %92 = icmp eq i32 %91, 20
  br i1 %92, label %93, label %121, !prof !210

93:                                               ; preds = %87
  %94 = and i32 %90, 21
  %95 = icmp eq i32 %94, 21
  %96 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %97 = zext i1 %95 to i64
  %98 = getelementptr inbounds [1 x %union.rtunion_def], ptr %96, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !181
  %100 = load i32, ptr %99, align 8, !tbaa !211
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %93
  %103 = zext nneg i32 %100 to i64
  br label %104

104:                                              ; preds = %102, %118
  %105 = phi i64 [ 0, %102 ], [ %119, %118 ]
  %106 = load ptr, ptr %98, align 8, !tbaa !181
  %107 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1, i64 %105
  %108 = load ptr, ptr %107, align 8, !tbaa !170
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !181
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %118, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !181
  %117 = add nsw i32 %116, -1
  store i32 %117, ptr %115, align 8, !tbaa !181
  br label %118

118:                                              ; preds = %114, %104
  %119 = add nuw nsw i64 %105, 1
  %120 = icmp eq i64 %119, %103
  br i1 %120, label %121, label %104, !llvm.loop !213

121:                                              ; preds = %118, %93, %87, %83
  ret ptr %3
}

declare void @remove_node_from_expr_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_insn(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @delete_insn_and_edges(ptr noundef %0) local_unnamed_addr #10 !prof !214 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %16, !prof !215

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !181
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !216

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !217
  %15 = icmp ne ptr %14, %0
  br label %16

16:                                               ; preds = %10, %1, %6
  %17 = phi i1 [ true, %6 ], [ true, %1 ], [ %15, %10 ]
  %18 = tail call ptr @delete_insn(ptr noundef nonnull %0)
  br i1 %17, label %23, label %19, !prof !219

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !181
  %22 = tail call zeroext i8 @purge_dead_edges(ptr noundef %21), !range !220
  br label %23

23:                                               ; preds = %19, %16
  ret ptr %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @purge_dead_edges(ptr noundef %0) local_unnamed_addr #9 !prof !221 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !217
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %9, label %20, !prof !222

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !223
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %9, %18
  %13 = phi ptr [ %15, %18 ], [ %5, %9 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %20 [
    i16 7, label %18
    i16 13, label %18
  ]

18:                                               ; preds = %12, %12
  %19 = icmp eq ptr %15, %10
  br i1 %19, label %20, label %12, !llvm.loop !224

20:                                               ; preds = %12, %18, %9, %1
  %21 = phi ptr [ %5, %1 ], [ %5, %9 ], [ %15, %18 ], [ %15, %12 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %42, !prof !225

25:                                               ; preds = %20
  %26 = tail call ptr @find_reg_note(ptr noundef nonnull %21, i32 noundef 25, ptr noundef null) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28, !prof !226

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = tail call i32 @may_trap_p(ptr noundef %30) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %21) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !181
  %39 = tail call i32 @may_trap_p(ptr noundef %38) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %28
  tail call void @remove_note(ptr noundef nonnull %21, ptr noundef nonnull %26) #20
  br label %42

42:                                               ; preds = %33, %36, %41, %25, %20
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %44

44:                                               ; preds = %103, %42
  %45 = phi i32 [ %104, %103 ], [ 0, %42 ]
  %46 = phi i8 [ %48, %103 ], [ 0, %42 ]
  br label %47

47:                                               ; preds = %44, %93
  %48 = phi i8 [ 1, %93 ], [ %46, %44 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !170
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !227

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8, !tbaa !228
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ 0, %47 ]
  %55 = icmp eq i32 %54, %45
  br i1 %55, label %60, label %56, !prof !230

56:                                               ; preds = %53
  %57 = zext i32 %45 to i64
  %58 = getelementptr inbounds %struct.VEC_edge_base, ptr %49, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !170
  br label %60

60:                                               ; preds = %53, %56
  %61 = phi ptr [ %59, %56 ], [ null, %53 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %105, label %63, !prof !230

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !231
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68, !prof !233

68:                                               ; preds = %63
  %69 = load i32, ptr %21, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = tail call zeroext i8 @can_nonlocal_goto(ptr noundef nonnull %21) #20
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32, ptr %64, align 8, !tbaa !231
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %21) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79, %75
  br label %90

83:                                               ; preds = %63
  %84 = and i32 %65, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86, !prof !233

86:                                               ; preds = %83
  %87 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %21) #20
  %88 = icmp eq i8 %87, 0
  %89 = zext i1 %88 to i8
  br label %90

90:                                               ; preds = %68, %83, %86, %82, %79, %72
  %91 = phi i8 [ 0, %72 ], [ 0, %79 ], [ 1, %82 ], [ %89, %86 ], [ 0, %83 ], [ 1, %68 ]
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93, !prof !233

93:                                               ; preds = %90
  tail call void @remove_edge(ptr noundef nonnull %61) #20
  tail call void @df_set_bb_dirty(ptr noundef %0) #20
  br label %47, !llvm.loop !234

94:                                               ; preds = %90
  %95 = load ptr, ptr %43, align 8, !tbaa !170
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97, !prof !235

97:                                               ; preds = %94
  %98 = load i32, ptr %95, align 8, !tbaa !228
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %98, %97 ], [ 0, %94 ]
  %101 = icmp ult i32 %45, %100
  br i1 %101, label %103, label %102, !prof !233

102:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %99, %102
  %104 = add i32 %45, 1
  br label %44, !llvm.loop !234

105:                                              ; preds = %60
  %106 = load i32, ptr %21, align 8
  %107 = trunc i32 %106 to i16
  switch i16 %107, label %314 [
    i16 9, label %108
    i16 10, label %311
  ], !prof !236

108:                                              ; preds = %105
  %109 = tail call i32 @any_condjump_p(ptr noundef nonnull %21) #20
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117, !prof !237

111:                                              ; preds = %108
  %112 = tail call i32 @returnjump_p(ptr noundef nonnull %21) #20
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117, !prof !238

114:                                              ; preds = %111
  %115 = tail call i32 @simplejump_p(ptr noundef nonnull %21) #20
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %435, label %117, !prof !239

117:                                              ; preds = %114, %111, %108
  %118 = tail call i32 @simplejump_p(ptr noundef nonnull %21) #20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120, !prof !240

120:                                              ; preds = %117
  %121 = tail call ptr @find_reg_note(ptr noundef nonnull %21, i32 noundef 13, ptr noundef null) #20
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123, !prof !241

123:                                              ; preds = %120
  tail call void @remove_note(ptr noundef nonnull %21, ptr noundef nonnull %121) #20
  br label %124

124:                                              ; preds = %123, %120
  %125 = tail call ptr @find_reg_note(ptr noundef nonnull %21, i32 noundef 16, ptr noundef null) #20
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127, !prof !205

127:                                              ; preds = %124, %127
  %128 = phi ptr [ %129, %127 ], [ %125, %124 ]
  tail call void @remove_note(ptr noundef nonnull %21, ptr noundef nonnull %128) #20
  %129 = tail call ptr @find_reg_note(ptr noundef nonnull %21, i32 noundef 16, ptr noundef null) #20
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %127, !prof !205, !llvm.loop !242

131:                                              ; preds = %127, %124, %117
  %132 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %133

133:                                              ; preds = %222, %131
  %134 = phi i32 [ 0, %131 ], [ %223, %222 ]
  %135 = phi i8 [ %48, %131 ], [ %137, %222 ]
  br label %136

136:                                              ; preds = %133, %224
  %137 = phi i8 [ 1, %224 ], [ %135, %133 ]
  %138 = load ptr, ptr %43, align 8, !tbaa !170
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140, !prof !243

140:                                              ; preds = %136
  %141 = load i32, ptr %138, align 8, !tbaa !228
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi i32 [ %141, %140 ], [ 0, %136 ]
  %144 = icmp eq i32 %143, %134
  br i1 %144, label %149, label %145, !prof !244

145:                                              ; preds = %142
  %146 = zext i32 %134 to i64
  %147 = getelementptr inbounds %struct.VEC_edge_base, ptr %138, i64 0, i32 2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !170
  br label %149

149:                                              ; preds = %142, %145
  %150 = phi ptr [ %148, %145 ], [ null, %142 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %225, label %152, !prof !244

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 7
  %154 = load i32, ptr %153, align 8, !tbaa !231
  %155 = and i32 %154, -3
  store i32 %155, ptr %153, align 8, !tbaa !231
  %156 = and i32 %154, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %169, label %158, !prof !245

158:                                              ; preds = %152
  %159 = tail call i32 @any_condjump_p(ptr noundef nonnull %21) #20
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161, !prof !246

161:                                              ; preds = %158
  %162 = load ptr, ptr %43, align 8, !tbaa !170
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164, !prof !246

164:                                              ; preds = %161
  %165 = load i32, ptr %162, align 8, !tbaa !228
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i32 [ %165, %164 ], [ 0, %161 ]
  %168 = icmp ult i32 %134, %167
  br i1 %168, label %222, label %221, !prof !247

169:                                              ; preds = %158, %152
  %170 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !248
  %172 = load ptr, ptr @cfun, align 8, !tbaa !170
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !249
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !251
  %177 = icmp eq ptr %171, %176
  br i1 %177, label %193, label %178, !prof !253

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 7
  %180 = load ptr, ptr %179, align 8, !tbaa !181
  %181 = load ptr, ptr %180, align 8, !tbaa !223
  %182 = load ptr, ptr %132, align 8, !tbaa !181
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %184, label %192, !prof !254

184:                                              ; preds = %178
  %185 = load ptr, ptr %43, align 8, !tbaa !170
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187, !prof !255

187:                                              ; preds = %184
  %188 = load i32, ptr %185, align 8, !tbaa !228
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i32 [ %188, %187 ], [ 0, %184 ]
  %191 = icmp ult i32 %134, %190
  br i1 %191, label %222, label %221, !prof !256

192:                                              ; preds = %178
  br i1 %177, label %193, label %204, !prof !257

193:                                              ; preds = %169, %192
  %194 = tail call i32 @returnjump_p(ptr noundef nonnull %21) #20
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %204, label %196, !prof !258

196:                                              ; preds = %193
  %197 = load ptr, ptr %43, align 8, !tbaa !170
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199, !prof !258

199:                                              ; preds = %196
  %200 = load i32, ptr %197, align 8, !tbaa !228
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i32 [ %200, %199 ], [ 0, %196 ]
  %203 = icmp ult i32 %134, %202
  br i1 %203, label %222, label %221, !prof !259

204:                                              ; preds = %193, %192
  %205 = load i32, ptr %153, align 8, !tbaa !231
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %224, label %208, !prof !260

208:                                              ; preds = %204
  %209 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %21) #20
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %208
  %212 = load i32, ptr %153, align 8, !tbaa !231
  %213 = or i32 %212, 2
  store i32 %213, ptr %153, align 8, !tbaa !231
  %214 = load ptr, ptr %43, align 8, !tbaa !170
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = load i32, ptr %214, align 8, !tbaa !228
  br label %218

218:                                              ; preds = %216, %211
  %219 = phi i32 [ %217, %216 ], [ 0, %211 ]
  %220 = icmp ult i32 %134, %219
  br i1 %220, label %222, label %221

221:                                              ; preds = %218, %201, %189, %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %222

222:                                              ; preds = %221, %218, %201, %189, %166
  %223 = add i32 %134, 1
  br label %133, !llvm.loop !261

224:                                              ; preds = %204, %208
  tail call void @df_set_bb_dirty(ptr noundef %0) #20
  tail call void @remove_edge(ptr noundef nonnull %150) #20
  br label %136, !llvm.loop !261

225:                                              ; preds = %149
  br i1 %139, label %229, label %226, !prof !262

226:                                              ; preds = %225
  %227 = load i32, ptr %138, align 8, !tbaa !228
  %228 = icmp ne i32 %227, 0
  br label %229

229:                                              ; preds = %225, %226
  %230 = phi i1 [ %228, %226 ], [ false, %225 ]
  %231 = icmp ne i8 %137, 0
  %232 = select i1 %230, i1 %231, i1 false, !prof !263
  br i1 %232, label %233, label %435, !prof !264

233:                                              ; preds = %229
  %234 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236, !prof !265

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %238 = load i32, ptr %237, align 8, !tbaa !266
  %239 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %234, ptr noundef nonnull @.str.17, i32 noundef %238)
  br label %240

240:                                              ; preds = %236, %233
  %241 = load i32, ptr @optimize, align 4, !tbaa !185
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %435, label %243, !prof !268

243:                                              ; preds = %240
  %244 = load ptr, ptr %43, align 8, !tbaa !269
  %245 = icmp eq ptr %244, null
  br i1 %245, label %271, label %246, !prof !268

246:                                              ; preds = %243
  %247 = load i32, ptr %244, align 8, !tbaa !228
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %271, !prof !265

249:                                              ; preds = %246
  br i1 %245, label %253, label %250, !prof !268

250:                                              ; preds = %249
  %251 = load i32, ptr %244, align 8, !tbaa !228
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %254, label %253, !prof !265

253:                                              ; preds = %249, %250
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %254

254:                                              ; preds = %250, %253
  %255 = load ptr, ptr %43, align 8, !tbaa !269
  %256 = getelementptr inbounds %struct.VEC_edge_base, ptr %255, i64 0, i32 2, i64 0
  %257 = load ptr, ptr %256, align 8, !tbaa !170
  %258 = getelementptr inbounds %struct.edge_def, ptr %257, i64 0, i32 8
  store i32 10000, ptr %258, align 4, !tbaa !270
  %259 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %260 = load i64, ptr %259, align 8, !tbaa !271
  %261 = icmp eq ptr %255, null
  br i1 %261, label %265, label %262, !prof !268

262:                                              ; preds = %254
  %263 = load i32, ptr %255, align 8, !tbaa !228
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %266, label %265, !prof !265

265:                                              ; preds = %254, %262
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %266

266:                                              ; preds = %262, %265
  %267 = load ptr, ptr %43, align 8, !tbaa !269
  %268 = getelementptr inbounds %struct.VEC_edge_base, ptr %267, i64 0, i32 2, i64 0
  %269 = load ptr, ptr %268, align 8, !tbaa !170
  %270 = getelementptr inbounds %struct.edge_def, ptr %269, i64 0, i32 9
  store i64 %260, ptr %270, align 8, !tbaa !272
  br label %435

271:                                              ; preds = %243, %246
  %272 = tail call ptr @find_reg_note(ptr noundef nonnull %21, i32 noundef 13, ptr noundef null) #20
  %273 = icmp eq ptr %272, null
  br i1 %273, label %435, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr %43, align 8, !tbaa !269
  %276 = getelementptr inbounds %struct.VEC_edge_base, ptr %275, i64 0, i32 2, i64 0
  %277 = load ptr, ptr %276, align 8, !tbaa !170
  %278 = getelementptr inbounds %struct.edge_def, ptr %277, i64 0, i32 7
  %279 = load i32, ptr %278, align 8, !tbaa !231
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.VEC_edge_base, ptr %275, i64 0, i32 2, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !170
  br label %285

285:                                              ; preds = %274, %282
  %286 = phi ptr [ %284, %282 ], [ %277, %274 ]
  br i1 %281, label %287, label %290

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.VEC_edge_base, ptr %275, i64 0, i32 2, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !170
  br label %290

290:                                              ; preds = %285, %287
  %291 = phi ptr [ %289, %287 ], [ %277, %285 ]
  %292 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !181
  %294 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1
  %295 = load i64, ptr %294, align 8, !tbaa !181
  %296 = trunc i64 %295 to i32
  %297 = getelementptr inbounds %struct.edge_def, ptr %286, i64 0, i32 8
  store i32 %296, ptr %297, align 4, !tbaa !270
  %298 = sub nsw i32 10000, %296
  %299 = getelementptr inbounds %struct.edge_def, ptr %291, i64 0, i32 8
  store i32 %298, ptr %299, align 4, !tbaa !270
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %301 = load i64, ptr %300, align 8, !tbaa !271
  %302 = load i32, ptr %297, align 4, !tbaa !270
  %303 = sext i32 %302 to i64
  %304 = mul nsw i64 %301, %303
  %305 = sdiv i64 %304, 10000
  %306 = getelementptr inbounds %struct.edge_def, ptr %286, i64 0, i32 9
  store i64 %305, ptr %306, align 8, !tbaa !272
  %307 = sext i32 %298 to i64
  %308 = mul nsw i64 %301, %307
  %309 = sdiv i64 %308, 10000
  %310 = getelementptr inbounds %struct.edge_def, ptr %291, i64 0, i32 9
  store i64 %309, ptr %310, align 8, !tbaa !272
  br label %435

311:                                              ; preds = %105
  %312 = and i32 %106, 16777216
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %315, !prof !273

314:                                              ; preds = %105, %311
  br label %335

315:                                              ; preds = %311
  br i1 %50, label %319, label %316, !prof !274

316:                                              ; preds = %315
  %317 = load i32, ptr %49, align 8, !tbaa !228
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %320, label %319, !prof !275

319:                                              ; preds = %315, %316
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2386, ptr noundef nonnull @.str.1) #20
  br label %320

320:                                              ; preds = %316, %319
  %321 = load ptr, ptr %43, align 8, !tbaa !269
  %322 = icmp eq ptr %321, null
  br i1 %322, label %326, label %323, !prof !274

323:                                              ; preds = %320
  %324 = load i32, ptr %321, align 8, !tbaa !228
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %327, label %326, !prof !275

326:                                              ; preds = %320, %323
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %327

327:                                              ; preds = %323, %326
  %328 = load ptr, ptr %43, align 8, !tbaa !269
  %329 = getelementptr inbounds %struct.VEC_edge_base, ptr %328, i64 0, i32 2, i64 0
  %330 = load ptr, ptr %329, align 8, !tbaa !170
  %331 = getelementptr inbounds %struct.edge_def, ptr %330, i64 0, i32 7
  %332 = load i32, ptr %331, align 8, !tbaa !231
  %333 = icmp eq i32 %332, 258
  br i1 %333, label %435, label %334, !prof !275

334:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2388, ptr noundef nonnull @.str.1) #20
  br label %435

335:                                              ; preds = %314, %363
  %336 = phi i32 [ %364, %363 ], [ 0, %314 ]
  %337 = load ptr, ptr %43, align 8, !tbaa !170
  %338 = icmp eq ptr %337, null
  br i1 %338, label %341, label %339, !prof !276

339:                                              ; preds = %335
  %340 = load i32, ptr %337, align 8, !tbaa !228
  br label %341

341:                                              ; preds = %339, %335
  %342 = phi i32 [ %340, %339 ], [ 0, %335 ]
  %343 = icmp eq i32 %342, %336
  br i1 %343, label %348, label %344, !prof !277

344:                                              ; preds = %341
  %345 = zext i32 %336 to i64
  %346 = getelementptr inbounds %struct.VEC_edge_base, ptr %337, i64 0, i32 2, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !170
  br label %348

348:                                              ; preds = %341, %344
  %349 = phi ptr [ %347, %344 ], [ null, %341 ]
  br i1 %343, label %435, label %350, !prof !277

350:                                              ; preds = %348
  %351 = getelementptr inbounds %struct.edge_def, ptr %349, i64 0, i32 7
  %352 = load i32, ptr %351, align 8, !tbaa !231
  %353 = and i32 %352, 15
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %397, label %355, !prof !278

355:                                              ; preds = %350
  %356 = icmp eq ptr %337, null
  br i1 %356, label %359, label %357, !prof !279

357:                                              ; preds = %355
  %358 = load i32, ptr %337, align 8, !tbaa !228
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %358, %357 ], [ 0, %355 ]
  %361 = icmp ult i32 %336, %360
  br i1 %361, label %363, label %362, !prof !280

362:                                              ; preds = %359
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %363

363:                                              ; preds = %359, %362
  %364 = add i32 %336, 1
  br label %335, !llvm.loop !281

365:                                              ; preds = %397, %386
  %366 = phi i8 [ 1, %386 ], [ %399, %397 ]
  %367 = load ptr, ptr %43, align 8, !tbaa !170
  %368 = icmp eq ptr %367, null
  br i1 %368, label %371, label %369, !prof !282

369:                                              ; preds = %365
  %370 = load i32, ptr %367, align 8, !tbaa !228
  br label %371

371:                                              ; preds = %369, %365
  %372 = phi i32 [ %370, %369 ], [ 0, %365 ]
  %373 = icmp eq i32 %372, %398
  br i1 %373, label %378, label %374, !prof !283

374:                                              ; preds = %371
  %375 = zext i32 %398 to i64
  %376 = getelementptr inbounds %struct.VEC_edge_base, ptr %367, i64 0, i32 2, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !170
  br label %378

378:                                              ; preds = %371, %374
  %379 = phi ptr [ %377, %374 ], [ null, %371 ]
  %380 = icmp eq ptr %379, null
  br i1 %380, label %400, label %381, !prof !283

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.edge_def, ptr %379, i64 0, i32 7
  %383 = load i32, ptr %382, align 8, !tbaa !231
  %384 = and i32 %383, 17
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %387, !prof !284

386:                                              ; preds = %381
  tail call void @df_set_bb_dirty(ptr noundef %0) #20
  tail call void @remove_edge(ptr noundef nonnull %379) #20
  br label %365, !llvm.loop !285

387:                                              ; preds = %381
  %388 = icmp eq ptr %367, null
  br i1 %388, label %391, label %389, !prof !286

389:                                              ; preds = %387
  %390 = load i32, ptr %367, align 8, !tbaa !228
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %390, %389 ], [ 0, %387 ]
  %393 = icmp ult i32 %398, %392
  br i1 %393, label %395, label %394, !prof !287

394:                                              ; preds = %391
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %395

395:                                              ; preds = %391, %394
  %396 = add i32 %398, 1
  br label %397, !llvm.loop !285

397:                                              ; preds = %350, %395
  %398 = phi i32 [ %396, %395 ], [ 0, %350 ]
  %399 = phi i8 [ %366, %395 ], [ %48, %350 ]
  br label %365

400:                                              ; preds = %378
  br i1 %368, label %404, label %401, !prof !286

401:                                              ; preds = %400
  %402 = load i32, ptr %367, align 8, !tbaa !228
  %403 = icmp eq i32 %402, 1
  br i1 %403, label %405, label %404, !prof !287

404:                                              ; preds = %400, %401
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2424, ptr noundef nonnull @.str.1) #20
  br label %405

405:                                              ; preds = %401, %404
  %406 = load ptr, ptr %43, align 8, !tbaa !269
  %407 = icmp eq ptr %406, null
  br i1 %407, label %411, label %408, !prof !286

408:                                              ; preds = %405
  %409 = load i32, ptr %406, align 8, !tbaa !228
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %412, label %411, !prof !287

411:                                              ; preds = %405, %408
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %412

412:                                              ; preds = %408, %411
  %413 = load ptr, ptr %43, align 8, !tbaa !269
  %414 = getelementptr inbounds %struct.VEC_edge_base, ptr %413, i64 0, i32 2, i64 0
  %415 = load ptr, ptr %414, align 8, !tbaa !170
  %416 = getelementptr inbounds %struct.edge_def, ptr %415, i64 0, i32 8
  store i32 10000, ptr %416, align 4, !tbaa !270
  %417 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %418 = load i64, ptr %417, align 8, !tbaa !271
  %419 = icmp eq ptr %413, null
  br i1 %419, label %423, label %420, !prof !286

420:                                              ; preds = %412
  %421 = load i32, ptr %413, align 8, !tbaa !228
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %424, label %423, !prof !287

423:                                              ; preds = %412, %420
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %424

424:                                              ; preds = %420, %423
  %425 = load ptr, ptr %43, align 8, !tbaa !269
  %426 = getelementptr inbounds %struct.VEC_edge_base, ptr %425, i64 0, i32 2, i64 0
  %427 = load ptr, ptr %426, align 8, !tbaa !170
  %428 = getelementptr inbounds %struct.edge_def, ptr %427, i64 0, i32 9
  store i64 %418, ptr %428, align 8, !tbaa !272
  %429 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %430 = icmp eq ptr %429, null
  br i1 %430, label %435, label %431, !prof !287

431:                                              ; preds = %424
  %432 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %433 = load i32, ptr %432, align 8, !tbaa !266
  %434 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %429, ptr noundef nonnull @.str.18, i32 noundef %433)
  br label %435

435:                                              ; preds = %348, %114, %229, %240, %271, %290, %266, %424, %431, %334, %327
  %436 = phi i8 [ 0, %327 ], [ 0, %334 ], [ %366, %431 ], [ %366, %424 ], [ %48, %114 ], [ %137, %229 ], [ 1, %240 ], [ 1, %271 ], [ 1, %290 ], [ 1, %266 ], [ %48, %348 ]
  ret i8 %436
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @delete_insn_chain(ptr noundef %0, ptr noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !288 {
  %4 = icmp eq i8 %2, 0
  br label %5

5:                                                ; preds = %141, %3
  %6 = phi ptr [ %0, %3 ], [ %134, %141 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 13
  br i1 %9, label %10, label %15, !prof !289

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !181
  switch i32 %14, label %133 [
    i32 0, label %15
    i32 10, label %15
    i32 6, label %15
  ], !prof !290

15:                                               ; preds = %10, %10, %10, %5
  %16 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  %18 = icmp eq i32 %8, 12
  br i1 %18, label %19, label %39, !prof !190

19:                                               ; preds = %15
  %20 = and i32 %7, 268435456
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !191

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !181
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30, !prof !191

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !192
  %28 = tail call i32 @in_expr_list_p(ptr noundef %27, ptr noundef nonnull %6) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30, !prof !191

30:                                               ; preds = %26, %22, %19
  %31 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !181
  %33 = load i32, ptr %6, align 8
  %34 = and i32 %33, -65536
  %35 = or disjoint i32 %34, 13
  store i32 %35, ptr %6, align 8
  %36 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  store i32 1, ptr %36, align 8, !tbaa !181
  %37 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 2
  store ptr %32, ptr %37, align 8, !tbaa !181
  tail call void @remove_node_from_expr_list(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #20
  br label %47

38:                                               ; preds = %26
  tail call void @remove_node_from_expr_list(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #20
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, ptr %6, align 8
  %41 = and i32 %40, 134217728
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !201

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.1) #20
  br label %44

44:                                               ; preds = %43, %39
  tail call void @remove_insn(ptr noundef nonnull %6) #20
  %45 = load i32, ptr %6, align 8
  %46 = or i32 %45, 134217728
  store i32 %46, ptr %6, align 8
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32, ptr %6, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %79, !prof !202

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !181
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55, !prof !203

55:                                               ; preds = %51
  %56 = load i32, ptr %53, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %63, !prof !204

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !181
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %60, align 8, !tbaa !181
  br label %63

63:                                               ; preds = %59, %55, %51
  %64 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 9, ptr noundef null) #20
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66, !prof !205

66:                                               ; preds = %63, %73
  %67 = phi ptr [ %77, %73 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !181
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 12
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !181
  %76 = add nsw i32 %75, -1
  store i32 %76, ptr %74, align 8, !tbaa !181
  tail call void @remove_note(ptr noundef nonnull %6, ptr noundef nonnull %67) #20
  %77 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 9, ptr noundef null) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %66, !prof !205, !llvm.loop !206

79:                                               ; preds = %73, %66, %63, %47
  %80 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 10, ptr noundef null) #20
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82, !prof !207

82:                                               ; preds = %79, %89
  %83 = phi ptr [ %93, %89 ], [ %80, %79 ]
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !181
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %95, !prof !208

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !181
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %90, align 8, !tbaa !181
  tail call void @remove_note(ptr noundef nonnull %6, ptr noundef nonnull %83) #20
  %93 = tail call ptr @find_reg_note(ptr noundef nonnull %6, i32 noundef 10, ptr noundef null) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %82, !prof !208, !llvm.loop !209

95:                                               ; preds = %89, %82, %79
  %96 = load i32, ptr %6, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %133, !prof !202

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !181
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65534
  %104 = icmp eq i32 %103, 20
  br i1 %104, label %105, label %133, !prof !210

105:                                              ; preds = %99
  %106 = and i32 %102, 21
  %107 = icmp eq i32 %106, 21
  %108 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %109 = zext i1 %107 to i64
  %110 = getelementptr inbounds [1 x %union.rtunion_def], ptr %108, i64 0, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !181
  %112 = load i32, ptr %111, align 8, !tbaa !211
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %105
  %115 = zext nneg i32 %112 to i64
  br label %116

116:                                              ; preds = %130, %114
  %117 = phi i64 [ 0, %114 ], [ %131, %130 ]
  %118 = load ptr, ptr %110, align 8, !tbaa !181
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %118, i64 0, i32 1, i64 %117
  %120 = load ptr, ptr %119, align 8, !tbaa !170
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !181
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 13
  br i1 %125, label %130, label %126

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !181
  %129 = add nsw i32 %128, -1
  store i32 %129, ptr %127, align 8, !tbaa !181
  br label %130

130:                                              ; preds = %126, %116
  %131 = add nuw nsw i64 %117, 1
  %132 = icmp eq i64 %131, %115
  br i1 %132, label %133, label %116, !llvm.loop !213

133:                                              ; preds = %130, %10, %105, %99, %95
  %134 = phi ptr [ %17, %95 ], [ %17, %99 ], [ %17, %105 ], [ %12, %10 ], [ %17, %130 ]
  br i1 %4, label %141, label %135, !prof !291

135:                                              ; preds = %133
  %136 = load i32, ptr %6, align 8
  %137 = and i32 %136, 134217728
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141, !prof !292

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %140, align 8, !tbaa !181
  br label %141

141:                                              ; preds = %139, %135, %133
  %142 = icmp eq ptr %6, %1
  br i1 %142, label %143, label %5, !prof !293, !llvm.loop !294

143:                                              ; preds = %141
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @create_basic_block_structure(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !169 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %30, label %6, !prof !295

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !181
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !296
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !181
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ %0, %14 ]
  %23 = phi ptr [ %2, %18 ], [ %0, %14 ]
  %24 = icmp eq ptr %22, %2
  br i1 %24, label %61, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  tail call void @reorder_insns_nobb(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %22) #20
  br label %61

30:                                               ; preds = %10, %6, %4
  %31 = tail call ptr @alloc_block() #20
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !295

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3064, ptr noundef nonnull @.str.1) #20
  br label %36

36:                                               ; preds = %30, %35
  %37 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #20
  store ptr %37, ptr %32, align 8, !tbaa !181
  %38 = icmp ne ptr %0, null
  %39 = icmp ne ptr %1, null
  %40 = or i1 %38, %39
  br i1 %40, label %44, label %41, !prof !295

41:                                               ; preds = %36
  %42 = tail call ptr @get_last_insn() #20
  %43 = tail call ptr @emit_note_after(i32 noundef 10, ptr noundef %42) #20
  br label %56

44:                                               ; preds = %36
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 12
  %48 = and i1 %39, %47
  br i1 %48, label %49, label %53, !prof !297

49:                                               ; preds = %44
  %50 = tail call ptr @emit_note_after(i32 noundef 10, ptr noundef nonnull %0) #20
  %51 = icmp eq ptr %0, %1
  %52 = select i1 %51, ptr %50, ptr %1, !prof !298
  br label %56

53:                                               ; preds = %44
  %54 = tail call ptr @emit_note_before(i32 noundef 10, ptr noundef nonnull %0) #20
  %55 = select i1 %39, ptr %1, ptr %54, !prof !299
  br label %56

56:                                               ; preds = %53, %49, %41
  %57 = phi ptr [ %43, %41 ], [ %50, %49 ], [ %54, %53 ]
  %58 = phi ptr [ %43, %41 ], [ %52, %49 ], [ %55, %53 ]
  %59 = phi ptr [ %43, %41 ], [ %0, %49 ], [ %54, %53 ]
  %60 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 2
  store ptr %31, ptr %60, align 8, !tbaa !181
  br label %61

61:                                               ; preds = %21, %25, %29, %56
  %62 = phi ptr [ %57, %56 ], [ %2, %29 ], [ %2, %25 ], [ %2, %21 ]
  %63 = phi ptr [ %58, %56 ], [ %1, %29 ], [ %1, %25 ], [ %1, %21 ]
  %64 = phi ptr [ %31, %56 ], [ %8, %29 ], [ %8, %25 ], [ %8, %21 ]
  %65 = phi ptr [ %59, %56 ], [ %23, %29 ], [ %23, %25 ], [ %23, %21 ]
  %66 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !181
  %68 = icmp eq ptr %67, %62
  %69 = select i1 %68, ptr %62, ptr %63, !prof !300
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !181
  store ptr %65, ptr %71, align 8, !tbaa !223
  %72 = load ptr, ptr %70, align 8, !tbaa !181
  %73 = getelementptr inbounds %struct.rtl_bb_info, ptr %72, i64 0, i32 1
  store ptr %69, ptr %73, align 8, !tbaa !217
  %74 = load ptr, ptr @cfun, align 8, !tbaa !170
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !249
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !301
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !301
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  store i32 %78, ptr %80, align 8, !tbaa !266
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 13
  store i32 513, ptr %81, align 8, !tbaa !302
  tail call void @link_block(ptr noundef %64, ptr noundef %3) #20
  %82 = load ptr, ptr @cfun, align 8, !tbaa !170
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !249
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !303
  %87 = load i32, ptr %80, align 8, !tbaa !266
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %86, i64 0, i32 2, i64 %88
  store ptr %64, ptr %89, align 8, !tbaa !170
  tail call void @df_bb_refs_record(i32 noundef %87, i8 noundef zeroext 0) #20
  %90 = load ptr, ptr %70, align 8, !tbaa !181
  %91 = getelementptr inbounds %struct.rtl_bb_info, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !217
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !181
  %95 = load ptr, ptr %90, align 8, !tbaa !181
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %107, label %97, !prof !304

97:                                               ; preds = %61, %103
  %98 = phi ptr [ %105, %103 ], [ %95, %61 ]
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 11
  br i1 %101, label %103, label %102, !prof !305

102:                                              ; preds = %97
  tail call void @df_insn_change_bb(ptr noundef nonnull %98, ptr noundef %64) #20
  br label %103

103:                                              ; preds = %102, %97
  %104 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !181
  %106 = icmp eq ptr %105, %94
  br i1 %106, label %107, label %97, !prof !306, !llvm.loop !307

107:                                              ; preds = %103, %61
  %108 = load i32, ptr %81, align 8, !tbaa !302
  %109 = and i32 %108, -97
  store i32 %109, ptr %81, align 8, !tbaa !302
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 2
  store ptr %64, ptr %110, align 8, !tbaa !296
  ret ptr %64
}

declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_block() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @init_rtl_bb_info(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !308 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !309

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3064, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #20
  store ptr %7, ptr %2, align 8, !tbaa !181
  ret void
}

declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_bb_refs_record(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @update_bb_for_insn(ptr noundef %0) local_unnamed_addr #9 !prof !310 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !217
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = load ptr, ptr %3, align 8, !tbaa !181
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %20, label %10, !prof !311

10:                                               ; preds = %1, %16
  %11 = phi ptr [ %18, %16 ], [ %8, %1 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 11
  br i1 %14, label %16, label %15, !prof !312

15:                                               ; preds = %10
  tail call void @df_insn_change_bb(ptr noundef nonnull %11, ptr noundef %0) #20
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %10, !prof !313, !llvm.loop !307

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_bb_for_insn() local_unnamed_addr #11 !prof !169 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = load ptr, ptr %3, align 8, !tbaa !314
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !315
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %29, label %17

10:                                               ; preds = %23
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !315
  %13 = load ptr, ptr %2, align 8, !tbaa !249
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !251
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %29, label %17, !llvm.loop !316

17:                                               ; preds = %0, %10
  %18 = phi ptr [ %12, %10 ], [ %6, %0 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !181
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !217
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi ptr [ %20, %17 ], [ %28, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 1
  store ptr %18, ptr %26, align 8, !tbaa !181
  %27 = icmp eq ptr %25, %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %27, label %10, label %23, !llvm.loop !317

29:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @free_bb_for_insn() local_unnamed_addr #10 !prof !318 {
  %1 = tail call ptr @get_insns() #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3, !prof !319

3:                                                ; preds = %0, %10
  %4 = phi ptr [ %12, %10 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 11
  br i1 %7, label %10, label %8, !prof !258

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %3, %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3, !prof !320, !llvm.loop !321

14:                                               ; preds = %10, %0
  ret i32 0
}

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_pass_free_cfg() #10 !prof !318 !PGOFuncName !322 {
  %1 = tail call ptr @get_insns() #20
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3, !prof !319

3:                                                ; preds = %0, %10
  %4 = phi ptr [ %12, %10 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 11
  br i1 %7, label %10, label %8, !prof !323

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3, !prof !324, !llvm.loop !321

14:                                               ; preds = %10, %0
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @entry_of_function() local_unnamed_addr #12 !prof !169 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !325
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load ptr, ptr %3, align 8, !tbaa !314
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !315
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = load ptr, ptr %12, align 8, !tbaa !223
  br label %16

14:                                               ; preds = %0
  %15 = tail call ptr @get_insns() #20
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %13, %7 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_insn_at_entry(ptr noundef %0) local_unnamed_addr #12 !prof !169 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 8, !tbaa !228
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 0
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  br label %15

15:                                               ; preds = %1, %9, %12
  %16 = phi ptr [ %14, %12 ], [ null, %9 ], [ null, %1 ]
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !231
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 466, ptr noundef nonnull @.str.1) #20
  br label %22

22:                                               ; preds = %15, %21
  tail call void @insert_insn_on_edge(ptr noundef %0, ptr noundef %16)
  tail call void @commit_edge_insertions()
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @insert_insn_on_edge(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !326 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !231
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7, !prof !327

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !328
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !269
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %10, align 8, !tbaa !228
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !248
  %18 = load ptr, ptr %17, align 8, !tbaa !329
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8, !tbaa !228
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1424, ptr noundef nonnull @.str.1) #20
  br label %24

24:                                               ; preds = %15, %7, %2, %12, %20, %23
  %25 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !181
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !330

28:                                               ; preds = %24
  tail call void @start_sequence() #20
  br label %30

29:                                               ; preds = %24
  tail call void @push_to_sequence(ptr noundef nonnull %26) #20
  br label %30

30:                                               ; preds = %29, %28
  %31 = tail call ptr @emit_insn(ptr noundef %0) #20
  %32 = tail call ptr @get_insns() #20
  store ptr %32, ptr %25, align 8, !tbaa !181
  tail call void @end_sequence() #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @commit_edge_insertions() local_unnamed_addr #10 !prof !331 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %123, label %8, !prof !332

8:                                                ; preds = %0, %45
  %9 = phi ptr [ %47, %45 ], [ %4, %0 ]
  %10 = phi i8 [ %14, %45 ], [ 0, %0 ]
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  br label %12

12:                                               ; preds = %43, %8
  %13 = phi i32 [ 0, %8 ], [ %44, %43 ]
  %14 = phi i8 [ %10, %8 ], [ %34, %43 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !170
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !333

17:                                               ; preds = %12
  %18 = load i32, ptr %15, align 8, !tbaa !228
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ 0, %12 ]
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %26, label %22, !prof !334

22:                                               ; preds = %19
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !170
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ null, %19 ]
  br i1 %21, label %45, label %28, !prof !334

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !335

32:                                               ; preds = %28
  tail call void @commit_one_edge_insertion(ptr noundef %27)
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8 [ 1, %32 ], [ %14, %28 ]
  %35 = load ptr, ptr %11, align 8, !tbaa !170
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !336

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !228
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ 0, %33 ]
  %41 = icmp ult i32 %13, %40
  br i1 %41, label %43, label %42, !prof !337

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %43

43:                                               ; preds = %39, %42
  %44 = add i32 %13, 1
  br label %12, !llvm.loop !338

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !170
  %48 = load ptr, ptr @cfun, align 8, !tbaa !170
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !249
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !251
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %54, label %8, !prof !339, !llvm.loop !340

54:                                               ; preds = %45
  %55 = icmp eq i8 %14, 0
  br i1 %55, label %123, label %56, !prof !341

56:                                               ; preds = %54
  %57 = tail call i32 @current_ir_type() #20
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %123, label %59, !prof !342

59:                                               ; preds = %56
  %60 = load ptr, ptr @cfun, align 8, !tbaa !170
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !249
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !301
  %65 = tail call ptr @sbitmap_alloc(i32 noundef %64) #20
  tail call void @sbitmap_zero(ptr noundef %65) #20
  %66 = load ptr, ptr @cfun, align 8, !tbaa !170
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !249
  %69 = load ptr, ptr %68, align 8, !tbaa !314
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !315
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !251
  %74 = icmp eq ptr %71, %73
  br i1 %74, label %121, label %75, !prof !319

75:                                               ; preds = %59, %112
  %76 = phi ptr [ %114, %112 ], [ %71, %59 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !296
  %79 = icmp eq ptr %78, null
  br i1 %79, label %112, label %80, !prof !343

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !266
  %83 = load ptr, ptr %65, align 8, !tbaa !344
  %84 = icmp eq ptr %83, null
  br i1 %84, label %99, label %85, !prof !346

85:                                               ; preds = %80
  %86 = lshr i32 %82, 6
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds %struct.simple_bitmap_def, ptr %65, i64 0, i32 3, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !347
  %90 = and i32 %82, 63
  %91 = zext nneg i32 %90 to i64
  %92 = shl nuw i64 1, %91
  %93 = and i64 %89, %92
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds i8, ptr %83, i64 %87
  %97 = load i8, ptr %96, align 1, !tbaa !181
  %98 = add i8 %97, 1
  store i8 %98, ptr %96, align 1, !tbaa !181
  br label %99

99:                                               ; preds = %80, %85, %95
  %100 = and i32 %82, 63
  %101 = zext nneg i32 %100 to i64
  %102 = shl nuw i64 1, %101
  %103 = lshr i32 %82, 6
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds %struct.simple_bitmap_def, ptr %65, i64 0, i32 3, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !347
  %107 = or i64 %106, %102
  store i64 %107, ptr %105, align 8, !tbaa !347
  %108 = load ptr, ptr %77, align 8, !tbaa !296
  %109 = icmp eq ptr %108, %77
  br i1 %109, label %111, label %110, !prof !346

110:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1594, ptr noundef nonnull @.str.1) #20
  br label %111

111:                                              ; preds = %99, %110
  store ptr null, ptr %77, align 8, !tbaa !296
  br label %112

112:                                              ; preds = %75, %111
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !315
  %115 = load ptr, ptr @cfun, align 8, !tbaa !170
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !249
  %118 = getelementptr inbounds %struct.control_flow_graph, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !251
  %120 = icmp eq ptr %114, %119
  br i1 %120, label %121, label %75, !prof !348, !llvm.loop !349

121:                                              ; preds = %112, %59
  tail call void @find_many_sub_basic_blocks(ptr noundef %65) #20
  %122 = load ptr, ptr %65, align 8, !tbaa !344
  tail call void @free(ptr noundef %122)
  tail call void @free(ptr noundef %65)
  br label %123

123:                                              ; preds = %0, %56, %54, %121
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @block_label(ptr noundef readonly %0) local_unnamed_addr #9 !prof !350 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %24, label %8, !prof !351

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = load ptr, ptr %10, align 8, !tbaa !223
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %21, label %15, !prof !352

15:                                               ; preds = %8
  %16 = tail call ptr @gen_label_rtx() #20
  %17 = load ptr, ptr %9, align 8, !tbaa !181
  %18 = load ptr, ptr %17, align 8, !tbaa !223
  %19 = tail call ptr @emit_label_before(ptr noundef %16, ptr noundef %18) #20
  %20 = load ptr, ptr %9, align 8, !tbaa !181
  store ptr %19, ptr %20, align 8, !tbaa !223
  br label %21

21:                                               ; preds = %15, %8
  %22 = load ptr, ptr %9, align 8, !tbaa !181
  %23 = load ptr, ptr %22, align 8, !tbaa !223
  br label %24

24:                                               ; preds = %1, %21
  %25 = phi ptr [ %23, %21 ], [ null, %1 ]
  ret ptr %25
}

declare ptr @emit_label_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @try_redirect_by_replacing_jump(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !353 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !328
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !181
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = tail call ptr @find_reg_note(ptr noundef %10, i32 noundef 29, ptr noundef null) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %370, !prof !354

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !302
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !302
  %18 = xor i32 %17, %15
  %19 = and i32 %18, 96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %370, !prof !354

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !269
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !355

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8, !tbaa !228
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %29 = icmp ugt i32 %28, 2
  br i1 %29, label %370, label %30, !prof !356

30:                                               ; preds = %27
  br i1 %24, label %33, label %31, !prof !357

31:                                               ; preds = %30
  %32 = load i32, ptr %23, align 8, !tbaa !228
  br label %33

33:                                               ; preds = %30, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %30 ]
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %46, !prof !358

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.VEC_edge_base, ptr %23, i64 0, i32 2, i64 0
  %38 = load ptr, ptr %37, align 8, !tbaa !170
  %39 = icmp eq ptr %38, %0
  %40 = zext i1 %39 to i64
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %23, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !170
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !248
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %370, !prof !359

46:                                               ; preds = %36, %33
  %47 = tail call i32 @onlyjump_p(ptr noundef %10) #20
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %370, label %49, !prof !360

49:                                               ; preds = %46
  %50 = load i32, ptr @optimize, align 4, !tbaa !185
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr @reload_completed, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 true, i1 %53, !prof !361
  br i1 %54, label %55, label %58, !prof !362

55:                                               ; preds = %49
  %56 = tail call zeroext i8 @tablejump_p(ptr noundef %10, ptr noundef null, ptr noundef null) #20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %370, !prof !363

58:                                               ; preds = %55, %49
  %59 = load i32, ptr %10, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -7
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %63, label %71, !prof !364

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !181
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 23
  br i1 %68, label %71, label %69, !prof !364

69:                                               ; preds = %63
  %70 = tail call ptr @single_set_2(ptr noundef nonnull %10, ptr noundef nonnull %65) #20
  br label %71

71:                                               ; preds = %58, %63, %69
  %72 = phi ptr [ %70, %69 ], [ null, %58 ], [ %65, %63 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %370, label %74, !prof !361

74:                                               ; preds = %71
  %75 = tail call i32 @side_effects_p(ptr noundef nonnull %72) #20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %370, !prof !364

77:                                               ; preds = %74
  %78 = icmp eq i8 %2, 0
  br i1 %78, label %79, label %82, !prof !365

79:                                               ; preds = %77
  %80 = tail call zeroext i8 @can_fallthru(ptr noundef %6, ptr noundef %1) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %166, label %82, !prof !366

82:                                               ; preds = %79, %77
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85, !prof !367

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !181
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %83, ptr noundef nonnull @.str.3, i32 noundef %87)
  br label %89

89:                                               ; preds = %85, %82
  br i1 %78, label %145, label %90, !prof !368

90:                                               ; preds = %89
  %91 = load ptr, ptr %7, align 8, !tbaa !181
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !369
  %94 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !217
  br label %96

96:                                               ; preds = %108, %90
  %97 = phi ptr [ %10, %90 ], [ %109, %108 ]
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 13
  br i1 %100, label %101, label %106, !prof !370

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !181
  %104 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 1
  %105 = load i32, ptr %104, align 8, !tbaa !181
  switch i32 %105, label %108 [
    i32 0, label %106
    i32 10, label %106
    i32 6, label %106
  ]

106:                                              ; preds = %101, %101, %101, %96
  %107 = tail call ptr @delete_insn(ptr noundef nonnull %97)
  br label %108

108:                                              ; preds = %101, %106
  %109 = phi ptr [ %107, %106 ], [ %103, %101 ]
  %110 = icmp eq ptr %97, %95
  br i1 %110, label %111, label %96, !prof !371, !llvm.loop !294

111:                                              ; preds = %108
  %112 = icmp eq ptr %93, null
  br i1 %112, label %335, label %113, !prof !372

113:                                              ; preds = %111, %141
  %114 = phi ptr [ %143, %141 ], [ %93, %111 ]
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 11
  br i1 %117, label %118, label %137, !prof !373

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !181
  %121 = icmp eq ptr %120, null
  %122 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %123 = load ptr, ptr %122, align 8, !tbaa !181
  br i1 %121, label %126, label %124, !prof !373

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %129

126:                                              ; preds = %118
  %127 = load ptr, ptr %7, align 8, !tbaa !181
  %128 = getelementptr inbounds %struct.rtl_bb_info, ptr %127, i64 0, i32 3
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi ptr [ %128, %126 ], [ %125, %124 ]
  store ptr %123, ptr %130, align 8, !tbaa !181
  %131 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !181
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134, !prof !373

134:                                              ; preds = %129
  %135 = load ptr, ptr %119, align 8, !tbaa !181
  %136 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %135, ptr %136, align 8, !tbaa !181
  br label %137

137:                                              ; preds = %129, %134, %113
  %138 = load i32, ptr %114, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 12
  br i1 %140, label %335, label %141, !prof !374

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %143 = load ptr, ptr %142, align 8, !tbaa !181
  %144 = icmp eq ptr %143, null
  br i1 %144, label %335, label %113, !prof !373, !llvm.loop !375

145:                                              ; preds = %89
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !181
  %148 = load ptr, ptr %147, align 8, !tbaa !223
  %149 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !181
  br label %151

151:                                              ; preds = %163, %145
  %152 = phi ptr [ %10, %145 ], [ %164, %163 ]
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 13
  br i1 %155, label %156, label %161, !prof !376

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 2
  %158 = load ptr, ptr %157, align 8, !tbaa !181
  %159 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 1
  %160 = load i32, ptr %159, align 8, !tbaa !181
  switch i32 %160, label %163 [
    i32 0, label %161
    i32 10, label %161
    i32 6, label %161
  ]

161:                                              ; preds = %156, %156, %156, %151
  %162 = tail call ptr @delete_insn(ptr noundef nonnull %152)
  br label %163

163:                                              ; preds = %156, %161
  %164 = phi ptr [ %162, %161 ], [ %158, %156 ]
  %165 = icmp eq ptr %152, %150
  br i1 %165, label %335, label %151, !prof !377, !llvm.loop !294

166:                                              ; preds = %79
  %167 = tail call i32 @simplejump_p(ptr noundef nonnull %10) #20
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %219, label %169, !prof !378

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !248
  %172 = icmp eq ptr %171, %1
  br i1 %172, label %370, label %173, !prof !379

173:                                              ; preds = %169
  %174 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %175 = icmp eq ptr %174, null
  br i1 %175, label %184, label %176, !prof !380

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !181
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !266
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !266
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %174, ptr noundef nonnull @.str.4, i32 noundef %178, i32 noundef %180, i32 noundef %182)
  br label %184

184:                                              ; preds = %176, %173
  %185 = load ptr, ptr @cfun, align 8, !tbaa !170
  %186 = getelementptr inbounds %struct.function, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !249
  %188 = getelementptr inbounds %struct.control_flow_graph, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !251
  %190 = icmp eq ptr %189, %1
  br i1 %190, label %207, label %191, !prof !351

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %193 = load ptr, ptr %192, align 8, !tbaa !181
  %194 = load ptr, ptr %193, align 8, !tbaa !223
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 12
  br i1 %197, label %204, label %198, !prof !352

198:                                              ; preds = %191
  %199 = tail call ptr @gen_label_rtx() #20
  %200 = load ptr, ptr %192, align 8, !tbaa !181
  %201 = load ptr, ptr %200, align 8, !tbaa !223
  %202 = tail call ptr @emit_label_before(ptr noundef %199, ptr noundef %201) #20
  %203 = load ptr, ptr %192, align 8, !tbaa !181
  store ptr %202, ptr %203, align 8, !tbaa !223
  br label %204

204:                                              ; preds = %198, %191
  %205 = load ptr, ptr %192, align 8, !tbaa !181
  %206 = load ptr, ptr %205, align 8, !tbaa !223
  br label %207

207:                                              ; preds = %184, %204
  %208 = phi ptr [ %206, %204 ], [ null, %184 ]
  %209 = tail call i32 @redirect_jump(ptr noundef nonnull %10, ptr noundef %208, i32 noundef 0) #20
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %335, !prof !381

211:                                              ; preds = %207
  %212 = load ptr, ptr @cfun, align 8, !tbaa !170
  %213 = getelementptr inbounds %struct.function, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !249
  %215 = getelementptr inbounds %struct.control_flow_graph, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !251
  %217 = icmp eq ptr %216, %1
  br i1 %217, label %370, label %218

218:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 837, ptr noundef nonnull @.str.1) #20
  br label %370

219:                                              ; preds = %166
  %220 = load ptr, ptr @cfun, align 8, !tbaa !170
  %221 = getelementptr inbounds %struct.function, ptr %220, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !249
  %223 = getelementptr inbounds %struct.control_flow_graph, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !251
  %225 = icmp eq ptr %224, %1
  br i1 %225, label %370, label %226

226:                                              ; preds = %219
  %227 = tail call ptr @block_label(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %228 = tail call ptr @gen_jump(ptr noundef %227) #20
  %229 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %228, ptr noundef nonnull %10) #20
  %230 = load ptr, ptr %7, align 8, !tbaa !181
  %231 = getelementptr inbounds %struct.rtl_bb_info, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !217
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %227, ptr %233, align 8, !tbaa !181
  %234 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 2
  %235 = load i32, ptr %234, align 8, !tbaa !181
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %234, align 8, !tbaa !181
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %238 = icmp eq ptr %237, null
  br i1 %238, label %248, label %239

239:                                              ; preds = %226
  %240 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !181
  %242 = load ptr, ptr %7, align 8, !tbaa !181
  %243 = getelementptr inbounds %struct.rtl_bb_info, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !217
  %245 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 8, !tbaa !181
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %237, ptr noundef nonnull @.str.5, i32 noundef %241, i32 noundef %246)
  br label %248

248:                                              ; preds = %239, %226
  br label %249

249:                                              ; preds = %248, %261
  %250 = phi ptr [ %262, %261 ], [ %10, %248 ]
  %251 = load i32, ptr %250, align 8
  %252 = and i32 %251, 65535
  %253 = icmp eq i32 %252, 13
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 0, i64 2
  %256 = load ptr, ptr %255, align 8, !tbaa !181
  %257 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 1
  %258 = load i32, ptr %257, align 8, !tbaa !181
  switch i32 %258, label %261 [
    i32 0, label %259
    i32 10, label %259
    i32 6, label %259
  ]

259:                                              ; preds = %254, %254, %254, %249
  %260 = tail call ptr @delete_insn(ptr noundef nonnull %250)
  br label %261

261:                                              ; preds = %254, %259
  %262 = phi ptr [ %260, %259 ], [ %256, %254 ]
  %263 = icmp eq ptr %250, %10
  br i1 %263, label %264, label %249, !llvm.loop !294

264:                                              ; preds = %261
  %265 = call zeroext i8 @tablejump_p(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %285, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %4, align 8, !tbaa !170
  %269 = load ptr, ptr %5, align 8, !tbaa !170
  br label %270

270:                                              ; preds = %282, %267
  %271 = phi ptr [ %268, %267 ], [ %283, %282 ]
  %272 = load i32, ptr %271, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 13
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 2
  %277 = load ptr, ptr %276, align 8, !tbaa !181
  %278 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 1
  %279 = load i32, ptr %278, align 8, !tbaa !181
  switch i32 %279, label %282 [
    i32 0, label %280
    i32 10, label %280
    i32 6, label %280
  ]

280:                                              ; preds = %275, %275, %275, %270
  %281 = call ptr @delete_insn(ptr noundef nonnull %271)
  br label %282

282:                                              ; preds = %275, %280
  %283 = phi ptr [ %281, %280 ], [ %277, %275 ]
  %284 = icmp eq ptr %271, %269
  br i1 %284, label %285, label %270, !llvm.loop !294

285:                                              ; preds = %282, %264
  %286 = load ptr, ptr %7, align 8, !tbaa !181
  %287 = getelementptr inbounds %struct.rtl_bb_info, ptr %286, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !217
  %289 = call ptr @next_nonnote_insn(ptr noundef %288) #20
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291

291:                                              ; preds = %285
  %292 = load i32, ptr %289, align 8
  %293 = and i32 %292, 65535
  %294 = icmp eq i32 %293, 11
  br i1 %294, label %300, label %295

295:                                              ; preds = %291, %285
  %296 = load ptr, ptr %7, align 8, !tbaa !181
  %297 = getelementptr inbounds %struct.rtl_bb_info, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !217
  %299 = call ptr @emit_barrier_after(ptr noundef %298) #20
  br label %334

300:                                              ; preds = %291
  %301 = load ptr, ptr %7, align 8, !tbaa !181
  %302 = getelementptr inbounds %struct.rtl_bb_info, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !217
  %304 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 2
  %305 = load ptr, ptr %304, align 8, !tbaa !181
  %306 = icmp eq ptr %289, %305
  br i1 %306, label %334, label %307

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !181
  %310 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1, i32 0, i32 0, i64 2
  %311 = load ptr, ptr %310, align 8, !tbaa !181
  %312 = icmp eq ptr %305, %311
  br i1 %312, label %323, label %313

313:                                              ; preds = %307, %319
  %314 = phi ptr [ %321, %319 ], [ %305, %307 ]
  %315 = load i32, ptr %314, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 11
  br i1 %317, label %319, label %318

318:                                              ; preds = %313
  call void @df_insn_change_bb(ptr noundef nonnull %314, ptr noundef %6) #20
  br label %319

319:                                              ; preds = %318, %313
  %320 = getelementptr inbounds %struct.rtx_def, ptr %314, i64 0, i32 1, i32 0, i32 0, i64 2
  %321 = load ptr, ptr %320, align 8, !tbaa !181
  %322 = icmp eq ptr %321, %311
  br i1 %322, label %323, label %313, !llvm.loop !307

323:                                              ; preds = %319, %307
  %324 = load ptr, ptr %304, align 8, !tbaa !181
  %325 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 1
  %326 = load ptr, ptr %325, align 8, !tbaa !181
  %327 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %324, ptr %327, align 8, !tbaa !181
  %328 = load ptr, ptr %325, align 8, !tbaa !181
  %329 = load ptr, ptr %304, align 8, !tbaa !181
  %330 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %328, ptr %330, align 8, !tbaa !181
  store ptr %289, ptr %304, align 8, !tbaa !181
  %331 = load ptr, ptr %308, align 8, !tbaa !181
  %332 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %303, ptr %332, align 8, !tbaa !181
  %333 = load ptr, ptr %308, align 8, !tbaa !181
  store ptr %333, ptr %325, align 8, !tbaa !181
  store ptr %303, ptr %308, align 8, !tbaa !181
  br label %334

334:                                              ; preds = %300, %323, %295
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %335

335:                                              ; preds = %137, %141, %163, %111, %334, %207
  %336 = phi i32 [ 0, %207 ], [ 0, %334 ], [ 1, %111 ], [ 1, %163 ], [ 1, %141 ], [ 1, %137 ]
  %337 = load ptr, ptr %22, align 8, !tbaa !269
  %338 = icmp eq ptr %337, null
  br i1 %338, label %342, label %339, !prof !382

339:                                              ; preds = %335
  %340 = load i32, ptr %337, align 8, !tbaa !228
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %343, label %342, !prof !383

342:                                              ; preds = %335, %339
  call void @remove_edge(ptr noundef nonnull %0) #20
  br label %343

343:                                              ; preds = %342, %339
  %344 = load ptr, ptr %22, align 8, !tbaa !269
  %345 = icmp eq ptr %344, null
  br i1 %345, label %349, label %346, !prof !382

346:                                              ; preds = %343
  %347 = load i32, ptr %344, align 8, !tbaa !228
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %350, label %349, !prof !383

349:                                              ; preds = %343, %346
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 898, ptr noundef nonnull @.str.1) #20
  br label %350

350:                                              ; preds = %346, %349
  %351 = load ptr, ptr %22, align 8, !tbaa !269
  %352 = icmp eq ptr %351, null
  br i1 %352, label %356, label %353, !prof !382

353:                                              ; preds = %350
  %354 = load i32, ptr %351, align 8, !tbaa !228
  %355 = icmp eq i32 %354, 1
  br i1 %355, label %357, label %356, !prof !383

356:                                              ; preds = %350, %353
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %357

357:                                              ; preds = %353, %356
  %358 = load ptr, ptr %22, align 8, !tbaa !269
  %359 = getelementptr inbounds %struct.VEC_edge_base, ptr %358, i64 0, i32 2, i64 0
  %360 = load ptr, ptr %359, align 8, !tbaa !170
  %361 = getelementptr inbounds %struct.edge_def, ptr %360, i64 0, i32 7
  store i32 %336, ptr %361, align 8, !tbaa !231
  %362 = getelementptr inbounds %struct.edge_def, ptr %360, i64 0, i32 8
  store i32 10000, ptr %362, align 4, !tbaa !270
  %363 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 8
  %364 = load i64, ptr %363, align 8, !tbaa !271
  %365 = getelementptr inbounds %struct.edge_def, ptr %360, i64 0, i32 9
  store i64 %364, ptr %365, align 8, !tbaa !272
  %366 = getelementptr inbounds %struct.edge_def, ptr %360, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !248
  %368 = icmp eq ptr %367, %1
  br i1 %368, label %370, label %369, !prof !384

369:                                              ; preds = %357
  call void @redirect_edge_succ(ptr noundef %360, ptr noundef %1) #20
  br label %370

370:                                              ; preds = %357, %369, %219, %218, %211, %169, %71, %74, %55, %46, %27, %36, %3, %13
  %371 = phi ptr [ null, %13 ], [ null, %3 ], [ null, %36 ], [ null, %27 ], [ null, %46 ], [ null, %55 ], [ null, %74 ], [ null, %71 ], [ null, %169 ], [ null, %211 ], [ null, %218 ], [ null, %219 ], [ %360, %369 ], [ %360, %357 ]
  ret ptr %371
}

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn_after_noloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @force_nonfallthru(ptr noundef %0) local_unnamed_addr #9 !prof !385 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !248
  %4 = tail call fastcc ptr @force_nonfallthru_and_redirect(ptr noundef %0, ptr noundef %3)
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @force_nonfallthru_and_redirect(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !386 !PGOFuncName !387 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = load ptr, ptr @cfun, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !249
  %8 = load ptr, ptr %7, align 8, !tbaa !314
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %74, label %10, !prof !388

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !248
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !251
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %74, label %16, !prof !388

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !217
  %21 = tail call i32 @any_condjump_p(ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23, !prof !389

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !328
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !181
  %27 = getelementptr inbounds %struct.rtl_bb_info, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !217
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = load ptr, ptr %11, align 8, !tbaa !248
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !181
  %34 = load ptr, ptr %33, align 8, !tbaa !223
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %36, label %74, !prof !390

36:                                               ; preds = %23
  %37 = tail call ptr @unchecked_make_edge(ptr noundef %24, ptr noundef %1, i32 noundef 0) #20
  %38 = load ptr, ptr %0, align 8, !tbaa !328
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !181
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !217
  %43 = tail call ptr @block_label(ptr noundef %1)
  %44 = tail call i32 @redirect_jump(ptr noundef %42, ptr noundef %43, i32 noundef 0) #20
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1127, ptr noundef nonnull @.str.1) #20
  br label %48

48:                                               ; preds = %36, %47
  %49 = load ptr, ptr %0, align 8, !tbaa !328
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !217
  %54 = tail call ptr @find_reg_note(ptr noundef %53, i32 noundef 13, ptr noundef null) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !181
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !181
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 8
  store i32 %61, ptr %62, align 4, !tbaa !270
  %63 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %64 = load i64, ptr %63, align 8, !tbaa !272
  %65 = shl i64 %60, 32
  %66 = ashr exact i64 %65, 32
  %67 = mul nsw i64 %64, %66
  %68 = sdiv i64 %67, 10000
  %69 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 9
  store i64 %68, ptr %69, align 8, !tbaa !272
  %70 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  store i32 0, ptr %70, align 4, !tbaa !270
  %71 = load i64, ptr %63, align 8, !tbaa !272
  %72 = sub nsw i64 %71, %68
  %73 = tail call i64 @llvm.smax.i64(i64 %72, i64 0)
  store i64 %73, ptr %63, align 8
  br label %74

74:                                               ; preds = %56, %48, %23, %16, %10, %2
  %75 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !231
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79, !prof !391

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !248
  %82 = icmp eq ptr %81, %1
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1152, ptr noundef nonnull @.str.1) #20
  br label %84

84:                                               ; preds = %79, %83
  %85 = load i32, ptr %75, align 8, !tbaa !231
  %86 = and i32 %85, -66
  %87 = and i32 %85, 65
  store i32 %87, ptr %75, align 8, !tbaa !231
  br label %176

88:                                               ; preds = %74
  %89 = and i32 %76, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92, !prof !388

91:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1158, ptr noundef nonnull @.str.1) #20
  br label %92

92:                                               ; preds = %88, %91
  %93 = load ptr, ptr %0, align 8, !tbaa !328
  %94 = load ptr, ptr @cfun, align 8, !tbaa !170
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !249
  %97 = load ptr, ptr %96, align 8, !tbaa !314
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %99, label %176, !prof !388

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !248
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !181
  %104 = load ptr, ptr %103, align 8, !tbaa !223
  %105 = tail call ptr @create_basic_block(ptr noundef %104, ptr noundef null, ptr noundef %97) #20
  store ptr %105, ptr %0, align 8, !tbaa !328
  %106 = load ptr, ptr @cfun, align 8, !tbaa !170
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !249
  %109 = load ptr, ptr %108, align 8, !tbaa !314
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 1
  br label %111

111:                                              ; preds = %151, %99
  %112 = phi i32 [ 0, %99 ], [ %152, %151 ]
  %113 = load ptr, ptr %110, align 8, !tbaa !170
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %113, align 8, !tbaa !228
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %116, %115 ], [ 0, %111 ]
  %119 = icmp eq i32 %118, %112
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = zext i32 %112 to i64
  %122 = getelementptr inbounds %struct.VEC_edge_base, ptr %113, i64 0, i32 2, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !170
  br label %124

124:                                              ; preds = %117, %120
  %125 = phi ptr [ %123, %120 ], [ null, %117 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %124
  %128 = icmp eq ptr %125, %0
  br i1 %128, label %129, label %143

129:                                              ; preds = %127
  %130 = load ptr, ptr @cfun, align 8, !tbaa !170
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !249
  %133 = load ptr, ptr %132, align 8, !tbaa !314
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !269
  %136 = load i32, ptr %135, align 8, !tbaa !228
  %137 = zext i32 %112 to i64
  %138 = getelementptr inbounds %struct.VEC_edge_base, ptr %135, i64 0, i32 2, i64 %137
  %139 = add i32 %136, -1
  store i32 %139, ptr %135, align 8, !tbaa !228
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.VEC_edge_base, ptr %135, i64 0, i32 2, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !170
  store ptr %142, ptr %138, align 8, !tbaa !170
  br label %154

143:                                              ; preds = %127
  %144 = icmp eq ptr %113, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %143
  %146 = load i32, ptr %113, align 8, !tbaa !228
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %146, %145 ], [ 0, %143 ]
  %149 = icmp ult i32 %112, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %151

151:                                              ; preds = %147, %150
  %152 = add i32 %112, 1
  br label %111, !llvm.loop !392

153:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #20
  br label %154

154:                                              ; preds = %129, %153
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !170
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.VEC_edge_base, ptr %156, i64 0, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !393
  %161 = load i32, ptr %156, align 8, !tbaa !228
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %154, %158
  %164 = tail call ptr @vec_gc_p_reserve(ptr noundef %156, i32 noundef 1) #20
  store ptr %164, ptr %155, align 8, !tbaa !170
  br label %165

165:                                              ; preds = %158, %163
  %166 = load ptr, ptr %155, align 8, !tbaa !170
  %167 = load i32, ptr %166, align 8, !tbaa !228
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 8, !tbaa !228
  %169 = zext i32 %167 to i64
  %170 = getelementptr inbounds %struct.VEC_edge_base, ptr %166, i64 0, i32 2, i64 %169
  store ptr %0, ptr %170, align 8, !tbaa !170
  %171 = load ptr, ptr @cfun, align 8, !tbaa !170
  %172 = getelementptr inbounds %struct.function, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !249
  %174 = load ptr, ptr %173, align 8, !tbaa !314
  %175 = tail call ptr @make_single_succ_edge(ptr noundef %174, ptr noundef %105, i32 noundef 1) #20
  br label %176

176:                                              ; preds = %92, %165, %84
  %177 = phi i32 [ %86, %84 ], [ 0, %165 ], [ 0, %92 ]
  %178 = load ptr, ptr %0, align 8, !tbaa !328
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !269
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182, !prof !388

182:                                              ; preds = %176
  %183 = load i32, ptr %180, align 8, !tbaa !228
  %184 = icmp ugt i32 %183, 1
  br label %185

185:                                              ; preds = %176, %182
  %186 = phi i1 [ %184, %182 ], [ false, %176 ]
  %187 = icmp ne i32 %177, 0
  %188 = select i1 %186, i1 true, i1 %187, !prof !394
  br i1 %188, label %189, label %266, !prof !394

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 7
  %191 = load ptr, ptr %190, align 8, !tbaa !181
  %192 = getelementptr inbounds %struct.rtl_bb_info, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !217
  %194 = call zeroext i8 @tablejump_p(ptr noundef %193, ptr noundef null, ptr noundef nonnull %3) #20
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %202, !prof !395

196:                                              ; preds = %189
  %197 = load ptr, ptr %0, align 8, !tbaa !328
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %197, i64 0, i32 7
  %199 = load ptr, ptr %198, align 8, !tbaa !181
  %200 = getelementptr inbounds %struct.rtl_bb_info, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !217
  store ptr %201, ptr %3, align 8, !tbaa !170
  br label %202

202:                                              ; preds = %196, %189
  %203 = load ptr, ptr %3, align 8, !tbaa !170
  %204 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1, i32 0, i32 0, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !181
  store ptr %205, ptr %3, align 8, !tbaa !170
  %206 = load ptr, ptr %0, align 8, !tbaa !328
  %207 = call ptr @create_basic_block(ptr noundef %205, ptr noundef null, ptr noundef %206) #20
  %208 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %209 = load i64, ptr %208, align 8, !tbaa !272
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 8
  store i64 %209, ptr %210, align 8, !tbaa !271
  %211 = load ptr, ptr %0, align 8, !tbaa !328
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %211, i64 0, i32 11
  %213 = load i32, ptr %212, align 8, !tbaa !396
  %214 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %215 = load i32, ptr %214, align 4, !tbaa !270
  %216 = mul nsw i32 %215, %213
  %217 = add nsw i32 %216, 5000
  %218 = sdiv i32 %217, 10000
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 11
  store i32 %218, ptr %219, align 8, !tbaa !396
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 10
  %221 = load i32, ptr %220, align 4, !tbaa !397
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 10
  store i32 %221, ptr %222, align 4, !tbaa !397
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 13
  %224 = load i32, ptr %223, align 8, !tbaa !302
  %225 = and i32 %224, -97
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %211, i64 0, i32 13
  %227 = load i32, ptr %226, align 8, !tbaa !302
  %228 = and i32 %227, 96
  %229 = or disjoint i32 %228, %225
  store i32 %229, ptr %223, align 8, !tbaa !302
  %230 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !185
  %231 = icmp ne i32 %230, 0
  %232 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %233 = icmp ne i8 %232, 0
  %234 = select i1 %231, i1 %233, i1 false, !prof !390
  br i1 %234, label %235, label %259, !prof !390

235:                                              ; preds = %202
  %236 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 7
  %237 = load ptr, ptr %236, align 8, !tbaa !181
  %238 = getelementptr inbounds %struct.rtl_bb_info, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !217
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 9
  br i1 %242, label %243, label %259

243:                                              ; preds = %235
  %244 = call i32 @any_condjump_p(ptr noundef nonnull %239) #20
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !269
  %249 = getelementptr inbounds %struct.VEC_edge_base, ptr %248, i64 0, i32 2, i64 0
  %250 = load ptr, ptr %249, align 8, !tbaa !170
  %251 = getelementptr inbounds %struct.edge_def, ptr %250, i64 0, i32 7
  %252 = load i32, ptr %251, align 8, !tbaa !231
  %253 = and i32 %252, 8192
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %246
  %256 = load ptr, ptr %236, align 8, !tbaa !181
  %257 = getelementptr inbounds %struct.rtl_bb_info, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !217
  call void @add_reg_note(ptr noundef %258, i32 noundef 29, ptr noundef null) #20
  br label %259

259:                                              ; preds = %255, %246, %243, %235, %202
  %260 = load ptr, ptr %0, align 8, !tbaa !328
  %261 = call ptr @make_edge(ptr noundef %260, ptr noundef %207, i32 noundef 1) #20
  %262 = load i32, ptr %214, align 4, !tbaa !270
  %263 = getelementptr inbounds %struct.edge_def, ptr %261, i64 0, i32 8
  store i32 %262, ptr %263, align 4, !tbaa !270
  %264 = load i64, ptr %208, align 8, !tbaa !272
  %265 = getelementptr inbounds %struct.edge_def, ptr %261, i64 0, i32 9
  store i64 %264, ptr %265, align 8, !tbaa !272
  call void @redirect_edge_pred(ptr noundef nonnull %0, ptr noundef %207) #20
  store i32 10000, ptr %214, align 4, !tbaa !270
  br label %266

266:                                              ; preds = %185, %259
  %267 = phi ptr [ %207, %259 ], [ null, %185 ]
  %268 = phi ptr [ %207, %259 ], [ %178, %185 ]
  %269 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 5
  %270 = load i32, ptr %269, align 8, !tbaa !398
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %276, label %272, !prof !399

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %274 = load ptr, ptr %273, align 8, !tbaa !400
  %275 = icmp eq ptr %274, null
  br i1 %275, label %277, label %276, !prof !401

276:                                              ; preds = %272, %266
  br label %277

277:                                              ; preds = %272, %276
  %278 = phi i32 [ 0, %276 ], [ %270, %272 ]
  %279 = load i32, ptr %75, align 8, !tbaa !231
  %280 = and i32 %279, -2
  store i32 %280, ptr %75, align 8, !tbaa !231
  %281 = load ptr, ptr @cfun, align 8, !tbaa !170
  %282 = getelementptr inbounds %struct.function, ptr %281, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !249
  %284 = getelementptr inbounds %struct.control_flow_graph, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !251
  %286 = icmp eq ptr %285, %1
  br i1 %286, label %287, label %294, !prof !388

287:                                              ; preds = %277
  %288 = call ptr @gen_return() #20
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 7
  %290 = load ptr, ptr %289, align 8, !tbaa !181
  %291 = getelementptr inbounds %struct.rtl_bb_info, ptr %290, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !217
  %293 = call ptr @emit_jump_insn_after_setloc(ptr noundef %288, ptr noundef %292, i32 noundef %278) #20
  br label %323

294:                                              ; preds = %277
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %296 = load ptr, ptr %295, align 8, !tbaa !181
  %297 = load ptr, ptr %296, align 8, !tbaa !223
  %298 = load i32, ptr %297, align 8
  %299 = and i32 %298, 65535
  %300 = icmp eq i32 %299, 12
  br i1 %300, label %307, label %301, !prof !352

301:                                              ; preds = %294
  %302 = call ptr @gen_label_rtx() #20
  %303 = load ptr, ptr %295, align 8, !tbaa !181
  %304 = load ptr, ptr %303, align 8, !tbaa !223
  %305 = call ptr @emit_label_before(ptr noundef %302, ptr noundef %304) #20
  %306 = load ptr, ptr %295, align 8, !tbaa !181
  store ptr %305, ptr %306, align 8, !tbaa !223
  br label %307

307:                                              ; preds = %301, %294
  %308 = load ptr, ptr %295, align 8, !tbaa !181
  %309 = load ptr, ptr %308, align 8, !tbaa !223
  %310 = call ptr @gen_jump(ptr noundef %309) #20
  %311 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 7
  %312 = load ptr, ptr %311, align 8, !tbaa !181
  %313 = getelementptr inbounds %struct.rtl_bb_info, ptr %312, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !217
  %315 = call ptr @emit_jump_insn_after_setloc(ptr noundef %310, ptr noundef %314, i32 noundef %278) #20
  %316 = load ptr, ptr %311, align 8, !tbaa !181
  %317 = getelementptr inbounds %struct.rtl_bb_info, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !217
  %319 = getelementptr inbounds %struct.rtx_def, ptr %318, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %309, ptr %319, align 8, !tbaa !181
  %320 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1, i32 0, i32 2
  %321 = load i32, ptr %320, align 8, !tbaa !181
  %322 = add nsw i32 %321, 1
  store i32 %322, ptr %320, align 8, !tbaa !181
  br label %323

323:                                              ; preds = %307, %287
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 7
  %325 = load ptr, ptr %324, align 8, !tbaa !181
  %326 = getelementptr inbounds %struct.rtl_bb_info, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !217
  %328 = call ptr @emit_barrier_after(ptr noundef %327) #20
  %329 = call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #20
  br i1 %187, label %330, label %332, !prof !388

330:                                              ; preds = %323
  %331 = call ptr @make_edge(ptr noundef %4, ptr noundef %1, i32 noundef %177) #20
  br label %332

332:                                              ; preds = %330, %323
  call void @df_mark_solutions_dirty() #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %267
}

declare void @start_sequence() local_unnamed_addr #3

declare void @push_to_sequence(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @commit_one_edge_insertion(ptr noundef %0) local_unnamed_addr #10 !prof !402 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  store ptr null, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !248
  %6 = load ptr, ptr %5, align 8, !tbaa !329
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !403

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 8, !tbaa !228
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %11, %8 ], [ 0, %1 ]
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %54, label %15, !prof !404

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !170
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !249
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !251
  %21 = icmp eq ptr %5, %20
  br i1 %21, label %54, label %22, !prof !405

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !181
  %25 = load ptr, ptr %24, align 8, !tbaa !223
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %29, label %32, !prof !406

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi ptr [ %31, %29 ], [ %25, %22 ]
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %37, label %44, !prof !407

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %39 = load i32, ptr %38, align 8, !tbaa !181
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %44, !prof !407

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !181
  br label %44

44:                                               ; preds = %41, %37, %32
  %45 = phi ptr [ %43, %41 ], [ %33, %37 ], [ %33, %32 ]
  %46 = icmp eq ptr %45, %25
  br i1 %46, label %144, label %47, !prof !406

47:                                               ; preds = %44
  %48 = icmp eq ptr %45, null
  br i1 %48, label %52, label %49, !prof !406

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  br label %144

52:                                               ; preds = %47
  %53 = tail call ptr @get_last_insn() #20
  br label %144

54:                                               ; preds = %15, %12
  %55 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !231
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %93, !prof !408

59:                                               ; preds = %54
  %60 = load ptr, ptr %0, align 8, !tbaa !328
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !269
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !409

64:                                               ; preds = %59
  %65 = load i32, ptr %62, align 8, !tbaa !228
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i8
  br label %68

68:                                               ; preds = %59, %64
  %69 = phi i8 [ %67, %64 ], [ 0, %59 ]
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %93, label %71, !prof !410

71:                                               ; preds = %68
  %72 = load ptr, ptr @cfun, align 8, !tbaa !170
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !249
  %75 = load ptr, ptr %74, align 8, !tbaa !314
  %76 = icmp eq ptr %60, %75
  br i1 %76, label %93, label %77, !prof !411

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !181
  %80 = getelementptr inbounds %struct.rtl_bb_info, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !217
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %144, label %85, !prof !412

85:                                               ; preds = %77
  %86 = and i32 %56, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89, !prof !258

88:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1492, ptr noundef nonnull @.str.1) #20
  br label %89

89:                                               ; preds = %85, %88
  %90 = load ptr, ptr %78, align 8, !tbaa !181
  %91 = getelementptr inbounds %struct.rtl_bb_info, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !217
  br label %144

93:                                               ; preds = %71, %68, %54
  %94 = tail call ptr @split_edge(ptr noundef %0) #20
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !181
  %97 = getelementptr inbounds %struct.rtl_bb_info, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !217
  %99 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !185
  %100 = icmp ne i32 %99, 0
  %101 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %102 = icmp ne i8 %101, 0
  %103 = select i1 %100, i1 %102, i1 false, !prof !413
  br i1 %103, label %104, label %144, !prof !413

104:                                              ; preds = %93
  %105 = load ptr, ptr %0, align 8, !tbaa !328
  %106 = load ptr, ptr @cfun, align 8, !tbaa !170
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !249
  %109 = load ptr, ptr %108, align 8, !tbaa !314
  %110 = icmp eq ptr %105, %109
  br i1 %110, label %144, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 13
  %113 = load i32, ptr %112, align 8, !tbaa !302
  %114 = and i32 %113, 96
  %115 = icmp eq i32 %114, 64
  br i1 %115, label %116, label %144

116:                                              ; preds = %111
  %117 = load i32, ptr %55, align 8, !tbaa !231
  %118 = and i32 %117, 8192
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i32, ptr %98, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 9
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = tail call i32 @any_condjump_p(ptr noundef nonnull %98) #20
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !269
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %129, align 8, !tbaa !228
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %135, label %134

134:                                              ; preds = %127, %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %135

135:                                              ; preds = %131, %134
  %136 = load ptr, ptr %128, align 8, !tbaa !269
  %137 = getelementptr inbounds %struct.VEC_edge_base, ptr %136, i64 0, i32 2, i64 0
  %138 = load ptr, ptr %137, align 8, !tbaa !170
  %139 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !231
  %141 = and i32 %140, 8192
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %135
  tail call void @add_reg_note(ptr noundef nonnull %98, i32 noundef 29, ptr noundef null) #20
  br label %144

144:                                              ; preds = %77, %44, %49, %52, %93, %104, %111, %116, %120, %124, %135, %143, %89
  %145 = phi ptr [ null, %49 ], [ null, %52 ], [ null, %89 ], [ null, %116 ], [ null, %124 ], [ null, %143 ], [ null, %135 ], [ null, %120 ], [ null, %111 ], [ null, %104 ], [ null, %93 ], [ %45, %44 ], [ %81, %77 ]
  %146 = phi ptr [ %51, %49 ], [ %53, %52 ], [ %92, %89 ], [ %98, %116 ], [ %98, %124 ], [ %98, %143 ], [ %98, %135 ], [ %98, %120 ], [ %98, %111 ], [ %98, %104 ], [ %98, %93 ], [ null, %44 ], [ null, %77 ]
  %147 = phi ptr [ %5, %49 ], [ %5, %52 ], [ %60, %89 ], [ %94, %116 ], [ %94, %124 ], [ %94, %143 ], [ %94, %135 ], [ %94, %120 ], [ %94, %111 ], [ %94, %104 ], [ %94, %93 ], [ %5, %44 ], [ %60, %77 ]
  %148 = icmp eq ptr %145, null
  br i1 %148, label %152, label %149, !prof !414

149:                                              ; preds = %144
  %150 = tail call ptr @emit_insn_before_noloc(ptr noundef %3, ptr noundef nonnull %145, ptr noundef %147) #20
  %151 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %145) #20
  br label %154

152:                                              ; preds = %144
  %153 = tail call ptr @emit_insn_after_noloc(ptr noundef %3, ptr noundef %146, ptr noundef %147) #20
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi ptr [ %151, %149 ], [ %153, %152 ]
  %156 = tail call i32 @returnjump_p(ptr noundef %155) #20
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %196, label %158, !prof !415

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !269
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162, !prof !258

162:                                              ; preds = %158
  %163 = load i32, ptr %160, align 8, !tbaa !228
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %166, label %165, !prof !259

165:                                              ; preds = %158, %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %166

166:                                              ; preds = %162, %165
  %167 = load ptr, ptr %159, align 8, !tbaa !269
  %168 = getelementptr inbounds %struct.VEC_edge_base, ptr %167, i64 0, i32 2, i64 0
  %169 = load ptr, ptr %168, align 8, !tbaa !170
  %170 = getelementptr inbounds %struct.edge_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !248
  %172 = load ptr, ptr @cfun, align 8, !tbaa !170
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !249
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !251
  %177 = icmp ne ptr %171, %176
  %178 = icmp eq ptr %167, null
  %179 = or i1 %178, %177
  br i1 %179, label %188, label %180, !prof !416

180:                                              ; preds = %166
  %181 = load i32, ptr %167, align 8, !tbaa !228
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %188, !prof !259

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.edge_def, ptr %169, i64 0, i32 7
  %185 = load i32, ptr %184, align 8, !tbaa !231
  %186 = and i32 %185, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189, !prof !258

188:                                              ; preds = %183, %180, %166
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1534, ptr noundef nonnull @.str.1) #20
  br label %189

189:                                              ; preds = %183, %188
  %190 = getelementptr inbounds %struct.edge_def, ptr %169, i64 0, i32 7
  %191 = load i32, ptr %190, align 8, !tbaa !231
  %192 = and i32 %191, -2
  store i32 %192, ptr %190, align 8, !tbaa !231
  %193 = tail call ptr @emit_barrier_after(ptr noundef %155) #20
  br i1 %148, label %201, label %194, !prof !259

194:                                              ; preds = %189
  %195 = tail call ptr @delete_insn(ptr noundef nonnull %145)
  br label %201

196:                                              ; preds = %154
  %197 = load i32, ptr %155, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 9
  br i1 %199, label %200, label %201, !prof !417

200:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1543, ptr noundef nonnull @.str.1) #20
  br label %201

201:                                              ; preds = %200, %196, %189, %194
  %202 = tail call i32 @current_ir_type() #20
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %206, label %204, !prof !418

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 2
  store ptr %205, ptr %205, align 8, !tbaa !296
  br label %206

206:                                              ; preds = %204, %201
  ret void
}

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define dso_local void @print_rtl_with_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !169 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 6, i64 1, ptr %0)
  br label %251

6:                                                ; preds = %2
  %7 = tail call i32 @get_max_uid() #20
  %8 = sext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #20
  %10 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #20
  %11 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 4) #20
  %12 = load ptr, ptr @df, align 8, !tbaa !170
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @df_dump_start(ptr noundef %0) #20
  br label %15

15:                                               ; preds = %14, %6
  %16 = load ptr, ptr @cfun, align 8, !tbaa !170
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !249
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !251
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !419
  %23 = load ptr, ptr @cfun, align 8, !tbaa !170
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !249
  %26 = load ptr, ptr %25, align 8, !tbaa !314
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %72, label %28

28:                                               ; preds = %15, %64
  %29 = phi ptr [ %66, %64 ], [ %22, %15 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = load ptr, ptr %31, align 8, !tbaa !223
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !181
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %9, i64 %35
  store ptr %29, ptr %36, align 8, !tbaa !170
  %37 = load ptr, ptr %30, align 8, !tbaa !181
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !217
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !181
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %10, i64 %42
  store ptr %29, ptr %43, align 8, !tbaa !170
  %44 = load ptr, ptr %30, align 8, !tbaa !181
  %45 = load ptr, ptr %44, align 8, !tbaa !181
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %51

47:                                               ; preds = %51
  %48 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51, !llvm.loop !420

51:                                               ; preds = %28, %47
  %52 = phi ptr [ %49, %47 ], [ %45, %28 ]
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !181
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %11, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !185
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 1, i32 2
  store i32 %59, ptr %56, align 4, !tbaa !185
  %60 = load ptr, ptr %30, align 8, !tbaa !181
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !217
  %63 = icmp eq ptr %52, %62
  br i1 %63, label %64, label %47

64:                                               ; preds = %47, %51, %28
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !419
  %67 = load ptr, ptr @cfun, align 8, !tbaa !170
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !249
  %70 = load ptr, ptr %69, align 8, !tbaa !314
  %71 = icmp eq ptr %66, %70
  br i1 %71, label %72, label %28, !llvm.loop !421

72:                                               ; preds = %64, %15
  br label %73

73:                                               ; preds = %72, %246
  %74 = phi ptr [ %248, %246 ], [ %1, %72 ]
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !181
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %9, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !170
  %80 = icmp eq ptr %79, null
  br i1 %80, label %150, label %81

81:                                               ; preds = %73
  %82 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 25, i64 1, ptr %0)
  br label %83

83:                                               ; preds = %111, %81
  %84 = phi i32 [ 0, %81 ], [ %112, %111 ]
  %85 = load ptr, ptr %79, align 8, !tbaa !170
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %85, align 8, !tbaa !228
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i32 [ %88, %87 ], [ 0, %83 ]
  %91 = icmp eq i32 %90, %84
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %85, i64 0, i32 2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !170
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  br i1 %91, label %113, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %97, align 8, !tbaa !328
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !266
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %101)
  %103 = load ptr, ptr %79, align 8, !tbaa !170
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %98
  %106 = load i32, ptr %103, align 8, !tbaa !228
  br label %107

107:                                              ; preds = %105, %98
  %108 = phi i32 [ %106, %105 ], [ 0, %98 ]
  %109 = icmp ult i32 %84, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %111

111:                                              ; preds = %107, %110
  %112 = add i32 %84, 1
  br label %83, !llvm.loop !422

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !266
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %115)
  %117 = load ptr, ptr @df, align 8, !tbaa !170
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  tail call void @df_dump_top(ptr noundef nonnull %79, ptr noundef %0) #20
  %120 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %121

121:                                              ; preds = %119, %113
  br label %122

122:                                              ; preds = %121, %148
  %123 = phi i32 [ %149, %148 ], [ 0, %121 ]
  %124 = load ptr, ptr %79, align 8, !tbaa !170
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = load i32, ptr %124, align 8, !tbaa !228
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i32 [ %127, %126 ], [ 0, %122 ]
  %130 = icmp eq i32 %129, %123
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = zext i32 %123 to i64
  %133 = getelementptr inbounds %struct.VEC_edge_base, ptr %124, i64 0, i32 2, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !170
  br label %135

135:                                              ; preds = %128, %131
  %136 = phi ptr [ %134, %131 ], [ null, %128 ]
  br i1 %130, label %150, label %137

137:                                              ; preds = %135
  %138 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 13, i64 1, ptr %0)
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %136, i32 noundef 0) #20
  %139 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  %140 = load ptr, ptr %79, align 8, !tbaa !170
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %140, align 8, !tbaa !228
  br label %144

144:                                              ; preds = %142, %137
  %145 = phi i32 [ %143, %142 ], [ 0, %137 ]
  %146 = icmp ult i32 %123, %145
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %148

148:                                              ; preds = %144, %147
  %149 = add i32 %123, 1
  br label %122, !llvm.loop !423

150:                                              ; preds = %135, %73
  %151 = load i32, ptr %75, align 8, !tbaa !181
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %11, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !185
  switch i32 %154, label %163 [
    i32 0, label %155
    i32 2, label %160
  ]

155:                                              ; preds = %150
  %156 = load i32, ptr %74, align 8
  %157 = trunc i32 %156 to i16
  switch i16 %157, label %160 [
    i16 13, label %158
    i16 11, label %158
  ]

158:                                              ; preds = %155, %155
  %159 = icmp eq i32 %154, 2
  br i1 %159, label %160, label %163

160:                                              ; preds = %158, %150, %155
  %161 = phi ptr [ @.str.11, %155 ], [ @.str.12, %150 ], [ @.str.12, %158 ]
  %162 = tail call i64 @fwrite(ptr nonnull %161, i64 36, i64 1, ptr %0)
  br label %163

163:                                              ; preds = %160, %150, %158
  %164 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef nonnull %74) #20
  %165 = load i32, ptr %75, align 8, !tbaa !181
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %10, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !170
  %169 = icmp eq ptr %168, null
  br i1 %169, label %242, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 9
  %172 = load i32, ptr %171, align 8, !tbaa !266
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %172)
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 1
  br label %175

175:                                              ; preds = %204, %170
  %176 = phi i32 [ 0, %170 ], [ %205, %204 ]
  %177 = load ptr, ptr %174, align 8, !tbaa !170
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %177, align 8, !tbaa !228
  br label %181

181:                                              ; preds = %179, %175
  %182 = phi i32 [ %180, %179 ], [ 0, %175 ]
  %183 = icmp eq i32 %182, %176
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = zext i32 %176 to i64
  %186 = getelementptr inbounds %struct.VEC_edge_base, ptr %177, i64 0, i32 2, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !170
  br label %188

188:                                              ; preds = %181, %184
  %189 = phi ptr [ %187, %184 ], [ null, %181 ]
  br i1 %183, label %206, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !248
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %192, i64 0, i32 9
  %194 = load i32, ptr %193, align 8, !tbaa !266
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %194)
  %196 = load ptr, ptr %174, align 8, !tbaa !170
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %190
  %199 = load i32, ptr %196, align 8, !tbaa !228
  br label %200

200:                                              ; preds = %198, %190
  %201 = phi i32 [ %199, %198 ], [ 0, %190 ]
  %202 = icmp ult i32 %176, %201
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %204

204:                                              ; preds = %200, %203
  %205 = add i32 %176, 1
  br label %175, !llvm.loop !424

206:                                              ; preds = %188
  %207 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %0)
  %208 = load ptr, ptr @df, align 8, !tbaa !170
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  tail call void @df_dump_bottom(ptr noundef nonnull %168, ptr noundef %0) #20
  %211 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %212

212:                                              ; preds = %210, %206
  %213 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %214

214:                                              ; preds = %240, %212
  %215 = phi i32 [ 0, %212 ], [ %241, %240 ]
  %216 = load ptr, ptr %174, align 8, !tbaa !170
  %217 = icmp eq ptr %216, null
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = load i32, ptr %216, align 8, !tbaa !228
  br label %220

220:                                              ; preds = %218, %214
  %221 = phi i32 [ %219, %218 ], [ 0, %214 ]
  %222 = icmp eq i32 %221, %215
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = zext i32 %215 to i64
  %225 = getelementptr inbounds %struct.VEC_edge_base, ptr %216, i64 0, i32 2, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !170
  br label %227

227:                                              ; preds = %220, %223
  %228 = phi ptr [ %226, %223 ], [ null, %220 ]
  br i1 %222, label %242, label %229

229:                                              ; preds = %227
  %230 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 13, i64 1, ptr %0)
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %228, i32 noundef 1) #20
  %231 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  %232 = load ptr, ptr %174, align 8, !tbaa !170
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %232, align 8, !tbaa !228
  br label %236

236:                                              ; preds = %234, %229
  %237 = phi i32 [ %235, %234 ], [ 0, %229 ]
  %238 = icmp ult i32 %215, %237
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %240

240:                                              ; preds = %236, %239
  %241 = add i32 %215, 1
  br label %214, !llvm.loop !425

242:                                              ; preds = %227, %163
  %243 = icmp eq i32 %164, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %242
  %245 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  br label %246

246:                                              ; preds = %244, %242
  %247 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 2
  %248 = load ptr, ptr %247, align 8, !tbaa !181
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %73, !llvm.loop !426

250:                                              ; preds = %246
  tail call void @free(ptr noundef %9)
  tail call void @free(ptr noundef %10)
  tail call void @free(ptr noundef %11)
  br label %251

251:                                              ; preds = %250, %4
  %252 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !427
  %253 = icmp eq ptr %252, null
  br i1 %253, label %266, label %254

254:                                              ; preds = %251
  %255 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 35, i64 1, ptr %0)
  %256 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !181
  %257 = icmp eq ptr %256, null
  br i1 %257, label %266, label %258

258:                                              ; preds = %254, %258
  %259 = phi ptr [ %264, %258 ], [ %256, %254 ]
  %260 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !181
  %262 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %261) #20
  %263 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !181
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %258, !llvm.loop !428

266:                                              ; preds = %258, %254, %251
  ret void
}

declare i32 @get_max_uid() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @df_dump_start(ptr noundef) local_unnamed_addr #3

declare void @df_dump_top(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_dump_bottom(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @update_br_prob_note(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !429 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !217
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %44, !prof !430

9:                                                ; preds = %1
  %10 = tail call ptr @find_reg_note(ptr noundef nonnull %5, i32 noundef 13, ptr noundef null) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12, !prof !431

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !181
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !269
  %19 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 0
  %20 = load ptr, ptr %19, align 8, !tbaa !170
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !231
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !432

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  br label %28

28:                                               ; preds = %12, %25
  %29 = phi ptr [ %27, %25 ], [ %20, %12 ]
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !270
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %16, %32
  br i1 %33, label %44, label %34, !prof !433

34:                                               ; preds = %28
  br i1 %24, label %38, label %35, !prof !434

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !170
  br label %38

38:                                               ; preds = %34, %35
  %39 = phi ptr [ %37, %35 ], [ %20, %34 ]
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !270
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %42) #20
  store ptr %43, ptr %13, align 8, !tbaa !181
  br label %44

44:                                               ; preds = %9, %28, %1, %38
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @get_last_bb_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !169 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = call zeroext i8 @tablejump_p(ptr noundef %6, ptr noundef null, ptr noundef nonnull %2) #20
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %2, align 8
  %10 = select i1 %8, ptr %6, ptr %9, !prof !435
  %11 = call ptr @next_nonnote_insn_bb(ptr noundef %10) #20
  store ptr %11, ptr %2, align 8, !tbaa !170
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !332

13:                                               ; preds = %1
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %21, label %25, !prof !436

17:                                               ; preds = %21
  %18 = load i32, ptr %23, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %21, label %25, !prof !437, !llvm.loop !438

21:                                               ; preds = %13, %17
  %22 = phi ptr [ %23, %17 ], [ %11, %13 ]
  %23 = call ptr @next_nonnote_insn_bb(ptr noundef nonnull %22) #20
  store ptr %23, ptr %2, align 8, !tbaa !170
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17, !prof !439, !llvm.loop !438

25:                                               ; preds = %21, %17, %13, %1
  %26 = phi ptr [ %10, %1 ], [ %10, %13 ], [ %22, %17 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %26
}

declare ptr @next_nonnote_insn_bb(ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @purge_all_dead_edges() local_unnamed_addr #10 !prof !331 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = load ptr, ptr %3, align 8, !tbaa !314
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !315
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %26, label %10, !prof !332

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %17, %10 ], [ %6, %0 ]
  %12 = phi i32 [ %15, %10 ], [ 0, %0 ]
  %13 = tail call zeroext i8 @purge_dead_edges(ptr noundef %11), !range !220
  %14 = zext nneg i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !315
  %18 = load ptr, ptr @cfun, align 8, !tbaa !170
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !249
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !251
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %24, label %10, !prof !440, !llvm.loop !441

24:                                               ; preds = %10
  %25 = trunc i32 %15 to i8
  br label %26

26:                                               ; preds = %24, %0
  %27 = phi i8 [ 0, %0 ], [ %25, %24 ]
  ret i8 %27
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @insert_insn_end_bb_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !169 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %40 [
    i16 9, label %29
    i16 8, label %9
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !269
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !228
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  br i1 %12, label %20, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %11, align 8, !tbaa !228
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr %10, align 8, !tbaa !269
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %22, i64 0, i32 2, i64 0
  %24 = load ptr, ptr %23, align 8, !tbaa !170
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !231
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %9, %21, %2, %13
  %30 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65534
  %34 = icmp eq i32 %33, 20
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call ptr @prev_real_insn(ptr noundef nonnull %6) #20
  br label %37

37:                                               ; preds = %29, %35
  %38 = phi ptr [ %36, %35 ], [ %6, %29 ]
  %39 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %38, ptr noundef %1) #20
  br label %83

40:                                               ; preds = %2, %21
  %41 = load i32, ptr %6, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !269
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 8, !tbaa !228
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  br i1 %47, label %55, label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %46, align 8, !tbaa !228
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %56

56:                                               ; preds = %52, %55
  %57 = load ptr, ptr %45, align 8, !tbaa !269
  %58 = getelementptr inbounds %struct.VEC_edge_base, ptr %57, i64 0, i32 2, i64 0
  %59 = load ptr, ptr %58, align 8, !tbaa !170
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !231
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %44, %56, %48
  %65 = load ptr, ptr %3, align 8, !tbaa !181
  %66 = load ptr, ptr %65, align 8, !tbaa !223
  %67 = tail call ptr @find_first_parameter_load(ptr noundef nonnull %6, ptr noundef %66) #20
  br label %68

68:                                               ; preds = %76, %64
  %69 = phi ptr [ %67, %64 ], [ %78, %76 ]
  %70 = load i32, ptr %69, align 8
  %71 = trunc i32 %70 to i16
  switch i16 %71, label %79 [
    i16 12, label %76
    i16 13, label %72
  ]

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 1
  %74 = load i32, ptr %73, align 8, !tbaa !181
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %79

76:                                               ; preds = %68, %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !181
  br label %68, !llvm.loop !442

79:                                               ; preds = %72, %68
  %80 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef nonnull %69, ptr noundef %1) #20
  br label %83

81:                                               ; preds = %56, %40
  %82 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1) #20
  br label %83

83:                                               ; preds = %79, %81, %37
  %84 = phi ptr [ %39, %37 ], [ %80, %79 ], [ %82, %81 ]
  ret ptr %84
}

declare ptr @prev_real_insn(ptr noundef) local_unnamed_addr #3

declare ptr @find_first_parameter_load(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @rtl_verify_flow_info() #12 !prof !169 {
  %1 = tail call i32 @rtl_verify_flow_info_1(), !range !443
  %2 = tail call ptr @get_last_insn() #20
  %3 = tail call ptr @get_insns() #20
  %4 = tail call i32 @get_max_uid() #20
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #20
  %7 = load ptr, ptr @cfun, align 8, !tbaa !170
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !249
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !251
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !419
  %14 = load ptr, ptr @cfun, align 8, !tbaa !170
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !249
  %17 = load ptr, ptr %16, align 8, !tbaa !314
  %18 = icmp eq ptr %13, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %221, %0
  %20 = phi ptr [ %2, %0 ], [ %105, %221 ]
  %21 = phi i32 [ %1, %0 ], [ %222, %221 ]
  %22 = icmp eq ptr %20, null
  br i1 %22, label %248, label %230

23:                                               ; preds = %0, %221
  %24 = phi ptr [ %224, %221 ], [ %13, %0 ]
  %25 = phi i32 [ %222, %221 ], [ %1, %0 ]
  %26 = phi ptr [ %105, %221 ], [ %2, %0 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = load ptr, ptr %28, align 8, !tbaa !223
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !217
  %32 = icmp eq ptr %26, null
  %33 = icmp eq ptr %26, %31
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %23, %48
  %36 = phi i32 [ %49, %48 ], [ %25, %23 ]
  %37 = phi ptr [ %51, %48 ], [ %26, %23 ]
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 11
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !181
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !181
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %47) #20
  br label %48

48:                                               ; preds = %35, %41, %45
  %49 = phi i32 [ %36, %35 ], [ 1, %45 ], [ %36, %41 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  %52 = icmp eq ptr %51, null
  %53 = icmp eq ptr %51, %31
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %55, label %35, !llvm.loop !444

55:                                               ; preds = %48, %23
  %56 = phi ptr [ %26, %23 ], [ %51, %48 ]
  %57 = phi i32 [ %25, %23 ], [ %49, %48 ]
  %58 = phi i1 [ %32, %23 ], [ %52, %48 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !181
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23, i32 noundef %61, i32 noundef %63) #20
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i32 [ %57, %55 ], [ 1, %59 ]
  %66 = icmp eq ptr %56, null
  br i1 %66, label %93, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  br label %69

69:                                               ; preds = %67, %89
  %70 = phi i1 [ %66, %67 ], [ %92, %89 ]
  %71 = phi i32 [ %65, %67 ], [ %84, %89 ]
  %72 = phi ptr [ %56, %67 ], [ %91, %89 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !181
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %6, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !170
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %69
  %80 = load i32, ptr %68, align 8, !tbaa !266
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %74, i32 noundef %80, i32 noundef %82) #20
  br label %83

83:                                               ; preds = %79, %69
  %84 = phi i32 [ 1, %79 ], [ %71, %69 ]
  %85 = load i32, ptr %73, align 8, !tbaa !181
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %6, i64 %86
  store ptr %24, ptr %87, align 8, !tbaa !170
  %88 = icmp eq ptr %72, %29
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !181
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %69, !llvm.loop !445

93:                                               ; preds = %89, %83, %64
  %94 = phi ptr [ %56, %64 ], [ %91, %89 ], [ %72, %83 ]
  %95 = phi i1 [ %66, %64 ], [ %92, %89 ], [ %70, %83 ]
  %96 = phi i32 [ %65, %64 ], [ %84, %83 ], [ %84, %89 ]
  br i1 %95, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !181
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %99, i32 noundef %101) #20
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i32 [ %96, %93 ], [ 1, %97 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !181
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  br label %107

107:                                              ; preds = %135, %102
  %108 = phi i32 [ 0, %102 ], [ %136, %135 ]
  %109 = load ptr, ptr %106, align 8, !tbaa !170
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, ptr %109, align 8, !tbaa !228
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %112, %111 ], [ 0, %107 ]
  %115 = icmp eq i32 %114, %108
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = zext i32 %108 to i64
  %118 = getelementptr inbounds %struct.VEC_edge_base, ptr %109, i64 0, i32 2, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !170
  br label %120

120:                                              ; preds = %113, %116
  %121 = phi ptr [ %119, %116 ], [ null, %113 ]
  br i1 %115, label %137, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !231
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = icmp eq ptr %109, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = load i32, ptr %109, align 8, !tbaa !228
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %130, %129 ], [ 0, %127 ]
  %133 = icmp ult i32 %108, %132
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %135

135:                                              ; preds = %131, %134
  %136 = add i32 %108, 1
  br label %107, !llvm.loop !446

137:                                              ; preds = %122, %120
  %138 = icmp eq ptr %121, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %137
  %140 = load ptr, ptr %27, align 8, !tbaa !181
  %141 = getelementptr inbounds %struct.rtl_bb_info, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !217
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !181
  %145 = icmp eq ptr %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %139, %160
  %147 = phi ptr [ %162, %160 ], [ %144, %139 ]
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 65535
  %150 = trunc i32 %148 to i16
  switch i16 %150, label %160 [
    i16 13, label %151
    i16 11, label %221
  ]

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 1
  %153 = load i32, ptr %152, align 8, !tbaa !181
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %155, label %158

155:                                              ; preds = %160, %151, %139
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %157 = load i32, ptr %156, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %157) #20
  br label %221

158:                                              ; preds = %151
  %159 = icmp eq i32 %149, 11
  br i1 %159, label %221, label %160

160:                                              ; preds = %158, %146
  %161 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1, i32 0, i32 0, i64 2
  %162 = load ptr, ptr %161, align 8, !tbaa !181
  %163 = icmp eq ptr %162, null
  br i1 %163, label %155, label %146, !llvm.loop !447

164:                                              ; preds = %137
  %165 = load ptr, ptr %121, align 8, !tbaa !328
  %166 = load ptr, ptr @cfun, align 8, !tbaa !170
  %167 = getelementptr inbounds %struct.function, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !249
  %169 = load ptr, ptr %168, align 8, !tbaa !314
  %170 = icmp eq ptr %165, %169
  br i1 %170, label %221, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.edge_def, ptr %121, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !248
  %174 = getelementptr inbounds %struct.control_flow_graph, ptr %168, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !251
  %176 = icmp eq ptr %173, %175
  br i1 %176, label %221, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !315
  %180 = icmp eq ptr %179, %173
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 9
  %183 = load i32, ptr %182, align 8, !tbaa !266
  %184 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 9
  %185 = load i32, ptr %184, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %183, i32 noundef %185) #20
  br label %221

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %165, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !181
  %189 = getelementptr inbounds %struct.rtl_bb_info, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !217
  %191 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 2
  %192 = load ptr, ptr %191, align 8, !tbaa !181
  %193 = load ptr, ptr %172, align 8, !tbaa !248
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %193, i64 0, i32 7
  %195 = load ptr, ptr %194, align 8, !tbaa !181
  %196 = load ptr, ptr %195, align 8, !tbaa !223
  %197 = icmp eq ptr %192, %196
  br i1 %197, label %221, label %198

198:                                              ; preds = %186, %212
  %199 = phi ptr [ %216, %212 ], [ %193, %186 ]
  %200 = phi ptr [ %215, %212 ], [ %192, %186 ]
  %201 = phi i32 [ %213, %212 ], [ %103, %186 ]
  %202 = load i32, ptr %200, align 8
  %203 = and i32 %202, 65535
  %204 = add nsw i32 %203, -7
  %205 = icmp ult i32 %204, 5
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load ptr, ptr %121, align 8, !tbaa !328
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %207, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !266
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %199, i64 0, i32 9
  %211 = load i32, ptr %210, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, i32 noundef %209, i32 noundef %211) #20
  tail call void @_fatal_insn(ptr noundef nonnull @.str.29, ptr noundef nonnull %200, ptr noundef nonnull @.str, i32 noundef 2144, ptr noundef nonnull @.str.1) #20
  br label %212

212:                                              ; preds = %198, %206
  %213 = phi i32 [ 1, %206 ], [ %201, %198 ]
  %214 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1, i32 0, i32 0, i64 2
  %215 = load ptr, ptr %214, align 8, !tbaa !181
  %216 = load ptr, ptr %172, align 8, !tbaa !248
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 7
  %218 = load ptr, ptr %217, align 8, !tbaa !181
  %219 = load ptr, ptr %218, align 8, !tbaa !223
  %220 = icmp eq ptr %215, %219
  br i1 %220, label %221, label %198, !llvm.loop !448

221:                                              ; preds = %212, %146, %158, %186, %181, %155, %164, %171
  %222 = phi i32 [ %103, %171 ], [ %103, %164 ], [ 1, %155 ], [ 1, %181 ], [ %103, %186 ], [ %103, %158 ], [ %103, %146 ], [ %213, %212 ]
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !419
  %225 = load ptr, ptr @cfun, align 8, !tbaa !170
  %226 = getelementptr inbounds %struct.function, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !249
  %228 = load ptr, ptr %227, align 8, !tbaa !314
  %229 = icmp eq ptr %224, %228
  br i1 %229, label %19, label %23, !llvm.loop !449

230:                                              ; preds = %19, %243
  %231 = phi i32 [ %244, %243 ], [ %21, %19 ]
  %232 = phi ptr [ %246, %243 ], [ %20, %19 ]
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 11
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !181
  %239 = icmp eq ptr %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !181
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, i32 noundef %242) #20
  br label %243

243:                                              ; preds = %230, %236, %240
  %244 = phi i32 [ %231, %230 ], [ 1, %240 ], [ %231, %236 ]
  %245 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !181
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %230, !llvm.loop !450

248:                                              ; preds = %243, %19
  %249 = phi i32 [ %21, %19 ], [ %244, %243 ]
  tail call void @free(ptr noundef %6)
  %250 = icmp eq ptr %3, null
  br i1 %250, label %333, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @cfun, align 8, !tbaa !170
  %253 = getelementptr inbounds %struct.function, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !249
  %255 = load ptr, ptr %254, align 8, !tbaa !314
  br label %256

256:                                              ; preds = %251, %328
  %257 = phi ptr [ %331, %328 ], [ %3, %251 ]
  %258 = phi i32 [ %279, %328 ], [ 0, %251 ]
  %259 = phi ptr [ %278, %328 ], [ %255, %251 ]
  %260 = phi ptr [ %329, %328 ], [ null, %251 ]
  %261 = load i32, ptr %257, align 8
  %262 = and i32 %261, 65535
  %263 = icmp eq i32 %262, 13
  br i1 %263, label %264, label %276

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 1
  %266 = load i32, ptr %265, align 8, !tbaa !181
  %267 = icmp eq i32 %266, 10
  br i1 %267, label %268, label %276

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1, i32 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !181
  %271 = add nsw i32 %258, 1
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %259, i64 0, i32 6
  %273 = load ptr, ptr %272, align 8, !tbaa !315
  %274 = icmp eq ptr %270, %273
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.30) #20
  br label %276

276:                                              ; preds = %268, %275, %264, %256
  %277 = phi ptr [ %260, %264 ], [ %260, %256 ], [ %270, %275 ], [ %270, %268 ]
  %278 = phi ptr [ %259, %264 ], [ %259, %256 ], [ %270, %275 ], [ %270, %268 ]
  %279 = phi i32 [ %258, %264 ], [ %258, %256 ], [ %271, %275 ], [ %271, %268 ]
  %280 = icmp eq ptr %277, null
  br i1 %280, label %281, label %300

281:                                              ; preds = %276
  %282 = load i32, ptr %257, align 8
  %283 = trunc i32 %282 to i16
  switch i16 %283, label %299 [
    i16 11, label %300
    i16 13, label %300
    i16 12, label %284
  ]

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1, i32 0, i32 0, i64 2
  %286 = load ptr, ptr %285, align 8, !tbaa !181
  %287 = icmp eq ptr %286, null
  br i1 %287, label %300, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %286, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 9
  br i1 %291, label %292, label %300

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !181
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 65534
  %297 = icmp eq i32 %296, 20
  %298 = select i1 %297, ptr %286, ptr %257
  br label %300

299:                                              ; preds = %281
  tail call void @_fatal_insn(ptr noundef nonnull @.str.31, ptr noundef nonnull %257, ptr noundef nonnull @.str, i32 noundef 2198, ptr noundef nonnull @.str.1) #20
  br label %300

300:                                              ; preds = %281, %292, %299, %281, %288, %284, %276
  %301 = phi ptr [ %257, %276 ], [ %257, %299 ], [ %257, %288 ], [ %257, %284 ], [ %257, %281 ], [ %298, %292 ], [ %257, %281 ]
  %302 = load i32, ptr %301, align 8
  %303 = and i32 %302, 65535
  %304 = icmp eq i32 %303, 9
  br i1 %304, label %305, label %320

305:                                              ; preds = %300
  %306 = tail call i32 @returnjump_p(ptr noundef nonnull %301) #20
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %320, label %308

308:                                              ; preds = %305
  %309 = tail call i32 @condjump_p(ptr noundef nonnull %301) #20
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %308
  %312 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %301) #20
  %313 = icmp eq ptr %312, null
  br i1 %313, label %319, label %314

314:                                              ; preds = %311
  %315 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %301) #20
  %316 = load i32, ptr %315, align 8
  %317 = and i32 %316, 65535
  %318 = icmp eq i32 %317, 11
  br i1 %318, label %320, label %319

319:                                              ; preds = %314, %311
  tail call void @_fatal_insn(ptr noundef nonnull @.str.32, ptr noundef nonnull %301, ptr noundef nonnull @.str, i32 noundef 2205, ptr noundef nonnull @.str.1) #20
  br label %320

320:                                              ; preds = %319, %314, %308, %305, %300
  br i1 %280, label %328, label %321

321:                                              ; preds = %320
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %277, i64 0, i32 7
  %323 = load ptr, ptr %322, align 8, !tbaa !181
  %324 = getelementptr inbounds %struct.rtl_bb_info, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !217
  %326 = icmp eq ptr %301, %325
  %327 = select i1 %326, ptr null, ptr %277
  br label %328

328:                                              ; preds = %321, %320
  %329 = phi ptr [ %327, %321 ], [ null, %320 ]
  %330 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1, i32 0, i32 0, i64 2
  %331 = load ptr, ptr %330, align 8, !tbaa !181
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %256, !llvm.loop !451

333:                                              ; preds = %328, %248
  %334 = phi i32 [ 0, %248 ], [ %279, %328 ]
  %335 = load ptr, ptr @cfun, align 8, !tbaa !170
  %336 = getelementptr inbounds %struct.function, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !249
  %338 = getelementptr inbounds %struct.control_flow_graph, ptr %337, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !325
  %340 = add nsw i32 %339, -2
  %341 = icmp eq i32 %334, %340
  br i1 %341, label %343, label %342

342:                                              ; preds = %333
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.33, i32 noundef %334, i32 noundef %339) #20
  br label %343

343:                                              ; preds = %342, %333
  ret i32 %249
}

; Function Attrs: cold nounwind uwtable
define internal void @rtl_dump_bb(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3) #12 !prof !169 {
  %5 = load ptr, ptr @df, align 8, !tbaa !170
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  tail call void @df_dump_top(ptr noundef %0, ptr noundef %1) #20
  %8 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %4
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !217
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = load ptr, ptr %11, align 8, !tbaa !181
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %24, label %18

18:                                               ; preds = %9, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %9 ]
  %20 = tail call i32 @print_rtl_single(ptr noundef %1, ptr noundef %19) #20
  %21 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %24, label %18, !llvm.loop !452

24:                                               ; preds = %18, %9
  %25 = load ptr, ptr @df, align 8, !tbaa !170
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  tail call void @df_dump_bottom(ptr noundef %0, ptr noundef %1) #20
  %28 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @rtl_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !453 !PGOFuncName !454 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !301
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !300

13:                                               ; preds = %3
  %14 = load i32, ptr %11, align 8, !tbaa !455
  %15 = zext i32 %14 to i64
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi i64 [ %15, %13 ], [ 0, %3 ]
  %18 = icmp ugt i64 %17, %9
  br i1 %18, label %52, label %19, !prof !457

19:                                               ; preds = %16
  %20 = add nsw i32 %8, 3
  %21 = sdiv i32 %20, 4
  %22 = add nsw i32 %21, %8
  br i1 %12, label %25, label %23, !prof !458

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 8, !tbaa !455
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  br i1 %12, label %29, label %27, !prof !458

27:                                               ; preds = %25
  %28 = load i32, ptr %11, align 8, !tbaa !455
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %28, %27 ], [ 0, %25 ]
  %31 = sub nsw i32 %22, %30
  br i1 %12, label %38, label %32, !prof !458

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %11, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !459
  %35 = load i32, ptr %11, align 8, !tbaa !455
  %36 = sub i32 %34, %35
  %37 = icmp uge i32 %36, %31
  br label %40

38:                                               ; preds = %29
  %39 = icmp eq i32 %30, %22
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i1 [ %37, %32 ], [ %39, %38 ]
  br i1 %41, label %44, label %42, !prof !458

42:                                               ; preds = %40
  %43 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %11, i32 noundef %31) #20
  store ptr %43, ptr %10, align 8, !tbaa !170
  br label %44

44:                                               ; preds = %40, %42
  %45 = load ptr, ptr %10, align 8, !tbaa !170, !nonnull !460, !noundef !460
  store i32 %22, ptr %45, align 8, !tbaa !455
  %46 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %45, i64 0, i32 2
  %47 = sext i32 %26 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = sub nsw i32 %22, %26
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %48, i8 0, i64 %51, i1 false), !prof !461
  br label %52

52:                                               ; preds = %44, %16
  %53 = load ptr, ptr @cfun, align 8, !tbaa !170
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !249
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !325
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !325
  %59 = tail call ptr @alloc_block() #20
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !181
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !295

63:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3064, ptr noundef nonnull @.str.1) #20
  br label %64

64:                                               ; preds = %63, %52
  %65 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #20
  store ptr %65, ptr %60, align 8, !tbaa !181
  %66 = icmp ne ptr %0, null
  %67 = icmp ne ptr %1, null
  %68 = or i1 %66, %67
  br i1 %68, label %72, label %69, !prof !295

69:                                               ; preds = %64
  %70 = tail call ptr @get_last_insn() #20
  %71 = tail call ptr @emit_note_after(i32 noundef 10, ptr noundef %70) #20
  br label %84

72:                                               ; preds = %64
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 12
  %76 = and i1 %67, %75
  br i1 %76, label %77, label %81, !prof !297

77:                                               ; preds = %72
  %78 = tail call ptr @emit_note_after(i32 noundef 10, ptr noundef nonnull %0) #20
  %79 = icmp eq ptr %0, %1
  %80 = select i1 %79, ptr %78, ptr %1, !prof !298
  br label %84

81:                                               ; preds = %72
  %82 = tail call ptr @emit_note_before(i32 noundef 10, ptr noundef nonnull %0) #20
  %83 = select i1 %67, ptr %1, ptr %82, !prof !299
  br label %84

84:                                               ; preds = %81, %77, %69
  %85 = phi ptr [ %71, %69 ], [ %78, %77 ], [ %82, %81 ]
  %86 = phi ptr [ %71, %69 ], [ %80, %77 ], [ %83, %81 ]
  %87 = phi ptr [ %71, %69 ], [ %0, %77 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 2
  store ptr %59, ptr %88, align 8, !tbaa !181
  %89 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !181
  %91 = icmp eq ptr %90, %85
  %92 = select i1 %91, ptr %85, ptr %86, !prof !300
  %93 = load ptr, ptr %60, align 8, !tbaa !181
  store ptr %87, ptr %93, align 8, !tbaa !223
  %94 = load ptr, ptr %60, align 8, !tbaa !181
  %95 = getelementptr inbounds %struct.rtl_bb_info, ptr %94, i64 0, i32 1
  store ptr %92, ptr %95, align 8, !tbaa !217
  %96 = load ptr, ptr @cfun, align 8, !tbaa !170
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !249
  %99 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !301
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !301
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  store i32 %100, ptr %102, align 8, !tbaa !266
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 13
  store i32 513, ptr %103, align 8, !tbaa !302
  tail call void @link_block(ptr noundef %59, ptr noundef %2) #20
  %104 = load ptr, ptr @cfun, align 8, !tbaa !170
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !249
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !303
  %109 = load i32, ptr %102, align 8, !tbaa !266
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %108, i64 0, i32 2, i64 %110
  store ptr %59, ptr %111, align 8, !tbaa !170
  tail call void @df_bb_refs_record(i32 noundef %109, i8 noundef zeroext 0) #20
  %112 = load ptr, ptr %60, align 8, !tbaa !181
  %113 = getelementptr inbounds %struct.rtl_bb_info, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !217
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %116 = load ptr, ptr %115, align 8, !tbaa !181
  %117 = load ptr, ptr %112, align 8, !tbaa !181
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %129, label %119, !prof !304

119:                                              ; preds = %84, %125
  %120 = phi ptr [ %127, %125 ], [ %117, %84 ]
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 11
  br i1 %123, label %125, label %124, !prof !305

124:                                              ; preds = %119
  tail call void @df_insn_change_bb(ptr noundef nonnull %120, ptr noundef %59) #20
  br label %125

125:                                              ; preds = %124, %119
  %126 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 2
  %127 = load ptr, ptr %126, align 8, !tbaa !181
  %128 = icmp eq ptr %127, %116
  br i1 %128, label %129, label %119, !prof !306, !llvm.loop !307

129:                                              ; preds = %125, %84
  %130 = load i32, ptr %103, align 8, !tbaa !302
  %131 = and i32 %130, -97
  store i32 %131, ptr %103, align 8, !tbaa !302
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 2
  store ptr null, ptr %132, align 8, !tbaa !296
  ret ptr %59
}

; Function Attrs: nounwind uwtable
define internal ptr @rtl_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #10 !prof !462 !PGOFuncName !463 {
  %3 = load ptr, ptr %0, align 8, !tbaa !328
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !231
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20, !prof !464

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !248
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %20, label %12, !prof !465

12:                                               ; preds = %8
  %13 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !466

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @redirect_branch_edge(ptr noundef nonnull %0, ptr noundef %1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !467

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %13, %12 ], [ %16, %15 ]
  tail call void @df_set_bb_dirty(ptr noundef %3) #20
  br label %20

20:                                               ; preds = %18, %15, %8, %2
  %21 = phi ptr [ null, %2 ], [ %0, %8 ], [ null, %15 ], [ %19, %18 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal ptr @rtl_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) #10 !prof !468 !PGOFuncName !469 {
  %3 = tail call ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12, !prof !470

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9, !prof !471

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !328
  tail call void @df_set_bb_dirty(ptr noundef %10) #20
  %11 = tail call fastcc ptr @force_nonfallthru_and_redirect(ptr noundef nonnull %0, ptr noundef %1)
  br label %12

12:                                               ; preds = %2, %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @rtl_can_remove_branch_p(ptr noundef readonly %0) #12 !prof !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !328
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !269
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %4, i64 0, i32 2, i64 0
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = icmp eq ptr %6, %0
  %8 = zext i1 %7 to i64
  %9 = getelementptr inbounds %struct.VEC_edge_base, ptr %4, i64 0, i32 2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !170
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !248
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !181
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !217
  %17 = load ptr, ptr @cfun, align 8, !tbaa !170
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !249
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !251
  %22 = icmp eq ptr %12, %21
  br i1 %22, label %65, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !231
  %26 = and i32 %25, 12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  %29 = tail call ptr @find_reg_note(ptr noundef %16, i32 noundef 29, ptr noundef null) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !302
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !302
  %36 = xor i32 %35, %33
  %37 = and i32 %36, 96
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = tail call i32 @onlyjump_p(ptr noundef %16) #20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @tablejump_p(ptr noundef %16, ptr noundef null, ptr noundef null) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32, ptr %16, align 8
  %47 = and i32 %46, 65535
  %48 = add nsw i32 %47, -7
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !181
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 23
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @single_set_2(ptr noundef nonnull %16, ptr noundef nonnull %52) #20
  br label %58

58:                                               ; preds = %45, %50, %56
  %59 = phi ptr [ %57, %56 ], [ null, %45 ], [ %52, %50 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @side_effects_p(ptr noundef nonnull %59) #20
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i8
  br label %65

65:                                               ; preds = %61, %58, %39, %42, %28, %31, %23, %1
  %66 = phi i8 [ 0, %1 ], [ 0, %23 ], [ 0, %31 ], [ 0, %28 ], [ 0, %42 ], [ 0, %39 ], [ 0, %58 ], [ %64, %61 ]
  ret i8 %66
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rtl_delete_block(ptr nocapture noundef readonly %0) #9 !prof !472 !PGOFuncName !473 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = load ptr, ptr %4, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = call zeroext i8 @tablejump_p(ptr noundef %7, ptr noundef null, ptr noundef nonnull %2) #20
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %2, align 8
  %11 = select i1 %9, ptr %7, ptr %10, !prof !435
  %12 = call ptr @next_nonnote_insn_bb(ptr noundef %11) #20
  store ptr %12, ptr %2, align 8, !tbaa !170
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14, !prof !332

14:                                               ; preds = %1
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 11
  br i1 %17, label %22, label %26, !prof !436

18:                                               ; preds = %22
  %19 = load i32, ptr %24, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 11
  br i1 %21, label %22, label %26, !prof !437, !llvm.loop !438

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %24, %18 ], [ %12, %14 ]
  %24 = call ptr @next_nonnote_insn_bb(ptr noundef nonnull %23) #20
  store ptr %24, ptr %2, align 8, !tbaa !170
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !439, !llvm.loop !438

26:                                               ; preds = %22, %18, %14, %1
  %27 = phi ptr [ %11, %1 ], [ %11, %14 ], [ %23, %18 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  %28 = load ptr, ptr %3, align 8, !tbaa !181
  store ptr null, ptr %28, align 8, !tbaa !223
  br label %29

29:                                               ; preds = %164, %26
  %30 = phi ptr [ %5, %26 ], [ %158, %164 ]
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %39, !prof !289

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !181
  %37 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !181
  switch i32 %38, label %157 [
    i32 0, label %39
    i32 10, label %39
    i32 6, label %39
  ], !prof !290

39:                                               ; preds = %34, %34, %34, %29
  %40 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = icmp eq i32 %32, 12
  br i1 %42, label %43, label %63, !prof !190

43:                                               ; preds = %39
  %44 = and i32 %31, 268435456
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54, !prof !191

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54, !prof !191

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !192
  %52 = call i32 @in_expr_list_p(ptr noundef %51, ptr noundef nonnull %30) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54, !prof !191

54:                                               ; preds = %50, %46, %43
  %55 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !181
  %57 = load i32, ptr %30, align 8
  %58 = and i32 %57, -65536
  %59 = or disjoint i32 %58, 13
  store i32 %59, ptr %30, align 8
  %60 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  store i32 1, ptr %60, align 8, !tbaa !181
  %61 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 2
  store ptr %56, ptr %61, align 8, !tbaa !181
  call void @remove_node_from_expr_list(ptr noundef nonnull %30, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #20
  br label %71

62:                                               ; preds = %50
  call void @remove_node_from_expr_list(ptr noundef nonnull %30, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10)) #20
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i32, ptr %30, align 8
  %65 = and i32 %64, 134217728
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67, !prof !201

67:                                               ; preds = %63
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.1) #20
  br label %68

68:                                               ; preds = %67, %63
  call void @remove_insn(ptr noundef nonnull %30) #20
  %69 = load i32, ptr %30, align 8
  %70 = or i32 %69, 134217728
  store i32 %70, ptr %30, align 8
  br label %71

71:                                               ; preds = %68, %54
  %72 = load i32, ptr %30, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %75, label %103, !prof !202

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !181
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79, !prof !203

79:                                               ; preds = %75
  %80 = load i32, ptr %77, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 12
  br i1 %82, label %83, label %87, !prof !204

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !181
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 8, !tbaa !181
  br label %87

87:                                               ; preds = %83, %79, %75
  %88 = call ptr @find_reg_note(ptr noundef nonnull %30, i32 noundef 9, ptr noundef null) #20
  %89 = icmp eq ptr %88, null
  br i1 %89, label %103, label %90, !prof !205

90:                                               ; preds = %87, %97
  %91 = phi ptr [ %101, %97 ], [ %88, %87 ]
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !181
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 12
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !181
  %100 = add nsw i32 %99, -1
  store i32 %100, ptr %98, align 8, !tbaa !181
  call void @remove_note(ptr noundef nonnull %30, ptr noundef nonnull %91) #20
  %101 = call ptr @find_reg_note(ptr noundef nonnull %30, i32 noundef 9, ptr noundef null) #20
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %90, !prof !205, !llvm.loop !206

103:                                              ; preds = %97, %90, %87, %71
  %104 = call ptr @find_reg_note(ptr noundef nonnull %30, i32 noundef 10, ptr noundef null) #20
  %105 = icmp eq ptr %104, null
  br i1 %105, label %119, label %106, !prof !207

106:                                              ; preds = %103, %113
  %107 = phi ptr [ %117, %113 ], [ %104, %103 ]
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !181
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 12
  br i1 %112, label %113, label %119, !prof !208

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !181
  %116 = add nsw i32 %115, -1
  store i32 %116, ptr %114, align 8, !tbaa !181
  call void @remove_note(ptr noundef nonnull %30, ptr noundef nonnull %107) #20
  %117 = call ptr @find_reg_note(ptr noundef nonnull %30, i32 noundef 10, ptr noundef null) #20
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %106, !prof !208, !llvm.loop !209

119:                                              ; preds = %113, %106, %103
  %120 = load i32, ptr %30, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %157, !prof !202

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !181
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65534
  %128 = icmp eq i32 %127, 20
  br i1 %128, label %129, label %157, !prof !210

129:                                              ; preds = %123
  %130 = and i32 %126, 21
  %131 = icmp eq i32 %130, 21
  %132 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %133 = zext i1 %131 to i64
  %134 = getelementptr inbounds [1 x %union.rtunion_def], ptr %132, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !181
  %136 = load i32, ptr %135, align 8, !tbaa !211
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %129
  %139 = zext nneg i32 %136 to i64
  br label %140

140:                                              ; preds = %154, %138
  %141 = phi i64 [ 0, %138 ], [ %155, %154 ]
  %142 = load ptr, ptr %134, align 8, !tbaa !181
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !170
  %145 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !181
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 13
  br i1 %149, label %154, label %150

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1, i32 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !181
  %153 = add nsw i32 %152, -1
  store i32 %153, ptr %151, align 8, !tbaa !181
  br label %154

154:                                              ; preds = %150, %140
  %155 = add nuw nsw i64 %141, 1
  %156 = icmp eq i64 %155, %139
  br i1 %156, label %157, label %140, !llvm.loop !213

157:                                              ; preds = %154, %129, %123, %119, %34
  %158 = phi ptr [ %41, %119 ], [ %41, %123 ], [ %41, %129 ], [ %36, %34 ], [ %41, %154 ]
  %159 = load i32, ptr %30, align 8
  %160 = and i32 %159, 134217728
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164, !prof !292

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %163, align 8, !tbaa !181
  br label %164

164:                                              ; preds = %162, %157
  %165 = icmp eq ptr %30, %27
  br i1 %165, label %166, label %29, !prof !293, !llvm.loop !294

166:                                              ; preds = %164
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169, !prof !435

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !266
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %167, ptr noundef nonnull @.str.35, i32 noundef %171)
  br label %173

173:                                              ; preds = %169, %166
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !266
  call void @df_bb_delete(i32 noundef %175) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rtl_split_block(ptr noundef %0, ptr noundef %1) #10 !prof !474 !PGOFuncName !475 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %70, !prof !476

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %7, %9 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !181
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.1) #20
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  br label %29

29:                                               ; preds = %4, %26
  %30 = phi ptr [ %28, %26 ], [ null, %4 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %68, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !181
  %35 = load ptr, ptr %5, align 8, !tbaa !181
  %36 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !217
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %70, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %30, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load i32, ptr %37, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = icmp eq ptr %30, %37
  br i1 %48, label %65, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %30, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %57, label %62

53:                                               ; preds = %57
  %54 = load i32, ptr %60, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %62, !llvm.loop !477

57:                                               ; preds = %49, %53
  %58 = phi ptr [ %60, %53 ], [ %30, %49 ]
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !181
  %61 = icmp eq ptr %60, %37
  br i1 %61, label %65, label %53, !llvm.loop !477

62:                                               ; preds = %53, %49
  %63 = phi i1 [ %48, %49 ], [ %61, %53 ]
  %64 = phi ptr [ %30, %49 ], [ %60, %53 ]
  br i1 %63, label %65, label %70

65:                                               ; preds = %57, %47, %62
  %66 = phi ptr [ %64, %62 ], [ %30, %47 ], [ %60, %57 ]
  %67 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef %66) #20
  br label %70

68:                                               ; preds = %29
  %69 = tail call ptr @get_last_insn() #20
  br label %70

70:                                               ; preds = %32, %39, %43, %65, %62, %68, %2
  %71 = phi ptr [ %1, %2 ], [ %69, %68 ], [ %34, %62 ], [ %34, %65 ], [ %34, %43 ], [ %34, %39 ], [ %34, %32 ]
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !217
  %76 = icmp eq ptr %71, %75
  br i1 %76, label %77, label %79, !prof !476

77:                                               ; preds = %70
  %78 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef %71) #20
  br label %79

79:                                               ; preds = %77, %70
  %80 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !181
  %82 = load ptr, ptr %72, align 8, !tbaa !181
  %83 = getelementptr inbounds %struct.rtl_bb_info, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !217
  %85 = tail call ptr @create_basic_block(ptr noundef %81, ptr noundef %84, ptr noundef %0) #20
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 13
  %87 = load i32, ptr %86, align 8, !tbaa !302
  %88 = and i32 %87, -97
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %90 = load i32, ptr %89, align 8, !tbaa !302
  %91 = and i32 %90, 96
  %92 = or disjoint i32 %91, %88
  store i32 %92, ptr %86, align 8, !tbaa !302
  %93 = load ptr, ptr %72, align 8, !tbaa !181
  %94 = getelementptr inbounds %struct.rtl_bb_info, ptr %93, i64 0, i32 1
  store ptr %71, ptr %94, align 8, !tbaa !217
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !269
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  store ptr %96, ptr %97, align 8, !tbaa !269
  store ptr null, ptr %95, align 8, !tbaa !269
  br label %98

98:                                               ; preds = %122, %79
  %99 = phi i32 [ 0, %79 ], [ %123, %122 ]
  %100 = load ptr, ptr %97, align 8, !tbaa !170
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !478

102:                                              ; preds = %98
  %103 = load i32, ptr %100, align 8, !tbaa !228
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i32 [ %103, %102 ], [ 0, %98 ]
  %106 = icmp eq i32 %105, %99
  br i1 %106, label %111, label %107, !prof !479

107:                                              ; preds = %104
  %108 = zext i32 %99 to i64
  %109 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !170
  br label %111

111:                                              ; preds = %104, %107
  %112 = phi ptr [ %110, %107 ], [ null, %104 ]
  br i1 %106, label %124, label %113, !prof !479

113:                                              ; preds = %111
  store ptr %85, ptr %112, align 8, !tbaa !328
  %114 = load ptr, ptr %97, align 8, !tbaa !170
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !480

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8, !tbaa !228
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %117, %116 ], [ 0, %113 ]
  %120 = icmp ult i32 %99, %119
  br i1 %120, label %122, label %121, !prof !481

121:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %122

122:                                              ; preds = %118, %121
  %123 = add i32 %99, 1
  br label %98, !llvm.loop !482

124:                                              ; preds = %111
  tail call void @df_set_bb_dirty(ptr noundef %0) #20
  ret ptr %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @rtl_move_block_after(ptr nocapture readnone %0, ptr nocapture readnone %1) #14 !prof !483 !PGOFuncName !484 {
  ret i8 0
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @rtl_can_merge_blocks(ptr noundef readonly %0, ptr noundef readonly %1) #12 !prof !485 !PGOFuncName !486 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !302
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !302
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %86, !prof !487

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !269
  %13 = icmp eq ptr %12, null
  br i1 %13, label %86, label %14, !prof !488

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8, !tbaa !228
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %86, !prof !488

17:                                               ; preds = %14
  br i1 %13, label %21, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %12, align 8, !tbaa !228
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %22

22:                                               ; preds = %18, %21
  %23 = load ptr, ptr %11, align 8, !tbaa !269
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %23, i64 0, i32 2, i64 0
  %25 = load ptr, ptr %24, align 8, !tbaa !170
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !248
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %86

29:                                               ; preds = %22
  %30 = load ptr, ptr %1, align 8, !tbaa !329
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %30, align 8, !tbaa !228
  %34 = icmp ne i32 %33, 1
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi i1 [ %34, %32 ], [ true, %29 ]
  %37 = icmp eq ptr %0, %1
  %38 = or i1 %37, %36
  br i1 %38, label %86, label %39

39:                                               ; preds = %35
  %40 = icmp eq ptr %23, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %23, align 8, !tbaa !228
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %41, %44
  %46 = load ptr, ptr %11, align 8, !tbaa !269
  %47 = getelementptr inbounds %struct.VEC_edge_base, ptr %46, i64 0, i32 2, i64 0
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !231
  %51 = and i32 %50, 14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !315
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load ptr, ptr @cfun, align 8, !tbaa !170
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !249
  %61 = load ptr, ptr %60, align 8, !tbaa !314
  %62 = icmp eq ptr %61, %0
  br i1 %62, label %86, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !251
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %86, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !181
  %70 = getelementptr inbounds %struct.rtl_bb_info, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !217
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load i32, ptr @reload_completed, align 4, !tbaa !185
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @simplejump_p(ptr noundef nonnull %71) #20
  br label %82

80:                                               ; preds = %75
  %81 = tail call i32 @onlyjump_p(ptr noundef nonnull %71) #20
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %10, %14, %22, %35, %45, %53, %57, %63, %82, %67, %2
  %87 = phi i8 [ 0, %2 ], [ 0, %63 ], [ 0, %57 ], [ 0, %53 ], [ 0, %45 ], [ 0, %35 ], [ 0, %22 ], [ 0, %14 ], [ 1, %67 ], [ %85, %82 ], [ 0, %10 ]
  ret i8 %87
}

; Function Attrs: nounwind uwtable
define internal void @rtl_merge_blocks(ptr noundef %0, ptr nocapture noundef readonly %1) #10 !prof !489 !PGOFuncName !490 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = load ptr, ptr %4, align 8, !tbaa !223
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !491

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !266
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !266
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.36, i32 noundef %16, i32 noundef %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, ptr %7, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %31, !prof !492

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %7, %20 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %24, label %31, !prof !492, !llvm.loop !493

31:                                               ; preds = %24, %20
  %32 = phi ptr [ %7, %20 ], [ %27, %24 ]
  %33 = phi ptr [ %7, %20 ], [ %25, %24 ]
  %34 = load i32, ptr %5, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %42, !prof !491

37:                                               ; preds = %31
  %38 = icmp eq ptr %5, %32
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi ptr [ %5, %37 ], [ null, %31 ]
  %44 = phi ptr [ %41, %37 ], [ %5, %31 ]
  %45 = phi i32 [ %39, %37 ], [ 0, %31 ]
  %46 = load i32, ptr %44, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %58, !prof !491

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1
  %51 = load i32, ptr %50, align 8, !tbaa !181
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %58, !prof !491

53:                                               ; preds = %49
  %54 = icmp eq ptr %44, %32
  %55 = select i1 %54, i32 1, i32 %45, !prof !494
  %56 = icmp eq ptr %43, null
  %57 = select i1 %56, ptr %44, ptr %43, !prof !494
  br label %58

58:                                               ; preds = %53, %49, %42
  %59 = phi ptr [ %57, %53 ], [ %43, %49 ], [ %43, %42 ]
  %60 = phi ptr [ %44, %53 ], [ %43, %49 ], [ %43, %42 ]
  %61 = phi i32 [ %55, %53 ], [ %45, %49 ], [ %45, %42 ]
  %62 = load i32, ptr %11, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %88, !prof !494

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !181
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %77, label %86

71:                                               ; preds = %82
  %72 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %86, !llvm.loop !495

77:                                               ; preds = %65, %71
  %78 = phi ptr [ %73, %71 ], [ %67, %65 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 1
  %80 = load i32, ptr %79, align 8, !tbaa !181
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %8, align 8, !tbaa !181
  %84 = load ptr, ptr %83, align 8, !tbaa !223
  %85 = icmp eq ptr %78, %84
  br i1 %85, label %86, label %71

86:                                               ; preds = %82, %77, %71, %65
  %87 = load ptr, ptr %66, align 8, !tbaa !181
  br label %95

88:                                               ; preds = %58
  %89 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !181
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 11
  %94 = select i1 %93, ptr %90, ptr %59, !prof !494
  br label %95

95:                                               ; preds = %88, %86
  %96 = phi ptr [ %87, %86 ], [ %11, %88 ]
  %97 = phi ptr [ %11, %86 ], [ %94, %88 ]
  %98 = load ptr, ptr %3, align 8, !tbaa !181
  store ptr null, ptr %98, align 8, !tbaa !223
  tail call void @delete_insn_chain(ptr noundef %97, ptr noundef %60, i8 noundef zeroext 1)
  %99 = icmp eq i32 %61, 0
  br i1 %99, label %100, label %114, !prof !491

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %102 = load ptr, ptr %101, align 8, !tbaa !181
  %103 = icmp eq ptr %96, %102
  br i1 %103, label %137, label %104, !prof !496

104:                                              ; preds = %100, %110
  %105 = phi ptr [ %112, %110 ], [ %96, %100 ]
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %110, label %109, !prof !497

109:                                              ; preds = %104
  tail call void @df_insn_change_bb(ptr noundef nonnull %105, ptr noundef %0) #20
  br label %110

110:                                              ; preds = %109, %104
  %111 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !181
  %113 = icmp eq ptr %112, %102
  br i1 %113, label %137, label %104, !prof !498, !llvm.loop !307

114:                                              ; preds = %95
  %115 = icmp eq ptr %32, %7
  br i1 %115, label %137, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 2
  %118 = load ptr, ptr %117, align 8, !tbaa !181
  %119 = icmp eq ptr %118, %33
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !181
  tail call void @reorder_insns_nobb(ptr noundef %118, ptr noundef %122, ptr noundef nonnull %7) #20
  br label %123

123:                                              ; preds = %120, %116
  %124 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !181
  %126 = icmp eq ptr %33, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %123, %133
  %128 = phi ptr [ %135, %133 ], [ %33, %123 ]
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 11
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  tail call void @df_insn_change_bb(ptr noundef nonnull %128, ptr noundef %0) #20
  br label %133

133:                                              ; preds = %132, %127
  %134 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1, i32 0, i32 0, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !181
  %136 = icmp eq ptr %135, %125
  br i1 %136, label %137, label %127, !llvm.loop !307

137:                                              ; preds = %133, %110, %123, %100, %114
  %138 = phi ptr [ %96, %114 ], [ %7, %100 ], [ %7, %123 ], [ %7, %110 ], [ %7, %133 ]
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %140 = load i32, ptr %139, align 8, !tbaa !266
  tail call void @df_bb_delete(i32 noundef %140) #20
  %141 = load ptr, ptr %8, align 8, !tbaa !181
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %141, i64 0, i32 1
  store ptr %138, ptr %142, align 8, !tbaa !217
  ret void
}

declare void @rtl_predict_edge(ptr noundef, i32 noundef, i32 noundef) #3

declare zeroext i8 @rtl_predicted_by_p(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @rtl_split_edge(ptr noundef %0) #10 !prof !499 !PGOFuncName !500 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !231
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !501

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1362, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i32, ptr %2, align 8, !tbaa !231
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53, !prof !502

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !248
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %45, %11
  %16 = phi i32 [ 0, %11 ], [ %46, %45 ]
  br i1 %14, label %17, label %18, !prof !503

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %18

18:                                               ; preds = %17, %15
  %19 = load ptr, ptr %13, align 8, !tbaa !170
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !503

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 8, !tbaa !228
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 0, %18 ]
  %25 = icmp eq i32 %24, %16
  br i1 %25, label %30, label %26, !prof !504

26:                                               ; preds = %23
  %27 = zext i32 %16 to i64
  %28 = getelementptr inbounds %struct.VEC_edge_base, ptr %19, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !170
  br label %30

30:                                               ; preds = %23, %26
  %31 = phi ptr [ %29, %26 ], [ null, %23 ]
  br i1 %25, label %47, label %32, !prof !504

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !231
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47, !prof !505

37:                                               ; preds = %32
  %38 = icmp eq ptr %19, null
  br i1 %38, label %41, label %39, !prof !506

39:                                               ; preds = %37
  %40 = load i32, ptr %19, align 8, !tbaa !228
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %40, %39 ], [ 0, %37 ]
  %43 = icmp ult i32 %16, %42
  br i1 %43, label %45, label %44, !prof !507

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %41, %44
  %46 = add i32 %16, 1
  br label %15, !llvm.loop !508

47:                                               ; preds = %32, %30
  %48 = icmp eq ptr %31, null
  br i1 %48, label %53, label %49, !prof !509

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !248
  %52 = tail call fastcc ptr @force_nonfallthru_and_redirect(ptr noundef nonnull %31, ptr noundef %51)
  br label %53

53:                                               ; preds = %47, %49, %7
  %54 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !248
  %56 = load ptr, ptr @cfun, align 8, !tbaa !170
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !249
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !251
  %61 = icmp eq ptr %55, %60
  br i1 %61, label %66, label %62, !prof !510

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  %65 = load ptr, ptr %64, align 8, !tbaa !223
  br label %66

66:                                               ; preds = %53, %62
  %67 = phi ptr [ %65, %62 ], [ null, %53 ]
  %68 = load i32, ptr %2, align 8, !tbaa !231
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %71, !prof !502

71:                                               ; preds = %66
  br i1 %61, label %72, label %81, !prof !511

72:                                               ; preds = %71
  %73 = load ptr, ptr %0, align 8, !tbaa !328
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !181
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !217
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !181
  %80 = tail call ptr @create_basic_block(ptr noundef %79, ptr noundef null, ptr noundef %73) #20
  br label %85

81:                                               ; preds = %71, %66
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !419
  %84 = tail call ptr @create_basic_block(ptr noundef %67, ptr noundef null, ptr noundef %83) #20
  br label %85

85:                                               ; preds = %81, %72
  %86 = phi ptr [ %84, %81 ], [ %80, %72 ]
  %87 = phi ptr [ %54, %81 ], [ %0, %72 ]
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 13
  %89 = load i32, ptr %88, align 8, !tbaa !302
  %90 = and i32 %89, -97
  %91 = load ptr, ptr %87, align 8, !tbaa !170
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 13
  %93 = load i32, ptr %92, align 8, !tbaa !302
  %94 = and i32 %93, 96
  %95 = or disjoint i32 %94, %90
  store i32 %95, ptr %88, align 8, !tbaa !302
  %96 = load ptr, ptr %54, align 8, !tbaa !248
  %97 = tail call ptr @make_single_succ_edge(ptr noundef %86, ptr noundef %96, i32 noundef 1) #20
  %98 = load i32, ptr %2, align 8, !tbaa !231
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105, !prof !502

101:                                              ; preds = %85
  %102 = tail call ptr @redirect_edge_and_branch(ptr noundef %0, ptr noundef %86) #20
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106, !prof !512

104:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1407, ptr noundef nonnull @.str.1) #20
  br label %106

105:                                              ; preds = %85
  tail call void @redirect_edge_succ(ptr noundef %0, ptr noundef %86) #20
  br label %106

106:                                              ; preds = %104, %101, %105
  ret ptr %86
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @rtl_make_forwarder_block(ptr nocapture readnone %0) #15 !prof !169 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @rtl_tidy_fallthru_edge(ptr nocapture noundef %0) #12 !prof !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !328
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = load ptr, ptr %10, align 8, !tbaa !223
  br label %12

12:                                               ; preds = %17, %1
  %13 = phi ptr [ %8, %1 ], [ %15, %17 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %72, label %12

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = tail call i32 @onlyjump_p(ptr noundef nonnull %8) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %8) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !269
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !228
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %30
  %41 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !181
  br label %43

43:                                               ; preds = %33, %40, %37, %27, %22
  %44 = phi ptr [ %42, %40 ], [ %8, %37 ], [ %8, %27 ], [ %8, %22 ], [ %8, %33 ]
  %45 = load ptr, ptr %23, align 8, !tbaa !181
  %46 = load ptr, ptr %45, align 8, !tbaa !223
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = icmp eq ptr %44, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !181
  br label %53

53:                                               ; preds = %65, %50
  %54 = phi ptr [ %52, %50 ], [ %66, %65 ]
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !181
  %61 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !181
  switch i32 %62, label %65 [
    i32 0, label %63
    i32 10, label %63
    i32 6, label %63
  ]

63:                                               ; preds = %58, %58, %58, %53
  %64 = tail call ptr @delete_insn(ptr noundef nonnull %54)
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi ptr [ %64, %63 ], [ %60, %58 ]
  %67 = icmp eq ptr %54, %48
  br i1 %67, label %68, label %53, !llvm.loop !294

68:                                               ; preds = %65, %43
  %69 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !231
  %71 = or i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !231
  br label %72

72:                                               ; preds = %17, %68
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @rtl_block_ends_with_call_p(ptr nocapture noundef readonly %0) #9 !prof !513 !PGOFuncName !514 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %26, label %9, !prof !515

9:                                                ; preds = %1, %20
  %10 = phi ptr [ %22, %20 ], [ %5, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !181
  %12 = load ptr, ptr %11, align 8, !tbaa !223
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %26, label %14, !prof !516

14:                                               ; preds = %9
  %15 = tail call zeroext i8 @keep_with_call_p(ptr noundef nonnull %10) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !517

17:                                               ; preds = %14
  %18 = load i32, ptr %10, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %26 [
    i16 13, label %20
    i16 7, label %20
  ], !prof !518

20:                                               ; preds = %17, %17, %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %9, !prof !519, !llvm.loop !520

26:                                               ; preds = %20, %9, %17, %1
  %27 = phi ptr [ %5, %1 ], [ %22, %20 ], [ %10, %9 ], [ %10, %17 ]
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 10
  %31 = zext i1 %30 to i8
  ret i8 %31
}

; Function Attrs: cold nounwind uwtable
define internal zeroext i8 @rtl_block_ends_with_condjump_p(ptr nocapture noundef readonly %0) #12 !prof !169 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !217
  %6 = tail call i32 @any_condjump_p(ptr noundef %5) #20
  %7 = trunc i32 %6 to i8
  ret i8 %7
}

; Function Attrs: cold nounwind uwtable
define internal i32 @rtl_flow_call_edges_add(ptr noundef readonly %0) #12 !prof !169 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !301
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !325
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %154, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %0, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !251
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !419
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !266
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !347
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %64, label %28

28:                                               ; preds = %10, %12
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !251
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !419
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !181
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !181
  %37 = load ptr, ptr %34, align 8, !tbaa !223
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %28, %43
  %40 = phi ptr [ %45, %43 ], [ %36, %28 ]
  %41 = tail call zeroext i8 @keep_with_call_p(ptr noundef %40) #20
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !181
  %46 = load ptr, ptr %33, align 8, !tbaa !181
  %47 = load ptr, ptr %46, align 8, !tbaa !223
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %49, label %39, !llvm.loop !521

49:                                               ; preds = %39, %43, %28
  %50 = phi ptr [ %36, %28 ], [ %40, %39 ], [ %45, %43 ]
  %51 = tail call fastcc zeroext i8 @need_fake_edge_p(ptr noundef %50), !range !220
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @cfun, align 8, !tbaa !170
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !249
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !251
  %59 = tail call ptr @find_edge(ptr noundef %32, ptr noundef %58) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !170
  %63 = tail call ptr @gen_use(ptr noundef %62) #20
  tail call void @insert_insn_on_edge(ptr noundef %63, ptr noundef nonnull %59)
  tail call void @commit_edge_insertions()
  br label %64

64:                                               ; preds = %49, %61, %53, %12
  %65 = icmp sgt i32 %6, 2
  br i1 %65, label %66, label %150

66:                                               ; preds = %64
  %67 = zext nneg i32 %6 to i64
  br label %68

68:                                               ; preds = %66, %146
  %69 = phi i64 [ 2, %66 ], [ %148, %146 ]
  %70 = phi i32 [ 0, %66 ], [ %147, %146 ]
  %71 = load ptr, ptr @cfun, align 8, !tbaa !170
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !249
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !303
  %76 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %75, i64 0, i32 2, i64 %69
  %77 = load ptr, ptr %76, align 8, !tbaa !170
  %78 = icmp eq ptr %77, null
  br i1 %78, label %146, label %79

79:                                               ; preds = %68
  br i1 %11, label %89, label %80

80:                                               ; preds = %79
  %81 = lshr i64 %69, 6
  %82 = and i64 %81, 67108863
  %83 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !347
  %85 = and i64 %69, 63
  %86 = shl nuw i64 1, %85
  %87 = and i64 %84, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %146, label %89

89:                                               ; preds = %80, %79
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !181
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !217
  br label %94

94:                                               ; preds = %141, %89
  %95 = phi i32 [ %70, %89 ], [ %142, %141 ]
  %96 = phi ptr [ %93, %89 ], [ %98, %141 ]
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !181
  %99 = tail call fastcc zeroext i8 @need_fake_edge_p(ptr noundef %96), !range !220
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %141, label %101

101:                                              ; preds = %94
  %102 = load i32, ptr %96, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load ptr, ptr %90, align 8, !tbaa !181
  %107 = getelementptr inbounds %struct.rtl_bb_info, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !217
  %109 = icmp eq ptr %96, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %105, %116
  %111 = phi ptr [ %117, %116 ], [ %96, %105 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !181
  %114 = tail call zeroext i8 @keep_with_call_p(ptr noundef %113) #20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %112, align 8, !tbaa !181
  %118 = load ptr, ptr %90, align 8, !tbaa !181
  %119 = getelementptr inbounds %struct.rtl_bb_info, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !217
  %121 = icmp eq ptr %117, %120
  br i1 %121, label %122, label %110, !llvm.loop !522

122:                                              ; preds = %110, %116, %105, %101
  %123 = phi ptr [ %96, %101 ], [ %96, %105 ], [ %117, %116 ], [ %111, %110 ]
  %124 = load ptr, ptr %90, align 8, !tbaa !181
  %125 = getelementptr inbounds %struct.rtl_bb_info, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !217
  %127 = icmp eq ptr %123, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = tail call ptr @split_block(ptr noundef nonnull %77, ptr noundef %123) #20
  %130 = icmp ne ptr %129, null
  %131 = zext i1 %130 to i32
  %132 = add nsw i32 %95, %131
  br label %133

133:                                              ; preds = %128, %122
  %134 = phi i32 [ %95, %122 ], [ %132, %128 ]
  %135 = load ptr, ptr @cfun, align 8, !tbaa !170
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !249
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !251
  %140 = tail call ptr @make_edge(ptr noundef nonnull %77, ptr noundef %139, i32 noundef 16) #20
  br label %141

141:                                              ; preds = %94, %133
  %142 = phi i32 [ %134, %133 ], [ %95, %94 ]
  %143 = load ptr, ptr %90, align 8, !tbaa !181
  %144 = load ptr, ptr %143, align 8, !tbaa !223
  %145 = icmp eq ptr %96, %144
  br i1 %145, label %146, label %94, !llvm.loop !523

146:                                              ; preds = %141, %80, %68
  %147 = phi i32 [ %70, %68 ], [ %70, %80 ], [ %142, %141 ]
  %148 = add nuw nsw i64 %69, 1
  %149 = icmp eq i64 %148, %67
  br i1 %149, label %150, label %68, !llvm.loop !524

150:                                              ; preds = %146, %64
  %151 = phi i32 [ 0, %64 ], [ %147, %146 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @verify_flow_info() #20
  br label %154

154:                                              ; preds = %150, %153, %1
  %155 = phi i32 [ 0, %1 ], [ %151, %153 ], [ %151, %150 ]
  ret i32 %155
}

; Function Attrs: cold nounwind uwtable
define internal i32 @rtl_verify_flow_info_1() #12 !prof !169 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !170
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !419
  %8 = load ptr, ptr @cfun, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = load ptr, ptr %10, align 8, !tbaa !314
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %122, label %22

13:                                               ; preds = %117, %95
  %14 = phi i32 [ %96, %95 ], [ %118, %117 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !419
  %17 = load ptr, ptr @cfun, align 8, !tbaa !170
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !249
  %20 = load ptr, ptr %19, align 8, !tbaa !314
  %21 = icmp eq ptr %16, %20
  br i1 %21, label %122, label %22, !llvm.loop !525

22:                                               ; preds = %0, %13
  %23 = phi ptr [ %16, %13 ], [ %7, %0 ]
  %24 = phi i32 [ %14, %13 ], [ 0, %0 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !302
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.37, i32 noundef %31) #20
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %24, %22 ], [ 1, %29 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !181
  %36 = load ptr, ptr %35, align 8, !tbaa !181
  %37 = icmp eq ptr %36, null
  br i1 %37, label %68, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  br label %40

40:                                               ; preds = %38, %63
  %41 = phi ptr [ %36, %38 ], [ %66, %63 ]
  %42 = phi i32 [ %33, %38 ], [ %64, %63 ]
  %43 = load ptr, ptr %34, align 8, !tbaa !181
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !217
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !181
  %48 = icmp eq ptr %41, %47
  br i1 %48, label %68, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  %52 = icmp eq ptr %51, %23
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !181
  %56 = icmp eq ptr %51, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !266
  br label %60

60:                                               ; preds = %53, %57
  %61 = phi i32 [ %59, %57 ], [ 0, %53 ]
  %62 = load i32, ptr %39, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.38, i32 noundef %55, i32 noundef %61, i32 noundef %62) #20
  br label %63

63:                                               ; preds = %49, %60
  %64 = phi i32 [ 1, %60 ], [ %42, %49 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !181
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %40, !llvm.loop !526

68:                                               ; preds = %40, %63, %32
  %69 = phi i32 [ %33, %32 ], [ %42, %40 ], [ %64, %63 ]
  %70 = load ptr, ptr %34, align 8, !tbaa !181
  %71 = getelementptr inbounds %struct.rtl_bb_info, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !181
  %73 = icmp eq ptr %72, null
  br i1 %73, label %95, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  br label %76

76:                                               ; preds = %74, %90
  %77 = phi ptr [ %72, %74 ], [ %93, %90 ]
  %78 = phi i32 [ %69, %74 ], [ %91, %90 ]
  %79 = load i32, ptr %77, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !181
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !181
  %89 = load i32, ptr %75, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.39, i32 noundef %88, i32 noundef %89) #20
  br label %90

90:                                               ; preds = %76, %82, %86
  %91 = phi i32 [ %78, %76 ], [ 1, %86 ], [ %78, %82 ]
  %92 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %93 = load ptr, ptr %92, align 8, !tbaa !181
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %76, !llvm.loop !527

95:                                               ; preds = %90, %68
  %96 = phi i32 [ %69, %68 ], [ %91, %90 ]
  %97 = load ptr, ptr %34, align 8, !tbaa !181
  %98 = getelementptr inbounds %struct.rtl_bb_info, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !181
  %100 = icmp eq ptr %99, null
  br i1 %100, label %13, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  br label %103

103:                                              ; preds = %101, %117
  %104 = phi ptr [ %99, %101 ], [ %120, %117 ]
  %105 = phi i32 [ %96, %101 ], [ %118, %117 ]
  %106 = load i32, ptr %104, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 11
  br i1 %108, label %117, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !181
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !181
  %116 = load i32, ptr %102, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40, i32 noundef %115, i32 noundef %116) #20
  br label %117

117:                                              ; preds = %103, %109, %113
  %118 = phi i32 [ %105, %103 ], [ 1, %113 ], [ %105, %109 ]
  %119 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !181
  %121 = icmp eq ptr %120, null
  br i1 %121, label %13, label %103, !llvm.loop !528

122:                                              ; preds = %13, %0
  %123 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %124 = phi ptr [ %10, %0 ], [ %19, %13 ]
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !251
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !419
  %129 = load ptr, ptr @cfun, align 8, !tbaa !170
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !249
  %132 = load ptr, ptr %131, align 8, !tbaa !314
  %133 = icmp eq ptr %128, %132
  br i1 %133, label %542, label %134

134:                                              ; preds = %122, %533
  %135 = phi ptr [ %536, %533 ], [ %128, %122 ]
  %136 = phi i32 [ %534, %533 ], [ %123, %122 ]
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 7
  %138 = load ptr, ptr %137, align 8, !tbaa !181
  %139 = getelementptr inbounds %struct.rtl_bb_info, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !217
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 9
  br i1 %143, label %144, label %198

144:                                              ; preds = %134
  %145 = tail call ptr @find_reg_note(ptr noundef nonnull %140, i32 noundef 13, ptr noundef null) #20
  %146 = icmp eq ptr %145, null
  br i1 %146, label %198, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !269
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %149, align 8, !tbaa !228
  br label %153

153:                                              ; preds = %147, %151
  %154 = phi i32 [ %152, %151 ], [ 0, %147 ]
  %155 = icmp ugt i32 %154, 1
  br i1 %155, label %156, label %198

156:                                              ; preds = %153
  %157 = load ptr, ptr %137, align 8, !tbaa !181
  %158 = getelementptr inbounds %struct.rtl_bb_info, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !217
  %160 = tail call i32 @any_condjump_p(ptr noundef %159) #20
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %198, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !181
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !181
  %167 = load ptr, ptr %148, align 8, !tbaa !269
  %168 = getelementptr inbounds %struct.VEC_edge_base, ptr %167, i64 0, i32 2, i64 0
  %169 = load ptr, ptr %168, align 8, !tbaa !170
  %170 = getelementptr inbounds %struct.edge_def, ptr %169, i64 0, i32 7
  %171 = load i32, ptr %170, align 8, !tbaa !231
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.VEC_edge_base, ptr %167, i64 0, i32 2, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !170
  br label %177

177:                                              ; preds = %162, %174
  %178 = phi ptr [ %176, %174 ], [ %169, %162 ]
  %179 = getelementptr inbounds %struct.edge_def, ptr %178, i64 0, i32 8
  %180 = load i32, ptr %179, align 4, !tbaa !270
  %181 = sext i32 %180 to i64
  %182 = icmp eq i64 %166, %181
  br i1 %182, label %198, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr @cfun, align 8, !tbaa !170
  %185 = getelementptr inbounds %struct.function, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !249
  %187 = getelementptr inbounds %struct.control_flow_graph, ptr %186, i64 0, i32 7
  %188 = load i32, ptr %187, align 8, !tbaa !529
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %183
  br i1 %173, label %194, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.VEC_edge_base, ptr %167, i64 0, i32 2, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !170
  br label %194

194:                                              ; preds = %190, %191
  %195 = phi ptr [ %193, %191 ], [ %169, %190 ]
  %196 = getelementptr inbounds %struct.edge_def, ptr %195, i64 0, i32 8
  %197 = load i32, ptr %196, align 4, !tbaa !270
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.41, i64 noundef %166, i32 noundef %197) #20
  br label %198

198:                                              ; preds = %177, %183, %194, %156, %153, %144, %134
  %199 = phi i32 [ 1, %194 ], [ %136, %183 ], [ %136, %177 ], [ %136, %156 ], [ %136, %153 ], [ %136, %144 ], [ %136, %134 ]
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 1
  br label %201

201:                                              ; preds = %285, %198
  %202 = phi i32 [ 0, %198 ], [ %286, %285 ]
  %203 = phi i32 [ 0, %198 ], [ %258, %285 ]
  %204 = phi i32 [ 0, %198 ], [ %274, %285 ]
  %205 = phi i32 [ 0, %198 ], [ %268, %285 ]
  %206 = phi i32 [ 0, %198 ], [ %276, %285 ]
  %207 = phi i32 [ 0, %198 ], [ %265, %285 ]
  %208 = phi ptr [ null, %198 ], [ %259, %285 ]
  %209 = phi i32 [ %199, %198 ], [ %260, %285 ]
  %210 = load ptr, ptr %200, align 8, !tbaa !170
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  %213 = load i32, ptr %210, align 8, !tbaa !228
  br label %214

214:                                              ; preds = %212, %201
  %215 = phi i32 [ %213, %212 ], [ 0, %201 ]
  %216 = icmp eq i32 %215, %202
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = zext i32 %202 to i64
  %219 = getelementptr inbounds %struct.VEC_edge_base, ptr %210, i64 0, i32 2, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !170
  br label %221

221:                                              ; preds = %214, %217
  %222 = phi ptr [ %220, %217 ], [ null, %214 ]
  br i1 %216, label %287, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.edge_def, ptr %222, i64 0, i32 7
  %225 = load i32, ptr %224, align 8, !tbaa !231
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %257, label %228

228:                                              ; preds = %223
  %229 = add nsw i32 %203, 1
  %230 = and i32 %225, 8192
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %228
  %233 = load ptr, ptr %222, align 8, !tbaa !328
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 13
  %235 = load i32, ptr %234, align 8, !tbaa !302
  %236 = getelementptr inbounds %struct.edge_def, ptr %222, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !248
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %237, i64 0, i32 13
  %239 = load i32, ptr %238, align 8, !tbaa !302
  %240 = xor i32 %239, %235
  %241 = and i32 %240, 96
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %257, label %243

243:                                              ; preds = %232
  %244 = load ptr, ptr @cfun, align 8, !tbaa !170
  %245 = getelementptr inbounds %struct.function, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !249
  %247 = load ptr, ptr %246, align 8, !tbaa !314
  %248 = icmp eq ptr %233, %247
  br i1 %248, label %257, label %249

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.control_flow_graph, ptr %246, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !251
  %252 = icmp eq ptr %237, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %249, %228
  %254 = load ptr, ptr %222, align 8, !tbaa !328
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %254, i64 0, i32 9
  %256 = load i32, ptr %255, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.42, i32 noundef %256) #20
  br label %257

257:                                              ; preds = %232, %243, %249, %253, %223
  %258 = phi i32 [ %229, %253 ], [ %229, %249 ], [ %229, %243 ], [ %229, %232 ], [ %203, %223 ]
  %259 = phi ptr [ %222, %253 ], [ %222, %249 ], [ %222, %243 ], [ %222, %232 ], [ %208, %223 ]
  %260 = phi i32 [ 1, %253 ], [ %209, %249 ], [ %209, %243 ], [ %209, %232 ], [ %209, %223 ]
  %261 = load i32, ptr %224, align 8, !tbaa !231
  %262 = and i32 %261, -8929
  %263 = icmp eq i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = add nuw nsw i32 %207, %264
  %266 = lshr i32 %261, 2
  %267 = and i32 %266, 1
  %268 = add i32 %267, %205
  %269 = and i32 %261, 8
  %270 = icmp eq i32 %269, 0
  %271 = lshr i32 %261, 1
  %272 = and i32 %271, 1
  %273 = lshr exact i32 %269, 3
  %274 = add i32 %273, %204
  %275 = select i1 %270, i32 %272, i32 0
  %276 = add i32 %275, %206
  %277 = load ptr, ptr %200, align 8, !tbaa !170
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %257
  %280 = load i32, ptr %277, align 8, !tbaa !228
  br label %281

281:                                              ; preds = %279, %257
  %282 = phi i32 [ %280, %279 ], [ 0, %257 ]
  %283 = icmp ult i32 %202, %282
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %285

285:                                              ; preds = %281, %284
  %286 = add i32 %202, 1
  br label %201, !llvm.loop !530

287:                                              ; preds = %221
  %288 = icmp eq i32 %204, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %287
  %290 = load ptr, ptr %137, align 8, !tbaa !181
  %291 = getelementptr inbounds %struct.rtl_bb_info, ptr %290, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !217
  %293 = tail call ptr @find_reg_note(ptr noundef %292, i32 noundef 25, ptr noundef null) #20
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %297 = load i32, ptr %296, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43, i32 noundef %297) #20
  br label %298

298:                                              ; preds = %295, %289, %287
  %299 = phi i32 [ %209, %289 ], [ 1, %295 ], [ %209, %287 ]
  %300 = icmp sgt i32 %204, 1
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %303 = load i32, ptr %302, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.44, i32 noundef %303) #20
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i32 [ 1, %301 ], [ %299, %298 ]
  %306 = icmp eq i32 %207, 0
  br i1 %306, label %328, label %307

307:                                              ; preds = %304
  %308 = load ptr, ptr %137, align 8, !tbaa !181
  %309 = getelementptr inbounds %struct.rtl_bb_info, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !217
  %311 = load i32, ptr %310, align 8
  %312 = and i32 %311, 65535
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %314, label %325

314:                                              ; preds = %307
  %315 = icmp eq i32 %207, 1
  br i1 %315, label %328, label %316

316:                                              ; preds = %314
  %317 = tail call i32 @any_uncondjump_p(ptr noundef nonnull %310) #20
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = load ptr, ptr %137, align 8, !tbaa !181
  %321 = getelementptr inbounds %struct.rtl_bb_info, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !217
  %323 = tail call i32 @any_condjump_p(ptr noundef %322) #20
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %319, %316, %307
  %326 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %327 = load i32, ptr %326, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.45, i32 noundef %327) #20
  br label %328

328:                                              ; preds = %325, %319, %314, %304
  %329 = phi i32 [ 1, %325 ], [ %305, %319 ], [ %305, %314 ], [ %305, %304 ]
  %330 = icmp eq i32 %203, 0
  br i1 %330, label %340, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr %137, align 8, !tbaa !181
  %333 = getelementptr inbounds %struct.rtl_bb_info, ptr %332, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !217
  %335 = tail call i32 @any_uncondjump_p(ptr noundef %334) #20
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %339 = load i32, ptr %338, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.46, i32 noundef %339) #20
  br label %340

340:                                              ; preds = %337, %331, %328
  %341 = phi i32 [ 1, %337 ], [ %329, %331 ], [ %329, %328 ]
  %342 = icmp eq i32 %207, 1
  br i1 %342, label %352, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr %137, align 8, !tbaa !181
  %345 = getelementptr inbounds %struct.rtl_bb_info, ptr %344, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !217
  %347 = tail call i32 @any_uncondjump_p(ptr noundef %346) #20
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %351 = load i32, ptr %350, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.47, i32 noundef %351) #20
  br label %352

352:                                              ; preds = %349, %343, %340
  %353 = phi i32 [ 1, %349 ], [ %341, %343 ], [ %341, %340 ]
  br i1 %342, label %375, label %354

354:                                              ; preds = %352
  %355 = load ptr, ptr %137, align 8, !tbaa !181
  %356 = getelementptr inbounds %struct.rtl_bb_info, ptr %355, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !217
  %358 = tail call i32 @any_condjump_p(ptr noundef %357) #20
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %375, label %360

360:                                              ; preds = %354
  %361 = load ptr, ptr %137, align 8, !tbaa !181
  %362 = getelementptr inbounds %struct.rtl_bb_info, ptr %361, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !217
  %364 = getelementptr inbounds %struct.rtx_def, ptr %363, i64 1, i32 1, i32 0, i32 0, i64 2
  %365 = load ptr, ptr %364, align 8, !tbaa !181
  %366 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !248
  %368 = getelementptr inbounds %struct.basic_block_def, ptr %367, i64 0, i32 7
  %369 = load ptr, ptr %368, align 8, !tbaa !181
  %370 = load ptr, ptr %369, align 8, !tbaa !223
  %371 = icmp eq ptr %365, %370
  br i1 %371, label %375, label %372

372:                                              ; preds = %360
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %374 = load i32, ptr %373, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.48, i32 noundef %374) #20
  br label %375

375:                                              ; preds = %372, %360, %354, %352
  %376 = phi i32 [ 1, %372 ], [ %353, %360 ], [ %353, %354 ], [ %353, %352 ]
  %377 = icmp eq i32 %205, 0
  br i1 %377, label %388, label %378

378:                                              ; preds = %375
  %379 = load ptr, ptr %137, align 8, !tbaa !181
  %380 = getelementptr inbounds %struct.rtl_bb_info, ptr %379, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !217
  %382 = load i32, ptr %381, align 8
  %383 = and i32 %382, 65535
  %384 = icmp eq i32 %383, 10
  br i1 %384, label %388, label %385

385:                                              ; preds = %378
  %386 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %387 = load i32, ptr %386, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.49, i32 noundef %387) #20
  br label %388

388:                                              ; preds = %385, %378, %375
  %389 = phi i32 [ %376, %378 ], [ 1, %385 ], [ %376, %375 ]
  %390 = icmp eq i32 %206, 0
  br i1 %390, label %414, label %391

391:                                              ; preds = %388
  %392 = load ptr, ptr %137, align 8, !tbaa !181
  %393 = getelementptr inbounds %struct.rtl_bb_info, ptr %392, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !217
  %395 = load i32, ptr %394, align 8
  %396 = and i32 %395, 65535
  %397 = icmp eq i32 %396, 10
  %398 = icmp eq i32 %205, %206
  %399 = select i1 %397, i1 true, i1 %398
  br i1 %399, label %414, label %400

400:                                              ; preds = %391
  %401 = icmp eq i32 %396, 9
  br i1 %401, label %402, label %411

402:                                              ; preds = %400
  %403 = tail call i32 @any_condjump_p(ptr noundef nonnull %394) #20
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %411

405:                                              ; preds = %402
  %406 = load ptr, ptr %137, align 8, !tbaa !181
  %407 = getelementptr inbounds %struct.rtl_bb_info, ptr %406, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !217
  %409 = tail call i32 @any_uncondjump_p(ptr noundef %408) #20
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %405, %402, %400
  %412 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %413 = load i32, ptr %412, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.50, i32 noundef %413) #20
  br label %414

414:                                              ; preds = %411, %405, %391, %388
  %415 = phi i32 [ %389, %391 ], [ 1, %411 ], [ %389, %405 ], [ %389, %388 ]
  %416 = load ptr, ptr %137, align 8, !tbaa !181
  %417 = load ptr, ptr %416, align 8, !tbaa !181
  %418 = getelementptr inbounds %struct.rtl_bb_info, ptr %416, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !217
  %420 = getelementptr inbounds %struct.rtx_def, ptr %419, i64 0, i32 1, i32 0, i32 0, i64 2
  %421 = load ptr, ptr %420, align 8, !tbaa !181
  %422 = icmp eq ptr %417, %421
  br i1 %422, label %457, label %423

423:                                              ; preds = %414
  %424 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %425 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  br label %426

426:                                              ; preds = %423, %447
  %427 = phi ptr [ %417, %423 ], [ %450, %447 ]
  %428 = phi i32 [ %415, %423 ], [ %448, %447 ]
  %429 = load i32, ptr %427, align 8
  %430 = and i32 %429, 65535
  %431 = icmp eq i32 %430, 11
  br i1 %431, label %447, label %432

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1, i32 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !181
  %435 = icmp eq ptr %434, %135
  br i1 %435, label %447, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1
  tail call void @debug_rtx(ptr noundef nonnull %427) #20
  %438 = load ptr, ptr %433, align 8, !tbaa !181
  %439 = icmp eq ptr %438, null
  %440 = load i32, ptr %437, align 8, !tbaa !181
  br i1 %439, label %441, label %443

441:                                              ; preds = %436
  %442 = load i32, ptr %425, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.51, i32 noundef %440, i32 noundef %442) #20
  br label %447

443:                                              ; preds = %436
  %444 = load i32, ptr %424, align 8, !tbaa !266
  %445 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 9
  %446 = load i32, ptr %445, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.52, i32 noundef %440, i32 noundef %444, i32 noundef %446) #20
  br label %447

447:                                              ; preds = %441, %443, %426, %432
  %448 = phi i32 [ %428, %426 ], [ %428, %432 ], [ 1, %443 ], [ 1, %441 ]
  %449 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1, i32 0, i32 0, i64 2
  %450 = load ptr, ptr %449, align 8, !tbaa !181
  %451 = load ptr, ptr %137, align 8, !tbaa !181
  %452 = getelementptr inbounds %struct.rtl_bb_info, ptr %451, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !217
  %454 = getelementptr inbounds %struct.rtx_def, ptr %453, i64 0, i32 1, i32 0, i32 0, i64 2
  %455 = load ptr, ptr %454, align 8, !tbaa !181
  %456 = icmp eq ptr %450, %455
  br i1 %456, label %457, label %426, !llvm.loop !531

457:                                              ; preds = %447, %414
  %458 = phi i32 [ %415, %414 ], [ %448, %447 ]
  %459 = phi ptr [ %416, %414 ], [ %451, %447 ]
  %460 = phi ptr [ %419, %414 ], [ %453, %447 ]
  %461 = load ptr, ptr %459, align 8, !tbaa !223
  %462 = load i32, ptr %461, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 12
  br i1 %464, label %465, label %474

465:                                              ; preds = %457
  %466 = icmp eq ptr %460, %461
  br i1 %466, label %467, label %470

467:                                              ; preds = %465
  %468 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %469 = load i32, ptr %468, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.53, i32 noundef %469) #20
  br label %470

470:                                              ; preds = %467, %465
  %471 = phi i32 [ 1, %467 ], [ %458, %465 ]
  %472 = getelementptr inbounds %struct.rtx_def, ptr %461, i64 0, i32 1, i32 0, i32 0, i64 2
  %473 = load ptr, ptr %472, align 8, !tbaa !181
  br label %474

474:                                              ; preds = %470, %457
  %475 = phi i32 [ %471, %470 ], [ %458, %457 ]
  %476 = phi ptr [ %473, %470 ], [ %461, %457 ]
  %477 = load i32, ptr %476, align 8
  %478 = and i32 %477, 65535
  %479 = icmp eq i32 %478, 13
  br i1 %479, label %480, label %488

480:                                              ; preds = %474
  %481 = getelementptr inbounds %struct.rtx_def, ptr %476, i64 1
  %482 = load i32, ptr %481, align 8, !tbaa !181
  %483 = icmp eq i32 %482, 10
  br i1 %483, label %484, label %488

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.rtx_def, ptr %476, i64 0, i32 1, i32 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !181
  %487 = icmp eq ptr %486, %135
  br i1 %487, label %491, label %488

488:                                              ; preds = %484, %480, %474
  %489 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %490 = load i32, ptr %489, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.53, i32 noundef %490) #20
  br label %491

491:                                              ; preds = %488, %484
  %492 = phi i32 [ 1, %488 ], [ %475, %484 ]
  %493 = load ptr, ptr %137, align 8, !tbaa !181
  %494 = getelementptr inbounds %struct.rtl_bb_info, ptr %493, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !217
  %496 = icmp eq ptr %495, %476
  br i1 %496, label %533, label %497

497:                                              ; preds = %491
  %498 = getelementptr inbounds %struct.rtx_def, ptr %476, i64 0, i32 1, i32 0, i32 0, i64 2
  %499 = load ptr, ptr %498, align 8, !tbaa !181
  %500 = icmp eq ptr %499, null
  br i1 %500, label %533, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  %503 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 9
  br label %504

504:                                              ; preds = %501, %529
  %505 = phi ptr [ %499, %501 ], [ %531, %529 ]
  %506 = phi i32 [ %492, %501 ], [ %519, %529 ]
  %507 = load i32, ptr %505, align 8
  %508 = and i32 %507, 65535
  %509 = icmp eq i32 %508, 13
  br i1 %509, label %510, label %518

510:                                              ; preds = %504
  %511 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 1
  %512 = load i32, ptr %511, align 8, !tbaa !181
  %513 = icmp eq i32 %512, 10
  br i1 %513, label %514, label %518

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 0, i32 1
  %516 = load i32, ptr %515, align 8, !tbaa !181
  %517 = load i32, ptr %502, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.54, i32 noundef %516, i32 noundef %517) #20
  br label %518

518:                                              ; preds = %514, %510, %504
  %519 = phi i32 [ 1, %514 ], [ %506, %510 ], [ %506, %504 ]
  %520 = load ptr, ptr %137, align 8, !tbaa !181
  %521 = getelementptr inbounds %struct.rtl_bb_info, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !217
  %523 = icmp eq ptr %505, %522
  br i1 %523, label %533, label %524

524:                                              ; preds = %518
  %525 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %505) #20
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %503, align 8, !tbaa !266
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.55, i32 noundef %528) #20
  tail call void @_fatal_insn(ptr noundef nonnull @.str.56, ptr noundef nonnull %505, ptr noundef nonnull @.str, i32 noundef 2013, ptr noundef nonnull @.str.1) #20
  br label %529

529:                                              ; preds = %524, %527
  %530 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 0, i32 1, i32 0, i32 0, i64 2
  %531 = load ptr, ptr %530, align 8, !tbaa !181
  %532 = icmp eq ptr %531, null
  br i1 %532, label %533, label %504, !llvm.loop !532

533:                                              ; preds = %518, %529, %497, %491
  %534 = phi i32 [ %492, %491 ], [ %492, %497 ], [ %519, %529 ], [ %519, %518 ]
  %535 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 5
  %536 = load ptr, ptr %535, align 8, !tbaa !419
  %537 = load ptr, ptr @cfun, align 8, !tbaa !170
  %538 = getelementptr inbounds %struct.function, ptr %537, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !249
  %540 = load ptr, ptr %539, align 8, !tbaa !314
  %541 = icmp eq ptr %536, %540
  br i1 %541, label %542, label %134, !llvm.loop !533

542:                                              ; preds = %533, %122
  %543 = phi i32 [ %123, %122 ], [ %534, %533 ]
  ret i32 %543
}

; Function Attrs: nounwind uwtable
define internal ptr @cfg_layout_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10 !prof !534 !PGOFuncName !535 {
  %4 = tail call ptr @rtl_create_basic_block(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal ptr @cfg_layout_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #10 !prof !536 !PGOFuncName !537 {
  %3 = load ptr, ptr %0, align 8, !tbaa !328
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !231
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %146, !prof !538

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !248
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %146, label %12, !prof !539

12:                                               ; preds = %8
  %13 = load ptr, ptr @cfun, align 8, !tbaa !170
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !249
  %16 = load ptr, ptr %15, align 8, !tbaa !314
  %17 = icmp eq ptr %3, %16
  br i1 %17, label %22, label %18, !prof !539

18:                                               ; preds = %12
  %19 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !540

21:                                               ; preds = %18
  tail call void @df_set_bb_dirty(ptr noundef %3) #20
  br label %146

22:                                               ; preds = %18, %12
  %23 = load ptr, ptr %0, align 8, !tbaa !328
  %24 = load ptr, ptr @cfun, align 8, !tbaa !170
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !249
  %27 = load ptr, ptr %26, align 8, !tbaa !314
  %28 = icmp eq ptr %23, %27
  br i1 %28, label %29, label %44, !prof !541

29:                                               ; preds = %22
  %30 = load i32, ptr %4, align 8, !tbaa !231
  %31 = and i32 %30, 15
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !266
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !266
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.57, i32 noundef %38, i32 noundef %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load ptr, ptr %0, align 8, !tbaa !328
  tail call void @df_set_bb_dirty(ptr noundef %43) #20
  tail call void @redirect_edge_succ(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %146

44:                                               ; preds = %29, %22
  %45 = load i32, ptr %4, align 8, !tbaa !231
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %134, label %48, !prof !542

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !181
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !217
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %86, !prof !543

56:                                               ; preds = %48
  %57 = load ptr, ptr %9, align 8, !tbaa !248
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !181
  %60 = load ptr, ptr %59, align 8, !tbaa !223
  %61 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %60, ptr noundef nonnull %52) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %86, label %63, !prof !544

63:                                               ; preds = %56
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 8, !tbaa !328
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !266
  %70 = load ptr, ptr %9, align 8, !tbaa !248
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !266
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !266
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.58, i32 noundef %69, i32 noundef %72, i32 noundef %74)
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i32, ptr %4, align 8, !tbaa !231
  %78 = and i32 %77, -2
  store i32 %78, ptr %4, align 8, !tbaa !231
  %79 = tail call fastcc ptr @redirect_branch_edge(ptr noundef nonnull %0, ptr noundef %1)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2519, ptr noundef nonnull @.str.1) #20
  br label %82

82:                                               ; preds = %76, %81
  %83 = load i32, ptr %4, align 8, !tbaa !231
  %84 = or i32 %83, 1
  store i32 %84, ptr %4, align 8, !tbaa !231
  %85 = load ptr, ptr %0, align 8, !tbaa !328
  tail call void @df_set_bb_dirty(ptr noundef %85) #20
  br label %146

86:                                               ; preds = %56, %48
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !269
  %89 = icmp eq ptr %88, null
  br i1 %89, label %120, label %90, !prof !545

90:                                               ; preds = %86
  %91 = load i32, ptr %88, align 8, !tbaa !228
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %120, !prof !543

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.VEC_edge_base, ptr %88, i64 0, i32 2, i64 0
  %95 = load ptr, ptr %94, align 8, !tbaa !170
  %96 = icmp eq ptr %95, %0
  %97 = zext i1 %96 to i64
  %98 = getelementptr inbounds %struct.VEC_edge_base, ptr %88, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !170
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !248
  %102 = icmp eq ptr %101, %1
  br i1 %102, label %103, label %120, !prof !546

103:                                              ; preds = %93
  %104 = load ptr, ptr %49, align 8, !tbaa !181
  %105 = getelementptr inbounds %struct.rtl_bb_info, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !217
  %107 = tail call i32 @any_condjump_p(ptr noundef %106) #20
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %49, align 8, !tbaa !181
  %111 = getelementptr inbounds %struct.rtl_bb_info, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !217
  %113 = tail call i32 @onlyjump_p(ptr noundef %112) #20
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %49, align 8, !tbaa !181
  %117 = getelementptr inbounds %struct.rtl_bb_info, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !217
  %119 = tail call ptr @delete_insn(ptr noundef %118)
  br label %120

120:                                              ; preds = %86, %93, %103, %109, %115, %90
  %121 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #20
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124, !prof !547

124:                                              ; preds = %120
  %125 = load ptr, ptr %0, align 8, !tbaa !328
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %127 = load i32, ptr %126, align 8, !tbaa !266
  %128 = load ptr, ptr %9, align 8, !tbaa !248
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !266
  %131 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %132 = load i32, ptr %131, align 8, !tbaa !266
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %122, ptr noundef nonnull @.str.59, i32 noundef %127, i32 noundef %130, i32 noundef %132)
  br label %136

134:                                              ; preds = %44
  %135 = tail call fastcc ptr @redirect_branch_edge(ptr noundef nonnull %0, ptr noundef %1)
  br label %136

136:                                              ; preds = %120, %124, %134
  %137 = phi ptr [ %121, %124 ], [ %121, %120 ], [ %135, %134 ]
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %139 = load ptr, ptr %138, align 8, !tbaa !181
  %140 = getelementptr inbounds %struct.rtl_bb_info, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !217
  %142 = tail call i32 @simplejump_p(ptr noundef %141) #20
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144, !prof !548

144:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2545, ptr noundef nonnull @.str.1) #20
  br label %145

145:                                              ; preds = %136, %144
  tail call void @df_set_bb_dirty(ptr noundef %3) #20
  br label %146

146:                                              ; preds = %8, %2, %145, %82, %42, %21
  %147 = phi ptr [ %19, %21 ], [ %0, %82 ], [ %137, %145 ], [ %0, %42 ], [ null, %2 ], [ %0, %8 ]
  ret ptr %147
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @cfg_layout_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) #10 !prof !549 !PGOFuncName !550 {
  %3 = tail call ptr @cfg_layout_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !551

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2557, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %2, %5
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cfg_layout_delete_block(ptr nocapture noundef readonly %0) #9 !prof !552 !PGOFuncName !553 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !554
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10, !prof !555

10:                                               ; preds = %1
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %8, ptr %13, align 8, !tbaa !181
  br label %15

14:                                               ; preds = %10
  tail call void @set_first_insn(ptr noundef nonnull %8) #20
  br label %15

15:                                               ; preds = %14, %12
  %16 = load ptr, ptr %2, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !554
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %19, align 8, !tbaa !181
  %20 = load ptr, ptr %2, align 8, !tbaa !181
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !554
  br label %23

23:                                               ; preds = %23, %15
  %24 = phi ptr [ %22, %15 ], [ %26, %23 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !181
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !556

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %29, align 8, !tbaa !181
  store ptr %24, ptr %5, align 8, !tbaa !181
  br label %30

30:                                               ; preds = %28, %1
  %31 = load ptr, ptr %2, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !217
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !181
  %36 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !369
  %38 = icmp eq ptr %37, null
  br i1 %38, label %95, label %39, !prof !557

39:                                               ; preds = %30, %67
  %40 = phi ptr [ %69, %67 ], [ %37, %30 ]
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %44, label %63, !prof !558

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !181
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  br i1 %47, label %52, label %50, !prof !558

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %55

52:                                               ; preds = %44
  %53 = load ptr, ptr %2, align 8, !tbaa !181
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 3
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi ptr [ %54, %52 ], [ %51, %50 ]
  store ptr %49, ptr %56, align 8, !tbaa !181
  %57 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !181
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !558

60:                                               ; preds = %55
  %61 = load ptr, ptr %45, align 8, !tbaa !181
  %62 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %61, ptr %62, align 8, !tbaa !181
  br label %63

63:                                               ; preds = %55, %60, %39
  %64 = load i32, ptr %40, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %71, label %67, !prof !559

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !181
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %39, !prof !558, !llvm.loop !560

71:                                               ; preds = %63, %67
  %72 = load ptr, ptr %2, align 8, !tbaa !181
  %73 = getelementptr inbounds %struct.rtl_bb_info, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !369
  %75 = icmp eq ptr %74, null
  br i1 %75, label %95, label %76, !prof !558

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtl_bb_info, ptr %72, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !217
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %74, ptr %79, align 8, !tbaa !181
  %80 = load ptr, ptr %2, align 8, !tbaa !181
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !369
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %78, ptr %83, align 8, !tbaa !181
  br label %84

84:                                               ; preds = %84, %76
  %85 = phi ptr [ %78, %76 ], [ %87, %84 ]
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !181
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %84, !llvm.loop !561

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %35, ptr %90, align 8, !tbaa !181
  %91 = icmp eq ptr %35, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %85, ptr %93, align 8, !tbaa !181
  br label %95

94:                                               ; preds = %89
  tail call void @set_last_insn(ptr noundef %85) #20
  br label %95

95:                                               ; preds = %71, %94, %92, %30
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !315
  %98 = load ptr, ptr @cfun, align 8, !tbaa !170
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !249
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !251
  %103 = icmp eq ptr %97, %102
  br i1 %103, label %108, label %104, !prof !562

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !181
  %107 = getelementptr inbounds %struct.rtl_bb_info, ptr %106, i64 0, i32 2
  br label %108

108:                                              ; preds = %95, %104
  %109 = phi ptr [ %107, %104 ], [ @cfg_layout_function_footer, %95 ]
  tail call void @rtl_delete_block(ptr noundef %0)
  %110 = icmp eq ptr %6, null
  br i1 %110, label %114, label %111, !prof !563

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !181
  br label %116

114:                                              ; preds = %108
  %115 = tail call ptr @get_insns() #20
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi ptr [ %113, %111 ], [ %115, %114 ]
  %118 = icmp eq ptr %35, null
  br i1 %118, label %122, label %119, !prof !562

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !181
  br label %124

122:                                              ; preds = %116
  %123 = tail call ptr @get_last_insn() #20
  br label %124

124:                                              ; preds = %122, %119
  %125 = phi ptr [ %121, %119 ], [ %123, %122 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %146, label %127, !prof !563

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 2
  %129 = load ptr, ptr %128, align 8, !tbaa !181
  %130 = icmp eq ptr %129, %117
  br i1 %130, label %146, label %131, !prof !555

131:                                              ; preds = %127
  %132 = tail call ptr @unlink_insn_chain(ptr noundef %117, ptr noundef nonnull %125) #20
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi ptr [ %132, %131 ], [ %136, %133 ]
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 2
  %136 = load ptr, ptr %135, align 8, !tbaa !181
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %133, !llvm.loop !564

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 2
  %140 = load ptr, ptr %109, align 8, !tbaa !170
  store ptr %140, ptr %139, align 8, !tbaa !181
  %141 = load ptr, ptr %109, align 8, !tbaa !170
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %134, ptr %144, align 8, !tbaa !181
  br label %145

145:                                              ; preds = %143, %138
  store ptr %132, ptr %109, align 8, !tbaa !170
  br label %146

146:                                              ; preds = %145, %127, %124
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal ptr @cfg_layout_split_block(ptr noundef %0, ptr noundef %1) #12 !prof !169 {
  %3 = tail call ptr @rtl_split_block(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !369
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !369
  %11 = load ptr, ptr %4, align 8, !tbaa !181
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !369
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @cfg_layout_can_merge_blocks_p(ptr noundef readonly %0, ptr noundef readonly %1) #10 !prof !565 !PGOFuncName !566 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !302
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !302
  %7 = xor i32 %6, %4
  %8 = and i32 %7, 96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %85, !prof !567

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !269
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14, !prof !568

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8, !tbaa !228
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %85, !prof !567

17:                                               ; preds = %14
  br i1 %13, label %21, label %18, !prof !568

18:                                               ; preds = %17
  %19 = load i32, ptr %12, align 8, !tbaa !228
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %22, label %21, !prof !567

21:                                               ; preds = %18, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %22

22:                                               ; preds = %18, %21
  %23 = load ptr, ptr %11, align 8, !tbaa !269
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %23, i64 0, i32 2, i64 0
  %25 = load ptr, ptr %24, align 8, !tbaa !170
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !248
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %85, !prof !567

29:                                               ; preds = %22
  %30 = load ptr, ptr %1, align 8, !tbaa !329
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !568

32:                                               ; preds = %29
  %33 = load i32, ptr %30, align 8, !tbaa !228
  %34 = icmp ne i32 %33, 1
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi i1 [ %34, %32 ], [ true, %29 ]
  %37 = icmp eq ptr %0, %1
  %38 = or i1 %37, %36
  br i1 %38, label %85, label %39, !prof !569

39:                                               ; preds = %35
  %40 = icmp eq ptr %23, null
  br i1 %40, label %44, label %41, !prof !570

41:                                               ; preds = %39
  %42 = load i32, ptr %23, align 8, !tbaa !228
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %45, label %44, !prof !571

44:                                               ; preds = %39, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %45

45:                                               ; preds = %41, %44
  %46 = load ptr, ptr %11, align 8, !tbaa !269
  %47 = getelementptr inbounds %struct.VEC_edge_base, ptr %46, i64 0, i32 2, i64 0
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !231
  %51 = and i32 %50, 14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %85, !prof !571

53:                                               ; preds = %45
  %54 = load ptr, ptr @cfun, align 8, !tbaa !170
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !249
  %57 = load ptr, ptr %56, align 8, !tbaa !314
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %85, label %59, !prof !570

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !251
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %85, label %63, !prof !570

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !181
  %66 = getelementptr inbounds %struct.rtl_bb_info, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !217
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %85, !prof !572

71:                                               ; preds = %63
  %72 = load i32, ptr @optimize, align 4, !tbaa !185
  %73 = icmp eq i32 %72, 0
  %74 = load i32, ptr @reload_completed, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75, !prof !258
  br i1 %76, label %77, label %79, !prof !258

77:                                               ; preds = %71
  %78 = tail call i32 @simplejump_p(ptr noundef nonnull %67) #20
  br label %81

79:                                               ; preds = %71
  %80 = tail call i32 @onlyjump_p(ptr noundef nonnull %67) #20
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i8
  br label %85

85:                                               ; preds = %10, %14, %22, %35, %45, %53, %59, %81, %63, %2
  %86 = phi i8 [ 0, %2 ], [ 0, %59 ], [ 0, %53 ], [ 0, %45 ], [ 0, %35 ], [ 0, %22 ], [ 0, %14 ], [ 1, %63 ], [ %84, %81 ], [ 0, %10 ]
  ret i8 %86
}

; Function Attrs: nounwind uwtable
define internal void @cfg_layout_merge_blocks(ptr noundef %0, ptr noundef %1) #10 !prof !573 !PGOFuncName !574 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !571

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !266
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !266
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, i32 noundef %7, i32 noundef %9)
  br label %11

11:                                               ; preds = %5, %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = load ptr, ptr %13, align 8, !tbaa !223
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %20, !prof !575

18:                                               ; preds = %11
  %19 = tail call ptr @delete_insn(ptr noundef nonnull %14)
  br label %20

20:                                               ; preds = %18, %11
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !217
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %34, !prof !572

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !269
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 0
  %32 = load ptr, ptr %31, align 8, !tbaa !170
  %33 = tail call ptr @try_redirect_by_replacing_jump(ptr noundef %32, ptr noundef %1, i8 noundef zeroext 1)
  br label %34

34:                                               ; preds = %28, %20
  %35 = load ptr, ptr %21, align 8, !tbaa !181
  %36 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !217
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %42, !prof !570

41:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2700, ptr noundef nonnull @.str.1) #20
  br label %42

42:                                               ; preds = %34, %41
  %43 = load i32, ptr @optimize, align 4, !tbaa !185
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %119, !prof !570

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !269
  %48 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 0
  %49 = load ptr, ptr %48, align 8, !tbaa !170
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !398
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %119, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %21, align 8, !tbaa !181
  %55 = getelementptr inbounds %struct.rtl_bb_info, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %54, align 8, !tbaa !223
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !181
  %59 = load ptr, ptr %55, align 8, !tbaa !181
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %78, label %61

61:                                               ; preds = %53, %71
  %62 = phi ptr [ %73, %71 ], [ %59, %53 ]
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !181
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61, %67
  %72 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = icmp eq ptr %73, %58
  br i1 %74, label %78, label %61, !llvm.loop !576

75:                                               ; preds = %67
  %76 = tail call zeroext i8 @locator_eq(i32 noundef %69, i32 noundef %51) #20
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %71, %53, %75
  %79 = load ptr, ptr %12, align 8, !tbaa !181
  %80 = getelementptr inbounds %struct.rtl_bb_info, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !217
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !181
  %84 = load ptr, ptr %79, align 8, !tbaa !181
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %104, label %86

86:                                               ; preds = %78, %92
  %87 = phi ptr [ %94, %92 ], [ %84, %78 ]
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = add nsw i32 %89, -7
  %91 = icmp ult i32 %90, 4
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !181
  %95 = icmp eq ptr %94, %83
  br i1 %95, label %104, label %86, !llvm.loop !577

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !181
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = tail call zeroext i8 @locator_eq(i32 noundef %98, i32 noundef %51) #20
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %102, i32 %51, i32 0
  br label %104

104:                                              ; preds = %92, %78, %100, %75, %96
  %105 = phi i32 [ %51, %96 ], [ 0, %75 ], [ %103, %100 ], [ %51, %78 ], [ %51, %92 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = tail call ptr @gen_nop() #20
  %109 = load ptr, ptr %21, align 8, !tbaa !181
  %110 = getelementptr inbounds %struct.rtl_bb_info, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !217
  %112 = tail call ptr @emit_insn_after_noloc(ptr noundef %108, ptr noundef %111, ptr noundef %0) #20
  %113 = load ptr, ptr %21, align 8, !tbaa !181
  %114 = getelementptr inbounds %struct.rtl_bb_info, ptr %113, i64 0, i32 1
  store ptr %112, ptr %114, align 8, !tbaa !217
  %115 = load ptr, ptr %21, align 8, !tbaa !181
  %116 = getelementptr inbounds %struct.rtl_bb_info, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !217
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 2
  store i32 %105, ptr %118, align 8, !tbaa !181
  br label %119

119:                                              ; preds = %104, %107, %45, %42
  %120 = load ptr, ptr %12, align 8, !tbaa !181
  %121 = getelementptr inbounds %struct.rtl_bb_info, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !554
  %123 = icmp eq ptr %122, null
  br i1 %123, label %149, label %124, !prof !571

124:                                              ; preds = %119
  %125 = load ptr, ptr %21, align 8, !tbaa !181
  %126 = getelementptr inbounds %struct.rtl_bb_info, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !217
  %128 = tail call ptr @emit_insn_after_noloc(ptr noundef nonnull %122, ptr noundef %127, ptr noundef %0) #20
  %129 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !181
  br label %131

131:                                              ; preds = %143, %124
  %132 = phi ptr [ %130, %124 ], [ %144, %143 ]
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 13
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 2
  %138 = load ptr, ptr %137, align 8, !tbaa !181
  %139 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 1
  %140 = load i32, ptr %139, align 8, !tbaa !181
  switch i32 %140, label %143 [
    i32 0, label %141
    i32 10, label %141
    i32 6, label %141
  ]

141:                                              ; preds = %136, %136, %136, %131
  %142 = tail call ptr @delete_insn(ptr noundef nonnull %132)
  br label %143

143:                                              ; preds = %136, %141
  %144 = phi ptr [ %142, %141 ], [ %138, %136 ]
  %145 = icmp eq ptr %132, %128
  br i1 %145, label %146, label %131, !llvm.loop !294

146:                                              ; preds = %143
  %147 = load ptr, ptr %12, align 8, !tbaa !181
  %148 = getelementptr inbounds %struct.rtl_bb_info, ptr %147, i64 0, i32 2
  store ptr null, ptr %148, align 8, !tbaa !554
  br label %149

149:                                              ; preds = %146, %119
  %150 = load ptr, ptr %21, align 8, !tbaa !181
  %151 = getelementptr inbounds %struct.rtl_bb_info, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !217
  %153 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 2
  %154 = load ptr, ptr %153, align 8, !tbaa !181
  %155 = load ptr, ptr %12, align 8, !tbaa !181
  %156 = load ptr, ptr %155, align 8, !tbaa !223
  %157 = icmp eq ptr %154, %156
  %158 = getelementptr inbounds %struct.rtl_bb_info, ptr %155, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !217
  br i1 %157, label %206, label %160, !prof !578

160:                                              ; preds = %149
  %161 = tail call ptr @unlink_insn_chain(ptr noundef %156, ptr noundef %159) #20
  %162 = load ptr, ptr %21, align 8, !tbaa !181
  %163 = getelementptr inbounds %struct.rtl_bb_info, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !217
  %165 = tail call ptr @emit_insn_after_noloc(ptr noundef %161, ptr noundef %164, ptr noundef %0) #20
  %166 = load i32, ptr %161, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 13
  br i1 %168, label %169, label %173, !prof !579

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 1
  %171 = load i32, ptr %170, align 8, !tbaa !181
  %172 = icmp eq i32 %171, 10
  br i1 %172, label %176, label %173, !prof !579

173:                                              ; preds = %169, %160
  %174 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1, i32 0, i32 0, i64 2
  %175 = load ptr, ptr %174, align 8, !tbaa !181
  br label %176

176:                                              ; preds = %173, %169
  %177 = phi ptr [ %161, %169 ], [ %175, %173 ]
  %178 = load i32, ptr %177, align 8
  %179 = and i32 %178, 65535
  %180 = icmp eq i32 %179, 13
  br i1 %180, label %181, label %185, !prof !579

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 1
  %183 = load i32, ptr %182, align 8, !tbaa !181
  %184 = icmp eq i32 %183, 10
  br i1 %184, label %186, label %185, !prof !579

185:                                              ; preds = %181, %176
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2749, ptr noundef nonnull @.str.1) #20
  br label %186

186:                                              ; preds = %181, %185
  %187 = load ptr, ptr %12, align 8, !tbaa !181
  store ptr null, ptr %187, align 8, !tbaa !223
  %188 = load ptr, ptr %12, align 8, !tbaa !181
  %189 = getelementptr inbounds %struct.rtl_bb_info, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !217
  %191 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1, i32 0, i32 0, i64 2
  %192 = load ptr, ptr %191, align 8, !tbaa !181
  %193 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1, i32 0, i32 0, i64 2
  %194 = load ptr, ptr %193, align 8, !tbaa !181
  %195 = icmp eq ptr %194, %192
  br i1 %195, label %250, label %196, !prof !580

196:                                              ; preds = %186, %202
  %197 = phi ptr [ %204, %202 ], [ %194, %186 ]
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 11
  br i1 %200, label %202, label %201, !prof !581

201:                                              ; preds = %196
  tail call void @df_insn_change_bb(ptr noundef nonnull %197, ptr noundef %0) #20
  br label %202

202:                                              ; preds = %201, %196
  %203 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1, i32 0, i32 0, i64 2
  %204 = load ptr, ptr %203, align 8, !tbaa !181
  %205 = icmp eq ptr %204, %192
  br i1 %205, label %250, label %196, !prof !582, !llvm.loop !307

206:                                              ; preds = %149
  %207 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 2
  %208 = load ptr, ptr %207, align 8, !tbaa !181
  %209 = icmp eq ptr %156, %208
  br i1 %209, label %220, label %210, !prof !583

210:                                              ; preds = %206, %216
  %211 = phi ptr [ %218, %216 ], [ %156, %206 ]
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 11
  br i1 %214, label %216, label %215, !prof !584

215:                                              ; preds = %210
  tail call void @df_insn_change_bb(ptr noundef nonnull %211, ptr noundef %0) #20
  br label %216

216:                                              ; preds = %215, %210
  %217 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1, i32 0, i32 0, i64 2
  %218 = load ptr, ptr %217, align 8, !tbaa !181
  %219 = icmp eq ptr %218, %208
  br i1 %219, label %220, label %210, !prof !585, !llvm.loop !307

220:                                              ; preds = %216, %206
  %221 = load ptr, ptr %12, align 8, !tbaa !181
  %222 = load ptr, ptr %221, align 8, !tbaa !223
  %223 = load i32, ptr %222, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 13
  br i1 %225, label %226, label %230, !prof !586

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 1
  %228 = load i32, ptr %227, align 8, !tbaa !181
  %229 = icmp eq i32 %228, 10
  br i1 %229, label %233, label %230, !prof !586

230:                                              ; preds = %226, %220
  %231 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1, i32 0, i32 0, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !181
  br label %233

233:                                              ; preds = %230, %226
  %234 = phi ptr [ %222, %226 ], [ %232, %230 ]
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 13
  br i1 %237, label %238, label %242, !prof !586

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 1
  %240 = load i32, ptr %239, align 8, !tbaa !181
  %241 = icmp eq i32 %240, 10
  br i1 %241, label %243, label %242, !prof !586

242:                                              ; preds = %238, %233
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2771, ptr noundef nonnull @.str.1) #20
  br label %243

243:                                              ; preds = %238, %242
  %244 = load ptr, ptr %12, align 8, !tbaa !181
  store ptr null, ptr %244, align 8, !tbaa !223
  %245 = load ptr, ptr %12, align 8, !tbaa !181
  %246 = getelementptr inbounds %struct.rtl_bb_info, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !217
  %248 = load ptr, ptr %21, align 8, !tbaa !181
  %249 = getelementptr inbounds %struct.rtl_bb_info, ptr %248, i64 0, i32 1
  store ptr %247, ptr %249, align 8, !tbaa !217
  br label %250

250:                                              ; preds = %202, %186, %243
  %251 = phi ptr [ %234, %243 ], [ %177, %186 ], [ %177, %202 ]
  %252 = tail call ptr @delete_insn(ptr noundef nonnull %251)
  %253 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %254 = load i32, ptr %253, align 8, !tbaa !266
  tail call void @df_bb_delete(i32 noundef %254) #20
  %255 = load ptr, ptr %12, align 8, !tbaa !181
  %256 = getelementptr inbounds %struct.rtl_bb_info, ptr %255, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !369
  %258 = icmp eq ptr %257, null
  br i1 %258, label %279, label %259, !prof !587

259:                                              ; preds = %250
  %260 = load ptr, ptr %21, align 8, !tbaa !181
  %261 = getelementptr inbounds %struct.rtl_bb_info, ptr %260, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !369
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265, !prof !588

264:                                              ; preds = %259
  store ptr %257, ptr %261, align 8, !tbaa !369
  br label %276

265:                                              ; preds = %259, %265
  %266 = phi ptr [ %268, %265 ], [ %262, %259 ]
  %267 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1, i32 0, i32 0, i64 2
  %268 = load ptr, ptr %267, align 8, !tbaa !181
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %265, !llvm.loop !589

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.rtx_def, ptr %266, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %257, ptr %271, align 8, !tbaa !181
  %272 = load ptr, ptr %12, align 8, !tbaa !181
  %273 = getelementptr inbounds %struct.rtl_bb_info, ptr %272, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !369
  %275 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %266, ptr %275, align 8, !tbaa !181
  br label %276

276:                                              ; preds = %270, %264
  %277 = load ptr, ptr %12, align 8, !tbaa !181
  %278 = getelementptr inbounds %struct.rtl_bb_info, ptr %277, i64 0, i32 3
  store ptr null, ptr %278, align 8, !tbaa !369
  br label %279

279:                                              ; preds = %276, %250
  %280 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %281 = icmp eq ptr %280, null
  br i1 %281, label %287, label %282, !prof !571

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %284 = load i32, ptr %283, align 8, !tbaa !266
  %285 = load i32, ptr %253, align 8, !tbaa !266
  %286 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %280, ptr noundef nonnull @.str.60, i32 noundef %284, i32 noundef %285)
  br label %287

287:                                              ; preds = %282, %279
  ret void
}

declare zeroext i8 @cfg_layout_can_duplicate_bb_p(ptr noundef) #3

declare ptr @cfg_layout_duplicate_bb(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal ptr @cfg_layout_split_edge(ptr noundef %0) #12 !prof !590 !PGOFuncName !591 {
  %2 = load ptr, ptr %0, align 8, !tbaa !328
  %3 = load ptr, ptr @cfun, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !249
  %6 = load ptr, ptr %5, align 8, !tbaa !314
  %7 = icmp eq ptr %2, %6
  br i1 %7, label %15, label %8, !prof !592

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !217
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !181
  br label %17

15:                                               ; preds = %1
  %16 = tail call ptr @get_insns() #20
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi ptr [ %14, %8 ], [ %16, %15 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !328
  %20 = tail call ptr @create_basic_block(ptr noundef %18, ptr noundef null, ptr noundef %19) #20
  %21 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !248
  %23 = load ptr, ptr @cfun, align 8, !tbaa !170
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !249
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !251
  %28 = icmp eq ptr %22, %27
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !302
  br i1 %28, label %31, label %33, !prof !592

31:                                               ; preds = %17
  %32 = load ptr, ptr %0, align 8, !tbaa !328
  br label %33

33:                                               ; preds = %17, %31
  %34 = phi ptr [ %32, %31 ], [ %22, %17 ]
  %35 = and i32 %30, -97
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !302
  %38 = and i32 %37, 96
  %39 = or disjoint i32 %38, %35
  store i32 %39, ptr %29, align 8, !tbaa !302
  %40 = tail call ptr @make_edge(ptr noundef %20, ptr noundef %22, i32 noundef 1) #20
  %41 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef %20) #20
  ret ptr %20
}

declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @rtl_lv_add_condition_to_bb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #12 !prof !169 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !181
  %9 = load i32, ptr %3, align 8
  %10 = tail call ptr @block_label(ptr noundef %0)
  %11 = load i32, ptr %6, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, ptr %8, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i32 [ %18, %15 ], [ %13, %4 ]
  %21 = and i32 %9, 65535
  tail call void @start_sequence() #20
  %22 = tail call ptr @force_operand(ptr noundef nonnull %6, ptr noundef null) #20
  %23 = tail call ptr @force_operand(ptr noundef %8, ptr noundef null) #20
  tail call void @do_compare_rtx_and_jump(ptr noundef %22, ptr noundef %23, i32 noundef %21, i32 noundef 0, i32 noundef %20, ptr noundef null, ptr noundef null, ptr noundef %10, i32 noundef -1) #20
  %24 = tail call ptr @get_last_insn() #20
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %10, ptr %25, align 8, !tbaa !181
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !181
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !181
  %29 = tail call ptr @get_insns() #20
  tail call void @end_sequence() #20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !217
  %34 = tail call ptr @emit_insn_after(ptr noundef %29, ptr noundef %33) #20
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rtl_extract_cond_bb_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #16 !prof !169 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !269
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %5, i64 0, i32 2, i64 0
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !231
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr %1, ptr %2
  %13 = select i1 %11, ptr %2, ptr %1
  store ptr %7, ptr %12, align 8, !tbaa !170
  %14 = load ptr, ptr %4, align 8, !tbaa !269
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  store ptr %16, ptr %13, align 8, !tbaa !170
  ret void
}

declare i32 @in_expr_list_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unchecked_make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @redirect_edge_pred(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn_after_setloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_return() local_unnamed_addr #3

declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_mark_solutions_dirty() local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @redirect_branch_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !593 !PGOFuncName !594 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = load ptr, ptr %0, align 8, !tbaa !328
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !217
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !231
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %71, !prof !595

17:                                               ; preds = %2
  %18 = load i32, ptr %12, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 9
  %21 = load i32, ptr @currently_expanding_to_rtl, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22, !prof !596
  br i1 %23, label %24, label %71, !prof !597

24:                                               ; preds = %17
  br i1 %22, label %25, label %33, !prof !598

25:                                               ; preds = %24
  %26 = load ptr, ptr %10, align 8, !tbaa !181
  %27 = load ptr, ptr %9, align 8, !tbaa !181
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !217
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %53, label %36, !prof !599

33:                                               ; preds = %24
  %34 = tail call fastcc zeroext i8 @patch_jump_insn(ptr noundef nonnull %12, ptr noundef %7, ptr noundef %1), !range !220
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %71, label %53, !prof !600

36:                                               ; preds = %25, %44
  %37 = phi ptr [ %46, %44 ], [ %26, %25 ]
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %44, !prof !601

41:                                               ; preds = %36
  %42 = tail call fastcc zeroext i8 @patch_jump_insn(ptr noundef nonnull %37, ptr noundef %7, ptr noundef %1), !range !220
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %71, label %44, !prof !602

44:                                               ; preds = %36, %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !181
  %47 = load ptr, ptr %9, align 8, !tbaa !181
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !217
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  %52 = icmp eq ptr %46, %51
  br i1 %52, label %53, label %36, !prof !603, !llvm.loop !604

53:                                               ; preds = %44, %25, %33
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !170
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56, !prof !597

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8, !tbaa !328
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !266
  %60 = load ptr, ptr %3, align 8, !tbaa !248
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !266
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !266
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.34, i32 noundef %59, i32 noundef %62, i32 noundef %64)
  br label %66

66:                                               ; preds = %56, %53
  %67 = load ptr, ptr %3, align 8, !tbaa !248
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %71, label %69, !prof !605

69:                                               ; preds = %66
  %70 = tail call ptr @redirect_edge_succ_nodup(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %71

71:                                               ; preds = %41, %33, %66, %69, %17, %2
  %72 = phi ptr [ null, %2 ], [ null, %17 ], [ %70, %69 ], [ %0, %66 ], [ null, %33 ], [ null, %41 ]
  ret ptr %72
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @patch_jump_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !606 !PGOFuncName !607 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = call zeroext i8 @tablejump_p(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %120, label %7, !prof !608

7:                                                ; preds = %3
  %8 = load ptr, ptr @cfun, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !251
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %30, label %14, !prof !351

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !181
  %17 = load ptr, ptr %16, align 8, !tbaa !223
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 12
  br i1 %20, label %27, label %21, !prof !352

21:                                               ; preds = %14
  %22 = call ptr @gen_label_rtx() #20
  %23 = load ptr, ptr %15, align 8, !tbaa !181
  %24 = load ptr, ptr %23, align 8, !tbaa !223
  %25 = call ptr @emit_label_before(ptr noundef %22, ptr noundef %24) #20
  %26 = load ptr, ptr %15, align 8, !tbaa !181
  store ptr %25, ptr %26, align 8, !tbaa !223
  br label %27

27:                                               ; preds = %21, %14
  %28 = load ptr, ptr %15, align 8, !tbaa !181
  %29 = load ptr, ptr %28, align 8, !tbaa !223
  br label %30

30:                                               ; preds = %7, %27
  %31 = phi ptr [ %29, %27 ], [ null, %7 ]
  %32 = load ptr, ptr @cfun, align 8, !tbaa !170
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !249
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !251
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %242, label %38, !prof !609

38:                                               ; preds = %30
  %39 = load ptr, ptr %4, align 8, !tbaa !170
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 20
  %45 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = select i1 %44, ptr %45, ptr %46, !prof !610
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = load i32, ptr %48, align 8, !tbaa !211
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %71, !prof !611

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %53 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 2
  %54 = zext nneg i32 %49 to i64
  br label %55

55:                                               ; preds = %51, %69
  %56 = phi i64 [ %54, %51 ], [ %57, %69 ]
  %57 = add nsw i64 %56, -1
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !170
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !181
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %69, !prof !612

63:                                               ; preds = %55
  %64 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %31) #20
  store ptr %64, ptr %58, align 8, !tbaa !170
  %65 = load i32, ptr %52, align 8, !tbaa !181
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %52, align 8, !tbaa !181
  %67 = load i32, ptr %53, align 8, !tbaa !181
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %53, align 8, !tbaa !181
  br label %69

69:                                               ; preds = %55, %63
  %70 = icmp sgt i64 %56, 1
  br i1 %70, label %55, label %71, !prof !613, !llvm.loop !614

71:                                               ; preds = %69, %38
  %72 = load i32, ptr %0, align 8
  %73 = and i32 %72, 65535
  %74 = add nsw i32 %73, -7
  %75 = icmp ult i32 %74, 4
  br i1 %75, label %76, label %84, !prof !610

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !181
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 23
  br i1 %81, label %84, label %82, !prof !609

82:                                               ; preds = %76
  %83 = call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %78) #20
  br label %84

84:                                               ; preds = %71, %76, %82
  %85 = phi ptr [ %83, %82 ], [ null, %71 ], [ %78, %76 ]
  store ptr %85, ptr %4, align 8, !tbaa !170
  %86 = icmp eq ptr %85, null
  br i1 %86, label %242, label %87, !prof !609

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !181
  %90 = load ptr, ptr @global_rtl, align 16, !tbaa !170
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %242, !prof !610

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !181
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 47
  br i1 %97, label %98, label %242, !prof !609

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !181
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 44
  br i1 %103, label %104, label %242

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !181
  %107 = icmp eq ptr %106, %1
  br i1 %107, label %108, label %242

108:                                              ; preds = %104
  %109 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %31) #20
  %110 = load ptr, ptr %4, align 8, !tbaa !170
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !181
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %109, ptr %113, align 8, !tbaa !181
  %114 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !181
  %116 = add nsw i32 %115, -1
  store i32 %116, ptr %114, align 8, !tbaa !181
  %117 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !181
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %117, align 8, !tbaa !181
  br label %242

120:                                              ; preds = %3
  %121 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !181
  %123 = call ptr @extract_asm_operands(ptr noundef %122) #20
  store ptr %123, ptr %4, align 8, !tbaa !170
  %124 = icmp eq ptr %123, null
  br i1 %124, label %189, label %125, !prof !615

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !181
  %128 = load i32, ptr %127, align 8, !tbaa !211
  %129 = load ptr, ptr @cfun, align 8, !tbaa !170
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !249
  %132 = getelementptr inbounds %struct.control_flow_graph, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !251
  %134 = icmp eq ptr %133, %2
  br i1 %134, label %242, label %135

135:                                              ; preds = %125
  %136 = call ptr @block_label(ptr noundef %2)
  %137 = icmp sgt i32 %128, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %140 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 2
  %141 = zext nneg i32 %128 to i64
  br label %142

142:                                              ; preds = %138, %167
  %143 = phi i64 [ 0, %138 ], [ %168, %167 ]
  %144 = load ptr, ptr %4, align 8, !tbaa !170
  %145 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !181
  %147 = getelementptr inbounds %struct.rtvec_def, ptr %146, i64 0, i32 1, i64 %143
  %148 = load ptr, ptr %147, align 8, !tbaa !170
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 44
  br i1 %151, label %153, label %152

152:                                              ; preds = %142
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 971, ptr noundef nonnull @.str.1) #20
  br label %153

153:                                              ; preds = %142, %152
  %154 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !181
  %156 = icmp eq ptr %155, %1
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %136) #20
  %159 = load ptr, ptr %4, align 8, !tbaa !170
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !181
  %162 = getelementptr inbounds %struct.rtvec_def, ptr %161, i64 0, i32 1, i64 %143
  store ptr %158, ptr %162, align 8, !tbaa !170
  %163 = load i32, ptr %139, align 8, !tbaa !181
  %164 = add nsw i32 %163, -1
  store i32 %164, ptr %139, align 8, !tbaa !181
  %165 = load i32, ptr %140, align 8, !tbaa !181
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %140, align 8, !tbaa !181
  br label %167

167:                                              ; preds = %157, %153
  %168 = add nuw nsw i64 %143, 1
  %169 = icmp eq i64 %168, %141
  br i1 %169, label %170, label %142, !llvm.loop !616

170:                                              ; preds = %167, %135
  %171 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %172 = load ptr, ptr %171, align 8, !tbaa !181
  %173 = icmp eq ptr %172, %1
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  store ptr %136, ptr %171, align 8, !tbaa !181
  %175 = call ptr @find_reg_note(ptr noundef %0, i32 noundef 9, ptr noundef %136) #20
  %176 = icmp eq ptr %175, null
  br i1 %176, label %242, label %177

177:                                              ; preds = %174
  call void @remove_note(ptr noundef %0, ptr noundef nonnull %175) #20
  br label %242

178:                                              ; preds = %170
  %179 = call ptr @find_reg_note(ptr noundef %0, i32 noundef 9, ptr noundef %1) #20
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @remove_note(ptr noundef %0, ptr noundef nonnull %179) #20
  br label %182

182:                                              ; preds = %181, %178
  %183 = load ptr, ptr %171, align 8, !tbaa !181
  %184 = icmp eq ptr %183, %136
  br i1 %184, label %242, label %185

185:                                              ; preds = %182
  %186 = call ptr @find_reg_note(ptr noundef %0, i32 noundef 9, ptr noundef %136) #20
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %242

188:                                              ; preds = %185
  call void @add_reg_note(ptr noundef %0, i32 noundef 9, ptr noundef %136) #20
  br label %242

189:                                              ; preds = %120
  %190 = call i32 @computed_jump_p(ptr noundef %0) #20
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %242, !prof !615

192:                                              ; preds = %189
  %193 = call i32 @returnjump_p(ptr noundef %0) #20
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %242, !prof !615

195:                                              ; preds = %192
  %196 = load i32, ptr @currently_expanding_to_rtl, align 4, !tbaa !185
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198, !prof !617

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %200 = load ptr, ptr %199, align 8, !tbaa !181
  %201 = icmp eq ptr %200, %1
  br i1 %201, label %202, label %242, !prof !618

202:                                              ; preds = %198, %195
  %203 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %204 = load ptr, ptr %203, align 8, !tbaa !181
  %205 = icmp eq ptr %204, %1
  br i1 %205, label %207, label %206, !prof !619

206:                                              ; preds = %202
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1011, ptr noundef nonnull @.str.1) #20
  br label %207

207:                                              ; preds = %202, %206
  %208 = load ptr, ptr @cfun, align 8, !tbaa !170
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !249
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !251
  %213 = icmp eq ptr %212, %2
  br i1 %213, label %230, label %214, !prof !351

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !181
  %217 = load ptr, ptr %216, align 8, !tbaa !223
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 65535
  %220 = icmp eq i32 %219, 12
  br i1 %220, label %227, label %221, !prof !352

221:                                              ; preds = %214
  %222 = call ptr @gen_label_rtx() #20
  %223 = load ptr, ptr %215, align 8, !tbaa !181
  %224 = load ptr, ptr %223, align 8, !tbaa !223
  %225 = call ptr @emit_label_before(ptr noundef %222, ptr noundef %224) #20
  %226 = load ptr, ptr %215, align 8, !tbaa !181
  store ptr %225, ptr %226, align 8, !tbaa !223
  br label %227

227:                                              ; preds = %221, %214
  %228 = load ptr, ptr %215, align 8, !tbaa !181
  %229 = load ptr, ptr %228, align 8, !tbaa !223
  br label %230

230:                                              ; preds = %207, %227
  %231 = phi ptr [ %229, %227 ], [ null, %207 ]
  %232 = call i32 @redirect_jump(ptr noundef %0, ptr noundef %231, i32 noundef 0) #20
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %242, !prof !620

234:                                              ; preds = %230
  %235 = load ptr, ptr @cfun, align 8, !tbaa !170
  %236 = getelementptr inbounds %struct.function, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !249
  %238 = getelementptr inbounds %struct.control_flow_graph, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !251
  %240 = icmp eq ptr %239, %2
  br i1 %240, label %242, label %241

241:                                              ; preds = %234
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1018, ptr noundef nonnull @.str.1) #20
  br label %242

242:                                              ; preds = %198, %230, %84, %87, %92, %98, %104, %108, %177, %174, %188, %185, %182, %125, %30, %241, %234, %189, %192
  %243 = phi i8 [ 0, %192 ], [ 0, %189 ], [ 0, %234 ], [ 0, %241 ], [ 0, %30 ], [ 0, %125 ], [ 1, %182 ], [ 1, %185 ], [ 1, %188 ], [ 1, %174 ], [ 1, %177 ], [ 1, %108 ], [ 1, %104 ], [ 1, %98 ], [ 1, %92 ], [ 1, %87 ], [ 1, %84 ], [ 1, %230 ], [ 1, %198 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i8 %243
}

declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #3

declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_bb_delete(i32 noundef) local_unnamed_addr #3

declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @keep_with_call_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @need_fake_edge_p(ptr noundef %0) unnamed_addr #12 !prof !169 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = and i32 %2, 16842751
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, -2080374784
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12, %9, %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 134283263
  %21 = icmp eq i32 %20, 134217745
  br i1 %21, label %43, label %22

22:                                               ; preds = %16
  %23 = and i32 %19, 65535
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = tail call i32 @asm_noperands(ptr noundef nonnull %0) #20
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %17, align 8, !tbaa !181
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.rtvec_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !170
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 134217728
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28, %25, %22
  %38 = load ptr, ptr %17, align 8, !tbaa !181
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 16
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %12, %1, %28, %37, %16
  %44 = phi i8 [ 0, %1 ], [ 1, %28 ], [ %42, %37 ], [ 1, %16 ], [ 1, %12 ]
  ret i8 %44
}

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_use(ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @verify_flow_info() local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare void @debug_rtx(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_first_insn(ptr noundef) local_unnamed_addr #3

declare void @set_last_insn(ptr noundef) local_unnamed_addr #3

declare ptr @unlink_insn_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @locator_eq(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_nop() local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!168}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!35 = !{ptr @delete_insn, ptr @in_expr_list_p, i64 33915}
!36 = !{ptr @delete_insn, ptr @remove_node_from_expr_list, i64 33915}
!37 = !{ptr @delete_insn, ptr @remove_insn, i64 195370}
!38 = !{ptr @delete_insn, ptr @find_reg_note, i64 248526}
!39 = !{ptr @delete_insn, ptr @remove_note, i64 10}
!40 = !{ptr @delete_insn_and_edges, ptr @delete_insn, i64 27362}
!41 = !{ptr @delete_insn_and_edges, ptr @purge_dead_edges, i64 30}
!42 = !{ptr @purge_dead_edges, ptr @find_reg_note, i64 298193}
!43 = !{ptr @purge_dead_edges, ptr @any_condjump_p, i64 1027179}
!44 = !{ptr @purge_dead_edges, ptr @returnjump_p, i64 146141}
!45 = !{ptr @purge_dead_edges, ptr @simplejump_p, i64 732587}
!46 = !{ptr @purge_dead_edges, ptr @df_set_bb_dirty, i64 8760}
!47 = !{ptr @purge_dead_edges, ptr @remove_edge, i64 8760}
!48 = !{ptr @delete_insn_chain, ptr @in_expr_list_p, i64 7356}
!49 = !{ptr @delete_insn_chain, ptr @remove_node_from_expr_list, i64 7356}
!50 = !{ptr @delete_insn_chain, ptr @remove_insn, i64 42376}
!51 = !{ptr @delete_insn_chain, ptr @find_reg_note, i64 53905}
!52 = !{ptr @delete_insn_chain, ptr @remove_note, i64 2}
!53 = !{ptr @init_rtl_bb_info, ptr @ggc_alloc_cleared_stat, i64 154136}
!54 = !{ptr @update_bb_for_insn, ptr @df_insn_change_bb, i64 863397}
!55 = !{ptr @free_bb_for_insn, ptr @get_insns, i64 38}
!56 = !{ptr @rest_of_pass_free_cfg, ptr @get_insns, i64 38}
!57 = !{ptr @insert_insn_on_edge, ptr @start_sequence, i64 64846}
!58 = !{ptr @insert_insn_on_edge, ptr @push_to_sequence, i64 2}
!59 = !{ptr @insert_insn_on_edge, ptr @emit_insn, i64 64848}
!60 = !{ptr @insert_insn_on_edge, ptr @get_insns, i64 64848}
!61 = !{ptr @insert_insn_on_edge, ptr @end_sequence, i64 64848}
!62 = !{ptr @commit_edge_insertions, ptr @commit_one_edge_insertion, i64 80}
!63 = !{ptr @commit_edge_insertions, ptr @current_ir_type, i64 40}
!64 = !{ptr @commit_edge_insertions, ptr @sbitmap_alloc, i64 38}
!65 = !{ptr @commit_edge_insertions, ptr @sbitmap_zero, i64 38}
!66 = !{ptr @commit_edge_insertions, ptr @find_many_sub_basic_blocks, i64 38}
!67 = !{ptr @commit_edge_insertions, ptr @free, i64 76}
!68 = !{ptr @block_label, ptr @gen_label_rtx, i64 29434}
!69 = !{ptr @block_label, ptr @emit_label_before, i64 29434}
!70 = !{ptr @try_redirect_by_replacing_jump, ptr @find_reg_note, i64 264676}
!71 = !{ptr @try_redirect_by_replacing_jump, ptr @onlyjump_p, i64 121412}
!72 = !{ptr @try_redirect_by_replacing_jump, ptr @tablejump_p, i64 52577}
!73 = !{ptr @try_redirect_by_replacing_jump, ptr @side_effects_p, i64 121038}
!74 = !{ptr @try_redirect_by_replacing_jump, ptr @can_fallthru, i64 42700}
!75 = !{ptr @try_redirect_by_replacing_jump, ptr @delete_insn, i64 78352}
!76 = !{ptr @try_redirect_by_replacing_jump, ptr @simplejump_p, i64 42693}
!77 = !{ptr @try_redirect_by_replacing_jump, ptr @gen_label_rtx, i64 20}
!78 = !{ptr @try_redirect_by_replacing_jump, ptr @emit_label_before, i64 20}
!79 = !{ptr @try_redirect_by_replacing_jump, ptr @redirect_jump, i64 68}
!80 = !{ptr @try_redirect_by_replacing_jump, ptr @redirect_edge_succ, i64 1912}
!81 = !{ptr @force_nonfallthru, ptr @force_nonfallthru_and_redirect, i64 84179}
!82 = !{ptr @force_nonfallthru_and_redirect, ptr @any_condjump_p, i64 146387}
!83 = !{ptr @force_nonfallthru_and_redirect, ptr @tablejump_p, i64 69074}
!84 = !{ptr @force_nonfallthru_and_redirect, ptr @create_basic_block, i64 69074}
!85 = !{ptr @force_nonfallthru_and_redirect, ptr @make_edge, i64 69074}
!86 = !{ptr @force_nonfallthru_and_redirect, ptr @redirect_edge_pred, i64 69074}
!87 = !{ptr @force_nonfallthru_and_redirect, ptr @gen_label_rtx, i64 44017}
!88 = !{ptr @force_nonfallthru_and_redirect, ptr @emit_label_before, i64 44017}
!89 = !{ptr @force_nonfallthru_and_redirect, ptr @gen_jump, i64 146387}
!90 = !{ptr @force_nonfallthru_and_redirect, ptr @emit_jump_insn_after_setloc, i64 146387}
!91 = !{ptr @force_nonfallthru_and_redirect, ptr @emit_barrier_after, i64 146387}
!92 = !{ptr @force_nonfallthru_and_redirect, ptr @redirect_edge_succ_nodup, i64 146387}
!93 = !{ptr @force_nonfallthru_and_redirect, ptr @df_mark_solutions_dirty, i64 146387}
!94 = !{ptr @commit_one_edge_insertion, ptr @split_edge, i64 61969}
!95 = !{ptr @commit_one_edge_insertion, ptr @emit_insn_before_noloc, i64 2792}
!96 = !{ptr @commit_one_edge_insertion, ptr @prev_nonnote_insn, i64 2792}
!97 = !{ptr @commit_one_edge_insertion, ptr @emit_insn_after_noloc, i64 62054}
!98 = !{ptr @commit_one_edge_insertion, ptr @returnjump_p, i64 64846}
!99 = !{ptr @commit_one_edge_insertion, ptr @emit_barrier_after, i64 38}
!100 = !{ptr @commit_one_edge_insertion, ptr @current_ir_type, i64 64846}
!101 = !{ptr @update_br_prob_note, ptr @find_reg_note, i64 69550}
!102 = !{ptr @update_br_prob_note, ptr @gen_rtx_CONST_INT, i64 11}
!103 = !{ptr @purge_all_dead_edges, ptr @purge_dead_edges, i64 391047}
!104 = !{ptr @rtl_create_basic_block, ptr @vec_gc_p_reserve_exact, i64 39}
!105 = !{ptr @rtl_create_basic_block, ptr @alloc_block, i64 152358}
!106 = !{ptr @rtl_create_basic_block, ptr @ggc_alloc_cleared_stat, i64 152358}
!107 = !{ptr @rtl_create_basic_block, ptr @emit_note_after, i64 8794}
!108 = !{ptr @rtl_create_basic_block, ptr @emit_note_before, i64 143564}
!109 = !{ptr @rtl_create_basic_block, ptr @link_block, i64 152358}
!110 = !{ptr @rtl_create_basic_block, ptr @df_bb_refs_record, i64 152358}
!111 = !{ptr @rtl_create_basic_block, ptr @df_insn_change_bb, i64 335251}
!112 = !{ptr @rtl_redirect_edge_and_branch, ptr @try_redirect_by_replacing_jump, i64 75794}
!113 = !{ptr @rtl_redirect_edge_and_branch, ptr @redirect_branch_edge, i64 75726}
!114 = !{ptr @rtl_redirect_edge_and_branch, ptr @df_set_bb_dirty, i64 62190}
!115 = !{ptr @rtl_redirect_edge_and_branch_force, ptr @redirect_edge_and_branch, i64 336}
!116 = !{ptr @rtl_redirect_edge_and_branch_force, ptr @df_set_bb_dirty, i64 336}
!117 = !{ptr @rtl_redirect_edge_and_branch_force, ptr @force_nonfallthru_and_redirect, i64 336}
!118 = !{ptr @rtl_delete_block, ptr @tablejump_p, i64 119266}
!119 = !{ptr @rtl_delete_block, ptr @next_nonnote_insn_bb, i64 119728}
!120 = !{ptr @rtl_delete_block, ptr @in_expr_list_p, i64 39814}
!121 = !{ptr @rtl_delete_block, ptr @remove_node_from_expr_list, i64 39814}
!122 = !{ptr @rtl_delete_block, ptr @remove_insn, i64 229351}
!123 = !{ptr @rtl_delete_block, ptr @find_reg_note, i64 291752}
!124 = !{ptr @rtl_delete_block, ptr @remove_note, i64 11}
!125 = !{ptr @rtl_delete_block, ptr @df_bb_delete, i64 119266}
!126 = !{ptr @rtl_split_block, ptr @create_basic_block, i64 19099}
!127 = !{ptr @rtl_split_block, ptr @df_set_bb_dirty, i64 19099}
!128 = !{ptr @rtl_merge_blocks, ptr @delete_insn_chain, i64 11}
!129 = !{ptr @rtl_merge_blocks, ptr @df_insn_change_bb, i64 22}
!130 = !{ptr @rtl_merge_blocks, ptr @df_bb_delete, i64 11}
!131 = !{ptr @rtl_split_edge, ptr @force_nonfallthru_and_redirect, i64 61872}
!132 = !{ptr @rtl_split_edge, ptr @create_basic_block, i64 61965}
!133 = !{ptr @rtl_split_edge, ptr @make_single_succ_edge, i64 61965}
!134 = !{ptr @rtl_split_edge, ptr @redirect_edge_and_branch, i64 61878}
!135 = !{ptr @rtl_split_edge, ptr @redirect_edge_succ, i64 87}
!136 = !{ptr @rtl_block_ends_with_call_p, ptr @keep_with_call_p, i64 152654}
!137 = !{ptr @cfg_layout_create_basic_block, ptr @rtl_create_basic_block, i64 262}
!138 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @try_redirect_by_replacing_jump, i64 69756}
!139 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @df_set_bb_dirty, i64 69756}
!140 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @label_is_jump_target_p, i64 46365}
!141 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @redirect_edge_succ_nodup, i64 46404}
!142 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @redirect_branch_edge, i64 21508}
!143 = !{ptr @cfg_layout_redirect_edge_and_branch, ptr @simplejump_p, i64 67912}
!144 = !{ptr @cfg_layout_redirect_edge_and_branch_force, ptr @cfg_layout_redirect_edge_and_branch, i64 2117}
!145 = !{ptr @cfg_layout_delete_block, ptr @rtl_delete_block, i64 118729}
!146 = !{ptr @cfg_layout_delete_block, ptr @get_last_insn, i64 18}
!147 = !{ptr @cfg_layout_can_merge_blocks_p, ptr @onlyjump_p, i64 38}
!148 = !{ptr @cfg_layout_merge_blocks, ptr @delete_insn, i64 170}
!149 = !{ptr @cfg_layout_merge_blocks, ptr @try_redirect_by_replacing_jump, i64 38}
!150 = !{ptr @cfg_layout_merge_blocks, ptr @unlink_insn_chain, i64 36}
!151 = !{ptr @cfg_layout_merge_blocks, ptr @emit_insn_after_noloc, i64 36}
!152 = !{ptr @cfg_layout_merge_blocks, ptr @df_insn_change_bb, i64 487}
!153 = !{ptr @cfg_layout_merge_blocks, ptr @df_bb_delete, i64 118}
!154 = !{ptr @cfg_layout_split_edge, ptr @create_basic_block, i64 4}
!155 = !{ptr @cfg_layout_split_edge, ptr @make_edge, i64 4}
!156 = !{ptr @cfg_layout_split_edge, ptr @redirect_edge_and_branch_force, i64 4}
!157 = !{ptr @redirect_branch_edge, ptr @patch_jump_insn, i64 85177}
!158 = !{ptr @redirect_branch_edge, ptr @redirect_edge_succ_nodup, i64 83630}
!159 = !{ptr @patch_jump_insn, ptr @tablejump_p, i64 85177}
!160 = !{ptr @patch_jump_insn, ptr @gen_label_rtx, i64 25390}
!161 = !{ptr @patch_jump_insn, ptr @emit_label_before, i64 25390}
!162 = !{ptr @patch_jump_insn, ptr @gen_rtx_fmt_u_stat, i64 7681}
!163 = !{ptr @patch_jump_insn, ptr @single_set_2, i64 62}
!164 = !{ptr @patch_jump_insn, ptr @extract_asm_operands, i64 85115}
!165 = !{ptr @patch_jump_insn, ptr @computed_jump_p, i64 85115}
!166 = !{ptr @patch_jump_insn, ptr @returnjump_p, i64 85115}
!167 = !{ptr @patch_jump_insn, ptr @redirect_jump, i64 84387}
!168 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!169 = !{!"function_entry_count", i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"any pointer", !172, i64 0}
!172 = !{!"omnipotent char", !173, i64 0}
!173 = !{!"Simple C/C++ TBAA"}
!174 = !{!175, !171, i64 8}
!175 = !{!"_IO_FILE", !176, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !171, i64 32, !171, i64 40, !171, i64 48, !171, i64 56, !171, i64 64, !171, i64 72, !171, i64 80, !171, i64 88, !171, i64 96, !171, i64 104, !176, i64 112, !176, i64 116, !177, i64 120, !178, i64 128, !172, i64 130, !172, i64 131, !171, i64 136, !177, i64 144, !171, i64 152, !171, i64 160, !171, i64 168, !171, i64 176, !177, i64 184, !176, i64 192, !172, i64 196}
!176 = !{!"int", !172, i64 0}
!177 = !{!"long", !172, i64 0}
!178 = !{!"short", !172, i64 0}
!179 = !{!175, !171, i64 16}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{!172, !172, i64 0}
!182 = !{!175, !171, i64 40}
!183 = !{!175, !171, i64 48}
!184 = !{!175, !176, i64 0}
!185 = !{!176, !176, i64 0}
!186 = distinct !{!186, !187, !188}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !{!"function_entry_count", i64 195370}
!190 = !{!"branch_weights", i32 81085, i32 386012}
!191 = !{!"branch_weights", i32 81085, i32 0}
!192 = !{!193, !171, i64 32}
!193 = !{!"rtl_data", !194, i64 0, !195, i64 40, !196, i64 96, !197, i64 112, !199, i64 208, !200, i64 248, !176, i64 312, !171, i64 320, !171, i64 328, !171, i64 336, !171, i64 344, !171, i64 352, !171, i64 360, !171, i64 368, !171, i64 376, !171, i64 384, !171, i64 392, !177, i64 400, !171, i64 408, !171, i64 416, !171, i64 424, !176, i64 432, !176, i64 436, !176, i64 440, !176, i64 444, !176, i64 448, !176, i64 452, !171, i64 456, !172, i64 464, !172, i64 465, !172, i64 466, !172, i64 467, !172, i64 468, !172, i64 469, !172, i64 470, !172, i64 471, !172, i64 472, !172, i64 473, !172, i64 474, !172, i64 475, !172, i64 476, !172, i64 477, !172, i64 478, !172, i64 479, !172, i64 480, !172, i64 481, !172, i64 482, !172, i64 483, !172, i64 484, !172, i64 485}
!194 = !{!"expr_status", !176, i64 0, !176, i64 4, !176, i64 8, !171, i64 16, !171, i64 24, !171, i64 32}
!195 = !{!"emit_status", !176, i64 0, !176, i64 4, !171, i64 8, !171, i64 16, !171, i64 24, !176, i64 32, !176, i64 36, !176, i64 40, !176, i64 44, !171, i64 48}
!196 = !{!"varasm_status", !171, i64 0, !176, i64 8}
!197 = !{!"incoming_args", !176, i64 0, !176, i64 4, !176, i64 8, !171, i64 16, !198, i64 24, !171, i64 88}
!198 = !{!"ix86_args", !176, i64 0, !176, i64 4, !176, i64 8, !176, i64 12, !176, i64 16, !176, i64 20, !176, i64 24, !176, i64 28, !176, i64 32, !176, i64 36, !176, i64 40, !176, i64 44, !176, i64 48, !176, i64 52, !176, i64 56, !176, i64 60}
!199 = !{!"function_subsections", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !171, i64 32}
!200 = !{!"rtl_eh", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !171, i64 32, !171, i64 40, !172, i64 48}
!201 = !{!"branch_weights", i32 467097, i32 0}
!202 = !{!"branch_weights", i32 127063, i32 340034}
!203 = !{!"branch_weights", i32 1, i32 127062}
!204 = !{!"branch_weights", i32 127062, i32 0}
!205 = !{!"branch_weights", i32 1, i32 0}
!206 = distinct !{!206, !187, !188}
!207 = !{!"branch_weights", i32 467074, i32 23}
!208 = !{!"branch_weights", i32 23, i32 0}
!209 = distinct !{!209, !187, !188}
!210 = !{!"branch_weights", i32 0, i32 127063}
!211 = !{!212, !176, i64 0}
!212 = !{!"rtvec_def", !176, i64 0, !172, i64 8}
!213 = distinct !{!213, !187, !188}
!214 = !{!"function_entry_count", i64 27362}
!215 = !{!"branch_weights", i32 27362, i32 0}
!216 = !{!"branch_weights", i32 0, i32 27362}
!217 = !{!218, !171, i64 8}
!218 = !{!"rtl_bb_info", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !176, i64 32}
!219 = !{!"branch_weights", i32 27332, i32 30}
!220 = !{i8 0, i8 2}
!221 = !{!"function_entry_count", i64 621154}
!222 = !{!"branch_weights", i32 0, i32 621154}
!223 = !{!218, !171, i64 0}
!224 = distinct !{!224, !187, !188}
!225 = !{!"branch_weights", i32 6269, i32 614885}
!226 = !{!"branch_weights", i32 6269, i32 0}
!227 = !{!"branch_weights", i32 0, i32 1699765}
!228 = !{!229, !176, i64 0}
!229 = !{!"VEC_edge_base", !176, i64 0, !176, i64 4, !172, i64 8}
!230 = !{!"branch_weights", i32 621154, i32 1078611}
!231 = !{!232, !176, i64 48}
!232 = !{!"edge_def", !171, i64 0, !171, i64 8, !172, i64 16, !171, i64 24, !171, i64 32, !176, i64 40, !176, i64 44, !176, i64 48, !176, i64 52, !177, i64 56}
!233 = !{!"branch_weights", i32 1078611, i32 0}
!234 = distinct !{!234, !187, !188}
!235 = !{!"branch_weights", i32 0, i32 1078611}
!236 = !{!"branch_weights", i32 34281, i32 586625, i32 248}
!237 = !{!"branch_weights", i32 146071, i32 440554}
!238 = !{!"branch_weights", i32 146033, i32 38}
!239 = !{!"branch_weights", i32 71, i32 145962}
!240 = !{!"branch_weights", i32 440592, i32 145962}
!241 = !{!"branch_weights", i32 145962, i32 0}
!242 = distinct !{!242, !187, !188}
!243 = !{!"branch_weights", i32 0, i32 1613825}
!244 = !{!"branch_weights", i32 586554, i32 1027271}
!245 = !{!"branch_weights", i32 586717, i32 440554}
!246 = !{!"branch_weights", i32 0, i32 440554}
!247 = !{!"branch_weights", i32 440554, i32 0}
!248 = !{!232, !171, i64 8}
!249 = !{!250, !171, i64 8}
!250 = !{!"function", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !171, i64 32, !171, i64 40, !171, i64 48, !171, i64 56, !171, i64 64, !171, i64 72, !171, i64 80, !171, i64 88, !171, i64 96, !176, i64 104, !176, i64 108, !176, i64 112, !176, i64 116, !176, i64 120, !176, i64 124, !171, i64 128, !176, i64 136, !176, i64 137, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139}
!251 = !{!252, !171, i64 8}
!252 = !{!"control_flow_graph", !171, i64 0, !171, i64 8, !171, i64 16, !176, i64 24, !176, i64 28, !176, i64 32, !171, i64 40, !176, i64 48, !172, i64 52, !172, i64 60, !176, i64 68, !176, i64 72}
!253 = !{!"branch_weights", i32 38, i32 586679}
!254 = !{!"branch_weights", i32 586478, i32 201}
!255 = !{!"branch_weights", i32 0, i32 586478}
!256 = !{!"branch_weights", i32 586478, i32 0}
!257 = !{!"branch_weights", i32 38, i32 201}
!258 = !{!"branch_weights", i32 0, i32 38}
!259 = !{!"branch_weights", i32 38, i32 0}
!260 = !{!"branch_weights", i32 201, i32 0}
!261 = distinct !{!261, !187, !188}
!262 = !{!"branch_weights", i32 0, i32 586554}
!263 = !{!"branch_weights", i32 586516, i32 38}
!264 = !{!"branch_weights", i32 17, i32 586537}
!265 = !{!"branch_weights", i32 17, i32 0}
!266 = !{!267, !176, i64 80}
!267 = !{!"basic_block_def", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !172, i64 32, !171, i64 48, !171, i64 56, !172, i64 64, !177, i64 72, !176, i64 80, !176, i64 84, !176, i64 88, !176, i64 92, !176, i64 96}
!268 = !{!"branch_weights", i32 0, i32 17}
!269 = !{!267, !171, i64 8}
!270 = !{!232, !176, i64 52}
!271 = !{!267, !177, i64 72}
!272 = !{!232, !177, i64 56}
!273 = !{!"branch_weights", i32 191, i32 57}
!274 = !{!"branch_weights", i32 0, i32 57}
!275 = !{!"branch_weights", i32 57, i32 0}
!276 = !{!"branch_weights", i32 0, i32 68753}
!277 = !{!"branch_weights", i32 25881, i32 42872}
!278 = !{!"branch_weights", i32 8591, i32 34281}
!279 = !{!"branch_weights", i32 0, i32 34281}
!280 = !{!"branch_weights", i32 34281, i32 0}
!281 = distinct !{!281, !187, !188}
!282 = !{!"branch_weights", i32 0, i32 25773}
!283 = !{!"branch_weights", i32 8591, i32 17182}
!284 = !{!"branch_weights", i32 8591, i32 8591}
!285 = distinct !{!285, !187, !188}
!286 = !{!"branch_weights", i32 0, i32 8591}
!287 = !{!"branch_weights", i32 8591, i32 0}
!288 = !{!"function_entry_count", i64 22036}
!289 = !{!"branch_weights", i32 120846, i32 150881}
!290 = !{!"branch_weights", i32 0, i32 1552, i32 119277, i32 17}
!291 = !{!"branch_weights", i32 25819, i32 245908}
!292 = !{!"branch_weights", i32 0, i32 245908}
!293 = !{!"branch_weights", i32 141302, i32 130425}
!294 = distinct !{!294, !188}
!295 = !{!"branch_weights", i32 152358, i32 0}
!296 = !{!267, !171, i64 16}
!297 = !{!"branch_weights", i32 8794, i32 143564}
!298 = !{!"branch_weights", i32 8591, i32 203}
!299 = !{!"branch_weights", i32 12521, i32 131043}
!300 = !{!"branch_weights", i32 0, i32 152358}
!301 = !{!252, !176, i64 32}
!302 = !{!267, !176, i64 96}
!303 = !{!252, !171, i64 16}
!304 = !{!"branch_weights", i32 1, i32 152357}
!305 = !{!"branch_weights", i32 21484, i32 335251}
!306 = !{!"branch_weights", i32 152357, i32 204378}
!307 = distinct !{!307, !187, !188}
!308 = !{!"function_entry_count", i64 154136}
!309 = !{!"branch_weights", i32 154136, i32 0}
!310 = !{!"function_entry_count", i64 156018}
!311 = !{!"branch_weights", i32 1, i32 156017}
!312 = !{!"branch_weights", i32 306, i32 863397}
!313 = !{!"branch_weights", i32 156017, i32 707686}
!314 = !{!252, !171, i64 0}
!315 = !{!267, !171, i64 56}
!316 = distinct !{!316, !187, !188}
!317 = distinct !{!317, !188}
!318 = !{!"function_entry_count", i64 38}
!319 = !{!"branch_weights", i32 1, i32 151}
!320 = !{!"branch_weights", i32 151, i32 1}
!321 = distinct !{!321, !187, !188}
!322 = !{!"cfgrtl.c;rest_of_pass_free_cfg"}
!323 = !{!"branch_weights", i32 38682, i32 922598}
!324 = !{!"branch_weights", i32 151, i32 3844969}
!325 = !{!252, !176, i64 24}
!326 = !{!"function_entry_count", i64 64848}
!327 = !{!"branch_weights", i32 64848, i32 0}
!328 = !{!232, !171, i64 0}
!329 = !{!267, !171, i64 0}
!330 = !{!"branch_weights", i32 64846, i32 2}
!331 = !{!"function_entry_count", i64 78}
!332 = !{!"branch_weights", i32 1, i32 155}
!333 = !{!"branch_weights", i32 0, i32 925371}
!334 = !{!"branch_weights", i32 311726, i32 613645}
!335 = !{!"branch_weights", i32 613565, i32 80}
!336 = !{!"branch_weights", i32 0, i32 613645}
!337 = !{!"branch_weights", i32 613645, i32 0}
!338 = distinct !{!338, !187, !188}
!339 = !{!"branch_weights", i32 155, i32 623297}
!340 = distinct !{!340, !187, !188}
!341 = !{!"branch_weights", i32 38, i32 40}
!342 = !{!"branch_weights", i32 2, i32 38}
!343 = !{!"branch_weights", i32 155578, i32 76}
!344 = !{!345, !171, i64 0}
!345 = !{!"simple_bitmap_def", !171, i64 0, !176, i64 8, !176, i64 12, !172, i64 16}
!346 = !{!"branch_weights", i32 76, i32 0}
!347 = !{!177, !177, i64 0}
!348 = !{!"branch_weights", i32 151, i32 622465}
!349 = distinct !{!349, !187, !188}
!350 = !{!"function_entry_count", i64 97900}
!351 = !{!"branch_weights", i32 39, i32 328765}
!352 = !{!"branch_weights", i32 229910, i32 98855}
!353 = !{!"function_entry_count", i64 264676}
!354 = !{!"branch_weights", i32 264676, i32 0}
!355 = !{!"branch_weights", i32 0, i32 264676}
!356 = !{!"branch_weights", i32 76, i32 264600}
!357 = !{!"branch_weights", i32 0, i32 264600}
!358 = !{!"branch_weights", i32 143188, i32 121412}
!359 = !{!"branch_weights", i32 0, i32 143188}
!360 = !{!"branch_weights", i32 374, i32 121038}
!361 = !{!"branch_weights", i32 0, i32 121038}
!362 = !{!"branch_weights", i32 52577, i32 68461}
!363 = !{!"branch_weights", i32 52577, i32 0}
!364 = !{!"branch_weights", i32 121038, i32 0}
!365 = !{!"branch_weights", i32 42700, i32 78338}
!366 = !{!"branch_weights", i32 42693, i32 7}
!367 = !{!"branch_weights", i32 78345, i32 0}
!368 = !{!"branch_weights", i32 7, i32 78338}
!369 = !{!218, !171, i64 24}
!370 = !{!"branch_weights", i32 0, i32 78338}
!371 = !{!"branch_weights", i32 78338, i32 0}
!372 = !{!"branch_weights", i32 1844, i32 76494}
!373 = !{!"branch_weights", i32 76494, i32 0}
!374 = !{!"branch_weights", i32 0, i32 76494}
!375 = distinct !{!375, !187, !188}
!376 = !{!"branch_weights", i32 0, i32 14}
!377 = !{!"branch_weights", i32 7, i32 7}
!378 = !{!"branch_weights", i32 0, i32 42693}
!379 = !{!"branch_weights", i32 42625, i32 68}
!380 = !{!"branch_weights", i32 68, i32 0}
!381 = !{!"branch_weights", i32 0, i32 68}
!382 = !{!"branch_weights", i32 0, i32 78413}
!383 = !{!"branch_weights", i32 78413, i32 0}
!384 = !{!"branch_weights", i32 76501, i32 1912}
!385 = !{!"function_entry_count", i64 84179}
!386 = !{!"function_entry_count", i64 146387}
!387 = !{!"cfgrtl.c;force_nonfallthru_and_redirect"}
!388 = !{!"branch_weights", i32 0, i32 146387}
!389 = !{!"branch_weights", i32 77313, i32 69074}
!390 = !{!"branch_weights", i32 0, i32 69074}
!391 = !{!"branch_weights", i32 146387, i32 0}
!392 = distinct !{!392, !187, !188}
!393 = !{!229, !176, i64 4}
!394 = !{!"branch_weights", i32 69074, i32 77313}
!395 = !{!"branch_weights", i32 69074, i32 0}
!396 = !{!267, !176, i64 88}
!397 = !{!267, !176, i64 84}
!398 = !{!232, !176, i64 40}
!399 = !{!"branch_weights", i32 145305, i32 1082}
!400 = !{!232, !171, i64 32}
!401 = !{!"branch_weights", i32 1082, i32 0}
!402 = !{!"function_entry_count", i64 64846}
!403 = !{!"branch_weights", i32 0, i32 64846}
!404 = !{!"branch_weights", i32 64762, i32 84}
!405 = !{!"branch_weights", i32 37, i32 47}
!406 = !{!"branch_weights", i32 0, i32 47}
!407 = !{!"branch_weights", i32 47, i32 0}
!408 = !{!"branch_weights", i32 64799, i32 0}
!409 = !{!"branch_weights", i32 0, i32 64799}
!410 = !{!"branch_weights", i32 61969, i32 2830}
!411 = !{!"branch_weights", i32 0, i32 2830}
!412 = !{!"branch_weights", i32 2792, i32 38}
!413 = !{!"branch_weights", i32 0, i32 61969}
!414 = !{!"branch_weights", i32 62054, i32 2792}
!415 = !{!"branch_weights", i32 64808, i32 38}
!416 = !{!"branch_weights", i32 0, i32 1444}
!417 = !{!"branch_weights", i32 0, i32 64808}
!418 = !{!"branch_weights", i32 4, i32 64842}
!419 = !{!267, !171, i64 48}
!420 = distinct !{!420, !187, !188}
!421 = distinct !{!421, !187, !188}
!422 = distinct !{!422, !187, !188}
!423 = distinct !{!423, !187, !188}
!424 = distinct !{!424, !187, !188}
!425 = distinct !{!425, !187, !188}
!426 = distinct !{!426, !187, !188}
!427 = !{!193, !171, i64 456}
!428 = distinct !{!428, !187, !188}
!429 = !{!"function_entry_count", i64 69667}
!430 = !{!"branch_weights", i32 69550, i32 117}
!431 = !{!"branch_weights", i32 158, i32 69392}
!432 = !{!"branch_weights", i32 30023, i32 39369}
!433 = !{!"branch_weights", i32 69381, i32 11}
!434 = !{!"branch_weights", i32 10, i32 1}
!435 = !{!"branch_weights", i32 119266, i32 0}
!436 = !{!"branch_weights", i32 465, i32 118762}
!437 = !{!"branch_weights", i32 0, i32 465}
!438 = distinct !{!438, !187, !188}
!439 = !{!"branch_weights", i32 155, i32 478613}
!440 = !{!"branch_weights", i32 155, i32 781939}
!441 = distinct !{!441, !187, !188}
!442 = distinct !{!442, !187, !188}
!443 = !{i32 0, i32 2}
!444 = distinct !{!444, !187, !188}
!445 = distinct !{!445, !187, !188}
!446 = distinct !{!446, !187, !188}
!447 = distinct !{!447, !188}
!448 = distinct !{!448, !187, !188}
!449 = distinct !{!449, !187, !188}
!450 = distinct !{!450, !187, !188}
!451 = distinct !{!451, !187, !188}
!452 = distinct !{!452, !187, !188}
!453 = !{!"function_entry_count", i64 152358}
!454 = !{!"cfgrtl.c;rtl_create_basic_block"}
!455 = !{!456, !176, i64 0}
!456 = !{!"VEC_basic_block_base", !176, i64 0, !176, i64 4, !172, i64 8}
!457 = !{!"branch_weights", i32 152319, i32 39}
!458 = !{!"branch_weights", i32 0, i32 39}
!459 = !{!456, !176, i64 4}
!460 = !{}
!461 = !{!"VP", i32 1, i64 39, i64 257, i64 11, i64 33, i64 10, i64 129, i64 9, i64 65, i64 5}
!462 = !{!"function_entry_count", i64 75794}
!463 = !{!"cfgrtl.c;rtl_redirect_edge_and_branch"}
!464 = !{!"branch_weights", i32 75794, i32 0}
!465 = !{!"branch_weights", i32 0, i32 75794}
!466 = !{!"branch_weights", i32 75726, i32 68}
!467 = !{!"branch_weights", i32 13604, i32 62122}
!468 = !{!"function_entry_count", i64 336}
!469 = !{!"cfgrtl.c;rtl_redirect_edge_and_branch_force"}
!470 = !{!"branch_weights", i32 336, i32 0}
!471 = !{!"branch_weights", i32 0, i32 336}
!472 = !{!"function_entry_count", i64 119266}
!473 = !{!"cfgrtl.c;rtl_delete_block"}
!474 = !{!"function_entry_count", i64 19099}
!475 = !{!"cfgrtl.c;rtl_split_block"}
!476 = !{!"branch_weights", i32 0, i32 19099}
!477 = distinct !{!477, !187, !188}
!478 = !{!"branch_weights", i32 0, i32 78764}
!479 = !{!"branch_weights", i32 19099, i32 59665}
!480 = !{!"branch_weights", i32 0, i32 59665}
!481 = !{!"branch_weights", i32 59665, i32 0}
!482 = distinct !{!482, !187, !188}
!483 = !{!"function_entry_count", i64 258}
!484 = !{!"cfgrtl.c;rtl_move_block_after"}
!485 = !{!"function_entry_count", i64 5}
!486 = !{!"cfgrtl.c;rtl_can_merge_blocks"}
!487 = !{!"branch_weights", i32 5, i32 0}
!488 = !{!"branch_weights", i32 0, i32 5}
!489 = !{!"function_entry_count", i64 11}
!490 = !{!"cfgrtl.c;rtl_merge_blocks"}
!491 = !{!"branch_weights", i32 11, i32 0}
!492 = !{!"branch_weights", i32 0, i32 1}
!493 = distinct !{!493, !187, !188}
!494 = !{!"branch_weights", i32 0, i32 11}
!495 = distinct !{!495, !188}
!496 = !{!"branch_weights", i32 1, i32 175}
!497 = !{!"branch_weights", i32 0, i32 22}
!498 = !{!"branch_weights", i32 175, i32 177}
!499 = !{!"function_entry_count", i64 61965}
!500 = !{!"cfgrtl.c;rtl_split_edge"}
!501 = !{!"branch_weights", i32 61965, i32 0}
!502 = !{!"branch_weights", i32 61878, i32 87}
!503 = !{!"branch_weights", i32 0, i32 269079187}
!504 = !{!"branch_weights", i32 6, i32 269079181}
!505 = !{!"branch_weights", i32 269017309, i32 61872}
!506 = !{!"branch_weights", i32 0, i32 269017309}
!507 = !{!"branch_weights", i32 269017309, i32 0}
!508 = distinct !{!508, !187, !188}
!509 = !{!"branch_weights", i32 6, i32 61872}
!510 = !{!"branch_weights", i32 0, i32 61965}
!511 = !{!"branch_weights", i32 0, i32 87}
!512 = !{!"branch_weights", i32 0, i32 61878}
!513 = !{!"function_entry_count", i64 153339}
!514 = !{!"cfgrtl.c;rtl_block_ends_with_call_p"}
!515 = !{!"branch_weights", i32 1, i32 223}
!516 = !{!"branch_weights", i32 0, i32 153283}
!517 = !{!"branch_weights", i32 153283, i32 0}
!518 = !{!"branch_weights", i32 153283, i32 0, i32 0}
!519 = !{!"branch_weights", i32 223, i32 612909}
!520 = distinct !{!520, !187, !188}
!521 = distinct !{!521, !187, !188}
!522 = distinct !{!522, !187, !188}
!523 = distinct !{!523, !188}
!524 = distinct !{!524, !187, !188}
!525 = distinct !{!525, !187, !188}
!526 = distinct !{!526, !187, !188}
!527 = distinct !{!527, !187, !188}
!528 = distinct !{!528, !187, !188}
!529 = !{!252, !176, i64 48}
!530 = distinct !{!530, !187, !188}
!531 = distinct !{!531, !187, !188}
!532 = distinct !{!532, !187, !188}
!533 = distinct !{!533, !187, !188}
!534 = !{!"function_entry_count", i64 262}
!535 = !{!"cfgrtl.c;cfg_layout_create_basic_block"}
!536 = !{!"function_entry_count", i64 69756}
!537 = !{!"cfgrtl.c;cfg_layout_redirect_edge_and_branch"}
!538 = !{!"branch_weights", i32 69756, i32 0}
!539 = !{!"branch_weights", i32 0, i32 69756}
!540 = !{!"branch_weights", i32 67912, i32 1844}
!541 = !{!"branch_weights", i32 0, i32 67912}
!542 = !{!"branch_weights", i32 21508, i32 46404}
!543 = !{!"branch_weights", i32 46365, i32 39}
!544 = !{!"branch_weights", i32 46365, i32 0}
!545 = !{!"branch_weights", i32 0, i32 46404}
!546 = !{!"branch_weights", i32 0, i32 46365}
!547 = !{!"branch_weights", i32 46404, i32 0}
!548 = !{!"branch_weights", i32 67912, i32 0}
!549 = !{!"function_entry_count", i64 2117}
!550 = !{!"cfgrtl.c;cfg_layout_redirect_edge_and_branch_force"}
!551 = !{!"branch_weights", i32 0, i32 2117}
!552 = !{!"function_entry_count", i64 118729}
!553 = !{!"cfgrtl.c;cfg_layout_delete_block"}
!554 = !{!218, !171, i64 16}
!555 = !{!"branch_weights", i32 118729, i32 0}
!556 = distinct !{!556, !187, !188}
!557 = !{!"branch_weights", i32 77336, i32 41393}
!558 = !{!"branch_weights", i32 41393, i32 0}
!559 = !{!"branch_weights", i32 0, i32 41393}
!560 = distinct !{!560, !187, !188}
!561 = distinct !{!561, !187, !188}
!562 = !{!"branch_weights", i32 18, i32 118711}
!563 = !{!"branch_weights", i32 0, i32 118729}
!564 = distinct !{!564, !187, !188}
!565 = !{!"function_entry_count", i64 1962}
!566 = !{!"cfgrtl.c;cfg_layout_can_merge_blocks_p"}
!567 = !{!"branch_weights", i32 1962, i32 0}
!568 = !{!"branch_weights", i32 0, i32 1962}
!569 = !{!"branch_weights", i32 1844, i32 118}
!570 = !{!"branch_weights", i32 0, i32 118}
!571 = !{!"branch_weights", i32 118, i32 0}
!572 = !{!"branch_weights", i32 38, i32 80}
!573 = !{!"function_entry_count", i64 118}
!574 = !{!"cfgrtl.c;cfg_layout_merge_blocks"}
!575 = !{!"branch_weights", i32 52, i32 66}
!576 = distinct !{!576, !187, !188}
!577 = distinct !{!577, !187, !188}
!578 = !{!"branch_weights", i32 82, i32 36}
!579 = !{!"branch_weights", i32 36, i32 0}
!580 = !{!"branch_weights", i32 1, i32 143}
!581 = !{!"branch_weights", i32 0, i32 214}
!582 = !{!"branch_weights", i32 143, i32 713}
!583 = !{!"branch_weights", i32 1, i32 163}
!584 = !{!"branch_weights", i32 0, i32 273}
!585 = !{!"branch_weights", i32 163, i32 383}
!586 = !{!"branch_weights", i32 82, i32 0}
!587 = !{!"branch_weights", i32 86, i32 32}
!588 = !{!"branch_weights", i32 32, i32 0}
!589 = distinct !{!589, !187, !188}
!590 = !{!"function_entry_count", i64 4}
!591 = !{!"cfgrtl.c;cfg_layout_split_edge"}
!592 = !{!"branch_weights", i32 0, i32 4}
!593 = !{!"function_entry_count", i64 97234}
!594 = !{!"cfgrtl.c;redirect_branch_edge"}
!595 = !{!"branch_weights", i32 83630, i32 13604}
!596 = !{!"branch_weights", i32 83583, i32 47}
!597 = !{!"branch_weights", i32 83630, i32 0}
!598 = !{!"branch_weights", i32 61878, i32 21752}
!599 = !{!"branch_weights", i32 1, i32 61877}
!600 = !{!"branch_weights", i32 0, i32 21752}
!601 = !{!"branch_weights", i32 63425, i32 316230}
!602 = !{!"branch_weights", i32 0, i32 63425}
!603 = !{!"branch_weights", i32 61877, i32 317778}
!604 = distinct !{!604, !187, !188}
!605 = !{!"branch_weights", i32 0, i32 83630}
!606 = !{!"function_entry_count", i64 85177}
!607 = !{!"cfgrtl.c;patch_jump_insn"}
!608 = !{!"branch_weights", i32 85115, i32 62}
!609 = !{!"branch_weights", i32 0, i32 62}
!610 = !{!"branch_weights", i32 62, i32 0}
!611 = !{!"branch_weights", i32 247, i32 1}
!612 = !{!"branch_weights", i32 7681, i32 94989}
!613 = !{!"branch_weights", i32 410433, i32 247}
!614 = distinct !{!614, !187, !188}
!615 = !{!"branch_weights", i32 85115, i32 0}
!616 = distinct !{!616, !187, !188}
!617 = !{!"branch_weights", i32 21705, i32 63410}
!618 = !{!"branch_weights", i32 62682, i32 728}
!619 = !{!"branch_weights", i32 84387, i32 0}
!620 = !{!"branch_weights", i32 0, i32 84387}
