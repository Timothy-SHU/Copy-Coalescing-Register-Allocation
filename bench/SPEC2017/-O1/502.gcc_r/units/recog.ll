; ModuleID = 'recog.c'
source_filename = "recog.c"
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
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.peep2_insn_data = type { ptr, ptr }
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
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.funny_match = type { i32, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.change_t = type { ptr, i32, ptr, ptr, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.validate_replace_src_data = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@volatile_ok = dso_local local_unnamed_addr global i32 0, align 4
@reload_completed = dso_local local_unnamed_addr global i32 0, align 4
@which_alternative = dso_local local_unnamed_addr global i32 0, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@num_changes = internal unnamed_addr global i32 0, align 4
@changes = internal unnamed_addr global ptr null, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [8 x i8] c"recog.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@recog_data = dso_local global %struct.recog_data zeroinitializer, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@recog_op_alt = dso_local local_unnamed_addr global [30 x [30 x %struct.operand_alternative]] zeroinitializer, align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@peep2_current_count = dso_local local_unnamed_addr global i32 0, align 4
@peep2_current = internal unnamed_addr global i32 0, align 4
@peep2_insn_data = internal unnamed_addr global [5 x %struct.peep2_insn_data] zeroinitializer, align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@peep2_find_free_register.search_ofs = internal unnamed_addr global i32 0, align 4
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"peephole2\00", align 1
@pass_peephole2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_handle_peephole2, ptr @rest_of_handle_peephole2, ptr null, ptr null, i32 0, i32 156, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"split1\00", align 1
@pass_split_all_insns = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @rest_of_handle_split_all_insns, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"split2\00", align 1
@pass_split_after_reload = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr null, ptr @rest_of_handle_split_after_reload, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"split3\00", align 1
@pass_split_before_regstack = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_handle_split_before_regstack, ptr @rest_of_handle_split_before_regstack, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"split4\00", align 1
@pass_split_before_sched2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr @gate_handle_split_before_sched2, ptr @rest_of_handle_split_before_sched2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9 } }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"split5\00", align 1
@pass_split_for_shorten_branches = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.8, ptr @gate_do_final_split, ptr @split_all_insns_noflow, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@epilogue_completed = dso_local local_unnamed_addr global i32 0, align 4
@changes_allocated = internal unnamed_addr global i32 0, align 4
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_peephole2 = external local_unnamed_addr global i32, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@df = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_schedule_insns_after_reload = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !147 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !148
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !147 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !148
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !147 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !158

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !152
  %11 = load i8, ptr %3, align 1, !tbaa !159
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !147 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !158

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !152
  %11 = load i8, ptr %3, align 1, !tbaa !159
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !147 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !158

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #29
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !152
  %11 = load i8, ptr %3, align 1, !tbaa !159
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !147 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !148
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !147 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !158

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !160
  store i8 %12, ptr %4, align 1, !tbaa !159
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !147 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !158

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !160
  store i8 %12, ptr %4, align 1, !tbaa !159
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !147 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !158

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !160
  store i8 %12, ptr %4, align 1, !tbaa !159
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !147 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #29
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !147 {
  %2 = load i32, ptr %0, align 8, !tbaa !162
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !147 {
  %2 = load i32, ptr %0, align 8, !tbaa !162
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !147 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !163
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !147 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !163
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !147 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !147 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !147 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !147 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #29
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
  br i1 %23, label %7, label %24, !llvm.loop !164

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !147 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_recog_no_volatile() local_unnamed_addr #9 !prof !167 {
  store i32 0, ptr @volatile_ok, align 4, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_recog() local_unnamed_addr #9 !prof !168 {
  store i32 1, ptr @volatile_ok, align 4, !tbaa !163
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @check_asm_operands(ptr noundef %0) local_unnamed_addr #10 !prof !169 {
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4, !prof !170

4:                                                ; preds = %1
  %5 = tail call ptr @make_insn_raw(ptr noundef %0) #29
  tail call void @extract_insn(ptr noundef %5)
  %6 = tail call i32 @constrain_operands(i32 noundef 1)
  %7 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %8 = icmp sgt i32 %7, -1
  %9 = zext i1 %8 to i32
  br label %138

10:                                               ; preds = %1
  %11 = load i32, ptr %0, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %32 [
    i16 17, label %33
    i16 23, label %13
    i16 15, label %19
  ], !prof !171

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %33, label %32, !prof !172

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %32 [
    i16 17, label %33
    i16 23, label %26
  ], !prof !173

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !159
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 17
  br i1 %31, label %33, label %32, !prof !174

32:                                               ; preds = %26, %19, %13, %10
  br label %33

33:                                               ; preds = %32, %26, %19, %13, %10
  %34 = phi ptr [ null, %32 ], [ %0, %10 ], [ %15, %13 ], [ %28, %26 ], [ %23, %19 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %111, label %36, !prof !175

36:                                               ; preds = %33
  switch i16 %12, label %100 [
    i16 23, label %101
    i16 15, label %37
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !159
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !148
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 23
  %45 = load i32, ptr %39, align 8, !tbaa !176
  %46 = zext i32 %45 to i64
  br i1 %44, label %47, label %86

47:                                               ; preds = %37
  %48 = tail call i32 @llvm.smin.i32(i32 %45, i32 0)
  br label %49

49:                                               ; preds = %53, %47
  %50 = phi i64 [ %54, %53 ], [ %46, %47 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = add nsw i64 %50, -1
  %55 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !148
  %57 = load i32, ptr %56, align 8
  %58 = trunc i32 %57 to i16
  switch i16 %58, label %97 [
    i16 23, label %59
    i16 25, label %49
  ], !llvm.loop !178

59:                                               ; preds = %53, %49
  %60 = phi i32 [ %51, %53 ], [ %48, %49 ]
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  %64 = zext nneg i32 %60 to i64
  br label %68

65:                                               ; preds = %81
  %66 = add nuw nsw i64 %69, 1
  %67 = icmp eq i64 %66, %64
  br i1 %67, label %97, label %68, !llvm.loop !179

68:                                               ; preds = %65, %62
  %69 = phi i64 [ 0, %62 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !148
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 23
  br i1 %74, label %75, label %97

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 17
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !159
  %84 = load ptr, ptr %63, align 8, !tbaa !159
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %65, label %97

86:                                               ; preds = %37, %90
  %87 = phi i64 [ %91, %90 ], [ %46, %37 ]
  %88 = trunc i64 %87 to i32
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = add nsw i64 %87, -1
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !148
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 25
  br i1 %96, label %86, label %97, !llvm.loop !180

97:                                               ; preds = %90, %86, %53, %81, %75, %68, %65, %59
  %98 = phi i32 [ %60, %59 ], [ %60, %65 ], [ %60, %68 ], [ %60, %75 ], [ %60, %81 ], [ 0, %53 ], [ 0, %86 ], [ 0, %90 ]
  %99 = phi i1 [ true, %59 ], [ false, %81 ], [ false, %75 ], [ false, %68 ], [ true, %65 ], [ false, %53 ], [ false, %90 ], [ %89, %86 ]
  br i1 %99, label %101, label %111

100:                                              ; preds = %36
  br label %101

101:                                              ; preds = %100, %97, %36
  %102 = phi i32 [ %98, %97 ], [ 1, %36 ], [ 0, %100 ]
  %103 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = load i32, ptr %104, align 8, !tbaa !176
  %106 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !159
  %108 = load i32, ptr %107, align 8, !tbaa !176
  %109 = add i32 %105, %102
  %110 = add i32 %109, %108
  br label %111

111:                                              ; preds = %33, %97, %101
  %112 = phi i32 [ %110, %101 ], [ -1, %97 ], [ -1, %33 ]
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %138, label %114, !prof !170

114:                                              ; preds = %111
  %115 = icmp eq i32 %112, 0
  br i1 %115, label %138, label %116

116:                                              ; preds = %114
  %117 = zext nneg i32 %112 to i64
  %118 = shl nuw nsw i64 %117, 3
  %119 = alloca i8, i64 %118, align 16
  %120 = alloca i8, i64 %118, align 16
  %121 = call ptr @decode_asm_operands(ptr noundef nonnull %0, ptr noundef nonnull %119, ptr noundef null, ptr noundef nonnull %120, ptr noundef null, ptr noundef null)
  %122 = zext nneg i32 %112 to i64
  br label %126

123:                                              ; preds = %126
  %124 = add nuw nsw i64 %127, 1
  %125 = icmp eq i64 %124, %122
  br i1 %125, label %138, label %126, !llvm.loop !181

126:                                              ; preds = %116, %123
  %127 = phi i64 [ 0, %116 ], [ %124, %123 ]
  %128 = getelementptr inbounds ptr, ptr %120, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !148
  %130 = load i8, ptr %129, align 1, !tbaa !159
  %131 = icmp eq i8 %130, 37
  %132 = zext i1 %131 to i64
  %133 = getelementptr inbounds i8, ptr %129, i64 %132
  %134 = getelementptr inbounds ptr, ptr %119, i64 %127
  %135 = load ptr, ptr %134, align 8, !tbaa !148
  %136 = call i32 @asm_operand_ok(ptr noundef %135, ptr noundef nonnull %133, ptr noundef nonnull %120)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %123

138:                                              ; preds = %126, %123, %114, %111, %4
  %139 = phi i32 [ %9, %4 ], [ 0, %111 ], [ 1, %114 ], [ 1, %123 ], [ 0, %126 ]
  ret i32 %139
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @extract_insn(ptr noundef %0) local_unnamed_addr #10 !prof !182 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %53 [
    i16 24, label %135
    i16 25, label %135
    i16 16, label %135
    i16 20, label %135
    i16 21, label %135
    i16 138, label %135
    i16 23, label %6
    i16 15, label %12
    i16 17, label %28
  ], !prof !187

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %28, label %53, !prof !188

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !148
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %53 [
    i16 23, label %19
    i16 17, label %28
  ], !prof !189

19:                                               ; preds = %12
  %20 = and i32 %17, 65535
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 17
  %26 = icmp eq i32 %20, 17
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %53, !prof !190

28:                                               ; preds = %12, %1, %19, %6
  %29 = tail call i32 @asm_noperands(ptr noundef nonnull %3)
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %31 = icmp sgt i32 %29, -1
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = icmp slt i32 %29, 31
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2078, ptr noundef nonnull @.str.1) #29
  br label %35

35:                                               ; preds = %32, %34
  %36 = tail call ptr @decode_asm_operands(ptr noundef nonnull %3, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), ptr noundef null)
  %37 = icmp eq i32 %29, 0
  br i1 %37, label %97, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), align 8, !tbaa !148
  store i8 1, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %40 = load i8, ptr %39, align 1, !tbaa !159
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %97, label %42

42:                                               ; preds = %38, %42
  %43 = phi i8 [ %50, %42 ], [ %40, %38 ]
  %44 = phi ptr [ %46, %42 ], [ %39, %38 ]
  %45 = phi i8 [ %49, %42 ], [ 1, %38 ]
  %46 = getelementptr inbounds i8, ptr %44, i64 1
  %47 = icmp eq i8 %43, 44
  %48 = zext i1 %47 to i8
  %49 = add i8 %45, %48
  store i8 %49, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %50 = load i8, ptr %46, align 1, !tbaa !159
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %97, label %42, !llvm.loop !191

52:                                               ; preds = %28
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2094, ptr noundef nonnull @.str.1) #29
  br label %53

53:                                               ; preds = %12, %19, %6, %52, %1
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !159
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60, !prof !192

57:                                               ; preds = %53
  %58 = load ptr, ptr %2, align 8, !tbaa !159
  %59 = tail call i32 @recog(ptr noundef %58, ptr noundef %0, ptr noundef null) #29
  store i32 %59, ptr %54, align 8, !tbaa !159
  br label %60

60:                                               ; preds = %53, %57
  %61 = load i32, ptr %54, align 8, !tbaa !159
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64, !prof !193

63:                                               ; preds = %60
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2103, ptr noundef nonnull @.str.1) #29
  br label %64

64:                                               ; preds = %63, %60
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %65, i32 4
  %67 = load i8, ptr %66, align 8, !tbaa !194
  %68 = sext i8 %67 to i32
  store i8 %67, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %69 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %65, i32 6
  %70 = load i8, ptr %69, align 2, !tbaa !196
  store i8 %70, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %71 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %65, i32 5
  %72 = load i8, ptr %71, align 1, !tbaa !197
  store i8 %72, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  tail call void @insn_extract(ptr noundef %0) #29
  %73 = icmp sgt i8 %67, 0
  br i1 %73, label %74, label %97, !prof !198

74:                                               ; preds = %64
  %75 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %65, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !199
  %77 = zext nneg i32 %68 to i64
  br label %78

78:                                               ; preds = %74, %94
  %79 = phi i64 [ 0, %74 ], [ %95, %94 ]
  %80 = getelementptr inbounds %struct.insn_operand_data, ptr %76, i64 %79, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !200
  %82 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %79
  store ptr %81, ptr %82, align 8, !tbaa !148
  %83 = getelementptr inbounds %struct.insn_operand_data, ptr %76, i64 %79, i32 2
  %84 = load i16, ptr %83, align 8
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %79
  store i32 %85, ptr %86, align 4, !tbaa !163
  %87 = icmp eq i16 %84, 0
  br i1 %87, label %88, label %94, !prof !202

88:                                               ; preds = %78
  %89 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %79
  %90 = load ptr, ptr %89, align 8, !tbaa !148
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  store i32 %93, ptr %86, align 4, !tbaa !163
  br label %94

94:                                               ; preds = %78, %88
  %95 = add nuw nsw i64 %79, 1
  %96 = icmp eq i64 %95, %77
  br i1 %96, label %97, label %78, !prof !203, !llvm.loop !204

97:                                               ; preds = %42, %94, %38, %64, %35
  %98 = phi i32 [ 0, %35 ], [ %68, %64 ], [ %29, %38 ], [ %68, %94 ], [ %29, %42 ]
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %114, !prof !198

100:                                              ; preds = %97
  %101 = zext nneg i32 %98 to i64
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ 0, %100 ], [ %112, %102 ]
  %104 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !148
  %106 = load i8, ptr %105, align 1, !tbaa !159
  %107 = icmp eq i8 %106, 61
  %108 = icmp eq i8 %106, 43
  %109 = select i1 %108, i32 2, i32 0, !prof !205
  %110 = select i1 %107, i32 1, i32 %109, !prof !206
  %111 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %103
  store i32 %110, ptr %111, align 4, !tbaa !163
  %112 = add nuw nsw i64 %103, 1
  %113 = icmp eq i64 %112, %101
  br i1 %113, label %114, label %102, !prof !203, !llvm.loop !207

114:                                              ; preds = %102, %97
  %115 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %116 = icmp slt i8 %115, 31
  br i1 %116, label %118, label %117, !prof !208

117:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2126, ptr noundef nonnull @.str.1) #29
  br label %118

118:                                              ; preds = %114, %117
  %119 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !159
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %127, !prof !193

122:                                              ; preds = %118
  %123 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %124 = icmp sgt i8 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = zext nneg i8 %123 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %126, i1 false), !tbaa !159
  br label %134

127:                                              ; preds = %118
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  %128 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %129 = icmp sgt i8 %128, 0
  br i1 %129, label %130, label %134, !prof !198

130:                                              ; preds = %127
  %131 = zext nneg i8 %128 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %131, i1 false), !tbaa !159
  %132 = zext nneg i8 %128 to i32
  %133 = add nsw i32 %132, -1
  store i32 %133, ptr @which_alternative, align 4, !tbaa !163
  br label %134

134:                                              ; preds = %125, %127, %130, %122
  store ptr null, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  store i32 -1, ptr @which_alternative, align 4, !tbaa !163
  br label %135

135:                                              ; preds = %1, %1, %1, %1, %1, %1, %134
  ret void
}

declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @constrain_operands(i32 noundef %0) local_unnamed_addr #10 !prof !210 {
  %2 = alloca [30 x ptr], align 16
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x %struct.funny_match], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #29
  store i32 0, ptr @which_alternative, align 4, !tbaa !163
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %8 = icmp eq i8 %7, 0
  %9 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10, !prof !211
  br i1 %11, label %779, label %12, !prof !212

12:                                               ; preds = %1
  %13 = icmp sgt i8 %7, 0
  br i1 %13, label %14, label %19, !prof !213

14:                                               ; preds = %12
  %15 = zext nneg i8 %7 to i64
  %16 = shl nuw nsw i64 %15, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 -1, i64 %16, i1 false), !tbaa !163
  %17 = zext nneg i8 %7 to i64
  %18 = shl nuw nsw i64 %17, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %18, i1 false), !tbaa !148
  br label %19

19:                                               ; preds = %14, %12
  %20 = icmp slt i32 %0, 0
  %21 = icmp eq i32 %0, 0
  br label %22

22:                                               ; preds = %19, %770
  %23 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !159
  %27 = icmp eq i8 %26, 0
  %28 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %29 = icmp sgt i8 %28, 0
  br i1 %27, label %31, label %30, !prof !214

30:                                               ; preds = %22
  br i1 %29, label %49, label %662, !prof !215

31:                                               ; preds = %22
  br i1 %29, label %32, label %764

32:                                               ; preds = %31
  %33 = zext nneg i8 %28 to i64
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i64 [ 0, %32 ], [ %47, %43 ]
  %36 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !148
  br label %38

38:                                               ; preds = %41, %34
  %39 = phi ptr [ %37, %34 ], [ %42, %41 ]
  %40 = load i8, ptr %39, align 1, !tbaa !159
  switch i8 %40, label %41 [
    i8 0, label %43
    i8 44, label %43
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %39, i64 1
  br label %38, !llvm.loop !216

43:                                               ; preds = %38, %38
  %44 = icmp eq i8 %40, 44
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds i8, ptr %39, i64 %45
  store ptr %46, ptr %36, align 8, !tbaa !148
  %47 = add nuw nsw i64 %35, 1
  %48 = icmp eq i64 %47, %33
  br i1 %48, label %764, label %34, !llvm.loop !217

49:                                               ; preds = %30, %655
  %50 = phi i64 [ %658, %655 ], [ 0, %30 ]
  %51 = phi i32 [ %648, %655 ], [ 0, %30 ]
  %52 = phi i32 [ %657, %655 ], [ 0, %30 ]
  %53 = phi i32 [ %647, %655 ], [ -1, %30 ]
  %54 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %50
  %55 = load ptr, ptr %54, align 8, !tbaa !148
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %50
  %60 = load ptr, ptr %59, align 8, !tbaa !148
  %61 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %50
  store i32 0, ptr %61, align 4, !tbaa !163
  %62 = and i32 %56, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !163
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %70, !prof !218

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !159
  br label %70

70:                                               ; preds = %67, %49
  %71 = phi ptr [ %69, %67 ], [ %55, %49 ]
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 39
  br i1 %74, label %75, label %96, !prof !219

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 37
  br i1 %80, label %81, label %93, !prof !220

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !159
  %84 = icmp ult i32 %83, 53
  br i1 %84, label %85, label %93, !prof !221

85:                                               ; preds = %81
  %86 = lshr i32 %78, 16
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load i32, ptr %88, align 8, !tbaa !159
  %90 = lshr i32 %72, 16
  %91 = and i32 %90, 255
  %92 = tail call i32 @subreg_regno_offset(i32 noundef %83, i32 noundef %87, i32 noundef %89, i32 noundef %91) #29
  br label %93

93:                                               ; preds = %85, %81, %75
  %94 = phi i32 [ %92, %85 ], [ 0, %81 ], [ 0, %75 ]
  %95 = load ptr, ptr %76, align 8, !tbaa !159
  br label %96

96:                                               ; preds = %93, %70
  %97 = phi ptr [ %95, %93 ], [ %71, %70 ]
  %98 = phi i32 [ %94, %93 ], [ 0, %70 ]
  %99 = load i8, ptr %60, align 1, !tbaa !159
  %100 = icmp eq i8 %99, 0
  %101 = icmp eq i8 %99, 44
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i32
  br label %104

104:                                              ; preds = %646, %96
  %105 = phi i32 [ %53, %96 ], [ %647, %646 ]
  %106 = phi i32 [ %51, %96 ], [ %648, %646 ]
  %107 = phi ptr [ %60, %96 ], [ %653, %646 ]
  %108 = phi i32 [ %103, %96 ], [ %650, %646 ]
  %109 = load i8, ptr %107, align 1, !tbaa !159
  %110 = sext i8 %109 to i32
  %111 = icmp eq i8 %109, 89
  %112 = select i1 %111, i64 2, i64 1, !prof !222
  switch i8 %109, label %589 [
    i8 0, label %113
    i8 44, label %114
    i8 63, label %646
    i8 33, label %646
    i8 42, label %646
    i8 37, label %646
    i8 61, label %646
    i8 43, label %646
    i8 35, label %115
    i8 38, label %119
    i8 48, label %123
    i8 49, label %123
    i8 50, label %123
    i8 51, label %123
    i8 52, label %123
    i8 53, label %123
    i8 54, label %123
    i8 55, label %123
    i8 56, label %123
    i8 57, label %123
    i8 112, label %177
    i8 103, label %185
    i8 88, label %373
    i8 109, label %374
    i8 60, label %432
    i8 62, label %442
    i8 69, label %452
    i8 70, label %452
    i8 71, label %463
    i8 72, label %463
    i8 115, label %472
    i8 105, label %478
    i8 110, label %486
    i8 73, label %493
    i8 74, label %493
    i8 75, label %493
    i8 76, label %493
    i8 77, label %493
    i8 78, label %493
    i8 79, label %493
    i8 80, label %493
    i8 86, label %504
    i8 111, label %536
  ], !prof !223

113:                                              ; preds = %104
  br label %646

114:                                              ; preds = %104
  br label %646

115:                                              ; preds = %104, %115
  %116 = phi ptr [ %117, %115 ], [ %107, %104 ]
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = load i8, ptr %117, align 1, !tbaa !159
  switch i8 %118, label %115 [
    i8 0, label %646
    i8 44, label %646
  ]

119:                                              ; preds = %104
  %120 = trunc i64 %50 to i32
  store i32 1, ptr %61, align 4, !tbaa !163
  %121 = icmp slt i32 %105, 0
  %122 = select i1 %121, i32 %120, i32 %105
  br label %646

123:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104, %104, %104
  %124 = icmp slt i32 %0, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %125 = call i64 @strtoul(ptr noundef %107, ptr noundef nonnull %6, i32 noundef 10)
  %126 = trunc i64 %125 to i32
  %127 = load ptr, ptr %6, align 8, !tbaa !148
  br i1 %124, label %157, label %128, !prof !224

128:                                              ; preds = %123
  %129 = shl i64 %125, 32
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !148
  %133 = load ptr, ptr %54, align 8, !tbaa !148
  %134 = load i32, ptr %132, align 8
  %135 = and i32 %134, 65535
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !163
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %140, label %143, !prof !225

140:                                              ; preds = %128
  %141 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !159
  br label %143

143:                                              ; preds = %140, %128
  %144 = phi ptr [ %142, %140 ], [ %132, %128 ]
  %145 = load i32, ptr %133, align 8
  %146 = and i32 %145, 65535
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !163
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %154, !prof !225

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !159
  br label %154

154:                                              ; preds = %151, %143
  %155 = phi ptr [ %153, %151 ], [ %133, %143 ]
  %156 = tail call i32 @operands_match_p(ptr noundef %144, ptr noundef %155) #29
  br label %157

157:                                              ; preds = %123, %154
  %158 = phi i32 [ %156, %154 ], [ 1, %123 ]
  %159 = icmp sgt i32 %0, 0
  %160 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %50
  %161 = trunc i64 %50 to i32
  store i32 %126, ptr %160, align 4, !tbaa !163
  %162 = shl i64 %125, 32
  %163 = ashr exact i64 %162, 32
  %164 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %163
  store i32 %161, ptr %164, align 4, !tbaa !163
  %165 = icmp eq i32 %158, 0
  %166 = select i1 %165, i32 %108, i32 1, !prof !226
  %167 = icmp eq i32 %158, 2
  %168 = and i1 %159, %167
  br i1 %168, label %169, label %175, !prof !227

169:                                              ; preds = %157
  %170 = trunc i64 %50 to i32
  %171 = sext i32 %106 to i64
  %172 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %171
  store i32 %170, ptr %172, align 8, !tbaa !228
  %173 = add nsw i32 %106, 1
  %174 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %171, i32 1
  store i32 %126, ptr %174, align 4, !tbaa !230
  br label %175

175:                                              ; preds = %169, %157
  %176 = phi i32 [ %173, %169 ], [ %106, %157 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %646

177:                                              ; preds = %104
  %178 = icmp slt i32 %0, 1
  br i1 %178, label %184, label %179, !prof !231

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %50
  %181 = load i32, ptr %180, align 4, !tbaa !163
  %182 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %181, ptr noundef %97, i8 noundef zeroext 0) #29
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %646, label %184, !prof !232

184:                                              ; preds = %179, %177
  br label %646

185:                                              ; preds = %104
  %186 = load i32, ptr %97, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %224, !prof !233

189:                                              ; preds = %185
  %190 = icmp slt i32 %0, 0
  br i1 %190, label %646, label %191, !prof !234

191:                                              ; preds = %189
  %192 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194, !prof !235

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !159
  %197 = icmp ugt i32 %196, 52
  br i1 %197, label %646, label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %200 = load i32, ptr %199, align 8, !tbaa !159
  %201 = icmp slt i32 %200, 53
  br i1 %201, label %202, label %646, !prof !236

202:                                              ; preds = %198
  %203 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !237
  %204 = add nsw i32 %200, %98
  %205 = zext nneg i32 %204 to i64
  %206 = shl nuw i64 1, %205
  %207 = and i64 %203, %206
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %646, label %209, !prof !238

209:                                              ; preds = %202
  %210 = zext nneg i32 %58 to i64
  %211 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %205, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !159
  %213 = zext i8 %212 to i32
  %214 = add i32 %204, %213
  br label %215

215:                                              ; preds = %219, %209
  %216 = phi i32 [ %204, %209 ], [ %217, %219 ]
  %217 = add i32 %216, 1
  %218 = icmp ult i32 %217, %214
  br i1 %218, label %219, label %646, !prof !239

219:                                              ; preds = %215
  %220 = zext nneg i32 %217 to i64
  %221 = shl nuw i64 1, %220
  %222 = and i64 %221, %203
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %646, label %215, !llvm.loop !240

224:                                              ; preds = %185
  %225 = icmp slt i32 %0, 0
  br i1 %225, label %372, label %226, !prof !241

226:                                              ; preds = %224
  %227 = icmp eq i32 %58, 0
  %228 = lshr i32 %186, 16
  %229 = and i32 %228, 255
  %230 = select i1 %227, i32 %229, i32 %58, !prof !242
  %231 = and i32 %186, 16711680
  %232 = icmp eq i32 %231, 0
  %233 = icmp ne i32 %230, 0
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %241, !prof !243

235:                                              ; preds = %226
  %236 = zext nneg i32 %230 to i64
  %237 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !159
  %239 = and i8 %238, -2
  %240 = icmp eq i8 %239, 2
  br i1 %240, label %241, label %369, !prof !244

241:                                              ; preds = %235, %226
  %242 = icmp eq i32 %187, 30
  %243 = and i1 %242, %233
  br i1 %243, label %244, label %250, !prof !245

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !159
  %247 = tail call i64 @trunc_int_for_mode(i64 noundef %246, i32 noundef %230) #29
  %248 = load i64, ptr %245, align 8, !tbaa !159
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %369, !prof !246

250:                                              ; preds = %244, %241
  %251 = load i32, ptr %97, align 8
  %252 = and i32 %251, 65535
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !163
  %256 = icmp eq i32 %255, 9
  %257 = lshr i32 %251, 16
  %258 = and i32 %257, 255
  br i1 %256, label %259, label %275, !prof !247

259:                                              ; preds = %250
  %260 = icmp eq i32 %258, 0
  br i1 %260, label %265, label %261, !prof !248

261:                                              ; preds = %259
  %262 = icmp eq i32 %258, %230
  %263 = icmp eq i32 %230, 0
  %264 = or i1 %263, %262
  br i1 %264, label %265, label %369, !prof !249

265:                                              ; preds = %261, %259
  %266 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %271, label %268, !prof !250

268:                                              ; preds = %265
  %269 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %97) #29
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %369, label %271

271:                                              ; preds = %268, %265
  %272 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %97) #29
  %273 = icmp ne i8 %272, 0
  %274 = zext i1 %273 to i32
  br label %369

275:                                              ; preds = %250
  %276 = icmp eq i32 %258, %230
  br i1 %276, label %277, label %369, !prof !251

277:                                              ; preds = %275
  %278 = icmp eq i32 %187, 39
  br i1 %278, label %279, label %326, !prof !252

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !159
  %282 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %303, !prof !253

284:                                              ; preds = %279
  %285 = load i32, ptr %281, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 43
  br i1 %287, label %288, label %298, !prof !254

288:                                              ; preds = %284
  %289 = zext nneg i32 %230 to i64
  %290 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !159
  %292 = lshr i32 %285, 16
  %293 = and i32 %292, 255
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !159
  %297 = icmp ugt i8 %291, %296
  br i1 %297, label %322, label %298

298:                                              ; preds = %284, %288
  %299 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load i32, ptr %299, align 8, !tbaa !159
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %303, label %302, !prof !253

302:                                              ; preds = %298
  br i1 %287, label %322, label %303

303:                                              ; preds = %302, %298, %279
  %304 = zext nneg i32 %258 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !159
  %307 = and i8 %306, -2
  %308 = icmp eq i8 %307, 8
  br i1 %308, label %309, label %319, !prof !254

309:                                              ; preds = %303
  %310 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %304
  %311 = load i8, ptr %310, align 1, !tbaa !159
  %312 = load i32, ptr %281, align 8
  %313 = lshr i32 %312, 16
  %314 = and i32 %313, 255
  %315 = zext nneg i32 %314 to i64
  %316 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !159
  %318 = icmp ugt i8 %311, %317
  br i1 %318, label %322, label %319

319:                                              ; preds = %309, %303
  %320 = load i32, ptr %281, align 8
  %321 = and i32 %320, 65535
  br label %322

322:                                              ; preds = %319, %309, %302, %288
  %323 = phi i32 [ %321, %319 ], [ 39, %288 ], [ 39, %302 ], [ 39, %309 ]
  %324 = phi i1 [ true, %319 ], [ false, %288 ], [ false, %302 ], [ false, %309 ]
  %325 = phi ptr [ %281, %319 ], [ %97, %288 ], [ %97, %302 ], [ %97, %309 ]
  br i1 %324, label %326, label %369, !prof !253

326:                                              ; preds = %322, %277
  %327 = phi i32 [ %323, %322 ], [ %187, %277 ]
  %328 = phi ptr [ %325, %322 ], [ %97, %277 ]
  switch i32 %327, label %368 [
    i32 37, label %329
    i32 43, label %339
  ], !prof !255

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !159
  %332 = icmp ugt i32 %331, 52
  br i1 %332, label %369, label %333, !prof !256

333:                                              ; preds = %329
  %334 = zext nneg i32 %331 to i64
  %335 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !163
  %337 = icmp ne i32 %336, 0
  %338 = zext i1 %337 to i32
  br label %369

339:                                              ; preds = %326
  %340 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !159
  %342 = load i32, ptr @volatile_ok, align 4, !tbaa !163
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %348, !prof !257

344:                                              ; preds = %339
  %345 = load i32, ptr %328, align 8
  %346 = and i32 %345, 134217728
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %365, !prof !258

348:                                              ; preds = %344, %339
  %349 = load i32, ptr %328, align 8
  %350 = lshr i32 %349, 16
  %351 = and i32 %350, 255
  %352 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !159
  %354 = icmp eq ptr %353, null
  br i1 %354, label %358, label %355, !prof !259

355:                                              ; preds = %348
  %356 = getelementptr inbounds %struct.mem_attrs, ptr %353, i64 0, i32 5
  %357 = load i8, ptr %356, align 8, !tbaa !260
  br label %358

358:                                              ; preds = %355, %348
  %359 = phi i8 [ %357, %355 ], [ 0, %348 ]
  %360 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %361 = tail call zeroext i8 %360(i32 noundef %351, ptr noundef %341, i8 noundef zeroext 0, i8 noundef zeroext %359) #29, !prof !274
  %362 = icmp eq i8 %361, 0
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i32
  br label %365

365:                                              ; preds = %358, %344
  %366 = phi i1 [ false, %344 ], [ %362, %358 ]
  %367 = phi i32 [ 0, %344 ], [ %364, %358 ]
  br i1 %366, label %368, label %369, !prof !275

368:                                              ; preds = %365, %326
  br label %369

369:                                              ; preds = %235, %244, %261, %268, %271, %275, %322, %329, %333, %365, %368
  %370 = phi i32 [ 0, %368 ], [ 0, %322 ], [ 0, %235 ], [ %274, %271 ], [ 0, %261 ], [ 0, %275 ], [ 1, %329 ], [ %338, %333 ], [ 0, %244 ], [ 0, %268 ], [ %367, %365 ]
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %646, label %372, !prof !276

372:                                              ; preds = %369, %224
  br label %646

373:                                              ; preds = %104
  br label %646

374:                                              ; preds = %104
  %375 = load i32, ptr %97, align 8
  %376 = and i32 %375, 65535
  %377 = icmp eq i32 %376, 43
  br i1 %377, label %378, label %415, !prof !277

378:                                              ; preds = %374
  %379 = icmp sgt i32 %0, 0
  br i1 %379, label %380, label %395, !prof !278

380:                                              ; preds = %378
  %381 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %382 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = load ptr, ptr %381, align 8, !tbaa !159
  %386 = load ptr, ptr %382, align 8, !tbaa !159
  %387 = icmp eq ptr %386, null
  br i1 %387, label %391, label %388, !prof !279

388:                                              ; preds = %380
  %389 = getelementptr inbounds %struct.mem_attrs, ptr %386, i64 0, i32 5
  %390 = load i8, ptr %389, align 8, !tbaa !260
  br label %391

391:                                              ; preds = %380, %388
  %392 = phi i8 [ %390, %388 ], [ 0, %380 ]
  %393 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %384, ptr noundef %385, i8 noundef zeroext %392) #29
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %646, label %395, !prof !280

395:                                              ; preds = %391, %378
  %396 = icmp eq i32 %0, 0
  br i1 %396, label %397, label %414, !prof !281

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %399 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %400 = load i32, ptr %97, align 8
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  %403 = load ptr, ptr %398, align 8, !tbaa !159
  %404 = load ptr, ptr %399, align 8, !tbaa !159
  %405 = icmp eq ptr %404, null
  br i1 %405, label %409, label %406, !prof !282

406:                                              ; preds = %397
  %407 = getelementptr inbounds %struct.mem_attrs, ptr %404, i64 0, i32 5
  %408 = load i8, ptr %407, align 8, !tbaa !260
  br label %409

409:                                              ; preds = %397, %406
  %410 = phi i8 [ %408, %406 ], [ 0, %397 ]
  %411 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %412 = tail call zeroext i8 %411(i32 noundef %402, ptr noundef %403, i8 noundef zeroext 0, i8 noundef zeroext %410) #29, !prof !283
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %646, label %414, !prof !284

414:                                              ; preds = %409, %395
  br label %646

415:                                              ; preds = %374
  %416 = icmp slt i32 %0, 0
  br i1 %416, label %417, label %422, !prof !285

417:                                              ; preds = %415
  %418 = zext nneg i32 %376 to i64
  %419 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !163
  %421 = icmp eq i32 %420, 9
  br i1 %421, label %646, label %422, !prof !286

422:                                              ; preds = %417, %415
  %423 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %646, label %425, !prof !287

425:                                              ; preds = %422
  %426 = icmp eq i32 %376, 37
  br i1 %426, label %427, label %646

427:                                              ; preds = %425
  %428 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %429 = load i32, ptr %428, align 8, !tbaa !159
  %430 = icmp ugt i32 %429, 52
  %431 = select i1 %430, i32 1, i32 %108
  br label %646

432:                                              ; preds = %104
  %433 = load i32, ptr %97, align 8
  %434 = and i32 %433, 65535
  %435 = icmp eq i32 %434, 43
  br i1 %435, label %436, label %646, !prof !288

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !159
  %439 = load i32, ptr %438, align 8
  %440 = trunc i32 %439 to i16
  switch i16 %440, label %646 [
    i16 74, label %441
    i16 76, label %441
  ], !prof !289

441:                                              ; preds = %436, %436
  br label %646

442:                                              ; preds = %104
  %443 = load i32, ptr %97, align 8
  %444 = and i32 %443, 65535
  %445 = icmp eq i32 %444, 43
  br i1 %445, label %446, label %646

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !159
  %449 = load i32, ptr %448, align 8
  %450 = trunc i32 %449 to i16
  switch i16 %450, label %646 [
    i16 75, label %451
    i16 77, label %451
  ]

451:                                              ; preds = %446, %446
  br label %646

452:                                              ; preds = %104, %104
  %453 = load i32, ptr %97, align 8
  %454 = trunc i32 %453 to i16
  switch i16 %454, label %646 [
    i16 32, label %462
    i16 33, label %455
  ], !prof !290

455:                                              ; preds = %452
  %456 = lshr i32 %453, 16
  %457 = and i32 %456, 255
  %458 = zext nneg i32 %457 to i64
  %459 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !159
  %461 = icmp eq i8 %460, 17
  br i1 %461, label %462, label %646

462:                                              ; preds = %452, %455
  br label %646

463:                                              ; preds = %104, %104
  %464 = load i32, ptr %97, align 8
  %465 = and i32 %464, 65535
  %466 = icmp eq i32 %465, 32
  br i1 %466, label %467, label %646, !prof !291

467:                                              ; preds = %463
  %468 = tail call i32 @lookup_constraint(ptr noundef %107) #29
  %469 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %97, i32 noundef %468) #29
  %470 = icmp eq i8 %469, 0
  %471 = select i1 %470, i32 %108, i32 1
  br label %646

472:                                              ; preds = %104
  %473 = load i32, ptr %97, align 8
  %474 = trunc i32 %473 to i16
  switch i16 %474, label %478 [
    i16 30, label %646
    i16 32, label %475
  ]

475:                                              ; preds = %472
  %476 = and i32 %473, 16711680
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %646, label %478

478:                                              ; preds = %472, %475, %104
  %479 = load i32, ptr %97, align 8
  %480 = and i32 %479, 65535
  %481 = zext nneg i32 %480 to i64
  %482 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !163
  %484 = icmp eq i32 %483, 9
  %485 = select i1 %484, i32 1, i32 %108, !prof !292
  br label %646

486:                                              ; preds = %104
  %487 = load i32, ptr %97, align 8
  %488 = trunc i32 %487 to i16
  switch i16 %488, label %646 [
    i16 30, label %492
    i16 32, label %489
  ], !prof !293

489:                                              ; preds = %486
  %490 = and i32 %487, 16711680
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %646

492:                                              ; preds = %489, %486
  br label %646

493:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104
  %494 = load i32, ptr %97, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 30
  br i1 %496, label %497, label %646, !prof !294

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %499 = load i64, ptr %498, align 8, !tbaa !159
  %500 = tail call i32 @lookup_constraint(ptr noundef %107) #29
  %501 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %499, i32 noundef %500) #29
  %502 = icmp eq i8 %501, 0
  %503 = select i1 %502, i32 %108, i32 1, !prof !295
  br label %646

504:                                              ; preds = %104
  %505 = load i32, ptr %97, align 8
  %506 = and i32 %505, 65535
  %507 = icmp eq i32 %506, 43
  br i1 %507, label %508, label %646

508:                                              ; preds = %504
  %509 = icmp sgt i32 %0, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %508
  %511 = tail call i32 @offsettable_memref_p(ptr noundef %97), !range !296
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %535, label %513

513:                                              ; preds = %510, %508
  %514 = icmp slt i32 %0, 0
  br i1 %514, label %515, label %524

515:                                              ; preds = %513
  %516 = load i32, ptr %97, align 8
  %517 = and i32 %516, 65535
  %518 = zext nneg i32 %517 to i64
  %519 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !163
  %521 = icmp eq i32 %520, 9
  %522 = icmp eq i32 %517, 43
  %523 = or i1 %521, %522
  br i1 %523, label %524, label %535

524:                                              ; preds = %515, %513
  %525 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %646, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %97, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 37
  br i1 %530, label %531, label %535

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %533 = load i32, ptr %532, align 8, !tbaa !159
  %534 = icmp ugt i32 %533, 52
  br i1 %534, label %646, label %535

535:                                              ; preds = %531, %515, %527, %510
  br label %646

536:                                              ; preds = %104
  %537 = icmp sgt i32 %0, 0
  br i1 %537, label %538, label %561, !prof !297

538:                                              ; preds = %536
  %539 = load i32, ptr %97, align 8
  %540 = and i32 %539, 65535
  %541 = icmp eq i32 %540, 43
  br i1 %541, label %542, label %558, !prof !298

542:                                              ; preds = %538
  %543 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %544 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %545 = lshr i32 %539, 16
  %546 = and i32 %545, 255
  %547 = load ptr, ptr %543, align 8, !tbaa !159
  %548 = load ptr, ptr %544, align 8, !tbaa !159
  %549 = icmp eq ptr %548, null
  br i1 %549, label %553, label %550

550:                                              ; preds = %542
  %551 = getelementptr inbounds %struct.mem_attrs, ptr %548, i64 0, i32 5
  %552 = load i8, ptr %551, align 8, !tbaa !260
  br label %553

553:                                              ; preds = %550, %542
  %554 = phi i8 [ %552, %550 ], [ 0, %542 ]
  %555 = tail call i32 @offsettable_address_addr_space_p(i32 noundef 1, i32 noundef %546, ptr noundef %547, i8 noundef zeroext %554)
  %556 = icmp ne i32 %555, 0
  %557 = zext i1 %556 to i32
  br label %558

558:                                              ; preds = %538, %553
  %559 = phi i32 [ 0, %538 ], [ %557, %553 ]
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %588, !prof !297

561:                                              ; preds = %558, %536
  %562 = icmp eq i32 %0, 0
  br i1 %562, label %563, label %566, !prof !298

563:                                              ; preds = %561
  %564 = tail call i32 @offsettable_nonstrict_memref_p(ptr noundef %97), !range !296
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %588

566:                                              ; preds = %563, %561
  %567 = icmp slt i32 %0, 0
  br i1 %567, label %568, label %577, !prof !298

568:                                              ; preds = %566
  %569 = load i32, ptr %97, align 8
  %570 = and i32 %569, 65535
  %571 = zext nneg i32 %570 to i64
  %572 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %571
  %573 = load i32, ptr %572, align 4, !tbaa !163
  %574 = icmp eq i32 %573, 9
  %575 = icmp eq i32 %570, 43
  %576 = or i1 %574, %575
  br i1 %576, label %588, label %577

577:                                              ; preds = %568, %566
  %578 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %646, label %580, !prof !297

580:                                              ; preds = %577
  %581 = load i32, ptr %97, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 37
  br i1 %583, label %584, label %646

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %586 = load i32, ptr %585, align 8, !tbaa !159
  %587 = icmp ugt i32 %586, 52
  br i1 %587, label %588, label %646

588:                                              ; preds = %584, %568, %563, %558
  br label %646

589:                                              ; preds = %104
  %590 = icmp eq i8 %109, 114
  br i1 %590, label %594, label %591, !prof !299

591:                                              ; preds = %589
  %592 = tail call i32 @lookup_constraint(ptr noundef %107) #29
  %593 = tail call i32 @regclass_for_constraint(i32 noundef %592) #29
  br label %594

594:                                              ; preds = %589, %591
  %595 = phi i32 [ %593, %591 ], [ 13, %589 ]
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %641, label %597, !prof !300

597:                                              ; preds = %594
  br i1 %20, label %646, label %598, !prof !301

598:                                              ; preds = %597
  br i1 %21, label %599, label %609, !prof !302

599:                                              ; preds = %598
  %600 = load i32, ptr %97, align 8
  %601 = and i32 %600, 65535
  %602 = trunc i32 %600 to i16
  switch i16 %602, label %609 [
    i16 37, label %603
    i16 38, label %646
  ], !prof !303

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !159
  %606 = icmp ugt i32 %605, 52
  br i1 %606, label %646, label %607, !prof !304

607:                                              ; preds = %603
  %608 = icmp eq i32 %601, 38
  br i1 %608, label %646, label %609, !prof !305

609:                                              ; preds = %607, %599, %598
  %610 = load i32, ptr %97, align 8
  %611 = and i32 %610, 65535
  %612 = icmp eq i32 %611, 37
  br i1 %612, label %613, label %646, !prof !306

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %615 = load i32, ptr %614, align 8, !tbaa !159
  %616 = icmp slt i32 %615, 53
  br i1 %616, label %617, label %646, !prof !307

617:                                              ; preds = %613
  %618 = sext i32 %595 to i64
  %619 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %618
  %620 = load i64, ptr %619, align 8, !tbaa !237
  %621 = add nsw i32 %615, %98
  %622 = zext nneg i32 %621 to i64
  %623 = shl nuw i64 1, %622
  %624 = and i64 %620, %623
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %646, label %626, !prof !308

626:                                              ; preds = %617
  %627 = zext nneg i32 %58 to i64
  %628 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %622, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !159
  %630 = zext i8 %629 to i32
  %631 = add i32 %621, %630
  br label %632

632:                                              ; preds = %636, %626
  %633 = phi i32 [ %621, %626 ], [ %634, %636 ]
  %634 = add i32 %633, 1
  %635 = icmp ult i32 %634, %631
  br i1 %635, label %636, label %646, !prof !309

636:                                              ; preds = %632
  %637 = zext nneg i32 %634 to i64
  %638 = shl nuw i64 1, %637
  %639 = and i64 %638, %620
  %640 = icmp eq i64 %639, 0
  br i1 %640, label %646, label %632, !prof !310, !llvm.loop !240

641:                                              ; preds = %594
  %642 = tail call i32 @lookup_constraint(ptr noundef %107) #29
  %643 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %97, i32 noundef %642) #29
  %644 = icmp eq i8 %643, 0
  %645 = select i1 %644, i32 %108, i32 1, !prof !311
  br label %646

646:                                              ; preds = %219, %215, %115, %115, %636, %632, %613, %617, %198, %202, %597, %603, %607, %599, %584, %493, %475, %472, %463, %455, %452, %409, %189, %194, %104, %104, %104, %104, %104, %104, %641, %497, %478, %467, %427, %119, %609, %486, %446, %436, %417, %113, %114, %175, %373, %184, %179, %369, %372, %391, %425, %422, %414, %441, %432, %451, %442, %462, %492, %489, %535, %531, %524, %504, %588, %580, %577
  %647 = phi i32 [ %105, %588 ], [ %105, %580 ], [ %105, %577 ], [ %105, %531 ], [ %105, %535 ], [ %105, %524 ], [ %105, %504 ], [ %105, %492 ], [ %105, %489 ], [ %105, %462 ], [ %105, %451 ], [ %105, %442 ], [ %105, %441 ], [ %105, %432 ], [ %105, %414 ], [ %105, %391 ], [ %105, %425 ], [ %105, %422 ], [ %105, %373 ], [ %105, %372 ], [ %105, %369 ], [ %105, %184 ], [ %105, %179 ], [ %105, %175 ], [ %105, %114 ], [ %105, %113 ], [ %122, %119 ], [ %105, %417 ], [ %105, %427 ], [ %105, %436 ], [ %105, %446 ], [ %105, %467 ], [ %105, %478 ], [ %105, %486 ], [ %105, %497 ], [ %105, %641 ], [ %105, %609 ], [ %105, %104 ], [ %105, %104 ], [ %105, %104 ], [ %105, %104 ], [ %105, %104 ], [ %105, %104 ], [ %105, %194 ], [ %105, %189 ], [ %105, %409 ], [ %105, %452 ], [ %105, %455 ], [ %105, %463 ], [ %105, %472 ], [ %105, %475 ], [ %105, %493 ], [ %105, %584 ], [ %105, %599 ], [ %105, %607 ], [ %105, %603 ], [ %105, %597 ], [ %105, %202 ], [ %105, %198 ], [ %105, %617 ], [ %105, %613 ], [ %105, %632 ], [ %105, %636 ], [ %105, %115 ], [ %105, %115 ], [ %105, %215 ], [ %105, %219 ]
  %648 = phi i32 [ %106, %588 ], [ %106, %580 ], [ %106, %577 ], [ %106, %531 ], [ %106, %535 ], [ %106, %524 ], [ %106, %504 ], [ %106, %492 ], [ %106, %489 ], [ %106, %462 ], [ %106, %451 ], [ %106, %442 ], [ %106, %441 ], [ %106, %432 ], [ %106, %414 ], [ %106, %391 ], [ %106, %425 ], [ %106, %422 ], [ %106, %373 ], [ %106, %372 ], [ %106, %369 ], [ %106, %184 ], [ %106, %179 ], [ %176, %175 ], [ %106, %114 ], [ %106, %113 ], [ %106, %119 ], [ %106, %417 ], [ %106, %427 ], [ %106, %436 ], [ %106, %446 ], [ %106, %467 ], [ %106, %478 ], [ %106, %486 ], [ %106, %497 ], [ %106, %641 ], [ %106, %609 ], [ %106, %104 ], [ %106, %104 ], [ %106, %104 ], [ %106, %104 ], [ %106, %104 ], [ %106, %104 ], [ %106, %194 ], [ %106, %189 ], [ %106, %409 ], [ %106, %452 ], [ %106, %455 ], [ %106, %463 ], [ %106, %472 ], [ %106, %475 ], [ %106, %493 ], [ %106, %584 ], [ %106, %599 ], [ %106, %607 ], [ %106, %603 ], [ %106, %597 ], [ %106, %202 ], [ %106, %198 ], [ %106, %617 ], [ %106, %613 ], [ %106, %632 ], [ %106, %636 ], [ %106, %115 ], [ %106, %115 ], [ %106, %215 ], [ %106, %219 ]
  %649 = phi ptr [ %107, %588 ], [ %107, %580 ], [ %107, %577 ], [ %107, %531 ], [ %107, %535 ], [ %107, %524 ], [ %107, %504 ], [ %107, %492 ], [ %107, %489 ], [ %107, %462 ], [ %107, %451 ], [ %107, %442 ], [ %107, %441 ], [ %107, %432 ], [ %107, %414 ], [ %107, %391 ], [ %107, %425 ], [ %107, %422 ], [ %107, %373 ], [ %107, %372 ], [ %107, %369 ], [ %107, %184 ], [ %107, %179 ], [ %127, %175 ], [ %107, %114 ], [ %107, %113 ], [ %107, %119 ], [ %107, %417 ], [ %107, %427 ], [ %107, %436 ], [ %107, %446 ], [ %107, %467 ], [ %107, %478 ], [ %107, %486 ], [ %107, %497 ], [ %107, %641 ], [ %107, %609 ], [ %107, %104 ], [ %107, %104 ], [ %107, %104 ], [ %107, %104 ], [ %107, %104 ], [ %107, %104 ], [ %107, %194 ], [ %107, %189 ], [ %107, %409 ], [ %107, %452 ], [ %107, %455 ], [ %107, %463 ], [ %107, %472 ], [ %107, %475 ], [ %107, %493 ], [ %107, %584 ], [ %107, %599 ], [ %107, %607 ], [ %107, %603 ], [ %107, %597 ], [ %107, %202 ], [ %107, %198 ], [ %107, %617 ], [ %107, %613 ], [ %107, %632 ], [ %107, %636 ], [ %117, %115 ], [ %117, %115 ], [ %107, %215 ], [ %107, %219 ]
  %650 = phi i32 [ 1, %588 ], [ %108, %580 ], [ %108, %577 ], [ %108, %531 ], [ 1, %535 ], [ %108, %524 ], [ %108, %504 ], [ 1, %492 ], [ %108, %489 ], [ 1, %462 ], [ 1, %451 ], [ %108, %442 ], [ 1, %441 ], [ %108, %432 ], [ 1, %414 ], [ %108, %391 ], [ %108, %425 ], [ %108, %422 ], [ 1, %373 ], [ 1, %372 ], [ %108, %369 ], [ 1, %184 ], [ %108, %179 ], [ %166, %175 ], [ %108, %114 ], [ %108, %113 ], [ %108, %119 ], [ 1, %417 ], [ %431, %427 ], [ %108, %436 ], [ %108, %446 ], [ %471, %467 ], [ %485, %478 ], [ %108, %486 ], [ %503, %497 ], [ %645, %641 ], [ %108, %609 ], [ %108, %104 ], [ %108, %104 ], [ %108, %104 ], [ %108, %104 ], [ %108, %104 ], [ %108, %104 ], [ 1, %194 ], [ 1, %189 ], [ %108, %409 ], [ %108, %452 ], [ %108, %455 ], [ %108, %463 ], [ %108, %472 ], [ %108, %475 ], [ %108, %493 ], [ %108, %584 ], [ 1, %599 ], [ 1, %607 ], [ 1, %603 ], [ 1, %597 ], [ %108, %202 ], [ %108, %198 ], [ %108, %617 ], [ %108, %613 ], [ %108, %636 ], [ 1, %632 ], [ %108, %115 ], [ %108, %115 ], [ %108, %219 ], [ 1, %215 ]
  %651 = phi i64 [ %112, %588 ], [ %112, %580 ], [ %112, %577 ], [ %112, %531 ], [ %112, %535 ], [ %112, %524 ], [ %112, %504 ], [ %112, %492 ], [ %112, %489 ], [ %112, %462 ], [ %112, %451 ], [ %112, %442 ], [ %112, %441 ], [ %112, %432 ], [ %112, %414 ], [ %112, %391 ], [ %112, %425 ], [ %112, %422 ], [ %112, %373 ], [ %112, %372 ], [ %112, %369 ], [ %112, %184 ], [ %112, %179 ], [ 0, %175 ], [ %112, %114 ], [ 0, %113 ], [ %112, %119 ], [ %112, %417 ], [ %112, %427 ], [ %112, %436 ], [ %112, %446 ], [ %112, %467 ], [ %112, %478 ], [ %112, %486 ], [ %112, %497 ], [ %112, %641 ], [ %112, %609 ], [ %112, %104 ], [ %112, %104 ], [ %112, %104 ], [ %112, %104 ], [ %112, %104 ], [ %112, %104 ], [ %112, %194 ], [ %112, %189 ], [ %112, %409 ], [ %112, %452 ], [ %112, %455 ], [ %112, %463 ], [ %112, %472 ], [ %112, %475 ], [ %112, %493 ], [ %112, %584 ], [ %112, %599 ], [ %112, %607 ], [ %112, %603 ], [ %112, %597 ], [ %112, %202 ], [ %112, %198 ], [ %112, %617 ], [ %112, %613 ], [ %112, %632 ], [ %112, %636 ], [ 0, %115 ], [ 0, %115 ], [ %112, %215 ], [ %112, %219 ]
  %652 = phi i32 [ 111, %588 ], [ 111, %580 ], [ 111, %577 ], [ 111, %531 ], [ 111, %535 ], [ 111, %524 ], [ 111, %504 ], [ 111, %492 ], [ 111, %489 ], [ %110, %462 ], [ 111, %451 ], [ 111, %442 ], [ 111, %441 ], [ 111, %432 ], [ 111, %414 ], [ 111, %391 ], [ 111, %425 ], [ 111, %422 ], [ 111, %373 ], [ 111, %372 ], [ 111, %369 ], [ 111, %184 ], [ 111, %179 ], [ %110, %175 ], [ 0, %114 ], [ 0, %113 ], [ 111, %119 ], [ 111, %417 ], [ 111, %427 ], [ 111, %436 ], [ 111, %446 ], [ %110, %467 ], [ %110, %478 ], [ 111, %486 ], [ %110, %497 ], [ %110, %641 ], [ %110, %609 ], [ %110, %104 ], [ %110, %104 ], [ %110, %104 ], [ %110, %104 ], [ %110, %104 ], [ %110, %104 ], [ 111, %194 ], [ 111, %189 ], [ 111, %409 ], [ %110, %452 ], [ %110, %455 ], [ %110, %463 ], [ 111, %472 ], [ 111, %475 ], [ %110, %493 ], [ 111, %584 ], [ %110, %599 ], [ %110, %607 ], [ %110, %603 ], [ %110, %597 ], [ 111, %202 ], [ 111, %198 ], [ %110, %617 ], [ %110, %613 ], [ %110, %632 ], [ %110, %636 ], [ %110, %115 ], [ %110, %115 ], [ 111, %215 ], [ 111, %219 ]
  %653 = getelementptr inbounds i8, ptr %649, i64 %651
  %654 = icmp eq i32 %652, 0
  br i1 %654, label %655, label %104, !prof !312, !llvm.loop !313

655:                                              ; preds = %646
  store ptr %653, ptr %59, align 8, !tbaa !148
  %656 = icmp eq i32 %650, 0
  %657 = select i1 %656, i32 1, i32 %52, !prof !314
  %658 = add nuw nsw i64 %50, 1
  %659 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %660 = sext i8 %659 to i64
  %661 = icmp slt i64 %658, %660
  br i1 %661, label %49, label %662, !prof !315, !llvm.loop !316

662:                                              ; preds = %655, %30
  %663 = phi i32 [ -1, %30 ], [ %647, %655 ]
  %664 = phi i32 [ 0, %30 ], [ %657, %655 ]
  %665 = phi i32 [ 0, %30 ], [ %648, %655 ]
  %666 = icmp eq i32 %664, 0
  br i1 %666, label %667, label %762, !prof !317

667:                                              ; preds = %662
  %668 = icmp sgt i32 %0, 0
  %669 = icmp sgt i32 %663, -1
  %670 = select i1 %668, i1 %669, i1 false, !prof !318
  br i1 %670, label %671, label %741, !prof !319

671:                                              ; preds = %667
  %672 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %673 = sext i8 %672 to i32
  %674 = icmp slt i32 %663, %673
  br i1 %674, label %675, label %741

675:                                              ; preds = %671
  %676 = zext i32 %663 to i64
  br label %677

677:                                              ; preds = %675, %734
  %678 = phi i64 [ %676, %675 ], [ %736, %734 ]
  %679 = phi i32 [ 0, %675 ], [ %735, %734 ]
  %680 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %678
  %681 = load i32, ptr %680, align 4, !tbaa !163
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %734, label %683

683:                                              ; preds = %677
  %684 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %678
  %685 = load ptr, ptr %684, align 8, !tbaa !148
  %686 = load i32, ptr %685, align 8
  %687 = and i32 %686, 65535
  %688 = icmp eq i32 %687, 37
  %689 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %690 = icmp sgt i8 %689, 0
  %691 = select i1 %688, i1 %690, i1 false
  br i1 %691, label %692, label %734

692:                                              ; preds = %683, %728
  %693 = phi i64 [ %730, %728 ], [ 0, %683 ]
  %694 = phi i32 [ %729, %728 ], [ %679, %683 ]
  %695 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %693
  %696 = load ptr, ptr %695, align 8, !tbaa !148
  %697 = load i32, ptr %696, align 8
  %698 = and i32 %697, 65535
  %699 = icmp eq i32 %698, 43
  br i1 %699, label %706, label %700

700:                                              ; preds = %692
  %701 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %693
  %702 = load i32, ptr %701, align 4, !tbaa !163
  %703 = icmp eq i32 %702, 1
  %704 = icmp eq i64 %693, %678
  %705 = or i1 %704, %703
  br i1 %705, label %728, label %708

706:                                              ; preds = %692
  %707 = icmp eq i64 %693, %678
  br i1 %707, label %728, label %708

708:                                              ; preds = %706, %700
  %709 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %693
  %710 = load ptr, ptr %709, align 8, !tbaa !148
  %711 = load i8, ptr %710, align 1, !tbaa !159
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %728, label %713

713:                                              ; preds = %708
  %714 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %693
  %715 = load i32, ptr %714, align 4, !tbaa !163
  %716 = zext i32 %715 to i64
  %717 = icmp eq i64 %678, %716
  br i1 %717, label %718, label %722

718:                                              ; preds = %713
  %719 = load ptr, ptr %684, align 8, !tbaa !148
  %720 = tail call i32 @operands_match_p(ptr noundef nonnull %696, ptr noundef %719) #29
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %728

722:                                              ; preds = %718, %713
  %723 = load ptr, ptr %695, align 8, !tbaa !148
  %724 = load ptr, ptr %684, align 8, !tbaa !148
  %725 = tail call i32 @safe_from_earlyclobber(ptr noundef %723, ptr noundef %724) #29
  %726 = icmp eq i32 %725, 0
  %727 = select i1 %726, i32 1, i32 %694
  br label %728

728:                                              ; preds = %708, %722, %700, %706, %718
  %729 = phi i32 [ %694, %718 ], [ %694, %706 ], [ %694, %700 ], [ %727, %722 ], [ %694, %708 ]
  %730 = add nuw nsw i64 %693, 1
  %731 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %732 = sext i8 %731 to i64
  %733 = icmp slt i64 %730, %732
  br i1 %733, label %692, label %734, !llvm.loop !320

734:                                              ; preds = %728, %677, %683
  %735 = phi i32 [ %679, %683 ], [ %679, %677 ], [ %729, %728 ]
  %736 = add nuw nsw i64 %678, 1
  %737 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %738 = sext i8 %737 to i32
  %739 = trunc i64 %736 to i32
  %740 = icmp slt i32 %739, %738
  br i1 %740, label %677, label %741, !llvm.loop !321

741:                                              ; preds = %734, %671, %667
  %742 = phi i32 [ 0, %667 ], [ 0, %671 ], [ %735, %734 ]
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %762, !prof !322

744:                                              ; preds = %741
  %745 = icmp sgt i32 %665, 0
  br i1 %745, label %746, label %761, !prof !323

746:                                              ; preds = %744
  %747 = zext nneg i32 %665 to i64
  br label %748

748:                                              ; preds = %746, %748
  %749 = phi i64 [ %747, %746 ], [ %750, %748 ]
  %750 = add nsw i64 %749, -1
  %751 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %750
  %752 = load i32, ptr %751, align 8, !tbaa !228
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %753
  %755 = load ptr, ptr %754, align 8, !tbaa !148
  %756 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %750, i32 1
  %757 = load i32, ptr %756, align 4, !tbaa !230
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %758
  store ptr %755, ptr %759, align 8, !tbaa !148
  %760 = icmp sgt i64 %749, 1
  br i1 %760, label %748, label %761, !prof !323, !llvm.loop !324

761:                                              ; preds = %748, %744
  br i1 %743, label %768, label %762, !prof !322

762:                                              ; preds = %741, %761, %662
  %763 = load i32, ptr @which_alternative, align 4, !tbaa !163
  br label %764

764:                                              ; preds = %43, %31, %762
  %765 = phi i32 [ %763, %762 ], [ %23, %31 ], [ %23, %43 ]
  %766 = phi i32 [ 0, %762 ], [ 6, %31 ], [ 6, %43 ]
  %767 = add nsw i32 %765, 1
  store i32 %767, ptr @which_alternative, align 4, !tbaa !163
  br label %768

768:                                              ; preds = %764, %761
  %769 = phi i32 [ 1, %761 ], [ %766, %764 ]
  switch i32 %769, label %779 [
    i32 0, label %770
    i32 6, label %770
  ], !prof !325

770:                                              ; preds = %768, %768
  %771 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %772 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %773 = sext i8 %772 to i32
  %774 = icmp slt i32 %771, %773
  br i1 %774, label %22, label %775, !prof !326, !llvm.loop !327

775:                                              ; preds = %770
  store i32 -1, ptr @which_alternative, align 4, !tbaa !163
  %776 = icmp eq i32 %0, 0
  br i1 %776, label %777, label %779, !prof !328

777:                                              ; preds = %775
  %778 = tail call i32 @constrain_operands(i32 noundef -1)
  br label %779

779:                                              ; preds = %768, %775, %1, %777
  %780 = phi i32 [ %778, %777 ], [ 1, %1 ], [ 0, %775 ], [ 1, %768 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #29
  ret i32 %780
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @asm_noperands(ptr noundef readonly %0) local_unnamed_addr #11 !prof !329 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %23 [
    i16 17, label %24
    i16 23, label %4
    i16 15, label %10
  ], !prof !171

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %24, label %23, !prof !172

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %23 [
    i16 17, label %24
    i16 23, label %17
  ], !prof !173

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %24, label %23, !prof !174

23:                                               ; preds = %17, %10, %4, %1
  br label %24

24:                                               ; preds = %1, %4, %10, %17, %23
  %25 = phi ptr [ null, %23 ], [ %0, %1 ], [ %6, %4 ], [ %19, %17 ], [ %14, %10 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %106, label %27, !prof !175

27:                                               ; preds = %24
  switch i16 %3, label %95 [
    i16 23, label %96
    i16 15, label %28
  ]

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !148
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 23
  %36 = load i32, ptr %30, align 8, !tbaa !176
  %37 = zext i32 %36 to i64
  br i1 %35, label %38, label %80

38:                                               ; preds = %28
  %39 = tail call i32 @llvm.smin.i32(i32 %36, i32 0)
  br label %40

40:                                               ; preds = %44, %38
  %41 = phi i64 [ %46, %44 ], [ %37, %38 ]
  %42 = trunc i64 %41 to i32
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = add nsw i64 %41, -1
  %46 = add nsw i64 %41, -1
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !148
  %49 = load i32, ptr %48, align 8
  %50 = trunc i32 %49 to i16
  switch i16 %50, label %92 [
    i16 23, label %51
    i16 25, label %40
  ], !llvm.loop !178

51:                                               ; preds = %44
  %52 = trunc i64 %41 to i32
  br label %53

53:                                               ; preds = %40, %51
  %54 = phi i32 [ %52, %51 ], [ %39, %40 ]
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 1
  %58 = zext nneg i32 %54 to i64
  br label %62

59:                                               ; preds = %75
  %60 = add nuw nsw i64 %63, 1
  %61 = icmp eq i64 %60, %58
  br i1 %61, label %92, label %62, !llvm.loop !179

62:                                               ; preds = %56, %59
  %63 = phi i64 [ 0, %56 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !148
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 23
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !159
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 17
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = load ptr, ptr %57, align 8, !tbaa !159
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %59, label %92

80:                                               ; preds = %28, %84
  %81 = phi i64 [ %86, %84 ], [ %37, %28 ]
  %82 = trunc i64 %81 to i32
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = add nsw i64 %81, -1
  %86 = add nsw i64 %81, -1
  %87 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %85
  %88 = load ptr, ptr %87, align 8, !tbaa !148
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 25
  br i1 %91, label %80, label %92, !llvm.loop !180

92:                                               ; preds = %84, %80, %44, %75, %59, %69, %62, %53
  %93 = phi i32 [ %54, %53 ], [ %54, %62 ], [ %54, %69 ], [ %54, %59 ], [ %54, %75 ], [ 0, %44 ], [ 0, %80 ], [ 0, %84 ]
  %94 = phi i1 [ true, %53 ], [ false, %75 ], [ true, %59 ], [ false, %69 ], [ false, %62 ], [ false, %44 ], [ %83, %80 ], [ %83, %84 ]
  br i1 %94, label %96, label %106

95:                                               ; preds = %27
  br label %96

96:                                               ; preds = %27, %95, %92
  %97 = phi i32 [ %93, %92 ], [ 1, %27 ], [ 0, %95 ]
  %98 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !159
  %100 = load i32, ptr %99, align 8, !tbaa !176
  %101 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !159
  %103 = load i32, ptr %102, align 8, !tbaa !176
  %104 = add i32 %100, %97
  %105 = add i32 %104, %103
  br label %106

106:                                              ; preds = %24, %92, %96
  %107 = phi i32 [ %105, %96 ], [ -1, %92 ], [ -1, %24 ]
  ret i32 %107
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @decode_asm_operands(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #12 !prof !147 {
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %94 [
    i16 17, label %97
    i16 23, label %9
    i16 15, label %31
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8, !tbaa !159
  store ptr %15, ptr %1, align 8, !tbaa !148
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp eq ptr %2, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %10, ptr %2, align 8, !tbaa !148
  br label %19

19:                                               ; preds = %18, %16
  %20 = icmp eq ptr %3, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  store ptr %23, ptr %3, align 8, !tbaa !148
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %4, null
  br i1 %25, label %97, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %10, align 8, !tbaa !159
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  store i32 %30, ptr %4, align 4, !tbaa !163
  br label %97

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  %34 = load i32, ptr %33, align 8, !tbaa !176
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !148
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 23
  br i1 %39, label %40, label %97

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !159
  %43 = icmp sgt i32 %34, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = icmp eq ptr %1, null
  %46 = icmp eq ptr %2, null
  %47 = icmp eq ptr %3, null
  %48 = icmp eq ptr %4, null
  %49 = zext nneg i32 %34 to i64
  br label %50

50:                                               ; preds = %44, %91
  %51 = phi i64 [ 0, %44 ], [ %92, %91 ]
  %52 = load ptr, ptr %32, align 8, !tbaa !159
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !148
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 25
  br i1 %57, label %95, label %58

58:                                               ; preds = %50
  br i1 %45, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  %62 = getelementptr inbounds ptr, ptr %1, i64 %51
  store ptr %61, ptr %62, align 8, !tbaa !148
  br label %63

63:                                               ; preds = %59, %58
  br i1 %46, label %70, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %32, align 8, !tbaa !159
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %51
  %67 = load ptr, ptr %66, align 8, !tbaa !148
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds ptr, ptr %2, i64 %51
  store ptr %68, ptr %69, align 8, !tbaa !148
  br label %70

70:                                               ; preds = %64, %63
  br i1 %47, label %80, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %32, align 8, !tbaa !159
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %72, i64 0, i32 1, i64 %51
  %74 = load ptr, ptr %73, align 8, !tbaa !148
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !159
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !159
  %79 = getelementptr inbounds ptr, ptr %3, i64 %51
  store ptr %78, ptr %79, align 8, !tbaa !148
  br label %80

80:                                               ; preds = %71, %70
  br i1 %48, label %91, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %32, align 8, !tbaa !159
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %51
  %84 = load ptr, ptr %83, align 8, !tbaa !148
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds i32, ptr %4, i64 %51
  store i32 %89, ptr %90, align 4, !tbaa !163
  br label %91

91:                                               ; preds = %80, %81
  %92 = add nuw nsw i64 %51, 1
  %93 = icmp eq i64 %92, %49
  br i1 %93, label %97, label %50, !llvm.loop !330

94:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1562, ptr noundef nonnull @.str.1) #29
  br label %97

95:                                               ; preds = %50
  %96 = trunc i64 %51 to i32
  br label %97

97:                                               ; preds = %95, %91, %40, %31, %24, %26, %6, %94
  %98 = phi ptr [ undef, %94 ], [ %0, %6 ], [ %12, %26 ], [ %12, %24 ], [ %36, %31 ], [ %42, %40 ], [ %42, %91 ], [ %42, %95 ]
  %99 = phi i32 [ 0, %94 ], [ 0, %6 ], [ 1, %26 ], [ 1, %24 ], [ 0, %31 ], [ 0, %40 ], [ %96, %95 ], [ %34, %91 ]
  %100 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !159
  %102 = load i32, ptr %101, align 8, !tbaa !176
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %97
  %105 = icmp eq ptr %2, null
  %106 = icmp eq ptr %1, null
  %107 = icmp eq ptr %3, null
  %108 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 2
  %109 = icmp eq ptr %4, null
  %110 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 2
  %111 = zext i32 %99 to i64
  %112 = zext i32 %99 to i64
  %113 = zext i32 %99 to i64
  %114 = zext i32 %99 to i64
  %115 = zext nneg i32 %102 to i64
  %116 = getelementptr ptr, ptr %2, i64 %111
  %117 = getelementptr ptr, ptr %1, i64 %112
  %118 = getelementptr ptr, ptr %3, i64 %113
  %119 = getelementptr i32, ptr %4, i64 %114
  br label %120

120:                                              ; preds = %104, %149
  %121 = phi i64 [ 0, %104 ], [ %150, %149 ]
  br i1 %105, label %126, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr %100, align 8, !tbaa !159
  %124 = getelementptr inbounds %struct.rtvec_def, ptr %123, i64 0, i32 1, i64 %121
  %125 = getelementptr ptr, ptr %116, i64 %121
  store ptr %124, ptr %125, align 8, !tbaa !148
  br label %126

126:                                              ; preds = %122, %120
  br i1 %106, label %132, label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr %100, align 8, !tbaa !159
  %129 = getelementptr inbounds %struct.rtvec_def, ptr %128, i64 0, i32 1, i64 %121
  %130 = load ptr, ptr %129, align 8, !tbaa !148
  %131 = getelementptr ptr, ptr %117, i64 %121
  store ptr %130, ptr %131, align 8, !tbaa !148
  br label %132

132:                                              ; preds = %127, %126
  br i1 %107, label %140, label %133

133:                                              ; preds = %132
  %134 = load ptr, ptr %108, align 8, !tbaa !159
  %135 = getelementptr inbounds %struct.rtvec_def, ptr %134, i64 0, i32 1, i64 %121
  %136 = load ptr, ptr %135, align 8, !tbaa !148
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !159
  %139 = getelementptr ptr, ptr %118, i64 %121
  store ptr %138, ptr %139, align 8, !tbaa !148
  br label %140

140:                                              ; preds = %133, %132
  br i1 %109, label %149, label %141

141:                                              ; preds = %140
  %142 = load ptr, ptr %110, align 8, !tbaa !159
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %121
  %144 = load ptr, ptr %143, align 8, !tbaa !148
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = getelementptr i32, ptr %119, i64 %121
  store i32 %147, ptr %148, align 4, !tbaa !163
  br label %149

149:                                              ; preds = %140, %141
  %150 = add nuw nsw i64 %121, 1
  %151 = icmp eq i64 %150, %115
  br i1 %151, label %152, label %120, !llvm.loop !331

152:                                              ; preds = %149, %97
  %153 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !159
  %155 = load i32, ptr %154, align 8, !tbaa !176
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %193

157:                                              ; preds = %152
  %158 = add nsw i32 %102, %99
  %159 = icmp eq ptr %2, null
  %160 = icmp eq ptr %1, null
  %161 = icmp eq ptr %3, null
  %162 = icmp eq ptr %4, null
  %163 = sext i32 %158 to i64
  %164 = sext i32 %158 to i64
  %165 = sext i32 %158 to i64
  %166 = sext i32 %158 to i64
  %167 = zext nneg i32 %155 to i64
  %168 = getelementptr ptr, ptr %2, i64 %163
  %169 = getelementptr ptr, ptr %1, i64 %164
  %170 = getelementptr ptr, ptr %3, i64 %165
  %171 = getelementptr i32, ptr %4, i64 %166
  br label %172

172:                                              ; preds = %157, %190
  %173 = phi i64 [ 0, %157 ], [ %191, %190 ]
  br i1 %159, label %178, label %174

174:                                              ; preds = %172
  %175 = load ptr, ptr %153, align 8, !tbaa !159
  %176 = getelementptr inbounds %struct.rtvec_def, ptr %175, i64 0, i32 1, i64 %173
  %177 = getelementptr ptr, ptr %168, i64 %173
  store ptr %176, ptr %177, align 8, !tbaa !148
  br label %178

178:                                              ; preds = %174, %172
  br i1 %160, label %184, label %179

179:                                              ; preds = %178
  %180 = load ptr, ptr %153, align 8, !tbaa !159
  %181 = getelementptr inbounds %struct.rtvec_def, ptr %180, i64 0, i32 1, i64 %173
  %182 = load ptr, ptr %181, align 8, !tbaa !148
  %183 = getelementptr ptr, ptr %169, i64 %173
  store ptr %182, ptr %183, align 8, !tbaa !148
  br label %184

184:                                              ; preds = %179, %178
  br i1 %161, label %187, label %185

185:                                              ; preds = %184
  %186 = getelementptr ptr, ptr %170, i64 %173
  store ptr @.str.2, ptr %186, align 8, !tbaa !148
  br label %187

187:                                              ; preds = %185, %184
  br i1 %162, label %190, label %188

188:                                              ; preds = %187
  %189 = getelementptr i32, ptr %171, i64 %173
  store i32 16, ptr %189, align 4, !tbaa !163
  br label %190

190:                                              ; preds = %187, %188
  %191 = add nuw nsw i64 %173, 1
  %192 = icmp eq i64 %191, %167
  br i1 %192, label %193, label %172, !llvm.loop !332

193:                                              ; preds = %190, %152
  %194 = icmp eq ptr %5, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !159
  store i32 %197, ptr %5, align 4, !tbaa !163
  br label %198

198:                                              ; preds = %195, %193
  %199 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !159
  ret ptr %200
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @asm_operand_ok(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #12 !prof !147 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1607, ptr noundef nonnull @.str.1) #29
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i8, ptr %1, align 1, !tbaa !159
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %248, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %2, null
  br label %13

13:                                               ; preds = %247, %11
  %14 = phi i32 [ 0, %11 ], [ %244, %247 ]
  %15 = phi ptr [ %1, %11 ], [ %246, %247 ]
  %16 = load i8, ptr %15, align 1, !tbaa !159
  switch i8 %16, label %214 [
    i8 0, label %248
    i8 44, label %17
    i8 61, label %231
    i8 43, label %231
    i8 42, label %231
    i8 37, label %231
    i8 33, label %231
    i8 35, label %231
    i8 38, label %231
    i8 63, label %231
    i8 48, label %19
    i8 49, label %19
    i8 50, label %19
    i8 51, label %19
    i8 52, label %19
    i8 53, label %19
    i8 54, label %19
    i8 55, label %19
    i8 56, label %19
    i8 57, label %19
    i8 112, label %42
    i8 109, label %47
    i8 86, label %47
    i8 111, label %51
    i8 60, label %55
    i8 62, label %60
    i8 69, label %65
    i8 70, label %65
    i8 71, label %76
    i8 72, label %85
    i8 115, label %94
    i8 105, label %100
    i8 110, label %114
    i8 73, label %121
    i8 74, label %132
    i8 75, label %143
    i8 76, label %154
    i8 77, label %165
    i8 78, label %176
    i8 79, label %187
    i8 80, label %198
    i8 88, label %209
    i8 103, label %210
    i8 114, label %218
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  br label %243, !llvm.loop !333

19:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  br i1 %12, label %30, label %20

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %21 = call i64 @strtoul(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 10)
  %22 = icmp eq i32 %14, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %2, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !148
  %26 = tail call i32 @asm_operand_ok(ptr noundef %0, ptr noundef %25, ptr noundef null)
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %14, %20 ], [ %26, %23 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  br label %243, !llvm.loop !333

30:                                               ; preds = %19, %30
  %31 = phi ptr [ %32, %30 ], [ %15, %19 ]
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !159
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !334
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %30, !llvm.loop !335

39:                                               ; preds = %30
  %40 = icmp eq i32 %14, 0
  %41 = select i1 %40, i32 -1, i32 %14
  br label %243, !llvm.loop !333

42:                                               ; preds = %13
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %44 = tail call zeroext i8 %43(i32 noundef 0, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #29
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 %14, i32 1
  br label %231

47:                                               ; preds = %13, %13
  %48 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef 0), !range !296
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %14, i32 1
  br label %231

51:                                               ; preds = %13
  %52 = tail call i32 @offsettable_nonstrict_memref_p(ptr noundef %0), !range !296
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %14, i32 1
  br label %231

55:                                               ; preds = %13
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 43
  %59 = select i1 %58, i32 1, i32 %14
  br label %231

60:                                               ; preds = %13
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 43
  %64 = select i1 %63, i32 1, i32 %14
  br label %231

65:                                               ; preds = %13, %13
  %66 = load i32, ptr %0, align 8
  %67 = trunc i32 %66 to i16
  switch i16 %67, label %231 [
    i16 32, label %75
    i16 33, label %68
  ]

68:                                               ; preds = %65
  %69 = lshr i32 %66, 16
  %70 = and i32 %69, 255
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !159
  %74 = icmp eq i8 %73, 17
  br i1 %74, label %75, label %231

75:                                               ; preds = %65, %68
  br label %231

76:                                               ; preds = %13
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %231

80:                                               ; preds = %76
  %81 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %82 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %0, i32 noundef %81) #29
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i32 %14, i32 1
  br label %231

85:                                               ; preds = %13
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %89, label %231

89:                                               ; preds = %85
  %90 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %91 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %0, i32 noundef %90) #29
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i32 %14, i32 1
  br label %231

94:                                               ; preds = %13
  %95 = load i32, ptr %0, align 8
  %96 = trunc i32 %95 to i16
  switch i16 %96, label %100 [
    i16 30, label %231
    i16 32, label %97
  ]

97:                                               ; preds = %94
  %98 = and i32 %95, 16711680
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %231, label %100

100:                                              ; preds = %94, %13, %97
  %101 = load i32, ptr %0, align 8
  %102 = and i32 %101, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !163
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %231

107:                                              ; preds = %100
  %108 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %231, label %113

113:                                              ; preds = %110, %107
  br label %231

114:                                              ; preds = %13
  %115 = load i32, ptr %0, align 8
  %116 = trunc i32 %115 to i16
  switch i16 %116, label %231 [
    i16 30, label %120
    i16 32, label %117
  ]

117:                                              ; preds = %114
  %118 = and i32 %115, 16711680
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %231

120:                                              ; preds = %117, %114
  br label %231

121:                                              ; preds = %13
  %122 = load i32, ptr %0, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 30
  br i1 %124, label %125, label %231

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !159
  %128 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %129 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %127, i32 noundef %128) #29
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 %14, i32 1
  br label %231

132:                                              ; preds = %13
  %133 = load i32, ptr %0, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 30
  br i1 %135, label %136, label %231

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !159
  %139 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %140 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %138, i32 noundef %139) #29
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, i32 %14, i32 1
  br label %231

143:                                              ; preds = %13
  %144 = load i32, ptr %0, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 30
  br i1 %146, label %147, label %231

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !159
  %150 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %151 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %149, i32 noundef %150) #29
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, i32 %14, i32 1
  br label %231

154:                                              ; preds = %13
  %155 = load i32, ptr %0, align 8
  %156 = and i32 %155, 65535
  %157 = icmp eq i32 %156, 30
  br i1 %157, label %158, label %231

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !159
  %161 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %162 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %160, i32 noundef %161) #29
  %163 = icmp eq i8 %162, 0
  %164 = select i1 %163, i32 %14, i32 1
  br label %231

165:                                              ; preds = %13
  %166 = load i32, ptr %0, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 30
  br i1 %168, label %169, label %231

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !159
  %172 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %173 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %171, i32 noundef %172) #29
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %174, i32 %14, i32 1
  br label %231

176:                                              ; preds = %13
  %177 = load i32, ptr %0, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 30
  br i1 %179, label %180, label %231

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !159
  %183 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %184 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %182, i32 noundef %183) #29
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %185, i32 %14, i32 1
  br label %231

187:                                              ; preds = %13
  %188 = load i32, ptr %0, align 8
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 30
  br i1 %190, label %191, label %231

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !159
  %194 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %195 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %193, i32 noundef %194) #29
  %196 = icmp eq i8 %195, 0
  %197 = select i1 %196, i32 %14, i32 1
  br label %231

198:                                              ; preds = %13
  %199 = load i32, ptr %0, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 30
  br i1 %201, label %202, label %231

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !159
  %205 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %206 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %204, i32 noundef %205) #29
  %207 = icmp eq i8 %206, 0
  %208 = select i1 %207, i32 %14, i32 1
  br label %231

209:                                              ; preds = %13
  br label %231

210:                                              ; preds = %13
  %211 = tail call i32 @general_operand(ptr noundef %0, i32 noundef 0), !range !296
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %212, i32 %14, i32 1
  br label %231

214:                                              ; preds = %13
  %215 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %216 = tail call i32 @regclass_for_constraint(i32 noundef %215) #29
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %13, %214
  %219 = load i32, ptr %0, align 8
  %220 = and i32 %219, 16711680
  %221 = icmp eq i32 %220, 65536
  br i1 %221, label %231, label %222

222:                                              ; preds = %218
  %223 = tail call i32 @register_operand(ptr noundef %0, i32 noundef 0)
  %224 = icmp eq i32 %223, 0
  %225 = select i1 %224, i32 %14, i32 1
  br label %231

226:                                              ; preds = %214
  %227 = tail call i32 @lookup_constraint(ptr noundef nonnull %15) #29
  %228 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %0, i32 noundef %227) #29
  %229 = icmp eq i8 %228, 0
  %230 = select i1 %229, i32 %14, i32 1
  br label %231

231:                                              ; preds = %218, %100, %97, %94, %68, %65, %13, %13, %13, %13, %13, %13, %13, %226, %222, %210, %202, %191, %180, %169, %158, %147, %136, %125, %89, %80, %60, %55, %51, %47, %42, %114, %13, %198, %187, %176, %165, %154, %143, %132, %121, %117, %120, %110, %113, %85, %76, %75, %209
  %232 = phi i32 [ 1, %209 ], [ %14, %198 ], [ %14, %187 ], [ %14, %176 ], [ %14, %165 ], [ %14, %154 ], [ %14, %143 ], [ %14, %132 ], [ %14, %121 ], [ 1, %120 ], [ %14, %117 ], [ 1, %113 ], [ %14, %110 ], [ %14, %85 ], [ %14, %76 ], [ 1, %75 ], [ %14, %13 ], [ %46, %42 ], [ %50, %47 ], [ %54, %51 ], [ %59, %55 ], [ %64, %60 ], [ %84, %80 ], [ %93, %89 ], [ %14, %114 ], [ %131, %125 ], [ %142, %136 ], [ %153, %147 ], [ %164, %158 ], [ %175, %169 ], [ %186, %180 ], [ %197, %191 ], [ %208, %202 ], [ %213, %210 ], [ %225, %222 ], [ %230, %226 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ], [ %14, %65 ], [ %14, %68 ], [ %14, %94 ], [ %14, %97 ], [ %14, %100 ], [ %14, %218 ]
  %233 = icmp eq i8 %16, 89
  br label %234

234:                                              ; preds = %238, %231
  %235 = phi ptr [ %15, %231 ], [ %237, %238 ]
  %236 = phi i1 [ %233, %231 ], [ false, %238 ]
  %237 = getelementptr inbounds i8, ptr %235, i64 1
  br i1 %236, label %238, label %241

238:                                              ; preds = %234
  %239 = load i8, ptr %237, align 1, !tbaa !159
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %234, !llvm.loop !336

241:                                              ; preds = %238, %234
  %242 = zext i1 %236 to i32
  br label %243

243:                                              ; preds = %241, %27, %39, %17
  %244 = phi i32 [ %14, %17 ], [ %28, %27 ], [ %41, %39 ], [ %232, %241 ]
  %245 = phi i32 [ 2, %17 ], [ 2, %27 ], [ 2, %39 ], [ %242, %241 ]
  %246 = phi ptr [ %18, %17 ], [ %29, %27 ], [ %32, %39 ], [ %237, %241 ]
  switch i32 %245, label %248 [
    i32 0, label %247
    i32 2, label %247
  ]

247:                                              ; preds = %243, %243
  br label %13, !llvm.loop !333

248:                                              ; preds = %13, %243, %8
  %249 = phi i32 [ 1, %8 ], [ 0, %243 ], [ %14, %13 ]
  ret i32 %249
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @validate_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #10 !prof !337 {
  %5 = load ptr, ptr %1, align 8, !tbaa !148
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %126, label %7, !prof !338

7:                                                ; preds = %4
  %8 = tail call i32 @rtx_equal_p(ptr noundef %5, ptr noundef %2) #29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %126, !prof !339

10:                                               ; preds = %7
  %11 = icmp ne i8 %3, 0
  %12 = load i32, ptr @num_changes, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13, !prof !340
  br i1 %14, label %16, label %15, !prof !341

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.1) #29
  br label %16

16:                                               ; preds = %15, %10
  store ptr %2, ptr %1, align 8, !tbaa !148
  %17 = load i32, ptr @num_changes, align 4, !tbaa !163
  %18 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %28, label %20, !prof !342

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, 0
  %22 = shl nsw i32 %18, 1
  %23 = select i1 %21, i32 150, i32 %22, !prof !343
  store i32 %23, ptr @changes_allocated, align 4, !tbaa !163
  %24 = load ptr, ptr @changes, align 8, !tbaa !148
  %25 = sext i32 %23 to i64
  %26 = mul nsw i64 %25, 40
  %27 = tail call ptr @xrealloc(ptr noundef %24, i64 noundef %26) #29
  store ptr %27, ptr @changes, align 8, !tbaa !148
  br label %28

28:                                               ; preds = %20, %16
  %29 = load ptr, ptr @changes, align 8, !tbaa !148
  %30 = load i32, ptr @num_changes, align 4, !tbaa !163
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31
  store ptr %0, ptr %32, align 8, !tbaa !344
  %33 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !346
  %34 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 3
  store ptr %5, ptr %34, align 8, !tbaa !347
  %35 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 4
  store i8 0, ptr %35, align 8, !tbaa !348
  %36 = icmp eq ptr %0, null
  br i1 %36, label %45, label %37, !prof !349

37:                                               ; preds = %28
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %45, label %41, !prof !350

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !159
  %44 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 1
  store i32 %43, ptr %44, align 8, !tbaa !351
  store i32 -1, ptr %42, align 8, !tbaa !159
  br label %45

45:                                               ; preds = %41, %37, %28
  %46 = add nsw i32 %30, 1
  store i32 %46, ptr @num_changes, align 4, !tbaa !163
  %47 = icmp eq i8 %3, 0
  br i1 %47, label %48, label %126, !prof !352

48:                                               ; preds = %45
  %49 = tail call i32 @verify_changes(i32 noundef 0), !range !296
  %50 = icmp eq i32 %49, 0
  %51 = load i32, ptr @num_changes, align 4, !tbaa !163
  %52 = icmp sgt i32 %51, 0
  br i1 %50, label %100, label %53, !prof !353

53:                                               ; preds = %48
  br i1 %52, label %54, label %90, !prof !354

54:                                               ; preds = %53, %84
  %55 = phi i64 [ %86, %84 ], [ 0, %53 ]
  %56 = phi ptr [ %85, %84 ], [ null, %53 ]
  %57 = load ptr, ptr @changes, align 8, !tbaa !148
  %58 = getelementptr inbounds %struct.change_t, ptr %57, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !344
  %60 = getelementptr inbounds %struct.change_t, ptr %57, i64 %55, i32 4
  %61 = load i8, ptr %60, align 8, !tbaa !348
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63, !prof !355

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.change_t, ptr %57, i64 %55, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !346
  %66 = load ptr, ptr %65, align 8, !tbaa !148
  %67 = tail call ptr @copy_rtx(ptr noundef %66) #29
  %68 = load ptr, ptr @changes, align 8, !tbaa !148
  %69 = getelementptr inbounds %struct.change_t, ptr %68, i64 %55, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !346
  store ptr %67, ptr %70, align 8, !tbaa !148
  br label %71

71:                                               ; preds = %63, %54
  %72 = icmp eq ptr %59, null
  br i1 %72, label %84, label %73, !prof !356

73:                                               ; preds = %71
  %74 = icmp ne ptr %59, %56
  %75 = icmp ne ptr %56, null
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %84, !prof !357

77:                                               ; preds = %73
  %78 = load i32, ptr %56, align 8
  %79 = and i32 %78, 65535
  %80 = add nsw i32 %79, -7
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %82, label %84, !prof !358

82:                                               ; preds = %77
  %83 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %56) #29
  br label %84

84:                                               ; preds = %82, %77, %73, %71
  %85 = phi ptr [ %56, %71 ], [ %59, %77 ], [ %59, %82 ], [ %59, %73 ]
  %86 = add nuw nsw i64 %55, 1
  %87 = load i32, ptr @num_changes, align 4, !tbaa !163
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %54, label %90, !prof !359, !llvm.loop !360

90:                                               ; preds = %84, %53
  %91 = phi ptr [ null, %53 ], [ %85, %84 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %124, label %93, !prof !361

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 8
  %95 = and i32 %94, 65535
  %96 = add nsw i32 %95, -7
  %97 = icmp ult i32 %96, 4
  br i1 %97, label %98, label %124, !prof !362

98:                                               ; preds = %93
  %99 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %91) #29
  br label %124

100:                                              ; preds = %48
  br i1 %52, label %101, label %124, !prof !363

101:                                              ; preds = %100
  %102 = load ptr, ptr @changes, align 8, !tbaa !148
  %103 = zext nneg i32 %51 to i64
  br label %104

104:                                              ; preds = %122, %101
  %105 = phi i64 [ %103, %101 ], [ %106, %122 ]
  %106 = add nsw i64 %105, -1
  %107 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !347
  %109 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !346
  store ptr %108, ptr %110, align 8, !tbaa !148
  %111 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106
  %112 = load ptr, ptr %111, align 8, !tbaa !344
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114, !prof !364

114:                                              ; preds = %104
  %115 = load i32, ptr %112, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 43
  br i1 %117, label %122, label %118, !prof !364

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !351
  %121 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1, i32 1
  store i32 %120, ptr %121, align 8, !tbaa !159
  br label %122

122:                                              ; preds = %118, %114, %104
  %123 = icmp sgt i64 %105, 1
  br i1 %123, label %104, label %124, !prof !365, !llvm.loop !366

124:                                              ; preds = %122, %100, %98, %93, %90
  %125 = phi i8 [ 1, %90 ], [ 1, %93 ], [ 1, %98 ], [ 0, %100 ], [ 0, %122 ]
  store i32 0, ptr @num_changes, align 4, !tbaa !163
  br label %126

126:                                              ; preds = %4, %7, %45, %124
  %127 = phi i8 [ %125, %124 ], [ 1, %7 ], [ 1, %4 ], [ 1, %45 ]
  ret i8 %127
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #10 !prof !147 !PGOFuncName !367 {
  %6 = load ptr, ptr %1, align 8, !tbaa !148
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %126, label %8, !prof !338

8:                                                ; preds = %5
  %9 = tail call i32 @rtx_equal_p(ptr noundef %6, ptr noundef %2) #29
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %126, !prof !339

11:                                               ; preds = %8
  %12 = icmp ne i8 %3, 0
  %13 = load i32, ptr @num_changes, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14, !prof !340
  br i1 %15, label %17, label %16, !prof !341

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.1) #29
  br label %17

17:                                               ; preds = %11, %16
  store ptr %2, ptr %1, align 8, !tbaa !148
  %18 = load i32, ptr @num_changes, align 4, !tbaa !163
  %19 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %29, label %21, !prof !342

21:                                               ; preds = %17
  %22 = icmp eq i32 %19, 0
  %23 = shl nsw i32 %19, 1
  %24 = select i1 %22, i32 150, i32 %23, !prof !343
  store i32 %24, ptr @changes_allocated, align 4, !tbaa !163
  %25 = load ptr, ptr @changes, align 8, !tbaa !148
  %26 = sext i32 %24 to i64
  %27 = mul nsw i64 %26, 40
  %28 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %27) #29
  store ptr %28, ptr @changes, align 8, !tbaa !148
  br label %29

29:                                               ; preds = %21, %17
  %30 = load ptr, ptr @changes, align 8, !tbaa !148
  %31 = load i32, ptr @num_changes, align 4, !tbaa !163
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.change_t, ptr %30, i64 %32
  store ptr %0, ptr %33, align 8, !tbaa !344
  %34 = getelementptr inbounds %struct.change_t, ptr %30, i64 %32, i32 2
  store ptr %1, ptr %34, align 8, !tbaa !346
  %35 = getelementptr inbounds %struct.change_t, ptr %30, i64 %32, i32 3
  store ptr %6, ptr %35, align 8, !tbaa !347
  %36 = getelementptr inbounds %struct.change_t, ptr %30, i64 %32, i32 4
  store i8 %4, ptr %36, align 8, !tbaa !348
  %37 = icmp eq ptr %0, null
  br i1 %37, label %46, label %38, !prof !349

38:                                               ; preds = %29
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %46, label %42, !prof !350

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !159
  %45 = getelementptr inbounds %struct.change_t, ptr %30, i64 %32, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !351
  store i32 -1, ptr %43, align 8, !tbaa !159
  br label %46

46:                                               ; preds = %42, %38, %29
  %47 = add nsw i32 %31, 1
  store i32 %47, ptr @num_changes, align 4, !tbaa !163
  %48 = icmp eq i8 %3, 0
  br i1 %48, label %49, label %126, !prof !352

49:                                               ; preds = %46
  %50 = tail call i32 @verify_changes(i32 noundef 0), !range !296
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr @num_changes, align 4, !tbaa !163
  %53 = icmp sgt i32 %52, 0
  br i1 %51, label %101, label %54, !prof !353

54:                                               ; preds = %49
  br i1 %53, label %55, label %91, !prof !354

55:                                               ; preds = %54, %85
  %56 = phi i64 [ %87, %85 ], [ 0, %54 ]
  %57 = phi ptr [ %86, %85 ], [ null, %54 ]
  %58 = load ptr, ptr @changes, align 8, !tbaa !148
  %59 = getelementptr inbounds %struct.change_t, ptr %58, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !344
  %61 = getelementptr inbounds %struct.change_t, ptr %58, i64 %56, i32 4
  %62 = load i8, ptr %61, align 8, !tbaa !348
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %72, label %64, !prof !355

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.change_t, ptr %58, i64 %56, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !346
  %67 = load ptr, ptr %66, align 8, !tbaa !148
  %68 = tail call ptr @copy_rtx(ptr noundef %67) #29
  %69 = load ptr, ptr @changes, align 8, !tbaa !148
  %70 = getelementptr inbounds %struct.change_t, ptr %69, i64 %56, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !346
  store ptr %68, ptr %71, align 8, !tbaa !148
  br label %72

72:                                               ; preds = %64, %55
  %73 = icmp eq ptr %60, null
  br i1 %73, label %85, label %74, !prof !356

74:                                               ; preds = %72
  %75 = icmp ne ptr %60, %57
  %76 = icmp ne ptr %57, null
  %77 = and i1 %76, %75
  br i1 %77, label %78, label %85, !prof !357

78:                                               ; preds = %74
  %79 = load i32, ptr %57, align 8
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -7
  %82 = icmp ult i32 %81, 4
  br i1 %82, label %83, label %85, !prof !358

83:                                               ; preds = %78
  %84 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %57) #29
  br label %85

85:                                               ; preds = %83, %78, %74, %72
  %86 = phi ptr [ %57, %72 ], [ %60, %78 ], [ %60, %83 ], [ %60, %74 ]
  %87 = add nuw nsw i64 %56, 1
  %88 = load i32, ptr @num_changes, align 4, !tbaa !163
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %55, label %91, !prof !359, !llvm.loop !360

91:                                               ; preds = %85, %54
  %92 = phi ptr [ null, %54 ], [ %86, %85 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %125, label %94, !prof !361

94:                                               ; preds = %91
  %95 = load i32, ptr %92, align 8
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, -7
  %98 = icmp ult i32 %97, 4
  br i1 %98, label %99, label %125, !prof !362

99:                                               ; preds = %94
  %100 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %92) #29
  br label %125

101:                                              ; preds = %49
  br i1 %53, label %102, label %125, !prof !363

102:                                              ; preds = %101
  %103 = load ptr, ptr @changes, align 8, !tbaa !148
  %104 = zext nneg i32 %52 to i64
  br label %105

105:                                              ; preds = %123, %102
  %106 = phi i64 [ %104, %102 ], [ %107, %123 ]
  %107 = add nsw i64 %106, -1
  %108 = getelementptr inbounds %struct.change_t, ptr %103, i64 %107, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !347
  %110 = getelementptr inbounds %struct.change_t, ptr %103, i64 %107, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !346
  store ptr %109, ptr %111, align 8, !tbaa !148
  %112 = getelementptr inbounds %struct.change_t, ptr %103, i64 %107
  %113 = load ptr, ptr %112, align 8, !tbaa !344
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115, !prof !364

115:                                              ; preds = %105
  %116 = load i32, ptr %113, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 43
  br i1 %118, label %123, label %119, !prof !364

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.change_t, ptr %103, i64 %107, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !351
  %122 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 1, i32 1
  store i32 %121, ptr %122, align 8, !tbaa !159
  br label %123

123:                                              ; preds = %119, %115, %105
  %124 = icmp sgt i64 %106, 1
  br i1 %124, label %105, label %125, !prof !365, !llvm.loop !366

125:                                              ; preds = %123, %101, %99, %94, %91
  store i32 0, ptr @num_changes, align 4, !tbaa !163
  br label %126

126:                                              ; preds = %46, %5, %8, %125
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @validate_unshare_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #10 !prof !368 {
  %5 = load ptr, ptr %1, align 8, !tbaa !148
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %126, label %7, !prof !338

7:                                                ; preds = %4
  %8 = tail call i32 @rtx_equal_p(ptr noundef %5, ptr noundef %2) #29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %126, !prof !339

10:                                               ; preds = %7
  %11 = icmp ne i8 %3, 0
  %12 = load i32, ptr @num_changes, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13, !prof !340
  br i1 %14, label %16, label %15, !prof !341

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.1) #29
  br label %16

16:                                               ; preds = %15, %10
  store ptr %2, ptr %1, align 8, !tbaa !148
  %17 = load i32, ptr @num_changes, align 4, !tbaa !163
  %18 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %28, label %20, !prof !342

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, 0
  %22 = shl nsw i32 %18, 1
  %23 = select i1 %21, i32 150, i32 %22, !prof !343
  store i32 %23, ptr @changes_allocated, align 4, !tbaa !163
  %24 = load ptr, ptr @changes, align 8, !tbaa !148
  %25 = sext i32 %23 to i64
  %26 = mul nsw i64 %25, 40
  %27 = tail call ptr @xrealloc(ptr noundef %24, i64 noundef %26) #29
  store ptr %27, ptr @changes, align 8, !tbaa !148
  br label %28

28:                                               ; preds = %20, %16
  %29 = load ptr, ptr @changes, align 8, !tbaa !148
  %30 = load i32, ptr @num_changes, align 4, !tbaa !163
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31
  store ptr %0, ptr %32, align 8, !tbaa !344
  %33 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 2
  store ptr %1, ptr %33, align 8, !tbaa !346
  %34 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 3
  store ptr %5, ptr %34, align 8, !tbaa !347
  %35 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 4
  store i8 1, ptr %35, align 8, !tbaa !348
  %36 = icmp eq ptr %0, null
  br i1 %36, label %45, label %37, !prof !349

37:                                               ; preds = %28
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %45, label %41, !prof !350

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !159
  %44 = getelementptr inbounds %struct.change_t, ptr %29, i64 %31, i32 1
  store i32 %43, ptr %44, align 8, !tbaa !351
  store i32 -1, ptr %42, align 8, !tbaa !159
  br label %45

45:                                               ; preds = %41, %37, %28
  %46 = add nsw i32 %30, 1
  store i32 %46, ptr @num_changes, align 4, !tbaa !163
  %47 = icmp eq i8 %3, 0
  br i1 %47, label %48, label %126, !prof !352

48:                                               ; preds = %45
  %49 = tail call i32 @verify_changes(i32 noundef 0), !range !296
  %50 = icmp eq i32 %49, 0
  %51 = load i32, ptr @num_changes, align 4, !tbaa !163
  %52 = icmp sgt i32 %51, 0
  br i1 %50, label %100, label %53, !prof !353

53:                                               ; preds = %48
  br i1 %52, label %54, label %90, !prof !354

54:                                               ; preds = %53, %84
  %55 = phi i64 [ %86, %84 ], [ 0, %53 ]
  %56 = phi ptr [ %85, %84 ], [ null, %53 ]
  %57 = load ptr, ptr @changes, align 8, !tbaa !148
  %58 = getelementptr inbounds %struct.change_t, ptr %57, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !344
  %60 = getelementptr inbounds %struct.change_t, ptr %57, i64 %55, i32 4
  %61 = load i8, ptr %60, align 8, !tbaa !348
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63, !prof !355

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.change_t, ptr %57, i64 %55, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !346
  %66 = load ptr, ptr %65, align 8, !tbaa !148
  %67 = tail call ptr @copy_rtx(ptr noundef %66) #29
  %68 = load ptr, ptr @changes, align 8, !tbaa !148
  %69 = getelementptr inbounds %struct.change_t, ptr %68, i64 %55, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !346
  store ptr %67, ptr %70, align 8, !tbaa !148
  br label %71

71:                                               ; preds = %63, %54
  %72 = icmp eq ptr %59, null
  br i1 %72, label %84, label %73, !prof !356

73:                                               ; preds = %71
  %74 = icmp ne ptr %59, %56
  %75 = icmp ne ptr %56, null
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %84, !prof !357

77:                                               ; preds = %73
  %78 = load i32, ptr %56, align 8
  %79 = and i32 %78, 65535
  %80 = add nsw i32 %79, -7
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %82, label %84, !prof !358

82:                                               ; preds = %77
  %83 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %56) #29
  br label %84

84:                                               ; preds = %82, %77, %73, %71
  %85 = phi ptr [ %56, %71 ], [ %59, %77 ], [ %59, %82 ], [ %59, %73 ]
  %86 = add nuw nsw i64 %55, 1
  %87 = load i32, ptr @num_changes, align 4, !tbaa !163
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %54, label %90, !prof !359, !llvm.loop !360

90:                                               ; preds = %84, %53
  %91 = phi ptr [ null, %53 ], [ %85, %84 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %124, label %93, !prof !361

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 8
  %95 = and i32 %94, 65535
  %96 = add nsw i32 %95, -7
  %97 = icmp ult i32 %96, 4
  br i1 %97, label %98, label %124, !prof !362

98:                                               ; preds = %93
  %99 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %91) #29
  br label %124

100:                                              ; preds = %48
  br i1 %52, label %101, label %124, !prof !363

101:                                              ; preds = %100
  %102 = load ptr, ptr @changes, align 8, !tbaa !148
  %103 = zext nneg i32 %51 to i64
  br label %104

104:                                              ; preds = %122, %101
  %105 = phi i64 [ %103, %101 ], [ %106, %122 ]
  %106 = add nsw i64 %105, -1
  %107 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !347
  %109 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !346
  store ptr %108, ptr %110, align 8, !tbaa !148
  %111 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106
  %112 = load ptr, ptr %111, align 8, !tbaa !344
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114, !prof !364

114:                                              ; preds = %104
  %115 = load i32, ptr %112, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 43
  br i1 %117, label %122, label %118, !prof !364

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.change_t, ptr %102, i64 %106, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !351
  %121 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1, i32 1
  store i32 %120, ptr %121, align 8, !tbaa !159
  br label %122

122:                                              ; preds = %118, %114, %104
  %123 = icmp sgt i64 %105, 1
  br i1 %123, label %104, label %124, !prof !365, !llvm.loop !366

124:                                              ; preds = %122, %100, %98, %93, %90
  %125 = phi i8 [ 1, %90 ], [ 1, %93 ], [ 1, %98 ], [ 0, %100 ], [ 0, %122 ]
  store i32 0, ptr @num_changes, align 4, !tbaa !163
  br label %126

126:                                              ; preds = %4, %7, %45, %124
  %127 = phi i8 [ %125, %124 ], [ 1, %7 ], [ 1, %4 ], [ 1, %45 ]
  ret i8 %127
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @canonicalize_change_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !369 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !163
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %20, !prof !370

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %12, ptr noundef %14) #29
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17, !prof !371

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !159
  %19 = load ptr, ptr %13, align 8, !tbaa !159
  tail call fastcc void @validate_change_1(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 0)
  tail call fastcc void @validate_change_1(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %18, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %20

20:                                               ; preds = %2, %10, %17
  %21 = phi i8 [ 1, %17 ], [ 0, %10 ], [ 0, %2 ]
  ret i8 %21
}

declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @insn_invalid_p(ptr noundef %0) local_unnamed_addr #10 !prof !372 {
  %2 = alloca [30 x ptr], align 16
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x %struct.funny_match], align 16
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #29
  store i32 0, ptr %7, align 4, !tbaa !163
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp ne i32 %11, 23
  %13 = load i32, ptr @reload_completed, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14, !prof !373
  %16 = load i32, ptr @reload_in_progress, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17, !prof !374
  %19 = select i1 %18, ptr null, ptr %7, !prof !374
  %20 = call i32 @recog(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %19) #29
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %127, label %22, !prof !375

22:                                               ; preds = %1
  %23 = load ptr, ptr %8, align 8, !tbaa !159
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %45 [
    i16 17, label %46
    i16 23, label %26
    i16 15, label %32
  ], !prof !171

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !159
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 17
  br i1 %31, label %46, label %45, !prof !172

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !148
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %45 [
    i16 17, label %46
    i16 23, label %39
  ], !prof !173

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 17
  br i1 %44, label %46, label %45, !prof !174

45:                                               ; preds = %39, %32, %26, %22
  br label %46

46:                                               ; preds = %45, %39, %32, %26, %22
  %47 = phi ptr [ null, %45 ], [ %23, %22 ], [ %28, %26 ], [ %41, %39 ], [ %36, %32 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %124, label %49, !prof !175

49:                                               ; preds = %46
  switch i16 %25, label %113 [
    i16 23, label %114
    i16 15, label %50
  ]

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !159
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !148
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 23
  %58 = load i32, ptr %52, align 8, !tbaa !176
  %59 = zext i32 %58 to i64
  br i1 %57, label %60, label %99

60:                                               ; preds = %50
  %61 = call i32 @llvm.smin.i32(i32 %58, i32 0)
  br label %62

62:                                               ; preds = %66, %60
  %63 = phi i64 [ %67, %66 ], [ %59, %60 ]
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = add nsw i64 %63, -1
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !148
  %70 = load i32, ptr %69, align 8
  %71 = trunc i32 %70 to i16
  switch i16 %71, label %110 [
    i16 23, label %72
    i16 25, label %62
  ], !llvm.loop !178

72:                                               ; preds = %66, %62
  %73 = phi i32 [ %64, %66 ], [ %61, %62 ]
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %77 = zext nneg i32 %73 to i64
  br label %81

78:                                               ; preds = %94
  %79 = add nuw nsw i64 %82, 1
  %80 = icmp eq i64 %79, %77
  br i1 %80, label %110, label %81, !llvm.loop !179

81:                                               ; preds = %78, %75
  %82 = phi i64 [ 0, %75 ], [ %79, %78 ]
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !148
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 23
  br i1 %87, label %88, label %110

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !159
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 17
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !159
  %97 = load ptr, ptr %76, align 8, !tbaa !159
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %78, label %110

99:                                               ; preds = %50, %103
  %100 = phi i64 [ %104, %103 ], [ %59, %50 ]
  %101 = trunc i64 %100 to i32
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = add nsw i64 %100, -1
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !148
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 25
  br i1 %109, label %99, label %110, !llvm.loop !180

110:                                              ; preds = %103, %99, %66, %94, %88, %81, %78, %72
  %111 = phi i32 [ %73, %72 ], [ %73, %78 ], [ %73, %81 ], [ %73, %88 ], [ %73, %94 ], [ 0, %66 ], [ 0, %99 ], [ 0, %103 ]
  %112 = phi i1 [ true, %72 ], [ false, %94 ], [ false, %88 ], [ false, %81 ], [ true, %78 ], [ false, %66 ], [ false, %103 ], [ %102, %99 ]
  br i1 %112, label %114, label %124

113:                                              ; preds = %49
  br label %114

114:                                              ; preds = %113, %110, %49
  %115 = phi i32 [ %111, %110 ], [ 1, %49 ], [ 0, %113 ]
  %116 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !159
  %118 = load i32, ptr %117, align 8, !tbaa !176
  %119 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !159
  %121 = load i32, ptr %120, align 8, !tbaa !176
  %122 = add i32 %118, %115
  %123 = add i32 %122, %121
  br label %124

124:                                              ; preds = %46, %110, %114
  %125 = phi i32 [ %123, %114 ], [ -1, %110 ], [ -1, %46 ]
  %126 = icmp sgt i32 %125, -1
  br label %127

127:                                              ; preds = %124, %1
  %128 = phi i1 [ false, %1 ], [ %126, %124 ]
  br i1 %128, label %129, label %135, !prof !376

129:                                              ; preds = %127
  %130 = load ptr, ptr %8, align 8, !tbaa !159
  %131 = call i32 @check_asm_operands(ptr noundef %130)
  %132 = icmp ne i32 %131, 0
  %133 = or i1 %21, %128
  %134 = and i1 %133, %132
  br i1 %134, label %137, label %967

135:                                              ; preds = %127
  %136 = or i1 %21, %128
  br i1 %136, label %137, label %967, !prof !375

137:                                              ; preds = %129, %135
  %138 = load i32, ptr %7, align 4, !tbaa !163
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %151, !prof !377

140:                                              ; preds = %137
  %141 = call i32 @added_clobbers_hard_reg_p(i32 noundef %20) #29
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %967

143:                                              ; preds = %140
  %144 = load i32, ptr %7, align 4, !tbaa !163
  %145 = add nsw i32 %144, 1
  %146 = call ptr @rtvec_alloc(i32 noundef %145) #29
  %147 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %146) #29
  %148 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !159
  %150 = getelementptr inbounds %struct.rtvec_def, ptr %149, i64 0, i32 1
  store ptr %9, ptr %150, align 8, !tbaa !148
  call void @add_clobbers(ptr noundef %147, i32 noundef %20) #29
  store ptr %147, ptr %8, align 8, !tbaa !159
  br label %151

151:                                              ; preds = %143, %137
  %152 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %965, label %154, !prof !378

154:                                              ; preds = %151
  %155 = load ptr, ptr %8, align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  %156 = load i32, ptr %155, align 8
  %157 = trunc i32 %156 to i16
  switch i16 %157, label %205 [
    i16 24, label %287
    i16 25, label %287
    i16 16, label %287
    i16 20, label %287
    i16 21, label %287
    i16 138, label %287
    i16 23, label %158
    i16 15, label %164
    i16 17, label %180
  ], !prof !187

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !159
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 17
  br i1 %163, label %180, label %205, !prof !188

164:                                              ; preds = %154
  %165 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !159
  %167 = getelementptr inbounds %struct.rtvec_def, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !148
  %169 = load i32, ptr %168, align 8
  %170 = trunc i32 %169 to i16
  switch i16 %170, label %205 [
    i16 23, label %171
    i16 17, label %180
  ], !prof !189

171:                                              ; preds = %164
  %172 = and i32 %169, 65535
  %173 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !159
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 65535
  %177 = icmp eq i32 %176, 17
  %178 = icmp eq i32 %172, 17
  %179 = or i1 %178, %177
  br i1 %179, label %180, label %205, !prof !190

180:                                              ; preds = %171, %164, %158, %154
  %181 = call i32 @asm_noperands(ptr noundef nonnull %155)
  %182 = trunc i32 %181 to i8
  store i8 %182, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %183 = icmp sgt i32 %181, -1
  br i1 %183, label %184, label %204

184:                                              ; preds = %180
  %185 = icmp slt i32 %181, 31
  br i1 %185, label %187, label %186

186:                                              ; preds = %184
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2078, ptr noundef nonnull @.str.1) #29
  br label %187

187:                                              ; preds = %186, %184
  %188 = call ptr @decode_asm_operands(ptr noundef nonnull %155, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), ptr noundef null)
  %189 = icmp eq i32 %181, 0
  br i1 %189, label %249, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), align 8, !tbaa !148
  store i8 1, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %192 = load i8, ptr %191, align 1, !tbaa !159
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %249, label %194

194:                                              ; preds = %190, %194
  %195 = phi i8 [ %202, %194 ], [ %192, %190 ]
  %196 = phi ptr [ %198, %194 ], [ %191, %190 ]
  %197 = phi i8 [ %201, %194 ], [ 1, %190 ]
  %198 = getelementptr inbounds i8, ptr %196, i64 1
  %199 = icmp eq i8 %195, 44
  %200 = zext i1 %199 to i8
  %201 = add i8 %197, %200
  store i8 %201, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %202 = load i8, ptr %198, align 1, !tbaa !159
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %249, label %194, !llvm.loop !191

204:                                              ; preds = %180
  call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2094, ptr noundef nonnull @.str.1) #29
  br label %205

205:                                              ; preds = %204, %171, %164, %158, %154
  %206 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !159
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %212, !prof !192

209:                                              ; preds = %205
  %210 = load ptr, ptr %8, align 8, !tbaa !159
  %211 = call i32 @recog(ptr noundef %210, ptr noundef %0, ptr noundef null) #29
  store i32 %211, ptr %206, align 8, !tbaa !159
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i32, ptr %206, align 8, !tbaa !159
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216, !prof !193

215:                                              ; preds = %212
  call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2103, ptr noundef nonnull @.str.1) #29
  br label %216

216:                                              ; preds = %215, %212
  %217 = sext i32 %213 to i64
  %218 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %217, i32 4
  %219 = load i8, ptr %218, align 8, !tbaa !194
  %220 = sext i8 %219 to i32
  store i8 %219, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %221 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %217, i32 6
  %222 = load i8, ptr %221, align 2, !tbaa !196
  store i8 %222, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %223 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %217, i32 5
  %224 = load i8, ptr %223, align 1, !tbaa !197
  store i8 %224, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  call void @insn_extract(ptr noundef %0) #29
  %225 = icmp sgt i8 %219, 0
  br i1 %225, label %226, label %249, !prof !198

226:                                              ; preds = %216
  %227 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %217, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !199
  %229 = zext nneg i32 %220 to i64
  br label %230

230:                                              ; preds = %246, %226
  %231 = phi i64 [ 0, %226 ], [ %247, %246 ]
  %232 = getelementptr inbounds %struct.insn_operand_data, ptr %228, i64 %231, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !200
  %234 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %231
  store ptr %233, ptr %234, align 8, !tbaa !148
  %235 = getelementptr inbounds %struct.insn_operand_data, ptr %228, i64 %231, i32 2
  %236 = load i16, ptr %235, align 8
  %237 = zext i16 %236 to i32
  %238 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %231
  store i32 %237, ptr %238, align 4, !tbaa !163
  %239 = icmp eq i16 %236, 0
  br i1 %239, label %240, label %246, !prof !202

240:                                              ; preds = %230
  %241 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %231
  %242 = load ptr, ptr %241, align 8, !tbaa !148
  %243 = load i32, ptr %242, align 8
  %244 = lshr i32 %243, 16
  %245 = and i32 %244, 255
  store i32 %245, ptr %238, align 4, !tbaa !163
  br label %246

246:                                              ; preds = %240, %230
  %247 = add nuw nsw i64 %231, 1
  %248 = icmp eq i64 %247, %229
  br i1 %248, label %249, label %230, !prof !203, !llvm.loop !204

249:                                              ; preds = %194, %246, %216, %190, %187
  %250 = phi i32 [ 0, %187 ], [ %220, %216 ], [ %181, %190 ], [ %220, %246 ], [ %181, %194 ]
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %266, !prof !198

252:                                              ; preds = %249
  %253 = zext nneg i32 %250 to i64
  br label %254

254:                                              ; preds = %254, %252
  %255 = phi i64 [ 0, %252 ], [ %264, %254 ]
  %256 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !148
  %258 = load i8, ptr %257, align 1, !tbaa !159
  %259 = icmp eq i8 %258, 61
  %260 = icmp eq i8 %258, 43
  %261 = select i1 %260, i32 2, i32 0, !prof !205
  %262 = select i1 %259, i32 1, i32 %261, !prof !206
  %263 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %255
  store i32 %262, ptr %263, align 4, !tbaa !163
  %264 = add nuw nsw i64 %255, 1
  %265 = icmp eq i64 %264, %253
  br i1 %265, label %266, label %254, !prof !203, !llvm.loop !207

266:                                              ; preds = %254, %249
  %267 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %268 = icmp slt i8 %267, 31
  br i1 %268, label %270, label %269, !prof !208

269:                                              ; preds = %266
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2126, ptr noundef nonnull @.str.1) #29
  br label %270

270:                                              ; preds = %269, %266
  %271 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %272 = load i32, ptr %271, align 8, !tbaa !159
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %279, !prof !193

274:                                              ; preds = %270
  %275 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %276 = icmp sgt i8 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = zext nneg i8 %275 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %278, i1 false), !tbaa !159
  br label %286

279:                                              ; preds = %270
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  %280 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %281 = icmp sgt i8 %280, 0
  br i1 %281, label %282, label %286, !prof !198

282:                                              ; preds = %279
  %283 = zext nneg i8 %280 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %283, i1 false), !tbaa !159
  %284 = zext nneg i8 %280 to i32
  %285 = add nsw i32 %284, -1
  store i32 %285, ptr @which_alternative, align 4, !tbaa !163
  br label %286

286:                                              ; preds = %282, %279, %277, %274
  store ptr null, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  store i32 -1, ptr @which_alternative, align 4, !tbaa !163
  br label %287

287:                                              ; preds = %154, %154, %154, %154, %154, %154, %286
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #29
  store i32 0, ptr @which_alternative, align 4, !tbaa !163
  %288 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %289 = icmp eq i8 %288, 0
  %290 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %291 = icmp eq i8 %290, 0
  %292 = select i1 %289, i1 true, i1 %291, !prof !211
  br i1 %292, label %964, label %293, !prof !212

293:                                              ; preds = %287
  %294 = icmp sgt i8 %288, 0
  br i1 %294, label %295, label %299, !prof !213

295:                                              ; preds = %293
  %296 = zext nneg i8 %288 to i64
  %297 = shl nuw nsw i64 %296, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 -1, i64 %297, i1 false), !tbaa !163
  %298 = shl nuw nsw i64 %296, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %298, i1 false), !tbaa !148
  br label %299

299:                                              ; preds = %295, %293
  br label %300

300:                                              ; preds = %299, %958
  %301 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !159
  %305 = icmp eq i8 %304, 0
  %306 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %307 = icmp sgt i8 %306, 0
  br i1 %305, label %309, label %308, !prof !214

308:                                              ; preds = %300
  br i1 %307, label %327, label %853, !prof !215

309:                                              ; preds = %300
  br i1 %307, label %310, label %952

310:                                              ; preds = %309
  %311 = zext nneg i8 %306 to i64
  br label %312

312:                                              ; preds = %321, %310
  %313 = phi i64 [ 0, %310 ], [ %325, %321 ]
  %314 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !148
  br label %316

316:                                              ; preds = %319, %312
  %317 = phi ptr [ %315, %312 ], [ %320, %319 ]
  %318 = load i8, ptr %317, align 1, !tbaa !159
  switch i8 %318, label %319 [
    i8 0, label %321
    i8 44, label %321
  ]

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, ptr %317, i64 1
  br label %316, !llvm.loop !216

321:                                              ; preds = %316, %316
  %322 = icmp eq i8 %318, 44
  %323 = zext i1 %322 to i64
  %324 = getelementptr inbounds i8, ptr %317, i64 %323
  store ptr %324, ptr %314, align 8, !tbaa !148
  %325 = add nuw nsw i64 %313, 1
  %326 = icmp eq i64 %325, %311
  br i1 %326, label %952, label %312, !llvm.loop !217

327:                                              ; preds = %308, %846
  %328 = phi i64 [ %849, %846 ], [ 0, %308 ]
  %329 = phi i32 [ %839, %846 ], [ 0, %308 ]
  %330 = phi i32 [ %848, %846 ], [ 0, %308 ]
  %331 = phi i32 [ %838, %846 ], [ -1, %308 ]
  %332 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %328
  %333 = load ptr, ptr %332, align 8, !tbaa !148
  %334 = load i32, ptr %333, align 8
  %335 = lshr i32 %334, 16
  %336 = and i32 %335, 255
  %337 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %328
  %338 = load ptr, ptr %337, align 8, !tbaa !148
  %339 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %328
  store i32 0, ptr %339, align 4, !tbaa !163
  %340 = and i32 %334, 65535
  %341 = zext nneg i32 %340 to i64
  %342 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !163
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %348, !prof !218

345:                                              ; preds = %327
  %346 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !159
  br label %348

348:                                              ; preds = %345, %327
  %349 = phi ptr [ %347, %345 ], [ %333, %327 ]
  %350 = load i32, ptr %349, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 39
  br i1 %352, label %353, label %374, !prof !219

353:                                              ; preds = %348
  %354 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !159
  %356 = load i32, ptr %355, align 8
  %357 = and i32 %356, 65535
  %358 = icmp eq i32 %357, 37
  br i1 %358, label %359, label %371, !prof !220

359:                                              ; preds = %353
  %360 = getelementptr inbounds %struct.rtx_def, ptr %355, i64 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !159
  %362 = icmp ult i32 %361, 53
  br i1 %362, label %363, label %371, !prof !221

363:                                              ; preds = %359
  %364 = lshr i32 %356, 16
  %365 = and i32 %364, 255
  %366 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1, i32 0, i32 0, i64 1
  %367 = load i32, ptr %366, align 8, !tbaa !159
  %368 = lshr i32 %350, 16
  %369 = and i32 %368, 255
  %370 = call i32 @subreg_regno_offset(i32 noundef %361, i32 noundef %365, i32 noundef %367, i32 noundef %369) #29
  br label %371

371:                                              ; preds = %363, %359, %353
  %372 = phi i32 [ %370, %363 ], [ 0, %359 ], [ 0, %353 ]
  %373 = load ptr, ptr %354, align 8, !tbaa !159
  br label %374

374:                                              ; preds = %371, %348
  %375 = phi ptr [ %373, %371 ], [ %349, %348 ]
  %376 = phi i32 [ %372, %371 ], [ 0, %348 ]
  %377 = load i8, ptr %338, align 1, !tbaa !159
  %378 = icmp eq i8 %377, 0
  %379 = icmp eq i8 %377, 44
  %380 = or i1 %378, %379
  %381 = zext i1 %380 to i32
  br label %382

382:                                              ; preds = %837, %374
  %383 = phi i32 [ %331, %374 ], [ %838, %837 ]
  %384 = phi i32 [ %329, %374 ], [ %839, %837 ]
  %385 = phi ptr [ %338, %374 ], [ %844, %837 ]
  %386 = phi i32 [ %381, %374 ], [ %841, %837 ]
  %387 = load i8, ptr %385, align 1, !tbaa !159
  %388 = sext i8 %387 to i32
  %389 = icmp eq i8 %387, 89
  %390 = select i1 %389, i64 2, i64 1, !prof !222
  switch i8 %387, label %792 [
    i8 0, label %391
    i8 44, label %392
    i8 63, label %837
    i8 33, label %837
    i8 42, label %837
    i8 37, label %837
    i8 61, label %837
    i8 43, label %837
    i8 35, label %393
    i8 38, label %397
    i8 48, label %401
    i8 49, label %401
    i8 50, label %401
    i8 51, label %401
    i8 52, label %401
    i8 53, label %401
    i8 54, label %401
    i8 55, label %401
    i8 56, label %401
    i8 57, label %401
    i8 112, label %446
    i8 103, label %452
    i8 88, label %635
    i8 109, label %636
    i8 60, label %666
    i8 62, label %676
    i8 69, label %686
    i8 70, label %686
    i8 71, label %697
    i8 72, label %697
    i8 115, label %706
    i8 105, label %712
    i8 110, label %720
    i8 73, label %727
    i8 74, label %727
    i8 75, label %727
    i8 76, label %727
    i8 77, label %727
    i8 78, label %727
    i8 79, label %727
    i8 80, label %727
    i8 86, label %738
    i8 111, label %757
  ], !prof !223

391:                                              ; preds = %382
  br label %837

392:                                              ; preds = %382
  br label %837

393:                                              ; preds = %382, %393
  %394 = phi ptr [ %395, %393 ], [ %385, %382 ]
  %395 = getelementptr inbounds i8, ptr %394, i64 1
  %396 = load i8, ptr %395, align 1, !tbaa !159
  switch i8 %396, label %393 [
    i8 0, label %837
    i8 44, label %837
  ]

397:                                              ; preds = %382
  %398 = trunc i64 %328 to i32
  store i32 1, ptr %339, align 4, !tbaa !163
  %399 = icmp slt i32 %383, 0
  %400 = select i1 %399, i32 %398, i32 %383
  br label %837

401:                                              ; preds = %382, %382, %382, %382, %382, %382, %382, %382, %382, %382
  %402 = trunc i64 %328 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %403 = call i64 @strtoul(ptr noundef %385, ptr noundef nonnull %6, i32 noundef 10)
  %404 = trunc i64 %403 to i32
  %405 = load ptr, ptr %6, align 8, !tbaa !148
  %406 = shl i64 %403, 32
  %407 = ashr exact i64 %406, 32
  %408 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !148
  %410 = load ptr, ptr %332, align 8, !tbaa !148
  %411 = load i32, ptr %409, align 8
  %412 = and i32 %411, 65535
  %413 = zext nneg i32 %412 to i64
  %414 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !163
  %416 = icmp eq i32 %415, 4
  br i1 %416, label %417, label %420, !prof !225

417:                                              ; preds = %401
  %418 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !159
  br label %420

420:                                              ; preds = %417, %401
  %421 = phi ptr [ %419, %417 ], [ %409, %401 ]
  %422 = load i32, ptr %410, align 8
  %423 = and i32 %422, 65535
  %424 = zext nneg i32 %423 to i64
  %425 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !163
  %427 = icmp eq i32 %426, 4
  br i1 %427, label %428, label %431, !prof !225

428:                                              ; preds = %420
  %429 = getelementptr inbounds %struct.rtx_def, ptr %410, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !159
  br label %431

431:                                              ; preds = %428, %420
  %432 = phi ptr [ %430, %428 ], [ %410, %420 ]
  %433 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %328
  %434 = call i32 @operands_match_p(ptr noundef %421, ptr noundef %432) #29
  store i32 %404, ptr %433, align 4, !tbaa !163
  %435 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %407
  store i32 %402, ptr %435, align 4, !tbaa !163
  %436 = icmp eq i32 %434, 0
  %437 = select i1 %436, i32 %386, i32 1, !prof !226
  %438 = icmp eq i32 %434, 2
  br i1 %438, label %439, label %444, !prof !227

439:                                              ; preds = %431
  %440 = sext i32 %384 to i64
  %441 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %440
  store i32 %402, ptr %441, align 8, !tbaa !228
  %442 = add nsw i32 %384, 1
  %443 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %440, i32 1
  store i32 %404, ptr %443, align 4, !tbaa !230
  br label %444

444:                                              ; preds = %439, %431
  %445 = phi i32 [ %442, %439 ], [ %384, %431 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %837

446:                                              ; preds = %382
  %447 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %328
  %448 = load i32, ptr %447, align 4, !tbaa !163
  %449 = call i32 @strict_memory_address_addr_space_p(i32 noundef %448, ptr noundef %375, i8 noundef zeroext 0) #29
  %450 = icmp eq i32 %449, 0
  %451 = select i1 %450, i32 %386, i32 1, !prof !232
  br label %837

452:                                              ; preds = %382
  %453 = load i32, ptr %375, align 8
  %454 = and i32 %453, 65535
  %455 = icmp eq i32 %454, 37
  br i1 %455, label %456, label %488, !prof !233

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %458 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %463, label %460, !prof !235

460:                                              ; preds = %456
  %461 = load i32, ptr %457, align 8, !tbaa !159
  %462 = icmp ugt i32 %461, 52
  br i1 %462, label %837, label %463

463:                                              ; preds = %460, %456
  %464 = load i32, ptr %457, align 8, !tbaa !159
  %465 = icmp slt i32 %464, 53
  br i1 %465, label %466, label %837, !prof !236

466:                                              ; preds = %463
  %467 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !237
  %468 = add nsw i32 %464, %376
  %469 = zext nneg i32 %468 to i64
  %470 = shl nuw i64 1, %469
  %471 = and i64 %467, %470
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %837, label %473, !prof !238

473:                                              ; preds = %466
  %474 = zext nneg i32 %336 to i64
  %475 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %469, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !159
  %477 = zext i8 %476 to i32
  %478 = add i32 %468, %477
  br label %479

479:                                              ; preds = %483, %473
  %480 = phi i32 [ %468, %473 ], [ %481, %483 ]
  %481 = add i32 %480, 1
  %482 = icmp ult i32 %481, %478
  br i1 %482, label %483, label %837, !prof !239

483:                                              ; preds = %479
  %484 = zext nneg i32 %481 to i64
  %485 = shl nuw i64 1, %484
  %486 = and i64 %485, %467
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %837, label %479, !llvm.loop !240

488:                                              ; preds = %452
  %489 = icmp eq i32 %336, 0
  %490 = lshr i32 %453, 16
  %491 = and i32 %490, 255
  %492 = select i1 %489, i32 %491, i32 %336, !prof !242
  %493 = and i32 %453, 16711680
  %494 = icmp eq i32 %493, 0
  %495 = icmp ne i32 %492, 0
  %496 = and i1 %494, %495
  br i1 %496, label %497, label %503, !prof !243

497:                                              ; preds = %488
  %498 = zext nneg i32 %492 to i64
  %499 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %498
  %500 = load i8, ptr %499, align 1, !tbaa !159
  %501 = and i8 %500, -2
  %502 = icmp eq i8 %501, 2
  br i1 %502, label %503, label %631, !prof !244

503:                                              ; preds = %497, %488
  %504 = icmp eq i32 %454, 30
  %505 = and i1 %504, %495
  br i1 %505, label %506, label %512, !prof !245

506:                                              ; preds = %503
  %507 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %508 = load i64, ptr %507, align 8, !tbaa !159
  %509 = call i64 @trunc_int_for_mode(i64 noundef %508, i32 noundef %492) #29
  %510 = load i64, ptr %507, align 8, !tbaa !159
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %512, label %631, !prof !246

512:                                              ; preds = %506, %503
  %513 = load i32, ptr %375, align 8
  %514 = and i32 %513, 65535
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !163
  %518 = icmp eq i32 %517, 9
  %519 = lshr i32 %513, 16
  %520 = and i32 %519, 255
  br i1 %518, label %521, label %537, !prof !247

521:                                              ; preds = %512
  %522 = icmp eq i32 %520, 0
  br i1 %522, label %527, label %523, !prof !248

523:                                              ; preds = %521
  %524 = icmp eq i32 %520, %492
  %525 = icmp eq i32 %492, 0
  %526 = or i1 %525, %524
  br i1 %526, label %527, label %631, !prof !249

527:                                              ; preds = %523, %521
  %528 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %533, label %530, !prof !250

530:                                              ; preds = %527
  %531 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %375) #29
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %631, label %533

533:                                              ; preds = %530, %527
  %534 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %375) #29
  %535 = icmp ne i8 %534, 0
  %536 = zext i1 %535 to i32
  br label %631

537:                                              ; preds = %512
  %538 = icmp eq i32 %520, %492
  br i1 %538, label %539, label %631, !prof !251

539:                                              ; preds = %537
  %540 = icmp eq i32 %454, 39
  br i1 %540, label %541, label %588, !prof !252

541:                                              ; preds = %539
  %542 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !159
  %544 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %565, !prof !253

546:                                              ; preds = %541
  %547 = load i32, ptr %543, align 8
  %548 = and i32 %547, 65535
  %549 = icmp eq i32 %548, 43
  br i1 %549, label %550, label %560, !prof !254

550:                                              ; preds = %546
  %551 = zext nneg i32 %492 to i64
  %552 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !159
  %554 = lshr i32 %547, 16
  %555 = and i32 %554, 255
  %556 = zext nneg i32 %555 to i64
  %557 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %556
  %558 = load i8, ptr %557, align 1, !tbaa !159
  %559 = icmp ugt i8 %553, %558
  br i1 %559, label %584, label %560

560:                                              ; preds = %550, %546
  %561 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1, i32 0, i32 0, i64 1
  %562 = load i32, ptr %561, align 8, !tbaa !159
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %565, label %564, !prof !253

564:                                              ; preds = %560
  br i1 %549, label %584, label %565

565:                                              ; preds = %564, %560, %541
  %566 = zext nneg i32 %520 to i64
  %567 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !159
  %569 = and i8 %568, -2
  %570 = icmp eq i8 %569, 8
  br i1 %570, label %571, label %581, !prof !254

571:                                              ; preds = %565
  %572 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %566
  %573 = load i8, ptr %572, align 1, !tbaa !159
  %574 = load i32, ptr %543, align 8
  %575 = lshr i32 %574, 16
  %576 = and i32 %575, 255
  %577 = zext nneg i32 %576 to i64
  %578 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %577
  %579 = load i8, ptr %578, align 1, !tbaa !159
  %580 = icmp ugt i8 %573, %579
  br i1 %580, label %584, label %581

581:                                              ; preds = %571, %565
  %582 = load i32, ptr %543, align 8
  %583 = and i32 %582, 65535
  br label %584

584:                                              ; preds = %581, %571, %564, %550
  %585 = phi i32 [ %583, %581 ], [ 39, %550 ], [ 39, %564 ], [ 39, %571 ]
  %586 = phi i1 [ true, %581 ], [ false, %550 ], [ false, %564 ], [ false, %571 ]
  %587 = phi ptr [ %543, %581 ], [ %375, %550 ], [ %375, %564 ], [ %375, %571 ]
  br i1 %586, label %588, label %631, !prof !253

588:                                              ; preds = %584, %539
  %589 = phi i32 [ %585, %584 ], [ %454, %539 ]
  %590 = phi ptr [ %587, %584 ], [ %375, %539 ]
  switch i32 %589, label %630 [
    i32 37, label %591
    i32 43, label %601
  ], !prof !255

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1
  %593 = load i32, ptr %592, align 8, !tbaa !159
  %594 = icmp ugt i32 %593, 52
  br i1 %594, label %631, label %595, !prof !256

595:                                              ; preds = %591
  %596 = zext nneg i32 %593 to i64
  %597 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !163
  %599 = icmp ne i32 %598, 0
  %600 = zext i1 %599 to i32
  br label %631

601:                                              ; preds = %588
  %602 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1
  %603 = load ptr, ptr %602, align 8, !tbaa !159
  %604 = load i32, ptr @volatile_ok, align 4, !tbaa !163
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %610, !prof !257

606:                                              ; preds = %601
  %607 = load i32, ptr %590, align 8
  %608 = and i32 %607, 134217728
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %627, !prof !258

610:                                              ; preds = %606, %601
  %611 = load i32, ptr %590, align 8
  %612 = lshr i32 %611, 16
  %613 = and i32 %612, 255
  %614 = getelementptr inbounds %struct.rtx_def, ptr %590, i64 0, i32 1, i32 0, i32 0, i64 1
  %615 = load ptr, ptr %614, align 8, !tbaa !159
  %616 = icmp eq ptr %615, null
  br i1 %616, label %620, label %617, !prof !259

617:                                              ; preds = %610
  %618 = getelementptr inbounds %struct.mem_attrs, ptr %615, i64 0, i32 5
  %619 = load i8, ptr %618, align 8, !tbaa !260
  br label %620

620:                                              ; preds = %617, %610
  %621 = phi i8 [ %619, %617 ], [ 0, %610 ]
  %622 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %623 = call zeroext i8 %622(i32 noundef %613, ptr noundef %603, i8 noundef zeroext 0, i8 noundef zeroext %621) #29, !prof !379
  %624 = icmp eq i8 %623, 0
  %625 = xor i1 %624, true
  %626 = zext i1 %625 to i32
  br label %627

627:                                              ; preds = %620, %606
  %628 = phi i1 [ false, %606 ], [ %624, %620 ]
  %629 = phi i32 [ 0, %606 ], [ %626, %620 ]
  br i1 %628, label %630, label %631, !prof !275

630:                                              ; preds = %627, %588
  br label %631

631:                                              ; preds = %630, %627, %595, %591, %584, %537, %533, %530, %523, %506, %497
  %632 = phi i32 [ 0, %630 ], [ 0, %584 ], [ 0, %497 ], [ %536, %533 ], [ 0, %523 ], [ 0, %537 ], [ 1, %591 ], [ %600, %595 ], [ 0, %506 ], [ 0, %530 ], [ %629, %627 ]
  %633 = icmp eq i32 %632, 0
  %634 = select i1 %633, i32 %386, i32 1, !prof !276
  br label %837

635:                                              ; preds = %382
  br label %837

636:                                              ; preds = %382
  %637 = load i32, ptr %375, align 8
  %638 = and i32 %637, 65535
  %639 = icmp eq i32 %638, 43
  br i1 %639, label %640, label %656, !prof !277

640:                                              ; preds = %636
  %641 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %642 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1, i32 0, i32 0, i64 1
  %643 = lshr i32 %637, 16
  %644 = and i32 %643, 255
  %645 = load ptr, ptr %641, align 8, !tbaa !159
  %646 = load ptr, ptr %642, align 8, !tbaa !159
  %647 = icmp eq ptr %646, null
  br i1 %647, label %651, label %648, !prof !279

648:                                              ; preds = %640
  %649 = getelementptr inbounds %struct.mem_attrs, ptr %646, i64 0, i32 5
  %650 = load i8, ptr %649, align 8, !tbaa !260
  br label %651

651:                                              ; preds = %648, %640
  %652 = phi i8 [ %650, %648 ], [ 0, %640 ]
  %653 = call i32 @strict_memory_address_addr_space_p(i32 noundef %644, ptr noundef %645, i8 noundef zeroext %652) #29
  %654 = icmp eq i32 %653, 0
  %655 = select i1 %654, i32 %386, i32 1, !prof !280
  br label %837

656:                                              ; preds = %636
  %657 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %837, label %659, !prof !287

659:                                              ; preds = %656
  %660 = icmp eq i32 %638, 37
  br i1 %660, label %661, label %837

661:                                              ; preds = %659
  %662 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %663 = load i32, ptr %662, align 8, !tbaa !159
  %664 = icmp ugt i32 %663, 52
  %665 = select i1 %664, i32 1, i32 %386
  br label %837

666:                                              ; preds = %382
  %667 = load i32, ptr %375, align 8
  %668 = and i32 %667, 65535
  %669 = icmp eq i32 %668, 43
  br i1 %669, label %670, label %837, !prof !288

670:                                              ; preds = %666
  %671 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %672 = load ptr, ptr %671, align 8, !tbaa !159
  %673 = load i32, ptr %672, align 8
  %674 = trunc i32 %673 to i16
  switch i16 %674, label %837 [
    i16 74, label %675
    i16 76, label %675
  ], !prof !289

675:                                              ; preds = %670, %670
  br label %837

676:                                              ; preds = %382
  %677 = load i32, ptr %375, align 8
  %678 = and i32 %677, 65535
  %679 = icmp eq i32 %678, 43
  br i1 %679, label %680, label %837

680:                                              ; preds = %676
  %681 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %682 = load ptr, ptr %681, align 8, !tbaa !159
  %683 = load i32, ptr %682, align 8
  %684 = trunc i32 %683 to i16
  switch i16 %684, label %837 [
    i16 75, label %685
    i16 77, label %685
  ]

685:                                              ; preds = %680, %680
  br label %837

686:                                              ; preds = %382, %382
  %687 = load i32, ptr %375, align 8
  %688 = trunc i32 %687 to i16
  switch i16 %688, label %837 [
    i16 32, label %696
    i16 33, label %689
  ], !prof !290

689:                                              ; preds = %686
  %690 = lshr i32 %687, 16
  %691 = and i32 %690, 255
  %692 = zext nneg i32 %691 to i64
  %693 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %692
  %694 = load i8, ptr %693, align 1, !tbaa !159
  %695 = icmp eq i8 %694, 17
  br i1 %695, label %696, label %837

696:                                              ; preds = %689, %686
  br label %837

697:                                              ; preds = %382, %382
  %698 = load i32, ptr %375, align 8
  %699 = and i32 %698, 65535
  %700 = icmp eq i32 %699, 32
  br i1 %700, label %701, label %837, !prof !291

701:                                              ; preds = %697
  %702 = call i32 @lookup_constraint(ptr noundef %385) #29
  %703 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %375, i32 noundef %702) #29
  %704 = icmp eq i8 %703, 0
  %705 = select i1 %704, i32 %386, i32 1
  br label %837

706:                                              ; preds = %382
  %707 = load i32, ptr %375, align 8
  %708 = trunc i32 %707 to i16
  switch i16 %708, label %712 [
    i16 30, label %837
    i16 32, label %709
  ]

709:                                              ; preds = %706
  %710 = and i32 %707, 16711680
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %837, label %712

712:                                              ; preds = %709, %706, %382
  %713 = load i32, ptr %375, align 8
  %714 = and i32 %713, 65535
  %715 = zext nneg i32 %714 to i64
  %716 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %715
  %717 = load i32, ptr %716, align 4, !tbaa !163
  %718 = icmp eq i32 %717, 9
  %719 = select i1 %718, i32 1, i32 %386, !prof !292
  br label %837

720:                                              ; preds = %382
  %721 = load i32, ptr %375, align 8
  %722 = trunc i32 %721 to i16
  switch i16 %722, label %837 [
    i16 30, label %726
    i16 32, label %723
  ], !prof !293

723:                                              ; preds = %720
  %724 = and i32 %721, 16711680
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %837

726:                                              ; preds = %723, %720
  br label %837

727:                                              ; preds = %382, %382, %382, %382, %382, %382, %382, %382
  %728 = load i32, ptr %375, align 8
  %729 = and i32 %728, 65535
  %730 = icmp eq i32 %729, 30
  br i1 %730, label %731, label %837, !prof !294

731:                                              ; preds = %727
  %732 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %733 = load i64, ptr %732, align 8, !tbaa !159
  %734 = call i32 @lookup_constraint(ptr noundef %385) #29
  %735 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %733, i32 noundef %734) #29
  %736 = icmp eq i8 %735, 0
  %737 = select i1 %736, i32 %386, i32 1, !prof !295
  br label %837

738:                                              ; preds = %382
  %739 = load i32, ptr %375, align 8
  %740 = and i32 %739, 65535
  %741 = icmp eq i32 %740, 43
  br i1 %741, label %742, label %837

742:                                              ; preds = %738
  %743 = call i32 @offsettable_memref_p(ptr noundef %375), !range !296
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %756, label %745

745:                                              ; preds = %742
  %746 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %837, label %748

748:                                              ; preds = %745
  %749 = load i32, ptr %375, align 8
  %750 = and i32 %749, 65535
  %751 = icmp eq i32 %750, 37
  br i1 %751, label %752, label %756

752:                                              ; preds = %748
  %753 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %754 = load i32, ptr %753, align 8, !tbaa !159
  %755 = icmp ugt i32 %754, 52
  br i1 %755, label %837, label %756

756:                                              ; preds = %752, %748, %742
  br label %837

757:                                              ; preds = %382
  %758 = load i32, ptr %375, align 8
  %759 = and i32 %758, 65535
  %760 = icmp eq i32 %759, 43
  br i1 %760, label %761, label %777, !prof !298

761:                                              ; preds = %757
  %762 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %763 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1, i32 0, i32 0, i64 1
  %764 = lshr i32 %758, 16
  %765 = and i32 %764, 255
  %766 = load ptr, ptr %762, align 8, !tbaa !159
  %767 = load ptr, ptr %763, align 8, !tbaa !159
  %768 = icmp eq ptr %767, null
  br i1 %768, label %772, label %769

769:                                              ; preds = %761
  %770 = getelementptr inbounds %struct.mem_attrs, ptr %767, i64 0, i32 5
  %771 = load i8, ptr %770, align 8, !tbaa !260
  br label %772

772:                                              ; preds = %769, %761
  %773 = phi i8 [ %771, %769 ], [ 0, %761 ]
  %774 = call i32 @offsettable_address_addr_space_p(i32 noundef 1, i32 noundef %765, ptr noundef %766, i8 noundef zeroext %773)
  %775 = icmp ne i32 %774, 0
  %776 = zext i1 %775 to i32
  br label %777

777:                                              ; preds = %772, %757
  %778 = phi i32 [ 0, %757 ], [ %776, %772 ]
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %791, !prof !297

780:                                              ; preds = %777
  %781 = load i32, ptr @reload_in_progress, align 4, !tbaa !163
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %837, label %783, !prof !297

783:                                              ; preds = %780
  %784 = load i32, ptr %375, align 8
  %785 = and i32 %784, 65535
  %786 = icmp eq i32 %785, 37
  br i1 %786, label %787, label %837

787:                                              ; preds = %783
  %788 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %789 = load i32, ptr %788, align 8, !tbaa !159
  %790 = icmp ugt i32 %789, 52
  br i1 %790, label %791, label %837

791:                                              ; preds = %787, %777
  br label %837

792:                                              ; preds = %382
  %793 = icmp eq i8 %387, 114
  br i1 %793, label %797, label %794, !prof !299

794:                                              ; preds = %792
  %795 = call i32 @lookup_constraint(ptr noundef %385) #29
  %796 = call i32 @regclass_for_constraint(i32 noundef %795) #29
  br label %797

797:                                              ; preds = %794, %792
  %798 = phi i32 [ %796, %794 ], [ 13, %792 ]
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %832, label %800, !prof !300

800:                                              ; preds = %797
  %801 = load i32, ptr %375, align 8
  %802 = and i32 %801, 65535
  %803 = icmp eq i32 %802, 37
  br i1 %803, label %804, label %837, !prof !306

804:                                              ; preds = %800
  %805 = getelementptr inbounds %struct.rtx_def, ptr %375, i64 0, i32 1
  %806 = load i32, ptr %805, align 8, !tbaa !159
  %807 = icmp slt i32 %806, 53
  br i1 %807, label %808, label %837, !prof !307

808:                                              ; preds = %804
  %809 = sext i32 %798 to i64
  %810 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %809
  %811 = load i64, ptr %810, align 8, !tbaa !237
  %812 = add nsw i32 %806, %376
  %813 = zext nneg i32 %812 to i64
  %814 = shl nuw i64 1, %813
  %815 = and i64 %811, %814
  %816 = icmp eq i64 %815, 0
  br i1 %816, label %837, label %817, !prof !308

817:                                              ; preds = %808
  %818 = zext nneg i32 %336 to i64
  %819 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %813, i64 %818
  %820 = load i8, ptr %819, align 1, !tbaa !159
  %821 = zext i8 %820 to i32
  %822 = add i32 %812, %821
  br label %823

823:                                              ; preds = %827, %817
  %824 = phi i32 [ %812, %817 ], [ %825, %827 ]
  %825 = add i32 %824, 1
  %826 = icmp ult i32 %825, %822
  br i1 %826, label %827, label %837, !prof !309

827:                                              ; preds = %823
  %828 = zext nneg i32 %825 to i64
  %829 = shl nuw i64 1, %828
  %830 = and i64 %829, %811
  %831 = icmp eq i64 %830, 0
  br i1 %831, label %837, label %823, !prof !310, !llvm.loop !240

832:                                              ; preds = %797
  %833 = call i32 @lookup_constraint(ptr noundef %385) #29
  %834 = call zeroext i8 @constraint_satisfied_p(ptr noundef %375, i32 noundef %833) #29
  %835 = icmp eq i8 %834, 0
  %836 = select i1 %835, i32 %386, i32 1, !prof !311
  br label %837

837:                                              ; preds = %483, %479, %393, %393, %827, %823, %651, %631, %446, %832, %808, %804, %800, %791, %787, %783, %780, %756, %752, %745, %738, %731, %727, %726, %723, %720, %712, %709, %706, %701, %697, %696, %689, %686, %685, %680, %676, %675, %670, %666, %661, %659, %656, %635, %466, %463, %460, %444, %397, %392, %391, %382, %382, %382, %382, %382, %382
  %838 = phi i32 [ %383, %791 ], [ %383, %783 ], [ %383, %780 ], [ %383, %752 ], [ %383, %756 ], [ %383, %745 ], [ %383, %738 ], [ %383, %726 ], [ %383, %723 ], [ %383, %696 ], [ %383, %685 ], [ %383, %676 ], [ %383, %675 ], [ %383, %666 ], [ %383, %659 ], [ %383, %656 ], [ %383, %635 ], [ %383, %444 ], [ %383, %392 ], [ %383, %391 ], [ %400, %397 ], [ %383, %661 ], [ %383, %670 ], [ %383, %680 ], [ %383, %701 ], [ %383, %712 ], [ %383, %720 ], [ %383, %731 ], [ %383, %832 ], [ %383, %800 ], [ %383, %382 ], [ %383, %382 ], [ %383, %382 ], [ %383, %382 ], [ %383, %382 ], [ %383, %382 ], [ %383, %460 ], [ %383, %686 ], [ %383, %689 ], [ %383, %697 ], [ %383, %706 ], [ %383, %709 ], [ %383, %727 ], [ %383, %787 ], [ %383, %466 ], [ %383, %463 ], [ %383, %808 ], [ %383, %804 ], [ %383, %446 ], [ %383, %631 ], [ %383, %651 ], [ %383, %823 ], [ %383, %827 ], [ %383, %393 ], [ %383, %393 ], [ %383, %479 ], [ %383, %483 ]
  %839 = phi i32 [ %384, %791 ], [ %384, %783 ], [ %384, %780 ], [ %384, %752 ], [ %384, %756 ], [ %384, %745 ], [ %384, %738 ], [ %384, %726 ], [ %384, %723 ], [ %384, %696 ], [ %384, %685 ], [ %384, %676 ], [ %384, %675 ], [ %384, %666 ], [ %384, %659 ], [ %384, %656 ], [ %384, %635 ], [ %445, %444 ], [ %384, %392 ], [ %384, %391 ], [ %384, %397 ], [ %384, %661 ], [ %384, %670 ], [ %384, %680 ], [ %384, %701 ], [ %384, %712 ], [ %384, %720 ], [ %384, %731 ], [ %384, %832 ], [ %384, %800 ], [ %384, %382 ], [ %384, %382 ], [ %384, %382 ], [ %384, %382 ], [ %384, %382 ], [ %384, %382 ], [ %384, %460 ], [ %384, %686 ], [ %384, %689 ], [ %384, %697 ], [ %384, %706 ], [ %384, %709 ], [ %384, %727 ], [ %384, %787 ], [ %384, %466 ], [ %384, %463 ], [ %384, %808 ], [ %384, %804 ], [ %384, %446 ], [ %384, %631 ], [ %384, %651 ], [ %384, %823 ], [ %384, %827 ], [ %384, %393 ], [ %384, %393 ], [ %384, %479 ], [ %384, %483 ]
  %840 = phi ptr [ %385, %791 ], [ %385, %783 ], [ %385, %780 ], [ %385, %752 ], [ %385, %756 ], [ %385, %745 ], [ %385, %738 ], [ %385, %726 ], [ %385, %723 ], [ %385, %696 ], [ %385, %685 ], [ %385, %676 ], [ %385, %675 ], [ %385, %666 ], [ %385, %659 ], [ %385, %656 ], [ %385, %635 ], [ %405, %444 ], [ %385, %392 ], [ %385, %391 ], [ %385, %397 ], [ %385, %661 ], [ %385, %670 ], [ %385, %680 ], [ %385, %701 ], [ %385, %712 ], [ %385, %720 ], [ %385, %731 ], [ %385, %832 ], [ %385, %800 ], [ %385, %382 ], [ %385, %382 ], [ %385, %382 ], [ %385, %382 ], [ %385, %382 ], [ %385, %382 ], [ %385, %460 ], [ %385, %686 ], [ %385, %689 ], [ %385, %697 ], [ %385, %706 ], [ %385, %709 ], [ %385, %727 ], [ %385, %787 ], [ %385, %466 ], [ %385, %463 ], [ %385, %808 ], [ %385, %804 ], [ %385, %446 ], [ %385, %631 ], [ %385, %651 ], [ %385, %823 ], [ %385, %827 ], [ %395, %393 ], [ %395, %393 ], [ %385, %479 ], [ %385, %483 ]
  %841 = phi i32 [ 1, %791 ], [ %386, %783 ], [ %386, %780 ], [ %386, %752 ], [ 1, %756 ], [ %386, %745 ], [ %386, %738 ], [ 1, %726 ], [ %386, %723 ], [ 1, %696 ], [ 1, %685 ], [ %386, %676 ], [ 1, %675 ], [ %386, %666 ], [ %386, %659 ], [ %386, %656 ], [ 1, %635 ], [ %437, %444 ], [ %386, %392 ], [ %386, %391 ], [ %386, %397 ], [ %665, %661 ], [ %386, %670 ], [ %386, %680 ], [ %705, %701 ], [ %719, %712 ], [ %386, %720 ], [ %737, %731 ], [ %836, %832 ], [ %386, %800 ], [ %386, %382 ], [ %386, %382 ], [ %386, %382 ], [ %386, %382 ], [ %386, %382 ], [ %386, %382 ], [ 1, %460 ], [ %386, %686 ], [ %386, %689 ], [ %386, %697 ], [ %386, %706 ], [ %386, %709 ], [ %386, %727 ], [ %386, %787 ], [ %386, %466 ], [ %386, %463 ], [ %386, %808 ], [ %386, %804 ], [ %451, %446 ], [ %634, %631 ], [ %655, %651 ], [ %386, %827 ], [ 1, %823 ], [ %386, %393 ], [ %386, %393 ], [ %386, %483 ], [ 1, %479 ]
  %842 = phi i64 [ %390, %791 ], [ %390, %783 ], [ %390, %780 ], [ %390, %752 ], [ %390, %756 ], [ %390, %745 ], [ %390, %738 ], [ %390, %726 ], [ %390, %723 ], [ %390, %696 ], [ %390, %685 ], [ %390, %676 ], [ %390, %675 ], [ %390, %666 ], [ %390, %659 ], [ %390, %656 ], [ %390, %635 ], [ 0, %444 ], [ %390, %392 ], [ 0, %391 ], [ %390, %397 ], [ %390, %661 ], [ %390, %670 ], [ %390, %680 ], [ %390, %701 ], [ %390, %712 ], [ %390, %720 ], [ %390, %731 ], [ %390, %832 ], [ %390, %800 ], [ %390, %382 ], [ %390, %382 ], [ %390, %382 ], [ %390, %382 ], [ %390, %382 ], [ %390, %382 ], [ %390, %460 ], [ %390, %686 ], [ %390, %689 ], [ %390, %697 ], [ %390, %706 ], [ %390, %709 ], [ %390, %727 ], [ %390, %787 ], [ %390, %466 ], [ %390, %463 ], [ %390, %808 ], [ %390, %804 ], [ %390, %446 ], [ %390, %631 ], [ %390, %651 ], [ %390, %823 ], [ %390, %827 ], [ 0, %393 ], [ 0, %393 ], [ %390, %479 ], [ %390, %483 ]
  %843 = phi i32 [ 111, %791 ], [ 111, %783 ], [ 111, %780 ], [ 111, %752 ], [ 111, %756 ], [ 111, %745 ], [ 111, %738 ], [ 111, %726 ], [ 111, %723 ], [ %388, %696 ], [ 111, %685 ], [ 111, %676 ], [ 111, %675 ], [ 111, %666 ], [ 111, %659 ], [ 111, %656 ], [ 111, %635 ], [ %388, %444 ], [ 0, %392 ], [ 0, %391 ], [ 111, %397 ], [ 111, %661 ], [ 111, %670 ], [ 111, %680 ], [ %388, %701 ], [ %388, %712 ], [ 111, %720 ], [ %388, %731 ], [ %388, %832 ], [ %388, %800 ], [ %388, %382 ], [ %388, %382 ], [ %388, %382 ], [ %388, %382 ], [ %388, %382 ], [ %388, %382 ], [ 111, %460 ], [ %388, %686 ], [ %388, %689 ], [ %388, %697 ], [ 111, %706 ], [ 111, %709 ], [ %388, %727 ], [ 111, %787 ], [ 111, %466 ], [ 111, %463 ], [ %388, %808 ], [ %388, %804 ], [ 111, %446 ], [ 111, %631 ], [ 111, %651 ], [ %388, %823 ], [ %388, %827 ], [ %388, %393 ], [ %388, %393 ], [ 111, %479 ], [ 111, %483 ]
  %844 = getelementptr inbounds i8, ptr %840, i64 %842
  %845 = icmp eq i32 %843, 0
  br i1 %845, label %846, label %382, !prof !312, !llvm.loop !313

846:                                              ; preds = %837
  store ptr %844, ptr %337, align 8, !tbaa !148
  %847 = icmp eq i32 %841, 0
  %848 = select i1 %847, i32 1, i32 %330, !prof !314
  %849 = add nuw nsw i64 %328, 1
  %850 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %851 = sext i8 %850 to i64
  %852 = icmp slt i64 %849, %851
  br i1 %852, label %327, label %853, !prof !315, !llvm.loop !316

853:                                              ; preds = %846, %308
  %854 = phi i32 [ -1, %308 ], [ %838, %846 ]
  %855 = phi i32 [ 0, %308 ], [ %848, %846 ]
  %856 = phi i32 [ 0, %308 ], [ %839, %846 ]
  %857 = icmp eq i32 %855, 0
  br i1 %857, label %858, label %950, !prof !317

858:                                              ; preds = %853
  %859 = icmp sgt i32 %854, -1
  br i1 %859, label %860, label %930, !prof !319

860:                                              ; preds = %858
  %861 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %862 = sext i8 %861 to i32
  %863 = icmp slt i32 %854, %862
  br i1 %863, label %864, label %930

864:                                              ; preds = %860
  %865 = zext nneg i32 %854 to i64
  br label %866

866:                                              ; preds = %923, %864
  %867 = phi i64 [ %865, %864 ], [ %925, %923 ]
  %868 = phi i32 [ 0, %864 ], [ %924, %923 ]
  %869 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %867
  %870 = load i32, ptr %869, align 4, !tbaa !163
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %923, label %872

872:                                              ; preds = %866
  %873 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %867
  %874 = load ptr, ptr %873, align 8, !tbaa !148
  %875 = load i32, ptr %874, align 8
  %876 = and i32 %875, 65535
  %877 = icmp eq i32 %876, 37
  %878 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %879 = icmp sgt i8 %878, 0
  %880 = select i1 %877, i1 %879, i1 false
  br i1 %880, label %881, label %923

881:                                              ; preds = %872, %917
  %882 = phi i64 [ %919, %917 ], [ 0, %872 ]
  %883 = phi i32 [ %918, %917 ], [ %868, %872 ]
  %884 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %882
  %885 = load ptr, ptr %884, align 8, !tbaa !148
  %886 = load i32, ptr %885, align 8
  %887 = and i32 %886, 65535
  %888 = icmp eq i32 %887, 43
  br i1 %888, label %895, label %889

889:                                              ; preds = %881
  %890 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %882
  %891 = load i32, ptr %890, align 4, !tbaa !163
  %892 = icmp eq i32 %891, 1
  %893 = icmp eq i64 %882, %867
  %894 = or i1 %893, %892
  br i1 %894, label %917, label %897

895:                                              ; preds = %881
  %896 = icmp eq i64 %882, %867
  br i1 %896, label %917, label %897

897:                                              ; preds = %895, %889
  %898 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %882
  %899 = load ptr, ptr %898, align 8, !tbaa !148
  %900 = load i8, ptr %899, align 1, !tbaa !159
  %901 = icmp eq i8 %900, 0
  br i1 %901, label %917, label %902

902:                                              ; preds = %897
  %903 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %882
  %904 = load i32, ptr %903, align 4, !tbaa !163
  %905 = zext i32 %904 to i64
  %906 = icmp eq i64 %867, %905
  br i1 %906, label %907, label %911

907:                                              ; preds = %902
  %908 = load ptr, ptr %873, align 8, !tbaa !148
  %909 = call i32 @operands_match_p(ptr noundef nonnull %885, ptr noundef %908) #29
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %917

911:                                              ; preds = %907, %902
  %912 = load ptr, ptr %884, align 8, !tbaa !148
  %913 = load ptr, ptr %873, align 8, !tbaa !148
  %914 = call i32 @safe_from_earlyclobber(ptr noundef %912, ptr noundef %913) #29
  %915 = icmp eq i32 %914, 0
  %916 = select i1 %915, i32 1, i32 %883
  br label %917

917:                                              ; preds = %911, %907, %897, %895, %889
  %918 = phi i32 [ %883, %907 ], [ %883, %895 ], [ %883, %889 ], [ %916, %911 ], [ %883, %897 ]
  %919 = add nuw nsw i64 %882, 1
  %920 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %921 = sext i8 %920 to i64
  %922 = icmp slt i64 %919, %921
  br i1 %922, label %881, label %923, !llvm.loop !320

923:                                              ; preds = %917, %872, %866
  %924 = phi i32 [ %868, %872 ], [ %868, %866 ], [ %918, %917 ]
  %925 = add nuw nsw i64 %867, 1
  %926 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %927 = sext i8 %926 to i32
  %928 = trunc i64 %925 to i32
  %929 = icmp slt i32 %928, %927
  br i1 %929, label %866, label %930, !llvm.loop !321

930:                                              ; preds = %923, %860, %858
  %931 = phi i32 [ 0, %858 ], [ 0, %860 ], [ %924, %923 ]
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %933, label %950, !prof !322

933:                                              ; preds = %930
  %934 = icmp sgt i32 %856, 0
  br i1 %934, label %935, label %956, !prof !323

935:                                              ; preds = %933
  %936 = zext nneg i32 %856 to i64
  br label %937

937:                                              ; preds = %937, %935
  %938 = phi i64 [ %936, %935 ], [ %939, %937 ]
  %939 = add nsw i64 %938, -1
  %940 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %939
  %941 = load i32, ptr %940, align 8, !tbaa !228
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %942
  %944 = load ptr, ptr %943, align 8, !tbaa !148
  %945 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %939, i32 1
  %946 = load i32, ptr %945, align 4, !tbaa !230
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %947
  store ptr %944, ptr %948, align 8, !tbaa !148
  %949 = icmp sgt i64 %938, 1
  br i1 %949, label %937, label %956, !prof !323, !llvm.loop !324

950:                                              ; preds = %930, %853
  %951 = load i32, ptr @which_alternative, align 4, !tbaa !163
  br label %952

952:                                              ; preds = %321, %309, %950
  %953 = phi i32 [ %951, %950 ], [ %301, %309 ], [ %301, %321 ]
  %954 = phi i32 [ 0, %950 ], [ 6, %309 ], [ 6, %321 ]
  %955 = add nsw i32 %953, 1
  store i32 %955, ptr @which_alternative, align 4, !tbaa !163
  br label %956

956:                                              ; preds = %937, %952, %933
  %957 = phi i32 [ 1, %933 ], [ %954, %952 ], [ 1, %937 ]
  switch i32 %957, label %964 [
    i32 0, label %958
    i32 6, label %958
  ], !prof !325

958:                                              ; preds = %956, %956
  %959 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %960 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %961 = sext i8 %960 to i32
  %962 = icmp slt i32 %959, %961
  br i1 %962, label %300, label %963, !prof !326, !llvm.loop !327

963:                                              ; preds = %958
  store i32 -1, ptr @which_alternative, align 4, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #29
  br label %967

964:                                              ; preds = %956, %287
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #29
  br label %965

965:                                              ; preds = %964, %151
  %966 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 %20, ptr %966, align 8, !tbaa !159
  br label %967

967:                                              ; preds = %963, %135, %140, %129, %965
  %968 = phi i32 [ 0, %965 ], [ 1, %129 ], [ 1, %140 ], [ 1, %135 ], [ 1, %963 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #29
  ret i32 %968
}

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @added_clobbers_hard_reg_p(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare void @add_clobbers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @num_changes_pending() local_unnamed_addr #14 !prof !380 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !163
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @verify_changes(i32 noundef %0) local_unnamed_addr #10 !prof !381 {
  %2 = load i32, ptr @num_changes, align 4, !tbaa !163
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %171, !prof !382

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %163
  %7 = phi i64 [ %5, %4 ], [ %164, %163 ]
  %8 = phi ptr [ null, %4 ], [ %161, %163 ]
  %9 = load ptr, ptr @changes, align 8, !tbaa !148
  %10 = getelementptr inbounds %struct.change_t, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !344
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %8
  %14 = select i1 %12, i1 true, i1 %13, !prof !383
  br i1 %14, label %160, label %15, !prof !384

15:                                               ; preds = %6
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %35, !prof !376

19:                                               ; preds = %15
  %20 = lshr i32 %16, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.mem_attrs, ptr %25, i64 0, i32 5
  %29 = load i8, ptr %28, align 8, !tbaa !260
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi i8 [ %29, %27 ], [ 0, %19 ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %33 = tail call zeroext i8 %32(i32 noundef %21, ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext %31) #29
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %160, label %159

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.change_t, ptr %9, i64 %7, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !347
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %71, !prof !385

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = tail call i32 @asm_noperands(ptr noundef %43)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %71, !prof !386

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !387
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi ptr [ %51, %50 ], [ null, %46 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %48, align 8, !tbaa !387
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %58, i64 13
  %60 = load i8, ptr %59, align 1, !tbaa !159
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %56, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !159
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %56, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 16777216
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %160

71:                                               ; preds = %66, %62, %55, %52, %41, %35
  %72 = icmp eq i32 %17, 7
  br i1 %72, label %160, label %73, !prof !376

73:                                               ; preds = %71
  %74 = tail call i32 @insn_invalid_p(ptr noundef nonnull %11), !range !296
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %159, label %76, !prof !389

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !159
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 15
  br i1 %81, label %82, label %156, !prof !390

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !159
  %85 = load i32, ptr %84, align 8, !tbaa !176
  %86 = add nsw i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.rtvec_def, ptr %84, i64 0, i32 1, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !148
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 25
  br i1 %92, label %93, label %156, !prof !391

93:                                               ; preds = %82
  %94 = tail call i32 @asm_noperands(ptr noundef nonnull %78)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %156, !prof !391

96:                                               ; preds = %93
  %97 = icmp eq i32 %85, 2
  br i1 %97, label %98, label %101, !prof !391

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.rtvec_def, ptr %84, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !148
  br label %120

101:                                              ; preds = %96
  %102 = tail call ptr @rtvec_alloc(i32 noundef %86) #29
  %103 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %102) #29
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !159
  %106 = load i32, ptr %105, align 8, !tbaa !176
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %101, %108
  %109 = phi i64 [ %115, %108 ], [ 0, %101 ]
  %110 = phi ptr [ %116, %108 ], [ %105, %101 ]
  %111 = load ptr, ptr %83, align 8, !tbaa !159
  %112 = getelementptr inbounds %struct.rtvec_def, ptr %111, i64 0, i32 1, i64 %109
  %113 = load ptr, ptr %112, align 8, !tbaa !148
  %114 = getelementptr inbounds %struct.rtvec_def, ptr %110, i64 0, i32 1, i64 %109
  store ptr %113, ptr %114, align 8, !tbaa !148
  %115 = add nuw nsw i64 %109, 1
  %116 = load ptr, ptr %104, align 8, !tbaa !159
  %117 = load i32, ptr %116, align 8, !tbaa !176
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %108, label %120, !llvm.loop !392

120:                                              ; preds = %108, %101, %98
  %121 = phi ptr [ %100, %98 ], [ %103, %101 ], [ %103, %108 ]
  %122 = load ptr, ptr %77, align 8, !tbaa !148
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %160, label %124, !prof !338

124:                                              ; preds = %120
  %125 = tail call i32 @rtx_equal_p(ptr noundef %122, ptr noundef %121) #29
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %160, !prof !339

127:                                              ; preds = %124
  %128 = load i32, ptr @num_changes, align 4
  store ptr %121, ptr %77, align 8, !tbaa !148
  %129 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %139, label %131, !prof !342

131:                                              ; preds = %127
  %132 = icmp eq i32 %129, 0
  %133 = shl nsw i32 %129, 1
  %134 = select i1 %132, i32 150, i32 %133, !prof !343
  store i32 %134, ptr @changes_allocated, align 4, !tbaa !163
  %135 = load ptr, ptr @changes, align 8, !tbaa !148
  %136 = sext i32 %134 to i64
  %137 = mul nsw i64 %136, 40
  %138 = tail call ptr @xrealloc(ptr noundef %135, i64 noundef %137) #29
  store ptr %138, ptr @changes, align 8, !tbaa !148
  br label %139

139:                                              ; preds = %131, %127
  %140 = load ptr, ptr @changes, align 8, !tbaa !148
  %141 = load i32, ptr @num_changes, align 4, !tbaa !163
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.change_t, ptr %140, i64 %142
  store ptr %11, ptr %143, align 8, !tbaa !344
  %144 = getelementptr inbounds %struct.change_t, ptr %140, i64 %142, i32 2
  store ptr %77, ptr %144, align 8, !tbaa !346
  %145 = getelementptr inbounds %struct.change_t, ptr %140, i64 %142, i32 3
  store ptr %122, ptr %145, align 8, !tbaa !347
  %146 = getelementptr inbounds %struct.change_t, ptr %140, i64 %142, i32 4
  store i8 0, ptr %146, align 8, !tbaa !348
  %147 = load i32, ptr %11, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 43
  br i1 %149, label %154, label %150, !prof !350

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !159
  %153 = getelementptr inbounds %struct.change_t, ptr %140, i64 %142, i32 1
  store i32 %152, ptr %153, align 8, !tbaa !351
  store i32 -1, ptr %151, align 8, !tbaa !159
  br label %154

154:                                              ; preds = %150, %139
  %155 = add nsw i32 %141, 1
  store i32 %155, ptr @num_changes, align 4, !tbaa !163
  br label %160

156:                                              ; preds = %93, %82, %76
  %157 = trunc i32 %79 to i16
  switch i16 %157, label %158 [
    i16 24, label %160
    i16 25, label %160
    i16 138, label %160
  ], !prof !393

158:                                              ; preds = %156
  br label %160

159:                                              ; preds = %73, %30
  br label %160

160:                                              ; preds = %156, %156, %154, %124, %120, %66, %158, %156, %71, %30, %6, %159
  %161 = phi ptr [ %11, %159 ], [ %8, %6 ], [ %8, %30 ], [ %8, %71 ], [ %8, %156 ], [ %8, %158 ], [ %8, %66 ], [ %8, %120 ], [ %8, %124 ], [ %8, %154 ], [ %8, %156 ], [ %8, %156 ]
  %162 = phi i1 [ false, %159 ], [ false, %6 ], [ true, %30 ], [ false, %71 ], [ false, %156 ], [ true, %158 ], [ true, %66 ], [ false, %120 ], [ false, %124 ], [ false, %154 ], [ false, %156 ], [ false, %156 ]
  br i1 %162, label %168, label %163, !prof !394

163:                                              ; preds = %160
  %164 = add nsw i64 %7, 1
  %165 = load i32, ptr @num_changes, align 4, !tbaa !163
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %6, label %168, !prof !395, !llvm.loop !396

168:                                              ; preds = %160, %163
  %169 = phi i64 [ %164, %163 ], [ %7, %160 ]
  %170 = trunc i64 %169 to i32
  br label %171

171:                                              ; preds = %168, %1
  %172 = phi i32 [ %0, %1 ], [ %170, %168 ]
  %173 = load i32, ptr @num_changes, align 4, !tbaa !163
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  ret i32 %175
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #10 !prof !397 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %2) #29, !prof !398
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @confirm_change_group() local_unnamed_addr #10 !prof !399 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %39, !prof !354

3:                                                ; preds = %0, %33
  %4 = phi i64 [ %35, %33 ], [ 0, %0 ]
  %5 = phi ptr [ %34, %33 ], [ null, %0 ]
  %6 = load ptr, ptr @changes, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.change_t, ptr %6, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !344
  %9 = getelementptr inbounds %struct.change_t, ptr %6, i64 %4, i32 4
  %10 = load i8, ptr %9, align 8, !tbaa !348
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12, !prof !355

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.change_t, ptr %6, i64 %4, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !346
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = tail call ptr @copy_rtx(ptr noundef %15) #29
  %17 = load ptr, ptr @changes, align 8, !tbaa !148
  %18 = getelementptr inbounds %struct.change_t, ptr %17, i64 %4, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !346
  store ptr %16, ptr %19, align 8, !tbaa !148
  br label %20

20:                                               ; preds = %12, %3
  %21 = icmp eq ptr %8, null
  br i1 %21, label %33, label %22, !prof !356

22:                                               ; preds = %20
  %23 = icmp ne ptr %8, %5
  %24 = icmp ne ptr %5, null
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %33, !prof !357

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %33, !prof !358

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %5) #29
  br label %33

33:                                               ; preds = %26, %22, %31, %20
  %34 = phi ptr [ %5, %20 ], [ %8, %26 ], [ %8, %31 ], [ %8, %22 ]
  %35 = add nuw nsw i64 %4, 1
  %36 = load i32, ptr @num_changes, align 4, !tbaa !163
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %3, label %39, !prof !359, !llvm.loop !360

39:                                               ; preds = %33, %0
  %40 = phi ptr [ null, %0 ], [ %34, %33 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42, !prof !361

42:                                               ; preds = %39
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, -7
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %49, !prof !362

47:                                               ; preds = %42
  %48 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %40) #29
  br label %49

49:                                               ; preds = %42, %47, %39
  store i32 0, ptr @num_changes, align 4, !tbaa !163
  ret void
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @apply_change_group() local_unnamed_addr #10 !prof !400 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %168, !prof !382

3:                                                ; preds = %0, %160
  %4 = phi i64 [ %161, %160 ], [ 0, %0 ]
  %5 = phi ptr [ %158, %160 ], [ null, %0 ]
  %6 = load ptr, ptr @changes, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.change_t, ptr %6, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !344
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %8, %5
  %11 = select i1 %9, i1 true, i1 %10, !prof !383
  br i1 %11, label %157, label %12, !prof !384

12:                                               ; preds = %3
  %13 = load i32, ptr %8, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %32, !prof !376

16:                                               ; preds = %12
  %17 = lshr i32 %13, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 5
  %26 = load i8, ptr %25, align 8, !tbaa !260
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi i8 [ %26, %24 ], [ 0, %16 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %30 = tail call zeroext i8 %29(i32 noundef %18, ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext %28) #29
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %157, label %156

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.change_t, ptr %6, i64 %4, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !347
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %68, !prof !385

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = tail call i32 @asm_noperands(ptr noundef %40)
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %68, !prof !386

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !159
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !387
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %48, %47 ], [ null, %43 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %45, align 8, !tbaa !387
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %55, i64 13
  %57 = load i8, ptr %56, align 1, !tbaa !159
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %53, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 16777216
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %157

68:                                               ; preds = %63, %59, %52, %49, %38, %32
  %69 = icmp eq i32 %14, 7
  br i1 %69, label %157, label %70, !prof !376

70:                                               ; preds = %68
  %71 = tail call i32 @insn_invalid_p(ptr noundef nonnull %8), !range !296
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %156, label %73, !prof !389

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 15
  br i1 %78, label %79, label %153, !prof !390

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !159
  %82 = load i32, ptr %81, align 8, !tbaa !176
  %83 = add nsw i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.rtvec_def, ptr %81, i64 0, i32 1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !148
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 25
  br i1 %89, label %90, label %153, !prof !391

90:                                               ; preds = %79
  %91 = tail call i32 @asm_noperands(ptr noundef nonnull %75)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %153, !prof !391

93:                                               ; preds = %90
  %94 = icmp eq i32 %82, 2
  br i1 %94, label %95, label %98, !prof !391

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.rtvec_def, ptr %81, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !148
  br label %117

98:                                               ; preds = %93
  %99 = tail call ptr @rtvec_alloc(i32 noundef %83) #29
  %100 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %99) #29
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !159
  %103 = load i32, ptr %102, align 8, !tbaa !176
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %98, %105
  %106 = phi i64 [ %112, %105 ], [ 0, %98 ]
  %107 = phi ptr [ %113, %105 ], [ %102, %98 ]
  %108 = load ptr, ptr %80, align 8, !tbaa !159
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %108, i64 0, i32 1, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !148
  %111 = getelementptr inbounds %struct.rtvec_def, ptr %107, i64 0, i32 1, i64 %106
  store ptr %110, ptr %111, align 8, !tbaa !148
  %112 = add nuw nsw i64 %106, 1
  %113 = load ptr, ptr %101, align 8, !tbaa !159
  %114 = load i32, ptr %113, align 8, !tbaa !176
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %105, label %117, !llvm.loop !392

117:                                              ; preds = %105, %98, %95
  %118 = phi ptr [ %97, %95 ], [ %100, %98 ], [ %100, %105 ]
  %119 = load ptr, ptr %74, align 8, !tbaa !148
  %120 = icmp eq ptr %119, %118
  br i1 %120, label %157, label %121, !prof !338

121:                                              ; preds = %117
  %122 = tail call i32 @rtx_equal_p(ptr noundef %119, ptr noundef %118) #29
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %157, !prof !339

124:                                              ; preds = %121
  %125 = load i32, ptr @num_changes, align 4
  store ptr %118, ptr %74, align 8, !tbaa !148
  %126 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %136, label %128, !prof !342

128:                                              ; preds = %124
  %129 = icmp eq i32 %126, 0
  %130 = shl nsw i32 %126, 1
  %131 = select i1 %129, i32 150, i32 %130, !prof !343
  store i32 %131, ptr @changes_allocated, align 4, !tbaa !163
  %132 = load ptr, ptr @changes, align 8, !tbaa !148
  %133 = sext i32 %131 to i64
  %134 = mul nsw i64 %133, 40
  %135 = tail call ptr @xrealloc(ptr noundef %132, i64 noundef %134) #29
  store ptr %135, ptr @changes, align 8, !tbaa !148
  br label %136

136:                                              ; preds = %128, %124
  %137 = load ptr, ptr @changes, align 8, !tbaa !148
  %138 = load i32, ptr @num_changes, align 4, !tbaa !163
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.change_t, ptr %137, i64 %139
  store ptr %8, ptr %140, align 8, !tbaa !344
  %141 = getelementptr inbounds %struct.change_t, ptr %137, i64 %139, i32 2
  store ptr %74, ptr %141, align 8, !tbaa !346
  %142 = getelementptr inbounds %struct.change_t, ptr %137, i64 %139, i32 3
  store ptr %119, ptr %142, align 8, !tbaa !347
  %143 = getelementptr inbounds %struct.change_t, ptr %137, i64 %139, i32 4
  store i8 0, ptr %143, align 8, !tbaa !348
  %144 = load i32, ptr %8, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 43
  br i1 %146, label %151, label %147, !prof !350

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !159
  %150 = getelementptr inbounds %struct.change_t, ptr %137, i64 %139, i32 1
  store i32 %149, ptr %150, align 8, !tbaa !351
  store i32 -1, ptr %148, align 8, !tbaa !159
  br label %151

151:                                              ; preds = %147, %136
  %152 = add nsw i32 %138, 1
  store i32 %152, ptr @num_changes, align 4, !tbaa !163
  br label %157

153:                                              ; preds = %90, %79, %73
  %154 = trunc i32 %76 to i16
  switch i16 %154, label %155 [
    i16 24, label %157
    i16 25, label %157
    i16 138, label %157
  ], !prof !393

155:                                              ; preds = %153
  br label %157

156:                                              ; preds = %70, %27
  br label %157

157:                                              ; preds = %156, %155, %153, %153, %153, %151, %121, %117, %68, %63, %27, %3
  %158 = phi ptr [ %8, %156 ], [ %5, %3 ], [ %5, %27 ], [ %5, %68 ], [ %5, %153 ], [ %5, %155 ], [ %5, %63 ], [ %5, %117 ], [ %5, %121 ], [ %5, %151 ], [ %5, %153 ], [ %5, %153 ]
  %159 = phi i1 [ false, %156 ], [ false, %3 ], [ true, %27 ], [ false, %68 ], [ false, %153 ], [ true, %155 ], [ true, %63 ], [ false, %117 ], [ false, %121 ], [ false, %151 ], [ false, %153 ], [ false, %153 ]
  br i1 %159, label %165, label %160, !prof !394

160:                                              ; preds = %157
  %161 = add nuw nsw i64 %4, 1
  %162 = load i32, ptr @num_changes, align 4, !tbaa !163
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %3, label %165, !prof !395, !llvm.loop !396

165:                                              ; preds = %160, %157
  %166 = phi i64 [ %161, %160 ], [ %4, %157 ]
  %167 = trunc i64 %166 to i32
  br label %168

168:                                              ; preds = %0, %165
  %169 = phi i32 [ 0, %0 ], [ %167, %165 ]
  %170 = load i32, ptr @num_changes, align 4, !tbaa !163
  %171 = icmp eq i32 %169, %170
  %172 = icmp sgt i32 %170, 0
  br i1 %171, label %173, label %220, !prof !401

173:                                              ; preds = %168
  br i1 %172, label %174, label %210, !prof !354

174:                                              ; preds = %173, %204
  %175 = phi i64 [ %206, %204 ], [ 0, %173 ]
  %176 = phi ptr [ %205, %204 ], [ null, %173 ]
  %177 = load ptr, ptr @changes, align 8, !tbaa !148
  %178 = getelementptr inbounds %struct.change_t, ptr %177, i64 %175
  %179 = load ptr, ptr %178, align 8, !tbaa !344
  %180 = getelementptr inbounds %struct.change_t, ptr %177, i64 %175, i32 4
  %181 = load i8, ptr %180, align 8, !tbaa !348
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %191, label %183, !prof !355

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.change_t, ptr %177, i64 %175, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !346
  %186 = load ptr, ptr %185, align 8, !tbaa !148
  %187 = tail call ptr @copy_rtx(ptr noundef %186) #29
  %188 = load ptr, ptr @changes, align 8, !tbaa !148
  %189 = getelementptr inbounds %struct.change_t, ptr %188, i64 %175, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !346
  store ptr %187, ptr %190, align 8, !tbaa !148
  br label %191

191:                                              ; preds = %183, %174
  %192 = icmp eq ptr %179, null
  br i1 %192, label %204, label %193, !prof !356

193:                                              ; preds = %191
  %194 = icmp ne ptr %179, %176
  %195 = icmp ne ptr %176, null
  %196 = and i1 %195, %194
  br i1 %196, label %197, label %204, !prof !357

197:                                              ; preds = %193
  %198 = load i32, ptr %176, align 8
  %199 = and i32 %198, 65535
  %200 = add nsw i32 %199, -7
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %202, label %204, !prof !358

202:                                              ; preds = %197
  %203 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %176) #29
  br label %204

204:                                              ; preds = %202, %197, %193, %191
  %205 = phi ptr [ %176, %191 ], [ %179, %197 ], [ %179, %202 ], [ %179, %193 ]
  %206 = add nuw nsw i64 %175, 1
  %207 = load i32, ptr @num_changes, align 4, !tbaa !163
  %208 = sext i32 %207 to i64
  %209 = icmp slt i64 %206, %208
  br i1 %209, label %174, label %210, !prof !359, !llvm.loop !360

210:                                              ; preds = %204, %173
  %211 = phi ptr [ null, %173 ], [ %205, %204 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %244, label %213, !prof !361

213:                                              ; preds = %210
  %214 = load i32, ptr %211, align 8
  %215 = and i32 %214, 65535
  %216 = add nsw i32 %215, -7
  %217 = icmp ult i32 %216, 4
  br i1 %217, label %218, label %244, !prof !362

218:                                              ; preds = %213
  %219 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %211) #29
  br label %244

220:                                              ; preds = %168
  br i1 %172, label %221, label %244, !prof !363

221:                                              ; preds = %220
  %222 = load ptr, ptr @changes, align 8, !tbaa !148
  %223 = zext nneg i32 %170 to i64
  br label %224

224:                                              ; preds = %242, %221
  %225 = phi i64 [ %223, %221 ], [ %226, %242 ]
  %226 = add nsw i64 %225, -1
  %227 = getelementptr inbounds %struct.change_t, ptr %222, i64 %226, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !347
  %229 = getelementptr inbounds %struct.change_t, ptr %222, i64 %226, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !346
  store ptr %228, ptr %230, align 8, !tbaa !148
  %231 = getelementptr inbounds %struct.change_t, ptr %222, i64 %226
  %232 = load ptr, ptr %231, align 8, !tbaa !344
  %233 = icmp eq ptr %232, null
  br i1 %233, label %242, label %234, !prof !364

234:                                              ; preds = %224
  %235 = load i32, ptr %232, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 43
  br i1 %237, label %242, label %238, !prof !364

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.change_t, ptr %222, i64 %226, i32 1
  %240 = load i32, ptr %239, align 8, !tbaa !351
  %241 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1, i32 1
  store i32 %240, ptr %241, align 8, !tbaa !159
  br label %242

242:                                              ; preds = %238, %234, %224
  %243 = icmp sgt i64 %225, 1
  br i1 %243, label %224, label %244, !prof !365, !llvm.loop !366

244:                                              ; preds = %242, %220, %218, %213, %210
  %245 = phi i32 [ 1, %210 ], [ 1, %213 ], [ 1, %218 ], [ 0, %220 ], [ 0, %242 ]
  store i32 0, ptr @num_changes, align 4, !tbaa !163
  ret i32 %245
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cancel_changes(i32 noundef %0) local_unnamed_addr #15 !prof !402 {
  %2 = load i32, ptr @num_changes, align 4, !tbaa !163
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %28, !prof !363

4:                                                ; preds = %1
  %5 = load ptr, ptr @changes, align 8, !tbaa !148
  %6 = sext i32 %2 to i64
  %7 = sext i32 %0 to i64
  br label %8

8:                                                ; preds = %4, %26
  %9 = phi i64 [ %6, %4 ], [ %10, %26 ]
  %10 = add nsw i64 %9, -1
  %11 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !347
  %13 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !346
  store ptr %12, ptr %14, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !344
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !364

18:                                               ; preds = %8
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %26, label %22, !prof !364

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !351
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !159
  br label %26

26:                                               ; preds = %8, %18, %22
  %27 = icmp sgt i64 %10, %7
  br i1 %27, label %8, label %28, !prof !365, !llvm.loop !366

28:                                               ; preds = %26, %1
  store i32 %0, ptr @num_changes, align 4, !tbaa !163
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @num_validated_changes() local_unnamed_addr #16 !prof !403 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !163
  ret i32 %1
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @validate_replace_rtx_subexp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !147 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  %5 = tail call i32 @apply_change_group(), !range !296
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @validate_replace_rtx_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #10 !prof !404 !PGOFuncName !405 {
  %6 = load ptr, ptr %0, align 8, !tbaa !148
  %7 = load i32, ptr @num_changes, align 4, !tbaa !163
  %8 = icmp eq ptr %6, null
  br i1 %8, label %399, label %9, !prof !406

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = load i8, ptr %14, align 1, !tbaa !159
  %16 = icmp eq i8 %15, 101
  br i1 %16, label %17, label %23, !prof !407

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i32 [ %22, %17 ], [ 0, %9 ]
  %25 = icmp eq ptr %6, %1
  br i1 %25, label %50, label %26, !prof !408

26:                                               ; preds = %23
  %27 = icmp eq i32 %11, 37
  br i1 %27, label %28, label %42, !prof !409

28:                                               ; preds = %26
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %42, !prof !410

32:                                               ; preds = %28
  %33 = xor i32 %29, %10
  %34 = and i32 %33, 16711680
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42, !prof !411

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !159
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !159
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %50, label %42, !prof !412

42:                                               ; preds = %36, %32, %28, %26
  %43 = load i32, ptr %1, align 8
  %44 = xor i32 %43, %10
  %45 = and i32 %44, 16777215
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %87, !prof !413

47:                                               ; preds = %42
  %48 = tail call i32 @rtx_equal_p(ptr noundef nonnull %6, ptr noundef nonnull %1) #29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %87, label %50, !prof !414

50:                                               ; preds = %47, %36, %23
  %51 = load ptr, ptr %0, align 8, !tbaa !148
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %399, label %53, !prof !338

53:                                               ; preds = %50
  %54 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef %2) #29
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %399, !prof !339

56:                                               ; preds = %53
  %57 = load i32, ptr @num_changes, align 4
  store ptr %2, ptr %0, align 8, !tbaa !148
  %58 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %68, label %60, !prof !342

60:                                               ; preds = %56
  %61 = icmp eq i32 %58, 0
  %62 = shl nsw i32 %58, 1
  %63 = select i1 %61, i32 150, i32 %62, !prof !343
  store i32 %63, ptr @changes_allocated, align 4, !tbaa !163
  %64 = load ptr, ptr @changes, align 8, !tbaa !148
  %65 = sext i32 %63 to i64
  %66 = mul nsw i64 %65, 40
  %67 = tail call ptr @xrealloc(ptr noundef %64, i64 noundef %66) #29
  store ptr %67, ptr @changes, align 8, !tbaa !148
  br label %68

68:                                               ; preds = %60, %56
  %69 = load ptr, ptr @changes, align 8, !tbaa !148
  %70 = load i32, ptr @num_changes, align 4, !tbaa !163
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.change_t, ptr %69, i64 %71
  store ptr %3, ptr %72, align 8, !tbaa !344
  %73 = getelementptr inbounds %struct.change_t, ptr %69, i64 %71, i32 2
  store ptr %0, ptr %73, align 8, !tbaa !346
  %74 = getelementptr inbounds %struct.change_t, ptr %69, i64 %71, i32 3
  store ptr %51, ptr %74, align 8, !tbaa !347
  %75 = getelementptr inbounds %struct.change_t, ptr %69, i64 %71, i32 4
  store i8 1, ptr %75, align 8, !tbaa !348
  %76 = icmp eq ptr %3, null
  br i1 %76, label %85, label %77, !prof !349

77:                                               ; preds = %68
  %78 = load i32, ptr %3, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 43
  br i1 %80, label %85, label %81, !prof !350

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !159
  %84 = getelementptr inbounds %struct.change_t, ptr %69, i64 %71, i32 1
  store i32 %83, ptr %84, align 8, !tbaa !351
  store i32 -1, ptr %82, align 8, !tbaa !159
  br label %85

85:                                               ; preds = %81, %77, %68
  %86 = add nsw i32 %70, 1
  store i32 %86, ptr @num_changes, align 4, !tbaa !163
  br label %399

87:                                               ; preds = %47, %42
  %88 = load i32, ptr %6, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 15
  br i1 %90, label %91, label %137, !prof !415

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = load i32, ptr %93, align 8, !tbaa !176
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %167, !prof !416

96:                                               ; preds = %91
  %97 = zext nneg i32 %94 to i64
  br label %98

98:                                               ; preds = %96, %134
  %99 = phi i64 [ %97, %96 ], [ %100, %134 ]
  %100 = add nsw i64 %99, -1
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %131, label %102, !prof !417

102:                                              ; preds = %98
  %103 = load ptr, ptr %92, align 8, !tbaa !159
  %104 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1, i64 %100
  %106 = load ptr, ptr %105, align 8, !tbaa !148
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 23
  br i1 %109, label %110, label %131, !prof !418

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !159
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 17
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = load ptr, ptr %104, align 8, !tbaa !148
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !159
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !159
  %122 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !159
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.1) #29
  br label %126

126:                                              ; preds = %116, %125
  %127 = load ptr, ptr %92, align 8, !tbaa !159
  %128 = getelementptr inbounds %struct.rtvec_def, ptr %127, i64 0, i32 1, i64 %100
  %129 = load ptr, ptr %128, align 8, !tbaa !148
  %130 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1
  br label %134

131:                                              ; preds = %110, %102, %98
  %132 = load ptr, ptr %92, align 8, !tbaa !159
  %133 = getelementptr inbounds %struct.rtvec_def, ptr %132, i64 0, i32 1, i64 %100
  br label %134

134:                                              ; preds = %126, %131
  %135 = phi ptr [ %130, %126 ], [ %133, %131 ]
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %135, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4)
  %136 = icmp sgt i64 %99, 1
  br i1 %136, label %98, label %167, !prof !419, !llvm.loop !420

137:                                              ; preds = %87
  %138 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %12
  %139 = load i8, ptr %138, align 1, !tbaa !159
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %167, label %141, !prof !421

141:                                              ; preds = %137
  %142 = zext i8 %139 to i64
  br label %143

143:                                              ; preds = %141, %165
  %144 = phi i64 [ %142, %141 ], [ %145, %165 ]
  %145 = add nsw i64 %144, -1
  %146 = getelementptr inbounds i8, ptr %14, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !159
  switch i8 %147, label %165 [
    i8 101, label %148
    i8 69, label %151
  ], !prof !422

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %150 = getelementptr inbounds [1 x %union.rtunion_def], ptr %149, i64 0, i64 %145
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %150, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4)
  br label %165

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %153 = getelementptr inbounds [1 x %union.rtunion_def], ptr %152, i64 0, i64 %145
  %154 = load ptr, ptr %153, align 8, !tbaa !159
  %155 = load i32, ptr %154, align 8, !tbaa !176
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = zext nneg i32 %155 to i64
  br label %159

159:                                              ; preds = %157, %159
  %160 = phi i64 [ %158, %157 ], [ %161, %159 ]
  %161 = add nsw i64 %160, -1
  %162 = load ptr, ptr %153, align 8, !tbaa !159
  %163 = getelementptr inbounds %struct.rtvec_def, ptr %162, i64 0, i32 1, i64 %161
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %163, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4)
  %164 = icmp sgt i64 %160, 1
  br i1 %164, label %159, label %165, !llvm.loop !423

165:                                              ; preds = %159, %151, %143, %148
  %166 = icmp sgt i64 %144, 1
  br i1 %166, label %143, label %167, !prof !424, !llvm.loop !425

167:                                              ; preds = %165, %134, %137, %91
  %168 = load i32, ptr @num_changes, align 4, !tbaa !163
  %169 = icmp eq i32 %168, %7
  br i1 %169, label %399, label %170, !prof !426

170:                                              ; preds = %167
  %171 = load i8, ptr %14, align 1, !tbaa !159
  %172 = icmp eq i8 %171, 101
  br i1 %172, label %173, label %181, !prof !427

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !159
  %176 = load i32, ptr %175, align 8
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 %24, i32 %178, !prof !428
  br label %181

181:                                              ; preds = %173, %170
  %182 = phi i32 [ %24, %170 ], [ %180, %173 ]
  %183 = icmp eq i8 %4, 0
  br i1 %183, label %399, label %184, !prof !429

184:                                              ; preds = %181
  %185 = load ptr, ptr %0, align 8, !tbaa !148
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 65535
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !163
  %191 = shl nuw i32 1, %190
  %192 = and i32 %191, 11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %221, label %194, !prof !430

194:                                              ; preds = %184
  %195 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !159
  %197 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !159
  %199 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %196, ptr noundef %198) #29
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %221, label %201, !prof !431

201:                                              ; preds = %194
  %202 = load i32, ptr %185, align 8
  %203 = and i32 %202, 65535
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !163
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %210, label %208

208:                                              ; preds = %201
  %209 = tail call i32 @swap_condition(i32 noundef %187) #29
  br label %210

210:                                              ; preds = %208, %201
  %211 = phi i32 [ %209, %208 ], [ %187, %201 ]
  %212 = load i32, ptr %185, align 8
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  %215 = load ptr, ptr %197, align 8, !tbaa !159
  %216 = load ptr, ptr %195, align 8, !tbaa !159
  %217 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %211, i32 noundef %214, ptr noundef %215, ptr noundef %216) #29
  tail call fastcc void @validate_change_1(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %217, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %218 = load ptr, ptr %0, align 8, !tbaa !148
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65535
  br label %221

221:                                              ; preds = %210, %194, %184
  %222 = phi i32 [ %220, %210 ], [ %187, %194 ], [ %187, %184 ]
  %223 = phi ptr [ %218, %210 ], [ %185, %194 ], [ %185, %184 ]
  %224 = trunc i32 %222 to i16
  switch i16 %224, label %399 [
    i16 49, label %225
    i16 50, label %240
    i16 99, label %253
    i16 98, label %253
    i16 39, label %273
    i16 120, label %334
    i16 119, label %334
  ], !prof !432

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !159
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 30
  %231 = icmp eq ptr %227, %2
  %232 = and i1 %231, %230
  br i1 %232, label %233, label %399, !prof !433

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %235 = load i32, ptr %223, align 8
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  %238 = load ptr, ptr %234, align 8, !tbaa !159
  %239 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %237, ptr noundef %238, ptr noundef nonnull %227) #29
  tail call fastcc void @validate_change_1(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %239, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %399

240:                                              ; preds = %221
  %241 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !159
  %243 = load i32, ptr %242, align 8
  %244 = trunc i32 %243 to i16
  switch i16 %244, label %399 [
    i16 30, label %245
    i16 32, label %245
  ]

245:                                              ; preds = %240, %240
  %246 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %247 = load i32, ptr %223, align 8
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  %250 = load ptr, ptr %246, align 8, !tbaa !159
  %251 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %249, ptr noundef nonnull %242, i32 noundef %249) #29
  %252 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %249, ptr noundef %250, ptr noundef %251) #29
  tail call fastcc void @validate_change_1(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %252, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %399

253:                                              ; preds = %221, %221
  %254 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !159
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 16711680
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %399, !prof !434

259:                                              ; preds = %253
  %260 = load i32, ptr %223, align 8
  %261 = lshr i32 %260, 16
  %262 = and i32 %261, 255
  %263 = tail call ptr @simplify_gen_unary(i32 noundef %222, i32 noundef %262, ptr noundef nonnull %255, i32 noundef %182) #29
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load i32, ptr %223, align 8
  %267 = lshr i32 %266, 16
  %268 = and i32 %267, 255
  %269 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %270 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %268, ptr noundef %269) #29
  br label %271

271:                                              ; preds = %265, %259
  %272 = phi ptr [ %263, %259 ], [ %270, %265 ]
  tail call fastcc void @validate_change_1(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %272, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %399

273:                                              ; preds = %221
  %274 = load i32, ptr %223, align 8
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  %277 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !159
  %279 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 1
  %280 = load i32, ptr %279, align 8, !tbaa !159
  %281 = tail call ptr @simplify_subreg(i32 noundef %276, ptr noundef %278, i32 noundef %182, i32 noundef %280) #29
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %294, !prof !435

283:                                              ; preds = %273
  %284 = load ptr, ptr %277, align 8, !tbaa !159
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 16711680
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %294, !prof !436

288:                                              ; preds = %283
  %289 = load i32, ptr %223, align 8
  %290 = lshr i32 %289, 16
  %291 = and i32 %290, 255
  %292 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %293 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %291, ptr noundef %292) #29
  br label %294

294:                                              ; preds = %288, %283, %273
  %295 = phi ptr [ %281, %273 ], [ %293, %288 ], [ null, %283 ]
  %296 = icmp eq ptr %295, null
  br i1 %296, label %399, label %297, !prof !435

297:                                              ; preds = %294
  %298 = load ptr, ptr %0, align 8, !tbaa !148
  %299 = icmp eq ptr %298, %295
  br i1 %299, label %399, label %300, !prof !338

300:                                              ; preds = %297
  %301 = tail call i32 @rtx_equal_p(ptr noundef %298, ptr noundef nonnull %295) #29
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %399, !prof !339

303:                                              ; preds = %300
  %304 = load i32, ptr @num_changes, align 4
  store ptr %295, ptr %0, align 8, !tbaa !148
  %305 = load i32, ptr @changes_allocated, align 4, !tbaa !163
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %315, label %307, !prof !342

307:                                              ; preds = %303
  %308 = icmp eq i32 %305, 0
  %309 = shl nsw i32 %305, 1
  %310 = select i1 %308, i32 150, i32 %309, !prof !343
  store i32 %310, ptr @changes_allocated, align 4, !tbaa !163
  %311 = load ptr, ptr @changes, align 8, !tbaa !148
  %312 = sext i32 %310 to i64
  %313 = mul nsw i64 %312, 40
  %314 = tail call ptr @xrealloc(ptr noundef %311, i64 noundef %313) #29
  store ptr %314, ptr @changes, align 8, !tbaa !148
  br label %315

315:                                              ; preds = %307, %303
  %316 = load ptr, ptr @changes, align 8, !tbaa !148
  %317 = load i32, ptr @num_changes, align 4, !tbaa !163
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.change_t, ptr %316, i64 %318
  store ptr %3, ptr %319, align 8, !tbaa !344
  %320 = getelementptr inbounds %struct.change_t, ptr %316, i64 %318, i32 2
  store ptr %0, ptr %320, align 8, !tbaa !346
  %321 = getelementptr inbounds %struct.change_t, ptr %316, i64 %318, i32 3
  store ptr %298, ptr %321, align 8, !tbaa !347
  %322 = getelementptr inbounds %struct.change_t, ptr %316, i64 %318, i32 4
  store i8 0, ptr %322, align 8, !tbaa !348
  %323 = icmp eq ptr %3, null
  br i1 %323, label %332, label %324, !prof !349

324:                                              ; preds = %315
  %325 = load i32, ptr %3, align 8
  %326 = and i32 %325, 65535
  %327 = icmp eq i32 %326, 43
  br i1 %327, label %332, label %328, !prof !350

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %330 = load i32, ptr %329, align 8, !tbaa !159
  %331 = getelementptr inbounds %struct.change_t, ptr %316, i64 %318, i32 1
  store i32 %330, ptr %331, align 8, !tbaa !351
  store i32 -1, ptr %329, align 8, !tbaa !159
  br label %332

332:                                              ; preds = %328, %324, %315
  %333 = add nsw i32 %317, 1
  store i32 %333, ptr @num_changes, align 4, !tbaa !163
  br label %399

334:                                              ; preds = %221, %221
  %335 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !159
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 43
  br i1 %339, label %340, label %399, !prof !437

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !159
  %343 = load i32, ptr %342, align 8
  %344 = and i32 %343, 65535
  %345 = icmp eq i32 %344, 30
  br i1 %345, label %346, label %399

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  %348 = load ptr, ptr %347, align 8, !tbaa !159
  %349 = load i32, ptr %348, align 8
  %350 = and i32 %349, 65535
  %351 = icmp eq i32 %350, 30
  br i1 %351, label %352, label %399

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !159
  %355 = load i32, ptr %354, align 8
  %356 = and i32 %355, 65534
  %357 = add nsw i32 %356, -78
  %358 = icmp ult i32 %357, -4
  %359 = and i32 %337, 134217728
  %360 = icmp eq i32 %359, 0
  %361 = and i1 %360, %358
  br i1 %361, label %362, label %399

362:                                              ; preds = %352
  %363 = lshr i32 %337, 16
  %364 = and i32 %363, 255
  %365 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1
  %366 = load i64, ptr %365, align 8, !tbaa !159
  %367 = trunc i64 %366 to i32
  %368 = load i32, ptr %223, align 8
  %369 = trunc i32 %368 to i16
  switch i16 %369, label %378 [
    i16 120, label %370
    i16 119, label %374
  ]

370:                                              ; preds = %362
  %371 = tail call i32 @mode_for_extraction(i32 noundef 2, i32 noundef 1) #29
  %372 = icmp eq i32 %371, 87
  %373 = select i1 %372, i32 0, i32 %371
  br label %378

374:                                              ; preds = %362
  %375 = tail call i32 @mode_for_extraction(i32 noundef 1, i32 noundef 1) #29
  %376 = icmp eq i32 %375, 87
  %377 = select i1 %376, i32 0, i32 %375
  br label %378

378:                                              ; preds = %374, %370, %362
  %379 = phi i32 [ %373, %370 ], [ %377, %374 ], [ 0, %362 ]
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %399, label %381

381:                                              ; preds = %378
  %382 = zext i32 %379 to i64
  %383 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %382
  %384 = load i8, ptr %383, align 1, !tbaa !159
  %385 = zext nneg i32 %364 to i64
  %386 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !159
  %388 = icmp ult i8 %384, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %381
  %390 = zext i8 %384 to i32
  %391 = sdiv i32 %367, 8
  %392 = shl nuw nsw i32 %390, 3
  %393 = srem i32 %367, %392
  %394 = load ptr, ptr %335, align 8, !tbaa !159
  %395 = sext i32 %391 to i64
  %396 = tail call ptr @adjust_address_1(ptr noundef %394, i32 noundef %379, i64 noundef %395, i32 noundef 0, i32 noundef 1) #29
  %397 = sext i32 %393 to i64
  %398 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %397) #29
  tail call fastcc void @validate_change_1(ptr noundef %3, ptr noundef nonnull %347, ptr noundef %398, i8 noundef zeroext 1, i8 noundef zeroext 0)
  tail call fastcc void @validate_change_1(ptr noundef %3, ptr noundef nonnull %335, ptr noundef %396, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %399

399:                                              ; preds = %334, %332, %300, %297, %221, %85, %53, %50, %389, %381, %378, %352, %346, %340, %294, %271, %253, %245, %240, %233, %225, %181, %167, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @validate_replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 !prof !438 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  %5 = tail call i32 @apply_change_group(), !range !296
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @validate_replace_rtx_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !147 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 1)
  %5 = tail call i32 @apply_change_group(), !range !296
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @validate_replace_rtx_part_nosimplify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !prof !439 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 0)
  %5 = tail call i32 @apply_change_group(), !range !296
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @validate_replace_rtx_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !147 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %19, %17 ], [ %6, %3 ]
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -3
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %16, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  br label %17

17:                                               ; preds = %8, %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !440

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @validate_replace_src_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 !prof !441 {
  %4 = alloca %struct.validate_replace_src_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  store ptr %0, ptr %4, align 8, !tbaa !442
  %5 = getelementptr inbounds %struct.validate_replace_src_data, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !444
  %6 = getelementptr inbounds %struct.validate_replace_src_data, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !445
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  call void @note_uses(ptr noundef nonnull %7, ptr noundef nonnull @validate_replace_src_1, ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  ret void
}

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @validate_replace_src_1(ptr noundef %0, ptr nocapture noundef readonly %1) #13 !prof !441 !PGOFuncName !446 {
  %3 = load ptr, ptr %1, align 8, !tbaa !442
  %4 = getelementptr inbounds %struct.validate_replace_src_data, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !444
  %6 = getelementptr inbounds %struct.validate_replace_src_data, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !445
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @validate_simplify_insn(ptr noundef %0) local_unnamed_addr #12 !prof !147 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %65 [
    i16 23, label %11
    i16 15, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = load i32, ptr %8, align 8, !tbaa !176
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %31, label %65

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = tail call ptr @simplify_rtx(ptr noundef %14) #29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 8, !tbaa !159
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef nonnull %15) #29
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @validate_change_1(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %15, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %22

22:                                               ; preds = %21, %17, %11
  %23 = load ptr, ptr %12, align 8, !tbaa !159
  %24 = tail call ptr @simplify_rtx(ptr noundef %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %12, align 8, !tbaa !159
  %28 = tail call i32 @rtx_equal_p(ptr noundef %27, ptr noundef nonnull %24) #29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  tail call fastcc void @validate_change_1(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %24, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %65

31:                                               ; preds = %6, %59
  %32 = phi i64 [ %60, %59 ], [ 0, %6 ]
  %33 = phi ptr [ %61, %59 ], [ %8, %6 ]
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !148
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !159
  %43 = tail call ptr @simplify_rtx(ptr noundef %42) #29
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %41, align 8, !tbaa !159
  %47 = tail call i32 @rtx_equal_p(ptr noundef %46, ptr noundef nonnull %43) #29
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call fastcc void @validate_change_1(ptr noundef %0, ptr noundef nonnull %41, ptr noundef nonnull %43, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %50

50:                                               ; preds = %49, %45, %39
  %51 = load ptr, ptr %40, align 8, !tbaa !159
  %52 = tail call ptr @simplify_rtx(ptr noundef %51) #29
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %40, align 8, !tbaa !159
  %56 = tail call i32 @rtx_equal_p(ptr noundef %55, ptr noundef nonnull %52) #29
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call fastcc void @validate_change_1(ptr noundef %0, ptr noundef nonnull %40, ptr noundef nonnull %52, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %59

59:                                               ; preds = %50, %54, %58, %31
  %60 = add nuw nsw i64 %32, 1
  %61 = load ptr, ptr %7, align 8, !tbaa !159
  %62 = load i32, ptr %61, align 8, !tbaa !176
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %31, label %65, !llvm.loop !447

65:                                               ; preds = %59, %6, %1, %22, %26, %30
  %66 = load i32, ptr @num_changes, align 4, !tbaa !163
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = tail call i32 @apply_change_group(), !range !296
  %70 = trunc i32 %69 to i8
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i8 [ 0, %65 ], [ %70, %68 ]
  ret i8 %72
}

declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !448 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %1, 0
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = select i1 %5, i32 %7, i32 %1, !prof !242
  %9 = and i32 %3, 16711680
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %8, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %19, !prof !243

13:                                               ; preds = %2
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !159
  %17 = and i8 %16, -2
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %151, !prof !244

19:                                               ; preds = %13, %2
  %20 = icmp eq i32 %4, 30
  %21 = and i1 %20, %11
  br i1 %21, label %22, label %28, !prof !245

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !159
  %25 = tail call i64 @trunc_int_for_mode(i64 noundef %24, i32 noundef %8) #29
  %26 = load i64, ptr %23, align 8, !tbaa !159
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %151, !prof !246

28:                                               ; preds = %22, %19
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !163
  %34 = icmp eq i32 %33, 9
  %35 = lshr i32 %29, 16
  %36 = and i32 %35, 255
  br i1 %34, label %37, label %53, !prof !247

37:                                               ; preds = %28
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %43, label %39, !prof !248

39:                                               ; preds = %37
  %40 = icmp eq i32 %36, %8
  %41 = icmp eq i32 %8, 0
  %42 = or i1 %41, %40
  br i1 %42, label %43, label %151, !prof !249

43:                                               ; preds = %39, %37
  %44 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46, !prof !250

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %151, label %49

49:                                               ; preds = %46, %43
  %50 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #29
  %51 = icmp ne i8 %50, 0
  %52 = zext i1 %51 to i32
  br label %151

53:                                               ; preds = %28
  %54 = icmp eq i32 %36, %8
  br i1 %54, label %55, label %151, !prof !251

55:                                               ; preds = %53
  %56 = icmp eq i32 %4, 39
  br i1 %56, label %57, label %108, !prof !252

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %85, !prof !253

62:                                               ; preds = %57
  %63 = load i32, ptr %59, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 43
  br i1 %65, label %66, label %76, !prof !254

66:                                               ; preds = %62
  %67 = zext nneg i32 %8 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !159
  %70 = lshr i32 %63, 16
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !159
  %75 = icmp ugt i8 %69, %74
  br i1 %75, label %104, label %76

76:                                               ; preds = %66, %62
  br i1 %61, label %77, label %85, !prof !253

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load i32, ptr %78, align 8, !tbaa !159
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !253

81:                                               ; preds = %77
  %82 = load i32, ptr %59, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 43
  br i1 %84, label %104, label %85

85:                                               ; preds = %57, %81, %77, %76
  %86 = zext nneg i32 %36 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !159
  %89 = and i8 %88, -2
  %90 = icmp eq i8 %89, 8
  br i1 %90, label %91, label %101, !prof !254

91:                                               ; preds = %85
  %92 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %86
  %93 = load i8, ptr %92, align 1, !tbaa !159
  %94 = load i32, ptr %59, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !159
  %100 = icmp ugt i8 %93, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %85, %91
  %102 = load i32, ptr %59, align 8
  %103 = and i32 %102, 65535
  br label %104

104:                                              ; preds = %91, %81, %66, %101
  %105 = phi i32 [ %103, %101 ], [ 39, %66 ], [ 39, %81 ], [ 39, %91 ]
  %106 = phi i1 [ true, %101 ], [ false, %66 ], [ false, %81 ], [ false, %91 ]
  %107 = phi ptr [ %59, %101 ], [ %0, %66 ], [ %0, %81 ], [ %0, %91 ]
  br i1 %106, label %108, label %151, !prof !253

108:                                              ; preds = %104, %55
  %109 = phi i32 [ %105, %104 ], [ %4, %55 ]
  %110 = phi ptr [ %107, %104 ], [ %0, %55 ]
  switch i32 %109, label %150 [
    i32 37, label %111
    i32 43, label %121
  ], !prof !255

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !159
  %114 = icmp ugt i32 %113, 52
  br i1 %114, label %151, label %115, !prof !256

115:                                              ; preds = %111
  %116 = zext nneg i32 %113 to i64
  %117 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !163
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i32
  br label %151

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !159
  %124 = load i32, ptr @volatile_ok, align 4, !tbaa !163
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130, !prof !257

126:                                              ; preds = %121
  %127 = load i32, ptr %110, align 8
  %128 = and i32 %127, 134217728
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %147, !prof !258

130:                                              ; preds = %126, %121
  %131 = load i32, ptr %110, align 8
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  %134 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !159
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137, !prof !259

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.mem_attrs, ptr %135, i64 0, i32 5
  %139 = load i8, ptr %138, align 8, !tbaa !260
  br label %140

140:                                              ; preds = %130, %137
  %141 = phi i8 [ %139, %137 ], [ 0, %130 ]
  %142 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %143 = tail call zeroext i8 %142(i32 noundef %133, ptr noundef %123, i8 noundef zeroext 0, i8 noundef zeroext %141) #29, !prof !449
  %144 = icmp eq i8 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  br label %147

147:                                              ; preds = %140, %126
  %148 = phi i1 [ false, %126 ], [ %144, %140 ]
  %149 = phi i32 [ 0, %126 ], [ %146, %140 ]
  br i1 %148, label %150, label %151, !prof !275

150:                                              ; preds = %108, %147
  br label %151

151:                                              ; preds = %147, %46, %22, %13, %111, %115, %53, %49, %39, %104, %150
  %152 = phi i32 [ 0, %150 ], [ 0, %104 ], [ 0, %13 ], [ %52, %49 ], [ 0, %39 ], [ 0, %53 ], [ 1, %111 ], [ %120, %115 ], [ 0, %22 ], [ 0, %46 ], [ %149, %147 ]
  ret i32 %152
}

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @address_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !450 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %4 = tail call zeroext i8 %3(i32 noundef %1, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #29, !prof !451
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !452 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ne i32 %5, %1
  %7 = icmp ne i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %87, label %9, !prof !453

9:                                                ; preds = %2
  %10 = and i32 %3, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %72, !prof !454

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23, !prof !455

17:                                               ; preds = %12
  %18 = load i32, ptr %14, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 43
  br i1 %20, label %21, label %23, !prof !456

21:                                               ; preds = %17
  %22 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1), !range !296
  br label %68

23:                                               ; preds = %17, %12
  %24 = load i32, ptr %14, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %48, !prof !455

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !159
  %30 = icmp ult i32 %29, 53
  br i1 %30, label %31, label %48, !prof !456

31:                                               ; preds = %27
  %32 = lshr i32 %24, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !163
  %37 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %33, i32 noundef %1, i32 noundef %36) #29
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %31
  %40 = load i32, ptr %14, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !159
  %46 = and i8 %45, -2
  %47 = icmp eq i8 %46, 10
  br i1 %47, label %48, label %68

48:                                               ; preds = %39, %31, %27, %23
  %49 = load i32, ptr %0, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !159
  %55 = and i8 %54, -2
  %56 = icmp eq i8 %55, 8
  br i1 %56, label %57, label %67, !prof !456

57:                                               ; preds = %48
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %59 = load i8, ptr %58, align 1, !tbaa !159
  %60 = load i32, ptr %14, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !159
  %66 = icmp ugt i8 %59, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %48, %57
  br label %68

68:                                               ; preds = %39, %57, %67, %21
  %69 = phi ptr [ %14, %67 ], [ %0, %21 ], [ %0, %57 ], [ %0, %39 ]
  %70 = phi i32 [ undef, %67 ], [ %22, %21 ], [ 0, %57 ], [ 0, %39 ]
  %71 = phi i1 [ true, %67 ], [ false, %21 ], [ false, %57 ], [ false, %39 ]
  br i1 %71, label %72, label %87, !prof !455

72:                                               ; preds = %68, %9
  %73 = phi ptr [ %69, %68 ], [ %0, %9 ]
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %87, !prof !457

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !159
  %80 = icmp ugt i32 %79, 52
  br i1 %80, label %87, label %81, !prof !458

81:                                               ; preds = %77
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !163
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  br label %87

87:                                               ; preds = %68, %72, %81, %77, %2
  %88 = phi i32 [ 0, %2 ], [ 0, %72 ], [ 1, %77 ], [ %86, %81 ], [ %70, %68 ]
  ret i32 %88
}

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @pmode_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !147 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef 16)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @scratch_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 !prof !459 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ne i32 %5, %1
  %7 = icmp ne i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %17, label %9, !prof !460

9:                                                ; preds = %2
  %10 = trunc i32 %3 to i16
  switch i16 %10, label %16 [
    i16 38, label %17
    i16 37, label %11
  ], !prof !461

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !159
  %14 = icmp ult i32 %13, 53
  %15 = zext i1 %14 to i32
  br label %17

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %11, %16, %9, %2
  %18 = phi i32 [ 0, %2 ], [ 1, %9 ], [ %15, %11 ], [ 0, %16 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @immediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !462 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %14, !prof !463

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !159
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %49, !prof !464

14:                                               ; preds = %8, %2
  %15 = and i32 %3, 65535
  %16 = icmp eq i32 %15, 30
  %17 = and i1 %6, %16
  br i1 %17, label %18, label %24, !prof !465

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !159
  %21 = tail call i64 @trunc_int_for_mode(i64 noundef %20, i32 noundef %1) #29
  %22 = load i64, ptr %19, align 8, !tbaa !159
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49, !prof !466

24:                                               ; preds = %18, %14
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !163
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %49, !prof !467

31:                                               ; preds = %24
  %32 = lshr i32 %25, 16
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, %1
  %35 = icmp eq i32 %1, 0
  %36 = or i1 %35, %34
  %37 = icmp eq i32 %33, 0
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %49, !prof !468

39:                                               ; preds = %31
  %40 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !468

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %39
  %46 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #29
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %18, %8, %24, %42, %45, %31
  %50 = phi i32 [ 0, %42 ], [ 0, %24 ], [ %48, %45 ], [ 0, %31 ], [ 0, %8 ], [ 0, %18 ]
  ret i32 %50
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @const_int_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !469 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %15, !prof !470

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %14, label %8, !prof !471

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !159
  %11 = tail call i64 @trunc_int_for_mode(i64 noundef %10, i32 noundef %1) #29
  %12 = load i64, ptr %9, align 8, !tbaa !159
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15, !prof !472

14:                                               ; preds = %8, %6
  br label %15

15:                                               ; preds = %8, %2, %14
  %16 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @const_double_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !147 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !159
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %25

14:                                               ; preds = %8, %2
  %15 = trunc i32 %3 to i16
  switch i16 %15, label %25 [
    i16 32, label %16
    i16 30, label %16
  ]

16:                                               ; preds = %14, %14
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = lshr i32 %3, 16
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %20, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %16, %8, %22, %18, %14
  %26 = phi i32 [ 1, %18 ], [ %24, %22 ], [ 0, %14 ], [ 0, %8 ], [ 1, %16 ]
  ret i32 %26
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !473 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %1, 0
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = select i1 %5, i32 %7, i32 %1, !prof !242
  %9 = and i32 %3, 16711680
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %8, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %19, !prof !243

13:                                               ; preds = %2
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !159
  %17 = and i8 %16, -2
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %147, !prof !244

19:                                               ; preds = %13, %2
  %20 = icmp eq i32 %4, 30
  %21 = and i1 %20, %11
  br i1 %21, label %22, label %28, !prof !245

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !159
  %25 = tail call i64 @trunc_int_for_mode(i64 noundef %24, i32 noundef %8) #29
  %26 = load i64, ptr %23, align 8, !tbaa !159
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %147, !prof !246

28:                                               ; preds = %22, %19
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !163
  %34 = icmp eq i32 %33, 9
  %35 = lshr i32 %29, 16
  %36 = and i32 %35, 255
  br i1 %34, label %37, label %53, !prof !247

37:                                               ; preds = %28
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %43, label %39, !prof !248

39:                                               ; preds = %37
  %40 = icmp eq i32 %36, %8
  %41 = icmp eq i32 %8, 0
  %42 = or i1 %41, %40
  br i1 %42, label %43, label %147, !prof !249

43:                                               ; preds = %39, %37
  %44 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46, !prof !250

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %147, label %49

49:                                               ; preds = %46, %43
  %50 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #29
  %51 = icmp ne i8 %50, 0
  %52 = zext i1 %51 to i32
  br label %147

53:                                               ; preds = %28
  %54 = icmp eq i32 %36, %8
  br i1 %54, label %55, label %147, !prof !251

55:                                               ; preds = %53
  %56 = icmp eq i32 %4, 39
  br i1 %56, label %57, label %104, !prof !252

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81, !prof !253

62:                                               ; preds = %57
  %63 = load i32, ptr %59, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 43
  br i1 %65, label %66, label %76, !prof !254

66:                                               ; preds = %62
  %67 = zext nneg i32 %8 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !159
  %70 = lshr i32 %63, 16
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !159
  %75 = icmp ugt i8 %69, %74
  br i1 %75, label %100, label %76

76:                                               ; preds = %62, %66
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load i32, ptr %77, align 8, !tbaa !159
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80, !prof !253

80:                                               ; preds = %76
  br i1 %65, label %100, label %81

81:                                               ; preds = %80, %76, %57
  %82 = zext nneg i32 %36 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !159
  %85 = and i8 %84, -2
  %86 = icmp eq i8 %85, 8
  br i1 %86, label %87, label %97, !prof !254

87:                                               ; preds = %81
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %82
  %89 = load i8, ptr %88, align 1, !tbaa !159
  %90 = load i32, ptr %59, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !159
  %96 = icmp ugt i8 %89, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %87, %81
  %98 = load i32, ptr %59, align 8
  %99 = and i32 %98, 65535
  br label %100

100:                                              ; preds = %97, %87, %80, %66
  %101 = phi i32 [ %99, %97 ], [ 39, %66 ], [ 39, %80 ], [ 39, %87 ]
  %102 = phi i1 [ true, %97 ], [ false, %66 ], [ false, %80 ], [ false, %87 ]
  %103 = phi ptr [ %59, %97 ], [ %0, %66 ], [ %0, %80 ], [ %0, %87 ]
  br i1 %102, label %104, label %147, !prof !253

104:                                              ; preds = %100, %55
  %105 = phi i32 [ %101, %100 ], [ %4, %55 ]
  %106 = phi ptr [ %103, %100 ], [ %0, %55 ]
  switch i32 %105, label %146 [
    i32 37, label %107
    i32 43, label %117
  ], !prof !255

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !159
  %110 = icmp ugt i32 %109, 52
  br i1 %110, label %147, label %111, !prof !256

111:                                              ; preds = %107
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !163
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  br label %147

117:                                              ; preds = %104
  %118 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !159
  %120 = load i32, ptr @volatile_ok, align 4, !tbaa !163
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126, !prof !257

122:                                              ; preds = %117
  %123 = load i32, ptr %106, align 8
  %124 = and i32 %123, 134217728
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %143, !prof !258

126:                                              ; preds = %122, %117
  %127 = load i32, ptr %106, align 8
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !159
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133, !prof !259

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.mem_attrs, ptr %131, i64 0, i32 5
  %135 = load i8, ptr %134, align 8, !tbaa !260
  br label %136

136:                                              ; preds = %133, %126
  %137 = phi i8 [ %135, %133 ], [ 0, %126 ]
  %138 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %139 = tail call zeroext i8 %138(i32 noundef %129, ptr noundef %119, i8 noundef zeroext 0, i8 noundef zeroext %137) #29, !prof !474
  %140 = icmp eq i8 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  br label %143

143:                                              ; preds = %136, %122
  %144 = phi i1 [ false, %122 ], [ %140, %136 ]
  %145 = phi i32 [ 0, %122 ], [ %142, %136 ]
  br i1 %144, label %146, label %147, !prof !275

146:                                              ; preds = %143, %104
  br label %147

147:                                              ; preds = %13, %22, %39, %46, %49, %53, %100, %107, %111, %143, %146
  %148 = phi i32 [ 0, %146 ], [ 0, %100 ], [ 0, %13 ], [ %52, %49 ], [ 0, %39 ], [ 0, %53 ], [ 1, %107 ], [ %116, %111 ], [ 0, %22 ], [ 0, %46 ], [ %145, %143 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150, !prof !475

150:                                              ; preds = %147
  %151 = load i32, ptr %0, align 8
  %152 = and i32 %151, 65535
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !163
  %156 = icmp ne i32 %155, 9
  %157 = zext i1 %156 to i32
  br label %158

158:                                              ; preds = %150, %147
  %159 = phi i32 [ 0, %147 ], [ %157, %150 ]
  ret i32 %159
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !476 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !163
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %48, !prof !477

9:                                                ; preds = %2
  %10 = and i32 %3, 16711680
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne i32 %1, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %20, !prof !478

14:                                               ; preds = %9
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !159
  %18 = and i8 %17, -2
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %85, !prof !479

20:                                               ; preds = %14, %9
  %21 = icmp eq i32 %4, 30
  %22 = and i1 %12, %21
  br i1 %22, label %23, label %29, !prof !478

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !159
  %26 = tail call i64 @trunc_int_for_mode(i64 noundef %25, i32 noundef %1) #29
  %27 = load i64, ptr %24, align 8, !tbaa !159
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %85, !prof !479

29:                                               ; preds = %23, %20
  %30 = load i32, ptr %0, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !480

34:                                               ; preds = %29
  %35 = icmp eq i32 %32, %1
  %36 = icmp eq i32 %1, 0
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %85

38:                                               ; preds = %34, %29
  %39 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !480

41:                                               ; preds = %38
  %42 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %41, %38
  %45 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #29
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i32
  br label %85

48:                                               ; preds = %2
  %49 = lshr i32 %3, 16
  %50 = and i32 %49, 255
  %51 = icmp ne i32 %50, %1
  %52 = icmp ne i32 %1, 0
  %53 = and i1 %52, %51
  br i1 %53, label %85, label %54, !prof !481

54:                                               ; preds = %48
  %55 = icmp eq i32 %4, 39
  br i1 %55, label %56, label %70, !prof !482

56:                                               ; preds = %54
  %57 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67, !prof !483

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 43
  br i1 %64, label %65, label %67, !prof !484

65:                                               ; preds = %59
  %66 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1), !range !296
  br label %85

67:                                               ; preds = %59, %56
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !159
  br label %70

70:                                               ; preds = %67, %54
  %71 = phi ptr [ %69, %67 ], [ %0, %54 ]
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 37
  br i1 %74, label %75, label %85, !prof !485

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !159
  %78 = icmp ugt i32 %77, 52
  br i1 %78, label %85, label %79, !prof !486

79:                                               ; preds = %75
  %80 = zext nneg i32 %77 to i64
  %81 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !163
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %41, %34, %23, %14, %70, %79, %75, %48, %44, %65
  %86 = phi i32 [ %66, %65 ], [ 0, %14 ], [ %47, %44 ], [ 0, %48 ], [ 0, %70 ], [ 1, %75 ], [ %84, %79 ], [ 0, %23 ], [ 0, %34 ], [ 0, %41 ]
  ret i32 %86
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @push_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 !prof !487 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !159
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %6, 3
  %8 = and i32 %7, 508
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %58, !prof !488

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %18, label %14, !prof !489

14:                                               ; preds = %12
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %58, !prof !490

18:                                               ; preds = %14, %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = icmp eq i32 %8, %6
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 65535
  br i1 %21, label %24, label %26, !prof !491

24:                                               ; preds = %18
  %25 = icmp eq i32 %23, 74
  br i1 %25, label %52, label %58, !prof !492

26:                                               ; preds = %18
  %27 = icmp eq i32 %23, 78
  br i1 %27, label %28, label %58, !prof !493

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 49
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = load ptr, ptr %35, align 8, !tbaa !159
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !159
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !159
  %49 = sub nsw i32 0, %8
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %24
  %53 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !148
  %56 = icmp eq ptr %54, %55
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %46, %26, %28, %34, %40, %24, %14, %2, %52
  %59 = phi i32 [ %57, %52 ], [ 0, %2 ], [ 0, %14 ], [ 0, %24 ], [ 0, %40 ], [ 0, %34 ], [ 0, %28 ], [ 0, %26 ], [ 0, %46 ]
  ret i32 %59
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pop_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #20 !prof !147 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %24

12:                                               ; preds = %8, %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 77
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !148
  %22 = icmp eq ptr %20, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %8, %12, %2, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %2 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %25
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !494 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %92, !prof !495

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %9, label %252, !prof !496

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  %11 = lshr i32 %6, 16
  %12 = and i32 %11, 255
  %13 = select i1 %10, i32 %12, i32 %1, !prof !242
  %14 = and i32 %6, 16711680
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i32 %13, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %24, !prof !243

18:                                               ; preds = %9
  %19 = zext i32 %13 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !159
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %24, label %252, !prof !244

24:                                               ; preds = %9, %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !163
  %30 = icmp eq i32 %29, 9
  %31 = lshr i32 %25, 16
  %32 = and i32 %31, 255
  br i1 %30, label %33, label %49, !prof !247

33:                                               ; preds = %24
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %39, label %35, !prof !248

35:                                               ; preds = %33
  %36 = icmp eq i32 %32, %13
  %37 = icmp eq i32 %13, 0
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %252, !prof !249

39:                                               ; preds = %35, %33
  %40 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !250

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %252, label %45

45:                                               ; preds = %42, %39
  %46 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #29
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i32
  br label %252

49:                                               ; preds = %24
  %50 = icmp eq i32 %32, %13
  br i1 %50, label %51, label %252, !prof !251

51:                                               ; preds = %49
  switch i32 %7, label %91 [
    i32 37, label %52
    i32 43, label %62
  ], !prof !255

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !159
  %55 = icmp ugt i32 %54, 52
  br i1 %55, label %252, label %56, !prof !256

56:                                               ; preds = %52
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !163
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  br label %252

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !159
  %65 = load i32, ptr @volatile_ok, align 4, !tbaa !163
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71, !prof !257

67:                                               ; preds = %62
  %68 = load i32, ptr %0, align 8
  %69 = and i32 %68, 134217728
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88, !prof !258

71:                                               ; preds = %67, %62
  %72 = load i32, ptr %0, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !159
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78, !prof !259

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.mem_attrs, ptr %76, i64 0, i32 5
  %80 = load i8, ptr %79, align 8, !tbaa !260
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i8 [ %80, %78 ], [ 0, %71 ]
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %84 = tail call zeroext i8 %83(i32 noundef %74, ptr noundef %64, i8 noundef zeroext 0, i8 noundef zeroext %82) #29, !prof !497
  %85 = icmp eq i8 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  br label %88

88:                                               ; preds = %81, %67
  %89 = phi i1 [ false, %67 ], [ %85, %81 ]
  %90 = phi i32 [ 0, %67 ], [ %87, %81 ]
  br i1 %89, label %91, label %252, !prof !275

91:                                               ; preds = %88, %51
  br label %252

92:                                               ; preds = %2
  %93 = icmp eq i32 %1, 0
  br i1 %93, label %99, label %94, !prof !498

94:                                               ; preds = %92
  %95 = load i32, ptr %0, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, %1
  br i1 %98, label %99, label %252, !prof !499

99:                                               ; preds = %94, %92
  %100 = load i32, ptr %0, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 39
  br i1 %102, label %103, label %106, !prof !500

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !159
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi ptr [ %105, %103 ], [ %0, %99 ]
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 43
  br i1 %110, label %111, label %252, !prof !501

111:                                              ; preds = %106
  %112 = lshr i32 %100, 16
  %113 = and i32 %112, 255
  %114 = select i1 %93, i32 %113, i32 %1, !prof !242
  %115 = and i32 %100, 16711680
  %116 = icmp eq i32 %115, 0
  %117 = icmp ne i32 %114, 0
  %118 = and i1 %116, %117
  br i1 %118, label %119, label %125, !prof !243

119:                                              ; preds = %111
  %120 = zext i32 %114 to i64
  %121 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !159
  %123 = and i8 %122, -2
  %124 = icmp eq i8 %123, 2
  br i1 %124, label %125, label %252, !prof !244

125:                                              ; preds = %119, %111
  %126 = icmp eq i32 %101, 30
  %127 = and i1 %126, %117
  br i1 %127, label %128, label %134, !prof !245

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !159
  %131 = tail call i64 @trunc_int_for_mode(i64 noundef %130, i32 noundef %114) #29
  %132 = load i64, ptr %129, align 8, !tbaa !159
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %252, !prof !246

134:                                              ; preds = %128, %125
  %135 = load i32, ptr %0, align 8
  %136 = and i32 %135, 65535
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !163
  %140 = icmp eq i32 %139, 9
  %141 = lshr i32 %135, 16
  %142 = and i32 %141, 255
  br i1 %140, label %143, label %159, !prof !247

143:                                              ; preds = %134
  %144 = icmp eq i32 %142, 0
  br i1 %144, label %149, label %145, !prof !248

145:                                              ; preds = %143
  %146 = icmp eq i32 %142, %114
  %147 = icmp eq i32 %114, 0
  %148 = or i1 %147, %146
  br i1 %148, label %149, label %252, !prof !249

149:                                              ; preds = %145, %143
  %150 = load i32, ptr @flag_pic, align 4, !tbaa !163
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152, !prof !250

152:                                              ; preds = %149
  %153 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #29
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %252, label %155

155:                                              ; preds = %152, %149
  %156 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #29
  %157 = icmp ne i8 %156, 0
  %158 = zext i1 %157 to i32
  br label %252

159:                                              ; preds = %134
  %160 = icmp eq i32 %142, %114
  br i1 %160, label %161, label %252, !prof !251

161:                                              ; preds = %159
  br i1 %102, label %162, label %209, !prof !252

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !159
  %165 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %186, !prof !253

167:                                              ; preds = %162
  %168 = load i32, ptr %164, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 43
  br i1 %170, label %171, label %181, !prof !254

171:                                              ; preds = %167
  %172 = zext nneg i32 %114 to i64
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !159
  %175 = lshr i32 %168, 16
  %176 = and i32 %175, 255
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !159
  %180 = icmp ugt i8 %174, %179
  br i1 %180, label %205, label %181

181:                                              ; preds = %167, %171
  %182 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load i32, ptr %182, align 8, !tbaa !159
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185, !prof !253

185:                                              ; preds = %181
  br i1 %170, label %205, label %186

186:                                              ; preds = %185, %181, %162
  %187 = zext nneg i32 %142 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !159
  %190 = and i8 %189, -2
  %191 = icmp eq i8 %190, 8
  br i1 %191, label %192, label %202, !prof !254

192:                                              ; preds = %186
  %193 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %187
  %194 = load i8, ptr %193, align 1, !tbaa !159
  %195 = load i32, ptr %164, align 8
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !159
  %201 = icmp ugt i8 %194, %200
  br i1 %201, label %205, label %202

202:                                              ; preds = %192, %186
  %203 = load i32, ptr %164, align 8
  %204 = and i32 %203, 65535
  br label %205

205:                                              ; preds = %202, %192, %185, %171
  %206 = phi i32 [ %204, %202 ], [ 39, %171 ], [ 39, %185 ], [ 39, %192 ]
  %207 = phi i1 [ true, %202 ], [ false, %171 ], [ false, %185 ], [ false, %192 ]
  %208 = phi ptr [ %164, %202 ], [ %0, %171 ], [ %0, %185 ], [ %0, %192 ]
  br i1 %207, label %209, label %252, !prof !253

209:                                              ; preds = %205, %161
  %210 = phi i32 [ %206, %205 ], [ %101, %161 ]
  %211 = phi ptr [ %208, %205 ], [ %0, %161 ]
  switch i32 %210, label %251 [
    i32 37, label %212
    i32 43, label %222
  ], !prof !255

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !159
  %215 = icmp ugt i32 %214, 52
  br i1 %215, label %252, label %216, !prof !256

216:                                              ; preds = %212
  %217 = zext nneg i32 %214 to i64
  %218 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !163
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i32
  br label %252

222:                                              ; preds = %209
  %223 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !159
  %225 = load i32, ptr @volatile_ok, align 4, !tbaa !163
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %231, !prof !257

227:                                              ; preds = %222
  %228 = load i32, ptr %211, align 8
  %229 = and i32 %228, 134217728
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %248, !prof !258

231:                                              ; preds = %227, %222
  %232 = load i32, ptr %211, align 8
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  %235 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1, i32 0, i32 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !159
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238, !prof !259

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.mem_attrs, ptr %236, i64 0, i32 5
  %240 = load i8, ptr %239, align 8, !tbaa !260
  br label %241

241:                                              ; preds = %238, %231
  %242 = phi i8 [ %240, %238 ], [ 0, %231 ]
  %243 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !262
  %244 = tail call zeroext i8 %243(i32 noundef %234, ptr noundef %224, i8 noundef zeroext 0, i8 noundef zeroext %242) #29, !prof !502
  %245 = icmp eq i8 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  br label %248

248:                                              ; preds = %241, %227
  %249 = phi i1 [ false, %227 ], [ %245, %241 ]
  %250 = phi i32 [ 0, %227 ], [ %247, %241 ]
  br i1 %249, label %251, label %252, !prof !275

251:                                              ; preds = %248, %209
  br label %252

252:                                              ; preds = %251, %248, %216, %212, %205, %159, %155, %152, %145, %128, %119, %94, %91, %88, %56, %52, %49, %45, %42, %35, %18, %106, %5
  %253 = phi i32 [ 0, %5 ], [ 0, %106 ], [ 0, %91 ], [ 0, %18 ], [ %48, %45 ], [ 0, %35 ], [ 0, %49 ], [ 1, %52 ], [ %61, %56 ], [ 0, %42 ], [ %90, %88 ], [ 0, %94 ], [ 0, %251 ], [ 0, %205 ], [ 0, %119 ], [ %158, %155 ], [ 0, %145 ], [ 0, %159 ], [ 1, %212 ], [ %221, %216 ], [ 0, %128 ], [ 0, %152 ], [ %250, %248 ]
  ret i32 %253
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @indirect_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !147 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !159
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = lshr i32 %6, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %60

23:                                               ; preds = %19, %15
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  %28 = tail call i32 @general_operand(ptr noundef %27, i32 noundef 16), !range !296
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25, %23
  %31 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !159
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !159
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !159
  %45 = sub nsw i32 0, %17
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %55, label %60

48:                                               ; preds = %9, %5, %2
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 43
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = tail call i32 @memory_operand(ptr noundef nonnull %0, i32 noundef %1), !range !296
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52, %42
  %56 = phi ptr [ %32, %42 ], [ %0, %52 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !159
  %59 = tail call i32 @general_operand(ptr noundef %58, i32 noundef 16), !range !296
  br label %60

60:                                               ; preds = %55, %30, %48, %52, %19, %36, %42, %25
  %61 = phi i32 [ 0, %19 ], [ 1, %25 ], [ 0, %42 ], [ 0, %36 ], [ 0, %52 ], [ 0, %48 ], [ 0, %30 ], [ %59, %55 ]
  ret i32 %61
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ordered_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !147 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %4, %2
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i16
  %12 = add i16 %11, -80
  %13 = icmp ult i16 %12, 10
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i32 [ 0, %4 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #21 !prof !503 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4, !prof !504

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %17, !prof !505

9:                                                ; preds = %4, %2
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !163
  %15 = icmp ult i32 %14, 2
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i32 [ 0, %4 ], [ %16, %9 ]
  ret i32 %18
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @extract_asm_operands(ptr noundef readonly %0) local_unnamed_addr #19 !prof !506 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %23 [
    i16 17, label %24
    i16 23, label %4
    i16 15, label %10
  ], !prof !171

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %24, label %23, !prof !172

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %23 [
    i16 17, label %24
    i16 23, label %17
  ], !prof !173

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %24, label %23, !prof !174

23:                                               ; preds = %17, %4, %10, %1
  br label %24

24:                                               ; preds = %10, %17, %4, %1, %23
  %25 = phi ptr [ null, %23 ], [ %0, %1 ], [ %6, %4 ], [ %19, %17 ], [ %14, %10 ]
  ret ptr %25
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @offsettable_nonstrict_memref_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !147 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !260
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %5 ]
  %18 = tail call i32 @offsettable_address_addr_space_p(i32 noundef 0, i32 noundef %7, ptr noundef %9, i8 noundef zeroext %17)
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %16 ]
  ret i32 %22
}

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_constant_term_loc(ptr noundef readonly %0) local_unnamed_addr #22 !prof !507 {
  %2 = load ptr, ptr %0, align 8, !tbaa !148
  %3 = load i32, ptr %2, align 8
  %4 = freeze i32 %3
  %5 = and i32 %4, 65534
  %6 = icmp eq i32 %5, 44
  br i1 %6, label %44, label %7, !prof !508

7:                                                ; preds = %1
  %8 = trunc i32 %4 to i16
  switch i16 %8, label %9 [
    i16 35, label %44
    i16 30, label %44
    i16 49, label %10
  ], !prof !509

9:                                                ; preds = %7
  br label %44

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14, !prof !323

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !163
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %32, !prof !323

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !163
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %44, label %32

32:                                               ; preds = %25, %21, %14
  br i1 %13, label %36, label %33, !prof !323

33:                                               ; preds = %32
  %34 = tail call ptr @find_constant_term_loc(ptr noundef nonnull %11)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %44, !prof !343

36:                                               ; preds = %10, %33, %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !159
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !323

40:                                               ; preds = %36
  %41 = tail call ptr @find_constant_term_loc(ptr noundef nonnull %37)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !343

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %7, %40, %33, %25, %7, %1, %43, %9
  %45 = phi ptr [ null, %9 ], [ null, %43 ], [ %0, %7 ], [ %0, %1 ], [ %0, %25 ], [ %34, %33 ], [ %41, %40 ], [ %0, %7 ]
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define dso_local i32 @offsettable_memref_p(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !147 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %21, !prof !298

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !260
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %5 ]
  %18 = tail call i32 @offsettable_address_addr_space_p(i32 noundef 1, i32 noundef %7, ptr noundef %9, i8 noundef zeroext %17)
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %16 ]
  ret i32 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @offsettable_address_addr_space_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #12 !prof !147 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  store ptr %2, ptr %5, align 8, !tbaa !148
  %8 = icmp eq i32 %0, 0
  %9 = select i1 %8, ptr @memory_address_addr_space_p, ptr @strict_memory_address_addr_space_p
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !159
  %13 = zext i8 %12 to i32
  %14 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %2) #29
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %4
  %17 = load i32, ptr %2, align 8
  %18 = and i32 %17, 65534
  %19 = add nsw i32 %18, -78
  %20 = icmp ult i32 %19, -4
  br i1 %20, label %21, label %73

21:                                               ; preds = %16
  %22 = icmp eq i8 %12, 0
  %23 = load i32, ptr @ix86_isa_flags, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 16, i32 32
  %27 = select i1 %22, i32 %26, i32 %13
  %28 = icmp eq i32 %7, 49
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = call ptr @find_constant_term_loc(ptr noundef nonnull %5)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !148
  store ptr %33, ptr %5, align 8, !tbaa !148
  %34 = load ptr, ptr %30, align 8, !tbaa !148
  %35 = add nsw i32 %27, -1
  %36 = zext nneg i32 %35 to i64
  %37 = call ptr @plus_constant(ptr noundef %34, i64 noundef %36) #29
  store ptr %37, ptr %30, align 8, !tbaa !148
  %38 = call i32 %9(i32 noundef 14, ptr noundef nonnull %2, i8 noundef zeroext %3) #29, !callees !510
  %39 = load ptr, ptr %5, align 8, !tbaa !148
  store ptr %39, ptr %30, align 8, !tbaa !148
  br label %73

40:                                               ; preds = %29, %21
  %41 = zext nneg i32 %7 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !163
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = and i32 %17, 65535
  %47 = icmp eq i32 %46, 122
  %48 = icmp ne i32 %1, 1
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = call i32 @get_mode_alignment(i32 noundef %1) #29
  %52 = lshr i32 %51, 3
  %53 = icmp ugt i32 %27, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %2, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  %62 = add nsw i32 %27, -1
  %63 = zext nneg i32 %62 to i64
  %64 = call ptr @plus_constant(ptr noundef %61, i64 noundef %63) #29
  %65 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %57, ptr noundef %59, ptr noundef %64) #29
  br label %70

66:                                               ; preds = %50, %45
  %67 = add nsw i32 %27, -1
  %68 = zext nneg i32 %67 to i64
  %69 = call ptr @plus_constant(ptr noundef nonnull %2, i64 noundef %68) #29
  br label %70

70:                                               ; preds = %66, %54
  %71 = phi ptr [ %65, %54 ], [ %69, %66 ]
  %72 = call i32 %9(i32 noundef 14, ptr noundef %71, i8 noundef zeroext %3) #29, !callees !510
  br label %73

73:                                               ; preds = %40, %16, %4, %70, %32
  %74 = phi i32 [ %38, %32 ], [ %72, %70 ], [ 1, %4 ], [ 0, %16 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  ret i32 %74
}

declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mode_dependent_address_p(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !511 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = add nsw i32 %3, -74
  %5 = icmp ult i32 %4, 4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @extract_insn_cached(ptr noundef %0) local_unnamed_addr #10 !prof !512 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %8, !prof !513

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %143, label %8, !prof !514

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %60 [
    i16 24, label %142
    i16 25, label %142
    i16 16, label %142
    i16 20, label %142
    i16 21, label %142
    i16 138, label %142
    i16 23, label %13
    i16 15, label %19
    i16 17, label %35
  ], !prof !187

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %35, label %60, !prof !188

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %60 [
    i16 23, label %26
    i16 17, label %35
  ], !prof !189

26:                                               ; preds = %19
  %27 = and i32 %24, 65535
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 17
  %33 = icmp eq i32 %27, 17
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %60, !prof !190

35:                                               ; preds = %26, %19, %13, %8
  %36 = tail call i32 @asm_noperands(ptr noundef nonnull %10)
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %38 = icmp sgt i32 %36, -1
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = icmp slt i32 %36, 31
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2078, ptr noundef nonnull @.str.1) #29
  br label %42

42:                                               ; preds = %41, %39
  %43 = tail call ptr @decode_asm_operands(ptr noundef nonnull %10, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), ptr noundef null)
  %44 = icmp eq i32 %36, 0
  br i1 %44, label %104, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), align 8, !tbaa !148
  store i8 1, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %47 = load i8, ptr %46, align 1, !tbaa !159
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %104, label %49

49:                                               ; preds = %45, %49
  %50 = phi i8 [ %57, %49 ], [ %47, %45 ]
  %51 = phi ptr [ %53, %49 ], [ %46, %45 ]
  %52 = phi i8 [ %56, %49 ], [ 1, %45 ]
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  %54 = icmp eq i8 %50, 44
  %55 = zext i1 %54 to i8
  %56 = add i8 %52, %55
  store i8 %56, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %57 = load i8, ptr %53, align 1, !tbaa !159
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %104, label %49, !llvm.loop !191

59:                                               ; preds = %35
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2094, ptr noundef nonnull @.str.1) #29
  br label %60

60:                                               ; preds = %59, %26, %19, %13, %8
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !159
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67, !prof !192

64:                                               ; preds = %60
  %65 = load ptr, ptr %9, align 8, !tbaa !159
  %66 = tail call i32 @recog(ptr noundef %65, ptr noundef %0, ptr noundef null) #29
  store i32 %66, ptr %61, align 8, !tbaa !159
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, ptr %61, align 8, !tbaa !159
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71, !prof !193

70:                                               ; preds = %67
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2103, ptr noundef nonnull @.str.1) #29
  br label %71

71:                                               ; preds = %70, %67
  %72 = sext i32 %68 to i64
  %73 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 4
  %74 = load i8, ptr %73, align 8, !tbaa !194
  %75 = sext i8 %74 to i32
  store i8 %74, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %76 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 6
  %77 = load i8, ptr %76, align 2, !tbaa !196
  store i8 %77, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %78 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 5
  %79 = load i8, ptr %78, align 1, !tbaa !197
  store i8 %79, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  tail call void @insn_extract(ptr noundef %0) #29
  %80 = icmp sgt i8 %74, 0
  br i1 %80, label %81, label %104, !prof !198

81:                                               ; preds = %71
  %82 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !199
  %84 = zext nneg i32 %75 to i64
  br label %85

85:                                               ; preds = %101, %81
  %86 = phi i64 [ 0, %81 ], [ %102, %101 ]
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %83, i64 %86, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !200
  %89 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %86
  store ptr %88, ptr %89, align 8, !tbaa !148
  %90 = getelementptr inbounds %struct.insn_operand_data, ptr %83, i64 %86, i32 2
  %91 = load i16, ptr %90, align 8
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %86
  store i32 %92, ptr %93, align 4, !tbaa !163
  %94 = icmp eq i16 %91, 0
  br i1 %94, label %95, label %101, !prof !202

95:                                               ; preds = %85
  %96 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %86
  %97 = load ptr, ptr %96, align 8, !tbaa !148
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  store i32 %100, ptr %93, align 4, !tbaa !163
  br label %101

101:                                              ; preds = %95, %85
  %102 = add nuw nsw i64 %86, 1
  %103 = icmp eq i64 %102, %84
  br i1 %103, label %104, label %85, !prof !203, !llvm.loop !204

104:                                              ; preds = %49, %101, %71, %45, %42
  %105 = phi i32 [ 0, %42 ], [ %75, %71 ], [ %36, %45 ], [ %75, %101 ], [ %36, %49 ]
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %121, !prof !198

107:                                              ; preds = %104
  %108 = zext nneg i32 %105 to i64
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i64 [ 0, %107 ], [ %119, %109 ]
  %111 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !148
  %113 = load i8, ptr %112, align 1, !tbaa !159
  %114 = icmp eq i8 %113, 61
  %115 = icmp eq i8 %113, 43
  %116 = select i1 %115, i32 2, i32 0, !prof !205
  %117 = select i1 %114, i32 1, i32 %116, !prof !206
  %118 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %110
  store i32 %117, ptr %118, align 4, !tbaa !163
  %119 = add nuw nsw i64 %110, 1
  %120 = icmp eq i64 %119, %108
  br i1 %120, label %121, label %109, !prof !203, !llvm.loop !207

121:                                              ; preds = %109, %104
  %122 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %123 = icmp slt i8 %122, 31
  br i1 %123, label %125, label %124, !prof !208

124:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2126, ptr noundef nonnull @.str.1) #29
  br label %125

125:                                              ; preds = %124, %121
  %126 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !159
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134, !prof !193

129:                                              ; preds = %125
  %130 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %131 = icmp sgt i8 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = zext nneg i8 %130 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %133, i1 false), !tbaa !159
  br label %141

134:                                              ; preds = %125
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  %135 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %136 = icmp sgt i8 %135, 0
  br i1 %136, label %137, label %141, !prof !198

137:                                              ; preds = %134
  %138 = zext nneg i8 %135 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %138, i1 false), !tbaa !159
  %139 = zext nneg i8 %135 to i32
  %140 = add nsw i32 %139, -1
  store i32 %140, ptr @which_alternative, align 4, !tbaa !163
  br label %141

141:                                              ; preds = %137, %134, %132, %129
  store ptr null, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  store i32 -1, ptr @which_alternative, align 4, !tbaa !163
  br label %142

142:                                              ; preds = %8, %8, %8, %8, %8, %8, %141
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  br label %143

143:                                              ; preds = %4, %142
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @extract_constrain_insn_cached(ptr noundef %0) local_unnamed_addr #10 !prof !515 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %8, !prof !516

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %143, label %8, !prof !517

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %60 [
    i16 24, label %142
    i16 25, label %142
    i16 16, label %142
    i16 20, label %142
    i16 21, label %142
    i16 138, label %142
    i16 23, label %13
    i16 15, label %19
    i16 17, label %35
  ], !prof !187

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %35, label %60, !prof !188

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !148
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %60 [
    i16 23, label %26
    i16 17, label %35
  ], !prof !189

26:                                               ; preds = %19
  %27 = and i32 %24, 65535
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 17
  %33 = icmp eq i32 %27, 17
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %60, !prof !190

35:                                               ; preds = %26, %19, %13, %8
  %36 = tail call i32 @asm_noperands(ptr noundef nonnull %10)
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %38 = icmp sgt i32 %36, -1
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = icmp slt i32 %36, 31
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2078, ptr noundef nonnull @.str.1) #29
  br label %42

42:                                               ; preds = %41, %39
  %43 = tail call ptr @decode_asm_operands(ptr noundef nonnull %10, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), ptr noundef null)
  %44 = icmp eq i32 %36, 0
  br i1 %44, label %104, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), align 8, !tbaa !148
  store i8 1, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %47 = load i8, ptr %46, align 1, !tbaa !159
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %104, label %49

49:                                               ; preds = %45, %49
  %50 = phi i8 [ %57, %49 ], [ %47, %45 ]
  %51 = phi ptr [ %53, %49 ], [ %46, %45 ]
  %52 = phi i8 [ %56, %49 ], [ 1, %45 ]
  %53 = getelementptr inbounds i8, ptr %51, i64 1
  %54 = icmp eq i8 %50, 44
  %55 = zext i1 %54 to i8
  %56 = add i8 %52, %55
  store i8 %56, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %57 = load i8, ptr %53, align 1, !tbaa !159
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %104, label %49, !llvm.loop !191

59:                                               ; preds = %35
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2094, ptr noundef nonnull @.str.1) #29
  br label %60

60:                                               ; preds = %59, %26, %19, %13, %8
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !159
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67, !prof !192

64:                                               ; preds = %60
  %65 = load ptr, ptr %9, align 8, !tbaa !159
  %66 = tail call i32 @recog(ptr noundef %65, ptr noundef %0, ptr noundef null) #29
  store i32 %66, ptr %61, align 8, !tbaa !159
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, ptr %61, align 8, !tbaa !159
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71, !prof !193

70:                                               ; preds = %67
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2103, ptr noundef nonnull @.str.1) #29
  br label %71

71:                                               ; preds = %70, %67
  %72 = sext i32 %68 to i64
  %73 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 4
  %74 = load i8, ptr %73, align 8, !tbaa !194
  %75 = sext i8 %74 to i32
  store i8 %74, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %76 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 6
  %77 = load i8, ptr %76, align 2, !tbaa !196
  store i8 %77, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %78 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 5
  %79 = load i8, ptr %78, align 1, !tbaa !197
  store i8 %79, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !186
  tail call void @insn_extract(ptr noundef %0) #29
  %80 = icmp sgt i8 %74, 0
  br i1 %80, label %81, label %104, !prof !198

81:                                               ; preds = %71
  %82 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %72, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !199
  %84 = zext nneg i32 %75 to i64
  br label %85

85:                                               ; preds = %101, %81
  %86 = phi i64 [ 0, %81 ], [ %102, %101 ]
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %83, i64 %86, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !200
  %89 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %86
  store ptr %88, ptr %89, align 8, !tbaa !148
  %90 = getelementptr inbounds %struct.insn_operand_data, ptr %83, i64 %86, i32 2
  %91 = load i16, ptr %90, align 8
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %86
  store i32 %92, ptr %93, align 4, !tbaa !163
  %94 = icmp eq i16 %91, 0
  br i1 %94, label %95, label %101, !prof !202

95:                                               ; preds = %85
  %96 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %86
  %97 = load ptr, ptr %96, align 8, !tbaa !148
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  store i32 %100, ptr %93, align 4, !tbaa !163
  br label %101

101:                                              ; preds = %95, %85
  %102 = add nuw nsw i64 %86, 1
  %103 = icmp eq i64 %102, %84
  br i1 %103, label %104, label %85, !prof !203, !llvm.loop !204

104:                                              ; preds = %49, %101, %71, %45, %42
  %105 = phi i32 [ 0, %42 ], [ %75, %71 ], [ %36, %45 ], [ %75, %101 ], [ %36, %49 ]
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %121, !prof !198

107:                                              ; preds = %104
  %108 = zext nneg i32 %105 to i64
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i64 [ 0, %107 ], [ %119, %109 ]
  %111 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !148
  %113 = load i8, ptr %112, align 1, !tbaa !159
  %114 = icmp eq i8 %113, 61
  %115 = icmp eq i8 %113, 43
  %116 = select i1 %115, i32 2, i32 0, !prof !205
  %117 = select i1 %114, i32 1, i32 %116, !prof !206
  %118 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %110
  store i32 %117, ptr %118, align 4, !tbaa !163
  %119 = add nuw nsw i64 %110, 1
  %120 = icmp eq i64 %119, %108
  br i1 %120, label %121, label %109, !prof !203, !llvm.loop !207

121:                                              ; preds = %109, %104
  %122 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %123 = icmp slt i8 %122, 31
  br i1 %123, label %125, label %124, !prof !208

124:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2126, ptr noundef nonnull @.str.1) #29
  br label %125

125:                                              ; preds = %124, %121
  %126 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !159
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134, !prof !193

129:                                              ; preds = %125
  %130 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %131 = icmp sgt i8 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = zext nneg i8 %130 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %133, i1 false), !tbaa !159
  br label %141

134:                                              ; preds = %125
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  %135 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %136 = icmp sgt i8 %135, 0
  br i1 %136, label %137, label %141, !prof !198

137:                                              ; preds = %134
  %138 = zext nneg i8 %135 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %138, i1 false), !tbaa !159
  %139 = zext nneg i8 %135 to i32
  %140 = add nsw i32 %139, -1
  store i32 %140, ptr @which_alternative, align 4, !tbaa !163
  br label %141

141:                                              ; preds = %137, %134, %132, %129
  store ptr null, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  store i32 -1, ptr @which_alternative, align 4, !tbaa !163
  br label %142

142:                                              ; preds = %8, %8, %8, %8, %8, %8, %141
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !209
  br label %143

143:                                              ; preds = %4, %142
  %144 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %151, !prof !518

146:                                              ; preds = %143
  %147 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %148 = tail call i32 @constrain_operands(i32 noundef %147)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151, !prof !519

150:                                              ; preds = %146
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @.str.1) #29
  br label %151

151:                                              ; preds = %150, %146, %143
  ret void
}

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @constrain_operands_cached(i32 noundef %0) local_unnamed_addr #10 !prof !520 {
  %2 = load i32, ptr @which_alternative, align 4, !tbaa !163
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6, !prof !521

4:                                                ; preds = %1
  %5 = tail call i32 @constrain_operands(i32 noundef %0)
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 1, %1 ]
  ret i32 %7
}

declare void @insn_extract(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @preprocess_constraints() local_unnamed_addr #10 !prof !522 {
  %1 = alloca ptr, align 8
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %9, !prof !523

4:                                                ; preds = %0
  %5 = zext nneg i8 %2 to i64
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %7 = sext i8 %6 to i64
  %8 = shl nsw i64 %7, 5
  br label %12

9:                                                ; preds = %12, %0
  %10 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %11 = icmp sgt i8 %10, 0
  br i1 %11, label %17, label %146, !prof !523

12:                                               ; preds = %4, %12
  %13 = phi i64 [ 0, %4 ], [ %15, %12 ]
  %14 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %14, i8 0, i64 %8, i1 false), !prof !524
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %9, label %12, !prof !525, !llvm.loop !526

17:                                               ; preds = %9, %141
  %18 = phi i64 [ %142, %141 ], [ 0, %9 ]
  %19 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %18
  %20 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %21 = icmp sgt i8 %20, 0
  br i1 %21, label %22, label %141, !prof !527

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !148
  br label %25

25:                                               ; preds = %22, %135
  %26 = phi i64 [ 0, %22 ], [ %137, %135 ]
  %27 = phi ptr [ %24, %22 ], [ %136, %135 ]
  %28 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26
  %29 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 1
  store i32 0, ptr %29, align 8, !tbaa !528
  store ptr %27, ptr %28, align 16, !tbaa !530
  %30 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 3
  store i32 -1, ptr %30, align 16, !tbaa !531
  %31 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 4
  store i32 -1, ptr %31, align 4, !tbaa !532
  %32 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %26
  %33 = load i8, ptr %32, align 1, !tbaa !159
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44, !prof !533

35:                                               ; preds = %25, %38
  %36 = phi ptr [ %39, %38 ], [ %27, %25 ]
  %37 = load i8, ptr %36, align 1, !tbaa !159
  switch i8 %37, label %38 [
    i8 0, label %40
    i8 44, label %40
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  br label %35, !llvm.loop !216

40:                                               ; preds = %35, %35
  %41 = icmp eq i8 %37, 44
  %42 = zext i1 %41 to i64
  %43 = getelementptr inbounds i8, ptr %36, i64 %42
  br label %135

44:                                               ; preds = %25
  %45 = load i8, ptr %27, align 1, !tbaa !159
  switch i8 %45, label %50 [
    i8 0, label %46
    i8 44, label %46
  ], !prof !534

46:                                               ; preds = %44, %44
  %47 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %48 = load i8, ptr %47, align 8
  %49 = or i8 %48, -128
  store i8 %49, ptr %47, align 8
  br label %135

50:                                               ; preds = %44, %132
  %51 = phi ptr [ %133, %132 ], [ %27, %44 ]
  %52 = load i8, ptr %51, align 1, !tbaa !159
  %53 = icmp eq i8 %52, 35
  br i1 %53, label %54, label %58, !prof !535

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %56, %54 ], [ %51, %50 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !159
  switch i8 %57, label %54 [
    i8 44, label %58
    i8 0, label %58
  ]

58:                                               ; preds = %54, %54, %50
  %59 = phi ptr [ %51, %50 ], [ %56, %54 ], [ %56, %54 ]
  %60 = phi i8 [ %52, %50 ], [ %57, %54 ], [ %57, %54 ]
  switch i8 %60, label %120 [
    i8 44, label %61
    i8 0, label %61
    i8 61, label %128
    i8 43, label %128
    i8 42, label %128
    i8 37, label %128
    i8 69, label %128
    i8 70, label %128
    i8 71, label %128
    i8 72, label %128
    i8 115, label %128
    i8 105, label %128
    i8 110, label %128
    i8 73, label %128
    i8 74, label %128
    i8 75, label %128
    i8 76, label %128
    i8 77, label %128
    i8 78, label %128
    i8 79, label %128
    i8 80, label %128
    i8 63, label %63
    i8 33, label %67
    i8 38, label %71
    i8 48, label %75
    i8 49, label %75
    i8 50, label %75
    i8 51, label %75
    i8 52, label %75
    i8 53, label %75
    i8 54, label %75
    i8 55, label %75
    i8 56, label %75
    i8 57, label %75
    i8 109, label %83
    i8 60, label %87
    i8 62, label %91
    i8 86, label %95
    i8 111, label %99
    i8 88, label %103
    i8 112, label %107
    i8 103, label %115
    i8 114, label %115
  ], !prof !536

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds i8, ptr %59, i64 1
  br label %132

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !537
  %66 = add i32 %65, 6
  store i32 %66, ptr %64, align 4, !tbaa !537
  br label %128

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !537
  %70 = add i32 %69, 600
  store i32 %70, ptr %68, align 4, !tbaa !537
  br label %128

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %73 = load i8, ptr %72, align 8
  %74 = or i8 %73, 1
  store i8 %74, ptr %72, align 8
  br label %128

75:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %76 = trunc i64 %18 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #29
  %77 = call i64 @strtoul(ptr noundef nonnull %59, ptr noundef nonnull %1, i32 noundef 10)
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %30, align 16, !tbaa !531
  %79 = shl i64 %77, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %80, i64 %26, i32 4
  store i32 %76, ptr %81, align 4, !tbaa !532
  %82 = load ptr, ptr %1, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #29
  br label %132, !llvm.loop !538

83:                                               ; preds = %58
  %84 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %85 = load i8, ptr %84, align 8
  %86 = or i8 %85, 2
  store i8 %86, ptr %84, align 8
  br label %128

87:                                               ; preds = %58
  %88 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %89 = load i8, ptr %88, align 8
  %90 = or i8 %89, 16
  store i8 %90, ptr %88, align 8
  br label %128

91:                                               ; preds = %58
  %92 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %93 = load i8, ptr %92, align 8
  %94 = or i8 %93, 32
  store i8 %94, ptr %92, align 8
  br label %128

95:                                               ; preds = %58
  %96 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %97 = load i8, ptr %96, align 8
  %98 = or i8 %97, 8
  store i8 %98, ptr %96, align 8
  br label %128

99:                                               ; preds = %58
  %100 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %101 = load i8, ptr %100, align 8
  %102 = or i8 %101, 4
  store i8 %102, ptr %100, align 8
  br label %128

103:                                              ; preds = %58
  %104 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %105 = load i8, ptr %104, align 8
  %106 = or i8 %105, -128
  store i8 %106, ptr %104, align 8
  br label %128

107:                                              ; preds = %58
  %108 = getelementptr inbounds %struct.operand_alternative, ptr %19, i64 %26, i32 5
  %109 = load i8, ptr %108, align 8
  %110 = or i8 %109, 64
  store i8 %110, ptr %108, align 8
  %111 = load i32, ptr %29, align 8, !tbaa !528
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %112, i64 13
  %114 = load i32, ptr %113, align 4, !tbaa !163
  store i32 %114, ptr %29, align 8, !tbaa !528
  br label %128

115:                                              ; preds = %58, %58
  %116 = load i32, ptr %29, align 8, !tbaa !528
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %117, i64 13
  %119 = load i32, ptr %118, align 4, !tbaa !163
  store i32 %119, ptr %29, align 8, !tbaa !528
  br label %128

120:                                              ; preds = %58
  %121 = load i32, ptr %29, align 8, !tbaa !528
  %122 = sext i32 %121 to i64
  %123 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #29
  %124 = tail call i32 @regclass_for_constraint(i32 noundef %123) #29
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %122, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !163
  store i32 %127, ptr %29, align 8, !tbaa !528
  br label %128

128:                                              ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %120, %115, %107, %103, %99, %95, %91, %87, %83, %71, %67, %63
  %129 = icmp eq i8 %60, 89
  %130 = select i1 %129, i64 2, i64 1, !prof !539
  %131 = getelementptr inbounds i8, ptr %59, i64 %130
  br label %132

132:                                              ; preds = %128, %75, %61
  %133 = phi ptr [ %62, %61 ], [ %131, %128 ], [ %82, %75 ]
  %134 = phi i1 [ true, %61 ], [ false, %128 ], [ false, %75 ]
  br i1 %134, label %135, label %50, !prof !540

135:                                              ; preds = %132, %46, %40
  %136 = phi ptr [ %27, %46 ], [ %43, %40 ], [ %133, %132 ]
  %137 = add nuw nsw i64 %26, 1
  %138 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !185
  %139 = sext i8 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %25, label %141, !prof !541, !llvm.loop !542

141:                                              ; preds = %135, %17
  %142 = add nuw nsw i64 %18, 1
  %143 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !183
  %144 = sext i8 %143 to i64
  %145 = icmp slt i64 %142, %144
  br i1 %145, label %17, label %146, !prof !543, !llvm.loop !544

146:                                              ; preds = %141, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @reg_fits_class_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 !prof !545 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = icmp ne i32 %1, 0
  %8 = icmp slt i32 %6, 53
  %9 = select i1 %7, i1 %8, i1 false, !prof !546
  br i1 %9, label %10, label %34, !prof !547

10:                                               ; preds = %4
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !237
  %14 = add nsw i32 %6, %2
  %15 = zext nneg i32 %14 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %13, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %34, label %19, !prof !548

19:                                               ; preds = %10
  %20 = sext i32 %3 to i64
  %21 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !159
  %23 = zext i8 %22 to i32
  %24 = add i32 %14, %23
  br label %25

25:                                               ; preds = %29, %19
  %26 = phi i32 [ %14, %19 ], [ %27, %29 ]
  %27 = add i32 %26, 1
  %28 = icmp ult i32 %27, %24
  br i1 %28, label %29, label %34, !prof !549

29:                                               ; preds = %25
  %30 = zext nneg i32 %27 to i64
  %31 = shl nuw i64 1, %30
  %32 = and i64 %31, %13
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %25, !llvm.loop !240

34:                                               ; preds = %25, %29, %10, %4
  %35 = phi i32 [ 0, %4 ], [ 0, %10 ], [ 1, %25 ], [ 0, %29 ]
  ret i32 %35
}

declare i32 @safe_from_earlyclobber(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @split_all_insns() local_unnamed_addr #13 !prof !167 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !550
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !552
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #29
  tail call void @sbitmap_zero(ptr noundef %6) #29
  %7 = load ptr, ptr @cfun, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !550
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !554
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !555
  %14 = load ptr, ptr @cfun, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !550
  %17 = load ptr, ptr %16, align 8, !tbaa !557
  %18 = icmp eq ptr %13, %17
  br i1 %18, label %185, label %27, !prof !558

19:                                               ; preds = %180
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !555
  %22 = load ptr, ptr @cfun, align 8, !tbaa !148
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !550
  %25 = load ptr, ptr %24, align 8, !tbaa !557
  %26 = icmp eq ptr %21, %25
  br i1 %26, label %182, label %27, !prof !559, !llvm.loop !560

27:                                               ; preds = %0, %19
  %28 = phi ptr [ %21, %19 ], [ %13, %0 ]
  %29 = phi i8 [ %181, %19 ], [ 0, %0 ]
  tail call void @rtl_profile_for_bb(ptr noundef %28) #29
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = load ptr, ptr %31, align 8, !tbaa !561
  br label %33

33:                                               ; preds = %27, %180
  %34 = phi i8 [ %29, %27 ], [ %181, %180 ]
  %35 = phi ptr [ %32, %27 ], [ %37, %180 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = load ptr, ptr %30, align 8, !tbaa !159
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !563
  %41 = icmp eq ptr %35, %40
  %42 = load i32, ptr %35, align 8
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -7
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %180, !prof !564

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 23
  br i1 %51, label %54, label %52, !prof !565

52:                                               ; preds = %46
  %53 = tail call ptr @single_set_2(ptr noundef nonnull %35, ptr noundef nonnull %48) #29
  br label %54

54:                                               ; preds = %46, %52
  %55 = phi ptr [ %53, %52 ], [ %48, %46 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57, !prof !566

57:                                               ; preds = %54
  %58 = tail call i32 @set_noop_p(ptr noundef nonnull %55) #29
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60, !prof !567

60:                                               ; preds = %57
  %61 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %180, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %35) #29
  br label %180

65:                                               ; preds = %57, %54
  %66 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !159
  %68 = load ptr, ptr %47, align 8, !tbaa !159
  %69 = tail call ptr @try_split(ptr noundef %68, ptr noundef nonnull %35, i32 noundef 1) #29
  %70 = icmp eq ptr %69, %35
  br i1 %70, label %149, label %71, !prof !568

71:                                               ; preds = %65
  %72 = load i32, ptr %35, align 8
  %73 = and i32 %72, 65535
  %74 = add nsw i32 %73, -7
  %75 = icmp ult i32 %74, 4
  br i1 %75, label %76, label %83, !prof !569

76:                                               ; preds = %71
  %77 = load ptr, ptr %47, align 8, !tbaa !159
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 23
  br i1 %80, label %83, label %81, !prof !570

81:                                               ; preds = %76
  %82 = tail call ptr @single_set_2(ptr noundef nonnull %35, ptr noundef nonnull %77) #29
  br label %83

83:                                               ; preds = %81, %76, %71
  %84 = phi ptr [ %82, %81 ], [ null, %71 ], [ %77, %76 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %133, label %86, !prof !571

86:                                               ; preds = %83
  %87 = load i32, ptr %69, align 8
  %88 = and i32 %87, 65535
  %89 = add nsw i32 %88, -7
  %90 = icmp ult i32 %89, 4
  br i1 %90, label %91, label %99, !prof !569

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 23
  br i1 %96, label %99, label %97, !prof !572

97:                                               ; preds = %91
  %98 = tail call ptr @single_set_2(ptr noundef nonnull %69, ptr noundef nonnull %93) #29
  br label %99

99:                                               ; preds = %97, %91, %86
  %100 = phi ptr [ %98, %97 ], [ null, %86 ], [ %93, %91 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %133, label %102, !prof !571

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !159
  %107 = tail call i32 @rtx_equal_p(ptr noundef %104, ptr noundef %106) #29
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %133, label %109, !prof !573

109:                                              ; preds = %102
  %110 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %35) #29
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112, !prof !574

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !159
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !163
  %120 = icmp eq i32 %119, 9
  br i1 %120, label %130, label %121

121:                                              ; preds = %112, %109
  %122 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !159
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !163
  %129 = icmp eq i32 %128, 9
  br i1 %129, label %130, label %133, !prof !575

130:                                              ; preds = %121, %112
  %131 = phi ptr [ %114, %112 ], [ %123, %121 ]
  %132 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %69, i32 noundef 4, ptr noundef nonnull %131) #29
  br label %133

133:                                              ; preds = %130, %121, %102, %99, %83
  tail call void @set_insn_deleted(ptr noundef nonnull %35) #29
  %134 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %135 = icmp eq i32 %134, 0
  %136 = icmp eq ptr %67, %69
  %137 = select i1 %135, i1 true, i1 %136, !prof !576
  br i1 %137, label %149, label %138, !prof !576

138:                                              ; preds = %133, %147
  %139 = phi ptr [ %141, %147 ], [ %67, %133 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !159
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 65535
  %144 = add nsw i32 %143, -7
  %145 = icmp ult i32 %144, 4
  br i1 %145, label %146, label %147, !prof !577

146:                                              ; preds = %138
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %141) #29
  br label %147

147:                                              ; preds = %146, %138
  %148 = icmp eq ptr %141, %69
  br i1 %148, label %149, label %138, !prof !578, !llvm.loop !579

149:                                              ; preds = %147, %65, %133
  %150 = phi ptr [ null, %65 ], [ %69, %133 ], [ %69, %147 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %180, label %152, !prof !568

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !580
  %155 = load ptr, ptr %6, align 8, !tbaa !581
  %156 = icmp eq ptr %155, null
  br i1 %156, label %171, label %157, !prof !569

157:                                              ; preds = %152
  %158 = lshr i32 %154, 6
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %159
  %161 = load i64, ptr %160, align 8, !tbaa !237
  %162 = and i32 %154, 63
  %163 = zext nneg i32 %162 to i64
  %164 = shl nuw i64 1, %163
  %165 = and i64 %161, %164
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = getelementptr inbounds i8, ptr %155, i64 %159
  %169 = load i8, ptr %168, align 1, !tbaa !159
  %170 = add i8 %169, 1
  store i8 %170, ptr %168, align 1, !tbaa !159
  br label %171

171:                                              ; preds = %152, %157, %167
  %172 = and i32 %154, 63
  %173 = zext nneg i32 %172 to i64
  %174 = shl nuw i64 1, %173
  %175 = lshr i32 %154, 6
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds %struct.simple_bitmap_def, ptr %6, i64 0, i32 3, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !237
  %179 = or i64 %178, %174
  store i64 %179, ptr %177, align 8, !tbaa !237
  br label %180

180:                                              ; preds = %33, %63, %60, %171, %149
  %181 = phi i8 [ %34, %33 ], [ %34, %63 ], [ %34, %60 ], [ 1, %171 ], [ %34, %149 ]
  br i1 %41, label %19, label %33, !prof !583, !llvm.loop !584

182:                                              ; preds = %19
  %183 = icmp eq i8 %181, 0
  tail call void @default_rtl_profile() #29
  br i1 %183, label %186, label %184, !prof !585

184:                                              ; preds = %182
  tail call void @find_many_sub_basic_blocks(ptr noundef %6) #29
  br label %186

185:                                              ; preds = %0
  tail call void @default_rtl_profile() #29
  br label %186

186:                                              ; preds = %185, %184, %182
  %187 = load ptr, ptr %6, align 8, !tbaa !581
  tail call void @free(ptr noundef %187)
  tail call void @free(ptr noundef %6)
  ret void
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @split_insn(ptr noundef %0) unnamed_addr #10 !prof !586 !PGOFuncName !587 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = tail call ptr @try_split(ptr noundef %5, ptr noundef %0, i32 noundef 1) #29
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %86, label %8, !prof !568

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %20, !prof !569

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !tbaa !159
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %20, label %18, !prof !570

18:                                               ; preds = %13
  %19 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %14) #29
  br label %20

20:                                               ; preds = %8, %13, %18
  %21 = phi ptr [ %19, %18 ], [ null, %8 ], [ %14, %13 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %70, label %23, !prof !571

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %36, !prof !569

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 23
  br i1 %33, label %36, label %34, !prof !572

34:                                               ; preds = %28
  %35 = tail call ptr @single_set_2(ptr noundef nonnull %6, ptr noundef nonnull %30) #29
  br label %36

36:                                               ; preds = %23, %28, %34
  %37 = phi ptr [ %35, %34 ], [ null, %23 ], [ %30, %28 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %70, label %39, !prof !571

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = tail call i32 @rtx_equal_p(ptr noundef %41, ptr noundef %43) #29
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46, !prof !573

46:                                               ; preds = %39
  %47 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49, !prof !574

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !163
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %67, label %58

58:                                               ; preds = %49, %46
  %59 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !159
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !163
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %70, !prof !575

67:                                               ; preds = %58, %49
  %68 = phi ptr [ %51, %49 ], [ %60, %58 ]
  %69 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef nonnull %68) #29
  br label %70

70:                                               ; preds = %67, %36, %39, %58, %20
  tail call void @set_insn_deleted(ptr noundef nonnull %0) #29
  %71 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %72 = icmp eq i32 %71, 0
  %73 = icmp eq ptr %3, %6
  %74 = select i1 %72, i1 true, i1 %73, !prof !576
  br i1 %74, label %86, label %75, !prof !576

75:                                               ; preds = %70, %84
  %76 = phi ptr [ %78, %84 ], [ %3, %70 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !159
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -7
  %82 = icmp ult i32 %81, 4
  br i1 %82, label %83, label %84, !prof !577

83:                                               ; preds = %75
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %78) #29
  br label %84

84:                                               ; preds = %75, %83
  %85 = icmp eq ptr %78, %6
  br i1 %85, label %86, label %75, !prof !578, !llvm.loop !579

86:                                               ; preds = %84, %70, %1
  ret void
}

declare void @default_rtl_profile() local_unnamed_addr #3

declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @split_all_insns_noflow() #12 !prof !147 {
  %1 = tail call ptr @get_insns() #29
  %2 = icmp eq ptr %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0, %31
  %4 = phi ptr [ %6, %31 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %13) #29
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @set_noop_p(ptr noundef nonnull %20) #29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %4) #29
  br label %31

30:                                               ; preds = %22, %19
  tail call fastcc void @split_insn(ptr noundef nonnull %4)
  br label %31

31:                                               ; preds = %3, %30, %28, %25
  %32 = icmp eq ptr %6, null
  br i1 %32, label %33, label %3, !llvm.loop !588

33:                                               ; preds = %31, %0
  ret i32 0
}

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @peep2_next_insn(i32 noundef %0) local_unnamed_addr #10 !prof !589 {
  %2 = load i32, ptr @peep2_current_count, align 4, !tbaa !163
  %3 = icmp slt i32 %2, %0
  br i1 %3, label %4, label %5, !prof !590

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2927, ptr noundef nonnull @.str.1) #29
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7, !prof !591
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !592
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @peep2_regno_dead_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !594 {
  %3 = icmp slt i32 %0, 5
  br i1 %3, label %5, label %4, !prof !595

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2942, ptr noundef nonnull @.str.1) #29
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7, !prof !596
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !592
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !596

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2948, ptr noundef nonnull @.str.1) #29
  br label %16

16:                                               ; preds = %5, %15
  %17 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !597
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %1) #29
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @peep2_reg_dead_p(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 !prof !598 {
  %3 = icmp slt i32 %0, 5
  br i1 %3, label %5, label %4, !prof !599

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2960, ptr noundef nonnull @.str.1) #29
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7, !prof !600
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !592
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !601

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2966, ptr noundef nonnull @.str.1) #29
  br label %16

16:                                               ; preds = %5, %15
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !159
  %19 = sext i32 %18 to i64
  %20 = load i32, ptr %1, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %19, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !159
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11, i32 1
  br label %28

28:                                               ; preds = %31, %16
  %29 = phi i32 [ %26, %16 ], [ %32, %31 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37, !prof !602

31:                                               ; preds = %28
  %32 = add nsw i32 %29, -1
  %33 = load ptr, ptr %27, align 8, !tbaa !597
  %34 = add nsw i32 %32, %18
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %34) #29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %28, label %37, !prof !603, !llvm.loop !604

37:                                               ; preds = %31, %28
  %38 = phi i32 [ 1, %28 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local ptr @peep2_find_free_register(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #13 !prof !605 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %8 = icmp slt i32 %0, 5
  br i1 %8, label %10, label %9, !prof !606

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2996, ptr noundef nonnull @.str.1) #29
  br label %10

10:                                               ; preds = %5, %9
  %11 = icmp slt i32 %1, 5
  br i1 %11, label %13, label %12, !prof !606

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2997, ptr noundef nonnull @.str.1) #29
  br label %13

13:                                               ; preds = %10, %12
  %14 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %15 = add nsw i32 %14, %0
  %16 = icmp sgt i32 %15, 4
  %17 = add nsw i32 %15, -5
  %18 = select i1 %16, i32 %17, i32 %15, !prof !607
  %19 = add nsw i32 %14, %1
  %20 = icmp sgt i32 %19, 4
  %21 = add nsw i32 %19, -5
  %22 = select i1 %20, i32 %21, i32 %19, !prof !607
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 16, !tbaa !592
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !607

27:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3006, ptr noundef nonnull @.str.1) #29
  br label %28

28:                                               ; preds = %13, %27
  store i64 0, ptr %6, align 8, !tbaa !237
  %29 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %23, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !597
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %6, ptr noundef %30) #29
  %31 = icmp eq i32 %18, %22
  br i1 %31, label %49, label %32, !prof !343

32:                                               ; preds = %28, %42
  %33 = phi i32 [ %36, %42 ], [ %18, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %34 = add nsw i32 %33, 1
  %35 = icmp sgt i32 %33, 3
  %36 = select i1 %35, i32 0, i32 %34
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 16, !tbaa !592
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #29
  br label %42

42:                                               ; preds = %32, %41
  store i64 0, ptr %7, align 8, !tbaa !237
  %43 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %37, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !597
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %44) #29
  %45 = load i64, ptr %7, align 8, !tbaa !237
  %46 = load i64, ptr %6, align 8, !tbaa !237
  %47 = or i64 %46, %45
  store i64 %47, ptr %6, align 8, !tbaa !237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  %48 = icmp eq i32 %36, %22
  br i1 %48, label %49, label %32, !prof !343, !llvm.loop !608

49:                                               ; preds = %42, %28
  %50 = load i8, ptr %2, align 1, !tbaa !159
  %51 = icmp eq i8 %50, 114
  br i1 %51, label %56, label %52, !prof !606

52:                                               ; preds = %49
  %53 = call i32 @lookup_constraint(ptr noundef nonnull %2) #29
  %54 = call i32 @regclass_for_constraint(i32 noundef %53) #29
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi i64 [ %55, %52 ], [ 13, %49 ]
  %58 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %57
  %59 = zext i32 %3 to i64
  br label %60

60:                                               ; preds = %56, %148
  %61 = phi ptr [ undef, %56 ], [ %146, %148 ]
  %62 = phi i32 [ 0, %56 ], [ %149, %148 ]
  %63 = load i32, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !163
  %64 = add nsw i32 %63, %62
  %65 = icmp sgt i32 %64, 52
  %66 = add nsw i32 %64, -53
  %67 = select i1 %65, i32 %66, i32 %64, !prof !609
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !163
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !159
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %145, !prof !610

75:                                               ; preds = %60
  %76 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %71
  %77 = load i8, ptr %76, align 1, !tbaa !159
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %145, !prof !611

79:                                               ; preds = %75
  %80 = load i64, ptr %58, align 8, !tbaa !237
  %81 = zext nneg i32 %70 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %80, %82
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %145, label %85, !prof !612

85:                                               ; preds = %79
  %86 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %70, i32 noundef %3) #29
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %145, label %88, !prof !613

88:                                               ; preds = %85
  %89 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %71
  %90 = load i8, ptr %89, align 1, !tbaa !159
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %95, !prof !614

92:                                               ; preds = %88
  %93 = call zeroext i8 @df_regs_ever_live_p(i32 noundef %70) #29
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %145, label %95, !prof !615

95:                                               ; preds = %92, %88
  %96 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 100), align 8, !tbaa !616
  %97 = call zeroext i8 %96(i32 noundef %70) #29, !prof !617
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %145, label %99, !prof !618

99:                                               ; preds = %95
  switch i32 %70, label %106 [
    i32 20, label %100
    i32 6, label %100
  ], !prof !619

100:                                              ; preds = %99, %99
  %101 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %102 = icmp eq i32 %101, 0
  %103 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %104 = icmp ne i8 %103, 0
  %105 = select i1 %102, i1 true, i1 %104, !prof !620
  br i1 %105, label %145, label %106, !prof !621

106:                                              ; preds = %100, %99
  %107 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %71, i64 %59
  %108 = load i8, ptr %107, align 1, !tbaa !159
  %109 = zext i8 %108 to i64
  br label %110

110:                                              ; preds = %113, %106
  %111 = phi i64 [ %116, %113 ], [ %109, %106 ]
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %125, !prof !622

113:                                              ; preds = %110
  %114 = load i64, ptr %6, align 8
  %115 = sext i32 %70 to i64
  %116 = add nsw i64 %111, -1
  %117 = load i64, ptr %4, align 8, !tbaa !237
  %118 = add nsw i64 %116, %115
  %119 = shl nuw i64 1, %118
  %120 = and i64 %117, %119
  %121 = icmp eq i64 %120, 0
  %122 = and i64 %114, %119
  %123 = icmp eq i64 %122, 0
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %110, label %145, !prof !623, !llvm.loop !624

125:                                              ; preds = %110
  %126 = sext i32 %3 to i64
  %127 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %81, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !159
  %129 = zext i8 %128 to i32
  %130 = add i32 %70, %129
  %131 = load i64, ptr %4, align 8, !tbaa !237
  br label %132

132:                                              ; preds = %132, %125
  %133 = phi i64 [ %131, %125 ], [ %137, %132 ]
  %134 = phi i32 [ %70, %125 ], [ %138, %132 ]
  %135 = zext nneg i32 %134 to i64
  %136 = shl nuw i64 1, %135
  %137 = or i64 %136, %133
  %138 = add i32 %134, 1
  %139 = icmp ult i32 %138, %130
  br i1 %139, label %132, label %140, !prof !607, !llvm.loop !625

140:                                              ; preds = %132
  store i64 %137, ptr %4, align 8, !tbaa !237
  %141 = add nsw i32 %67, 1
  %142 = icmp sgt i32 %67, 51
  %143 = select i1 %142, i32 0, i32 %141, !prof !607
  store i32 %143, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !163
  %144 = call ptr @gen_rtx_REG(i32 noundef %3, i32 noundef %70) #29
  br label %145

145:                                              ; preds = %113, %92, %100, %95, %85, %79, %75, %60, %140
  %146 = phi ptr [ %144, %140 ], [ %61, %60 ], [ %61, %75 ], [ %61, %79 ], [ %61, %85 ], [ %61, %95 ], [ %61, %100 ], [ %61, %92 ], [ %61, %113 ]
  %147 = phi i32 [ 1, %140 ], [ 10, %60 ], [ 10, %75 ], [ 10, %79 ], [ 10, %85 ], [ 10, %95 ], [ 10, %100 ], [ 10, %92 ], [ 0, %113 ]
  switch i32 %147, label %152 [
    i32 0, label %148
    i32 10, label %148
  ], !prof !626

148:                                              ; preds = %145, %145
  %149 = add nuw nsw i32 %62, 1
  %150 = icmp eq i32 %149, 53
  br i1 %150, label %151, label %60, !prof !627, !llvm.loop !628

151:                                              ; preds = %148
  store i32 0, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !163
  br label %152

152:                                              ; preds = %145, %151
  %153 = phi ptr [ null, %151 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  ret ptr %153
}

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @store_data_bypass_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !147 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %9) #29
  br label %15

15:                                               ; preds = %2, %7, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ], [ %9, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %77, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 43
  br i1 %23, label %24, label %165

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %31) #29
  br label %37

37:                                               ; preds = %24, %29, %35
  %38 = phi ptr [ %36, %35 ], [ null, %24 ], [ %31, %29 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !159
  %43 = load ptr, ptr %19, align 8, !tbaa !159
  %44 = tail call i32 @reg_mentioned_p(ptr noundef %42, ptr noundef %43) #29
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %164, label %165

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 15
  br i1 %51, label %52, label %165

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = load i32, ptr %54, align 8, !tbaa !176
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %164

57:                                               ; preds = %52, %71
  %58 = phi i64 [ %72, %71 ], [ 0, %52 ]
  %59 = phi ptr [ %73, %71 ], [ %54, %52 ]
  %60 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !148
  %62 = load i32, ptr %61, align 8
  %63 = trunc i32 %62 to i16
  switch i16 %63, label %64 [
    i16 25, label %71
    i16 23, label %65
  ]

64:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3389, ptr noundef nonnull @.str.1) #29
  br label %65

65:                                               ; preds = %57, %64
  %66 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !159
  %68 = load ptr, ptr %19, align 8, !tbaa !159
  %69 = tail call i32 @reg_mentioned_p(ptr noundef %67, ptr noundef %68) #29
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %165

71:                                               ; preds = %57, %65
  %72 = add nuw nsw i64 %58, 1
  %73 = load ptr, ptr %53, align 8, !tbaa !159
  %74 = load i32, ptr %73, align 8, !tbaa !176
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %57, label %164, !llvm.loop !629

77:                                               ; preds = %15
  %78 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !159
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 15
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3399, ptr noundef nonnull @.str.1) #29
  br label %84

84:                                               ; preds = %77, %83
  %85 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = load i32, ptr %86, align 8, !tbaa !176
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %164

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %91 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  br label %92

92:                                               ; preds = %89, %158
  %93 = phi i64 [ 0, %89 ], [ %159, %158 ]
  %94 = phi ptr [ %86, %89 ], [ %160, %158 ]
  %95 = getelementptr inbounds %struct.rtvec_def, ptr %94, i64 0, i32 1, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !148
  %97 = load i32, ptr %96, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %99 [
    i16 25, label %158
    i16 23, label %100
  ]

99:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3408, ptr noundef nonnull @.str.1) #29
  br label %100

100:                                              ; preds = %92, %99
  %101 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !159
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 43
  br i1 %105, label %106, label %165

106:                                              ; preds = %100
  %107 = load i32, ptr %0, align 8
  %108 = and i32 %107, 65535
  %109 = add nsw i32 %108, -7
  %110 = icmp ult i32 %109, 4
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load ptr, ptr %90, align 8, !tbaa !159
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 23
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %112) #29
  br label %118

118:                                              ; preds = %106, %111, %116
  %119 = phi ptr [ %117, %116 ], [ null, %106 ], [ %112, %111 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !159
  %124 = load ptr, ptr %101, align 8, !tbaa !159
  %125 = tail call i32 @reg_mentioned_p(ptr noundef %123, ptr noundef %124) #29
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %158, label %165

127:                                              ; preds = %118
  %128 = load ptr, ptr %91, align 8, !tbaa !159
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 15
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3422, ptr noundef nonnull @.str.1) #29
  br label %133

133:                                              ; preds = %127, %132
  %134 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !159
  %136 = load i32, ptr %135, align 8, !tbaa !176
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %133, %152
  %139 = phi i64 [ %153, %152 ], [ 0, %133 ]
  %140 = phi ptr [ %154, %152 ], [ %135, %133 ]
  %141 = getelementptr inbounds %struct.rtvec_def, ptr %140, i64 0, i32 1, i64 %139
  %142 = load ptr, ptr %141, align 8, !tbaa !148
  %143 = load i32, ptr %142, align 8
  %144 = trunc i32 %143 to i16
  switch i16 %144, label %145 [
    i16 25, label %152
    i16 23, label %146
  ]

145:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3431, ptr noundef nonnull @.str.1) #29
  br label %146

146:                                              ; preds = %138, %145
  %147 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !159
  %149 = load ptr, ptr %101, align 8, !tbaa !159
  %150 = tail call i32 @reg_mentioned_p(ptr noundef %148, ptr noundef %149) #29
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %138, %146
  %153 = add nuw nsw i64 %139, 1
  %154 = load ptr, ptr %134, align 8, !tbaa !159
  %155 = load i32, ptr %154, align 8, !tbaa !176
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %138, label %158, !llvm.loop !630

158:                                              ; preds = %152, %133, %92, %121
  %159 = add nuw nsw i64 %93, 1
  %160 = load ptr, ptr %85, align 8, !tbaa !159
  %161 = load i32, ptr %160, align 8, !tbaa !176
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %92, label %164, !llvm.loop !631

164:                                              ; preds = %71, %158, %52, %84, %40
  br label %165

165:                                              ; preds = %65, %121, %100, %146, %46, %40, %18, %164
  %166 = phi i32 [ 1, %164 ], [ 0, %18 ], [ 0, %40 ], [ 0, %46 ], [ 0, %146 ], [ 0, %100 ], [ 0, %121 ], [ 0, %65 ]
  ret i32 %166
}

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @if_test_bypass_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !147 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %9) #29
  br label %15

15:                                               ; preds = %2, %7, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ], [ %9, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, ptr %1, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -9
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %105, label %23

23:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3456, ptr noundef nonnull @.str.1) #29
  br label %105

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !159
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %105

30:                                               ; preds = %24
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %37) #29
  br label %43

43:                                               ; preds = %30, %35, %41
  %44 = phi ptr [ %42, %41 ], [ null, %30 ], [ %37, %35 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !159
  %51 = tail call i32 @reg_mentioned_p(ptr noundef %48, ptr noundef %50) #29
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %46
  %54 = load ptr, ptr %47, align 8, !tbaa !159
  %55 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = tail call i32 @reg_mentioned_p(ptr noundef %54, ptr noundef %56) #29
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %104, label %105

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !159
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 15
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3477, ptr noundef nonnull @.str.1) #29
  br label %66

66:                                               ; preds = %59, %65
  %67 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !159
  %69 = load i32, ptr %68, align 8, !tbaa !176
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %74

74:                                               ; preds = %71, %95
  %75 = phi i64 [ 0, %71 ], [ %96, %95 ]
  %76 = phi ptr [ %68, %71 ], [ %97, %95 ]
  %77 = getelementptr inbounds %struct.rtvec_def, ptr %76, i64 0, i32 1, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !148
  %79 = load i32, ptr %78, align 8
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %81 [
    i16 25, label %93
    i16 23, label %82
  ]

81:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3486, ptr noundef nonnull @.str.1) #29
  br label %82

82:                                               ; preds = %74, %81
  %83 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !159
  %84 = load ptr, ptr %72, align 8, !tbaa !159
  %85 = tail call i32 @reg_mentioned_p(ptr noundef %83, ptr noundef %84) #29
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !159
  %89 = load ptr, ptr %73, align 8, !tbaa !159
  %90 = tail call i32 @reg_mentioned_p(ptr noundef %88, ptr noundef %89) #29
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %87, %82, %74
  %94 = phi i32 [ 4, %74 ], [ 1, %82 ], [ %92, %87 ]
  switch i32 %94, label %101 [
    i32 0, label %95
    i32 4, label %95
  ]

95:                                               ; preds = %93, %93
  %96 = add nuw nsw i64 %75, 1
  %97 = load ptr, ptr %67, align 8, !tbaa !159
  %98 = load i32, ptr %97, align 8, !tbaa !176
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %74, label %101, !llvm.loop !632

101:                                              ; preds = %95, %93
  %102 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %66, %53, %101
  br label %105

105:                                              ; preds = %18, %46, %53, %24, %23, %101, %104
  %106 = phi i32 [ 1, %104 ], [ 0, %101 ], [ 0, %18 ], [ 0, %23 ], [ 0, %24 ], [ 0, %53 ], [ 0, %46 ]
  ret i32 %106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_peephole2() #14 !prof !633 !PGOFuncName !634 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_peephole2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !635
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_peephole2() #13 !prof !633 !PGOFuncName !636 {
  %1 = alloca i32, align 4
  %2 = tail call i32 @df_set_flags(i32 noundef 1) #29
  tail call void @df_analyze() #29
  br label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ 0, %0 ], [ %7, %3 ]
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #29
  %6 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %4, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !597
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 5
  br i1 %8, label %9, label %3, !prof !637, !llvm.loop !638

9:                                                ; preds = %3
  %10 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #29
  %11 = load ptr, ptr @cfun, align 8, !tbaa !148
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !550
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !554
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !555
  %18 = load ptr, ptr @cfun, align 8, !tbaa !148
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !550
  %21 = load ptr, ptr %20, align 8, !tbaa !557
  %22 = icmp eq ptr %17, %21
  br i1 %22, label %372, label %23, !prof !639

23:                                               ; preds = %9, %362
  %24 = phi ptr [ %364, %362 ], [ %17, %9 ]
  %25 = phi i8 [ %356, %362 ], [ 0, %9 ]
  call void @rtl_profile_for_bb(ptr noundef %24) #29
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !580
  %28 = load ptr, ptr @df, align 8, !tbaa !148
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !148
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !640
  %33 = icmp ugt i32 %32, %27
  call void @llvm.assume(i1 %33)
  %34 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !642
  %36 = zext i32 %27 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !148
  %39 = getelementptr inbounds %struct.df_lr_bb_info, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !643
  call void @bitmap_copy(ptr noundef %10, ptr noundef %40) #29
  call void @df_simulate_initialize_backwards(ptr noundef %24, ptr noundef %10) #29
  br label %41

41:                                               ; preds = %23, %41
  %42 = phi i64 [ 0, %23 ], [ %44, %41 ]
  %43 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %42
  store ptr null, ptr %43, align 16, !tbaa !592
  %44 = add nuw nsw i64 %42, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %41, !prof !645, !llvm.loop !646

46:                                               ; preds = %41
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !163
  %47 = load ptr, ptr @global_rtl, align 16, !tbaa !148
  store ptr %47, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4), align 16, !tbaa !592
  store i32 4, ptr @peep2_current, align 4, !tbaa !163
  %48 = load ptr, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4, i32 1), align 8, !tbaa !597
  call void @bitmap_copy(ptr noundef %48, ptr noundef %10) #29
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !159
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !563
  br label %53

53:                                               ; preds = %355, %46
  %54 = phi i8 [ %25, %46 ], [ %356, %355 ]
  %55 = phi ptr [ %24, %46 ], [ %357, %355 ]
  %56 = phi ptr [ %52, %46 ], [ %58, %355 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !159
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -11
  %62 = icmp ult i32 %61, -3
  br i1 %62, label %355, label %63, !prof !647

63:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #29
  %64 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %65 = add nsw i32 %64, -1
  %66 = icmp slt i32 %64, 1
  %67 = select i1 %66, i32 4, i32 %65, !prof !648
  store i32 %67, ptr @peep2_current, align 4
  %68 = load i32, ptr @peep2_current_count, align 4, !tbaa !163
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %77, !prof !649

70:                                               ; preds = %63
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 16, !tbaa !592
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77, !prof !650

75:                                               ; preds = %70
  %76 = add nsw i32 %68, 1
  store i32 %76, ptr @peep2_current_count, align 4, !tbaa !163
  br label %77

77:                                               ; preds = %75, %70, %63
  %78 = sext i32 %67 to i64
  %79 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %78
  store ptr %56, ptr %79, align 16, !tbaa !592
  call void @df_simulate_one_insn_backwards(ptr noundef %55, ptr noundef nonnull %56, ptr noundef %10) #29
  %80 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %81, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !597
  call void @bitmap_copy(ptr noundef %83, ptr noundef %10) #29
  %84 = load i32, ptr %56, align 8
  %85 = and i32 %84, 1073741824
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87, !prof !651

87:                                               ; preds = %77, %87
  %88 = phi i64 [ %90, %87 ], [ 0, %77 ]
  %89 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %88
  store ptr null, ptr %89, align 16, !tbaa !592
  %90 = add nuw nsw i64 %88, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %87, !prof !652, !llvm.loop !646

92:                                               ; preds = %87
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !163
  %93 = load ptr, ptr @global_rtl, align 16, !tbaa !148
  store ptr %93, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4), align 16, !tbaa !592
  store i32 4, ptr @peep2_current, align 4, !tbaa !163
  %94 = load ptr, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4, i32 1), align 8, !tbaa !597
  call void @bitmap_copy(ptr noundef %94, ptr noundef %10) #29
  br label %99

95:                                               ; preds = %77
  %96 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !159
  %98 = call ptr @peephole2_insns(ptr noundef %97, ptr noundef nonnull %56, ptr noundef nonnull %1) #29
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi ptr [ null, %92 ], [ %98, %95 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %352, label %102, !prof !653

102:                                              ; preds = %99
  %103 = load i32, ptr %1, align 4, !tbaa !163
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %179, label %105, !prof !654

105:                                              ; preds = %102, %172
  %106 = phi i32 [ %175, %172 ], [ 0, %102 ]
  %107 = phi i8 [ %173, %172 ], [ 0, %102 ]
  %108 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %109 = add nsw i32 %108, %106
  %110 = icmp sgt i32 %109, 4
  %111 = add nsw i32 %109, -5
  %112 = select i1 %110, i32 %111, i32 %109, !prof !655
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 16, !tbaa !592
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %172, !prof !656

119:                                              ; preds = %105, %124
  %120 = phi ptr [ %126, %124 ], [ %100, %105 ]
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 10
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !159
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %119, !llvm.loop !657

128:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3194, ptr noundef nonnull @.str.1) #29
  br label %129

129:                                              ; preds = %119, %128
  %130 = phi ptr [ %126, %128 ], [ %120, %119 ]
  %131 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 1, i32 1, i32 0, i32 0, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !159
  %133 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %132, ptr %133, align 8, !tbaa !159
  %134 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 1, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !159
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %150, %129
  %138 = add nsw i32 %106, 1
  %139 = load i32, ptr %1, align 4, !tbaa !163
  %140 = icmp slt i32 %106, %139
  br i1 %140, label %154, label %172

141:                                              ; preds = %129, %150
  %142 = phi ptr [ %152, %150 ], [ %135, %129 ]
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 16
  %145 = trunc i32 %144 to i8
  switch i8 %145, label %150 [
    i8 27, label %146
    i8 30, label %146
  ]

146:                                              ; preds = %141, %141
  %147 = and i32 %144, 255
  %148 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !159
  call void @add_reg_note(ptr noundef %130, i32 noundef %147, ptr noundef %149) #29
  br label %150

150:                                              ; preds = %146, %141
  %151 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !159
  %153 = icmp eq ptr %152, null
  br i1 %153, label %137, label %141, !llvm.loop !658

154:                                              ; preds = %137, %168
  %155 = phi i32 [ %169, %168 ], [ %138, %137 ]
  %156 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %157 = add nsw i32 %156, %155
  %158 = icmp sgt i32 %157, 4
  %159 = add nsw i32 %157, -5
  %160 = select i1 %158, i32 %159, i32 %157
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 16, !tbaa !592
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 10
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3221, ptr noundef nonnull @.str.1) #29
  br label %168

168:                                              ; preds = %167, %154
  %169 = add nsw i32 %155, 1
  %170 = load i32, ptr %1, align 4, !tbaa !163
  %171 = icmp slt i32 %155, %170
  br i1 %171, label %154, label %172, !llvm.loop !659

172:                                              ; preds = %168, %137, %105
  %173 = phi i8 [ %107, %105 ], [ 1, %137 ], [ 1, %168 ]
  %174 = phi i32 [ %106, %105 ], [ %138, %137 ], [ %169, %168 ]
  %175 = add nsw i32 %174, 1
  %176 = load i32, ptr %1, align 4
  %177 = icmp sge i32 %174, %176
  %178 = select i1 %118, i1 true, i1 %177
  br i1 %178, label %179, label %105, !prof !660, !llvm.loop !661

179:                                              ; preds = %172, %102
  %180 = phi i8 [ 0, %102 ], [ %173, %172 ]
  %181 = load i32, ptr %1, align 4, !tbaa !163
  %182 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %183 = add nsw i32 %182, %181
  %184 = icmp sgt i32 %183, 4
  %185 = add nsw i32 %183, -5
  %186 = select i1 %184, i32 %185, i32 %183, !prof !662
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %187
  %189 = load ptr, ptr %188, align 16, !tbaa !592
  %190 = call ptr @find_reg_note(ptr noundef %189, i32 noundef 25, ptr noundef null) #29
  %191 = load ptr, ptr %188, align 16, !tbaa !592
  %192 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 2
  %193 = load i32, ptr %192, align 8, !tbaa !159
  %194 = call ptr @emit_insn_after_setloc(ptr noundef nonnull %100, ptr noundef %191, i32 noundef %193) #29
  %195 = load ptr, ptr %57, align 8, !tbaa !159
  %196 = load ptr, ptr %188, align 16, !tbaa !592
  call void @delete_insn_chain(ptr noundef nonnull %56, ptr noundef %196, i8 noundef zeroext 0) #29
  %197 = icmp eq ptr %190, null
  br i1 %197, label %198, label %203, !prof !663

198:                                              ; preds = %179
  %199 = icmp ne i8 %180, 0
  %200 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %201 = icmp ne ptr %200, null
  %202 = select i1 %199, i1 %201, i1 false, !prof !664
  br i1 %202, label %203, label %287, !prof !664

203:                                              ; preds = %198, %179
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 1
  br label %205

205:                                              ; preds = %232, %203
  %206 = phi i32 [ 0, %203 ], [ %233, %232 ]
  %207 = load ptr, ptr %204, align 8, !tbaa !148
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = load i32, ptr %207, align 8, !tbaa !665
  br label %211

211:                                              ; preds = %209, %205
  %212 = phi i32 [ %210, %209 ], [ 0, %205 ]
  %213 = icmp eq i32 %212, %206
  br i1 %213, label %218, label %214

214:                                              ; preds = %211
  %215 = zext i32 %206 to i64
  %216 = getelementptr inbounds %struct.VEC_edge_base, ptr %207, i64 0, i32 2, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !148
  br label %218

218:                                              ; preds = %214, %211
  %219 = phi ptr [ %217, %214 ], [ null, %211 ]
  br i1 %213, label %234, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.edge_def, ptr %219, i64 0, i32 7
  %222 = load i32, ptr %221, align 8, !tbaa !667
  %223 = and i32 %222, 12
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  br i1 %208, label %228, label %226

226:                                              ; preds = %225
  %227 = load i32, ptr %207, align 8, !tbaa !665
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi i32 [ %227, %226 ], [ 0, %225 ]
  %230 = icmp ult i32 %206, %229
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #29
  br label %232

232:                                              ; preds = %231, %228
  %233 = add i32 %206, 1
  br label %205, !llvm.loop !669

234:                                              ; preds = %220, %218
  br i1 %197, label %236, label %235

235:                                              ; preds = %234
  call void @copy_reg_eh_region_note_backward(ptr noundef nonnull %190, ptr noundef %194, ptr noundef %195) #29
  br label %236

236:                                              ; preds = %235, %234
  %237 = icmp eq ptr %219, null
  %238 = icmp eq ptr %194, %195
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %284, label %240

240:                                              ; preds = %236, %278
  %241 = phi ptr [ %280, %278 ], [ %55, %236 ]
  %242 = phi ptr [ %282, %278 ], [ %194, %236 ]
  %243 = phi ptr [ %279, %278 ], [ %219, %236 ]
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %241, i64 0, i32 7
  %245 = load ptr, ptr %244, align 8, !tbaa !159
  %246 = getelementptr inbounds %struct.rtl_bb_info, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !563
  %248 = icmp eq ptr %242, %247
  br i1 %248, label %278, label %249

249:                                              ; preds = %240
  %250 = call zeroext i8 @can_throw_internal(ptr noundef %242) #29
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = call zeroext i8 @can_nonlocal_goto(ptr noundef %242) #29
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %278, label %255

255:                                              ; preds = %252, %249
  %256 = call ptr @split_block(ptr noundef %241, ptr noundef %242) #29
  %257 = getelementptr inbounds %struct.edge_def, ptr %243, i64 0, i32 7
  %258 = load i32, ptr %257, align 8, !tbaa !667
  %259 = and i32 %258, 10
  %260 = load i32, ptr %242, align 8
  %261 = and i32 %260, 65535
  %262 = icmp eq i32 %261, 10
  %263 = or disjoint i32 %259, 4
  %264 = select i1 %262, i32 %263, i32 %259
  %265 = load ptr, ptr %256, align 8, !tbaa !670
  %266 = getelementptr inbounds %struct.edge_def, ptr %243, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !671
  %268 = call ptr @make_edge(ptr noundef %265, ptr noundef %267, i32 noundef %264) #29
  %269 = getelementptr inbounds %struct.edge_def, ptr %243, i64 0, i32 8
  %270 = load i32, ptr %269, align 4, !tbaa !672
  %271 = getelementptr inbounds %struct.edge_def, ptr %268, i64 0, i32 8
  store i32 %270, ptr %271, align 4, !tbaa !672
  %272 = sub nsw i32 10000, %270
  %273 = getelementptr inbounds %struct.edge_def, ptr %256, i64 0, i32 8
  store i32 %272, ptr %273, align 4, !tbaa !672
  %274 = getelementptr inbounds %struct.edge_def, ptr %256, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !671
  %276 = call zeroext i8 @purge_dead_edges(ptr noundef %275) #29
  %277 = load ptr, ptr %256, align 8, !tbaa !670
  br label %278

278:                                              ; preds = %255, %252, %240
  %279 = phi ptr [ %243, %240 ], [ %243, %252 ], [ %268, %255 ]
  %280 = phi ptr [ %241, %240 ], [ %241, %252 ], [ %277, %255 ]
  %281 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1, i32 0, i32 0, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !159
  %283 = icmp eq ptr %282, %195
  br i1 %283, label %284, label %240, !llvm.loop !673

284:                                              ; preds = %278, %236
  %285 = phi ptr [ %55, %236 ], [ %280, %278 ]
  %286 = call zeroext i8 @purge_dead_edges(ptr noundef %285) #29
  br label %287

287:                                              ; preds = %284, %198
  %288 = phi ptr [ %285, %284 ], [ %55, %198 ]
  %289 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !674
  %290 = call zeroext i8 %289() #29, !prof !675
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %302, label %292, !prof !663

292:                                              ; preds = %287, %292
  %293 = phi i64 [ %295, %292 ], [ 0, %287 ]
  %294 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %293
  store ptr null, ptr %294, align 16, !tbaa !592
  %295 = add nuw nsw i64 %293, 1
  %296 = icmp eq i64 %295, 5
  br i1 %296, label %297, label %292, !llvm.loop !676

297:                                              ; preds = %292
  %298 = load ptr, ptr @global_rtl, align 16, !tbaa !148
  %299 = load i32, ptr @peep2_current, align 4, !tbaa !163
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %300
  store ptr %298, ptr %301, align 16, !tbaa !592
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !163
  br label %341

302:                                              ; preds = %287
  %303 = add nsw i32 %186, 1
  %304 = icmp sgt i32 %186, 3
  %305 = select i1 %304, i32 0, i32 %303, !prof !677
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %306, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !597
  call void @bitmap_copy(ptr noundef %10, ptr noundef %308) #29
  br label %309

309:                                              ; preds = %335, %302
  %310 = phi ptr [ %194, %302 ], [ %338, %335 ]
  %311 = phi i32 [ %305, %302 ], [ %336, %335 ]
  %312 = load i32, ptr %310, align 8
  %313 = and i32 %312, 65535
  %314 = add nsw i32 %313, -7
  %315 = icmp ult i32 %314, 4
  br i1 %315, label %316, label %335, !prof !678

316:                                              ; preds = %309
  %317 = add nsw i32 %311, -1
  %318 = icmp slt i32 %311, 1
  %319 = select i1 %318, i32 4, i32 %317, !prof !679
  %320 = load i32, ptr @peep2_current_count, align 4, !tbaa !163
  %321 = icmp slt i32 %320, 4
  br i1 %321, label %322, label %329, !prof !680

322:                                              ; preds = %316
  %323 = sext i32 %319 to i64
  %324 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %323
  %325 = load ptr, ptr %324, align 16, !tbaa !592
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %329, !prof !681

327:                                              ; preds = %322
  %328 = add nsw i32 %320, 1
  store i32 %328, ptr @peep2_current_count, align 4, !tbaa !163
  br label %329

329:                                              ; preds = %327, %322, %316
  %330 = sext i32 %319 to i64
  %331 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %330
  store ptr %310, ptr %331, align 16, !tbaa !592
  %332 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %310) #29
  call void @df_simulate_one_insn_backwards(ptr noundef %288, ptr noundef nonnull %310, ptr noundef %10) #29
  %333 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %330, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !597
  call void @bitmap_copy(ptr noundef %334, ptr noundef %10) #29
  br label %335

335:                                              ; preds = %309, %329
  %336 = phi i32 [ %319, %329 ], [ %311, %309 ]
  %337 = getelementptr inbounds %struct.rtx_def, ptr %310, i64 0, i32 1, i32 0, i32 0, i64 1
  %338 = load ptr, ptr %337, align 8, !tbaa !159
  %339 = icmp eq ptr %338, %58
  br i1 %339, label %340, label %309, !prof !682, !llvm.loop !683

340:                                              ; preds = %335
  store i32 %336, ptr @peep2_current, align 4, !tbaa !163
  br label %341

341:                                              ; preds = %340, %297
  %342 = icmp eq ptr %194, %195
  br i1 %342, label %352, label %343, !prof !654

343:                                              ; preds = %341, %348
  %344 = phi ptr [ %350, %348 ], [ %194, %341 ]
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 65535
  %347 = icmp eq i32 %346, 9
  br i1 %347, label %352, label %348, !prof !684

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !159
  %351 = icmp eq ptr %350, %195
  br i1 %351, label %352, label %343, !prof !685, !llvm.loop !686

352:                                              ; preds = %348, %343, %341, %99
  %353 = phi i8 [ %54, %99 ], [ %54, %341 ], [ 1, %343 ], [ %54, %348 ]
  %354 = phi ptr [ %55, %99 ], [ %288, %341 ], [ %288, %343 ], [ %288, %348 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #29
  br label %355

355:                                              ; preds = %53, %352
  %356 = phi i8 [ %353, %352 ], [ %54, %53 ]
  %357 = phi ptr [ %354, %352 ], [ %55, %53 ]
  %358 = getelementptr inbounds %struct.basic_block_def, ptr %357, i64 0, i32 7
  %359 = load ptr, ptr %358, align 8, !tbaa !159
  %360 = load ptr, ptr %359, align 8, !tbaa !561
  %361 = icmp eq ptr %56, %360
  br i1 %361, label %362, label %53, !prof !687, !llvm.loop !688

362:                                              ; preds = %355
  %363 = getelementptr inbounds %struct.basic_block_def, ptr %357, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !555
  %365 = load ptr, ptr @cfun, align 8, !tbaa !148
  %366 = getelementptr inbounds %struct.function, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !550
  %368 = load ptr, ptr %367, align 8, !tbaa !557
  %369 = icmp eq ptr %364, %368
  br i1 %369, label %370, label %23, !prof !689, !llvm.loop !690

370:                                              ; preds = %362
  %371 = icmp eq i8 %356, 0
  br label %372

372:                                              ; preds = %370, %9
  %373 = phi i1 [ true, %9 ], [ %371, %370 ]
  call void @default_rtl_profile() #29
  br label %374

374:                                              ; preds = %372, %374
  %375 = phi i64 [ 0, %372 ], [ %378, %374 ]
  %376 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %375, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !597
  call void @bitmap_obstack_free(ptr noundef %377) #29
  store ptr null, ptr %376, align 8, !tbaa !597
  %378 = add nuw nsw i64 %375, 1
  %379 = icmp eq i64 %378, 5
  br i1 %379, label %380, label %374, !prof !637, !llvm.loop !691

380:                                              ; preds = %374
  call void @bitmap_obstack_free(ptr noundef %10) #29
  br i1 %373, label %383, label %381, !prof !635

381:                                              ; preds = %380
  %382 = call ptr @get_insns() #29
  call void @rebuild_jump_labels(ptr noundef %382) #29
  br label %383

383:                                              ; preds = %380, %381
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_split_all_insns() #13 !prof !633 !PGOFuncName !692 {
  tail call void @split_all_insns()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_split_after_reload() #13 !prof !633 !PGOFuncName !693 {
  tail call void @split_all_insns()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_split_before_regstack() #14 !prof !633 !PGOFuncName !694 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !163
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !635
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_split_before_regstack() #12 !prof !147 {
  tail call void @split_all_insns()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_split_before_sched2() #14 !prof !633 !PGOFuncName !695 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !635
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_split_before_sched2() #13 !prof !633 !PGOFuncName !696 {
  tail call void @split_all_insns()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_do_final_split() #25 !prof !633 !PGOFuncName !697 {
  ret i8 0
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_for_extraction(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_insn_deleted(ptr noundef) local_unnamed_addr #3

declare void @cleanup_subreg_operands(ptr noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_one_insn_backwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @peephole2_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after_setloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @delete_insn_chain(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @copy_reg_eh_region_note_backward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #28

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!146}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!35 = !{ptr @extract_insn, ptr @recog, i64 557861}
!36 = !{ptr @extract_insn, ptr @insn_extract, i64 6696107}
!37 = !{ptr @constrain_operands, ptr @strtoul, i64 209720}
!38 = !{ptr @constrain_operands, ptr @operands_match_p, i64 208833}
!39 = !{ptr @constrain_operands, ptr @strict_memory_address_addr_space_p, i64 1338371}
!40 = !{ptr @constrain_operands, ptr @trunc_int_for_mode, i64 58549}
!41 = !{ptr @constrain_operands, ptr @legitimate_constant_p, i64 170113}
!42 = !{ptr @constrain_operands, ptr @lookup_constraint, i64 322638}
!43 = !{ptr @constrain_operands, ptr @insn_const_int_ok_for_constraint, i64 1358}
!44 = !{ptr @constrain_operands, ptr @regclass_for_constraint, i64 318194}
!45 = !{ptr @constrain_operands, ptr @constraint_satisfied_p, i64 3086}
!46 = !{ptr @constrain_operands, ptr @constrain_operands, i64 825}
!47 = !{ptr @validate_change, ptr @rtx_equal_p, i64 627660}
!48 = !{ptr @validate_change, ptr @xrealloc, i64 1}
!49 = !{ptr @validate_change, ptr @verify_changes, i64 28658}
!50 = !{ptr @validate_change, ptr @copy_rtx, i64 164}
!51 = !{ptr @validate_change, ptr @df_insn_rescan, i64 3317}
!52 = !{ptr @validate_unshare_change, ptr @rtx_equal_p, i64 90636}
!53 = !{ptr @validate_unshare_change, ptr @verify_changes, i64 4138}
!54 = !{ptr @validate_unshare_change, ptr @copy_rtx, i64 24}
!55 = !{ptr @validate_unshare_change, ptr @df_insn_rescan, i64 479}
!56 = !{ptr @canonicalize_change_group, ptr @swap_commutative_operands_p, i64 135}
!57 = !{ptr @insn_invalid_p, ptr @recog, i64 682905}
!58 = !{ptr @insn_invalid_p, ptr @insn_extract, i64 382471}
!59 = !{ptr @insn_invalid_p, ptr @strtoul, i64 16069}
!60 = !{ptr @insn_invalid_p, ptr @operands_match_p, i64 16069}
!61 = !{ptr @insn_invalid_p, ptr @strict_memory_address_addr_space_p, i64 111650}
!62 = !{ptr @insn_invalid_p, ptr @trunc_int_for_mode, i64 4486}
!63 = !{ptr @insn_invalid_p, ptr @legitimate_constant_p, i64 13034}
!64 = !{ptr @insn_invalid_p, ptr @lookup_constraint, i64 24720}
!65 = !{ptr @insn_invalid_p, ptr @insn_const_int_ok_for_constraint, i64 104}
!66 = !{ptr @insn_invalid_p, ptr @regclass_for_constraint, i64 24380}
!67 = !{ptr @insn_invalid_p, ptr @constraint_satisfied_p, i64 236}
!68 = !{ptr @verify_changes, ptr @asm_noperands, i64 2123}
!69 = !{ptr @verify_changes, ptr @insn_invalid_p, i64 16184}
!70 = !{ptr @verify_changes, ptr @rtx_equal_p, i64 49}
!71 = !{ptr @confirm_change_group, ptr @copy_rtx, i64 430}
!72 = !{ptr @confirm_change_group, ptr @df_insn_rescan, i64 8672}
!73 = !{ptr @apply_change_group, ptr @asm_noperands, i64 84368}
!74 = !{ptr @apply_change_group, ptr @insn_invalid_p, i64 643241}
!75 = !{ptr @apply_change_group, ptr @rtx_equal_p, i64 1956}
!76 = !{ptr @apply_change_group, ptr @copy_rtx, i64 26721}
!77 = !{ptr @apply_change_group, ptr @df_insn_rescan, i64 539362}
!78 = !{ptr @validate_replace_rtx_1, ptr @rtx_equal_p, i64 29524}
!79 = !{ptr @validate_replace_rtx_1, ptr @validate_replace_rtx_1, i64 132451}
!80 = !{ptr @validate_replace_rtx_1, ptr @swap_commutative_operands_p, i64 501}
!81 = !{ptr @validate_replace_rtx_1, ptr @simplify_subreg, i64 223}
!82 = !{ptr @validate_replace_rtx, ptr @validate_replace_rtx_1, i64 25628}
!83 = !{ptr @validate_replace_rtx, ptr @apply_change_group, i64 25628}
!84 = !{ptr @validate_replace_rtx_part_nosimplify, ptr @validate_replace_rtx_1, i64 1589}
!85 = !{ptr @validate_replace_rtx_part_nosimplify, ptr @apply_change_group, i64 1589}
!86 = !{ptr @validate_replace_src_group, ptr @note_uses, i64 1214}
!87 = !{ptr @validate_replace_src_1, ptr @validate_replace_rtx_1, i64 1214}
!88 = !{ptr @general_operand, ptr @trunc_int_for_mode, i64 141829}
!89 = !{ptr @general_operand, ptr @legitimate_constant_p, i64 412086}
!90 = !{ptr @immediate_operand, ptr @trunc_int_for_mode, i64 115302}
!91 = !{ptr @immediate_operand, ptr @legitimate_constant_p, i64 301668}
!92 = !{ptr @const_int_operand, ptr @trunc_int_for_mode, i64 89235}
!93 = !{ptr @nonimmediate_operand, ptr @trunc_int_for_mode, i64 346700}
!94 = !{ptr @nonimmediate_operand, ptr @legitimate_constant_p, i64 1007341}
!95 = !{ptr @nonmemory_operand, ptr @trunc_int_for_mode, i64 134}
!96 = !{ptr @nonmemory_operand, ptr @legitimate_constant_p, i64 10522}
!97 = !{ptr @memory_operand, ptr @legitimate_constant_p, i64 672149}
!98 = !{ptr @memory_operand, ptr @trunc_int_for_mode, i64 221569}
!99 = !{ptr @find_constant_term_loc, ptr @find_constant_term_loc, i64 2}
!100 = !{ptr @extract_insn_cached, ptr @recog, i64 372237}
!101 = !{ptr @extract_insn_cached, ptr @insn_extract, i64 4468020}
!102 = !{ptr @extract_constrain_insn_cached, ptr @recog, i64 177126}
!103 = !{ptr @extract_constrain_insn_cached, ptr @insn_extract, i64 2126071}
!104 = !{ptr @extract_constrain_insn_cached, ptr @constrain_operands, i64 2358719}
!105 = !{ptr @constrain_operands_cached, ptr @constrain_operands, i64 616192}
!106 = !{ptr @preprocess_constraints, ptr @strtoul, i64 46252}
!107 = !{ptr @preprocess_constraints, ptr @lookup_constraint, i64 5616264}
!108 = !{ptr @preprocess_constraints, ptr @regclass_for_constraint, i64 5616264}
!109 = !{ptr @split_all_insns, ptr @sbitmap_alloc, i64 114}
!110 = !{ptr @split_all_insns, ptr @sbitmap_zero, i64 114}
!111 = !{ptr @split_all_insns, ptr @rtl_profile_for_bb, i64 498336}
!112 = !{ptr @split_all_insns, ptr @single_set_2, i64 66006}
!113 = !{ptr @split_all_insns, ptr @set_noop_p, i64 1757666}
!114 = !{ptr @split_all_insns, ptr @try_split, i64 1765000}
!115 = !{ptr @split_all_insns, ptr @rtx_equal_p, i64 12178}
!116 = !{ptr @split_all_insns, ptr @find_reg_equal_equiv_note, i64 12029}
!117 = !{ptr @split_all_insns, ptr @set_insn_deleted, i64 12178}
!118 = !{ptr @split_all_insns, ptr @cleanup_subreg_operands, i64 5487}
!119 = !{ptr @split_all_insns, ptr @default_rtl_profile, i64 114}
!120 = !{ptr @split_all_insns, ptr @find_many_sub_basic_blocks, i64 57}
!121 = !{ptr @split_all_insns, ptr @free, i64 228}
!122 = !{ptr @split_insn, ptr @try_split, i64 1}
!123 = !{ptr @peep2_regno_dead_p, ptr @bitmap_bit_p, i64 2962}
!124 = !{ptr @peep2_reg_dead_p, ptr @bitmap_bit_p, i64 16913}
!125 = !{ptr @peep2_find_free_register, ptr @reg_set_to_hard_reg_set, i64 568}
!126 = !{ptr @peep2_find_free_register, ptr @ix86_hard_regno_mode_ok, i64 870}
!127 = !{ptr @peep2_find_free_register, ptr @df_regs_ever_live_p, i64 496}
!128 = !{ptr @peep2_find_free_register, ptr @gen_rtx_REG, i64 568}
!129 = !{ptr @rest_of_handle_peephole2, ptr @df_set_flags, i64 38}
!130 = !{ptr @rest_of_handle_peephole2, ptr @df_analyze, i64 38}
!131 = !{ptr @rest_of_handle_peephole2, ptr @bitmap_obstack_alloc_stat, i64 228}
!132 = !{ptr @rest_of_handle_peephole2, ptr @rtl_profile_for_bb, i64 155465}
!133 = !{ptr @rest_of_handle_peephole2, ptr @bitmap_copy, i64 912570}
!134 = !{ptr @rest_of_handle_peephole2, ptr @df_simulate_initialize_backwards, i64 155465}
!135 = !{ptr @rest_of_handle_peephole2, ptr @df_simulate_one_insn_backwards, i64 581162}
!136 = !{ptr @rest_of_handle_peephole2, ptr @peephole2_insns, i64 557772}
!137 = !{ptr @rest_of_handle_peephole2, ptr @find_reg_note, i64 20184}
!138 = !{ptr @rest_of_handle_peephole2, ptr @emit_insn_after_setloc, i64 20184}
!139 = !{ptr @rest_of_handle_peephole2, ptr @delete_insn_chain, i64 20184}
!140 = !{ptr @rest_of_handle_peephole2, ptr @df_insn_rescan, i64 23096}
!141 = !{ptr @rest_of_handle_peephole2, ptr @default_rtl_profile, i64 38}
!142 = !{ptr @rest_of_handle_peephole2, ptr @bitmap_obstack_free, i64 228}
!143 = !{ptr @rest_of_handle_split_all_insns, ptr @split_all_insns, i64 38}
!144 = !{ptr @rest_of_handle_split_after_reload, ptr @split_all_insns, i64 38}
!145 = !{ptr @rest_of_handle_split_before_sched2, ptr @split_all_insns, i64 38}
!146 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!147 = !{!"function_entry_count", i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"any pointer", !150, i64 0}
!150 = !{!"omnipotent char", !151, i64 0}
!151 = !{!"Simple C/C++ TBAA"}
!152 = !{!153, !149, i64 8}
!153 = !{!"_IO_FILE", !154, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !154, i64 112, !154, i64 116, !155, i64 120, !156, i64 128, !150, i64 130, !150, i64 131, !149, i64 136, !155, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !155, i64 184, !154, i64 192, !150, i64 196}
!154 = !{!"int", !150, i64 0}
!155 = !{!"long", !150, i64 0}
!156 = !{!"short", !150, i64 0}
!157 = !{!153, !149, i64 16}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{!150, !150, i64 0}
!160 = !{!153, !149, i64 40}
!161 = !{!153, !149, i64 48}
!162 = !{!153, !154, i64 0}
!163 = !{!154, !154, i64 0}
!164 = distinct !{!164, !165, !166}
!165 = !{!"llvm.loop.mustprogress"}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = !{!"function_entry_count", i64 114}
!168 = !{!"function_entry_count", i64 268}
!169 = !{!"function_entry_count", i64 712382}
!170 = !{!"branch_weights", i32 712382, i32 0}
!171 = !{!"branch_weights", i32 80372, i32 0, i32 10889185, i32 759428}
!172 = !{!"branch_weights", i32 0, i32 10889185}
!173 = !{!"branch_weights", i32 2, i32 0, i32 759426}
!174 = !{!"branch_weights", i32 0, i32 759426}
!175 = !{!"branch_weights", i32 7520004, i32 0}
!176 = !{!177, !154, i64 0}
!177 = !{!"rtvec_def", !154, i64 0, !150, i64 8}
!178 = distinct !{!178, !165, !166}
!179 = distinct !{!179, !165, !166}
!180 = distinct !{!180, !165, !166}
!181 = distinct !{!181, !165, !166}
!182 = !{!"function_entry_count", i64 6696223}
!183 = !{!184, !150, i64 1086}
!184 = !{!"recog_data", !150, i64 0, !150, i64 240, !150, i64 480, !150, i64 720, !150, i64 840, !150, i64 960, !150, i64 1072, !150, i64 1086, !150, i64 1087, !150, i64 1088, !150, i64 1089, !149, i64 1120}
!185 = !{!184, !150, i64 1088}
!186 = !{!184, !150, i64 1087}
!187 = !{!"branch_weights", i32 64489, i32 190, i32 0, i32 0, i32 46, i32 0, i32 0, i32 12972184, i32 635997, i32 0}
!188 = !{!"branch_weights", i32 0, i32 12972184}
!189 = !{!"branch_weights", i32 0, i32 -1134872109, i32 0}
!190 = !{!"branch_weights", i32 0, i32 -1134872109}
!191 = distinct !{!191, !165, !166}
!192 = !{!"branch_weights", i32 1139088, i32 12533582}
!193 = !{!"branch_weights", i32 0, i32 13672670}
!194 = !{!195, !150, i64 32}
!195 = !{!"insn_data", !149, i64 0, !150, i64 8, !149, i64 16, !149, i64 24, !150, i64 32, !150, i64 33, !150, i64 34, !150, i64 35}
!196 = !{!195, !150, i64 34}
!197 = !{!195, !150, i64 33}
!198 = !{!"branch_weights", i32 13672669, i32 1}
!199 = !{!195, !149, i64 24}
!200 = !{!201, !149, i64 8}
!201 = !{!"insn_operand_data", !149, i64 0, !149, i64 8, !154, i64 16, !150, i64 18, !150, i64 19}
!202 = !{!"branch_weights", i32 9161045, i32 19728762}
!203 = !{!"branch_weights", i32 13672669, i32 15217138}
!204 = distinct !{!204, !165, !166}
!205 = !{!"branch_weights", i32 143507, i32 28746300}
!206 = !{!"branch_weights", i32 4545284, i32 24344523}
!207 = distinct !{!207, !165, !166}
!208 = !{!"branch_weights", i32 13672670, i32 0}
!209 = !{!184, !149, i64 1120}
!210 = !{!"function_entry_count", i64 4991870}
!211 = !{!"branch_weights", i32 181, i32 5374167}
!212 = !{!"branch_weights", i32 1153192, i32 4221156}
!213 = !{!"branch_weights", i32 4221155, i32 1}
!214 = !{!"branch_weights", i32 0, i32 5421462}
!215 = !{!"branch_weights", i32 5421461, i32 1}
!216 = distinct !{!216, !165, !166}
!217 = distinct !{!217, !165, !166}
!218 = !{!"branch_weights", i32 0, i32 10970094}
!219 = !{!"branch_weights", i32 7646, i32 10962448}
!220 = !{!"branch_weights", i32 7646, i32 0}
!221 = !{!"branch_weights", i32 0, i32 7646}
!222 = !{!"branch_weights", i32 674, i32 28029609}
!223 = !{!"branch_weights", i32 6658944, i32 1420186, i32 9549908, i32 111141, i32 13217, i32 220961, i32 102450, i32 2532511, i32 96772, i32 0, i32 0, i32 225789, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16666, i32 2199283, i32 0, i32 2501808, i32 440, i32 0, i32 0, i32 214, i32 94, i32 0, i32 0, i32 2107998, i32 208358, i32 3015, i32 0, i32 0, i32 195, i32 0, i32 60185, i32 0, i32 0, i32 0, i32 148}
!224 = !{!"branch_weights", i32 955, i32 224834}
!225 = !{!"branch_weights", i32 0, i32 224834}
!226 = !{!"branch_weights", i32 27736, i32 198053}
!227 = !{!"branch_weights", i32 0, i32 225789}
!228 = !{!229, !154, i64 0}
!229 = !{!"funny_match", !154, i64 0, !154, i64 4}
!230 = !{!229, !154, i64 4}
!231 = !{!"branch_weights", i32 243, i32 16423}
!232 = !{!"branch_weights", i32 0, i32 16423}
!233 = !{!"branch_weights", i32 1026299, i32 1172984}
!234 = !{!"branch_weights", i32 135, i32 1026164}
!235 = !{!"branch_weights", i32 1026164, i32 0}
!236 = !{!"branch_weights", i32 956492, i32 69672}
!237 = !{!155, !155, i64 0}
!238 = !{!"branch_weights", i32 24, i32 956468}
!239 = !{!"branch_weights", i32 0, i32 956468}
!240 = distinct !{!240, !165, !166}
!241 = !{!"branch_weights", i32 12, i32 1172972}
!242 = !{!"branch_weights", i32 7291946, i32 7276572}
!243 = !{!"branch_weights", i32 2216841, i32 12351677}
!244 = !{!"branch_weights", i32 2216841, i32 0}
!245 = !{!"branch_weights", i32 782900, i32 13785618}
!246 = !{!"branch_weights", i32 782900, i32 0}
!247 = !{!"branch_weights", i32 2274723, i32 12293795}
!248 = !{!"branch_weights", i32 2244185, i32 30538}
!249 = !{!"branch_weights", i32 30538, i32 0}
!250 = !{!"branch_weights", i32 2274723, i32 0}
!251 = !{!"branch_weights", i32 11009571, i32 1284224}
!252 = !{!"branch_weights", i32 13363, i32 10996208}
!253 = !{!"branch_weights", i32 13363, i32 0}
!254 = !{!"branch_weights", i32 0, i32 13363}
!255 = !{!"branch_weights", i32 414485, i32 4167090, i32 6427996}
!256 = !{!"branch_weights", i32 2148884, i32 2018206}
!257 = !{!"branch_weights", i32 346488, i32 6081508}
!258 = !{!"branch_weights", i32 346488, i32 0}
!259 = !{!"branch_weights", i32 7944, i32 6420052}
!260 = !{!261, !150, i64 32}
!261 = !{!"mem_attrs", !149, i64 0, !149, i64 8, !149, i64 16, !154, i64 24, !154, i64 28, !150, i64 32}
!262 = !{!263, !149, i64 1200}
!263 = !{!"gcc_target", !264, i64 0, !266, i64 368, !267, i64 664, !154, i64 744, !149, i64 752, !149, i64 760, !149, i64 768, !149, i64 776, !149, i64 784, !149, i64 792, !149, i64 800, !149, i64 808, !149, i64 816, !149, i64 824, !149, i64 832, !149, i64 840, !149, i64 848, !149, i64 856, !149, i64 864, !149, i64 872, !149, i64 880, !149, i64 888, !149, i64 896, !149, i64 904, !149, i64 912, !149, i64 920, !149, i64 928, !149, i64 936, !149, i64 944, !149, i64 952, !149, i64 960, !149, i64 968, !149, i64 976, !149, i64 984, !149, i64 992, !149, i64 1000, !149, i64 1008, !149, i64 1016, !149, i64 1024, !149, i64 1032, !149, i64 1040, !149, i64 1048, !149, i64 1056, !155, i64 1064, !155, i64 1072, !149, i64 1080, !149, i64 1088, !149, i64 1096, !149, i64 1104, !149, i64 1112, !149, i64 1120, !149, i64 1128, !149, i64 1136, !149, i64 1144, !149, i64 1152, !149, i64 1160, !149, i64 1168, !268, i64 1176, !149, i64 1232, !149, i64 1240, !149, i64 1248, !149, i64 1256, !149, i64 1264, !149, i64 1272, !149, i64 1280, !149, i64 1288, !149, i64 1296, !149, i64 1304, !149, i64 1312, !149, i64 1320, !149, i64 1328, !149, i64 1336, !149, i64 1344, !149, i64 1352, !149, i64 1360, !149, i64 1368, !149, i64 1376, !149, i64 1384, !149, i64 1392, !149, i64 1400, !149, i64 1408, !149, i64 1416, !149, i64 1424, !149, i64 1432, !149, i64 1440, !149, i64 1448, !149, i64 1456, !155, i64 1464, !269, i64 1472, !149, i64 1664, !149, i64 1672, !149, i64 1680, !149, i64 1688, !149, i64 1696, !149, i64 1704, !149, i64 1712, !149, i64 1720, !149, i64 1728, !149, i64 1736, !149, i64 1744, !149, i64 1752, !149, i64 1760, !149, i64 1768, !149, i64 1776, !270, i64 1784, !271, i64 1792, !272, i64 1896, !273, i64 1968, !149, i64 2016, !150, i64 2024, !150, i64 2025, !150, i64 2026, !150, i64 2027, !150, i64 2028, !150, i64 2029, !150, i64 2030, !150, i64 2031, !150, i64 2032, !150, i64 2033, !150, i64 2034, !150, i64 2035}
!264 = !{!"asm_out", !149, i64 0, !149, i64 8, !149, i64 16, !265, i64 24, !265, i64 56, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184, !149, i64 192, !149, i64 200, !149, i64 208, !149, i64 216, !149, i64 224, !149, i64 232, !149, i64 240, !149, i64 248, !149, i64 256, !149, i64 264, !149, i64 272, !149, i64 280, !149, i64 288, !149, i64 296, !149, i64 304, !149, i64 312, !149, i64 320, !149, i64 328, !149, i64 336, !149, i64 344, !149, i64 352, !149, i64 360}
!265 = !{!"asm_int_op", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24}
!266 = !{!"sched", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184, !149, i64 192, !149, i64 200, !149, i64 208, !149, i64 216, !149, i64 224, !149, i64 232, !149, i64 240, !149, i64 248, !149, i64 256, !149, i64 264, !149, i64 272, !149, i64 280, !149, i64 288}
!267 = !{!"vectorize", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72}
!268 = !{!"addr_space", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48}
!269 = !{!"calls", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184}
!270 = !{!"c", !149, i64 0}
!271 = !{!"cxx", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96}
!272 = !{!"emutls", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !150, i64 64, !150, i64 65}
!273 = !{!"target_option_hooks", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40}
!274 = !{!"VP", i32 0, i64 480711, i64 -1382695475395396580, i64 480711}
!275 = !{!"branch_weights", i32 339, i32 6427657}
!276 = !{!"branch_weights", i32 0, i32 1172972}
!277 = !{!"branch_weights", i32 1552168, i32 949640}
!278 = !{!"branch_weights", i32 1424494, i32 127674}
!279 = !{!"branch_weights", i32 824, i32 1423670}
!280 = !{!"branch_weights", i32 0, i32 1424494}
!281 = !{!"branch_weights", i32 127674, i32 1424494}
!282 = !{!"branch_weights", i32 23, i32 127651}
!283 = !{!"VP", i32 0, i64 127674, i64 -1382695475395396580, i64 127674}
!284 = !{!"branch_weights", i32 0, i32 127674}
!285 = !{!"branch_weights", i32 943, i32 948697}
!286 = !{!"branch_weights", i32 0, i32 943}
!287 = !{!"branch_weights", i32 949640, i32 0}
!288 = !{!"branch_weights", i32 440, i32 0}
!289 = !{!"branch_weights", i32 0, i32 440, i32 0}
!290 = !{!"branch_weights", i32 214, i32 0, i32 0}
!291 = !{!"branch_weights", i32 0, i32 94}
!292 = !{!"branch_weights", i32 1201395, i32 906603}
!293 = !{!"branch_weights", i32 2615, i32 205743, i32 0}
!294 = !{!"branch_weights", i32 1462, i32 61933}
!295 = !{!"branch_weights", i32 195, i32 1267}
!296 = !{i32 0, i32 2}
!297 = !{!"branch_weights", i32 148, i32 0}
!298 = !{!"branch_weights", i32 0, i32 148}
!299 = !{!"branch_weights", i32 6316370, i32 342574}
!300 = !{!"branch_weights", i32 3322, i32 6655622}
!301 = !{!"branch_weights", i32 1793, i32 6653829}
!302 = !{!"branch_weights", i32 635525, i32 6018304}
!303 = !{!"branch_weights", i32 -2062934736, i32 -1202313225, i32 0}
!304 = !{!"branch_weights", i32 367416, i32 1706}
!305 = !{!"branch_weights", i32 0, i32 268109}
!306 = !{!"branch_weights", i32 3328225, i32 2958188}
!307 = !{!"branch_weights", i32 3328225, i32 0}
!308 = !{!"branch_weights", i32 1021, i32 3327204}
!309 = !{!"branch_weights", i32 152, i32 3327162}
!310 = !{!"branch_weights", i32 42, i32 110}
!311 = !{!"branch_weights", i32 3322, i32 0}
!312 = !{!"branch_weights", i32 10970094, i32 17060189}
!313 = distinct !{!313, !165, !166}
!314 = !{!"branch_weights", i32 1273700, i32 9696394}
!315 = !{!"branch_weights", i32 5548633, i32 5421461}
!316 = distinct !{!316, !165, !166}
!317 = !{!"branch_weights", i32 4220119, i32 1201343}
!318 = !{!"branch_weights", i32 3820745, i32 399374}
!319 = !{!"branch_weights", i32 0, i32 4220119}
!320 = distinct !{!320, !165, !166}
!321 = distinct !{!321, !165, !166}
!322 = !{!"branch_weights", i32 4220119, i32 0}
!323 = !{!"branch_weights", i32 0, i32 1}
!324 = distinct !{!324, !165, !166}
!325 = !{!"branch_weights", i32 4220119, i32 1201343, i32 0}
!326 = !{!"branch_weights", i32 1200306, i32 1037}
!327 = distinct !{!327, !165, !166}
!328 = !{!"branch_weights", i32 888, i32 149}
!329 = !{!"function_entry_count", i64 6711805}
!330 = distinct !{!330, !165, !166}
!331 = distinct !{!331, !165, !166}
!332 = distinct !{!332, !165, !166}
!333 = distinct !{!333, !165, !166}
!334 = !{!156, !156, i64 0}
!335 = distinct !{!335, !165, !166}
!336 = distinct !{!336, !165, !166}
!337 = !{!"function_entry_count", i64 11134497}
!338 = !{!"branch_weights", i32 12084181, i32 721888}
!339 = !{!"branch_weights", i32 720674, i32 1214}
!340 = !{!"branch_weights", i32 687714, i32 32960}
!341 = !{!"branch_weights", i32 720674, i32 0}
!342 = !{!"branch_weights", i32 720673, i32 1}
!343 = !{!"branch_weights", i32 1, i32 0}
!344 = !{!345, !149, i64 0}
!345 = !{!"change_t", !149, i64 0, !154, i64 8, !149, i64 16, !149, i64 24, !150, i64 32}
!346 = !{!345, !149, i64 16}
!347 = !{!345, !149, i64 24}
!348 = !{!345, !150, i64 32}
!349 = !{!"branch_weights", i32 1, i32 720673}
!350 = !{!"branch_weights", i32 0, i32 720673}
!351 = !{!345, !154, i64 8}
!352 = !{!"branch_weights", i32 32960, i32 687714}
!353 = !{!"branch_weights", i32 53772, i32 4639246}
!354 = !{!"branch_weights", i32 621300, i32 4091928}
!355 = !{!"branch_weights", i32 593961, i32 27339}
!356 = !{!"branch_weights", i32 1, i32 621299}
!357 = !{!"branch_weights", i32 583, i32 620716}
!358 = !{!"branch_weights", i32 583, i32 0}
!359 = !{!"branch_weights", i32 0, i32 621300}
!360 = distinct !{!360, !165, !166}
!361 = !{!"branch_weights", i32 4161972, i32 551256}
!362 = !{!"branch_weights", i32 551256, i32 0}
!363 = !{!"branch_weights", i32 64080, i32 1}
!364 = !{!"branch_weights", i32 0, i32 99374}
!365 = !{!"branch_weights", i32 35294, i32 64080}
!366 = distinct !{!366, !165, !166}
!367 = !{!"recog.c;validate_change_1"}
!368 = !{!"function_entry_count", i64 1607850}
!369 = !{!"function_entry_count", i64 18393}
!370 = !{!"branch_weights", i32 135, i32 18258}
!371 = !{!"branch_weights", i32 135, i32 0}
!372 = !{!"function_entry_count", i64 651041}
!373 = !{!"branch_weights", i32 36714, i32 614327}
!374 = !{!"branch_weights", i32 419192, i32 231849}
!375 = !{!"branch_weights", i32 555224, i32 95817}
!376 = !{!"branch_weights", i32 0, i32 651041}
!377 = !{!"branch_weights", i32 0, i32 555224}
!378 = !{!"branch_weights", i32 172746, i32 382478}
!379 = !{!"VP", i32 0, i64 36832, i64 -1382695475395396580, i64 36832}
!380 = !{!"function_entry_count", i64 1231}
!381 = !{!"function_entry_count", i64 117251}
!382 = !{!"branch_weights", i32 720502, i32 3996064}
!383 = !{!"branch_weights", i32 1, i32 720501}
!384 = !{!"branch_weights", i32 69461, i32 651041}
!385 = !{!"branch_weights", i32 50270, i32 600771}
!386 = !{!"branch_weights", i32 0, i32 50270}
!387 = !{!388, !149, i64 0}
!388 = !{!"reg_attrs", !149, i64 0, !155, i64 8}
!389 = !{!"branch_weights", i32 555177, i32 95864}
!390 = !{!"branch_weights", i32 35121, i32 60743}
!391 = !{!"branch_weights", i32 35121, i32 0}
!392 = distinct !{!392, !165, !166}
!393 = !{!"branch_weights", i32 60743, i32 0, i32 0, i32 0}
!394 = !{!"branch_weights", i32 60743, i32 659759}
!395 = !{!"branch_weights", i32 0, i32 720502}
!396 = distinct !{!396, !165, !166}
!397 = !{!"function_entry_count", i64 593024}
!398 = !{!"VP", i32 0, i64 593024, i64 -1382695475395396580, i64 593024}
!399 = !{!"function_entry_count", i64 74071}
!400 = !{!"function_entry_count", i64 4660058}
!401 = !{!"branch_weights", i32 4639246, i32 53772}
!402 = !{!"function_entry_count", i64 10310}
!403 = !{!"function_entry_count", i64 1157922}
!404 = !{!"function_entry_count", i64 160882}
!405 = !{!"recog.c;validate_replace_rtx_1"}
!406 = !{!"branch_weights", i32 0, i32 160882}
!407 = !{!"branch_weights", i32 67899, i32 92983}
!408 = !{!"branch_weights", i32 28429, i32 132453}
!409 = !{!"branch_weights", i32 39583, i32 92870}
!410 = !{!"branch_weights", i32 39583, i32 0}
!411 = !{!"branch_weights", i32 27911, i32 11672}
!412 = !{!"branch_weights", i32 0, i32 27911}
!413 = !{!"branch_weights", i32 27911, i32 104542}
!414 = !{!"branch_weights", i32 27911, i32 0}
!415 = !{!"branch_weights", i32 864, i32 131589}
!416 = !{!"branch_weights", i32 863, i32 1}
!417 = !{!"branch_weights", i32 864, i32 864}
!418 = !{!"branch_weights", i32 0, i32 864}
!419 = !{!"branch_weights", i32 865, i32 863}
!420 = distinct !{!420, !165, !166}
!421 = !{!"branch_weights", i32 1, i32 131588}
!422 = !{!"branch_weights", i32 158363, i32 130723, i32 0}
!423 = distinct !{!423, !165, !166}
!424 = !{!"branch_weights", i32 157498, i32 131588}
!425 = distinct !{!425, !165, !166}
!426 = !{!"branch_weights", i32 79898, i32 52555}
!427 = !{!"branch_weights", i32 51691, i32 864}
!428 = !{!"branch_weights", i32 7425, i32 44266}
!429 = !{!"branch_weights", i32 1972, i32 50583}
!430 = !{!"branch_weights", i32 50082, i32 501}
!431 = !{!"branch_weights", i32 501, i32 0}
!432 = !{!"branch_weights", i32 39395, i32 99, i32 0, i32 47, i32 0, i32 223, i32 10819, i32 0}
!433 = !{!"branch_weights", i32 0, i32 99}
!434 = !{!"branch_weights", i32 0, i32 47}
!435 = !{!"branch_weights", i32 51, i32 172}
!436 = !{!"branch_weights", i32 0, i32 51}
!437 = !{!"branch_weights", i32 0, i32 10819}
!438 = !{!"function_entry_count", i64 25628}
!439 = !{!"function_entry_count", i64 1589}
!440 = distinct !{!440, !165, !166}
!441 = !{!"function_entry_count", i64 1214}
!442 = !{!443, !149, i64 0}
!443 = !{!"validate_replace_src_data", !149, i64 0, !149, i64 8, !149, i64 16}
!444 = !{!443, !149, i64 8}
!445 = !{!443, !149, i64 16}
!446 = !{!"recog.c;validate_replace_src_1"}
!447 = distinct !{!447, !165, !166}
!448 = !{!"function_entry_count", i64 2639216}
!449 = !{!"VP", i32 0, i64 1164488, i64 -1382695475395396580, i64 1164488}
!450 = !{!"function_entry_count", i64 177590}
!451 = !{!"VP", i32 0, i64 177590, i64 -1382695475395396580, i64 177590}
!452 = !{!"function_entry_count", i64 8129721}
!453 = !{!"branch_weights", i32 319771, i32 7809950}
!454 = !{!"branch_weights", i32 15166, i32 7794784}
!455 = !{!"branch_weights", i32 15166, i32 0}
!456 = !{!"branch_weights", i32 0, i32 15166}
!457 = !{!"branch_weights", i32 5453273, i32 2356677}
!458 = !{!"branch_weights", i32 2015458, i32 3437815}
!459 = !{!"function_entry_count", i64 15482}
!460 = !{!"branch_weights", i32 0, i32 15482}
!461 = !{!"branch_weights", i32 0, i32 0, i32 15482}
!462 = !{!"function_entry_count", i64 947319}
!463 = !{!"branch_weights", i32 180392, i32 766927}
!464 = !{!"branch_weights", i32 180392, i32 0}
!465 = !{!"branch_weights", i32 115302, i32 832017}
!466 = !{!"branch_weights", i32 115302, i32 0}
!467 = !{!"branch_weights", i32 301668, i32 645651}
!468 = !{!"branch_weights", i32 301668, i32 0}
!469 = !{!"function_entry_count", i64 285199}
!470 = !{!"branch_weights", i32 228098, i32 57101}
!471 = !{!"branch_weights", i32 138863, i32 89235}
!472 = !{!"branch_weights", i32 89235, i32 0}
!473 = !{!"function_entry_count", i64 6451538}
!474 = !{!"VP", i32 0, i64 2846579, i64 -1382695475395396580, i64 2846579}
!475 = !{!"branch_weights", i32 1696493, i32 4755045}
!476 = !{!"function_entry_count", i64 55856}
!477 = !{!"branch_weights", i32 10522, i32 45334}
!478 = !{!"branch_weights", i32 134, i32 10388}
!479 = !{!"branch_weights", i32 134, i32 0}
!480 = !{!"branch_weights", i32 10522, i32 0}
!481 = !{!"branch_weights", i32 0, i32 45334}
!482 = !{!"branch_weights", i32 15319, i32 30015}
!483 = !{!"branch_weights", i32 15319, i32 0}
!484 = !{!"branch_weights", i32 0, i32 15319}
!485 = !{!"branch_weights", i32 25051, i32 20283}
!486 = !{!"branch_weights", i32 22766, i32 2285}
!487 = !{!"function_entry_count", i64 6379557}
!488 = !{!"branch_weights", i32 1357452, i32 5022105}
!489 = !{!"branch_weights", i32 245436, i32 1112016}
!490 = !{!"branch_weights", i32 1112016, i32 0}
!491 = !{!"branch_weights", i32 1357448, i32 4}
!492 = !{!"branch_weights", i32 176, i32 1357272}
!493 = !{!"branch_weights", i32 0, i32 4}
!494 = !{!"function_entry_count", i64 12498816}
!495 = !{!"branch_weights", i32 1131597, i32 11367219}
!496 = !{!"branch_weights", i32 181753, i32 949844}
!497 = !{!"VP", i32 0, i64 80193, i64 -1382695475395396580, i64 80193}
!498 = !{!"branch_weights", i32 10957382, i32 409837}
!499 = !{!"branch_weights", i32 406069, i32 3768}
!500 = !{!"branch_weights", i32 0, i32 11363451}
!501 = !{!"branch_weights", i32 4123039, i32 7240412}
!502 = !{!"VP", i32 0, i64 1819188, i64 -1382695475395396580, i64 1819188}
!503 = !{!"function_entry_count", i64 2499927}
!504 = !{!"branch_weights", i32 1941881, i32 558046}
!505 = !{!"branch_weights", i32 558046, i32 0}
!506 = !{!"function_entry_count", i64 4208981}
!507 = !{!"function_entry_count", i64 3}
!508 = !{!"branch_weights", i32 0, i32 3}
!509 = !{!"branch_weights", i32 2, i32 0, i32 0, i32 1}
!510 = !{ptr @memory_address_addr_space_p, ptr @strict_memory_address_addr_space_p}
!511 = !{!"function_entry_count", i64 191044}
!512 = !{!"function_entry_count", i64 8898027}
!513 = !{!"branch_weights", i32 4429930, i32 4468097}
!514 = !{!"branch_weights", i32 4429930, i32 0}
!515 = !{!"function_entry_count", i64 12496631}
!516 = !{!"branch_weights", i32 10370523, i32 2126108}
!517 = !{!"branch_weights", i32 10370523, i32 0}
!518 = !{!"branch_weights", i32 2358719, i32 10137912}
!519 = !{!"branch_weights", i32 0, i32 2358719}
!520 = !{!"function_entry_count", i64 1133702}
!521 = !{!"branch_weights", i32 616192, i32 517510}
!522 = !{!"function_entry_count", i64 1362967}
!523 = !{!"branch_weights", i32 1362966, i32 1}
!524 = !{!"VP", i32 1, i64 2871950, i64 0, i64 1015491, i64 64, i64 905986, i64 257, i64 788976, i64 32, i64 121872}
!525 = !{!"branch_weights", i32 1362966, i32 1508984}
!526 = distinct !{!526, !165, !166}
!527 = !{!"branch_weights", i32 2871949, i32 1}
!528 = !{!529, !154, i64 8}
!529 = !{!"operand_alternative", !149, i64 0, !154, i64 8, !154, i64 12, !154, i64 16, !154, i64 20, !154, i64 24, !154, i64 24, !154, i64 24, !154, i64 24, !154, i64 24, !154, i64 24, !154, i64 24, !154, i64 24}
!530 = !{!529, !149, i64 0}
!531 = !{!529, !154, i64 16}
!532 = !{!529, !154, i64 20}
!533 = !{!"branch_weights", i32 0, i32 11558604}
!534 = !{!"branch_weights", i32 11387640, i32 170964, i32 0}
!535 = !{!"branch_weights", i32 0, i32 32106501}
!536 = !{!"branch_weights", i32 5616264, i32 9621741, i32 1765899, i32 435869, i32 14126, i32 4748247, i32 13414, i32 0, i32 0, i32 0, i32 0, i32 0, i32 770679, i32 43214, i32 521, i32 0, i32 0, i32 3512, i32 134, i32 23297, i32 0, i32 0, i32 1659952, i32 2378, i32 0, i32 46252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2840122, i32 88, i32 0, i32 0, i32 0, i32 0, i32 3422, i32 401558, i32 4095812}
!537 = !{!529, !154, i64 12}
!538 = distinct !{!538, !166}
!539 = !{!"branch_weights", i32 788976, i32 19883633}
!540 = !{!"branch_weights", i32 11387640, i32 20718861}
!541 = !{!"branch_weights", i32 8686655, i32 2871949}
!542 = distinct !{!542, !165, !166}
!543 = !{!"branch_weights", i32 1508984, i32 1362966}
!544 = distinct !{!544, !165, !166}
!545 = !{!"function_entry_count", i64 2150519}
!546 = !{!"branch_weights", i32 1100682, i32 1049837}
!547 = !{!"branch_weights", i32 1099382, i32 1051137}
!548 = !{!"branch_weights", i32 86, i32 1099296}
!549 = !{!"branch_weights", i32 0, i32 1099296}
!550 = !{!551, !149, i64 8}
!551 = !{!"function", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !154, i64 104, !154, i64 108, !154, i64 112, !154, i64 116, !154, i64 120, !154, i64 124, !149, i64 128, !154, i64 136, !154, i64 137, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139}
!552 = !{!553, !154, i64 32}
!553 = !{!"control_flow_graph", !149, i64 0, !149, i64 8, !149, i64 16, !154, i64 24, !154, i64 28, !154, i64 32, !149, i64 40, !154, i64 48, !150, i64 52, !150, i64 60, !154, i64 68, !154, i64 72}
!554 = !{!553, !149, i64 8}
!555 = !{!556, !149, i64 48}
!556 = !{!"basic_block_def", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !150, i64 32, !149, i64 48, !149, i64 56, !150, i64 64, !155, i64 72, !154, i64 80, !154, i64 84, !154, i64 88, !154, i64 92, !154, i64 96}
!557 = !{!553, !149, i64 0}
!558 = !{!"branch_weights", i32 1, i32 227}
!559 = !{!"branch_weights", i32 227, i32 996445}
!560 = distinct !{!560, !165, !166}
!561 = !{!562, !149, i64 0}
!562 = !{!"rtl_bb_info", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !154, i64 32}
!563 = !{!562, !149, i64 8}
!564 = !{!"branch_weights", i32 1765002, i32 871892}
!565 = !{!"branch_weights", i32 1708879, i32 56123}
!566 = !{!"branch_weights", i32 7334, i32 1757668}
!567 = !{!"branch_weights", i32 1757668, i32 0}
!568 = !{!"branch_weights", i32 1752824, i32 12178}
!569 = !{!"branch_weights", i32 12178, i32 0}
!570 = !{!"branch_weights", i32 2444, i32 9734}
!571 = !{!"branch_weights", i32 0, i32 12178}
!572 = !{!"branch_weights", i32 12029, i32 149}
!573 = !{!"branch_weights", i32 149, i32 12029}
!574 = !{!"branch_weights", i32 12029, i32 0}
!575 = !{!"branch_weights", i32 0, i32 12029}
!576 = !{!"branch_weights", i32 7979, i32 4199}
!577 = !{!"branch_weights", i32 5487, i32 0}
!578 = !{!"branch_weights", i32 4199, i32 1288}
!579 = distinct !{!579, !166}
!580 = !{!556, !154, i64 80}
!581 = !{!582, !149, i64 0}
!582 = !{!"simple_bitmap_def", !149, i64 0, !154, i64 8, !154, i64 12, !150, i64 16}
!583 = !{!"branch_weights", i32 498336, i32 2138558}
!584 = distinct !{!584, !165, !166}
!585 = !{!"branch_weights", i32 57, i32 57}
!586 = !{!"function_entry_count", i64 1}
!587 = !{!"recog.c;split_insn"}
!588 = distinct !{!588, !165, !166}
!589 = !{!"function_entry_count", i64 117924}
!590 = !{!"branch_weights", i32 0, i32 117924}
!591 = !{!"branch_weights", i32 2142, i32 115782}
!592 = !{!593, !149, i64 0}
!593 = !{!"peep2_insn_data", !149, i64 0, !149, i64 8}
!594 = !{!"function_entry_count", i64 2962}
!595 = !{!"branch_weights", i32 2962, i32 0}
!596 = !{!"branch_weights", i32 0, i32 2962}
!597 = !{!593, !149, i64 8}
!598 = !{!"function_entry_count", i64 16913}
!599 = !{!"branch_weights", i32 16913, i32 0}
!600 = !{!"branch_weights", i32 733, i32 16180}
!601 = !{!"branch_weights", i32 0, i32 16913}
!602 = !{!"branch_weights", i32 16913, i32 15482}
!603 = !{!"branch_weights", i32 15482, i32 1431}
!604 = distinct !{!604, !165, !166}
!605 = !{!"function_entry_count", i64 568}
!606 = !{!"branch_weights", i32 568, i32 0}
!607 = !{!"branch_weights", i32 0, i32 568}
!608 = distinct !{!608, !165, !166}
!609 = !{!"branch_weights", i32 148, i32 6426}
!610 = !{!"branch_weights", i32 1862, i32 4712}
!611 = !{!"branch_weights", i32 1862, i32 0}
!612 = !{!"branch_weights", i32 992, i32 870}
!613 = !{!"branch_weights", i32 0, i32 870}
!614 = !{!"branch_weights", i32 496, i32 374}
!615 = !{!"branch_weights", i32 11, i32 485}
!616 = !{!263, !149, i64 1752}
!617 = !{!"VP", i32 0, i64 859, i64 -7318176539302949774, i64 859}
!618 = !{!"branch_weights", i32 0, i32 859}
!619 = !{!"branch_weights", i32 735, i32 0, i32 124}
!620 = !{!"branch_weights", i32 0, i32 124}
!621 = !{!"branch_weights", i32 124, i32 0}
!622 = !{!"branch_weights", i32 735, i32 568}
!623 = !{!"branch_weights", i32 417480, i32 122745}
!624 = distinct !{!624, !165, !166}
!625 = distinct !{!625, !165, !166}
!626 = !{!"branch_weights", i32 568, i32 167, i32 5839}
!627 = !{!"branch_weights", i32 0, i32 6574}
!628 = distinct !{!628, !165, !166}
!629 = distinct !{!629, !165, !166}
!630 = distinct !{!630, !165, !166}
!631 = distinct !{!631, !165, !166}
!632 = distinct !{!632, !165, !166}
!633 = !{!"function_entry_count", i64 38}
!634 = !{!"recog.c;gate_handle_peephole2"}
!635 = !{!"branch_weights", i32 38, i32 0}
!636 = !{!"recog.c;rest_of_handle_peephole2"}
!637 = !{!"branch_weights", i32 38, i32 152}
!638 = distinct !{!638, !165, !166}
!639 = !{!"branch_weights", i32 1, i32 151}
!640 = !{!641, !154, i64 16}
!641 = !{!"dataflow", !149, i64 0, !149, i64 8, !154, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !154, i64 48, !150, i64 52, !150, i64 53, !150, i64 54}
!642 = !{!641, !149, i64 8}
!643 = !{!644, !149, i64 24}
!644 = !{!"df_lr_bb_info", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24}
!645 = !{!"branch_weights", i32 155465, i32 466395}
!646 = distinct !{!646, !165, !166}
!647 = !{!"branch_weights", i32 269497, i32 558066}
!648 = !{!"branch_weights", i32 48908, i32 509158}
!649 = !{!"branch_weights", i32 482457, i32 75609}
!650 = !{!"branch_weights", i32 482457, i32 0}
!651 = !{!"branch_weights", i32 557772, i32 294}
!652 = !{!"branch_weights", i32 294, i32 882}
!653 = !{!"branch_weights", i32 537882, i32 20184}
!654 = !{!"branch_weights", i32 1, i32 20183}
!655 = !{!"branch_weights", i32 596, i32 21932}
!656 = !{!"branch_weights", i32 0, i32 22528}
!657 = distinct !{!657, !165, !166}
!658 = distinct !{!658, !165, !166}
!659 = distinct !{!659, !165, !166}
!660 = !{!"branch_weights", i32 454682624, i32 52828160}
!661 = distinct !{!661, !165, !166}
!662 = !{!"branch_weights", i32 376, i32 19808}
!663 = !{!"branch_weights", i32 20184, i32 0}
!664 = !{!"branch_weights", i32 0, i32 20184}
!665 = !{!666, !154, i64 0}
!666 = !{!"VEC_edge_base", !154, i64 0, !154, i64 4, !150, i64 8}
!667 = !{!668, !154, i64 48}
!668 = !{!"edge_def", !149, i64 0, !149, i64 8, !150, i64 16, !149, i64 24, !149, i64 32, !154, i64 40, !154, i64 44, !154, i64 48, !154, i64 52, !155, i64 56}
!669 = distinct !{!669, !165, !166}
!670 = !{!668, !149, i64 0}
!671 = !{!668, !149, i64 8}
!672 = !{!668, !154, i64 52}
!673 = distinct !{!673, !165, !166}
!674 = !{!263, !149, i64 1000}
!675 = !{!"VP", i32 0, i64 20184, i64 -4114221222305073648, i64 20184}
!676 = distinct !{!676, !165, !166}
!677 = !{!"branch_weights", i32 349, i32 19835}
!678 = !{!"branch_weights", i32 23096, i32 0}
!679 = !{!"branch_weights", i32 725, i32 22371}
!680 = !{!"branch_weights", i32 19505, i32 3591}
!681 = !{!"branch_weights", i32 568, i32 18937}
!682 = !{!"branch_weights", i32 20184, i32 2912}
!683 = distinct !{!683, !165, !166}
!684 = !{!"branch_weights", i32 0, i32 23096}
!685 = !{!"branch_weights", i32 20183, i32 2913}
!686 = distinct !{!686, !165, !166}
!687 = !{!"branch_weights", i32 155465, i32 672098}
!688 = distinct !{!688, !166}
!689 = !{!"branch_weights", i32 151, i32 621709}
!690 = distinct !{!690, !165, !166}
!691 = distinct !{!691, !165, !166}
!692 = !{!"recog.c;rest_of_handle_split_all_insns"}
!693 = !{!"recog.c;rest_of_handle_split_after_reload"}
!694 = !{!"recog.c;gate_handle_split_before_regstack"}
!695 = !{!"recog.c;gate_handle_split_before_sched2"}
!696 = !{!"recog.c;rest_of_handle_split_before_sched2"}
!697 = !{!"recog.c;gate_do_final_split"}
