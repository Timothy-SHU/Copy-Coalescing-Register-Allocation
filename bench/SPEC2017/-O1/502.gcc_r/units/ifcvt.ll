; ModuleID = 'ifcvt.c'
source_filename = "ifcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.noce_if_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ce_if_block = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"ce1\00", align 1
@pass_rtl_ifcvt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_if_conversion, ptr @rest_of_handle_if_conversion, ptr null, ptr null, i32 0, i32 141, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ce2\00", align 1
@pass_if_after_combine = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_handle_if_after_combine, ptr @rest_of_handle_if_after_combine, ptr null, ptr null, i32 0, i32 141, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ce3\00", align 1
@pass_if_after_reload = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_handle_if_after_reload, ptr @rest_of_handle_if_after_reload, ptr null, ptr null, i32 0, i32 154, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_if_conversion = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@num_possible_if_blocks = internal unnamed_addr global i32 0, align 4
@num_updated_if_blocks = internal unnamed_addr global i32 0, align 4
@num_true_changes = internal unnamed_addr global i32 0, align 4
@cond_exec_changed_p = internal unnamed_addr global i1 false, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"\0A\0A========== Pass %d ==========\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"\0A\0A========== no more changes\0A\00", align 1
@max_regno = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"\0A%d possible IF blocks searched.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%d IF blocks converted.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%d true changes made.\0A\0A\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Conversion succeeded on pass %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ifcvt.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\0AIF-THEN%s-JOIN block found, pass %d, test %d, then %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-ELSE\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c", else %d\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c", join %d\0A\00", align 1
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@cse_not_expected = external local_unnamed_addr global i32, align 4
@code_to_optab = external local_unnamed_addr global [140 x ptr], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@epilogue_completed = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [72 x i8] c"\0AIF-THEN%s block found, pass %d, start block %d [insn %d], then %d [%d]\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c", else %d [%d]\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c", join %d [%d]\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c", %d %s block%s last test %d [%d]\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"%d insn%s converted to conditional execution.\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" was\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"s were\00", align 1
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [41 x i8] c"\0ATRAP-IF block found, start %d, trap %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-1 found, start %d, then %d\0A\00", align 1
@reg_obstack = external global %struct.bitmap_obstack, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.29 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-2 found, start %d, else %d\0A\00", align 1
@flag_if_conversion2 = external local_unnamed_addr global i32, align 4
@switch.table.if_convert = private unnamed_addr constant [15 x i32] [i32 70, i32 70, i32 71, i32 71, i32 72, i32 72, i32 73, i32 73, i32 71, i32 71, i32 71, i32 70, i32 70, i32 71, i32 71], align 4
@switch.table.if_convert.30 = private unnamed_addr constant [15 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_if_conversion() #9 !prof !167 !PGOFuncName !168 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7, !prof !169

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 18) #17
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_if_conversion() #9 !prof !167 !PGOFuncName !170 {
  %1 = load i32, ptr @flag_if_conversion, align 4, !tbaa !163
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3, !prof !171

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !169

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !163
  tail call void @dump_flow_info(ptr noundef nonnull %4, i32 noundef %7) #17
  br label %8

8:                                                ; preds = %6, %3
  %9 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #17
  tail call fastcc void @if_convert()
  br label %10

10:                                               ; preds = %8, %0
  %11 = tail call zeroext i8 @cleanup_cfg(i32 noundef 0) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_if_after_combine() #9 !prof !167 !PGOFuncName !172 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !169
  br i1 %5, label %6, label %10, !prof !169

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 19) #17
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_if_after_combine() #9 !prof !167 !PGOFuncName !173 {
  tail call fastcc void @if_convert()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_if_after_reload() #9 !prof !167 !PGOFuncName !174 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !163
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_if_conversion2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !169
  br i1 %5, label %6, label %10, !prof !169

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 20) #17
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_if_after_reload() #9 !prof !167 !PGOFuncName !175 {
  tail call fastcc void @if_convert()
  ret i32 0
}

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @if_convert() unnamed_addr #9 !prof !176 !PGOFuncName !177 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.noce_if_info, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ce_if_block, align 8
  %7 = load i32, ptr @optimize, align 4, !tbaa !163
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10, !prof !178

9:                                                ; preds = %0
  tail call void @df_live_add_problem() #17
  tail call void @df_live_set_all_dirty() #17
  br label %10

10:                                               ; preds = %9, %0
  store i32 0, ptr @num_possible_if_blocks, align 4, !tbaa !163
  store i32 0, ptr @num_updated_if_blocks, align 4, !tbaa !163
  store i32 0, ptr @num_true_changes, align 4, !tbaa !163
  tail call void @loop_optimizer_init(i32 noundef 16) #17
  tail call void @mark_loop_exit_edges() #17
  tail call void @loop_optimizer_finalize() #17
  tail call void @free_dominance_info(i32 noundef 1) #17
  tail call void @calculate_dominance_info(i32 noundef 2) #17
  %11 = tail call i32 @df_set_flags(i32 noundef 1) #17
  %12 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 1
  %13 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 12
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 2
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 3
  %18 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 5
  %19 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 6
  %20 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 4
  %21 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 12
  %22 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 13
  %23 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  %24 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 8
  %25 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 11
  %26 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 9
  %27 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 10
  %28 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  br label %29

29:                                               ; preds = %2307, %10
  %30 = phi i32 [ 0, %10 ], [ %32, %2307 ]
  call void @df_analyze() #17
  %31 = call i32 @df_clear_flags(i32 noundef 1) #17
  store i1 false, ptr @cond_exec_changed_p, align 4
  %32 = add nuw nsw i32 %30, 1
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %34 = icmp ne ptr %33, null
  %35 = icmp ne i32 %30, 0
  %36 = select i1 %34, i1 %35, i1 false, !prof !179
  br i1 %36, label %37, label %39, !prof !179

37:                                               ; preds = %29
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.3, i32 noundef %32)
  br label %39

39:                                               ; preds = %37, %29
  %40 = load ptr, ptr @cfun, align 8, !tbaa !148
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !180
  %43 = load ptr, ptr %42, align 8, !tbaa !182
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !184
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !186
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %2294, label %49, !prof !187

49:                                               ; preds = %39, %2283
  %50 = phi ptr [ %2284, %2283 ], [ %45, %39 ]
  %51 = call zeroext i8 @df_get_bb_dirty(ptr noundef %50) #17
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %2285, !prof !188

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #17
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !189
  %56 = icmp eq ptr %55, null
  br i1 %56, label %2280, label %57, !prof !190

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8, !tbaa !191
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %2280, !prof !193

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_edge_base, ptr %55, i64 0, i32 2, i64 0
  %62 = load ptr, ptr %61, align 8, !tbaa !148
  %63 = getelementptr inbounds %struct.VEC_edge_base, ptr %55, i64 0, i32 2, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !148
  %65 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = call zeroext i8 @df_get_bb_dirty(ptr noundef %66) #17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %2280, !prof !196

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !194
  %72 = call zeroext i8 @df_get_bb_dirty(ptr noundef %71) #17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %2280, !prof !197

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !198
  %77 = and i32 %76, 14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %2280, !prof !199

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !198
  %82 = and i32 %81, 14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %2280, !prof !199

84:                                               ; preds = %79
  %85 = or i32 %81, %76
  %86 = and i32 %85, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %2280, !prof !199

88:                                               ; preds = %84
  %89 = and i32 %76, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94, !prof !200

91:                                               ; preds = %88
  %92 = and i32 %81, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %2280, label %94, !prof !201

94:                                               ; preds = %91, %88
  %95 = phi ptr [ %62, %88 ], [ %64, %91 ]
  %96 = phi ptr [ %64, %88 ], [ %62, %91 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store ptr %50, ptr %6, align 8, !tbaa !202
  %97 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !194
  store ptr %98, ptr %12, align 8, !tbaa !204
  %99 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !194
  store ptr %100, ptr %13, align 8, !tbaa !205
  store i32 %32, ptr %14, align 4, !tbaa !206
  %101 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %1395, !prof !207

103:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #17
  %104 = load ptr, ptr %97, align 8, !tbaa !194
  %105 = load ptr, ptr %104, align 8, !tbaa !208
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107, !prof !209

107:                                              ; preds = %103
  %108 = load i32, ptr %105, align 8, !tbaa !191
  %109 = icmp eq i32 %108, 1
  %110 = zext i1 %109 to i8
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i8 [ %110, %107 ], [ 0, %103 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %189, label %114, !prof !210

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !189
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118, !prof !211

118:                                              ; preds = %114
  %119 = load i32, ptr %116, align 8, !tbaa !191
  %120 = icmp eq i32 %119, 1
  %121 = zext i1 %120 to i8
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i8 [ %121, %118 ], [ 0, %114 ]
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %189, label %125, !prof !212

125:                                              ; preds = %122
  %126 = load ptr, ptr %99, align 8, !tbaa !194
  %127 = load ptr, ptr %126, align 8, !tbaa !208
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129, !prof !213

129:                                              ; preds = %125
  %130 = load i32, ptr %127, align 8, !tbaa !191
  %131 = icmp eq i32 %130, 1
  %132 = zext i1 %131 to i8
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i8 [ %132, %129 ], [ 0, %125 ]
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %189, label %136, !prof !214

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !189
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140, !prof !215

140:                                              ; preds = %136
  %141 = load i32, ptr %138, align 8, !tbaa !191
  %142 = icmp eq i32 %141, 1
  %143 = zext i1 %142 to i8
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i8 [ %143, %140 ], [ 0, %136 ]
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %189, label %147, !prof !216

147:                                              ; preds = %144
  br i1 %117, label %151, label %148, !prof !217

148:                                              ; preds = %147
  %149 = load i32, ptr %116, align 8, !tbaa !191
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %152, label %151, !prof !218

151:                                              ; preds = %148, %147
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %152

152:                                              ; preds = %151, %148
  %153 = load ptr, ptr %115, align 8, !tbaa !189
  %154 = getelementptr inbounds %struct.VEC_edge_base, ptr %153, i64 0, i32 2, i64 0
  %155 = load ptr, ptr %154, align 8, !tbaa !148
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !194
  %158 = load ptr, ptr %99, align 8, !tbaa !194
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !189
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162, !prof !217

162:                                              ; preds = %152
  %163 = load i32, ptr %160, align 8, !tbaa !191
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %166, label %165, !prof !218

165:                                              ; preds = %162, %152
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %166

166:                                              ; preds = %165, %162
  %167 = load ptr, ptr %159, align 8, !tbaa !189
  %168 = getelementptr inbounds %struct.VEC_edge_base, ptr %167, i64 0, i32 2, i64 0
  %169 = load ptr, ptr %168, align 8, !tbaa !148
  %170 = getelementptr inbounds %struct.edge_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !194
  %172 = icmp eq ptr %157, %171
  br i1 %172, label %173, label %189, !prof !219

173:                                              ; preds = %166
  %174 = load ptr, ptr %97, align 8, !tbaa !194
  %175 = load ptr, ptr %99, align 8, !tbaa !194
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !189
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179, !prof !220

179:                                              ; preds = %173
  %180 = load i32, ptr %177, align 8, !tbaa !191
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %183, label %182, !prof !221

182:                                              ; preds = %179, %173
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %183

183:                                              ; preds = %182, %179
  %184 = load ptr, ptr %176, align 8, !tbaa !189
  %185 = getelementptr inbounds %struct.VEC_edge_base, ptr %184, i64 0, i32 2, i64 0
  %186 = load ptr, ptr %185, align 8, !tbaa !148
  %187 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !194
  br label %267

189:                                              ; preds = %166, %144, %133, %122, %111
  %190 = load ptr, ptr %97, align 8, !tbaa !194
  %191 = load ptr, ptr %190, align 8, !tbaa !208
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193, !prof !222

193:                                              ; preds = %189
  %194 = load i32, ptr %191, align 8, !tbaa !191
  %195 = icmp eq i32 %194, 1
  %196 = zext i1 %195 to i8
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i8 [ %196, %193 ], [ 0, %189 ]
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %226, label %200, !prof !223

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !189
  %203 = icmp eq ptr %202, null
  br i1 %203, label %208, label %204, !prof !224

204:                                              ; preds = %200
  %205 = load i32, ptr %202, align 8, !tbaa !191
  %206 = icmp eq i32 %205, 1
  %207 = zext i1 %206 to i8
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i8 [ %207, %204 ], [ 0, %200 ]
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %226, label %211, !prof !225

211:                                              ; preds = %208
  br i1 %203, label %215, label %212, !prof !226

212:                                              ; preds = %211
  %213 = load i32, ptr %202, align 8, !tbaa !191
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %216, label %215, !prof !227

215:                                              ; preds = %212, %211
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %216

216:                                              ; preds = %215, %212
  %217 = load ptr, ptr %201, align 8, !tbaa !189
  %218 = getelementptr inbounds %struct.VEC_edge_base, ptr %217, i64 0, i32 2, i64 0
  %219 = load ptr, ptr %218, align 8, !tbaa !148
  %220 = getelementptr inbounds %struct.edge_def, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !194
  %222 = load ptr, ptr %99, align 8, !tbaa !194
  %223 = icmp eq ptr %221, %222
  br i1 %223, label %224, label %226, !prof !228

224:                                              ; preds = %216
  %225 = load ptr, ptr %97, align 8, !tbaa !194
  br label %267

226:                                              ; preds = %216, %208, %197
  %227 = load ptr, ptr %99, align 8, !tbaa !194
  %228 = load ptr, ptr %227, align 8, !tbaa !208
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230, !prof !229

230:                                              ; preds = %226
  %231 = load i32, ptr %228, align 8, !tbaa !191
  %232 = icmp eq i32 %231, 1
  %233 = zext i1 %232 to i8
  br label %234

234:                                              ; preds = %230, %226
  %235 = phi i8 [ %233, %230 ], [ 0, %226 ]
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %1392, label %237, !prof !230

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %227, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !189
  %240 = icmp eq ptr %239, null
  br i1 %240, label %1392, label %241, !prof !231

241:                                              ; preds = %237
  %242 = load i32, ptr %239, align 8, !tbaa !191
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %1392, !prof !232

244:                                              ; preds = %241
  %245 = load ptr, ptr %238, align 8, !tbaa !189
  %246 = getelementptr inbounds %struct.VEC_edge_base, ptr %245, i64 0, i32 2, i64 0
  %247 = load ptr, ptr %246, align 8, !tbaa !148
  %248 = getelementptr inbounds %struct.edge_def, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !194
  %250 = load ptr, ptr %97, align 8, !tbaa !194
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %252, label %1392, !prof !233

252:                                              ; preds = %244
  %253 = load ptr, ptr %99, align 8, !tbaa !194
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !189
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %252
  %258 = load i32, ptr %255, align 8, !tbaa !191
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %261, label %260

260:                                              ; preds = %257, %252
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %261

261:                                              ; preds = %260, %257
  %262 = load ptr, ptr %254, align 8, !tbaa !189
  %263 = getelementptr inbounds %struct.VEC_edge_base, ptr %262, i64 0, i32 2, i64 0
  %264 = load ptr, ptr %263, align 8, !tbaa !148
  %265 = getelementptr inbounds %struct.edge_def, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !194
  br label %267

267:                                              ; preds = %261, %224, %183
  %268 = phi ptr [ %175, %183 ], [ null, %224 ], [ null, %261 ]
  %269 = phi ptr [ %188, %183 ], [ %222, %224 ], [ %266, %261 ]
  %270 = phi i8 [ 0, %183 ], [ 0, %224 ], [ 1, %261 ]
  %271 = phi ptr [ %174, %183 ], [ %225, %224 ], [ %253, %261 ]
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !189
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275, !prof !234

275:                                              ; preds = %267
  %276 = load i32, ptr %273, align 8, !tbaa !191
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %279, label %278, !prof !235

278:                                              ; preds = %275, %267
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %279

279:                                              ; preds = %278, %275
  %280 = load ptr, ptr %272, align 8, !tbaa !189
  %281 = getelementptr inbounds %struct.VEC_edge_base, ptr %280, i64 0, i32 2, i64 0
  %282 = load ptr, ptr %281, align 8, !tbaa !148
  %283 = getelementptr inbounds %struct.edge_def, ptr %282, i64 0, i32 7
  %284 = load i32, ptr %283, align 8, !tbaa !198
  %285 = and i32 %284, 14
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %1392, !prof !235

287:                                              ; preds = %279
  %288 = icmp eq ptr %268, null
  br i1 %288, label %305, label %289, !prof !236

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !189
  %292 = icmp eq ptr %291, null
  br i1 %292, label %296, label %293, !prof !220

293:                                              ; preds = %289
  %294 = load i32, ptr %291, align 8, !tbaa !191
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %297, label %296, !prof !221

296:                                              ; preds = %293, %289
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %297

297:                                              ; preds = %296, %293
  %298 = load ptr, ptr %290, align 8, !tbaa !189
  %299 = getelementptr inbounds %struct.VEC_edge_base, ptr %298, i64 0, i32 2, i64 0
  %300 = load ptr, ptr %299, align 8, !tbaa !148
  %301 = getelementptr inbounds %struct.edge_def, ptr %300, i64 0, i32 7
  %302 = load i32, ptr %301, align 8, !tbaa !198
  %303 = and i32 %302, 14
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %1392, !prof !221

305:                                              ; preds = %297, %287
  %306 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %309 = icmp eq ptr %308, null
  br i1 %309, label %327, label %310, !prof !235

310:                                              ; preds = %305
  %311 = select i1 %288, ptr @.str.13, ptr @.str.12
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %313 = load i32, ptr %312, align 8, !tbaa !237
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %271, i64 0, i32 9
  %315 = load i32, ptr %314, align 8, !tbaa !237
  %316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %308, ptr noundef nonnull @.str.11, ptr noundef nonnull %311, i32 noundef %32, i32 noundef %313, i32 noundef %315)
  br i1 %288, label %322, label %317

317:                                              ; preds = %310
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 9
  %320 = load i32, ptr %319, align 8, !tbaa !237
  %321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef nonnull @.str.14, i32 noundef %320)
  br label %322

322:                                              ; preds = %317, %310
  %323 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %269, i64 0, i32 9
  %325 = load i32, ptr %324, align 8, !tbaa !237
  %326 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.15, i32 noundef %325)
  br label %327

327:                                              ; preds = %322, %305
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %329 = load ptr, ptr %328, align 8, !tbaa !159
  %330 = getelementptr inbounds %struct.rtl_bb_info, ptr %329, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !238
  %332 = call i32 @onlyjump_p(ptr noundef %331) #17
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %1392, label %334, !prof !234

334:                                              ; preds = %327
  %335 = call fastcc ptr @noce_get_condition(ptr noundef %331, ptr noundef nonnull %3, i8 noundef zeroext %270)
  %336 = icmp eq ptr %335, null
  br i1 %336, label %1392, label %337, !prof !234

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !159
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 16711680
  %342 = icmp eq i32 %341, 65536
  br i1 %342, label %1392, label %343, !prof !234

343:                                              ; preds = %337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  store ptr %50, ptr %4, align 8, !tbaa !240
  store ptr %271, ptr %15, align 8, !tbaa !242
  store ptr %268, ptr %16, align 8, !tbaa !243
  store ptr %269, ptr %17, align 8, !tbaa !244
  store ptr %335, ptr %18, align 8, !tbaa !245
  %344 = load ptr, ptr %3, align 8, !tbaa !148
  store ptr %344, ptr %19, align 8, !tbaa !246
  store ptr %331, ptr %20, align 8, !tbaa !247
  store i8 %270, ptr %21, align 8, !tbaa !248
  %345 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %50) #17
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %352, label %347, !prof !249

347:                                              ; preds = %343
  %348 = call zeroext i8 @predictable_edge_p(ptr noundef %95) #17
  %349 = icmp eq i8 %348, 0
  %350 = load i32, ptr @ix86_branch_cost, align 4
  %351 = select i1 %349, i32 %350, i32 0, !prof !250
  br label %352

352:                                              ; preds = %347, %343
  %353 = phi i32 [ %351, %347 ], [ 2, %343 ]
  store i32 %353, ptr %22, align 4, !tbaa !251
  %354 = load ptr, ptr %4, align 8, !tbaa !240
  %355 = load ptr, ptr %15, align 8, !tbaa !242
  %356 = load ptr, ptr %16, align 8, !tbaa !243
  %357 = load ptr, ptr %17, align 8, !tbaa !244
  %358 = load ptr, ptr %20, align 8, !tbaa !247
  %359 = load ptr, ptr %18, align 8, !tbaa !245
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %355, i64 0, i32 7
  %361 = load ptr, ptr %360, align 8, !tbaa !159
  %362 = load ptr, ptr %361, align 8, !tbaa !252
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 65535
  %365 = icmp eq i32 %364, 12
  br i1 %365, label %366, label %373, !prof !253

366:                                              ; preds = %352
  %367 = getelementptr inbounds %struct.rtl_bb_info, ptr %361, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !238
  %369 = icmp eq ptr %362, %368
  br i1 %369, label %387, label %370, !prof !254

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.rtx_def, ptr %362, i64 0, i32 1, i32 0, i32 0, i64 2
  %372 = load ptr, ptr %371, align 8, !tbaa !159
  br label %373

373:                                              ; preds = %370, %352
  %374 = phi ptr [ %372, %370 ], [ %362, %352 ]
  %375 = getelementptr inbounds %struct.rtl_bb_info, ptr %361, i64 0, i32 1
  br label %376

376:                                              ; preds = %383, %373
  %377 = phi ptr [ %374, %373 ], [ %385, %383 ]
  %378 = load i32, ptr %377, align 8
  %379 = trunc i32 %378 to i16
  switch i16 %379, label %386 [
    i16 13, label %380
    i16 7, label %380
    i16 9, label %387
  ], !prof !255

380:                                              ; preds = %376, %376
  %381 = load ptr, ptr %375, align 8, !tbaa !238
  %382 = icmp eq ptr %377, %381
  br i1 %382, label %387, label %383, !prof !256

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1, i32 0, i32 0, i64 2
  %385 = load ptr, ptr %384, align 8, !tbaa !159
  br label %376, !llvm.loop !257

386:                                              ; preds = %376
  br label %387

387:                                              ; preds = %376, %380, %386, %366
  %388 = phi ptr [ null, %366 ], [ %377, %386 ], [ null, %380 ], [ null, %376 ]
  %389 = icmp eq ptr %388, null
  br i1 %389, label %1390, label %390, !prof !234

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.rtl_bb_info, ptr %361, i64 0, i32 1
  br label %392

392:                                              ; preds = %403, %390
  %393 = phi ptr [ %391, %390 ], [ %404, %403 ]
  %394 = load ptr, ptr %393, align 8, !tbaa !159
  %395 = load i32, ptr %394, align 8
  %396 = trunc i32 %395 to i16
  switch i16 %396, label %397 [
    i16 13, label %401
    i16 9, label %401
    i16 7, label %401
  ], !prof !258

397:                                              ; preds = %392
  %398 = and i32 %395, 65535
  %399 = icmp eq i32 %398, 12
  %400 = select i1 %399, ptr null, ptr %394, !prof !234
  br label %405

401:                                              ; preds = %392, %392, %392
  %402 = icmp eq ptr %394, %362
  br i1 %402, label %405, label %403

403:                                              ; preds = %401
  %404 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %392, !llvm.loop !259

405:                                              ; preds = %401, %397
  %406 = phi ptr [ %400, %397 ], [ null, %401 ]
  %407 = icmp eq ptr %388, %406
  br i1 %407, label %408, label %1390, !prof !260

408:                                              ; preds = %405
  %409 = load i32, ptr %388, align 8
  %410 = and i32 %409, 65535
  %411 = add nsw i32 %410, -7
  %412 = icmp ult i32 %411, 4
  br i1 %412, label %413, label %421, !prof !261

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.rtx_def, ptr %388, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !159
  %416 = load i32, ptr %415, align 8
  %417 = and i32 %416, 65535
  %418 = icmp eq i32 %417, 23
  br i1 %418, label %421, label %419, !prof !261

419:                                              ; preds = %413
  %420 = call ptr @single_set_2(ptr noundef nonnull %388, ptr noundef nonnull %415) #17
  br label %421

421:                                              ; preds = %419, %413, %408
  %422 = phi ptr [ %420, %419 ], [ null, %408 ], [ %415, %413 ]
  %423 = icmp eq ptr %422, null
  br i1 %423, label %1390, label %424, !prof !262

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !159
  %427 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 0, i32 1, i32 0, i32 0, i64 1
  %428 = load ptr, ptr %427, align 8, !tbaa !159
  %429 = icmp ne ptr %356, null
  br i1 %429, label %430, label %500, !prof !263

430:                                              ; preds = %424
  %431 = getelementptr inbounds %struct.basic_block_def, ptr %356, i64 0, i32 7
  %432 = load ptr, ptr %431, align 8, !tbaa !159
  %433 = load ptr, ptr %432, align 8, !tbaa !252
  %434 = load i32, ptr %433, align 8
  %435 = and i32 %434, 65535
  %436 = icmp eq i32 %435, 12
  br i1 %436, label %437, label %444, !prof !253

437:                                              ; preds = %430
  %438 = getelementptr inbounds %struct.rtl_bb_info, ptr %432, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !238
  %440 = icmp eq ptr %433, %439
  br i1 %440, label %458, label %441, !prof !254

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1, i32 0, i32 0, i64 2
  %443 = load ptr, ptr %442, align 8, !tbaa !159
  br label %444

444:                                              ; preds = %441, %430
  %445 = phi ptr [ %443, %441 ], [ %433, %430 ]
  %446 = getelementptr inbounds %struct.rtl_bb_info, ptr %432, i64 0, i32 1
  br label %447

447:                                              ; preds = %454, %444
  %448 = phi ptr [ %445, %444 ], [ %456, %454 ]
  %449 = load i32, ptr %448, align 8
  %450 = trunc i32 %449 to i16
  switch i16 %450, label %457 [
    i16 13, label %451
    i16 7, label %451
    i16 9, label %458
  ], !prof !255

451:                                              ; preds = %447, %447
  %452 = load ptr, ptr %446, align 8, !tbaa !238
  %453 = icmp eq ptr %448, %452
  br i1 %453, label %458, label %454, !prof !256

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.rtx_def, ptr %448, i64 0, i32 1, i32 0, i32 0, i64 2
  %456 = load ptr, ptr %455, align 8, !tbaa !159
  br label %447, !llvm.loop !257

457:                                              ; preds = %447
  br label %458

458:                                              ; preds = %447, %451, %457, %437
  %459 = phi ptr [ null, %437 ], [ %448, %457 ], [ null, %451 ], [ null, %447 ]
  %460 = icmp eq ptr %459, null
  br i1 %460, label %1390, label %461, !prof !254

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.rtl_bb_info, ptr %432, i64 0, i32 1
  br label %463

463:                                              ; preds = %474, %461
  %464 = phi ptr [ %462, %461 ], [ %475, %474 ]
  %465 = load ptr, ptr %464, align 8, !tbaa !159
  %466 = load i32, ptr %465, align 8
  %467 = trunc i32 %466 to i16
  switch i16 %467, label %468 [
    i16 13, label %472
    i16 9, label %472
    i16 7, label %472
  ], !prof !264

468:                                              ; preds = %463
  %469 = and i32 %466, 65535
  %470 = icmp eq i32 %469, 12
  %471 = select i1 %470, ptr null, ptr %465, !prof !254
  br label %476

472:                                              ; preds = %463, %463, %463
  %473 = icmp eq ptr %465, %433
  br i1 %473, label %476, label %474

474:                                              ; preds = %472
  %475 = getelementptr inbounds %struct.rtx_def, ptr %465, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %463, !llvm.loop !259

476:                                              ; preds = %472, %468
  %477 = phi ptr [ %471, %468 ], [ null, %472 ]
  %478 = icmp eq ptr %459, %477
  br i1 %478, label %479, label %1390, !prof !265

479:                                              ; preds = %476
  %480 = load i32, ptr %459, align 8
  %481 = and i32 %480, 65535
  %482 = add nsw i32 %481, -7
  %483 = icmp ult i32 %482, 4
  br i1 %483, label %484, label %492, !prof !265

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.rtx_def, ptr %459, i64 1
  %486 = load ptr, ptr %485, align 8, !tbaa !159
  %487 = load i32, ptr %486, align 8
  %488 = and i32 %487, 65535
  %489 = icmp eq i32 %488, 23
  br i1 %489, label %492, label %490, !prof !265

490:                                              ; preds = %484
  %491 = call ptr @single_set_2(ptr noundef nonnull %459, ptr noundef nonnull %486) #17
  br label %492

492:                                              ; preds = %490, %484, %479
  %493 = phi ptr [ %491, %490 ], [ null, %479 ], [ %486, %484 ]
  %494 = icmp eq ptr %493, null
  br i1 %494, label %1390, label %495, !prof !254

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.rtx_def, ptr %493, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !159
  %498 = call i32 @rtx_equal_p(ptr noundef %426, ptr noundef %497) #17
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %1390, label %560, !prof !254

500:                                              ; preds = %424
  %501 = load ptr, ptr %19, align 8, !tbaa !246
  %502 = call ptr @prev_nonnote_insn(ptr noundef %501) #17
  %503 = icmp eq ptr %502, null
  br i1 %503, label %559, label %504, !prof !266

504:                                              ; preds = %500, %509
  %505 = phi ptr [ %510, %509 ], [ %502, %500 ]
  %506 = load i32, ptr %505, align 8
  %507 = and i32 %506, 65535
  %508 = icmp eq i32 %507, 7
  br i1 %508, label %509, label %512, !prof !267

509:                                              ; preds = %504
  %510 = call ptr @prev_nonnote_insn(ptr noundef nonnull %505) #17
  %511 = icmp eq ptr %510, null
  br i1 %511, label %559, label %504, !prof !267, !llvm.loop !268

512:                                              ; preds = %504
  %513 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 0, i32 1, i32 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !159
  %515 = load ptr, ptr %19, align 8, !tbaa !246
  %516 = getelementptr inbounds %struct.rtx_def, ptr %515, i64 0, i32 1, i32 0, i32 1
  %517 = load ptr, ptr %516, align 8, !tbaa !159
  %518 = icmp eq ptr %514, %517
  %519 = icmp eq i32 %507, 8
  %520 = and i1 %519, %518
  br i1 %520, label %521, label %559, !prof !269

521:                                              ; preds = %512
  %522 = getelementptr inbounds %struct.rtx_def, ptr %505, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !159
  %524 = load i32, ptr %523, align 8
  %525 = and i32 %524, 65535
  %526 = icmp eq i32 %525, 23
  br i1 %526, label %529, label %527, !prof !269

527:                                              ; preds = %521
  %528 = call ptr @single_set_2(ptr noundef nonnull %505, ptr noundef nonnull %523) #17
  br label %529

529:                                              ; preds = %527, %521
  %530 = phi ptr [ %528, %527 ], [ %523, %521 ]
  %531 = icmp eq ptr %530, null
  br i1 %531, label %559, label %532, !prof !267

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.rtx_def, ptr %530, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !159
  %535 = call i32 @rtx_equal_p(ptr noundef %426, ptr noundef %534) #17
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %559, label %537, !prof !267

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.rtx_def, ptr %530, i64 0, i32 1, i32 0, i32 0, i64 1
  %539 = load ptr, ptr %538, align 8, !tbaa !159
  %540 = call fastcc i32 @noce_operand_ok(ptr noundef %539), !range !270
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %559, label %542, !prof !267

542:                                              ; preds = %537
  %543 = load ptr, ptr %538, align 8, !tbaa !159
  %544 = call i32 @reg_overlap_mentioned_p(ptr noundef %426, ptr noundef %543) #17
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %559, !prof !269

546:                                              ; preds = %542
  %547 = load ptr, ptr %538, align 8, !tbaa !159
  %548 = call i32 @modified_between_p(ptr noundef %547, ptr noundef nonnull %505, ptr noundef %358) #17
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %559, !prof !269

550:                                              ; preds = %546
  %551 = call i32 @reg_overlap_mentioned_p(ptr noundef %426, ptr noundef %359) #17
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %559, !prof !267

553:                                              ; preds = %550
  %554 = call i32 @reg_overlap_mentioned_p(ptr noundef %426, ptr noundef %428) #17
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %553
  %557 = call i32 @modified_between_p(ptr noundef %426, ptr noundef nonnull %505, ptr noundef %358) #17
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %509, %500, %556, %553, %550, %546, %542, %537, %532, %529, %512
  br label %560

560:                                              ; preds = %556, %559, %495
  %561 = phi ptr [ %493, %495 ], [ null, %559 ], [ %530, %556 ]
  %562 = phi ptr [ %459, %495 ], [ null, %559 ], [ %505, %556 ]
  %563 = call i32 @side_effects_p(ptr noundef %426) #17
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %1390, !prof !261

565:                                              ; preds = %560
  %566 = icmp eq ptr %561, null
  br i1 %566, label %570, label %567, !prof !271

567:                                              ; preds = %565
  %568 = getelementptr inbounds %struct.rtx_def, ptr %561, i64 0, i32 1, i32 0, i32 0, i64 1
  %569 = load ptr, ptr %568, align 8, !tbaa !159
  br label %570

570:                                              ; preds = %567, %565
  %571 = phi ptr [ %569, %567 ], [ %426, %565 ]
  %572 = load i32, ptr %426, align 8
  %573 = and i32 %572, 65535
  %574 = icmp eq i32 %573, 37
  br i1 %574, label %575, label %579, !prof !261

575:                                              ; preds = %570
  %576 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1
  %577 = load i32, ptr %576, align 8, !tbaa !159
  %578 = icmp ult i32 %577, 53
  br i1 %578, label %579, label %607, !prof !262

579:                                              ; preds = %575, %570
  %580 = and i32 %572, 16711680
  %581 = icmp eq i32 %580, 65536
  br i1 %581, label %1390, label %582

582:                                              ; preds = %579
  %583 = trunc i32 %572 to i16
  switch i16 %583, label %601 [
    i16 120, label %584
    i16 40, label %598
  ]

584:                                              ; preds = %582
  %585 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1, i32 0, i32 0, i64 1
  %586 = load ptr, ptr %585, align 8, !tbaa !159
  %587 = load i32, ptr %586, align 8
  %588 = and i32 %587, 65535
  %589 = icmp eq i32 %588, 30
  br i1 %589, label %590, label %1390

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1, i32 0, i32 0, i64 2
  %592 = load ptr, ptr %591, align 8, !tbaa !159
  %593 = load i32, ptr %592, align 8
  %594 = and i32 %593, 65535
  %595 = icmp eq i32 %594, 30
  br i1 %595, label %596, label %1390

596:                                              ; preds = %590
  %597 = icmp eq i32 %573, 40
  br i1 %597, label %598, label %601

598:                                              ; preds = %582, %596
  %599 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1
  %600 = load ptr, ptr %599, align 8, !tbaa !159
  br label %601

601:                                              ; preds = %582, %598, %596
  %602 = phi ptr [ %600, %598 ], [ %426, %596 ], [ %426, %582 ]
  %603 = load i32, ptr %602, align 8
  %604 = lshr i32 %603, 16
  %605 = and i32 %604, 255
  %606 = call ptr @gen_reg_rtx(i32 noundef %605) #17
  br label %607

607:                                              ; preds = %601, %575
  %608 = phi ptr [ %606, %601 ], [ %426, %575 ]
  %609 = load i32, ptr %428, align 8
  %610 = and i32 %609, 65535
  %611 = icmp eq i32 %610, 43
  br i1 %611, label %612, label %616, !prof !272

612:                                              ; preds = %607
  %613 = getelementptr inbounds %struct.rtx_def, ptr %428, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !159
  %615 = call i32 @side_effects_p(ptr noundef %614) #17
  br label %621

616:                                              ; preds = %607
  %617 = call i32 @side_effects_p(ptr noundef nonnull %428) #17
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %1390, !prof !273

619:                                              ; preds = %616
  %620 = call i32 @may_trap_p(ptr noundef nonnull %428) #17
  br label %621

621:                                              ; preds = %612, %619
  %622 = phi i32 [ %615, %612 ], [ %620, %619 ]
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %1390, !prof !261

624:                                              ; preds = %621
  %625 = load i32, ptr %571, align 8
  %626 = and i32 %625, 65535
  %627 = icmp eq i32 %626, 43
  br i1 %627, label %628, label %632, !prof !272

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !159
  %631 = call i32 @side_effects_p(ptr noundef %630) #17
  br label %637

632:                                              ; preds = %624
  %633 = call i32 @side_effects_p(ptr noundef nonnull %571) #17
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %1390, !prof !273

635:                                              ; preds = %632
  %636 = call i32 @may_trap_p(ptr noundef nonnull %571) #17
  br label %637

637:                                              ; preds = %628, %635
  %638 = phi i32 [ %631, %628 ], [ %636, %635 ]
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %1390, !prof !261

640:                                              ; preds = %637, %1345
  %641 = phi ptr [ null, %1345 ], [ %561, %637 ]
  %642 = phi ptr [ %426, %1345 ], [ %571, %637 ]
  %643 = phi ptr [ null, %1345 ], [ %562, %637 ]
  store ptr %388, ptr %23, align 8, !tbaa !274
  store ptr %643, ptr %24, align 8, !tbaa !275
  store ptr %608, ptr %25, align 8, !tbaa !276
  store ptr %428, ptr %26, align 8, !tbaa !277
  store ptr %642, ptr %27, align 8, !tbaa !278
  %644 = call i32 @rtx_equal_p(ptr noundef nonnull %428, ptr noundef %642) #17
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %668, label %646, !prof !261

646:                                              ; preds = %640
  %647 = icmp ne ptr %643, null
  %648 = and i1 %429, %647
  br i1 %648, label %649, label %664

649:                                              ; preds = %646
  %650 = getelementptr inbounds %struct.basic_block_def, ptr %356, i64 0, i32 7
  %651 = load ptr, ptr %650, align 8, !tbaa !159
  %652 = getelementptr inbounds %struct.rtl_bb_info, ptr %651, i64 0, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !238
  %654 = icmp eq ptr %643, %653
  br i1 %654, label %655, label %658

655:                                              ; preds = %649
  %656 = getelementptr inbounds %struct.rtx_def, ptr %643, i64 0, i32 1, i32 0, i32 0, i64 1
  %657 = load ptr, ptr %656, align 8, !tbaa !159
  store ptr %657, ptr %652, align 8, !tbaa !238
  br label %658

658:                                              ; preds = %655, %649
  %659 = getelementptr inbounds %struct.rtx_def, ptr %358, i64 0, i32 1, i32 0, i32 0, i64 1
  %660 = load ptr, ptr %659, align 8, !tbaa !159
  call void @reorder_insns(ptr noundef nonnull %643, ptr noundef nonnull %643, ptr noundef %660) #17
  %661 = call ptr @find_reg_note(ptr noundef nonnull %643, i32 noundef 4, ptr noundef null) #17
  %662 = icmp eq ptr %661, null
  br i1 %662, label %1348, label %663

663:                                              ; preds = %658
  call void @remove_note(ptr noundef nonnull %643, ptr noundef nonnull %661) #17
  br label %1348

664:                                              ; preds = %646
  br i1 %647, label %665, label %1348

665:                                              ; preds = %664
  %666 = call i32 @side_effects_p(ptr noundef nonnull %426) #17
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %1348, label %1390

668:                                              ; preds = %640
  %669 = icmp ne ptr %641, null
  br i1 %669, label %680, label %670, !prof !263

670:                                              ; preds = %668
  %671 = load i32, ptr %426, align 8
  %672 = and i32 %671, 65535
  %673 = icmp eq i32 %672, 43
  br i1 %673, label %674, label %680, !prof !267

674:                                              ; preds = %670
  %675 = call fastcc zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef nonnull %426), !range !279
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %677, label %1390

677:                                              ; preds = %674
  %678 = call fastcc zeroext i8 @noce_can_store_speculate_p(ptr noundef %354, ptr noundef nonnull %426)
  %679 = icmp eq i8 %678, 0
  br i1 %679, label %1390, label %680

680:                                              ; preds = %677, %670, %668
  %681 = load ptr, ptr %18, align 8, !tbaa !245
  %682 = load i32, ptr %681, align 8
  %683 = and i32 %682, 65535
  %684 = add nsw i32 %683, -82
  %685 = icmp ult i32 %684, -2
  br i1 %685, label %773, label %686, !prof !280

686:                                              ; preds = %680
  %687 = load ptr, ptr %25, align 8, !tbaa !276
  %688 = load i32, ptr %687, align 8
  %689 = lshr i32 %688, 16
  %690 = and i32 %689, 255
  %691 = zext nneg i32 %690 to i64
  %692 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %691
  %693 = load i8, ptr %692, align 1, !tbaa !159
  switch i8 %693, label %731 [
    i8 8, label %694
    i8 9, label %694
    i8 11, label %694
    i8 17, label %694
  ], !prof !281

694:                                              ; preds = %686, %686, %686, %686
  %695 = and i8 %693, -2
  %696 = icmp eq i8 %695, 8
  br i1 %696, label %701, label %697

697:                                              ; preds = %694
  %698 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %691
  %699 = load i8, ptr %698, align 1, !tbaa !159
  %700 = zext i8 %699 to i32
  br label %701

701:                                              ; preds = %694, %697
  %702 = phi i32 [ %700, %697 ], [ %690, %694 ]
  %703 = add nsw i32 %702, -38
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !148
  %707 = getelementptr inbounds %struct.real_format, ptr %706, i64 0, i32 11
  %708 = load i8, ptr %707, align 2, !tbaa !282
  %709 = icmp eq i8 %708, 0
  %710 = load i32, ptr @flag_finite_math_only, align 4
  %711 = icmp ne i32 %710, 0
  %712 = select i1 %709, i1 true, i1 %711
  br i1 %712, label %713, label %773

713:                                              ; preds = %701
  switch i8 %693, label %731 [
    i8 8, label %714
    i8 9, label %714
    i8 11, label %714
    i8 17, label %714
  ], !prof !284

714:                                              ; preds = %713, %713, %713, %713
  br i1 %696, label %719, label %715

715:                                              ; preds = %714
  %716 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %691
  %717 = load i8, ptr %716, align 1, !tbaa !159
  %718 = zext i8 %717 to i32
  br label %719

719:                                              ; preds = %714, %715
  %720 = phi i32 [ %718, %715 ], [ %690, %714 ]
  %721 = add nsw i32 %720, -38
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %722
  %724 = load ptr, ptr %723, align 8, !tbaa !148
  %725 = getelementptr inbounds %struct.real_format, ptr %724, i64 0, i32 14
  %726 = load i8, ptr %725, align 1, !tbaa !285
  %727 = icmp ne i8 %726, 0
  %728 = load i32, ptr @flag_signed_zeros, align 4
  %729 = icmp ne i32 %728, 0
  %730 = select i1 %727, i1 %729, i1 false
  br i1 %730, label %773, label %731

731:                                              ; preds = %719, %713, %686
  %732 = load ptr, ptr %26, align 8, !tbaa !277
  %733 = getelementptr inbounds %struct.rtx_def, ptr %681, i64 0, i32 1
  %734 = load ptr, ptr %733, align 8, !tbaa !159
  %735 = call i32 @rtx_equal_p(ptr noundef %732, ptr noundef %734) #17
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %743, label %737, !prof !286

737:                                              ; preds = %731
  %738 = load ptr, ptr %27, align 8, !tbaa !278
  %739 = getelementptr inbounds %struct.rtx_def, ptr %681, i64 0, i32 1, i32 0, i32 0, i64 1
  %740 = load ptr, ptr %739, align 8, !tbaa !159
  %741 = call i32 @rtx_equal_p(ptr noundef %738, ptr noundef %740) #17
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %754

743:                                              ; preds = %737, %731
  %744 = load ptr, ptr %26, align 8, !tbaa !277
  %745 = getelementptr inbounds %struct.rtx_def, ptr %681, i64 0, i32 1, i32 0, i32 0, i64 1
  %746 = load ptr, ptr %745, align 8, !tbaa !159
  %747 = call i32 @rtx_equal_p(ptr noundef %744, ptr noundef %746) #17
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %773, label %749, !prof !287

749:                                              ; preds = %743
  %750 = load ptr, ptr %27, align 8, !tbaa !278
  %751 = load ptr, ptr %733, align 8, !tbaa !159
  %752 = call i32 @rtx_equal_p(ptr noundef %750, ptr noundef %751) #17
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %773, label %754, !prof !288

754:                                              ; preds = %749, %737
  %755 = icmp eq i32 %683, 81
  %756 = load ptr, ptr %26, align 8
  %757 = load ptr, ptr %27, align 8
  %758 = select i1 %755, ptr %756, ptr %757
  %759 = load ptr, ptr %25, align 8, !tbaa !276
  %760 = call i32 @rtx_equal_p(ptr noundef %759, ptr noundef %758) #17
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %1348

762:                                              ; preds = %754
  %763 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  call void @start_sequence() #17
  %764 = load ptr, ptr %25, align 8, !tbaa !276
  call fastcc void @noce_emit_move_insn(ptr noundef %764, ptr noundef %758)
  %765 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %4)
  %766 = icmp eq ptr %765, null
  br i1 %766, label %773, label %767

767:                                              ; preds = %762
  %768 = load ptr, ptr %20, align 8, !tbaa !247
  %769 = load ptr, ptr %763, align 8, !tbaa !274
  %770 = getelementptr inbounds %struct.rtx_def, ptr %769, i64 0, i32 1, i32 0, i32 2
  %771 = load i32, ptr %770, align 8, !tbaa !159
  %772 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %765, ptr noundef %768, i32 noundef %771) #17
  br label %1348

773:                                              ; preds = %749, %743, %762, %701, %719, %680
  %774 = load ptr, ptr %27, align 8, !tbaa !278
  %775 = load i32, ptr %774, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 30
  br i1 %777, label %778, label %786, !prof !263

778:                                              ; preds = %773
  %779 = getelementptr inbounds %struct.rtx_def, ptr %774, i64 0, i32 1
  %780 = load i64, ptr %779, align 8, !tbaa !159
  %781 = icmp eq i64 %780, 1
  br i1 %781, label %782, label %786, !prof !289

782:                                              ; preds = %778
  %783 = load ptr, ptr %26, align 8, !tbaa !277
  %784 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %785 = icmp eq ptr %783, %784
  br i1 %785, label %803, label %786, !prof !290

786:                                              ; preds = %782, %778, %773
  %787 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %788 = icmp eq ptr %774, %787
  br i1 %788, label %789, label %823, !prof !291

789:                                              ; preds = %786
  %790 = load ptr, ptr %26, align 8, !tbaa !277
  %791 = load i32, ptr %790, align 8
  %792 = and i32 %791, 65535
  %793 = icmp eq i32 %792, 30
  br i1 %793, label %794, label %823, !prof !292

794:                                              ; preds = %789
  %795 = getelementptr inbounds %struct.rtx_def, ptr %790, i64 0, i32 1
  %796 = load i64, ptr %795, align 8, !tbaa !159
  %797 = icmp eq i64 %796, 1
  br i1 %797, label %798, label %823, !prof !293

798:                                              ; preds = %794
  %799 = load ptr, ptr %18, align 8, !tbaa !245
  %800 = load ptr, ptr %20, align 8, !tbaa !247
  %801 = call i32 @reversed_comparison_code(ptr noundef %799, ptr noundef %800) #17
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %823, label %803

803:                                              ; preds = %798, %782
  %804 = phi i32 [ 0, %782 ], [ 1, %798 ]
  call void @start_sequence() #17
  %805 = load ptr, ptr %25, align 8, !tbaa !276
  %806 = call fastcc ptr @noce_emit_store_flag(ptr noundef nonnull %4, ptr noundef %805, i32 noundef %804, i32 noundef 0)
  %807 = icmp eq ptr %806, null
  br i1 %807, label %822, label %808

808:                                              ; preds = %803
  %809 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  %810 = load ptr, ptr %25, align 8, !tbaa !276
  %811 = icmp eq ptr %806, %810
  br i1 %811, label %813, label %812

812:                                              ; preds = %808
  call fastcc void @noce_emit_move_insn(ptr noundef %810, ptr noundef nonnull %806)
  br label %813

813:                                              ; preds = %812, %808
  %814 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %4)
  %815 = icmp eq ptr %814, null
  br i1 %815, label %823, label %816

816:                                              ; preds = %813
  %817 = load ptr, ptr %20, align 8, !tbaa !247
  %818 = load ptr, ptr %809, align 8, !tbaa !274
  %819 = getelementptr inbounds %struct.rtx_def, ptr %818, i64 0, i32 1, i32 0, i32 2
  %820 = load i32, ptr %819, align 8, !tbaa !159
  %821 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %814, ptr noundef %817, i32 noundef %820) #17
  br label %1348

822:                                              ; preds = %803
  call void @end_sequence() #17
  br label %823

823:                                              ; preds = %822, %813, %798, %794, %789, %786
  %824 = load ptr, ptr %25, align 8, !tbaa !276
  %825 = load ptr, ptr %18, align 8, !tbaa !245
  %826 = load i32, ptr %825, align 8
  %827 = and i32 %826, 65535
  %828 = load ptr, ptr %27, align 8, !tbaa !278
  %829 = call i32 @rtx_equal_p(ptr noundef %824, ptr noundef %828) #17
  %830 = icmp eq i32 %829, 0
  %831 = add nsw i32 %827, -82
  %832 = icmp ult i32 %831, -2
  %833 = select i1 %830, i1 true, i1 %832, !prof !263
  br i1 %833, label %949, label %834, !prof !263

834:                                              ; preds = %823
  %835 = getelementptr inbounds %struct.rtx_def, ptr %825, i64 0, i32 1, i32 0, i32 0, i64 1
  %836 = load ptr, ptr %835, align 8, !tbaa !159
  %837 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %838 = icmp eq ptr %836, %837
  br i1 %838, label %839, label %949, !prof !267

839:                                              ; preds = %834
  %840 = getelementptr inbounds %struct.rtx_def, ptr %825, i64 0, i32 1
  %841 = load ptr, ptr %840, align 8, !tbaa !159
  %842 = load i32, ptr %841, align 8
  %843 = and i32 %842, 65535
  %844 = icmp eq i32 %843, 120
  br i1 %844, label %845, label %949

845:                                              ; preds = %839
  %846 = getelementptr inbounds %struct.rtx_def, ptr %841, i64 0, i32 1
  %847 = getelementptr inbounds %struct.rtx_def, ptr %841, i64 0, i32 1, i32 0, i32 0, i64 1
  %848 = load ptr, ptr %847, align 8, !tbaa !159
  %849 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !148
  %850 = icmp eq ptr %848, %849
  br i1 %850, label %851, label %949

851:                                              ; preds = %845
  %852 = getelementptr inbounds %struct.rtx_def, ptr %841, i64 0, i32 1, i32 0, i32 0, i64 2
  %853 = load ptr, ptr %852, align 8, !tbaa !159
  %854 = load i32, ptr %853, align 8
  %855 = and i32 %854, 65535
  %856 = icmp eq i32 %855, 30
  br i1 %856, label %857, label %949

857:                                              ; preds = %851
  %858 = load ptr, ptr %846, align 8, !tbaa !159
  %859 = call i32 @rtx_equal_p(ptr noundef %824, ptr noundef %858) #17
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %949, label %861

861:                                              ; preds = %857
  %862 = load ptr, ptr %852, align 8, !tbaa !159
  %863 = getelementptr inbounds %struct.rtx_def, ptr %862, i64 0, i32 1
  %864 = load i64, ptr %863, align 8, !tbaa !159
  %865 = load i32, ptr %824, align 8
  %866 = lshr i32 %865, 16
  %867 = and i32 %866, 255
  %868 = and i64 %864, 4294967232
  %869 = icmp eq i64 %868, 0
  br i1 %869, label %870, label %949

870:                                              ; preds = %861
  %871 = load ptr, ptr %26, align 8, !tbaa !277
  %872 = load i32, ptr %871, align 8
  %873 = trunc i32 %872 to i16
  switch i16 %873, label %949 [
    i16 62, label %874
    i16 63, label %874
    i16 61, label %910
  ]

874:                                              ; preds = %870, %870
  %875 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1
  %876 = load ptr, ptr %875, align 8, !tbaa !159
  %877 = call i32 @rtx_equal_p(ptr noundef nonnull %824, ptr noundef %876) #17
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %949, label %879

879:                                              ; preds = %874
  %880 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1, i32 0, i32 0, i64 1
  %881 = load ptr, ptr %880, align 8, !tbaa !159
  %882 = load i32, ptr %881, align 8
  %883 = and i32 %882, 65535
  %884 = icmp eq i32 %883, 30
  br i1 %884, label %885, label %949

885:                                              ; preds = %879
  %886 = getelementptr inbounds %struct.rtx_def, ptr %881, i64 0, i32 1
  %887 = load i64, ptr %886, align 8, !tbaa !159
  %888 = zext nneg i32 %867 to i64
  %889 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %888
  %890 = load i64, ptr %889, align 8, !tbaa !294
  %891 = and i64 %890, %887
  %892 = and i64 %864, 63
  %893 = shl nuw i64 1, %892
  %894 = icmp eq i64 %891, %893
  br i1 %894, label %895, label %949

895:                                              ; preds = %885
  %896 = load i32, ptr %871, align 8
  %897 = and i32 %896, 65535
  %898 = icmp eq i32 %897, 62
  %899 = icmp eq i32 %827, 80
  br i1 %898, label %900, label %902

900:                                              ; preds = %895
  %901 = select i1 %899, ptr %871, ptr null
  br label %936

902:                                              ; preds = %895
  br i1 %899, label %903, label %906

903:                                              ; preds = %902
  %904 = call ptr @gen_int_mode(i64 noundef %893, i32 noundef %867) #17
  %905 = call ptr @simplify_gen_binary(i32 noundef 62, i32 noundef %867, ptr noundef nonnull %824, ptr noundef %904) #17
  br label %936

906:                                              ; preds = %902
  %907 = xor i64 %893, -1
  %908 = call ptr @gen_int_mode(i64 noundef %907, i32 noundef %867) #17
  %909 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %867, ptr noundef nonnull %824, ptr noundef %908) #17
  br label %936

910:                                              ; preds = %870
  %911 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1
  %912 = load ptr, ptr %911, align 8, !tbaa !159
  %913 = call i32 @rtx_equal_p(ptr noundef nonnull %824, ptr noundef %912) #17
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %949, label %915

915:                                              ; preds = %910
  %916 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1, i32 0, i32 0, i64 1
  %917 = load ptr, ptr %916, align 8, !tbaa !159
  %918 = load i32, ptr %917, align 8
  %919 = and i32 %918, 65535
  %920 = icmp eq i32 %919, 30
  br i1 %920, label %921, label %949

921:                                              ; preds = %915
  %922 = getelementptr inbounds %struct.rtx_def, ptr %917, i64 0, i32 1
  %923 = load i64, ptr %922, align 8, !tbaa !159
  %924 = zext nneg i32 %867 to i64
  %925 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %924
  %926 = load i64, ptr %925, align 8, !tbaa !294
  %927 = and i64 %864, 63
  %928 = shl nuw i64 1, %927
  %929 = xor i64 %928, %923
  %930 = xor i64 %929, -1
  %931 = and i64 %926, %930
  %932 = icmp eq i64 %931, 0
  br i1 %932, label %933, label %949

933:                                              ; preds = %921
  %934 = icmp eq i32 %827, 81
  %935 = select i1 %934, ptr %871, ptr null
  br label %936

936:                                              ; preds = %933, %906, %903, %900
  %937 = phi ptr [ %901, %900 ], [ %905, %903 ], [ %909, %906 ], [ %935, %933 ]
  %938 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  %939 = icmp eq ptr %937, null
  br i1 %939, label %1348, label %940

940:                                              ; preds = %936
  call void @start_sequence() #17
  call fastcc void @noce_emit_move_insn(ptr noundef nonnull %824, ptr noundef nonnull %937)
  %941 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %4)
  %942 = icmp eq ptr %941, null
  br i1 %942, label %949, label %943

943:                                              ; preds = %940
  %944 = load ptr, ptr %20, align 8, !tbaa !247
  %945 = load ptr, ptr %938, align 8, !tbaa !274
  %946 = getelementptr inbounds %struct.rtx_def, ptr %945, i64 0, i32 1, i32 0, i32 2
  %947 = load i32, ptr %946, align 8, !tbaa !159
  %948 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %941, ptr noundef %944, i32 noundef %947) #17
  br label %1348

949:                                              ; preds = %874, %940, %870, %910, %915, %921, %879, %885, %839, %861, %845, %851, %857, %834, %823
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %950 = load ptr, ptr %25, align 8, !tbaa !276
  %951 = load i32, ptr %950, align 8
  %952 = lshr i32 %951, 16
  %953 = and i32 %952, 255
  %954 = zext nneg i32 %953 to i64
  %955 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %954
  %956 = load i8, ptr %955, align 1, !tbaa !159
  switch i8 %956, label %994 [
    i8 8, label %957
    i8 9, label %957
    i8 11, label %957
    i8 17, label %957
  ], !prof !295

957:                                              ; preds = %949, %949, %949, %949
  %958 = and i8 %956, -2
  %959 = icmp eq i8 %958, 8
  br i1 %959, label %964, label %960

960:                                              ; preds = %957
  %961 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %954
  %962 = load i8, ptr %961, align 1, !tbaa !159
  %963 = zext i8 %962 to i32
  br label %964

964:                                              ; preds = %957, %960
  %965 = phi i32 [ %963, %960 ], [ %953, %957 ]
  %966 = add nsw i32 %965, -38
  %967 = zext i32 %966 to i64
  %968 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %967
  %969 = load ptr, ptr %968, align 8, !tbaa !148
  %970 = getelementptr inbounds %struct.real_format, ptr %969, i64 0, i32 14
  %971 = load i8, ptr %970, align 1, !tbaa !285
  %972 = icmp ne i8 %971, 0
  %973 = load i32, ptr @flag_signed_zeros, align 4
  %974 = icmp ne i32 %973, 0
  %975 = select i1 %972, i1 %974, i1 false
  br i1 %975, label %1063, label %976

976:                                              ; preds = %964
  switch i8 %956, label %994 [
    i8 8, label %977
    i8 9, label %977
    i8 11, label %977
    i8 17, label %977
  ], !prof !296

977:                                              ; preds = %976, %976, %976, %976
  br i1 %959, label %982, label %978

978:                                              ; preds = %977
  %979 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %954
  %980 = load i8, ptr %979, align 1, !tbaa !159
  %981 = zext i8 %980 to i32
  br label %982

982:                                              ; preds = %977, %978
  %983 = phi i32 [ %981, %978 ], [ %953, %977 ]
  %984 = add nsw i32 %983, -38
  %985 = zext i32 %984 to i64
  %986 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %985
  %987 = load ptr, ptr %986, align 8, !tbaa !148
  %988 = getelementptr inbounds %struct.real_format, ptr %987, i64 0, i32 11
  %989 = load i8, ptr %988, align 2, !tbaa !282
  %990 = icmp eq i8 %989, 0
  %991 = load i32, ptr @flag_finite_math_only, align 4
  %992 = icmp ne i32 %991, 0
  %993 = select i1 %990, i1 true, i1 %992
  br i1 %993, label %994, label %1063

994:                                              ; preds = %982, %976, %949
  %995 = load ptr, ptr %26, align 8, !tbaa !277
  %996 = call fastcc ptr @noce_get_alt_condition(ptr noundef nonnull %4, ptr noundef %995, ptr noundef nonnull %2)
  %997 = icmp eq ptr %996, null
  br i1 %997, label %1063, label %998, !prof !297

998:                                              ; preds = %994
  %999 = load i32, ptr %996, align 8
  %1000 = and i32 %999, 65535
  %1001 = getelementptr inbounds %struct.rtx_def, ptr %996, i64 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !159
  %1003 = load ptr, ptr %26, align 8, !tbaa !277
  %1004 = call i32 @rtx_equal_p(ptr noundef %1002, ptr noundef %1003) #17
  %1005 = icmp eq i32 %1004, 0
  %1006 = getelementptr inbounds %struct.rtx_def, ptr %996, i64 0, i32 1, i32 0, i32 0, i64 1
  %1007 = load ptr, ptr %1006, align 8, !tbaa !159
  br i1 %1005, label %1012, label %1008, !prof !288

1008:                                             ; preds = %998
  %1009 = load ptr, ptr %27, align 8, !tbaa !278
  %1010 = call i32 @rtx_equal_p(ptr noundef %1007, ptr noundef %1009) #17
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1063, label %1023

1012:                                             ; preds = %998
  %1013 = load ptr, ptr %26, align 8, !tbaa !277
  %1014 = call i32 @rtx_equal_p(ptr noundef %1007, ptr noundef %1013) #17
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1063, label %1016, !prof !298

1016:                                             ; preds = %1012
  %1017 = load ptr, ptr %1001, align 8, !tbaa !159
  %1018 = load ptr, ptr %27, align 8, !tbaa !278
  %1019 = call i32 @rtx_equal_p(ptr noundef %1017, ptr noundef %1018) #17
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1063, label %1021, !prof !288

1021:                                             ; preds = %1016
  %1022 = call i32 @swap_condition(i32 noundef %1000) #17
  br label %1023

1023:                                             ; preds = %1021, %1008
  %1024 = phi i32 [ %1000, %1008 ], [ %1022, %1021 ]
  %1025 = add i32 %1024, -82
  %1026 = icmp ult i32 %1025, 15
  br i1 %1026, label %1027, label %1063

1027:                                             ; preds = %1023
  %1028 = trunc i32 %1025 to i16
  %1029 = lshr i16 30975, %1028
  %1030 = and i16 %1029, 1
  %1031 = icmp eq i16 %1030, 0
  br i1 %1031, label %1063, label %1032

1032:                                             ; preds = %1027
  %1033 = zext nneg i32 %1025 to i64
  %1034 = getelementptr inbounds [15 x i32], ptr @switch.table.if_convert, i64 0, i64 %1033
  %1035 = load i32, ptr %1034, align 4
  %1036 = zext nneg i32 %1025 to i64
  %1037 = getelementptr inbounds [15 x i32], ptr @switch.table.if_convert.30, i64 0, i64 %1036
  %1038 = load i32, ptr %1037, align 4
  call void @start_sequence() #17
  %1039 = load ptr, ptr %25, align 8, !tbaa !276
  %1040 = load i32, ptr %1039, align 8
  %1041 = lshr i32 %1040, 16
  %1042 = and i32 %1041, 255
  %1043 = load ptr, ptr %26, align 8, !tbaa !277
  %1044 = load ptr, ptr %27, align 8, !tbaa !278
  %1045 = call ptr @expand_simple_binop(i32 noundef %1042, i32 noundef %1035, ptr noundef %1043, ptr noundef %1044, ptr noundef nonnull %1039, i32 noundef %1038, i32 noundef 2) #17
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1047, label %1048

1047:                                             ; preds = %1032
  call void @end_sequence() #17
  br label %1063

1048:                                             ; preds = %1032
  %1049 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  %1050 = load ptr, ptr %25, align 8, !tbaa !276
  %1051 = icmp eq ptr %1045, %1050
  br i1 %1051, label %1053, label %1052

1052:                                             ; preds = %1048
  call fastcc void @noce_emit_move_insn(ptr noundef %1050, ptr noundef nonnull %1045)
  br label %1053

1053:                                             ; preds = %1052, %1048
  %1054 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %4)
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1063, label %1056

1056:                                             ; preds = %1053
  %1057 = load ptr, ptr %20, align 8, !tbaa !247
  %1058 = load ptr, ptr %1049, align 8, !tbaa !274
  %1059 = getelementptr inbounds %struct.rtx_def, ptr %1058, i64 0, i32 1, i32 0, i32 2
  %1060 = load i32, ptr %1059, align 8, !tbaa !159
  %1061 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %1054, ptr noundef %1057, i32 noundef %1060) #17
  store ptr %996, ptr %18, align 8, !tbaa !245
  %1062 = load ptr, ptr %2, align 8, !tbaa !148
  store ptr %1062, ptr %19, align 8, !tbaa !246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %1348

1063:                                             ; preds = %1027, %1023, %964, %982, %994, %1008, %1012, %1016, %1047, %1053
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %1064 = load ptr, ptr %25, align 8, !tbaa !276
  %1065 = load i32, ptr %1064, align 8
  %1066 = lshr i32 %1065, 16
  %1067 = and i32 %1066, 255
  %1068 = zext nneg i32 %1067 to i64
  %1069 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1068
  %1070 = load i8, ptr %1069, align 1, !tbaa !159
  switch i8 %1070, label %1090 [
    i8 8, label %1071
    i8 9, label %1071
    i8 11, label %1071
    i8 17, label %1071
  ], !prof !296

1071:                                             ; preds = %1063, %1063, %1063, %1063
  %1072 = and i8 %1070, -2
  %1073 = icmp eq i8 %1072, 8
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1071
  %1075 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1068
  %1076 = load i8, ptr %1075, align 1, !tbaa !159
  %1077 = zext i8 %1076 to i32
  br label %1078

1078:                                             ; preds = %1071, %1074
  %1079 = phi i32 [ %1077, %1074 ], [ %1067, %1071 ]
  %1080 = add nsw i32 %1079, -38
  %1081 = zext i32 %1080 to i64
  %1082 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1081
  %1083 = load ptr, ptr %1082, align 8, !tbaa !148
  %1084 = getelementptr inbounds %struct.real_format, ptr %1083, i64 0, i32 14
  %1085 = load i8, ptr %1084, align 1, !tbaa !285
  %1086 = icmp ne i8 %1085, 0
  %1087 = load i32, ptr @flag_signed_zeros, align 4
  %1088 = icmp ne i32 %1087, 0
  %1089 = select i1 %1086, i1 %1088, i1 false
  br i1 %1089, label %1277, label %1090

1090:                                             ; preds = %1078, %1063
  %1091 = load ptr, ptr %26, align 8, !tbaa !277
  %1092 = load ptr, ptr %27, align 8, !tbaa !278
  %1093 = load i32, ptr %1091, align 8
  %1094 = and i32 %1093, 65535
  %1095 = icmp eq i32 %1094, 51
  br i1 %1095, label %1096, label %1101, !prof !262

1096:                                             ; preds = %1090
  %1097 = getelementptr inbounds %struct.rtx_def, ptr %1091, i64 0, i32 1
  %1098 = load ptr, ptr %1097, align 8, !tbaa !159
  %1099 = call i32 @rtx_equal_p(ptr noundef %1098, ptr noundef %1092) #17
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1128

1101:                                             ; preds = %1096, %1090
  %1102 = load i32, ptr %1092, align 8
  %1103 = and i32 %1102, 65535
  %1104 = icmp eq i32 %1103, 51
  br i1 %1104, label %1105, label %1110, !prof !262

1105:                                             ; preds = %1101
  %1106 = getelementptr inbounds %struct.rtx_def, ptr %1092, i64 0, i32 1
  %1107 = load ptr, ptr %1106, align 8, !tbaa !159
  %1108 = call i32 @rtx_equal_p(ptr noundef %1107, ptr noundef nonnull %1091) #17
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1110, label %1128

1110:                                             ; preds = %1105, %1101
  %1111 = load i32, ptr %1091, align 8
  %1112 = and i32 %1111, 65535
  %1113 = icmp eq i32 %1112, 64
  br i1 %1113, label %1114, label %1119, !prof !262

1114:                                             ; preds = %1110
  %1115 = getelementptr inbounds %struct.rtx_def, ptr %1091, i64 0, i32 1
  %1116 = load ptr, ptr %1115, align 8, !tbaa !159
  %1117 = call i32 @rtx_equal_p(ptr noundef %1116, ptr noundef nonnull %1092) #17
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1119, label %1128

1119:                                             ; preds = %1114, %1110
  %1120 = load i32, ptr %1092, align 8
  %1121 = and i32 %1120, 65535
  %1122 = icmp eq i32 %1121, 64
  br i1 %1122, label %1123, label %1277, !prof !262

1123:                                             ; preds = %1119
  %1124 = getelementptr inbounds %struct.rtx_def, ptr %1092, i64 0, i32 1
  %1125 = load ptr, ptr %1124, align 8, !tbaa !159
  %1126 = call i32 @rtx_equal_p(ptr noundef %1125, ptr noundef nonnull %1091) #17
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1277, label %1128

1128:                                             ; preds = %1123, %1114, %1105, %1096
  %1129 = phi ptr [ %1092, %1096 ], [ %1091, %1105 ], [ %1092, %1114 ], [ %1091, %1123 ]
  %1130 = phi i32 [ 1, %1096 ], [ 0, %1105 ], [ 1, %1114 ], [ 0, %1123 ]
  %1131 = phi i32 [ 0, %1096 ], [ 1, %1105 ], [ 0, %1114 ], [ 1, %1123 ]
  %1132 = phi i1 [ true, %1096 ], [ true, %1105 ], [ false, %1114 ], [ false, %1123 ]
  %1133 = call fastcc ptr @noce_get_alt_condition(ptr noundef nonnull %4, ptr noundef %1129, ptr noundef nonnull %1)
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1277, label %1135

1135:                                             ; preds = %1128
  %1136 = getelementptr inbounds %struct.rtx_def, ptr %1133, i64 0, i32 1
  %1137 = load ptr, ptr %1136, align 8, !tbaa !159
  %1138 = call i32 @rtx_equal_p(ptr noundef %1137, ptr noundef %1129) #17
  %1139 = icmp eq i32 %1138, 0
  %1140 = getelementptr inbounds %struct.rtx_def, ptr %1133, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %1139, label %1141, label %1145

1141:                                             ; preds = %1135
  %1142 = load ptr, ptr %1140, align 8, !tbaa !159
  %1143 = call i32 @rtx_equal_p(ptr noundef %1142, ptr noundef %1129) #17
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1277, label %1145

1145:                                             ; preds = %1135, %1141
  %1146 = phi ptr [ %1136, %1141 ], [ %1140, %1135 ]
  %1147 = phi i32 [ %1130, %1141 ], [ %1131, %1135 ]
  %1148 = load ptr, ptr %1146, align 8, !tbaa !159
  %1149 = load i32, ptr %1148, align 8
  %1150 = and i32 %1149, 65535
  %1151 = icmp eq i32 %1150, 37
  br i1 %1151, label %1152, label %1194

1152:                                             ; preds = %1145
  %1153 = load ptr, ptr %1, align 8, !tbaa !148
  %1154 = call ptr @prev_nonnote_insn(ptr noundef %1153) #17
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1191, label %1156

1156:                                             ; preds = %1152
  %1157 = getelementptr inbounds %struct.rtx_def, ptr %1154, i64 0, i32 1, i32 0, i32 1
  %1158 = load ptr, ptr %1157, align 8, !tbaa !159
  %1159 = load ptr, ptr %1, align 8, !tbaa !148
  %1160 = getelementptr inbounds %struct.rtx_def, ptr %1159, i64 0, i32 1, i32 0, i32 1
  %1161 = load ptr, ptr %1160, align 8, !tbaa !159
  %1162 = icmp eq ptr %1158, %1161
  br i1 %1162, label %1163, label %1191

1163:                                             ; preds = %1156
  %1164 = load i32, ptr %1154, align 8
  %1165 = and i32 %1164, 65535
  %1166 = add nsw i32 %1165, -7
  %1167 = icmp ult i32 %1166, 4
  br i1 %1167, label %1168, label %1176

1168:                                             ; preds = %1163
  %1169 = getelementptr inbounds %struct.rtx_def, ptr %1154, i64 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !159
  %1171 = load i32, ptr %1170, align 8
  %1172 = and i32 %1171, 65535
  %1173 = icmp eq i32 %1172, 23
  br i1 %1173, label %1176, label %1174

1174:                                             ; preds = %1168
  %1175 = call ptr @single_set_2(ptr noundef nonnull %1154, ptr noundef nonnull %1170) #17
  br label %1176

1176:                                             ; preds = %1174, %1168, %1163
  %1177 = phi ptr [ %1175, %1174 ], [ null, %1163 ], [ %1170, %1168 ]
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1191, label %1179

1179:                                             ; preds = %1176
  %1180 = getelementptr inbounds %struct.rtx_def, ptr %1177, i64 0, i32 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !159
  %1182 = call i32 @rtx_equal_p(ptr noundef %1181, ptr noundef nonnull %1148) #17
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1191, label %1184

1184:                                             ; preds = %1179
  %1185 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %1154) #17
  %1186 = icmp eq ptr %1185, null
  %1187 = getelementptr inbounds %struct.rtx_def, ptr %1185, i64 0, i32 1
  %1188 = getelementptr inbounds %struct.rtx_def, ptr %1177, i64 0, i32 1, i32 0, i32 0, i64 1
  %1189 = select i1 %1186, ptr %1188, ptr %1187
  %1190 = load ptr, ptr %1189, align 8, !tbaa !159
  br label %1191

1191:                                             ; preds = %1184, %1179, %1176, %1156, %1152
  %1192 = phi ptr [ %1190, %1184 ], [ %1148, %1179 ], [ %1148, %1176 ], [ %1148, %1156 ], [ %1148, %1152 ]
  %1193 = phi i1 [ true, %1184 ], [ false, %1179 ], [ false, %1176 ], [ false, %1156 ], [ false, %1152 ]
  br i1 %1193, label %1194, label %1277

1194:                                             ; preds = %1191, %1145
  %1195 = phi ptr [ %1192, %1191 ], [ %1148, %1145 ]
  %1196 = load i32, ptr %1195, align 8
  %1197 = and i32 %1196, 65535
  %1198 = icmp eq i32 %1197, 43
  br i1 %1198, label %1199, label %1207

1199:                                             ; preds = %1194
  %1200 = getelementptr inbounds %struct.rtx_def, ptr %1195, i64 0, i32 1
  %1201 = load ptr, ptr %1200, align 8, !tbaa !159
  %1202 = load i32, ptr %1201, align 8
  %1203 = and i32 %1202, 67174399
  %1204 = icmp eq i32 %1203, 67108909
  br i1 %1204, label %1205, label %1207

1205:                                             ; preds = %1199
  %1206 = call ptr @get_pool_constant(ptr noundef nonnull %1201) #17
  br label %1207

1207:                                             ; preds = %1205, %1199, %1194
  %1208 = phi ptr [ %1206, %1205 ], [ %1195, %1199 ], [ %1195, %1194 ]
  %1209 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !148
  %1210 = icmp eq ptr %1208, %1209
  br i1 %1210, label %1211, label %1215

1211:                                             ; preds = %1207
  %1212 = load i32, ptr %1133, align 8
  %1213 = and i32 %1212, 65535
  %1214 = icmp eq i32 %1213, 83
  br i1 %1214, label %1230, label %1215

1215:                                             ; preds = %1211, %1207
  %1216 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !148
  %1217 = icmp eq ptr %1208, %1216
  br i1 %1217, label %1218, label %1222

1218:                                             ; preds = %1215
  %1219 = load i32, ptr %1133, align 8
  %1220 = and i32 %1219, 65535
  %1221 = icmp eq i32 %1220, 85
  br i1 %1221, label %1230, label %1222

1222:                                             ; preds = %1218, %1215
  %1223 = load i32, ptr %1129, align 8
  %1224 = lshr i32 %1223, 16
  %1225 = and i32 %1224, 255
  %1226 = zext nneg i32 %1225 to i64
  %1227 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %1226
  %1228 = load ptr, ptr %1227, align 8, !tbaa !148
  %1229 = icmp eq ptr %1208, %1228
  br i1 %1229, label %1230, label %1277

1230:                                             ; preds = %1222, %1218, %1211
  %1231 = load i32, ptr %1133, align 8
  %1232 = trunc i32 %1231 to i16
  switch i16 %1232, label %1277 [
    i16 85, label %1233
    i16 84, label %1233
    i16 96, label %1233
    i16 95, label %1233
    i16 83, label %1236
    i16 82, label %1236
    i16 94, label %1236
    i16 93, label %1236
  ]

1233:                                             ; preds = %1230, %1230, %1230, %1230
  %1234 = icmp eq i32 %1147, 0
  %1235 = zext i1 %1234 to i32
  br label %1236

1236:                                             ; preds = %1233, %1230, %1230, %1230, %1230
  %1237 = phi i32 [ %1147, %1230 ], [ %1235, %1233 ], [ %1147, %1230 ], [ %1147, %1230 ], [ %1147, %1230 ]
  call void @start_sequence() #17
  %1238 = load ptr, ptr %25, align 8, !tbaa !276
  %1239 = load i32, ptr %1238, align 8
  %1240 = lshr i32 %1239, 16
  %1241 = and i32 %1240, 255
  br i1 %1132, label %1244, label %1242

1242:                                             ; preds = %1236
  %1243 = call ptr @expand_one_cmpl_abs_nojump(i32 noundef %1241, ptr noundef %1129, ptr noundef nonnull %1238) #17
  br label %1246

1244:                                             ; preds = %1236
  %1245 = call ptr @expand_abs_nojump(i32 noundef %1241, ptr noundef %1129, ptr noundef nonnull %1238, i32 noundef 1) #17
  br label %1246

1246:                                             ; preds = %1244, %1242
  %1247 = phi ptr [ %1243, %1242 ], [ %1245, %1244 ]
  %1248 = icmp ne ptr %1247, null
  %1249 = icmp ne i32 %1237, 0
  %1250 = and i1 %1249, %1248
  br i1 %1250, label %1251, label %1258

1251:                                             ; preds = %1246
  %1252 = load i32, ptr %1247, align 8
  %1253 = lshr i32 %1252, 16
  %1254 = and i32 %1253, 255
  %1255 = load ptr, ptr %25, align 8, !tbaa !276
  %1256 = select i1 %1132, i32 51, i32 64
  %1257 = call ptr @expand_simple_unop(i32 noundef %1254, i32 noundef %1256, ptr noundef nonnull %1247, ptr noundef %1255, i32 noundef 0) #17
  br label %1258

1258:                                             ; preds = %1251, %1246
  %1259 = phi ptr [ %1247, %1246 ], [ %1257, %1251 ]
  %1260 = icmp eq ptr %1259, null
  br i1 %1260, label %1261, label %1262

1261:                                             ; preds = %1258
  call void @end_sequence() #17
  br label %1277

1262:                                             ; preds = %1258
  %1263 = getelementptr inbounds %struct.noce_if_info, ptr %4, i64 0, i32 7
  %1264 = load ptr, ptr %25, align 8, !tbaa !276
  %1265 = icmp eq ptr %1259, %1264
  br i1 %1265, label %1267, label %1266

1266:                                             ; preds = %1262
  call fastcc void @noce_emit_move_insn(ptr noundef %1264, ptr noundef nonnull %1259)
  br label %1267

1267:                                             ; preds = %1266, %1262
  %1268 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %4)
  %1269 = icmp eq ptr %1268, null
  br i1 %1269, label %1277, label %1270

1270:                                             ; preds = %1267
  %1271 = load ptr, ptr %20, align 8, !tbaa !247
  %1272 = load ptr, ptr %1263, align 8, !tbaa !274
  %1273 = getelementptr inbounds %struct.rtx_def, ptr %1272, i64 0, i32 1, i32 0, i32 2
  %1274 = load i32, ptr %1273, align 8, !tbaa !159
  %1275 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %1268, ptr noundef %1271, i32 noundef %1274) #17
  store ptr %1133, ptr %18, align 8, !tbaa !245
  %1276 = load ptr, ptr %1, align 8, !tbaa !148
  store ptr %1276, ptr %19, align 8, !tbaa !246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  br label %1348

1277:                                             ; preds = %1078, %1119, %1123, %1128, %1141, %1191, %1222, %1230, %1261, %1267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %1278 = load ptr, ptr %26, align 8, !tbaa !277
  %1279 = load i32, ptr %1278, align 8
  %1280 = and i32 %1279, 65535
  %1281 = zext nneg i32 %1280 to i64
  %1282 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1281
  %1283 = load i32, ptr %1282, align 4, !tbaa !163
  %1284 = icmp eq i32 %1283, 9
  br i1 %1284, label %1288, label %1285, !prof !263

1285:                                             ; preds = %1277
  %1286 = call i32 @register_operand(ptr noundef nonnull %1278, i32 noundef 0) #17
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1326, label %1288, !prof !269

1288:                                             ; preds = %1285, %1277
  %1289 = load ptr, ptr %27, align 8, !tbaa !278
  %1290 = load i32, ptr %1289, align 8
  %1291 = and i32 %1290, 65535
  %1292 = zext nneg i32 %1291 to i64
  %1293 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1292
  %1294 = load i32, ptr %1293, align 4, !tbaa !163
  %1295 = icmp eq i32 %1294, 9
  br i1 %1295, label %1299, label %1296, !prof !265

1296:                                             ; preds = %1288
  %1297 = call i32 @register_operand(ptr noundef nonnull %1289, i32 noundef 0) #17
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1326, label %1299

1299:                                             ; preds = %1296, %1288
  call void @start_sequence() #17
  %1300 = load ptr, ptr %18, align 8, !tbaa !245
  %1301 = load i32, ptr %1300, align 8
  %1302 = and i32 %1301, 65535
  %1303 = load ptr, ptr %25, align 8, !tbaa !276
  %1304 = getelementptr inbounds %struct.rtx_def, ptr %1300, i64 0, i32 1
  %1305 = load ptr, ptr %1304, align 8, !tbaa !159
  %1306 = getelementptr inbounds %struct.rtx_def, ptr %1300, i64 0, i32 1, i32 0, i32 0, i64 1
  %1307 = load ptr, ptr %1306, align 8, !tbaa !159
  %1308 = load ptr, ptr %26, align 8, !tbaa !277
  %1309 = load ptr, ptr %27, align 8, !tbaa !278
  %1310 = call fastcc ptr @noce_emit_cmove(ptr noundef nonnull %4, ptr noundef %1303, i32 noundef %1302, ptr noundef %1305, ptr noundef %1307, ptr noundef %1308, ptr noundef %1309)
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1325, label %1312, !prof !254

1312:                                             ; preds = %1299
  %1313 = load ptr, ptr %25, align 8, !tbaa !276
  %1314 = icmp eq ptr %1310, %1313
  br i1 %1314, label %1316, label %1315, !prof !265

1315:                                             ; preds = %1312
  call fastcc void @noce_emit_move_insn(ptr noundef %1313, ptr noundef nonnull %1310)
  br label %1316

1316:                                             ; preds = %1315, %1312
  %1317 = call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %4)
  %1318 = icmp eq ptr %1317, null
  br i1 %1318, label %1326, label %1319, !prof !254

1319:                                             ; preds = %1316
  %1320 = load ptr, ptr %20, align 8, !tbaa !247
  %1321 = load ptr, ptr %28, align 8, !tbaa !274
  %1322 = getelementptr inbounds %struct.rtx_def, ptr %1321, i64 0, i32 1, i32 0, i32 2
  %1323 = load i32, ptr %1322, align 8, !tbaa !159
  %1324 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %1317, ptr noundef %1320, i32 noundef %1323) #17
  br label %1348

1325:                                             ; preds = %1299
  call void @end_sequence() #17
  br label %1326

1326:                                             ; preds = %1325, %1316, %1296, %1285
  %1327 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !299
  %1328 = call zeroext i8 %1327() #17, !prof !311
  %1329 = icmp eq i8 %1328, 0
  br i1 %1329, label %1330, label %1345, !prof !269

1330:                                             ; preds = %1326
  %1331 = call fastcc i32 @noce_try_store_flag_constants(ptr noundef nonnull %4), !range !270
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1333, label %1348, !prof !269

1333:                                             ; preds = %1330
  %1334 = call fastcc i32 @noce_try_addcc(ptr noundef nonnull %4)
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1336, label %1348, !prof !269

1336:                                             ; preds = %1333
  %1337 = call fastcc i32 @noce_try_store_flag_mask(ptr noundef nonnull %4), !range !270
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1339, label %1348, !prof !269

1339:                                             ; preds = %1336
  %1340 = call fastcc i32 @noce_try_cmove_arith(ptr noundef nonnull %4)
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1342, label %1348, !prof !269

1342:                                             ; preds = %1339
  %1343 = call fastcc i32 @noce_try_sign_mask(ptr noundef nonnull %4), !range !270
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1345, label %1348, !prof !269

1345:                                             ; preds = %1342, %1326
  %1346 = icmp eq ptr %356, null
  %1347 = and i1 %1346, %669
  br i1 %1347, label %640, label %1390, !prof !267

1348:                                             ; preds = %936, %754, %1342, %1339, %1336, %1333, %1330, %1319, %1270, %1056, %943, %816, %767, %665, %664, %663, %658
  %1349 = phi ptr [ %426, %658 ], [ %426, %663 ], [ %426, %664 ], [ %426, %665 ], [ %608, %767 ], [ %608, %816 ], [ %608, %943 ], [ %608, %1056 ], [ %608, %1270 ], [ %608, %1319 ], [ %608, %1330 ], [ %608, %1333 ], [ %608, %1336 ], [ %608, %1339 ], [ %608, %1342 ], [ %608, %754 ], [ %608, %936 ]
  %1350 = icmp eq ptr %426, %1349
  br i1 %1350, label %1360, label %1351, !prof !265

1351:                                             ; preds = %1348
  call void @start_sequence() #17
  call fastcc void @noce_emit_move_insn(ptr noundef nonnull %426, ptr noundef %1349)
  %1352 = call ptr @get_insns() #17
  call void @set_used_flags(ptr noundef nonnull %426) #17
  call void @unshare_all_rtl_in_chain(ptr noundef %1352) #17
  call void @end_sequence() #17
  %1353 = getelementptr inbounds %struct.basic_block_def, ptr %354, i64 0, i32 7
  %1354 = load ptr, ptr %1353, align 8, !tbaa !159
  %1355 = getelementptr inbounds %struct.rtl_bb_info, ptr %1354, i64 0, i32 1
  %1356 = load ptr, ptr %1355, align 8, !tbaa !238
  %1357 = getelementptr inbounds %struct.rtx_def, ptr %388, i64 0, i32 1, i32 0, i32 2
  %1358 = load i32, ptr %1357, align 8, !tbaa !159
  %1359 = call ptr @emit_insn_before_setloc(ptr noundef %1352, ptr noundef %1356, i32 noundef %1358) #17
  br label %1360

1360:                                             ; preds = %1351, %1348
  br i1 %429, label %1361, label %1364, !prof !265

1361:                                             ; preds = %1360
  call void @delete_basic_block(ptr noundef nonnull %356) #17
  %1362 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %1363 = add nsw i32 %1362, 1
  store i32 %1363, ptr @num_true_changes, align 4, !tbaa !163
  br label %1366

1364:                                             ; preds = %1360
  %1365 = call ptr @find_edge(ptr noundef %354, ptr noundef %357) #17
  call void @remove_edge(ptr noundef %1365) #17
  br label %1366

1366:                                             ; preds = %1364, %1361
  %1367 = call ptr @find_edge(ptr noundef %355, ptr noundef %357) #17
  call void @remove_edge(ptr noundef %1367) #17
  %1368 = getelementptr inbounds %struct.basic_block_def, ptr %354, i64 0, i32 1
  %1369 = load ptr, ptr %1368, align 8, !tbaa !189
  %1370 = icmp eq ptr %1369, null
  br i1 %1370, label %1374, label %1371, !prof !254

1371:                                             ; preds = %1366
  %1372 = load i32, ptr %1369, align 8, !tbaa !191
  %1373 = icmp eq i32 %1372, 1
  br i1 %1373, label %1375, label %1374, !prof !265

1374:                                             ; preds = %1371, %1366
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1375

1375:                                             ; preds = %1374, %1371
  %1376 = load ptr, ptr %1368, align 8, !tbaa !189
  %1377 = getelementptr inbounds %struct.VEC_edge_base, ptr %1376, i64 0, i32 2, i64 0
  %1378 = load ptr, ptr %1377, align 8, !tbaa !148
  %1379 = call ptr @redirect_edge_and_branch_force(ptr noundef %1378, ptr noundef %357) #17
  call void @delete_basic_block(ptr noundef %355) #17
  %1380 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %1381 = add nsw i32 %1380, 1
  store i32 %1381, ptr @num_true_changes, align 4, !tbaa !163
  %1382 = call zeroext i8 @can_merge_blocks_p(ptr noundef %354, ptr noundef %357) #17
  %1383 = icmp eq i8 %1382, 0
  br i1 %1383, label %1387, label %1384, !prof !265

1384:                                             ; preds = %1375
  call void @merge_blocks(ptr noundef %354, ptr noundef %357) #17
  %1385 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %1386 = add nsw i32 %1385, 1
  store i32 %1386, ptr @num_true_changes, align 4, !tbaa !163
  br label %1387

1387:                                             ; preds = %1384, %1375
  %1388 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %1389 = add nsw i32 %1388, 1
  store i32 %1389, ptr @num_updated_if_blocks, align 4, !tbaa !163
  br label %1392

1390:                                             ; preds = %674, %677, %1345, %632, %616, %665, %637, %590, %584, %579, %560, %492, %476, %458, %421, %405, %387, %495, %621
  %1391 = call fastcc i32 @cond_move_process_if_block(ptr noundef nonnull %4), !range !270
  br label %1392

1392:                                             ; preds = %1387, %327, %237, %234, %241, %244, %279, %297, %334, %337, %1390
  %1393 = phi i32 [ 0, %244 ], [ 0, %241 ], [ 0, %234 ], [ 0, %279 ], [ 0, %297 ], [ 0, %334 ], [ 0, %337 ], [ %1391, %1390 ], [ 0, %237 ], [ 0, %327 ], [ 1, %1387 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1395, label %2273, !prof !312

1395:                                             ; preds = %1392, %94
  %1396 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !299
  %1397 = call zeroext i8 %1396() #17, !prof !313
  %1398 = icmp ne i8 %1397, 0
  %1399 = load i32, ptr @reload_completed, align 4
  %1400 = icmp ne i32 %1399, 0
  %1401 = select i1 %1398, i1 %1400, i1 false, !prof !314
  br i1 %1401, label %1402, label %1886, !prof !314

1402:                                             ; preds = %1395
  %1403 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 4
  %1404 = load ptr, ptr %6, align 8, !tbaa !202
  %1405 = load ptr, ptr %12, align 8, !tbaa !204
  %1406 = load ptr, ptr %13, align 8, !tbaa !205
  store ptr %1404, ptr %1403, align 8, !tbaa !315
  %1407 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !299
  %1408 = call zeroext i8 %1407() #17
  %1409 = icmp ne i8 %1408, 0
  %1410 = load i32, ptr @reload_completed, align 4
  %1411 = icmp ne i32 %1410, 0
  %1412 = select i1 %1409, i1 %1411, i1 false
  br i1 %1412, label %1414, label %1413

1413:                                             ; preds = %1402
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3188, ptr noundef nonnull @.str.10) #17
  br label %1414

1414:                                             ; preds = %1413, %1402
  %1415 = load ptr, ptr %1404, align 8, !tbaa !208
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1421, label %1417

1417:                                             ; preds = %1414
  %1418 = load i32, ptr %1415, align 8, !tbaa !191
  %1419 = icmp eq i32 %1418, 1
  %1420 = zext i1 %1419 to i8
  br label %1421

1421:                                             ; preds = %1417, %1414
  %1422 = phi i8 [ %1420, %1417 ], [ 0, %1414 ]
  %1423 = icmp eq i8 %1422, 0
  br i1 %1423, label %1510, label %1424

1424:                                             ; preds = %1421
  br i1 %1416, label %1428, label %1425

1425:                                             ; preds = %1424
  %1426 = load i32, ptr %1415, align 8, !tbaa !191
  %1427 = icmp eq i32 %1426, 1
  br i1 %1427, label %1429, label %1428

1428:                                             ; preds = %1425, %1424
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 655, ptr noundef nonnull @.str.10) #17
  br label %1429

1429:                                             ; preds = %1428, %1425
  %1430 = load ptr, ptr %1404, align 8, !tbaa !208
  %1431 = getelementptr inbounds %struct.VEC_edge_base, ptr %1430, i64 0, i32 2, i64 0
  %1432 = load ptr, ptr %1431, align 8, !tbaa !148
  %1433 = getelementptr inbounds %struct.edge_def, ptr %1432, i64 0, i32 7
  %1434 = load i32, ptr %1433, align 8, !tbaa !198
  %1435 = icmp eq i32 %1434, 1
  br i1 %1435, label %1436, label %1510

1436:                                             ; preds = %1429
  %1437 = icmp eq ptr %1430, null
  br i1 %1437, label %1441, label %1438

1438:                                             ; preds = %1436
  %1439 = load i32, ptr %1430, align 8, !tbaa !191
  %1440 = icmp eq i32 %1439, 1
  br i1 %1440, label %1442, label %1441

1441:                                             ; preds = %1438, %1436
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 655, ptr noundef nonnull @.str.10) #17
  br label %1442

1442:                                             ; preds = %1441, %1438
  %1443 = load ptr, ptr %1404, align 8, !tbaa !208
  %1444 = getelementptr inbounds %struct.VEC_edge_base, ptr %1443, i64 0, i32 2, i64 0
  %1445 = load ptr, ptr %1444, align 8, !tbaa !148
  %1446 = load ptr, ptr %1445, align 8, !tbaa !316
  %1447 = load ptr, ptr @cfun, align 8, !tbaa !148
  %1448 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %1447) #17
  %1449 = icmp eq i8 %1448, 0
  %1450 = load i32, ptr @ix86_branch_cost, align 4
  %1451 = add nsw i32 %1450, 1
  %1452 = select i1 %1449, i32 3, i32 %1451
  %1453 = call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %1446, ptr noundef %1406)
  %1454 = icmp sgt i32 %1453, -1
  br i1 %1454, label %1455, label %1457

1455:                                             ; preds = %1442
  %1456 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 9
  store i32 1, ptr %1456, align 8, !tbaa !317
  br label %1462

1457:                                             ; preds = %1442
  %1458 = call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %1446, ptr noundef %1405)
  %1459 = icmp sgt i32 %1458, -1
  br i1 %1459, label %1460, label %1462

1460:                                             ; preds = %1457
  %1461 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 9
  store i32 0, ptr %1461, align 8, !tbaa !317
  br label %1462

1462:                                             ; preds = %1460, %1457, %1455
  %1463 = phi ptr [ %1406, %1455 ], [ %1405, %1460 ], [ null, %1457 ]
  %1464 = phi i32 [ %1453, %1455 ], [ %1458, %1460 ], [ %1458, %1457 ]
  %1465 = icmp eq ptr %1463, null
  %1466 = icmp sgt i32 %1464, %1452
  %1467 = select i1 %1465, i1 true, i1 %1466
  br i1 %1467, label %1510, label %1468

1468:                                             ; preds = %1462
  store ptr %1404, ptr %1403, align 8, !tbaa !315
  br label %1469

1469:                                             ; preds = %1490, %1468
  %1470 = phi i32 [ %1464, %1468 ], [ %1495, %1490 ]
  %1471 = phi i32 [ 0, %1468 ], [ %1474, %1490 ]
  %1472 = phi i32 [ 0, %1468 ], [ %1475, %1490 ]
  %1473 = phi ptr [ %1446, %1468 ], [ %1494, %1490 ]
  %1474 = add nsw i32 %1471, %1470
  %1475 = add nuw nsw i32 %1472, 1
  %1476 = load ptr, ptr %1473, align 8, !tbaa !208
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1482, label %1478

1478:                                             ; preds = %1469
  %1479 = load i32, ptr %1476, align 8, !tbaa !191
  %1480 = icmp eq i32 %1479, 1
  %1481 = zext i1 %1480 to i8
  br label %1482

1482:                                             ; preds = %1478, %1469
  %1483 = phi i8 [ %1481, %1478 ], [ 0, %1469 ]
  %1484 = icmp eq i8 %1483, 0
  br i1 %1484, label %1500, label %1485

1485:                                             ; preds = %1482
  br i1 %1477, label %1489, label %1486

1486:                                             ; preds = %1485
  %1487 = load i32, ptr %1476, align 8, !tbaa !191
  %1488 = icmp eq i32 %1487, 1
  br i1 %1488, label %1490, label %1489

1489:                                             ; preds = %1486, %1485
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 655, ptr noundef nonnull @.str.10) #17
  br label %1490

1490:                                             ; preds = %1489, %1486
  %1491 = load ptr, ptr %1473, align 8, !tbaa !208
  %1492 = getelementptr inbounds %struct.VEC_edge_base, ptr %1491, i64 0, i32 2, i64 0
  %1493 = load ptr, ptr %1492, align 8, !tbaa !148
  %1494 = load ptr, ptr %1493, align 8, !tbaa !316
  %1495 = call fastcc i32 @block_jumps_and_fallthru_p(ptr noundef %1494, ptr noundef nonnull %1463)
  %1496 = icmp slt i32 %1495, 0
  %1497 = add nsw i32 %1495, %1474
  %1498 = icmp sgt i32 %1497, %1452
  %1499 = select i1 %1496, i1 true, i1 %1498
  br i1 %1499, label %1500, label %1469, !llvm.loop !318

1500:                                             ; preds = %1490, %1482
  %1501 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 5
  %1502 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 8
  %1503 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 9
  store ptr %1473, ptr %6, align 8, !tbaa !202
  store i32 %1475, ptr %1501, align 8, !tbaa !319
  store i32 %1474, ptr %1502, align 4, !tbaa !320
  %1504 = load i32, ptr %1503, align 8, !tbaa !317
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1508, label %1506

1506:                                             ; preds = %1500
  %1507 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 6
  store i32 %1475, ptr %1507, align 4, !tbaa !321
  br label %1510

1508:                                             ; preds = %1500
  %1509 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 7
  store i32 %1475, ptr %1509, align 8, !tbaa !322
  br label %1510

1510:                                             ; preds = %1508, %1506, %1462, %1429, %1421
  %1511 = phi ptr [ %1404, %1429 ], [ %1404, %1421 ], [ %1404, %1462 ], [ %1473, %1508 ], [ %1473, %1506 ]
  %1512 = load ptr, ptr %1405, align 8, !tbaa !208
  %1513 = icmp eq ptr %1512, null
  br i1 %1513, label %1516, label %1514

1514:                                             ; preds = %1510
  %1515 = load i32, ptr %1512, align 8, !tbaa !191
  br label %1516

1516:                                             ; preds = %1514, %1510
  %1517 = phi i32 [ %1515, %1514 ], [ 0, %1510 ]
  %1518 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 7
  %1519 = load i32, ptr %1518, align 8, !tbaa !322
  %1520 = sub i32 %1517, %1519
  %1521 = icmp eq i32 %1520, 1
  br i1 %1521, label %1522, label %1886

1522:                                             ; preds = %1516, %1551
  %1523 = phi i32 [ %1552, %1551 ], [ 0, %1516 ]
  %1524 = load ptr, ptr %1405, align 8, !tbaa !148
  %1525 = icmp eq ptr %1524, null
  br i1 %1525, label %1528, label %1526

1526:                                             ; preds = %1522
  %1527 = load i32, ptr %1524, align 8, !tbaa !191
  br label %1528

1528:                                             ; preds = %1526, %1522
  %1529 = phi i32 [ %1527, %1526 ], [ 0, %1522 ]
  %1530 = icmp eq i32 %1529, %1523
  br i1 %1530, label %1535, label %1531

1531:                                             ; preds = %1528
  %1532 = zext i32 %1523 to i64
  %1533 = getelementptr inbounds %struct.VEC_edge_base, ptr %1524, i64 0, i32 2, i64 %1532
  %1534 = load ptr, ptr %1533, align 8, !tbaa !148
  br label %1535

1535:                                             ; preds = %1531, %1528
  %1536 = phi ptr [ %1534, %1531 ], [ null, %1528 ]
  br i1 %1530, label %1537, label %1539

1537:                                             ; preds = %1535
  %1538 = icmp eq ptr %1406, null
  br label %1553

1539:                                             ; preds = %1535
  %1540 = getelementptr inbounds %struct.edge_def, ptr %1536, i64 0, i32 7
  %1541 = load i32, ptr %1540, align 8, !tbaa !198
  %1542 = and i32 %1541, 14
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1544, label %1886

1544:                                             ; preds = %1539
  br i1 %1525, label %1547, label %1545

1545:                                             ; preds = %1544
  %1546 = load i32, ptr %1524, align 8, !tbaa !191
  br label %1547

1547:                                             ; preds = %1545, %1544
  %1548 = phi i32 [ %1546, %1545 ], [ 0, %1544 ]
  %1549 = icmp ult i32 %1523, %1548
  br i1 %1549, label %1551, label %1550

1550:                                             ; preds = %1547
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.10) #17
  br label %1551

1551:                                             ; preds = %1550, %1547
  %1552 = add i32 %1523, 1
  br label %1522, !llvm.loop !323

1553:                                             ; preds = %1537, %1582
  %1554 = phi i32 [ %1583, %1582 ], [ 0, %1537 ]
  br i1 %1538, label %1555, label %1556

1555:                                             ; preds = %1553
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.10) #17
  br label %1556

1556:                                             ; preds = %1555, %1553
  %1557 = load ptr, ptr %1406, align 8, !tbaa !148
  %1558 = icmp eq ptr %1557, null
  br i1 %1558, label %1561, label %1559

1559:                                             ; preds = %1556
  %1560 = load i32, ptr %1557, align 8, !tbaa !191
  br label %1561

1561:                                             ; preds = %1559, %1556
  %1562 = phi i32 [ %1560, %1559 ], [ 0, %1556 ]
  %1563 = icmp eq i32 %1562, %1554
  br i1 %1563, label %1568, label %1564

1564:                                             ; preds = %1561
  %1565 = zext i32 %1554 to i64
  %1566 = getelementptr inbounds %struct.VEC_edge_base, ptr %1557, i64 0, i32 2, i64 %1565
  %1567 = load ptr, ptr %1566, align 8, !tbaa !148
  br label %1568

1568:                                             ; preds = %1564, %1561
  %1569 = phi ptr [ %1567, %1564 ], [ null, %1561 ]
  br i1 %1563, label %1584, label %1570

1570:                                             ; preds = %1568
  %1571 = getelementptr inbounds %struct.edge_def, ptr %1569, i64 0, i32 7
  %1572 = load i32, ptr %1571, align 8, !tbaa !198
  %1573 = and i32 %1572, 14
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1575, label %1886

1575:                                             ; preds = %1570
  br i1 %1558, label %1578, label %1576

1576:                                             ; preds = %1575
  %1577 = load i32, ptr %1557, align 8, !tbaa !191
  br label %1578

1578:                                             ; preds = %1576, %1575
  %1579 = phi i32 [ %1577, %1576 ], [ 0, %1575 ]
  %1580 = icmp ult i32 %1554, %1579
  br i1 %1580, label %1582, label %1581

1581:                                             ; preds = %1578
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.10) #17
  br label %1582

1582:                                             ; preds = %1581, %1578
  %1583 = add i32 %1554, 1
  br label %1553, !llvm.loop !324

1584:                                             ; preds = %1568
  %1585 = getelementptr inbounds %struct.basic_block_def, ptr %1405, i64 0, i32 1
  %1586 = load ptr, ptr %1585, align 8, !tbaa !189
  %1587 = icmp eq ptr %1586, null
  br i1 %1587, label %1590, label %1588

1588:                                             ; preds = %1584
  %1589 = load i32, ptr %1586, align 8, !tbaa !191
  br label %1590

1590:                                             ; preds = %1588, %1584
  %1591 = phi i32 [ %1589, %1588 ], [ 0, %1584 ]
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1624, label %1593

1593:                                             ; preds = %1590
  br i1 %1587, label %1598, label %1594

1594:                                             ; preds = %1593
  %1595 = load i32, ptr %1586, align 8, !tbaa !191
  %1596 = icmp eq i32 %1595, 1
  %1597 = zext i1 %1596 to i8
  br label %1598

1598:                                             ; preds = %1594, %1593
  %1599 = phi i8 [ %1597, %1594 ], [ 0, %1593 ]
  %1600 = icmp eq i8 %1599, 0
  br i1 %1600, label %1886, label %1601

1601:                                             ; preds = %1598
  br i1 %1587, label %1605, label %1602

1602:                                             ; preds = %1601
  %1603 = load i32, ptr %1586, align 8, !tbaa !191
  %1604 = icmp eq i32 %1603, 1
  br i1 %1604, label %1606, label %1605

1605:                                             ; preds = %1602, %1601
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1606

1606:                                             ; preds = %1605, %1602
  %1607 = load ptr, ptr %1585, align 8, !tbaa !189
  %1608 = getelementptr inbounds %struct.VEC_edge_base, ptr %1607, i64 0, i32 2, i64 0
  %1609 = load ptr, ptr %1608, align 8, !tbaa !148
  %1610 = getelementptr inbounds %struct.edge_def, ptr %1609, i64 0, i32 7
  %1611 = load i32, ptr %1610, align 8, !tbaa !198
  %1612 = and i32 %1611, 14
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1614, label %1886

1614:                                             ; preds = %1606
  %1615 = load i32, ptr @epilogue_completed, align 4, !tbaa !163
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1624, label %1617

1617:                                             ; preds = %1614
  %1618 = getelementptr inbounds %struct.basic_block_def, ptr %1405, i64 0, i32 7
  %1619 = load ptr, ptr %1618, align 8, !tbaa !159
  %1620 = getelementptr inbounds %struct.rtl_bb_info, ptr %1619, i64 0, i32 1
  %1621 = load ptr, ptr %1620, align 8, !tbaa !238
  %1622 = call zeroext i8 @tablejump_p(ptr noundef %1621, ptr noundef null, ptr noundef null) #17
  %1623 = icmp eq i8 %1622, 0
  br i1 %1623, label %1624, label %1886

1624:                                             ; preds = %1617, %1614, %1590
  %1625 = load ptr, ptr %1585, align 8, !tbaa !189
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1629, label %1627

1627:                                             ; preds = %1624
  %1628 = load i32, ptr %1625, align 8, !tbaa !191
  br label %1629

1629:                                             ; preds = %1627, %1624
  %1630 = phi i32 [ %1628, %1627 ], [ 0, %1624 ]
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1632, label %1670

1632:                                             ; preds = %1629
  %1633 = load ptr, ptr %1406, align 8, !tbaa !208
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1639, label %1635

1635:                                             ; preds = %1632
  %1636 = load i32, ptr %1633, align 8, !tbaa !191
  %1637 = icmp eq i32 %1636, 1
  %1638 = zext i1 %1637 to i8
  br label %1639

1639:                                             ; preds = %1635, %1632
  %1640 = phi i8 [ %1638, %1635 ], [ 0, %1632 ]
  %1641 = icmp eq i8 %1640, 0
  br i1 %1641, label %1886, label %1642

1642:                                             ; preds = %1639
  %1643 = getelementptr inbounds %struct.basic_block_def, ptr %1405, i64 0, i32 7
  %1644 = load ptr, ptr %1643, align 8, !tbaa !159
  %1645 = getelementptr inbounds %struct.rtl_bb_info, ptr %1644, i64 0, i32 1
  %1646 = load ptr, ptr %1645, align 8, !tbaa !159
  %1647 = icmp eq ptr %1646, null
  br i1 %1647, label %1665, label %1648

1648:                                             ; preds = %1642, %1655
  %1649 = phi ptr [ %1657, %1655 ], [ %1646, %1642 ]
  %1650 = load i32, ptr %1649, align 8
  %1651 = trunc i32 %1650 to i16
  switch i16 %1651, label %1665 [
    i16 13, label %1652
    i16 9, label %1662
  ]

1652:                                             ; preds = %1648
  %1653 = load ptr, ptr %1644, align 8, !tbaa !252
  %1654 = icmp eq ptr %1649, %1653
  br i1 %1654, label %1659, label %1655

1655:                                             ; preds = %1652
  %1656 = getelementptr inbounds %struct.rtx_def, ptr %1649, i64 0, i32 1, i32 0, i32 0, i64 1
  %1657 = load ptr, ptr %1656, align 8, !tbaa !159
  %1658 = icmp eq ptr %1657, null
  br i1 %1658, label %1665, label %1648, !llvm.loop !325

1659:                                             ; preds = %1652
  %1660 = and i32 %1650, 65535
  %1661 = icmp eq i32 %1660, 9
  br i1 %1661, label %1662, label %1665

1662:                                             ; preds = %1648, %1659
  %1663 = call i32 @simplejump_p(ptr noundef nonnull %1649) #17
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1666, label %1665

1665:                                             ; preds = %1655, %1648, %1642, %1662, %1659
  br label %1666

1666:                                             ; preds = %1665, %1662
  %1667 = phi i1 [ true, %1665 ], [ false, %1662 ]
  %1668 = phi ptr [ %1406, %1665 ], [ null, %1662 ]
  %1669 = phi ptr [ null, %1665 ], [ %1406, %1662 ]
  br i1 %1667, label %1765, label %1886

1670:                                             ; preds = %1629
  br i1 %1626, label %1674, label %1671

1671:                                             ; preds = %1670
  %1672 = load i32, ptr %1625, align 8, !tbaa !191
  %1673 = icmp eq i32 %1672, 1
  br i1 %1673, label %1675, label %1674

1674:                                             ; preds = %1671, %1670
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1675

1675:                                             ; preds = %1674, %1671
  %1676 = load ptr, ptr %1585, align 8, !tbaa !189
  %1677 = getelementptr inbounds %struct.VEC_edge_base, ptr %1676, i64 0, i32 2, i64 0
  %1678 = load ptr, ptr %1677, align 8, !tbaa !148
  %1679 = getelementptr inbounds %struct.edge_def, ptr %1678, i64 0, i32 1
  %1680 = load ptr, ptr %1679, align 8, !tbaa !194
  %1681 = icmp eq ptr %1680, %1406
  br i1 %1681, label %1765, label %1682

1682:                                             ; preds = %1675
  %1683 = getelementptr inbounds %struct.basic_block_def, ptr %1406, i64 0, i32 1
  %1684 = load ptr, ptr %1683, align 8, !tbaa !189
  %1685 = icmp eq ptr %1684, null
  br i1 %1685, label %1690, label %1686

1686:                                             ; preds = %1682
  %1687 = load i32, ptr %1684, align 8, !tbaa !191
  %1688 = icmp eq i32 %1687, 1
  %1689 = zext i1 %1688 to i8
  br label %1690

1690:                                             ; preds = %1686, %1682
  %1691 = phi i8 [ %1689, %1686 ], [ 0, %1682 ]
  %1692 = icmp eq i8 %1691, 0
  br i1 %1692, label %1886, label %1693

1693:                                             ; preds = %1690
  %1694 = icmp eq ptr %1676, null
  br i1 %1694, label %1698, label %1695

1695:                                             ; preds = %1693
  %1696 = load i32, ptr %1676, align 8, !tbaa !191
  %1697 = icmp eq i32 %1696, 1
  br i1 %1697, label %1699, label %1698

1698:                                             ; preds = %1695, %1693
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1699

1699:                                             ; preds = %1698, %1695
  %1700 = load ptr, ptr %1585, align 8, !tbaa !189
  %1701 = getelementptr inbounds %struct.VEC_edge_base, ptr %1700, i64 0, i32 2, i64 0
  %1702 = load ptr, ptr %1701, align 8, !tbaa !148
  %1703 = getelementptr inbounds %struct.edge_def, ptr %1702, i64 0, i32 1
  %1704 = load ptr, ptr %1703, align 8, !tbaa !194
  %1705 = load ptr, ptr %1683, align 8, !tbaa !189
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1710, label %1707

1707:                                             ; preds = %1699
  %1708 = load i32, ptr %1705, align 8, !tbaa !191
  %1709 = icmp eq i32 %1708, 1
  br i1 %1709, label %1711, label %1710

1710:                                             ; preds = %1707, %1699
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1711

1711:                                             ; preds = %1710, %1707
  %1712 = load ptr, ptr %1683, align 8, !tbaa !189
  %1713 = getelementptr inbounds %struct.VEC_edge_base, ptr %1712, i64 0, i32 2, i64 0
  %1714 = load ptr, ptr %1713, align 8, !tbaa !148
  %1715 = getelementptr inbounds %struct.edge_def, ptr %1714, i64 0, i32 1
  %1716 = load ptr, ptr %1715, align 8, !tbaa !194
  %1717 = icmp eq ptr %1704, %1716
  br i1 %1717, label %1718, label %1886

1718:                                             ; preds = %1711
  %1719 = load ptr, ptr %1406, align 8, !tbaa !208
  %1720 = icmp eq ptr %1719, null
  br i1 %1720, label %1725, label %1721

1721:                                             ; preds = %1718
  %1722 = load i32, ptr %1719, align 8, !tbaa !191
  %1723 = icmp eq i32 %1722, 1
  %1724 = zext i1 %1723 to i8
  br label %1725

1725:                                             ; preds = %1721, %1718
  %1726 = phi i8 [ %1724, %1721 ], [ 0, %1718 ]
  %1727 = icmp eq i8 %1726, 0
  br i1 %1727, label %1886, label %1728

1728:                                             ; preds = %1725
  %1729 = icmp eq ptr %1712, null
  br i1 %1729, label %1733, label %1730

1730:                                             ; preds = %1728
  %1731 = load i32, ptr %1712, align 8, !tbaa !191
  %1732 = icmp eq i32 %1731, 1
  br i1 %1732, label %1734, label %1733

1733:                                             ; preds = %1730, %1728
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1734

1734:                                             ; preds = %1733, %1730
  %1735 = load ptr, ptr %1683, align 8, !tbaa !189
  %1736 = getelementptr inbounds %struct.VEC_edge_base, ptr %1735, i64 0, i32 2, i64 0
  %1737 = load ptr, ptr %1736, align 8, !tbaa !148
  %1738 = getelementptr inbounds %struct.edge_def, ptr %1737, i64 0, i32 7
  %1739 = load i32, ptr %1738, align 8, !tbaa !198
  %1740 = and i32 %1739, 14
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1742, label %1886

1742:                                             ; preds = %1734
  %1743 = load i32, ptr @epilogue_completed, align 4, !tbaa !163
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1752, label %1745

1745:                                             ; preds = %1742
  %1746 = getelementptr inbounds %struct.basic_block_def, ptr %1406, i64 0, i32 7
  %1747 = load ptr, ptr %1746, align 8, !tbaa !159
  %1748 = getelementptr inbounds %struct.rtl_bb_info, ptr %1747, i64 0, i32 1
  %1749 = load ptr, ptr %1748, align 8, !tbaa !238
  %1750 = call zeroext i8 @tablejump_p(ptr noundef %1749, ptr noundef null, ptr noundef null) #17
  %1751 = icmp eq i8 %1750, 0
  br i1 %1751, label %1752, label %1886

1752:                                             ; preds = %1745, %1742
  %1753 = load ptr, ptr %1683, align 8, !tbaa !189
  %1754 = icmp eq ptr %1753, null
  br i1 %1754, label %1758, label %1755

1755:                                             ; preds = %1752
  %1756 = load i32, ptr %1753, align 8, !tbaa !191
  %1757 = icmp eq i32 %1756, 1
  br i1 %1757, label %1759, label %1758

1758:                                             ; preds = %1755, %1752
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1759

1759:                                             ; preds = %1758, %1755
  %1760 = load ptr, ptr %1683, align 8, !tbaa !189
  %1761 = getelementptr inbounds %struct.VEC_edge_base, ptr %1760, i64 0, i32 2, i64 0
  %1762 = load ptr, ptr %1761, align 8, !tbaa !148
  %1763 = getelementptr inbounds %struct.edge_def, ptr %1762, i64 0, i32 1
  %1764 = load ptr, ptr %1763, align 8, !tbaa !194
  br label %1765

1765:                                             ; preds = %1759, %1675, %1666
  %1766 = phi ptr [ %1668, %1666 ], [ %1764, %1759 ], [ %1406, %1675 ]
  %1767 = phi ptr [ %1669, %1666 ], [ %1406, %1759 ], [ null, %1675 ]
  %1768 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %1769 = add nsw i32 %1768, 1
  store i32 %1769, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %1770 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1854, label %1772

1772:                                             ; preds = %1765
  %1773 = icmp eq ptr %1767, null
  %1774 = select i1 %1773, ptr @.str.13, ptr @.str.12
  %1775 = load i32, ptr %14, align 4, !tbaa !206
  %1776 = getelementptr inbounds %struct.basic_block_def, ptr %1511, i64 0, i32 9
  %1777 = load i32, ptr %1776, align 8, !tbaa !237
  %1778 = getelementptr inbounds %struct.basic_block_def, ptr %1511, i64 0, i32 7
  %1779 = load ptr, ptr %1778, align 8, !tbaa !159
  %1780 = load ptr, ptr %1779, align 8, !tbaa !252
  %1781 = icmp eq ptr %1780, null
  br i1 %1781, label %1785, label %1782

1782:                                             ; preds = %1772
  %1783 = getelementptr inbounds %struct.rtx_def, ptr %1780, i64 0, i32 1
  %1784 = load i32, ptr %1783, align 8, !tbaa !159
  br label %1785

1785:                                             ; preds = %1782, %1772
  %1786 = phi i32 [ %1784, %1782 ], [ -1, %1772 ]
  %1787 = getelementptr inbounds %struct.basic_block_def, ptr %1405, i64 0, i32 9
  %1788 = load i32, ptr %1787, align 8, !tbaa !237
  %1789 = getelementptr inbounds %struct.basic_block_def, ptr %1405, i64 0, i32 7
  %1790 = load ptr, ptr %1789, align 8, !tbaa !159
  %1791 = load ptr, ptr %1790, align 8, !tbaa !252
  %1792 = icmp eq ptr %1791, null
  br i1 %1792, label %1796, label %1793

1793:                                             ; preds = %1785
  %1794 = getelementptr inbounds %struct.rtx_def, ptr %1791, i64 0, i32 1
  %1795 = load i32, ptr %1794, align 8, !tbaa !159
  br label %1796

1796:                                             ; preds = %1793, %1785
  %1797 = phi i32 [ %1795, %1793 ], [ -1, %1785 ]
  %1798 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1770, ptr noundef nonnull @.str.17, ptr noundef nonnull %1774, i32 noundef %1775, i32 noundef %1777, i32 noundef %1786, i32 noundef %1788, i32 noundef %1797)
  br i1 %1773, label %1813, label %1799

1799:                                             ; preds = %1796
  %1800 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %1801 = getelementptr inbounds %struct.basic_block_def, ptr %1767, i64 0, i32 9
  %1802 = load i32, ptr %1801, align 8, !tbaa !237
  %1803 = getelementptr inbounds %struct.basic_block_def, ptr %1767, i64 0, i32 7
  %1804 = load ptr, ptr %1803, align 8, !tbaa !159
  %1805 = load ptr, ptr %1804, align 8, !tbaa !252
  %1806 = icmp eq ptr %1805, null
  br i1 %1806, label %1810, label %1807

1807:                                             ; preds = %1799
  %1808 = getelementptr inbounds %struct.rtx_def, ptr %1805, i64 0, i32 1
  %1809 = load i32, ptr %1808, align 8, !tbaa !159
  br label %1810

1810:                                             ; preds = %1807, %1799
  %1811 = phi i32 [ %1809, %1807 ], [ -1, %1799 ]
  %1812 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1800, ptr noundef nonnull @.str.18, i32 noundef %1802, i32 noundef %1811)
  br label %1813

1813:                                             ; preds = %1810, %1796
  %1814 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %1815 = getelementptr inbounds %struct.basic_block_def, ptr %1766, i64 0, i32 9
  %1816 = load i32, ptr %1815, align 8, !tbaa !237
  %1817 = getelementptr inbounds %struct.basic_block_def, ptr %1766, i64 0, i32 7
  %1818 = load ptr, ptr %1817, align 8, !tbaa !159
  %1819 = load ptr, ptr %1818, align 8, !tbaa !252
  %1820 = icmp eq ptr %1819, null
  br i1 %1820, label %1824, label %1821

1821:                                             ; preds = %1813
  %1822 = getelementptr inbounds %struct.rtx_def, ptr %1819, i64 0, i32 1
  %1823 = load i32, ptr %1822, align 8, !tbaa !159
  br label %1824

1824:                                             ; preds = %1821, %1813
  %1825 = phi i32 [ %1823, %1821 ], [ -1, %1813 ]
  %1826 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 5
  %1827 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1814, ptr noundef nonnull @.str.19, i32 noundef %1816, i32 noundef %1825)
  %1828 = load i32, ptr %1826, align 8, !tbaa !319
  %1829 = icmp sgt i32 %1828, 0
  br i1 %1829, label %1830, label %1851

1830:                                             ; preds = %1824
  %1831 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 9
  %1832 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %1833 = load i32, ptr %1831, align 8, !tbaa !317
  %1834 = icmp eq i32 %1833, 0
  %1835 = select i1 %1834, ptr @.str.22, ptr @.str.21
  %1836 = icmp eq i32 %1828, 1
  %1837 = select i1 %1836, ptr @.str.13, ptr @.str.23
  %1838 = load ptr, ptr %1403, align 8, !tbaa !315
  %1839 = getelementptr inbounds %struct.basic_block_def, ptr %1838, i64 0, i32 9
  %1840 = load i32, ptr %1839, align 8, !tbaa !237
  %1841 = getelementptr inbounds %struct.basic_block_def, ptr %1838, i64 0, i32 7
  %1842 = load ptr, ptr %1841, align 8, !tbaa !159
  %1843 = load ptr, ptr %1842, align 8, !tbaa !252
  %1844 = icmp eq ptr %1843, null
  br i1 %1844, label %1848, label %1845

1845:                                             ; preds = %1830
  %1846 = getelementptr inbounds %struct.rtx_def, ptr %1843, i64 0, i32 1
  %1847 = load i32, ptr %1846, align 8, !tbaa !159
  br label %1848

1848:                                             ; preds = %1845, %1830
  %1849 = phi i32 [ %1847, %1845 ], [ -1, %1830 ]
  %1850 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1832, ptr noundef nonnull @.str.20, i32 noundef %1828, ptr noundef nonnull %1835, ptr noundef nonnull %1837, i32 noundef %1840, i32 noundef %1849)
  br label %1851

1851:                                             ; preds = %1848, %1824
  %1852 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %1853 = call i32 @fputc(i32 noundef 10, ptr noundef %1852)
  br label %1854

1854:                                             ; preds = %1851, %1765
  %1855 = icmp ne ptr %1767, null
  br i1 %1855, label %1856, label %1860

1856:                                             ; preds = %1854
  %1857 = getelementptr inbounds %struct.basic_block_def, ptr %1405, i64 0, i32 6
  %1858 = load ptr, ptr %1857, align 8, !tbaa !184
  %1859 = icmp eq ptr %1858, %1767
  br i1 %1859, label %1860, label %1886

1860:                                             ; preds = %1856, %1854
  %1861 = phi ptr [ %1405, %1854 ], [ %1858, %1856 ]
  %1862 = getelementptr inbounds %struct.basic_block_def, ptr %1861, i64 0, i32 6
  %1863 = load ptr, ptr %1862, align 8, !tbaa !184
  %1864 = icmp eq ptr %1863, %1766
  br i1 %1864, label %1874, label %1865

1865:                                             ; preds = %1860
  %1866 = load ptr, ptr @cfun, align 8, !tbaa !148
  %1867 = getelementptr inbounds %struct.function, ptr %1866, i64 0, i32 1
  %1868 = load ptr, ptr %1867, align 8, !tbaa !180
  %1869 = getelementptr inbounds %struct.control_flow_graph, ptr %1868, i64 0, i32 1
  %1870 = load ptr, ptr %1869, align 8, !tbaa !186
  %1871 = icmp eq ptr %1766, %1870
  %1872 = or i1 %1855, %1871
  %1873 = select i1 %1871, ptr %1766, ptr null
  br i1 %1872, label %1874, label %1886

1874:                                             ; preds = %1860, %1865
  %1875 = phi ptr [ %1873, %1865 ], [ %1766, %1860 ]
  %1876 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 3
  store ptr %1767, ptr %13, align 8, !tbaa !205
  store ptr %1875, ptr %1876, align 8, !tbaa !326
  %1877 = call fastcc i32 @cond_exec_process_if_block(ptr noundef nonnull %6, i32 noundef 1)
  %1878 = icmp eq i32 %1877, 0
  br i1 %1878, label %1879, label %2273

1879:                                             ; preds = %1874
  %1880 = getelementptr inbounds %struct.ce_if_block, ptr %6, i64 0, i32 5
  %1881 = load i32, ptr %1880, align 8, !tbaa !319
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1886, label %1883

1883:                                             ; preds = %1879
  call void @cancel_changes(i32 noundef 0) #17
  %1884 = call fastcc i32 @cond_exec_process_if_block(ptr noundef nonnull %6, i32 noundef 0)
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1886, label %2273

1886:                                             ; preds = %1539, %1570, %1666, %1516, %1617, %1606, %1598, %1639, %1745, %1734, %1725, %1711, %1690, %1856, %1865, %1883, %1879, %1395
  %1887 = load i32, ptr @word_mode, align 4, !tbaa !163
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118, i32 4, i64 %1888
  %1890 = load i32, ptr %1889, align 4, !tbaa !327
  %1891 = icmp eq i32 %1890, 2956
  br i1 %1891, label %2000, label %1892, !prof !329

1892:                                             ; preds = %1886
  %1893 = load ptr, ptr %97, align 8, !tbaa !194
  %1894 = load ptr, ptr %99, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %1895 = call fastcc ptr @block_has_only_trap(ptr noundef %1893)
  %1896 = icmp eq ptr %1895, null
  br i1 %1896, label %1897, label %1900

1897:                                             ; preds = %1892
  %1898 = call fastcc ptr @block_has_only_trap(ptr noundef %1894)
  %1899 = icmp eq ptr %1898, null
  br i1 %1899, label %1999, label %1900

1900:                                             ; preds = %1897, %1892
  %1901 = phi ptr [ %1895, %1892 ], [ %1898, %1897 ]
  %1902 = phi ptr [ %1893, %1892 ], [ %1894, %1897 ]
  %1903 = phi ptr [ %1894, %1892 ], [ %1893, %1897 ]
  %1904 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %1905 = icmp eq ptr %1904, null
  br i1 %1905, label %1912, label %1906

1906:                                             ; preds = %1900
  %1907 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %1908 = load i32, ptr %1907, align 8, !tbaa !237
  %1909 = getelementptr inbounds %struct.basic_block_def, ptr %1902, i64 0, i32 9
  %1910 = load i32, ptr %1909, align 8, !tbaa !237
  %1911 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1904, ptr noundef nonnull @.str.27, i32 noundef %1908, i32 noundef %1910)
  br label %1912

1912:                                             ; preds = %1906, %1900
  %1913 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %1914 = load ptr, ptr %1913, align 8, !tbaa !159
  %1915 = getelementptr inbounds %struct.rtl_bb_info, ptr %1914, i64 0, i32 1
  %1916 = load ptr, ptr %1915, align 8, !tbaa !238
  %1917 = call fastcc ptr @noce_get_condition(ptr noundef %1916, ptr noundef nonnull %5, i8 noundef zeroext 0)
  %1918 = icmp eq ptr %1917, null
  br i1 %1918, label %1999, label %1919

1919:                                             ; preds = %1912
  %1920 = call i32 @onlyjump_p(ptr noundef %1916) #17
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1999, label %1922

1922:                                             ; preds = %1919
  %1923 = getelementptr inbounds %struct.rtx_def, ptr %1917, i64 0, i32 1
  %1924 = load ptr, ptr %1923, align 8, !tbaa !159
  %1925 = load i32, ptr %1924, align 8
  %1926 = and i32 %1925, 16711680
  %1927 = icmp eq i32 %1926, 65536
  br i1 %1927, label %1999, label %1928

1928:                                             ; preds = %1922
  %1929 = load i32, ptr %1917, align 8
  %1930 = and i32 %1929, 65535
  %1931 = icmp eq ptr %1893, %1902
  br i1 %1931, label %1932, label %1935

1932:                                             ; preds = %1928
  %1933 = call i32 @reversed_comparison_code(ptr noundef nonnull %1917, ptr noundef %1916) #17
  %1934 = icmp eq i32 %1933, 0
  br i1 %1934, label %1999, label %1935

1935:                                             ; preds = %1932, %1928
  %1936 = phi i32 [ %1933, %1932 ], [ %1930, %1928 ]
  %1937 = load ptr, ptr %1923, align 8, !tbaa !159
  %1938 = call ptr @copy_rtx(ptr noundef %1937) #17
  %1939 = getelementptr inbounds %struct.rtx_def, ptr %1917, i64 0, i32 1, i32 0, i32 0, i64 1
  %1940 = load ptr, ptr %1939, align 8, !tbaa !159
  %1941 = call ptr @copy_rtx(ptr noundef %1940) #17
  %1942 = getelementptr inbounds %struct.rtx_def, ptr %1901, i64 1
  %1943 = load ptr, ptr %1942, align 8, !tbaa !159
  %1944 = getelementptr inbounds %struct.rtx_def, ptr %1943, i64 0, i32 1, i32 0, i32 0, i64 1
  %1945 = load ptr, ptr %1944, align 8, !tbaa !159
  %1946 = call ptr @gen_cond_trap(i32 noundef %1936, ptr noundef %1938, ptr noundef %1941, ptr noundef %1945) #17
  %1947 = icmp eq ptr %1946, null
  br i1 %1947, label %1999, label %1948

1948:                                             ; preds = %1935
  %1949 = load ptr, ptr %5, align 8, !tbaa !148
  %1950 = getelementptr inbounds %struct.rtx_def, ptr %1901, i64 0, i32 1, i32 0, i32 2
  %1951 = load i32, ptr %1950, align 8, !tbaa !159
  %1952 = call ptr @emit_insn_before_setloc(ptr noundef nonnull %1946, ptr noundef %1949, i32 noundef %1951) #17
  %1953 = select i1 %1931, ptr %95, ptr %96
  call void @remove_edge(ptr noundef %1953) #17
  call void @df_set_bb_dirty(ptr noundef %50) #17
  call void @df_set_bb_dirty(ptr noundef %1893) #17
  call void @df_set_bb_dirty(ptr noundef %1894) #17
  %1954 = load ptr, ptr %1902, align 8, !tbaa !208
  %1955 = icmp eq ptr %1954, null
  br i1 %1955, label %1959, label %1956

1956:                                             ; preds = %1948
  %1957 = load i32, ptr %1954, align 8, !tbaa !191
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1959, label %1962

1959:                                             ; preds = %1948, %1956
  call void @delete_basic_block(ptr noundef nonnull %1902) #17
  %1960 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %1961 = add nsw i32 %1960, 1
  store i32 %1961, ptr @num_true_changes, align 4, !tbaa !163
  br label %1962

1962:                                             ; preds = %1959, %1956
  %1963 = call i32 @current_ir_type() #17
  %1964 = icmp eq i32 %1963, 2
  br i1 %1964, label %1965, label %1979

1965:                                             ; preds = %1962
  %1966 = load ptr, ptr %54, align 8, !tbaa !189
  %1967 = icmp eq ptr %1966, null
  br i1 %1967, label %1971, label %1968

1968:                                             ; preds = %1965
  %1969 = load i32, ptr %1966, align 8, !tbaa !191
  %1970 = icmp eq i32 %1969, 1
  br i1 %1970, label %1972, label %1971

1971:                                             ; preds = %1968, %1965
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %1972

1972:                                             ; preds = %1971, %1968
  %1973 = load ptr, ptr %54, align 8, !tbaa !189
  %1974 = getelementptr inbounds %struct.VEC_edge_base, ptr %1973, i64 0, i32 2, i64 0
  %1975 = load ptr, ptr %1974, align 8, !tbaa !148
  %1976 = getelementptr inbounds %struct.edge_def, ptr %1975, i64 0, i32 7
  %1977 = load i32, ptr %1976, align 8, !tbaa !198
  %1978 = or i32 %1977, 1
  store i32 %1978, ptr %1976, align 8, !tbaa !198
  br label %1989

1979:                                             ; preds = %1962
  %1980 = getelementptr inbounds %struct.rtx_def, ptr %1916, i64 1, i32 1, i32 0, i32 0, i64 2
  %1981 = load ptr, ptr %1980, align 8, !tbaa !159
  %1982 = call ptr @gen_jump(ptr noundef %1981) #17
  %1983 = call ptr @emit_jump_insn_after(ptr noundef %1982, ptr noundef %1916) #17
  %1984 = getelementptr inbounds %struct.rtx_def, ptr %1981, i64 0, i32 1, i32 0, i32 2
  %1985 = load i32, ptr %1984, align 8, !tbaa !159
  %1986 = add nsw i32 %1985, 1
  store i32 %1986, ptr %1984, align 8, !tbaa !159
  %1987 = getelementptr inbounds %struct.rtx_def, ptr %1983, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %1981, ptr %1987, align 8, !tbaa !159
  %1988 = call ptr @emit_barrier_after(ptr noundef %1983) #17
  br label %1989

1989:                                             ; preds = %1979, %1972
  %1990 = call ptr @delete_insn(ptr noundef %1916) #17
  %1991 = call zeroext i8 @can_merge_blocks_p(ptr noundef %50, ptr noundef %1903) #17
  %1992 = icmp eq i8 %1991, 0
  br i1 %1992, label %1996, label %1993

1993:                                             ; preds = %1989
  call void @merge_blocks(ptr noundef %50, ptr noundef %1903) #17
  %1994 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %1995 = add nsw i32 %1994, 1
  store i32 %1995, ptr @num_true_changes, align 4, !tbaa !163
  br label %1996

1996:                                             ; preds = %1993, %1989
  %1997 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %1998 = add nsw i32 %1997, 1
  store i32 %1998, ptr @num_updated_if_blocks, align 4, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %2273

1999:                                             ; preds = %1932, %1897, %1912, %1919, %1922, %1935
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %2000

2000:                                             ; preds = %1999, %1886
  %2001 = call i32 @dom_info_state(i32 noundef 2) #17
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2280, label %2003, !prof !314

2003:                                             ; preds = %2000
  %2004 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !299
  %2005 = call zeroext i8 %2004() #17, !prof !313
  %2006 = icmp eq i8 %2005, 0
  %2007 = load i32, ptr @reload_completed, align 4
  %2008 = icmp ne i32 %2007, 0
  %2009 = select i1 %2006, i1 true, i1 %2008, !prof !329
  br i1 %2009, label %2010, label %2280, !prof !329

2010:                                             ; preds = %2003
  %2011 = load ptr, ptr %97, align 8, !tbaa !194
  %2012 = load ptr, ptr %99, align 8, !tbaa !194
  %2013 = getelementptr inbounds %struct.basic_block_def, ptr %2011, i64 0, i32 7
  %2014 = load ptr, ptr %2013, align 8, !tbaa !159
  %2015 = getelementptr inbounds %struct.rtl_bb_info, ptr %2014, i64 0, i32 1
  %2016 = load ptr, ptr %2015, align 8, !tbaa !238
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2021, label %2018, !prof !314

2018:                                             ; preds = %2010
  %2019 = call ptr @find_reg_note(ptr noundef nonnull %2016, i32 noundef 29, ptr noundef null) #17
  %2020 = icmp eq ptr %2019, null
  br i1 %2020, label %2021, label %2163, !prof !329

2021:                                             ; preds = %2018, %2010
  %2022 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %2023 = load ptr, ptr %2022, align 8, !tbaa !159
  %2024 = getelementptr inbounds %struct.rtl_bb_info, ptr %2023, i64 0, i32 1
  %2025 = load ptr, ptr %2024, align 8, !tbaa !238
  %2026 = icmp eq ptr %2025, null
  br i1 %2026, label %2030, label %2027, !prof !314

2027:                                             ; preds = %2021
  %2028 = call ptr @find_reg_note(ptr noundef nonnull %2025, i32 noundef 29, ptr noundef null) #17
  %2029 = icmp eq ptr %2028, null
  br i1 %2029, label %2030, label %2163, !prof !329

2030:                                             ; preds = %2027, %2021
  %2031 = getelementptr inbounds %struct.basic_block_def, ptr %2012, i64 0, i32 7
  %2032 = load ptr, ptr %2031, align 8, !tbaa !159
  %2033 = getelementptr inbounds %struct.rtl_bb_info, ptr %2032, i64 0, i32 1
  %2034 = load ptr, ptr %2033, align 8, !tbaa !238
  %2035 = icmp eq ptr %2034, null
  br i1 %2035, label %2039, label %2036, !prof !314

2036:                                             ; preds = %2030
  %2037 = call ptr @find_reg_note(ptr noundef nonnull %2034, i32 noundef 29, ptr noundef null) #17
  %2038 = icmp eq ptr %2037, null
  br i1 %2038, label %2039, label %2163, !prof !329

2039:                                             ; preds = %2036, %2030
  %2040 = getelementptr inbounds %struct.basic_block_def, ptr %2011, i64 0, i32 1
  %2041 = load ptr, ptr %2040, align 8, !tbaa !189
  %2042 = icmp eq ptr %2041, null
  br i1 %2042, label %2163, label %2043, !prof !314

2043:                                             ; preds = %2039
  %2044 = load i32, ptr %2041, align 8, !tbaa !191
  %2045 = icmp eq i32 %2044, 1
  br i1 %2045, label %2046, label %2163, !prof !330

2046:                                             ; preds = %2043
  %2047 = load ptr, ptr %2040, align 8, !tbaa !189
  %2048 = getelementptr inbounds %struct.VEC_edge_base, ptr %2047, i64 0, i32 2, i64 0
  %2049 = load ptr, ptr %2048, align 8, !tbaa !148
  %2050 = getelementptr inbounds %struct.edge_def, ptr %2049, i64 0, i32 7
  %2051 = load i32, ptr %2050, align 8, !tbaa !198
  %2052 = and i32 %2051, 15
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2054, label %2163, !prof !331

2054:                                             ; preds = %2046
  %2055 = load ptr, ptr %2011, align 8, !tbaa !208
  %2056 = icmp eq ptr %2055, null
  br i1 %2056, label %2163, label %2057, !prof !332

2057:                                             ; preds = %2054
  %2058 = load i32, ptr %2055, align 8, !tbaa !191
  %2059 = icmp eq i32 %2058, 1
  br i1 %2059, label %2060, label %2163, !prof !333

2060:                                             ; preds = %2057
  %2061 = call zeroext i8 @forwarder_block_p(ptr noundef nonnull %2011) #17
  %2062 = icmp eq i8 %2061, 0
  br i1 %2062, label %2063, label %2163, !prof !334

2063:                                             ; preds = %2060
  %2064 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %2065 = add nsw i32 %2064, 1
  store i32 %2065, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %2066 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %2074, label %2068, !prof !335

2068:                                             ; preds = %2063
  %2069 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %2070 = load i32, ptr %2069, align 8, !tbaa !237
  %2071 = getelementptr inbounds %struct.basic_block_def, ptr %2011, i64 0, i32 9
  %2072 = load i32, ptr %2071, align 8, !tbaa !237
  %2073 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2066, ptr noundef nonnull @.str.28, i32 noundef %2070, i32 noundef %2072)
  br label %2074

2074:                                             ; preds = %2068, %2063
  %2075 = load ptr, ptr %95, align 8, !tbaa !316
  %2076 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %2075) #17
  %2077 = icmp eq i8 %2076, 0
  br i1 %2077, label %2084, label %2078, !prof !336

2078:                                             ; preds = %2074
  %2079 = call zeroext i8 @predictable_edge_p(ptr noundef nonnull %95) #17
  %2080 = icmp eq i8 %2079, 0
  %2081 = load i32, ptr @ix86_branch_cost, align 4
  %2082 = shl nsw i32 %2081, 2
  %2083 = select i1 %2080, i32 %2082, i32 0, !prof !337
  br label %2084

2084:                                             ; preds = %2078, %2074
  %2085 = phi i32 [ %2083, %2078 ], [ 8, %2074 ]
  %2086 = call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %2011, i32 noundef %2085)
  %2087 = icmp eq i8 %2086, 0
  br i1 %2087, label %2163, label %2088, !prof !338

2088:                                             ; preds = %2084
  %2089 = load ptr, ptr %2040, align 8, !tbaa !189
  %2090 = icmp eq ptr %2089, null
  br i1 %2090, label %2094, label %2091, !prof !339

2091:                                             ; preds = %2088
  %2092 = load i32, ptr %2089, align 8, !tbaa !191
  %2093 = icmp eq i32 %2092, 1
  br i1 %2093, label %2095, label %2094, !prof !340

2094:                                             ; preds = %2091, %2088
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %2095

2095:                                             ; preds = %2094, %2091
  %2096 = load ptr, ptr %2040, align 8, !tbaa !189
  %2097 = getelementptr inbounds %struct.VEC_edge_base, ptr %2096, i64 0, i32 2, i64 0
  %2098 = load ptr, ptr %2097, align 8, !tbaa !148
  %2099 = getelementptr inbounds %struct.edge_def, ptr %2098, i64 0, i32 1
  %2100 = load ptr, ptr %2099, align 8, !tbaa !194
  %2101 = call fastcc i32 @dead_or_predicable(ptr noundef %50, ptr noundef nonnull %2011, ptr noundef %2012, ptr noundef %2100, i32 noundef 1), !range !270
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2163, label %2103, !prof !341

2103:                                             ; preds = %2095
  %2104 = getelementptr inbounds %struct.basic_block_def, ptr %2011, i64 0, i32 6
  %2105 = load ptr, ptr %2104, align 8, !tbaa !184
  %2106 = icmp eq ptr %2105, %2012
  br i1 %2106, label %2107, label %2131, !prof !266

2107:                                             ; preds = %2103
  %2108 = getelementptr inbounds %struct.basic_block_def, ptr %2011, i64 0, i32 5
  %2109 = load ptr, ptr %2108, align 8, !tbaa !342
  %2110 = icmp eq ptr %2109, %50
  br i1 %2110, label %2111, label %2131

2111:                                             ; preds = %2107
  %2112 = load ptr, ptr @cfun, align 8, !tbaa !148
  %2113 = getelementptr inbounds %struct.function, ptr %2112, i64 0, i32 1
  %2114 = load ptr, ptr %2113, align 8, !tbaa !180
  %2115 = getelementptr inbounds %struct.control_flow_graph, ptr %2114, i64 0, i32 1
  %2116 = load ptr, ptr %2115, align 8, !tbaa !186
  %2117 = icmp eq ptr %2012, %2116
  br i1 %2117, label %2131, label %2118

2118:                                             ; preds = %2111
  %2119 = load ptr, ptr %54, align 8, !tbaa !189
  %2120 = getelementptr inbounds %struct.VEC_edge_base, ptr %2119, i64 0, i32 2, i64 0
  %2121 = load ptr, ptr %2120, align 8, !tbaa !148
  %2122 = getelementptr inbounds %struct.edge_def, ptr %2121, i64 0, i32 7
  %2123 = load i32, ptr %2122, align 8, !tbaa !198
  %2124 = and i32 %2123, 1
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2126, label %2129

2126:                                             ; preds = %2118
  %2127 = getelementptr inbounds %struct.VEC_edge_base, ptr %2119, i64 0, i32 2, i64 1
  %2128 = load ptr, ptr %2127, align 8, !tbaa !148
  br label %2129

2129:                                             ; preds = %2126, %2118
  %2130 = phi ptr [ %2128, %2126 ], [ %2121, %2118 ]
  call void @redirect_edge_succ(ptr noundef %2130, ptr noundef %2012) #17
  br label %2145

2131:                                             ; preds = %2111, %2107, %2103
  %2132 = load ptr, ptr %54, align 8, !tbaa !189
  %2133 = getelementptr inbounds %struct.VEC_edge_base, ptr %2132, i64 0, i32 2, i64 0
  %2134 = load ptr, ptr %2133, align 8, !tbaa !148
  %2135 = getelementptr inbounds %struct.edge_def, ptr %2134, i64 0, i32 7
  %2136 = load i32, ptr %2135, align 8, !tbaa !198
  %2137 = and i32 %2136, 1
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2139, label %2142, !prof !343

2139:                                             ; preds = %2131
  %2140 = getelementptr inbounds %struct.VEC_edge_base, ptr %2132, i64 0, i32 2, i64 1
  %2141 = load ptr, ptr %2140, align 8, !tbaa !148
  br label %2142

2142:                                             ; preds = %2139, %2131
  %2143 = phi ptr [ %2141, %2139 ], [ %2134, %2131 ]
  %2144 = call ptr @redirect_edge_and_branch_force(ptr noundef %2143, ptr noundef %2012) #17
  br label %2145

2145:                                             ; preds = %2142, %2129
  %2146 = phi ptr [ null, %2129 ], [ %2144, %2142 ]
  call void @df_set_bb_dirty(ptr noundef %50) #17
  call void @df_set_bb_dirty(ptr noundef %2012) #17
  %2147 = getelementptr inbounds %struct.basic_block_def, ptr %2011, i64 0, i32 9
  %2148 = load i32, ptr %2147, align 8, !tbaa !237
  call void @delete_basic_block(ptr noundef nonnull %2011) #17
  %2149 = icmp eq ptr %2146, null
  br i1 %2149, label %2158, label %2150, !prof !266

2150:                                             ; preds = %2145
  call void @df_bb_replace(i32 noundef %2148, ptr noundef nonnull %2146) #17
  %2151 = getelementptr inbounds %struct.basic_block_def, ptr %2146, i64 0, i32 13
  %2152 = load i32, ptr %2151, align 8, !tbaa !344
  %2153 = and i32 %2152, -97
  %2154 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %2155 = load i32, ptr %2154, align 8, !tbaa !344
  %2156 = and i32 %2155, 96
  %2157 = or disjoint i32 %2156, %2153
  store i32 %2157, ptr %2151, align 8, !tbaa !344
  br label %2158

2158:                                             ; preds = %2150, %2145
  %2159 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %2160 = add nsw i32 %2159, 1
  store i32 %2160, ptr @num_true_changes, align 4, !tbaa !163
  %2161 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %2162 = add nsw i32 %2161, 1
  store i32 %2162, ptr @num_updated_if_blocks, align 4, !tbaa !163
  br label %2273

2163:                                             ; preds = %2095, %2084, %2060, %2057, %2046, %2043, %2036, %2027, %2018, %2054, %2039
  %2164 = load ptr, ptr %97, align 8, !tbaa !194
  %2165 = load ptr, ptr %99, align 8, !tbaa !194
  %2166 = getelementptr inbounds %struct.basic_block_def, ptr %2164, i64 0, i32 7
  %2167 = load ptr, ptr %2166, align 8, !tbaa !159
  %2168 = getelementptr inbounds %struct.rtl_bb_info, ptr %2167, i64 0, i32 1
  %2169 = load ptr, ptr %2168, align 8, !tbaa !238
  %2170 = icmp eq ptr %2169, null
  br i1 %2170, label %2174, label %2171, !prof !345

2171:                                             ; preds = %2163
  %2172 = call ptr @find_reg_note(ptr noundef nonnull %2169, i32 noundef 29, ptr noundef null) #17
  %2173 = icmp eq ptr %2172, null
  br i1 %2173, label %2174, label %2280, !prof !346

2174:                                             ; preds = %2171, %2163
  %2175 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %2176 = load ptr, ptr %2175, align 8, !tbaa !159
  %2177 = getelementptr inbounds %struct.rtl_bb_info, ptr %2176, i64 0, i32 1
  %2178 = load ptr, ptr %2177, align 8, !tbaa !238
  %2179 = icmp eq ptr %2178, null
  br i1 %2179, label %2183, label %2180, !prof !345

2180:                                             ; preds = %2174
  %2181 = call ptr @find_reg_note(ptr noundef nonnull %2178, i32 noundef 29, ptr noundef null) #17
  %2182 = icmp eq ptr %2181, null
  br i1 %2182, label %2183, label %2280, !prof !346

2183:                                             ; preds = %2180, %2174
  %2184 = getelementptr inbounds %struct.basic_block_def, ptr %2165, i64 0, i32 7
  %2185 = load ptr, ptr %2184, align 8, !tbaa !159
  %2186 = getelementptr inbounds %struct.rtl_bb_info, ptr %2185, i64 0, i32 1
  %2187 = load ptr, ptr %2186, align 8, !tbaa !238
  %2188 = icmp eq ptr %2187, null
  br i1 %2188, label %2192, label %2189, !prof !345

2189:                                             ; preds = %2183
  %2190 = call ptr @find_reg_note(ptr noundef nonnull %2187, i32 noundef 29, ptr noundef null) #17
  %2191 = icmp eq ptr %2190, null
  br i1 %2191, label %2192, label %2280, !prof !346

2192:                                             ; preds = %2189, %2183
  %2193 = getelementptr inbounds %struct.basic_block_def, ptr %2165, i64 0, i32 1
  %2194 = load ptr, ptr %2193, align 8, !tbaa !189
  %2195 = icmp eq ptr %2194, null
  br i1 %2195, label %2280, label %2196, !prof !345

2196:                                             ; preds = %2192
  %2197 = load i32, ptr %2194, align 8, !tbaa !191
  %2198 = icmp eq i32 %2197, 1
  br i1 %2198, label %2199, label %2280, !prof !347

2199:                                             ; preds = %2196
  %2200 = load ptr, ptr %2193, align 8, !tbaa !189
  %2201 = getelementptr inbounds %struct.VEC_edge_base, ptr %2200, i64 0, i32 2, i64 0
  %2202 = load ptr, ptr %2201, align 8, !tbaa !148
  %2203 = getelementptr inbounds %struct.edge_def, ptr %2202, i64 0, i32 7
  %2204 = load i32, ptr %2203, align 8, !tbaa !198
  %2205 = and i32 %2204, 14
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2207, label %2280, !prof !348

2207:                                             ; preds = %2199
  %2208 = load ptr, ptr %2165, align 8, !tbaa !208
  %2209 = icmp eq ptr %2208, null
  br i1 %2209, label %2280, label %2210, !prof !349

2210:                                             ; preds = %2207
  %2211 = load i32, ptr %2208, align 8, !tbaa !191
  %2212 = icmp eq i32 %2211, 1
  br i1 %2212, label %2213, label %2280, !prof !350

2213:                                             ; preds = %2210
  %2214 = getelementptr inbounds %struct.basic_block_def, ptr %2164, i64 0, i32 9
  %2215 = load i32, ptr %2214, align 8, !tbaa !237
  %2216 = icmp slt i32 %2215, 2
  br i1 %2216, label %2280, label %2217, !prof !351

2217:                                             ; preds = %2213
  %2218 = load ptr, ptr %2175, align 8, !tbaa !159
  %2219 = getelementptr inbounds %struct.rtl_bb_info, ptr %2218, i64 0, i32 1
  %2220 = load ptr, ptr %2219, align 8, !tbaa !238
  %2221 = call ptr @find_reg_note(ptr noundef %2220, i32 noundef 13, ptr noundef null) #17
  %2222 = icmp eq ptr %2221, null
  br i1 %2222, label %2229, label %2223, !prof !351

2223:                                             ; preds = %2217
  %2224 = getelementptr inbounds %struct.rtx_def, ptr %2221, i64 0, i32 1
  %2225 = load ptr, ptr %2224, align 8, !tbaa !159
  %2226 = getelementptr inbounds %struct.rtx_def, ptr %2225, i64 0, i32 1
  %2227 = load i64, ptr %2226, align 8, !tbaa !159
  %2228 = icmp sgt i64 %2227, 4999
  br i1 %2228, label %2238, label %2229, !prof !352

2229:                                             ; preds = %2223, %2217
  %2230 = getelementptr inbounds %struct.edge_def, ptr %2202, i64 0, i32 1
  %2231 = load ptr, ptr %2230, align 8, !tbaa !194
  %2232 = getelementptr inbounds %struct.basic_block_def, ptr %2231, i64 0, i32 9
  %2233 = load i32, ptr %2232, align 8, !tbaa !237
  %2234 = icmp slt i32 %2233, 2
  br i1 %2234, label %2238, label %2235, !prof !353

2235:                                             ; preds = %2229
  %2236 = call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %2164, ptr noundef %2231) #17
  %2237 = icmp eq i8 %2236, 0
  br i1 %2237, label %2280, label %2238, !prof !354

2238:                                             ; preds = %2235, %2229, %2223
  %2239 = load i32, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %2240 = add nsw i32 %2239, 1
  store i32 %2240, ptr @num_possible_if_blocks, align 4, !tbaa !163
  %2241 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2242 = icmp eq ptr %2241, null
  br i1 %2242, label %2249, label %2243, !prof !355

2243:                                             ; preds = %2238
  %2244 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %2245 = load i32, ptr %2244, align 8, !tbaa !237
  %2246 = getelementptr inbounds %struct.basic_block_def, ptr %2165, i64 0, i32 9
  %2247 = load i32, ptr %2246, align 8, !tbaa !237
  %2248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2241, ptr noundef nonnull @.str.29, i32 noundef %2245, i32 noundef %2247)
  br label %2249

2249:                                             ; preds = %2243, %2238
  %2250 = load ptr, ptr %96, align 8, !tbaa !316
  %2251 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %2250) #17
  %2252 = icmp eq i8 %2251, 0
  br i1 %2252, label %2259, label %2253, !prof !356

2253:                                             ; preds = %2249
  %2254 = call zeroext i8 @predictable_edge_p(ptr noundef nonnull %96) #17
  %2255 = icmp eq i8 %2254, 0
  %2256 = load i32, ptr @ix86_branch_cost, align 4
  %2257 = shl nsw i32 %2256, 2
  %2258 = select i1 %2255, i32 %2257, i32 0, !prof !357
  br label %2259

2259:                                             ; preds = %2253, %2249
  %2260 = phi i32 [ %2258, %2253 ], [ 8, %2249 ]
  %2261 = call fastcc zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef nonnull %2165, i32 noundef %2260)
  %2262 = icmp eq i8 %2261, 0
  br i1 %2262, label %2280, label %2263, !prof !358

2263:                                             ; preds = %2259
  %2264 = getelementptr inbounds %struct.edge_def, ptr %2202, i64 0, i32 1
  %2265 = load ptr, ptr %2264, align 8, !tbaa !194
  %2266 = call fastcc i32 @dead_or_predicable(ptr noundef %50, ptr noundef nonnull %2165, ptr noundef %2164, ptr noundef %2265, i32 noundef 0), !range !270
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2280, label %2268, !prof !359

2268:                                             ; preds = %2263
  call void @df_set_bb_dirty(ptr noundef %50) #17
  call void @df_set_bb_dirty(ptr noundef %2164) #17
  call void @delete_basic_block(ptr noundef nonnull %2165) #17
  %2269 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %2270 = add nsw i32 %2269, 1
  store i32 %2270, ptr @num_true_changes, align 4, !tbaa !163
  %2271 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %2272 = add nsw i32 %2271, 1
  store i32 %2272, ptr @num_updated_if_blocks, align 4, !tbaa !163
  br label %2273

2273:                                             ; preds = %2158, %1883, %1874, %2268, %1996, %1392
  %2274 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2275 = icmp eq ptr %2274, null
  br i1 %2275, label %2278, label %2276, !prof !360

2276:                                             ; preds = %2273
  %2277 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2274, ptr noundef nonnull @.str.8, i32 noundef %32)
  br label %2278

2278:                                             ; preds = %2276, %2273
  store i1 true, ptr @cond_exec_changed_p, align 4
  %2279 = load ptr, ptr %6, align 8, !tbaa !202
  br label %2280

2280:                                             ; preds = %2263, %2259, %2213, %2210, %2199, %2196, %2189, %2180, %2171, %2207, %2192, %2235, %2000, %53, %57, %60, %69, %74, %79, %84, %91, %2003, %2278
  %2281 = phi ptr [ %2279, %2278 ], [ null, %57 ], [ null, %60 ], [ null, %69 ], [ null, %79 ], [ null, %74 ], [ null, %84 ], [ null, %91 ], [ null, %2003 ], [ null, %53 ], [ null, %2000 ], [ null, %2235 ], [ null, %2192 ], [ null, %2207 ], [ null, %2171 ], [ null, %2180 ], [ null, %2189 ], [ null, %2196 ], [ null, %2199 ], [ null, %2210 ], [ null, %2213 ], [ null, %2259 ], [ null, %2263 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #17
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %2285, label %2283, !prof !361

2283:                                             ; preds = %2280, %2285
  %2284 = phi ptr [ %2281, %2280 ], [ %2287, %2285 ]
  br label %49, !llvm.loop !362

2285:                                             ; preds = %2280, %49
  %2286 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %2287 = load ptr, ptr %2286, align 8, !tbaa !184
  %2288 = load ptr, ptr @cfun, align 8, !tbaa !148
  %2289 = getelementptr inbounds %struct.function, ptr %2288, i64 0, i32 1
  %2290 = load ptr, ptr %2289, align 8, !tbaa !180
  %2291 = getelementptr inbounds %struct.control_flow_graph, ptr %2290, i64 0, i32 1
  %2292 = load ptr, ptr %2291, align 8, !tbaa !186
  %2293 = icmp eq ptr %2287, %2292
  br i1 %2293, label %2294, label %2283, !prof !363

2294:                                             ; preds = %2285, %39
  %2295 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2296 = icmp ne ptr %2295, null
  %2297 = load i1, ptr @cond_exec_changed_p, align 4
  %2298 = select i1 %2296, i1 %2297, i1 false, !prof !179
  br i1 %2298, label %2299, label %2307, !prof !179

2299:                                             ; preds = %2294
  %2300 = load i32, ptr @dump_flags, align 4, !tbaa !163
  %2301 = and i32 %2300, 2
  %2302 = icmp eq i32 %2301, 0
  %2303 = call ptr @get_insns() #17
  br i1 %2302, label %2306, label %2304

2304:                                             ; preds = %2299
  %2305 = load i32, ptr @dump_flags, align 4, !tbaa !163
  call void @print_rtl_slim_with_bb(ptr noundef nonnull %2295, ptr noundef %2303, i32 noundef %2305) #17
  br label %2307

2306:                                             ; preds = %2299
  call void @print_rtl_with_bb(ptr noundef nonnull %2295, ptr noundef %2303) #17
  br label %2307

2307:                                             ; preds = %2294, %2306, %2304
  %2308 = load i1, ptr @cond_exec_changed_p, align 4
  br i1 %2308, label %29, label %2309, !prof !364, !llvm.loop !365

2309:                                             ; preds = %2307
  %2310 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2311 = icmp eq ptr %2310, null
  br i1 %2311, label %2314, label %2312, !prof !366

2312:                                             ; preds = %2309
  %2313 = call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr nonnull %2310)
  br label %2314

2314:                                             ; preds = %2312, %2309
  call void @free_dominance_info(i32 noundef 2) #17
  %2315 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2316 = icmp eq ptr %2315, null
  br i1 %2316, label %2319, label %2317, !prof !366

2317:                                             ; preds = %2314
  %2318 = call i32 @fflush(ptr noundef nonnull %2315)
  br label %2319

2319:                                             ; preds = %2317, %2314
  call void @clear_aux_for_blocks() #17
  %2320 = load i32, ptr @max_regno, align 4, !tbaa !163
  %2321 = call i32 @max_reg_num() #17
  %2322 = icmp slt i32 %2320, %2321
  br i1 %2322, label %2323, label %2325, !prof !367

2323:                                             ; preds = %2319
  %2324 = call i32 @max_reg_num() #17
  store i32 %2324, ptr @max_regno, align 4, !tbaa !163
  br label %2325

2325:                                             ; preds = %2323, %2319
  %2326 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2327 = icmp ne ptr %2326, null
  %2328 = load i32, ptr @num_possible_if_blocks, align 4
  %2329 = icmp sgt i32 %2328, 0
  %2330 = select i1 %2327, i1 %2329, i1 false, !prof !178
  br i1 %2330, label %2331, label %2339, !prof !178

2331:                                             ; preds = %2325
  %2332 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2326, ptr noundef nonnull @.str.5, i32 noundef %2328)
  %2333 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2334 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %2335 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2333, ptr noundef nonnull @.str.6, i32 noundef %2334)
  %2336 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %2337 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %2338 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2336, ptr noundef nonnull @.str.7, i32 noundef %2337)
  br label %2339

2339:                                             ; preds = %2331, %2325
  %2340 = load i32, ptr @optimize, align 4, !tbaa !163
  %2341 = icmp eq i32 %2340, 1
  br i1 %2341, label %2342, label %2346, !prof !178

2342:                                             ; preds = %2339
  %2343 = load ptr, ptr @df, align 8, !tbaa !148
  %2344 = getelementptr inbounds %struct.df, ptr %2343, i64 0, i32 1, i64 2
  %2345 = load ptr, ptr %2344, align 8, !tbaa !148
  call void @df_remove_problem(ptr noundef %2345) #17
  br label %2346

2346:                                             ; preds = %2342, %2339
  ret void
}

declare void @df_live_add_problem() local_unnamed_addr #3

declare void @df_live_set_all_dirty() local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @mark_loop_exit_edges() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @df_get_bb_dirty(ptr noundef) local_unnamed_addr #3

declare void @print_rtl_slim_with_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @print_rtl_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

declare void @clear_aux_for_blocks() local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @df_remove_problem(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @noce_get_condition(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !368 !PGOFuncName !369 {
  %4 = tail call i32 @any_condjump_p(ptr noundef %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %56, label %6, !prof !370

6:                                                ; preds = %3
  %7 = tail call ptr @pc_set(ptr noundef %0) #17
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %22, !prof !370

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = icmp eq ptr %17, %19
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %15, %6
  %23 = phi i8 [ 0, %6 ], [ %21, %15 ]
  %24 = icmp ne i8 %2, 0
  %25 = zext i1 %24 to i8
  %26 = xor i8 %23, %25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !159
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %53, !prof !371

34:                                               ; preds = %22
  %35 = lshr i32 %31, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !159
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %53, !prof !372

41:                                               ; preds = %34
  store ptr %0, ptr %1, align 8, !tbaa !148
  %42 = icmp eq i8 %26, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %28, align 8
  %45 = and i32 %44, 65535
  %46 = tail call i32 @reverse_condition(i32 noundef %45) #17
  %47 = load i32, ptr %28, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %46, i32 noundef %49, ptr noundef nonnull %30, ptr noundef %51) #17
  br label %56

53:                                               ; preds = %34, %22
  %54 = zext nneg i8 %26 to i32
  %55 = tail call ptr @canonicalize_condition(ptr noundef %0, ptr noundef %28, i32 noundef %54, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 1) #17
  br label %56

56:                                               ; preds = %41, %43, %3, %53
  %57 = phi ptr [ %55, %53 ], [ null, %3 ], [ %52, %43 ], [ %28, %41 ]
  ret ptr %57
}

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @predictable_edge_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cond_move_process_if_block(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !373 !PGOFuncName !374 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !240
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !242
  %7 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !247
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !148
  %15 = tail call i32 @max_reg_num() #17
  %16 = shl i32 %15, 3
  %17 = add i32 %16, 8
  %18 = sext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  %20 = alloca i8, i64 %18, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %19, i8 0, i64 %18, i1 false), !prof !375
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %20, i8 0, i64 %18, i1 false), !prof !375
  %21 = call fastcc i32 @check_cond_move_block(ptr noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %2, ptr noundef %14)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !376

23:                                               ; preds = %1
  %24 = icmp eq ptr %8, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %23
  %26 = call fastcc i32 @check_cond_move_block(ptr noundef nonnull %8, ptr noundef nonnull %20, ptr noundef nonnull %3, ptr noundef %14)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25, %1
  %29 = load ptr, ptr %2, align 8, !tbaa !148
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !377

31:                                               ; preds = %28
  tail call void @free(ptr noundef %29)
  br label %32

32:                                               ; preds = %28, %31
  store ptr null, ptr %2, align 8, !tbaa !148
  %33 = load ptr, ptr %3, align 8, !tbaa !148
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !376

35:                                               ; preds = %32
  tail call void @free(ptr noundef %33)
  br label %36

36:                                               ; preds = %32, %35
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %197

37:                                               ; preds = %25, %23
  %38 = load ptr, ptr %2, align 8
  %39 = icmp eq ptr %38, null
  br label %40

40:                                               ; preds = %95, %37
  %41 = phi i32 [ 0, %37 ], [ %96, %95 ]
  %42 = phi i32 [ 0, %37 ], [ %97, %95 ]
  br i1 %39, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %38, align 4, !tbaa !378
  %45 = icmp ugt i32 %44, %42
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = zext i32 %42 to i64
  %48 = getelementptr inbounds %struct.VEC_int_base, ptr %38, i64 0, i32 2, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !163
  br label %50

50:                                               ; preds = %40, %43, %46
  %51 = phi i32 [ %49, %46 ], [ 0, %43 ], [ 0, %40 ]
  %52 = phi i1 [ false, %46 ], [ true, %43 ], [ true, %40 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr %3, align 8
  %55 = icmp eq ptr %54, null
  br label %98

56:                                               ; preds = %50
  %57 = sext i32 %51 to i64
  %58 = getelementptr inbounds ptr, ptr %19, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !148
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds ptr, ptr %20, i64 %57
  %63 = load ptr, ptr %62, align 8, !tbaa !148
  %64 = icmp eq ptr %63, null
  br i1 %64, label %95, label %65

65:                                               ; preds = %61, %56
  %66 = getelementptr inbounds ptr, ptr %20, i64 %57
  %67 = load ptr, ptr %66, align 8, !tbaa !148
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = add nsw i32 %41, 1
  br label %95

71:                                               ; preds = %65
  %72 = load i32, ptr %59, align 8
  %73 = and i32 %72, 65535
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !163
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %95, label %78

78:                                               ; preds = %71
  %79 = load i32, ptr %67, align 8
  %80 = and i32 %79, 65535
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !163
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %95, label %85

85:                                               ; preds = %78
  %86 = tail call i32 @rtx_equal_p(ptr noundef nonnull %59, ptr noundef nonnull %67) #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  br i1 %39, label %90, label %89

89:                                               ; preds = %88
  tail call void @free(ptr noundef %38)
  br label %90

90:                                               ; preds = %88, %89
  store ptr null, ptr %2, align 8, !tbaa !148
  %91 = load ptr, ptr %3, align 8, !tbaa !148
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @free(ptr noundef %91)
  br label %94

94:                                               ; preds = %90, %93
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %197

95:                                               ; preds = %69, %85, %78, %71, %61
  %96 = phi i32 [ %41, %71 ], [ %41, %78 ], [ %41, %85 ], [ %70, %69 ], [ %41, %61 ]
  %97 = add i32 %42, 1
  br label %40, !llvm.loop !380

98:                                               ; preds = %53, %111
  %99 = phi i32 [ %117, %111 ], [ %41, %53 ]
  %100 = phi i32 [ %118, %111 ], [ 0, %53 ]
  br i1 %55, label %108, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %54, align 4, !tbaa !378
  %103 = icmp ugt i32 %102, %100
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = zext i32 %100 to i64
  %106 = getelementptr inbounds %struct.VEC_int_base, ptr %54, i64 0, i32 2, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !163
  br label %108

108:                                              ; preds = %98, %101, %104
  %109 = phi i32 [ %107, %104 ], [ 0, %101 ], [ 0, %98 ]
  %110 = phi i1 [ false, %104 ], [ true, %101 ], [ true, %98 ]
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds ptr, ptr %19, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !148
  %115 = icmp eq ptr %114, null
  %116 = zext i1 %115 to i32
  %117 = add nsw i32 %99, %116
  %118 = add i32 %100, 1
  br label %98, !llvm.loop !381

119:                                              ; preds = %108
  %120 = load ptr, ptr @cfun, align 8, !tbaa !148
  %121 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %120) #17
  %122 = icmp eq i8 %121, 0
  %123 = load i32, ptr @ix86_branch_cost, align 4
  %124 = add nsw i32 %123, 1
  %125 = select i1 %122, i32 3, i32 %124
  %126 = icmp sgt i32 %99, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  br i1 %39, label %129, label %128

128:                                              ; preds = %127
  tail call void @free(ptr noundef %38)
  br label %129

129:                                              ; preds = %127, %128
  store ptr null, ptr %2, align 8, !tbaa !148
  br i1 %55, label %131, label %130

130:                                              ; preds = %129
  tail call void @free(ptr noundef %54)
  br label %131

131:                                              ; preds = %129, %130
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %197

132:                                              ; preds = %119
  tail call void @start_sequence() #17
  %133 = call fastcc zeroext i8 @cond_move_convert_if_block(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %14, ptr noundef nonnull %19, ptr noundef nonnull %20, i8 noundef zeroext 0)
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  br i1 %24, label %144, label %136

136:                                              ; preds = %135
  %137 = call fastcc zeroext i8 @cond_move_convert_if_block(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %14, ptr noundef nonnull %19, ptr noundef nonnull %20, i8 noundef zeroext 1)
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136, %132
  tail call void @end_sequence() #17
  br i1 %39, label %141, label %140

140:                                              ; preds = %139
  tail call void @free(ptr noundef %38)
  br label %141

141:                                              ; preds = %139, %140
  store ptr null, ptr %2, align 8, !tbaa !148
  br i1 %55, label %143, label %142

142:                                              ; preds = %141
  tail call void @free(ptr noundef %54)
  br label %143

143:                                              ; preds = %141, %142
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %197

144:                                              ; preds = %136, %135
  %145 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef nonnull %0)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  br i1 %39, label %149, label %148

148:                                              ; preds = %147
  tail call void @free(ptr noundef %38)
  br label %149

149:                                              ; preds = %147, %148
  store ptr null, ptr %2, align 8, !tbaa !148
  br i1 %55, label %151, label %150

150:                                              ; preds = %149
  tail call void @free(ptr noundef %54)
  br label %151

151:                                              ; preds = %149, %150
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %197

152:                                              ; preds = %144
  %153 = tail call fastcc ptr @first_active_insn(ptr noundef %6)
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = tail call fastcc ptr @first_active_insn(ptr noundef %8)
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2741, ptr noundef nonnull @.str.10) #17
  unreachable

159:                                              ; preds = %155, %152
  %160 = phi ptr [ %153, %152 ], [ %156, %155 ]
  %161 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !159
  %163 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %145, ptr noundef %12, i32 noundef %162) #17
  br i1 %24, label %167, label %164

164:                                              ; preds = %159
  tail call void @delete_basic_block(ptr noundef nonnull %8) #17
  %165 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr @num_true_changes, align 4, !tbaa !163
  br label %169

167:                                              ; preds = %159
  %168 = tail call ptr @find_edge(ptr noundef %4, ptr noundef %10) #17
  tail call void @remove_edge(ptr noundef %168) #17
  br label %169

169:                                              ; preds = %167, %164
  %170 = tail call ptr @find_edge(ptr noundef %6, ptr noundef %10) #17
  tail call void @remove_edge(ptr noundef %170) #17
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !189
  %173 = icmp eq ptr %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %172, align 8, !tbaa !191
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %178, label %177

177:                                              ; preds = %169, %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %178

178:                                              ; preds = %174, %177
  %179 = load ptr, ptr %171, align 8, !tbaa !189
  %180 = getelementptr inbounds %struct.VEC_edge_base, ptr %179, i64 0, i32 2, i64 0
  %181 = load ptr, ptr %180, align 8, !tbaa !148
  %182 = tail call ptr @redirect_edge_and_branch_force(ptr noundef %181, ptr noundef %10) #17
  tail call void @delete_basic_block(ptr noundef %6) #17
  %183 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr @num_true_changes, align 4, !tbaa !163
  %185 = tail call zeroext i8 @can_merge_blocks_p(ptr noundef %4, ptr noundef %10) #17
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %178
  tail call void @merge_blocks(ptr noundef %4, ptr noundef %10) #17
  %188 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr @num_true_changes, align 4, !tbaa !163
  br label %190

190:                                              ; preds = %187, %178
  %191 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr @num_updated_if_blocks, align 4, !tbaa !163
  br i1 %39, label %194, label %193

193:                                              ; preds = %190
  tail call void @free(ptr noundef %38)
  br label %194

194:                                              ; preds = %190, %193
  store ptr null, ptr %2, align 8, !tbaa !148
  br i1 %55, label %196, label %195

195:                                              ; preds = %194
  tail call void @free(ptr noundef %54)
  br label %196

196:                                              ; preds = %194, %195
  store ptr null, ptr %3, align 8, !tbaa !148
  br label %197

197:                                              ; preds = %196, %151, %143, %131, %94, %36
  %198 = phi i32 [ 0, %94 ], [ 0, %131 ], [ 1, %196 ], [ 0, %151 ], [ 0, %143 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i32 %198
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #3

declare ptr @canonicalize_condition(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @first_active_insn(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !147 !PGOFuncName !382 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = load ptr, ptr %3, align 8, !tbaa !252
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %15, !prof !253

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %29, label %12, !prof !254

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi ptr [ %14, %12 ], [ %4, %1 ]
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  br label %18

18:                                               ; preds = %25, %15
  %19 = phi ptr [ %16, %15 ], [ %27, %25 ]
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %28 [
    i16 13, label %22
    i16 7, label %22
    i16 9, label %29
  ], !prof !255

22:                                               ; preds = %18, %18
  %23 = load ptr, ptr %17, align 8, !tbaa !238
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %29, label %25, !prof !256

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  br label %18, !llvm.loop !257

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %18, %22, %28, %8
  %30 = phi ptr [ null, %8 ], [ %19, %28 ], [ null, %22 ], [ null, %18 ]
  ret ptr %30
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @noce_operand_ok(ptr noundef %0) unnamed_addr #9 !prof !383 !PGOFuncName !384 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %10, !prof !272

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = tail call i32 @side_effects_p(ptr noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br label %16

10:                                               ; preds = %1
  %11 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !273

13:                                               ; preds = %10
  %14 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #17
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %10, %13, %5
  %17 = phi i1 [ %9, %5 ], [ %15, %13 ], [ false, %10 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @noce_mem_write_may_trap_or_fault_p(ptr noundef %0) unnamed_addr #12 !prof !147 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 67108864
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = tail call i32 @may_trap_or_fault_p(ptr noundef nonnull %0) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !385
  %12 = tail call ptr %11(ptr noundef %10) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %8, %41
  %15 = phi ptr [ %43, %41 ], [ %12, %8 ]
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %45 [
    i16 35, label %18
    i16 74, label %18
    i16 75, label %18
    i16 76, label %18
    i16 77, label %18
    i16 79, label %18
    i16 122, label %20
    i16 78, label %20
    i16 49, label %22
    i16 44, label %46
    i16 45, label %30
  ]

18:                                               ; preds = %14, %14, %14, %14, %14, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %41

20:                                               ; preds = %14, %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %41

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !159
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  br label %41

30:                                               ; preds = %14
  %31 = and i32 %16, 67108864
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %35, i32 noundef 0) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30, %37, %33
  br label %46

41:                                               ; preds = %28, %20, %18
  %42 = phi ptr [ %29, %28 ], [ %21, %20 ], [ %19, %18 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %14, !llvm.loop !386

45:                                               ; preds = %14, %41, %22
  br label %46

46:                                               ; preds = %14, %45, %8, %37, %5, %1, %40
  %47 = phi i8 [ 0, %40 ], [ 1, %1 ], [ 1, %5 ], [ 1, %37 ], [ 0, %8 ], [ 0, %45 ], [ 1, %14 ]
  ret i8 %47
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @noce_can_store_speculate_p(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !147 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %50
  %8 = phi ptr [ %3, %5 ], [ %51, %50 ]
  %9 = phi i8 [ undef, %5 ], [ %48, %50 ]
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %18

14:                                               ; preds = %43
  %15 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18, !llvm.loop !387

18:                                               ; preds = %7, %14
  %19 = phi ptr [ %16, %14 ], [ %12, %7 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !159
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !238
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !159
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  %34 = tail call i32 @volatile_insn_p(ptr noundef %33) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, ptr %19, align 8
  %38 = and i32 %37, 67174399
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %47, label %40

40:                                               ; preds = %26, %36
  %41 = tail call zeroext i8 @memory_modified_in_insn_p(ptr noundef %1, ptr noundef nonnull %19) #17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %6, align 8, !tbaa !159
  %45 = tail call i32 @modified_in_p(ptr noundef %44, ptr noundef nonnull %19) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %14, label %47

47:                                               ; preds = %31, %40, %43, %14, %18, %36, %7
  %48 = phi i8 [ %9, %7 ], [ 0, %31 ], [ 1, %40 ], [ 0, %43 ], [ %9, %14 ], [ %9, %18 ], [ 0, %36 ]
  %49 = phi i1 [ true, %7 ], [ false, %31 ], [ false, %40 ], [ false, %43 ], [ true, %14 ], [ true, %18 ], [ false, %36 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = tail call ptr @get_immediate_dominator(i32 noundef 2, ptr noundef nonnull %8) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %7, !llvm.loop !388

53:                                               ; preds = %47, %50, %2
  %54 = phi i8 [ 0, %2 ], [ %48, %47 ], [ 0, %50 ]
  ret i8 %54
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @noce_try_store_flag_constants(ptr nocapture noundef %0) unnamed_addr #12 !prof !383 !PGOFuncName !389 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !277
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 30
  br i1 %6, label %7, label %134, !prof !267

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 30
  br i1 %12, label %13, label %134

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !276
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !159
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !159
  %23 = sub nsw i64 %22, %20
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = lshr i64 %20, 63
  %27 = lshr i64 %22, 63
  %28 = icmp eq i64 %26, %27
  %29 = trunc i64 %26 to i32
  %30 = icmp slt i64 %20, %22
  %31 = zext i1 %30 to i32
  %32 = select i1 %28, i32 %31, i32 %29
  %33 = icmp eq i32 %32, %25
  br i1 %33, label %34, label %134

34:                                               ; preds = %13
  %35 = tail call i64 @trunc_int_for_mode(i64 noundef %23, i32 noundef %18) #17
  %36 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !245
  %38 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !247
  %40 = tail call i32 @reversed_comparison_code(ptr noundef %37, ptr noundef %39) #17
  %41 = icmp ne i32 %40, 0
  switch i64 %35, label %42 [
    i64 -1, label %69
    i64 1, label %69
  ]

42:                                               ; preds = %34
  %43 = icmp eq i64 %20, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = tail call i32 @exact_log2(i64 noundef %22) #17
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %69, label %47

47:                                               ; preds = %44, %42
  switch i64 %22, label %58 [
    i64 0, label %48
    i64 -1, label %54
  ]

48:                                               ; preds = %47
  %49 = tail call i32 @exact_log2(i64 noundef %20) #17
  %50 = icmp sgt i32 %49, -1
  %51 = select i1 %50, i1 %41, i1 false
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = icmp eq i64 %22, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %52, %47
  %55 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %56 = load i32, ptr %55, align 4, !tbaa !251
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %47, %52
  %59 = icmp eq i64 %20, -1
  %60 = select i1 %59, i1 %41, i1 false
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %63 = load i32, ptr %62, align 4, !tbaa !251
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %69, label %65

65:                                               ; preds = %61, %58
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %67 = load i32, ptr %66, align 4, !tbaa !251
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %134

69:                                               ; preds = %54, %34, %65, %61, %48, %44, %34
  %70 = phi i1 [ true, %34 ], [ true, %44 ], [ false, %48 ], [ false, %61 ], [ true, %65 ], [ true, %34 ], [ true, %54 ]
  %71 = phi i32 [ 0, %34 ], [ 0, %44 ], [ 1, %48 ], [ 1, %61 ], [ 0, %65 ], [ 0, %34 ], [ 0, %54 ]
  %72 = phi i32 [ 0, %34 ], [ 1, %44 ], [ 1, %48 ], [ -1, %61 ], [ -1, %65 ], [ 0, %34 ], [ -1, %54 ]
  br i1 %70, label %76, label %73

73:                                               ; preds = %69
  %74 = sub nsw i64 0, %35
  %75 = tail call i64 @trunc_int_for_mode(i64 noundef %74, i32 noundef %18) #17
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i64 [ %20, %73 ], [ %22, %69 ]
  %78 = phi i64 [ %22, %73 ], [ %20, %69 ]
  %79 = phi i64 [ %75, %73 ], [ %35, %69 ]
  tail call void @start_sequence() #17
  %80 = load ptr, ptr %14, align 8, !tbaa !276
  %81 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef %0, ptr noundef %80, i32 noundef %71, i32 noundef %72)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void @end_sequence() #17
  br label %134

84:                                               ; preds = %76
  switch i64 %79, label %91 [
    i64 -1, label %85
    i64 1, label %85
  ]

85:                                               ; preds = %84, %84
  %86 = icmp eq i64 %79, 1
  %87 = select i1 %86, i32 49, i32 50
  %88 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %78) #17
  %89 = load ptr, ptr %14, align 8, !tbaa !276
  %90 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef %87, ptr noundef %88, ptr noundef nonnull %81, ptr noundef %89, i32 noundef 0, i32 noundef 2) #17
  br label %116

91:                                               ; preds = %84
  %92 = icmp eq i64 %78, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %91
  %94 = tail call i32 @exact_log2(i64 noundef %77) #17
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = zext nneg i32 %94 to i64
  %98 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %97) #17
  %99 = load ptr, ptr %14, align 8, !tbaa !276
  %100 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 65, ptr noundef nonnull %81, ptr noundef %98, ptr noundef %99, i32 noundef 0, i32 noundef 2) #17
  br label %116

101:                                              ; preds = %93, %91
  %102 = icmp eq i64 %77, -1
  br i1 %102, label %103, label %107

103:                                              ; preds = %101
  %104 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %78) #17
  %105 = load ptr, ptr %14, align 8, !tbaa !276
  %106 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 62, ptr noundef nonnull %81, ptr noundef %104, ptr noundef %105, i32 noundef 0, i32 noundef 2) #17
  br label %116

107:                                              ; preds = %101
  %108 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %79) #17
  %109 = load ptr, ptr %14, align 8, !tbaa !276
  %110 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 61, ptr noundef nonnull %81, ptr noundef %108, ptr noundef %109, i32 noundef 0, i32 noundef 2) #17
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %78) #17
  %114 = load ptr, ptr %14, align 8, !tbaa !276
  %115 = tail call ptr @expand_simple_binop(i32 noundef %18, i32 noundef 49, ptr noundef nonnull %110, ptr noundef %113, ptr noundef %114, i32 noundef 0, i32 noundef 2) #17
  br label %116

116:                                              ; preds = %96, %107, %112, %103, %85
  %117 = phi ptr [ %90, %85 ], [ %100, %96 ], [ %106, %103 ], [ %115, %112 ], [ null, %107 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  tail call void @end_sequence() #17
  br label %134

120:                                              ; preds = %116
  %121 = load ptr, ptr %14, align 8, !tbaa !276
  %122 = icmp eq ptr %117, %121
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call fastcc void @noce_emit_move_insn(ptr noundef %121, ptr noundef nonnull %117)
  br label %124

124:                                              ; preds = %123, %120
  %125 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef %0)
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %38, align 8, !tbaa !247
  %129 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !274
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !159
  %133 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %125, ptr noundef %128, i32 noundef %132) #17
  br label %134

134:                                              ; preds = %1, %7, %124, %65, %13, %127, %119, %83
  %135 = phi i32 [ 1, %127 ], [ 0, %119 ], [ 0, %83 ], [ 0, %13 ], [ 0, %65 ], [ 0, %124 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %135
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @noce_try_addcc(ptr nocapture noundef %0) unnamed_addr #12 !prof !383 !PGOFuncName !390 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !277
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 49
  br i1 %6, label %7, label %129, !prof !267

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !278
  %12 = tail call i32 @rtx_equal_p(ptr noundef %9, ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %129, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !245
  %17 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !247
  %19 = tail call i32 @reversed_comparison_code(ptr noundef %16, ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %129, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !245
  %23 = load ptr, ptr %17, align 8, !tbaa !247
  %24 = tail call i32 @reversed_comparison_code(ptr noundef %22, ptr noundef %23) #17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !159
  %27 = tail call i32 @general_operand(ptr noundef %26, i32 noundef 0) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = tail call i32 @general_operand(ptr noundef %31, i32 noundef 0) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  tail call void @start_sequence() #17
  %35 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !276
  %37 = load ptr, ptr %25, align 8, !tbaa !159
  %38 = load ptr, ptr %30, align 8, !tbaa !159
  %39 = load ptr, ptr %10, align 8, !tbaa !278
  %40 = load ptr, ptr %2, align 8, !tbaa !277
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !159
  %43 = load i32, ptr %36, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  switch i32 %24, label %46 [
    i32 89, label %49
    i32 88, label %49
    i32 86, label %49
  ]

46:                                               ; preds = %34
  %47 = icmp eq i32 %24, 87
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %34, %34, %34, %46
  %50 = phi i32 [ %48, %46 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %51 = tail call ptr @emit_conditional_add(ptr noundef nonnull %36, i32 noundef %24, ptr noundef %37, ptr noundef %38, i32 noundef 0, ptr noundef %39, ptr noundef %42, i32 noundef %45, i32 noundef %50) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %35, align 8, !tbaa !276
  %55 = icmp eq ptr %51, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call fastcc void @noce_emit_move_insn(ptr noundef %54, ptr noundef nonnull %51)
  br label %57

57:                                               ; preds = %56, %53
  %58 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef %0)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %126, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %17, align 8, !tbaa !247
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !274
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !159
  %66 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %58, ptr noundef %61, i32 noundef %65) #17
  br label %126

67:                                               ; preds = %49
  tail call void @end_sequence() #17
  br label %68

68:                                               ; preds = %67, %29, %21
  %69 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %70 = load i32, ptr %69, align 4, !tbaa !251
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %126

72:                                               ; preds = %68
  %73 = load ptr, ptr %2, align 8, !tbaa !277
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !148
  %77 = icmp eq ptr %75, %76
  %78 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %79 = icmp eq ptr %75, %78
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %126

81:                                               ; preds = %72
  tail call void @start_sequence() #17
  %82 = load ptr, ptr %2, align 8, !tbaa !277
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !159
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !159
  switch i64 %86, label %88 [
    i64 1, label %90
    i64 -1, label %87
  ]

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %81
  %89 = trunc i64 %86 to i32
  br label %90

90:                                               ; preds = %81, %87, %88
  %91 = phi i32 [ 50, %87 ], [ 49, %88 ], [ 49, %81 ]
  %92 = phi i32 [ 0, %87 ], [ %89, %88 ], [ 0, %81 ]
  %93 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !276
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = tail call ptr @gen_reg_rtx(i32 noundef %97) #17
  %99 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef %0, ptr noundef %98, i32 noundef 1, i32 noundef %92)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %90
  %102 = load ptr, ptr %93, align 8, !tbaa !276
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = load ptr, ptr %10, align 8, !tbaa !278
  %107 = tail call ptr @expand_simple_binop(i32 noundef %105, i32 noundef %91, ptr noundef %106, ptr noundef nonnull %99, ptr noundef nonnull %102, i32 noundef 0, i32 noundef 2) #17
  br label %108

108:                                              ; preds = %101, %90
  %109 = phi ptr [ %107, %101 ], [ null, %90 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %93, align 8, !tbaa !276
  %113 = icmp eq ptr %109, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call fastcc void @noce_emit_move_insn(ptr noundef %112, ptr noundef nonnull %109)
  br label %115

115:                                              ; preds = %114, %111
  %116 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef %0)
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %17, align 8, !tbaa !247
  %120 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !274
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !159
  %124 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %116, ptr noundef %119, i32 noundef %123) #17
  br label %126

125:                                              ; preds = %108
  tail call void @end_sequence() #17
  br label %126

126:                                              ; preds = %68, %125, %72, %115, %57, %118, %60
  %127 = phi i32 [ 1, %60 ], [ 1, %118 ], [ 0, %57 ], [ 0, %115 ], [ undef, %72 ], [ undef, %125 ], [ undef, %68 ]
  %128 = phi i1 [ false, %60 ], [ false, %118 ], [ false, %57 ], [ false, %115 ], [ true, %72 ], [ true, %125 ], [ true, %68 ]
  br i1 %128, label %129, label %130

129:                                              ; preds = %126, %14, %7, %1
  br label %130

130:                                              ; preds = %126, %129
  %131 = phi i32 [ 0, %129 ], [ %127, %126 ]
  ret i32 %131
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @noce_try_store_flag_mask(ptr nocapture noundef %0) unnamed_addr #12 !prof !383 !PGOFuncName !391 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !251
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %71, !prof !269

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !277
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %17, !prof !267

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !276
  %15 = tail call i32 @rtx_equal_p(ptr noundef %12, ptr noundef %14) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !245
  %20 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !247
  %22 = tail call i32 @reversed_comparison_code(ptr noundef %19, ptr noundef %21) #17
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  br i1 %23, label %25, label %71, !prof !269

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !278
  %28 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %71, !prof !267

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !tbaa !277
  %32 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !276
  %34 = tail call i32 @rtx_equal_p(ptr noundef %31, ptr noundef %33) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %30, %10
  %37 = phi i32 [ 0, %10 ], [ %24, %30 ]
  tail call void @start_sequence() #17
  %38 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !276
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call ptr @gen_reg_rtx(i32 noundef %42) #17
  %44 = tail call fastcc ptr @noce_emit_store_flag(ptr noundef %0, ptr noundef %43, i32 noundef %37, i32 noundef -1)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %38, align 8, !tbaa !276
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = tail call ptr @expand_simple_binop(i32 noundef %50, i32 noundef 61, ptr noundef nonnull %47, ptr noundef nonnull %44, ptr noundef nonnull %47, i32 noundef 0, i32 noundef 2) #17
  br label %52

52:                                               ; preds = %46, %36
  %53 = phi ptr [ %51, %46 ], [ null, %36 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %38, align 8, !tbaa !276
  %57 = icmp eq ptr %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call fastcc void @noce_emit_move_insn(ptr noundef %56, ptr noundef nonnull %53)
  br label %59

59:                                               ; preds = %58, %55
  %60 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef %0)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !247
  %65 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !274
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !159
  %69 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %60, ptr noundef %64, i32 noundef %68) #17
  br label %71

70:                                               ; preds = %52
  tail call void @end_sequence() #17
  br label %71

71:                                               ; preds = %30, %1, %17, %25, %70, %59, %62
  %72 = phi i32 [ 1, %62 ], [ 0, %59 ], [ 0, %70 ], [ 0, %25 ], [ 0, %17 ], [ 0, %1 ], [ 0, %30 ]
  ret i32 %72
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @noce_try_cmove_arith(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !383 !PGOFuncName !392 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !277
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = load i32, ptr @cse_not_expected, align 4, !tbaa !163
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10, !prof !393

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %55, !prof !394

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 43
  br i1 %17, label %18, label %55, !prof !395

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !396
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %18, %23
  %28 = phi i32 [ %26, %23 ], [ 0, %18 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !396
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %27 ]
  %39 = icmp eq i32 %28, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !251
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !398
  br i1 %22, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 5
  %48 = load i8, ptr %47, align 8, !tbaa !396
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi i8 [ %48, %46 ], [ 0, %44 ]
  %51 = tail call i32 %45(i8 noundef zeroext %50) #17
  %52 = load ptr, ptr %19, align 8, !tbaa !159
  %53 = load ptr, ptr %29, align 8, !tbaa !159
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %51) #17
  br label %61

55:                                               ; preds = %40, %37, %14, %10, %1
  %56 = tail call i32 @may_trap_p(ptr noundef %3) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %397, !prof !267

58:                                               ; preds = %55
  %59 = tail call i32 @may_trap_p(ptr noundef %5) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %397

61:                                               ; preds = %58, %49
  %62 = phi i1 [ false, %49 ], [ true, %58 ]
  %63 = phi ptr [ %54, %49 ], [ %7, %58 ]
  %64 = phi ptr [ %53, %49 ], [ %5, %58 ]
  %65 = phi ptr [ %52, %49 ], [ %3, %58 ]
  %66 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !245
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !274
  %72 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !275
  %74 = icmp eq ptr %71, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !159
  %80 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %79) #17
  %81 = tail call i32 @insn_rtx_cost(ptr noundef %77, i8 noundef zeroext %80) #17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %397, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %85 = load i32, ptr %84, align 4, !tbaa !251
  %86 = shl nsw i32 %85, 2
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %397, label %88

88:                                               ; preds = %83, %61
  %89 = phi i32 [ 0, %61 ], [ %81, %83 ]
  %90 = icmp eq ptr %73, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !159
  %96 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %95) #17
  %97 = tail call i32 @insn_rtx_cost(ptr noundef %93, i8 noundef zeroext %96) #17
  %98 = add nsw i32 %97, %89
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %397, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 13
  %102 = load i32, ptr %101, align 4, !tbaa !251
  %103 = shl nsw i32 %102, 2
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %397, label %105

105:                                              ; preds = %100, %88
  %106 = load ptr, ptr %66, align 8, !tbaa !245
  %107 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !247
  %109 = tail call i32 @reversed_comparison_code(ptr noundef %106, ptr noundef %108) #17
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %105
  %112 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %63) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, ptr %64, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = tail call i32 @general_operand(ptr noundef nonnull %64, i32 noundef %117) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %111, %114
  %121 = load ptr, ptr %66, align 8, !tbaa !245
  %122 = load ptr, ptr %107, align 8, !tbaa !247
  %123 = tail call i32 @reversed_comparison_code(ptr noundef %121, ptr noundef %122) #17
  br label %124

124:                                              ; preds = %114, %120, %105
  %125 = phi ptr [ %73, %105 ], [ %71, %120 ], [ %73, %114 ]
  %126 = phi ptr [ %71, %105 ], [ %73, %120 ], [ %71, %114 ]
  %127 = phi i32 [ %69, %105 ], [ %123, %120 ], [ %69, %114 ]
  %128 = phi ptr [ %64, %105 ], [ %65, %120 ], [ %64, %114 ]
  %129 = phi ptr [ %65, %105 ], [ %64, %120 ], [ %65, %114 ]
  tail call void @start_sequence() #17
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = tail call i32 @general_operand(ptr noundef nonnull %129, i32 noundef %132) #17
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %180

135:                                              ; preds = %124
  br i1 %62, label %142, label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %129, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = tail call ptr @gen_reg_rtx(i32 noundef %139) #17
  %141 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %140, ptr noundef nonnull %129) #17
  br label %161

142:                                              ; preds = %135
  %143 = icmp eq ptr %126, null
  br i1 %143, label %176, label %144

144:                                              ; preds = %142
  %145 = load i32, ptr %129, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = tail call ptr @gen_reg_rtx(i32 noundef %147) #17
  %149 = tail call ptr @copy_rtx(ptr noundef nonnull %126) #17
  %150 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !159
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 23
  br i1 %154, label %157, label %155

155:                                              ; preds = %144
  %156 = tail call ptr @single_set_2(ptr noundef nonnull %149, ptr noundef nonnull %151) #17
  br label %157

157:                                              ; preds = %144, %155
  %158 = phi ptr [ %156, %155 ], [ %151, %144 ]
  %159 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1
  store ptr %148, ptr %159, align 8, !tbaa !159
  %160 = load ptr, ptr %150, align 8, !tbaa !159
  br label %161

161:                                              ; preds = %157, %136
  %162 = phi ptr [ %160, %157 ], [ %141, %136 ]
  %163 = phi ptr [ %148, %157 ], [ %129, %136 ]
  %164 = tail call ptr @emit_insn(ptr noundef %162) #17
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !159
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !159
  %171 = tail call i32 @recog(ptr noundef %170, ptr noundef %164, ptr noundef null) #17
  store i32 %171, ptr %165, align 8, !tbaa !159
  br label %172

172:                                              ; preds = %161, %168
  %173 = load i32, ptr %165, align 8, !tbaa !159
  %174 = lshr i32 %173, 30
  %175 = and i32 %174, 2
  br label %176

176:                                              ; preds = %172, %142
  %177 = phi i32 [ 2, %142 ], [ %175, %172 ]
  %178 = phi ptr [ %129, %142 ], [ %163, %172 ]
  %179 = icmp eq i32 %177, 0
  br i1 %179, label %180, label %396

180:                                              ; preds = %176, %124
  %181 = phi ptr [ %129, %124 ], [ %178, %176 ]
  %182 = load i32, ptr %128, align 8
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = tail call i32 @general_operand(ptr noundef nonnull %128, i32 noundef %184) #17
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %245

187:                                              ; preds = %180
  br i1 %62, label %194, label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %128, align 8
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  %192 = tail call ptr @gen_reg_rtx(i32 noundef %191) #17
  %193 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %192, ptr noundef nonnull %128) #17
  br label %213

194:                                              ; preds = %187
  %195 = icmp eq ptr %125, null
  br i1 %195, label %241, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr %128, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = tail call ptr @gen_reg_rtx(i32 noundef %199) #17
  %201 = tail call ptr @copy_rtx(ptr noundef nonnull %125) #17
  %202 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !159
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 23
  br i1 %206, label %209, label %207

207:                                              ; preds = %196
  %208 = tail call ptr @single_set_2(ptr noundef nonnull %201, ptr noundef nonnull %203) #17
  br label %209

209:                                              ; preds = %196, %207
  %210 = phi ptr [ %208, %207 ], [ %203, %196 ]
  %211 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  store ptr %200, ptr %211, align 8, !tbaa !159
  %212 = load ptr, ptr %202, align 8, !tbaa !159
  br label %213

213:                                              ; preds = %209, %188
  %214 = phi ptr [ %193, %188 ], [ %212, %209 ]
  %215 = phi ptr [ %128, %188 ], [ %200, %209 ]
  %216 = tail call ptr @get_last_insn() #17
  %217 = icmp eq ptr %216, null
  br i1 %217, label %226, label %218

218:                                              ; preds = %213
  %219 = tail call i32 @modified_in_p(ptr noundef nonnull %128, ptr noundef nonnull %216) #17
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = tail call ptr @get_insns() #17
  %223 = tail call ptr @emit_insn_before(ptr noundef %214, ptr noundef %222) #17
  %224 = tail call i32 @modified_in_p(ptr noundef nonnull %129, ptr noundef %223) #17
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %241

226:                                              ; preds = %218, %213
  %227 = tail call ptr @emit_insn(ptr noundef %214) #17
  br label %228

228:                                              ; preds = %221, %226
  %229 = phi ptr [ %223, %221 ], [ %227, %226 ]
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 1, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !159
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !159
  %236 = tail call i32 @recog(ptr noundef %235, ptr noundef %229, ptr noundef null) #17
  store i32 %236, ptr %230, align 8, !tbaa !159
  br label %237

237:                                              ; preds = %228, %233
  %238 = load i32, ptr %230, align 8, !tbaa !159
  %239 = lshr i32 %238, 30
  %240 = and i32 %239, 2
  br label %241

241:                                              ; preds = %237, %221, %194
  %242 = phi i32 [ 2, %194 ], [ 2, %221 ], [ %240, %237 ]
  %243 = phi ptr [ %128, %194 ], [ %215, %221 ], [ %215, %237 ]
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %245, label %396

245:                                              ; preds = %241, %180
  %246 = phi ptr [ %128, %180 ], [ %243, %241 ]
  %247 = load ptr, ptr %66, align 8, !tbaa !245
  %248 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !159
  %250 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1, i32 0, i32 0, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !159
  %252 = tail call fastcc ptr @noce_emit_cmove(ptr noundef %0, ptr noundef %63, i32 noundef %127, ptr noundef %249, ptr noundef %251, ptr noundef %181, ptr noundef %246)
  %253 = icmp eq ptr %252, null
  br i1 %253, label %396, label %254

254:                                              ; preds = %245
  br i1 %62, label %384, label %255

255:                                              ; preds = %254
  %256 = load ptr, ptr %6, align 8, !tbaa !276
  %257 = load i32, ptr %256, align 8
  %258 = lshr i32 %257, 16
  %259 = and i32 %258, 255
  %260 = tail call ptr @gen_rtx_MEM(i32 noundef %259, ptr noundef nonnull %252) #17
  %261 = load ptr, ptr %2, align 8, !tbaa !277
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 134217728
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %255
  %266 = load ptr, ptr %4, align 8, !tbaa !278
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 134217728
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %265, %255
  %271 = load i32, ptr %260, align 8
  %272 = or i32 %271, 134217728
  store i32 %272, ptr %260, align 8
  br label %273

273:                                              ; preds = %270, %265
  %274 = load ptr, ptr %2, align 8, !tbaa !277
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 268435456
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %4, align 8, !tbaa !278
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 268435456
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %278
  %284 = load i32, ptr %260, align 8
  %285 = or i32 %284, 268435456
  store i32 %285, ptr %260, align 8
  br label %286

286:                                              ; preds = %283, %278, %273
  %287 = load ptr, ptr %2, align 8, !tbaa !277
  %288 = load i32, ptr %287, align 8
  %289 = icmp sgt i32 %288, -1
  br i1 %289, label %297, label %290

290:                                              ; preds = %286
  %291 = load ptr, ptr %4, align 8, !tbaa !278
  %292 = load i32, ptr %291, align 8
  %293 = icmp sgt i32 %292, -1
  br i1 %293, label %297, label %294

294:                                              ; preds = %290
  %295 = load i32, ptr %260, align 8
  %296 = or i32 %295, -2147483648
  store i32 %296, ptr %260, align 8
  br label %297

297:                                              ; preds = %294, %290, %286
  %298 = load ptr, ptr %2, align 8, !tbaa !277
  %299 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !159
  %301 = icmp eq ptr %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.mem_attrs, ptr %300, i64 0, i32 3
  %304 = load i32, ptr %303, align 8, !tbaa !399
  br label %305

305:                                              ; preds = %297, %302
  %306 = phi i32 [ %304, %302 ], [ 0, %297 ]
  %307 = load ptr, ptr %4, align 8, !tbaa !278
  %308 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !159
  %310 = icmp eq ptr %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.mem_attrs, ptr %309, i64 0, i32 3
  %313 = load i32, ptr %312, align 8, !tbaa !399
  br label %314

314:                                              ; preds = %305, %311
  %315 = phi i32 [ %313, %311 ], [ 0, %305 ]
  %316 = icmp eq i32 %306, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  br i1 %301, label %321, label %318

318:                                              ; preds = %317
  %319 = getelementptr inbounds %struct.mem_attrs, ptr %300, i64 0, i32 3
  %320 = load i32, ptr %319, align 8, !tbaa !399
  br label %321

321:                                              ; preds = %317, %318
  %322 = phi i32 [ %320, %318 ], [ 0, %317 ]
  tail call void @set_mem_alias_set(ptr noundef %260, i32 noundef %322) #17
  br label %323

323:                                              ; preds = %321, %314
  %324 = load ptr, ptr %2, align 8, !tbaa !277
  %325 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1, i32 0, i32 0, i64 1
  %326 = load ptr, ptr %325, align 8, !tbaa !159
  %327 = icmp eq ptr %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.mem_attrs, ptr %326, i64 0, i32 4
  %330 = load i32, ptr %329, align 4, !tbaa !400
  br label %331

331:                                              ; preds = %323, %328
  %332 = phi i32 [ %330, %328 ], [ 8, %323 ]
  %333 = load ptr, ptr %4, align 8, !tbaa !278
  %334 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1, i32 0, i32 0, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !159
  %336 = icmp eq ptr %335, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.mem_attrs, ptr %335, i64 0, i32 4
  %339 = load i32, ptr %338, align 4, !tbaa !400
  br label %340

340:                                              ; preds = %331, %337
  %341 = phi i32 [ %339, %337 ], [ 8, %331 ]
  %342 = icmp ult i32 %332, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  br i1 %327, label %349, label %345

344:                                              ; preds = %340
  br i1 %336, label %349, label %345

345:                                              ; preds = %344, %343
  %346 = phi ptr [ %326, %343 ], [ %335, %344 ]
  %347 = getelementptr inbounds %struct.mem_attrs, ptr %346, i64 0, i32 4
  %348 = load i32, ptr %347, align 4, !tbaa !400
  br label %349

349:                                              ; preds = %345, %344, %343
  %350 = phi i32 [ 8, %343 ], [ 8, %344 ], [ %348, %345 ]
  tail call void @set_mem_align(ptr noundef %260, i32 noundef %350) #17
  %351 = load ptr, ptr %2, align 8, !tbaa !277
  %352 = getelementptr inbounds %struct.rtx_def, ptr %351, i64 0, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !159
  %354 = icmp eq ptr %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %349
  %356 = getelementptr inbounds %struct.mem_attrs, ptr %353, i64 0, i32 5
  %357 = load i8, ptr %356, align 8, !tbaa !396
  %358 = zext i8 %357 to i32
  br label %359

359:                                              ; preds = %349, %355
  %360 = phi i32 [ %358, %355 ], [ 0, %349 ]
  %361 = load ptr, ptr %4, align 8, !tbaa !278
  %362 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1, i32 0, i32 0, i64 1
  %363 = load ptr, ptr %362, align 8, !tbaa !159
  %364 = icmp eq ptr %363, null
  br i1 %364, label %369, label %365

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.mem_attrs, ptr %363, i64 0, i32 5
  %367 = load i8, ptr %366, align 8, !tbaa !396
  %368 = zext i8 %367 to i32
  br label %369

369:                                              ; preds = %359, %365
  %370 = phi i32 [ %368, %365 ], [ 0, %359 ]
  %371 = icmp eq i32 %360, %370
  br i1 %371, label %373, label %372

372:                                              ; preds = %369
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1486, ptr noundef nonnull @.str.10) #17
  br label %373

373:                                              ; preds = %369, %372
  %374 = load ptr, ptr %2, align 8, !tbaa !277
  %375 = getelementptr inbounds %struct.rtx_def, ptr %374, i64 0, i32 1, i32 0, i32 0, i64 1
  %376 = load ptr, ptr %375, align 8, !tbaa !159
  %377 = icmp eq ptr %376, null
  br i1 %377, label %381, label %378

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.mem_attrs, ptr %376, i64 0, i32 5
  %380 = load i8, ptr %379, align 8, !tbaa !396
  br label %381

381:                                              ; preds = %373, %378
  %382 = phi i8 [ %380, %378 ], [ 0, %373 ]
  tail call void @set_mem_addr_space(ptr noundef %260, i8 noundef zeroext %382) #17
  %383 = load ptr, ptr %6, align 8, !tbaa !276
  tail call fastcc void @noce_emit_move_insn(ptr noundef %383, ptr noundef %260)
  br label %387

384:                                              ; preds = %254
  %385 = icmp eq ptr %252, %63
  br i1 %385, label %387, label %386

386:                                              ; preds = %384
  tail call fastcc void @noce_emit_move_insn(ptr noundef %63, ptr noundef nonnull %252)
  br label %387

387:                                              ; preds = %384, %386, %381
  %388 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef %0)
  %389 = icmp eq ptr %388, null
  br i1 %389, label %397, label %390

390:                                              ; preds = %387
  %391 = load ptr, ptr %107, align 8, !tbaa !247
  %392 = load ptr, ptr %70, align 8, !tbaa !274
  %393 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1, i32 0, i32 2
  %394 = load i32, ptr %393, align 8, !tbaa !159
  %395 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %388, ptr noundef %391, i32 noundef %394) #17
  br label %397

396:                                              ; preds = %241, %176, %245
  tail call void @end_sequence() #17
  br label %397

397:                                              ; preds = %387, %91, %100, %75, %83, %55, %58, %396, %390
  %398 = phi i32 [ 1, %390 ], [ 0, %396 ], [ 0, %58 ], [ 0, %55 ], [ 0, %83 ], [ 0, %75 ], [ 0, %100 ], [ 0, %91 ], [ 0, %387 ]
  ret i32 %398
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @noce_try_sign_mask(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !383 !PGOFuncName !401 {
  %2 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !245
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !277
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %26, !prof !267

14:                                               ; preds = %1
  %15 = icmp eq i32 %5, 85
  %16 = icmp eq ptr %9, %12
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %5, 84
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %21 = icmp eq ptr %9, %20
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %40

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !278
  br label %40

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !278
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %30, label %40, !prof !267

30:                                               ; preds = %26
  %31 = icmp eq i32 %5, 82
  %32 = icmp eq ptr %9, %12
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = icmp eq i32 %5, 83
  %36 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %37 = icmp eq ptr %9, %36
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %26, %39, %34, %18, %23
  %41 = phi ptr [ %25, %23 ], [ null, %18 ], [ %11, %39 ], [ null, %34 ], [ null, %26 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %96, label %43, !prof !269

43:                                               ; preds = %40
  %44 = tail call i32 @side_effects_p(ptr noundef nonnull %41) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %43
  %47 = load i32, ptr %41, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = load i32, ptr %7, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, %49
  br i1 %53, label %54, label %96

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !278
  %57 = icmp eq ptr %41, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !275
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !159
  %65 = load ptr, ptr %0, align 8, !tbaa !240
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %54, %62
  %68 = load ptr, ptr %0, align 8, !tbaa !240
  %69 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %68) #17
  %70 = tail call i32 @rtx_cost(ptr noundef nonnull %41, i32 noundef 23, i8 noundef zeroext %69) #17
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %96

72:                                               ; preds = %62, %58, %67
  tail call void @start_sequence() #17
  %73 = tail call ptr @gen_reg_rtx(i32 noundef %49) #17
  %74 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !148
  %75 = tail call ptr @emit_store_flag(ptr noundef %73, i32 noundef 85, ptr noundef nonnull %7, ptr noundef %74, i32 noundef %49, i32 noundef 0, i32 noundef -1) #17
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call ptr @expand_binop(i32 noundef %49, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %75, ptr noundef nonnull %41, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %79

79:                                               ; preds = %72, %77
  %80 = phi ptr [ %78, %77 ], [ null, %72 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void @end_sequence() #17
  br label %96

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %85 = load ptr, ptr %84, align 8, !tbaa !276
  tail call fastcc void @noce_emit_move_insn(ptr noundef %85, ptr noundef nonnull %80)
  %86 = tail call fastcc ptr @end_ifcvt_sequence(ptr noundef %0)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !247
  %91 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !274
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !159
  %95 = tail call ptr @emit_insn_before_setloc(ptr noundef nonnull %86, ptr noundef %90, i32 noundef %94) #17
  br label %96

96:                                               ; preds = %83, %67, %46, %40, %43, %88, %82
  %97 = phi i32 [ 1, %88 ], [ 0, %82 ], [ 0, %43 ], [ 0, %40 ], [ 0, %46 ], [ 0, %67 ], [ 0, %83 ]
  ret i32 %97
}

declare void @start_sequence() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @noce_emit_move_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !147 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %106, label %6

6:                                                ; preds = %2
  tail call void @start_sequence() #17
  %7 = load i32, ptr %1, align 8
  %8 = freeze i32 %7
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !163
  %13 = icmp eq i32 %9, 39
  %14 = and i32 %12, -2
  %15 = icmp eq i32 %14, 8
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  br label %22

19:                                               ; preds = %6
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %21 = tail call ptr @emit_insn(ptr noundef %20) #17
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %24 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !159
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = tail call i32 @recog(ptr noundef %30, ptr noundef %23, ptr noundef null) #17
  store i32 %31, ptr %25, align 8, !tbaa !159
  br label %32

32:                                               ; preds = %22, %28
  %33 = load i32, ptr %25, align 8, !tbaa !159
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %103

35:                                               ; preds = %32
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 120
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !159
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !159
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !159
  %50 = load i32, ptr %41, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 43
  %53 = select i1 %52, i64 8, i64 32
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 763, ptr noundef nonnull @.str.10) #17
  br label %56

56:                                               ; preds = %39, %55
  %57 = load i32, ptr %0, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  tail call void @store_bit_field(ptr noundef nonnull %41, i64 noundef %45, i64 noundef %49, i32 noundef %59, ptr noundef nonnull %1) #17
  br label %123

60:                                               ; preds = %35
  %61 = load i32, ptr %1, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !163
  switch i32 %65, label %103 [
    i32 4, label %66
    i32 2, label %80
    i32 3, label %80
  ]

66:                                               ; preds = %60
  %67 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !148
  %69 = icmp eq ptr %68, null
  br i1 %69, label %103, label %70

70:                                               ; preds = %66
  tail call void @start_sequence() #17
  %71 = load i32, ptr %1, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = tail call ptr @expand_unop(i32 noundef %73, ptr noundef nonnull %68, ptr noundef %75, ptr noundef nonnull %0, i32 noundef 0) #17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %70
  %79 = icmp eq ptr %76, %0
  br i1 %79, label %99, label %96

80:                                               ; preds = %60, %60
  %81 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %63
  %82 = load ptr, ptr %81, align 8, !tbaa !148
  %83 = icmp eq ptr %82, null
  br i1 %83, label %103, label %84

84:                                               ; preds = %80
  tail call void @start_sequence() #17
  %85 = load i32, ptr %1, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !159
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !159
  %92 = tail call ptr @expand_binop(i32 noundef %87, ptr noundef nonnull %82, ptr noundef %89, ptr noundef %91, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %84
  %95 = icmp eq ptr %92, %0
  br i1 %95, label %99, label %96

96:                                               ; preds = %94, %78
  %97 = phi ptr [ %76, %78 ], [ %92, %94 ]
  %98 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %97) #17
  br label %99

99:                                               ; preds = %96, %94, %78
  %100 = tail call ptr @get_insns() #17
  br label %101

101:                                              ; preds = %99, %84, %70
  %102 = phi ptr [ %24, %70 ], [ %24, %84 ], [ %100, %99 ]
  tail call void @end_sequence() #17
  br label %103

103:                                              ; preds = %101, %80, %66, %60, %32
  %104 = phi ptr [ %24, %60 ], [ %24, %66 ], [ %24, %32 ], [ %24, %80 ], [ %102, %101 ]
  %105 = tail call ptr @emit_insn(ptr noundef %104) #17
  br label %123

106:                                              ; preds = %2
  %107 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !159
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !159
  %111 = load i32, ptr %108, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load i32, ptr %114, align 8, !tbaa !159
  %116 = shl i32 %115, 3
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !159
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 3
  %122 = sext i32 %116 to i64
  tail call void @store_bit_field(ptr noundef %110, i64 noundef %121, i64 noundef %122, i32 noundef %113, ptr noundef %1) #17
  br label %123

123:                                              ; preds = %56, %103, %106
  ret void
}

declare void @set_used_flags(ptr noundef) local_unnamed_addr #3

declare void @unshare_all_rtl_in_chain(ptr noundef) local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn_before_setloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_or_fault_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @decl_readonly_section(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @volatile_insn_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @memory_modified_in_insn_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @end_ifcvt_sequence(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !402 !PGOFuncName !403 {
  %2 = tail call ptr @get_insns() #17
  %3 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  tail call void @set_used_flags(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  tail call void @set_used_flags(ptr noundef %6) #17
  tail call void @unshare_all_rtl_in_chain(ptr noundef %2) #17
  tail call void @end_sequence() #17
  %7 = icmp eq ptr %2, null
  br i1 %7, label %28, label %8, !prof !404

8:                                                ; preds = %1, %24
  %9 = phi ptr [ %26, %24 ], [ %2, %1 ]
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %28, label %13, !prof !405

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !159
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21, !prof !406

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = tail call i32 @recog(ptr noundef %19, ptr noundef nonnull %9, ptr noundef null) #17
  store i32 %20, ptr %14, align 8, !tbaa !159
  br label %21

21:                                               ; preds = %13, %17
  %22 = load i32, ptr %14, align 8, !tbaa !159
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %28, label %24, !prof !405

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !159
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !prof !407, !llvm.loop !408

28:                                               ; preds = %21, %8, %24, %1
  %29 = phi ptr [ %2, %1 ], [ null, %21 ], [ null, %8 ], [ %2, %24 ]
  ret ptr %29
}

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @noce_emit_store_flag(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 !prof !147 {
  %5 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = tail call i32 @general_operand(ptr noundef %8, i32 noundef 0) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = tail call i32 @general_operand(ptr noundef %13, i32 noundef 0) #17
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %11, %4
  %17 = phi i1 [ true, %4 ], [ %15, %11 ]
  br i1 %17, label %18, label %49

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !247
  %21 = tail call ptr @pc_set(ptr noundef %20) #17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 44
  br i1 %30, label %31, label %41

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  %34 = load ptr, ptr %19, align 8, !tbaa !247
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = icmp eq i32 %2, 0
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %38, %31, %18
  %42 = phi i32 [ %40, %38 ], [ %2, %31 ], [ %2, %18 ]
  %43 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %44 = load i8, ptr %43, align 8, !tbaa !248
  %45 = icmp eq i8 %44, 0
  %46 = icmp eq i32 %42, 0
  %47 = zext i1 %46 to i32
  %48 = select i1 %45, i32 %42, i32 %47
  br label %49

49:                                               ; preds = %41, %16
  %50 = phi ptr [ %25, %41 ], [ %6, %16 ]
  %51 = phi i32 [ %48, %41 ], [ %2, %16 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !247
  %56 = tail call i32 @reversed_comparison_code(ptr noundef %50, ptr noundef %55) #17
  br label %60

57:                                               ; preds = %49
  %58 = load i32, ptr %50, align 8
  %59 = and i32 %58, 65535
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %56, %53 ], [ %59, %57 ]
  %62 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !246
  %64 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !247
  %66 = icmp eq ptr %63, %65
  %67 = or i1 %17, %66
  %68 = icmp ult i32 %3, 2
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %99

70:                                               ; preds = %60
  %71 = load i32, ptr %1, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %61, i32 noundef %73, ptr noundef %75, ptr noundef %77) #17
  %79 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %1, ptr noundef %78) #17
  tail call void @start_sequence() #17
  %80 = tail call ptr @emit_insn(ptr noundef %79) #17
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !159
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = tail call i32 @recog(ptr noundef %86, ptr noundef %80, ptr noundef null) #17
  store i32 %87, ptr %81, align 8, !tbaa !159
  br label %88

88:                                               ; preds = %70, %84
  %89 = load i32, ptr %81, align 8, !tbaa !159
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %93 = tail call ptr @emit_insn(ptr noundef %92) #17
  %94 = load ptr, ptr %64, align 8, !tbaa !247
  store ptr %94, ptr %62, align 8, !tbaa !246
  br label %96

95:                                               ; preds = %88
  tail call void @end_sequence() #17
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi ptr [ null, %95 ], [ %1, %91 ]
  %98 = or i1 %17, %90
  br i1 %98, label %120, label %100

99:                                               ; preds = %60
  br i1 %17, label %120, label %100

100:                                              ; preds = %99, %96
  %101 = load i32, ptr %1, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !159
  %107 = and i8 %106, -2
  %108 = icmp eq i8 %107, 2
  br i1 %108, label %109, label %120

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !159
  %112 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !159
  switch i32 %61, label %114 [
    i32 89, label %117
    i32 88, label %117
    i32 86, label %117
  ]

114:                                              ; preds = %109
  %115 = icmp eq i32 %61, 87
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %109, %109, %109, %114
  %118 = phi i32 [ %116, %114 ], [ 1, %109 ], [ 1, %109 ], [ 1, %109 ]
  %119 = tail call ptr @emit_store_flag(ptr noundef nonnull %1, i32 noundef %61, ptr noundef %111, ptr noundef %113, i32 noundef 0, i32 noundef %118, i32 noundef %3) #17
  br label %120

120:                                              ; preds = %100, %96, %99, %117
  %121 = phi ptr [ %119, %117 ], [ %97, %96 ], [ null, %99 ], [ null, %100 ]
  ret ptr %121
}

declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_store_flag(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @noce_get_alt_condition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !409 !PGOFuncName !410 {
  %4 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !245
  %6 = tail call i32 @reg_mentioned_p(ptr noundef %1, ptr noundef %5) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !297

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !246
  store ptr %10, ptr %2, align 8, !tbaa !148
  %11 = load ptr, ptr %4, align 8, !tbaa !245
  br label %213

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !247
  %15 = tail call ptr @pc_set(ptr noundef %14) #17
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %25, label %32, !prof !411

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  %28 = load ptr, ptr %13, align 8, !tbaa !247
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = icmp eq ptr %27, %30
  br label %32

32:                                               ; preds = %25, %12
  %33 = phi i1 [ false, %12 ], [ %31, %25 ]
  %34 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 12
  %35 = load i8, ptr %34, align 8, !tbaa !248
  %36 = icmp ne i8 %35, 0
  %37 = xor i1 %33, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %157, !prof !412

42:                                               ; preds = %32
  %43 = load ptr, ptr %4, align 8, !tbaa !245
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !159
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !159
  %50 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !246
  %52 = tail call ptr @prev_nonnote_insn(ptr noundef %51) #17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %105, label %54, !prof !413

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = load ptr, ptr %50, align 8, !tbaa !246
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %61, label %105, !prof !414

61:                                               ; preds = %54
  %62 = load i32, ptr %52, align 8
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %105, !prof !415

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !159
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %72, label %105, !prof !416

72:                                               ; preds = %66
  %73 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %52) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79, !prof !417

75:                                               ; preds = %72
  %76 = load ptr, ptr %67, align 8, !tbaa !159
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !159
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi ptr [ %73, %72 ], [ %78, %75 ]
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 30
  br i1 %83, label %84, label %105, !prof !418

84:                                               ; preds = %79
  %85 = load ptr, ptr %67, align 8, !tbaa !159
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = tail call i32 @rtx_equal_p(ptr noundef %47, ptr noundef %87) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load ptr, ptr %67, align 8, !tbaa !159
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef %93) #17
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, ptr %49, ptr %80
  br label %97

97:                                               ; preds = %90, %84
  %98 = phi ptr [ %80, %84 ], [ %47, %90 ]
  %99 = phi ptr [ %49, %84 ], [ %96, %90 ]
  %100 = load i32, ptr %98, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 30
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = tail call i32 @swap_condition(i32 noundef %45) #17
  br label %105

105:                                              ; preds = %61, %79, %103, %97, %66, %54, %42
  %106 = phi i32 [ %45, %66 ], [ %45, %54 ], [ %45, %42 ], [ %45, %61 ], [ %104, %103 ], [ %45, %97 ], [ %45, %79 ]
  %107 = phi ptr [ %47, %66 ], [ %47, %54 ], [ %47, %42 ], [ %47, %61 ], [ %99, %103 ], [ %98, %97 ], [ %47, %79 ]
  %108 = phi ptr [ %49, %66 ], [ %49, %54 ], [ %49, %42 ], [ %49, %61 ], [ %98, %103 ], [ %99, %97 ], [ %49, %79 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 30
  br i1 %111, label %112, label %132, !prof !419

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !159
  %115 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !159
  switch i32 %106, label %132 [
    i32 85, label %117
    i32 84, label %120
    i32 83, label %123
    i32 82, label %126
  ], !prof !420

117:                                              ; preds = %112
  %118 = add nsw i64 %114, 1
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %129, label %132, !prof !339

120:                                              ; preds = %112
  %121 = add nsw i64 %114, -1
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %129, label %132

123:                                              ; preds = %112
  %124 = add nsw i64 %114, -1
  %125 = icmp eq i64 %116, %124
  br i1 %125, label %129, label %132

126:                                              ; preds = %112
  %127 = add nsw i64 %114, 1
  %128 = icmp eq i64 %116, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %123, %120, %117
  %130 = phi i32 [ 84, %117 ], [ 85, %120 ], [ 82, %123 ], [ 83, %126 ]
  %131 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %114) #17
  br label %132

132:                                              ; preds = %129, %117, %120, %123, %126, %112, %105
  %133 = phi i32 [ %106, %105 ], [ %106, %112 ], [ 82, %126 ], [ 83, %123 ], [ 84, %120 ], [ 85, %117 ], [ %130, %129 ]
  %134 = phi ptr [ %108, %105 ], [ %108, %112 ], [ %108, %126 ], [ %108, %123 ], [ %108, %120 ], [ %108, %117 ], [ %131, %129 ]
  %135 = load ptr, ptr %4, align 8, !tbaa !245
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %133, %137
  br i1 %138, label %139, label %147, !prof !419

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !159
  %142 = icmp eq ptr %107, %141
  br i1 %142, label %143, label %147, !prof !419

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !159
  %146 = icmp eq ptr %134, %145
  br i1 %146, label %153, label %147, !prof !419

147:                                              ; preds = %143, %139, %132
  %148 = load i32, ptr %19, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %133, i32 noundef %150, ptr noundef %107, ptr noundef %134) #17
  %152 = load ptr, ptr %50, align 8, !tbaa !246
  store ptr %152, ptr %2, align 8, !tbaa !148
  br label %153

153:                                              ; preds = %143, %147
  %154 = phi i1 [ false, %147 ], [ true, %143 ]
  %155 = phi ptr [ %151, %147 ], [ %19, %143 ]
  %156 = phi ptr [ %151, %147 ], [ undef, %143 ]
  br i1 %154, label %157, label %213, !prof !419

157:                                              ; preds = %153, %32
  %158 = phi ptr [ %155, %153 ], [ %19, %32 ]
  %159 = load ptr, ptr %13, align 8, !tbaa !247
  %160 = tail call ptr @canonicalize_condition(ptr noundef %159, ptr noundef %158, i32 noundef %38, ptr noundef %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1) #17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %213, label %162, !prof !411

162:                                              ; preds = %157
  %163 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %1, ptr noundef nonnull %160) #17
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %213, label %165, !prof !421

165:                                              ; preds = %162
  %166 = load ptr, ptr %13, align 8, !tbaa !159
  %167 = load ptr, ptr %2, align 8, !tbaa !148
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 11
  br label %177

171:                                              ; preds = %189, %165
  %172 = phi ptr [ %167, %165 ], [ %192, %189 ]
  %173 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 9
  %174 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 10
  %175 = load ptr, ptr %13, align 8, !tbaa !247
  %176 = icmp eq ptr %172, %175
  br i1 %176, label %213, label %194

177:                                              ; preds = %169, %189
  %178 = phi ptr [ %166, %169 ], [ %191, %189 ]
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = add nsw i32 %180, -7
  %182 = icmp ult i32 %181, 4
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load ptr, ptr %170, align 8, !tbaa !276
  %185 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !159
  %187 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %184, ptr noundef %186) #17
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %213

189:                                              ; preds = %177, %183
  %190 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !159
  %192 = load ptr, ptr %2, align 8, !tbaa !148
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %171, label %177, !llvm.loop !422

194:                                              ; preds = %171, %208
  %195 = phi ptr [ %210, %208 ], [ %172, %171 ]
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = add nsw i32 %197, -7
  %199 = icmp ult i32 %198, 4
  br i1 %199, label %200, label %208

200:                                              ; preds = %194
  %201 = load ptr, ptr %173, align 8, !tbaa !277
  %202 = tail call i32 @modified_in_p(ptr noundef %201, ptr noundef nonnull %195) #17
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %200
  %205 = load ptr, ptr %174, align 8, !tbaa !278
  %206 = tail call i32 @modified_in_p(ptr noundef %205, ptr noundef nonnull %195) #17
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %194, %204
  %209 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1, i32 0, i32 0, i64 2
  %210 = load ptr, ptr %209, align 8, !tbaa !159
  %211 = load ptr, ptr %13, align 8, !tbaa !247
  %212 = icmp eq ptr %210, %211
  br i1 %212, label %213, label %194, !llvm.loop !423

213:                                              ; preds = %183, %204, %200, %208, %171, %153, %157, %162, %8
  %214 = phi ptr [ %11, %8 ], [ null, %162 ], [ null, %157 ], [ %156, %153 ], [ %160, %171 ], [ %160, %208 ], [ null, %200 ], [ null, %204 ], [ null, %183 ]
  ret ptr %214
}

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #3

declare ptr @expand_one_cmpl_abs_nojump(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_abs_nojump(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_simple_unop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @noce_emit_cmove(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #9 !prof !402 !PGOFuncName !424 {
  %8 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !246
  %10 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %41, !prof !254

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.noce_if_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !245
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %18, ptr noundef %3, ptr noundef %4) #17
  %20 = load i32, ptr %1, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %22, ptr noundef %19, ptr noundef %6, ptr noundef %5) #17
  %24 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %1, ptr noundef %23) #17
  tail call void @start_sequence() #17
  %25 = tail call ptr @emit_insn(ptr noundef %24) #17
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !159
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = tail call i32 @recog(ptr noundef %31, ptr noundef %25, ptr noundef null) #17
  store i32 %32, ptr %26, align 8, !tbaa !159
  br label %33

33:                                               ; preds = %13, %29
  %34 = load i32, ptr %26, align 8, !tbaa !159
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %38 = tail call ptr @emit_insn(ptr noundef %37) #17
  br label %40

39:                                               ; preds = %33
  tail call void @end_sequence() #17
  br label %40

40:                                               ; preds = %39, %36
  br i1 %35, label %41, label %63

41:                                               ; preds = %40, %7
  %42 = load i32, ptr %3, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = tail call i32 @general_operand(ptr noundef nonnull %3, i32 noundef %44) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %47, !prof !254

47:                                               ; preds = %41
  %48 = load i32, ptr %4, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = tail call i32 @general_operand(ptr noundef nonnull %4, i32 noundef %50) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53, !prof !254

53:                                               ; preds = %47
  %54 = load i32, ptr %1, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  switch i32 %2, label %57 [
    i32 89, label %60
    i32 88, label %60
    i32 86, label %60
  ], !prof !264

57:                                               ; preds = %53
  %58 = icmp eq i32 %2, 87
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %53, %53, %53, %57
  %61 = phi i32 [ %59, %57 ], [ 1, %53 ], [ 1, %53 ], [ 1, %53 ]
  %62 = tail call ptr @emit_conditional_move(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, ptr noundef %6, ptr noundef %5, i32 noundef %56, i32 noundef %61) #17
  br label %63

63:                                               ; preds = %41, %47, %40, %60
  %64 = phi ptr [ %1, %40 ], [ %62, %60 ], [ null, %47 ], [ null, %41 ]
  ret ptr %64
}

declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_conditional_move(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @emit_conditional_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @insn_rtx_cost(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @store_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_unop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @check_cond_move_block(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #9 !prof !373 !PGOFuncName !425 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !238
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %15, !prof !426

12:                                               ; preds = %4
  %13 = tail call i32 @onlyjump_p(ptr noundef nonnull %8) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %154, label %15

15:                                               ; preds = %12, %4
  %16 = load ptr, ptr %5, align 8, !tbaa !159
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = icmp eq ptr %17, null
  br i1 %18, label %154, label %19, !prof !266

19:                                               ; preds = %15, %150
  %20 = phi ptr [ %152, %150 ], [ %17, %15 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !238
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %154, label %27, !prof !427

27:                                               ; preds = %19
  %28 = load i32, ptr %20, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %148, !prof !428

32:                                               ; preds = %27
  switch i32 %29, label %41 [
    i32 7, label %148
    i32 9, label %148
    i32 8, label %33
    i32 10, label %33
  ], !prof !429

33:                                               ; preds = %32, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %41, label %39, !prof !430

39:                                               ; preds = %33
  %40 = tail call ptr @single_set_2(ptr noundef nonnull %20, ptr noundef nonnull %35) #17
  br label %41

41:                                               ; preds = %33, %32, %39
  %42 = phi ptr [ %40, %39 ], [ null, %32 ], [ %35, %33 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %148, label %44, !prof !431

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = load i32, ptr %46, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %148, !prof !432

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !159
  %55 = icmp ult i32 %54, 53
  br i1 %55, label %148, label %56, !prof !433

56:                                               ; preds = %52
  %57 = load i32, ptr %48, align 8
  %58 = and i32 %57, 65535
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !163
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %66, label %63, !prof !434

63:                                               ; preds = %56
  %64 = tail call i32 @register_operand(ptr noundef nonnull %48, i32 noundef 0) #17
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %148, label %66, !prof !435

66:                                               ; preds = %63, %56
  %67 = tail call i32 @side_effects_p(ptr noundef nonnull %48) #17
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %148, !prof !436

69:                                               ; preds = %66
  %70 = tail call i32 @side_effects_p(ptr noundef nonnull %46) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %148, !prof !436

72:                                               ; preds = %69
  %73 = tail call i32 @may_trap_p(ptr noundef nonnull %48) #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %148, !prof !436

75:                                               ; preds = %72
  %76 = tail call i32 @may_trap_p(ptr noundef nonnull %46) #17
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %148, !prof !436

78:                                               ; preds = %75
  %79 = load i32, ptr %48, align 8
  %80 = and i32 %79, 65535
  %81 = trunc i32 %79 to i16
  switch i16 %81, label %104 [
    i16 37, label %82
    i16 39, label %91
  ], !prof !437

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !159
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !148
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %148

89:                                               ; preds = %82
  %90 = icmp eq i32 %80, 39
  br i1 %90, label %91, label %104, !prof !438

91:                                               ; preds = %78, %89
  %92 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 37
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !159
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %1, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !148
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %148

104:                                              ; preds = %97, %78, %91, %89
  %105 = load i32, ptr %53, align 8, !tbaa !159
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %1, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !148
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %148, !prof !436

110:                                              ; preds = %104
  %111 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %46, ptr noundef %3) #17
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %148, !prof !436

113:                                              ; preds = %110
  %114 = load i32, ptr %48, align 8
  %115 = and i32 %114, 65535
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !163
  %119 = icmp eq i32 %118, 9
  br i1 %119, label %128, label %120, !prof !436

120:                                              ; preds = %113
  %121 = load ptr, ptr %5, align 8, !tbaa !159
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !238
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !159
  %126 = tail call i32 @modified_between_p(ptr noundef nonnull %48, ptr noundef nonnull %20, ptr noundef %125) #17
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %120, %113
  %129 = load i32, ptr %53, align 8, !tbaa !159
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %1, i64 %130
  store ptr %48, ptr %131, align 8, !tbaa !148
  %132 = load i32, ptr %53, align 8, !tbaa !159
  %133 = load ptr, ptr %2, align 8, !tbaa !148
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135, !prof !436

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.VEC_int_base, ptr %133, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !439
  %138 = load i32, ptr %133, align 4, !tbaa !378
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %128, %135
  %141 = tail call ptr @vec_heap_o_reserve(ptr noundef %133, i32 noundef 1, i64 noundef 8, i64 noundef 4) #17
  store ptr %141, ptr %2, align 8, !tbaa !148
  br label %142

142:                                              ; preds = %135, %140
  %143 = load ptr, ptr %2, align 8, !tbaa !148
  %144 = load i32, ptr %143, align 4, !tbaa !378
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4, !tbaa !378
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds %struct.VEC_int_base, ptr %143, i64 0, i32 2, i64 %146
  store i32 %132, ptr %147, align 4, !tbaa !163
  br label %148

148:                                              ; preds = %63, %32, %27, %120, %110, %104, %82, %97, %72, %75, %66, %69, %44, %52, %41, %32, %142
  %149 = phi i32 [ 0, %142 ], [ 4, %32 ], [ 4, %27 ], [ 1, %41 ], [ 1, %52 ], [ 1, %44 ], [ 1, %69 ], [ 1, %66 ], [ 1, %75 ], [ 1, %72 ], [ 1, %97 ], [ 1, %82 ], [ 1, %104 ], [ 1, %110 ], [ 1, %120 ], [ 4, %32 ], [ 1, %63 ]
  switch i32 %149, label %154 [
    i32 0, label %150
    i32 4, label %150
  ], !prof !440

150:                                              ; preds = %148, %148
  %151 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !159
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %19, !prof !427, !llvm.loop !441

154:                                              ; preds = %148, %150, %19, %15, %12
  %155 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 1, %19 ], [ 1, %150 ], [ 0, %148 ]
  ret i32 %155
}

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @cond_move_convert_if_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #12 !prof !147 {
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %85, label %17

17:                                               ; preds = %6
  %18 = icmp eq i8 %5, 0
  br label %19

19:                                               ; preds = %17, %81
  %20 = phi ptr [ %15, %17 ], [ %83, %81 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !238
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %85, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %20, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %79

32:                                               ; preds = %27
  switch i32 %29, label %41 [
    i32 7, label %79
    i32 9, label %79
    i32 8, label %33
    i32 10, label %33
  ]

33:                                               ; preds = %32, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @single_set_2(ptr noundef nonnull %20, ptr noundef nonnull %35) #17
  br label %41

41:                                               ; preds = %33, %32, %39
  %42 = phi ptr [ %40, %39 ], [ null, %32 ], [ %35, %33 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2597, ptr noundef nonnull @.str.10) #17
  br label %51

51:                                               ; preds = %44, %50
  %52 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !159
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %3, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !148
  %59 = getelementptr inbounds ptr, ptr %4, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !148
  %61 = icmp eq ptr %58, null
  br i1 %18, label %66, label %62

62:                                               ; preds = %51
  br i1 %61, label %63, label %79

63:                                               ; preds = %62
  %64 = icmp eq ptr %60, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2612, ptr noundef nonnull @.str.10) #17
  br label %71

66:                                               ; preds = %51
  br i1 %61, label %67, label %68

67:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2616, ptr noundef nonnull @.str.10) #17
  br label %68

68:                                               ; preds = %66, %67
  %69 = icmp eq ptr %60, null
  %70 = select i1 %69, ptr %53, ptr %60
  br label %71

71:                                               ; preds = %68, %65, %63
  %72 = phi ptr [ %53, %63 ], [ %53, %65 ], [ %58, %68 ]
  %73 = phi ptr [ %60, %63 ], [ null, %65 ], [ %70, %68 ]
  %74 = tail call fastcc ptr @noce_emit_cmove(ptr noundef %0, ptr noundef %53, i32 noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %72, ptr noundef %73)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = icmp eq ptr %74, %53
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call fastcc void @noce_emit_move_insn(ptr noundef %53, ptr noundef nonnull %74)
  br label %79

79:                                               ; preds = %32, %27, %76, %78, %71, %62, %32
  %80 = phi i32 [ 4, %32 ], [ 4, %27 ], [ 4, %62 ], [ 1, %71 ], [ 0, %78 ], [ 0, %76 ], [ 4, %32 ]
  switch i32 %80, label %85 [
    i32 0, label %81
    i32 4, label %81
  ]

81:                                               ; preds = %79, %79
  %82 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !159
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %19, !llvm.loop !442

85:                                               ; preds = %79, %81, %19, %6
  %86 = phi i8 [ 1, %6 ], [ 0, %79 ], [ 1, %81 ], [ 1, %19 ]
  ret i8 %86
}

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @block_jumps_and_fallthru_p(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #12 !prof !147 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %84

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = icmp eq ptr %8, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !191
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %84, label %13

13:                                               ; preds = %10, %52
  %14 = phi i32 [ %53, %52 ], [ 0, %10 ]
  %15 = phi i32 [ %43, %52 ], [ 0, %10 ]
  %16 = phi i32 [ %44, %52 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !148
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %17, align 8, !tbaa !191
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %23 = icmp eq i32 %22, %14
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = zext i32 %14 to i64
  %26 = getelementptr inbounds %struct.VEC_edge_base, ptr %17, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !148
  br label %28

28:                                               ; preds = %21, %24
  %29 = phi ptr [ %27, %24 ], [ null, %21 ]
  br i1 %23, label %54, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !198
  %33 = and i32 %32, 14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %30
  %36 = and i32 %32, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %84

42:                                               ; preds = %35, %38
  %43 = phi i32 [ %15, %35 ], [ 1, %38 ]
  %44 = phi i32 [ 1, %35 ], [ %16, %38 ]
  %45 = icmp eq ptr %17, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %17, align 8, !tbaa !191
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = icmp ult i32 %14, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.10) #17
  br label %52

52:                                               ; preds = %48, %51
  %53 = add i32 %14, 1
  br label %13, !llvm.loop !443

54:                                               ; preds = %28
  %55 = and i32 %16, %15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !238
  %62 = load ptr, ptr %59, align 8, !tbaa !159
  %63 = icmp eq ptr %62, null
  br i1 %63, label %84, label %68

64:                                               ; preds = %81
  %65 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !159
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68, !llvm.loop !444

68:                                               ; preds = %57, %64
  %69 = phi ptr [ %66, %64 ], [ %62, %57 ]
  %70 = phi i32 [ %82, %64 ], [ 0, %57 ]
  %71 = load i32, ptr %69, align 8
  %72 = trunc i32 %71 to i16
  switch i16 %72, label %81 [
    i16 10, label %84
    i16 8, label %73
  ]

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65534
  %78 = icmp ne i32 %77, 24
  %79 = zext i1 %78 to i32
  %80 = add nsw i32 %70, %79
  br label %81

81:                                               ; preds = %68, %73
  %82 = phi i32 [ %80, %73 ], [ %70, %68 ]
  %83 = icmp eq ptr %69, %61
  br i1 %83, label %84, label %64

84:                                               ; preds = %38, %30, %81, %64, %68, %57, %6, %54, %10, %2
  %85 = phi i32 [ -1, %2 ], [ 0, %10 ], [ -1, %54 ], [ 0, %6 ], [ 0, %57 ], [ -1, %68 ], [ %82, %64 ], [ %82, %81 ], [ -1, %30 ], [ -1, %38 ]
  ret i32 %85
}

declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @cond_exec_process_if_block(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !147 {
  %3 = load ptr, ptr %0, align 8, !tbaa !202
  %4 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !319
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %439

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !317
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %439, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !315
  store ptr %21, ptr %0, align 8, !tbaa !202
  store i32 0, ptr %10, align 8, !tbaa !319
  %22 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 6
  store i32 0, ptr %22, align 4, !tbaa !321
  %23 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 7
  store i32 0, ptr %23, align 8, !tbaa !322
  br label %24

24:                                               ; preds = %19, %9, %2
  %25 = phi ptr [ %3, %2 ], [ %21, %19 ], [ %3, %9 ]
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !238
  %30 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %29)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %439, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %26, align 8, !tbaa !159
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !238
  %36 = tail call i32 @onlyjump_p(ptr noundef %35) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %439, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @first_active_insn(ptr noundef %5)
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !159
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %41, align 8, !tbaa !252
  br label %44

44:                                               ; preds = %60, %38
  %45 = phi ptr [ %42, %38 ], [ %61, %60 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = load i32, ptr %46, align 8
  %48 = trunc i32 %47 to i16
  switch i16 %48, label %49 [
    i16 13, label %58
    i16 9, label %58
    i16 7, label %58
  ]

49:                                               ; preds = %44
  %50 = and i32 %47, 65535
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 24
  br i1 %57, label %58, label %62

58:                                               ; preds = %44, %44, %52, %44
  %59 = icmp eq ptr %46, %43
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %44, !llvm.loop !259

62:                                               ; preds = %52, %49
  %63 = icmp eq i32 %50, 12
  %64 = select i1 %63, ptr null, ptr %46
  br label %65

65:                                               ; preds = %58, %62
  %66 = phi ptr [ %64, %62 ], [ null, %58 ]
  %67 = load ptr, ptr %42, align 8, !tbaa !238
  br label %68

68:                                               ; preds = %76, %65
  %69 = phi i32 [ 0, %65 ], [ %77, %76 ]
  %70 = phi ptr [ %41, %65 ], [ %79, %76 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !159
  %72 = load i32, ptr %71, align 8
  %73 = trunc i32 %72 to i16
  switch i16 %73, label %76 [
    i16 10, label %74
    i16 8, label %74
  ]

74:                                               ; preds = %68, %68
  %75 = add nsw i32 %69, 1
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi i32 [ %75, %74 ], [ %69, %68 ]
  %78 = icmp eq ptr %71, %67
  %79 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %78, label %80, label %68, !llvm.loop !445

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 10
  store i32 %77, ptr %81, align 4, !tbaa !446
  %82 = load ptr, ptr @cfun, align 8, !tbaa !148
  %83 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %82) #17
  %84 = icmp eq i8 %83, 0
  %85 = load i32, ptr @ix86_branch_cost, align 4
  %86 = add nsw i32 %85, 1
  %87 = select i1 %84, i32 3, i32 %86
  %88 = icmp ne ptr %7, null
  br i1 %88, label %89, label %135

89:                                               ; preds = %80
  %90 = shl nsw i32 %87, 1
  %91 = tail call fastcc ptr @first_active_insn(ptr noundef nonnull %7)
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !159
  %94 = getelementptr inbounds %struct.rtl_bb_info, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %93, align 8, !tbaa !252
  br label %96

96:                                               ; preds = %112, %89
  %97 = phi ptr [ %94, %89 ], [ %113, %112 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !159
  %99 = load i32, ptr %98, align 8
  %100 = trunc i32 %99 to i16
  switch i16 %100, label %101 [
    i16 13, label %110
    i16 9, label %110
    i16 7, label %110
  ]

101:                                              ; preds = %96
  %102 = and i32 %99, 65535
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !159
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 24
  br i1 %109, label %110, label %114

110:                                              ; preds = %96, %96, %104, %96
  %111 = icmp eq ptr %98, %95
  br i1 %111, label %117, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %96, !llvm.loop !259

114:                                              ; preds = %104, %101
  %115 = icmp eq i32 %102, 12
  %116 = select i1 %115, ptr null, ptr %98
  br label %117

117:                                              ; preds = %110, %114
  %118 = phi ptr [ %116, %114 ], [ null, %110 ]
  %119 = load ptr, ptr %94, align 8, !tbaa !238
  br label %120

120:                                              ; preds = %128, %117
  %121 = phi i32 [ 0, %117 ], [ %129, %128 ]
  %122 = phi ptr [ %93, %117 ], [ %131, %128 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !159
  %124 = load i32, ptr %123, align 8
  %125 = trunc i32 %124 to i16
  switch i16 %125, label %128 [
    i16 10, label %126
    i16 8, label %126
  ]

126:                                              ; preds = %120, %120
  %127 = add nsw i32 %121, 1
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi i32 [ %127, %126 ], [ %121, %120 ]
  %130 = icmp eq ptr %123, %119
  %131 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %130, label %132, label %120, !llvm.loop !445

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 11
  store i32 %129, ptr %133, align 8, !tbaa !447
  %134 = add nsw i32 %129, %77
  br label %135

135:                                              ; preds = %132, %80
  %136 = phi i32 [ %134, %132 ], [ %77, %80 ]
  %137 = phi i32 [ %90, %132 ], [ %87, %80 ]
  %138 = phi ptr [ %118, %132 ], [ null, %80 ]
  %139 = phi ptr [ %91, %132 ], [ null, %80 ]
  %140 = icmp sgt i32 %136, %137
  br i1 %140, label %439, label %141

141:                                              ; preds = %135
  %142 = load ptr, ptr %26, align 8, !tbaa !159
  %143 = getelementptr inbounds %struct.rtl_bb_info, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !238
  %145 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %30, ptr noundef %144) #17
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %141
  %148 = load i32, ptr %30, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !159
  %153 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !159
  %155 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %145, i32 noundef %150, ptr noundef %152, ptr noundef %154) #17
  br label %156

156:                                              ; preds = %141, %147
  %157 = phi ptr [ %155, %147 ], [ null, %141 ]
  %158 = load ptr, ptr %26, align 8, !tbaa !159
  %159 = getelementptr inbounds %struct.rtl_bb_info, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !238
  %161 = tail call ptr @find_reg_note(ptr noundef %160, i32 noundef 13, ptr noundef null) #17
  %162 = icmp eq ptr %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !159
  %166 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %167 = load i64, ptr %166, align 8, !tbaa !159
  %168 = sub nsw i64 10000, %167
  %169 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %168) #17
  br label %170

170:                                              ; preds = %156, %163
  %171 = phi ptr [ %165, %163 ], [ null, %156 ]
  %172 = phi ptr [ %169, %163 ], [ null, %156 ]
  %173 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 5
  %174 = load i32, ptr %173, align 8, !tbaa !319
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %272

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !315
  %179 = icmp eq ptr %157, null
  br i1 %179, label %268, label %180

180:                                              ; preds = %176, %266
  %181 = phi ptr [ %262, %266 ], [ %30, %176 ]
  %182 = phi ptr [ %263, %266 ], [ %157, %176 ]
  %183 = phi ptr [ %184, %266 ], [ %25, %176 ]
  %184 = tail call fastcc ptr @block_fallthru(ptr noundef %183)
  %185 = tail call fastcc ptr @first_active_insn(ptr noundef %184)
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 7
  %187 = load ptr, ptr %186, align 8, !tbaa !159
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %187, align 8, !tbaa !252
  br label %190

190:                                              ; preds = %206, %180
  %191 = phi ptr [ %188, %180 ], [ %207, %206 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !159
  %193 = load i32, ptr %192, align 8
  %194 = trunc i32 %193 to i16
  switch i16 %194, label %195 [
    i16 13, label %204
    i16 9, label %204
    i16 7, label %204
  ]

195:                                              ; preds = %190
  %196 = and i32 %193, 65535
  %197 = icmp eq i32 %196, 8
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !159
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 24
  br i1 %203, label %204, label %208

204:                                              ; preds = %190, %190, %198, %190
  %205 = icmp eq ptr %192, %189
  br i1 %205, label %211, label %206

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %190, !llvm.loop !259

208:                                              ; preds = %198, %195
  %209 = icmp eq i32 %196, 12
  %210 = select i1 %209, ptr null, ptr %192
  br label %211

211:                                              ; preds = %204, %208
  %212 = phi ptr [ %210, %208 ], [ null, %204 ]
  %213 = icmp eq ptr %185, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef nonnull %185, ptr noundef %212, ptr noundef %182, ptr noundef %172, i32 noundef 0)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %261, label %217

217:                                              ; preds = %214, %211
  %218 = load ptr, ptr %186, align 8, !tbaa !159
  %219 = getelementptr inbounds %struct.rtl_bb_info, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !238
  %221 = tail call i32 @onlyjump_p(ptr noundef %220) #17
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %261, label %223

223:                                              ; preds = %217
  %224 = load ptr, ptr %186, align 8, !tbaa !159
  %225 = getelementptr inbounds %struct.rtl_bb_info, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !238
  %227 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %226)
  %228 = icmp eq ptr %227, null
  br i1 %228, label %261, label %229

229:                                              ; preds = %223
  %230 = load ptr, ptr %186, align 8, !tbaa !159
  %231 = getelementptr inbounds %struct.rtl_bb_info, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !238
  %233 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %227, ptr noundef %232) #17
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %261, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 9
  %237 = load i32, ptr %227, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !159
  %242 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !159
  %244 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %233, i32 noundef %239, ptr noundef %241, ptr noundef %243) #17
  %245 = load i32, ptr %236, align 8, !tbaa !317
  %246 = icmp eq i32 %245, 0
  %247 = load i32, ptr %227, align 8
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  br i1 %246, label %252, label %250

250:                                              ; preds = %235
  %251 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %249, ptr noundef %181, ptr noundef nonnull %227) #17
  br label %254

252:                                              ; preds = %235
  %253 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 62, i32 noundef %249, ptr noundef %181, ptr noundef nonnull %227) #17
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi ptr [ %251, %250 ], [ %253, %252 ]
  %256 = phi i32 [ 62, %250 ], [ 61, %252 ]
  %257 = load i32, ptr %255, align 8
  %258 = lshr i32 %257, 16
  %259 = and i32 %258, 255
  %260 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %256, i32 noundef %259, ptr noundef %182, ptr noundef %244) #17
  br label %261

261:                                              ; preds = %254, %214, %229, %223, %217
  %262 = phi ptr [ %181, %217 ], [ %181, %223 ], [ %181, %229 ], [ %181, %214 ], [ %255, %254 ]
  %263 = phi ptr [ %182, %217 ], [ %182, %223 ], [ %182, %229 ], [ %182, %214 ], [ %260, %254 ]
  %264 = phi i1 [ false, %217 ], [ false, %223 ], [ false, %229 ], [ false, %214 ], [ true, %254 ]
  %265 = phi i32 [ 2, %217 ], [ 2, %223 ], [ 2, %229 ], [ 2, %214 ], [ 0, %254 ]
  br i1 %264, label %266, label %268

266:                                              ; preds = %261
  %267 = icmp eq ptr %184, %178
  br i1 %267, label %268, label %180, !llvm.loop !448

268:                                              ; preds = %266, %261, %176
  %269 = phi ptr [ %30, %176 ], [ %262, %261 ], [ %262, %266 ]
  %270 = phi ptr [ null, %176 ], [ %263, %261 ], [ %263, %266 ]
  %271 = phi i32 [ 2, %176 ], [ 0, %266 ], [ %265, %261 ]
  switch i32 %271, label %439 [
    i32 0, label %272
    i32 2, label %438
  ]

272:                                              ; preds = %268, %170
  %273 = phi ptr [ %269, %268 ], [ %30, %170 ]
  %274 = phi ptr [ %270, %268 ], [ %157, %170 ]
  %275 = icmp eq ptr %7, null
  %276 = zext i1 %275 to i32
  %277 = icmp eq ptr %66, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %272
  %279 = icmp eq ptr %274, null
  br i1 %279, label %438, label %280

280:                                              ; preds = %278
  %281 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef %39, ptr noundef nonnull %66, ptr noundef nonnull %274, ptr noundef %172, i32 noundef %276)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %438, label %283

283:                                              ; preds = %280, %272
  %284 = icmp ne ptr %138, null
  %285 = and i1 %88, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef %139, ptr noundef nonnull %138, ptr noundef %273, ptr noundef %171, i32 noundef 1)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %438, label %289

289:                                              ; preds = %286, %283
  %290 = tail call i32 @apply_change_group() #17
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %439, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr @dump_file, align 8, !tbaa !148
  %294 = icmp eq ptr %293, null
  br i1 %294, label %299, label %295

295:                                              ; preds = %292
  %296 = icmp eq i32 %136, 1
  %297 = select i1 %296, ptr @.str.25, ptr @.str.26
  %298 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %293, ptr noundef nonnull @.str.24, i32 noundef %136, ptr noundef nonnull %297)
  br label %299

299:                                              ; preds = %295, %292
  %300 = load ptr, ptr %0, align 8, !tbaa !202
  %301 = load ptr, ptr %4, align 8, !tbaa !204
  %302 = load ptr, ptr %6, align 8, !tbaa !205
  %303 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !326
  tail call void @df_set_bb_dirty(ptr noundef %300) #17
  %305 = load i32, ptr %173, align 8, !tbaa !319
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.ce_if_block, ptr %0, i64 0, i32 4
  %309 = load ptr, ptr %308, align 8, !tbaa !315
  %310 = tail call fastcc ptr @block_fallthru(ptr noundef %300)
  br label %311

311:                                              ; preds = %311, %307
  %312 = phi ptr [ %310, %307 ], [ %313, %311 ]
  %313 = tail call fastcc ptr @block_fallthru(ptr noundef %312)
  tail call void @merge_blocks(ptr noundef %300, ptr noundef %312) #17
  %314 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr @num_true_changes, align 4, !tbaa !163
  %316 = icmp eq ptr %312, %309
  br i1 %316, label %317, label %311, !llvm.loop !449

317:                                              ; preds = %311, %299
  %318 = icmp eq ptr %301, null
  br i1 %318, label %322, label %319

319:                                              ; preds = %317
  tail call void @merge_blocks(ptr noundef %300, ptr noundef nonnull %301) #17
  %320 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr @num_true_changes, align 4, !tbaa !163
  br label %322

322:                                              ; preds = %319, %317
  %323 = icmp eq ptr %302, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %322
  tail call void @merge_blocks(ptr noundef %300, ptr noundef nonnull %302) #17
  %325 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr @num_true_changes, align 4, !tbaa !163
  br label %327

327:                                              ; preds = %324, %322
  %328 = icmp eq ptr %304, null
  br i1 %328, label %329, label %386

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.basic_block_def, ptr %300, i64 0, i32 7
  %331 = load ptr, ptr %330, align 8, !tbaa !159
  %332 = getelementptr inbounds %struct.rtl_bb_info, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !238
  %334 = getelementptr inbounds %struct.basic_block_def, ptr %300, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !189
  %336 = icmp eq ptr %335, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %329
  %338 = load i32, ptr %335, align 8, !tbaa !191
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %359

340:                                              ; preds = %329, %337
  %341 = tail call ptr @find_reg_note(ptr noundef %333, i32 noundef 27, ptr noundef null) #17
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %435

343:                                              ; preds = %340
  %344 = load i32, ptr %333, align 8
  %345 = and i32 %344, 65535
  %346 = icmp eq i32 %345, 8
  br i1 %346, label %347, label %358

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !159
  %350 = load i32, ptr %349, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 29
  br i1 %352, label %353, label %358

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !159
  %356 = load ptr, ptr @const_true_rtx, align 8, !tbaa !148
  %357 = icmp eq ptr %355, %356
  br i1 %357, label %435, label %358

358:                                              ; preds = %353, %347, %343
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2966, ptr noundef nonnull @.str.10) #17
  br label %435

359:                                              ; preds = %337
  %360 = load i32, ptr %333, align 8
  %361 = and i32 %360, 65535
  %362 = icmp eq i32 %361, 9
  br i1 %362, label %435, label %363

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.VEC_edge_base, ptr %335, i64 0, i32 2, i64 0
  %365 = load ptr, ptr %364, align 8, !tbaa !148
  %366 = getelementptr inbounds %struct.edge_def, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !194
  %368 = load ptr, ptr @cfun, align 8, !tbaa !148
  %369 = getelementptr inbounds %struct.function, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !180
  %371 = getelementptr inbounds %struct.control_flow_graph, ptr %370, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !186
  %373 = icmp eq ptr %367, %372
  %374 = and i32 %360, 16842751
  %375 = icmp eq i32 %374, 16777226
  %376 = and i1 %375, %373
  br i1 %376, label %435, label %377

377:                                              ; preds = %363
  %378 = getelementptr inbounds %struct.edge_def, ptr %365, i64 0, i32 7
  %379 = load i32, ptr %378, align 8, !tbaa !198
  %380 = and i32 %379, 8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %377
  %383 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %333) #17
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %385, label %435

385:                                              ; preds = %382, %377
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2976, ptr noundef nonnull @.str.10) #17
  br label %435

386:                                              ; preds = %327
  %387 = load ptr, ptr %304, align 8, !tbaa !208
  %388 = icmp eq ptr %387, null
  br i1 %388, label %392, label %389

389:                                              ; preds = %386
  %390 = load i32, ptr %387, align 8, !tbaa !191
  %391 = icmp ult i32 %390, 2
  br i1 %391, label %392, label %402

392:                                              ; preds = %386, %389
  %393 = load ptr, ptr @cfun, align 8, !tbaa !148
  %394 = getelementptr inbounds %struct.function, ptr %393, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !180
  %396 = getelementptr inbounds %struct.control_flow_graph, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !186
  %398 = icmp eq ptr %304, %397
  br i1 %398, label %402, label %399

399:                                              ; preds = %392
  tail call void @merge_blocks(ptr noundef %300, ptr noundef nonnull %304) #17
  %400 = load i32, ptr @num_true_changes, align 4, !tbaa !163
  %401 = add nsw i32 %400, 1
  store i32 %401, ptr @num_true_changes, align 4, !tbaa !163
  br label %435

402:                                              ; preds = %392, %389
  %403 = getelementptr inbounds %struct.basic_block_def, ptr %300, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !189
  %405 = icmp eq ptr %404, null
  br i1 %405, label %416, label %406

406:                                              ; preds = %402
  %407 = load i32, ptr %404, align 8, !tbaa !191
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %409, label %416

409:                                              ; preds = %406
  %410 = load ptr, ptr %403, align 8, !tbaa !189
  %411 = getelementptr inbounds %struct.VEC_edge_base, ptr %410, i64 0, i32 2, i64 0
  %412 = load ptr, ptr %411, align 8, !tbaa !148
  %413 = getelementptr inbounds %struct.edge_def, ptr %412, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !194
  %415 = icmp eq ptr %414, %304
  br i1 %415, label %417, label %416

416:                                              ; preds = %402, %409, %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3000, ptr noundef nonnull @.str.10) #17
  br label %417

417:                                              ; preds = %416, %409
  %418 = load ptr, ptr @cfun, align 8, !tbaa !148
  %419 = getelementptr inbounds %struct.function, ptr %418, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !180
  %421 = getelementptr inbounds %struct.control_flow_graph, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !186
  %423 = icmp eq ptr %304, %422
  br i1 %423, label %435, label %424

424:                                              ; preds = %417
  %425 = load ptr, ptr %403, align 8, !tbaa !189
  %426 = icmp eq ptr %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %424
  %428 = load i32, ptr %425, align 8, !tbaa !191
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %431, label %430

430:                                              ; preds = %427, %424
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.10) #17
  br label %431

431:                                              ; preds = %430, %427
  %432 = load ptr, ptr %403, align 8, !tbaa !189
  %433 = getelementptr inbounds %struct.VEC_edge_base, ptr %432, i64 0, i32 2, i64 0
  %434 = load ptr, ptr %433, align 8, !tbaa !148
  tail call void @tidy_fallthru_edge(ptr noundef %434) #17
  br label %435

435:                                              ; preds = %363, %340, %353, %358, %359, %382, %385, %399, %417, %431
  %436 = load i32, ptr @num_updated_if_blocks, align 4, !tbaa !163
  %437 = add nsw i32 %436, 1
  store i32 %437, ptr @num_updated_if_blocks, align 4, !tbaa !163
  store i1 true, ptr @cond_exec_changed_p, align 4
  br label %439

438:                                              ; preds = %286, %280, %278, %268
  tail call void @cancel_changes(i32 noundef 0) #17
  br label %439

439:                                              ; preds = %289, %135, %32, %24, %13, %15, %438, %435, %268
  %440 = phi i32 [ undef, %268 ], [ 0, %438 ], [ 1, %435 ], [ 0, %15 ], [ 0, %13 ], [ 0, %24 ], [ 0, %32 ], [ 0, %135 ], [ 0, %289 ]
  ret i32 %440
}

declare void @cancel_changes(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @cond_exec_get_condition(ptr noundef %0) unnamed_addr #12 !prof !147 {
  %2 = tail call i32 @any_condjump_p(ptr noundef %0) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @pc_set(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 44
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = tail call i32 @reversed_comparison_code(ptr noundef %9, ptr noundef %0) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  %30 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  %32 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %22, i32 noundef %27, ptr noundef %29, ptr noundef %31) #17
  br label %33

33:                                               ; preds = %24, %21, %4, %15, %1
  %34 = phi ptr [ null, %1 ], [ %9, %15 ], [ %9, %4 ], [ %32, %24 ], [ null, %21 ]
  ret ptr %34
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @block_fallthru(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !147 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %3

3:                                                ; preds = %31, %1
  %4 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %5 = load ptr, ptr %2, align 8, !tbaa !148
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !191
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds %struct.VEC_edge_base, ptr %5, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ]
  br i1 %11, label %33, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !198
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = icmp eq ptr %5, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %5, align 8, !tbaa !191
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = icmp ult i32 %4, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.10) #17
  br label %31

31:                                               ; preds = %27, %30
  %32 = add i32 %4, 1
  br label %3, !llvm.loop !450

33:                                               ; preds = %18, %16
  %34 = icmp eq ptr %17, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !194
  br label %38

38:                                               ; preds = %33, %35
  %39 = phi ptr [ %37, %35 ], [ null, %33 ]
  ret ptr %39
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @cond_exec_process_insns(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #12 !prof !147 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %77

9:                                                ; preds = %5
  %10 = icmp ne i32 %4, 0
  %11 = icmp ne ptr %3, null
  br label %12

12:                                               ; preds = %9, %74
  %13 = phi i32 [ %72, %74 ], [ 0, %9 ]
  %14 = phi ptr [ %76, %74 ], [ %0, %9 ]
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %17 [
    i16 13, label %71
    i16 7, label %71
    i16 8, label %18
    i16 10, label %18
  ]

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 273, ptr noundef nonnull @.str.10) #17
  br label %18

18:                                               ; preds = %12, %12, %17
  %19 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @set_insn_deleted(ptr noundef nonnull %14) #17
  br label %71

28:                                               ; preds = %21, %18
  %29 = icmp eq i32 %13, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %28
  %31 = tail call i32 @modified_in_p(ptr noundef %2, ptr noundef nonnull %14) #17
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %32, %10
  %34 = xor i1 %32, true
  %35 = zext i1 %34 to i32
  br i1 %33, label %36, label %77

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !159
  %39 = tail call ptr @copy_rtx(ptr noundef %2) #17
  %40 = load i32, ptr %38, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 14
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i32, ptr %39, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %43
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %46, ptr noundef nonnull %39, ptr noundef nonnull %48) #17
  %55 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  br label %57

57:                                               ; preds = %53, %36
  %58 = phi ptr [ %54, %53 ], [ %39, %36 ]
  %59 = phi ptr [ %56, %53 ], [ %38, %36 ]
  %60 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 14, i32 noundef 0, ptr noundef %58, ptr noundef %59) #17
  %61 = tail call zeroext i8 @validate_change(ptr noundef nonnull %14, ptr noundef nonnull %37, ptr noundef %60, i8 noundef zeroext 1) #17
  %62 = load i32, ptr %14, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 10
  %65 = and i1 %11, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !159
  %69 = tail call ptr @alloc_EXPR_LIST(i32 noundef 13, ptr noundef nonnull %3, ptr noundef %68) #17
  %70 = tail call zeroext i8 @validate_change(ptr noundef nonnull %14, ptr noundef nonnull %67, ptr noundef %69, i8 noundef zeroext 1) #17
  br label %71

71:                                               ; preds = %12, %12, %57, %66, %27
  %72 = phi i32 [ %13, %27 ], [ %35, %66 ], [ %35, %57 ], [ %13, %12 ], [ %13, %12 ]
  %73 = icmp eq ptr %14, %1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !159
  br label %12, !llvm.loop !451

77:                                               ; preds = %71, %28, %43, %30, %5
  %78 = phi i32 [ 0, %5 ], [ 0, %30 ], [ 0, %43 ], [ 0, %28 ], [ 1, %71 ]
  ret i32 %78
}

declare i32 @apply_change_group() local_unnamed_addr #3

declare void @set_insn_deleted(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare void @tidy_fallthru_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @block_has_only_trap(ptr noundef readonly %0) unnamed_addr #14 !prof !147 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !189
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !191
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %8, %12
  %16 = tail call fastcc ptr @first_active_insn(ptr noundef %0)
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = icmp eq ptr %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !159
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 29
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = load ptr, ptr @const_true_rtx, align 8, !tbaa !148
  %32 = icmp eq ptr %30, %31
  %33 = select i1 %32, ptr %16, ptr null
  br label %34

34:                                               ; preds = %28, %15, %22, %12, %1
  %35 = phi ptr [ null, %1 ], [ null, %12 ], [ null, %22 ], [ null, %15 ], [ %33, %28 ]
  ret ptr %35
}

declare ptr @gen_cond_trap(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @cheap_bb_rtx_cost_p(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !452 !PGOFuncName !453 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %0) #17
  br label %7

7:                                                ; preds = %55, %2
  %8 = phi ptr [ %5, %2 ], [ %57, %55 ]
  %9 = phi i32 [ 0, %2 ], [ %50, %55 ]
  %10 = load i32, ptr %8, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %49 [
    i16 8, label %12
    i16 10, label %58
  ], !prof !454

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = tail call i32 @insn_rtx_cost(ptr noundef %14, i8 noundef zeroext %6) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %46, label %17, !prof !455

17:                                               ; preds = %12
  %18 = load i32, ptr %8, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %29, !prof !456

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !159
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %29, label %27, !prof !457

27:                                               ; preds = %22
  %28 = tail call ptr @single_set_2(ptr noundef nonnull %8, ptr noundef nonnull %23) #17
  br label %29

29:                                               ; preds = %17, %22, %27
  %30 = phi ptr [ %28, %27 ], [ null, %17 ], [ %23, %22 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32, !prof !455

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %43, !prof !458

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !159
  %41 = and i32 %40, -8
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %46, label %43, !prof !459

43:                                               ; preds = %38, %32, %29
  %44 = add nsw i32 %15, %9
  %45 = icmp slt i32 %44, %1
  br label %46

46:                                               ; preds = %43, %38, %12
  %47 = phi i32 [ %9, %12 ], [ %9, %38 ], [ %44, %43 ]
  %48 = phi i1 [ false, %12 ], [ false, %38 ], [ %45, %43 ]
  br i1 %48, label %49, label %58, !prof !460

49:                                               ; preds = %7, %46
  %50 = phi i32 [ %47, %46 ], [ %9, %7 ]
  %51 = load ptr, ptr %3, align 8, !tbaa !159
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !238
  %54 = icmp eq ptr %8, %53
  br i1 %54, label %58, label %55, !prof !461

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !159
  br label %7, !llvm.loop !462

58:                                               ; preds = %46, %7, %49
  %59 = phi i8 [ 1, %49 ], [ 0, %7 ], [ 0, %46 ]
  ret i8 %59
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @dead_or_predicable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #9 !prof !463 !PGOFuncName !464 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = load ptr, ptr %12, align 8, !tbaa !252
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  br label %15

15:                                               ; preds = %15, %5
  %16 = phi ptr [ %14, %5 ], [ %23, %15 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 7
  %21 = icmp ne ptr %17, %13
  %22 = select i1 %20, i1 %21, i1 false, !prof !465
  %23 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %22, label %15, label %24, !prof !465, !llvm.loop !466

24:                                               ; preds = %15
  %25 = tail call zeroext i8 @tablejump_p(ptr noundef nonnull %17, ptr noundef null, ptr noundef null) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %503, !prof !467

27:                                               ; preds = %24
  %28 = load i32, ptr %13, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %34, !prof !468

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %13, %27 ]
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 7
  %39 = icmp ne ptr %35, %17
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %50, !prof !266

41:                                               ; preds = %34, %41
  %42 = phi ptr [ %44, %41 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !159
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 7
  %48 = icmp ne ptr %44, %17
  %49 = and i1 %48, %47
  br i1 %49, label %41, label %50, !prof !266, !llvm.loop !469

50:                                               ; preds = %41, %34
  %51 = phi ptr [ %35, %34 ], [ %44, %41 ]
  %52 = phi i32 [ %37, %34 ], [ %46, %41 ]
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %65, !prof !467

54:                                               ; preds = %50
  %55 = icmp eq ptr %51, %17
  br i1 %55, label %339, label %56, !prof !465

56:                                               ; preds = %54, %56
  %57 = phi ptr [ %59, %56 ], [ %51, %54 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 7
  %63 = icmp ne ptr %59, %17
  %64 = and i1 %63, %62
  br i1 %64, label %56, label %65, !prof !465, !llvm.loop !470

65:                                               ; preds = %56, %50
  %66 = phi ptr [ %51, %50 ], [ %59, %56 ]
  %67 = load i32, ptr %17, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %70, label %81, !prof !471

70:                                               ; preds = %65
  %71 = icmp eq ptr %66, %17
  br i1 %71, label %339, label %72, !prof !472

72:                                               ; preds = %70, %72
  %73 = phi ptr [ %75, %72 ], [ %17, %70 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !159
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 7
  %79 = icmp ne ptr %75, %66
  %80 = and i1 %79, %78
  br i1 %80, label %72, label %81, !prof !472, !llvm.loop !473

81:                                               ; preds = %72, %65
  %82 = phi ptr [ %17, %65 ], [ %75, %72 ]
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !299
  %84 = tail call zeroext i8 %83() #17, !prof !474
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %135, label %86, !prof !467

86:                                               ; preds = %81
  %87 = tail call fastcc ptr @cond_exec_get_condition(ptr noundef %10)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %132, label %89

89:                                               ; preds = %86
  %90 = tail call ptr @find_reg_note(ptr noundef %10, i32 noundef 13, ptr noundef null) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !159
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi ptr [ %94, %92 ], [ null, %89 ]
  %97 = icmp eq i32 %4, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %87, ptr noundef %10) #17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %87, align 8
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !159
  %107 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !159
  %109 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %99, i32 noundef %104, ptr noundef %106, ptr noundef %108) #17
  %110 = icmp eq ptr %96, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !159
  %114 = sub nsw i64 10000, %113
  %115 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %114) #17
  br label %116

116:                                              ; preds = %101, %111, %98
  %117 = phi ptr [ %96, %98 ], [ %115, %111 ], [ null, %101 ]
  %118 = phi ptr [ %87, %98 ], [ %109, %111 ], [ %109, %101 ]
  br i1 %100, label %132, label %119

119:                                              ; preds = %116, %95
  %120 = phi ptr [ %117, %116 ], [ %96, %95 ]
  %121 = phi ptr [ %118, %116 ], [ %87, %95 ]
  %122 = tail call fastcc i32 @cond_exec_process_insns(ptr noundef nonnull %66, ptr noundef nonnull %82, ptr noundef %121, ptr noundef %120, i32 noundef 0)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = tail call i32 @verify_changes(i32 noundef 0) #17
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = tail call i32 @num_validated_changes() #17
  br label %130

129:                                              ; preds = %124, %119
  tail call void @cancel_changes(i32 noundef 0) #17
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  store ptr %10, ptr %6, align 8, !tbaa !148
  br label %132

132:                                              ; preds = %86, %116, %130
  %133 = phi i1 [ true, %130 ], [ false, %116 ], [ false, %86 ]
  %134 = phi i32 [ %131, %130 ], [ 0, %116 ], [ 0, %86 ]
  br i1 %133, label %135, label %503

135:                                              ; preds = %132, %81
  %136 = phi i32 [ %134, %132 ], [ 0, %81 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %339, !prof !467

138:                                              ; preds = %135, %155
  %139 = phi ptr [ %157, %155 ], [ %66, %135 ]
  %140 = load i32, ptr %139, align 8
  %141 = trunc i32 %140 to i16
  switch i16 %141, label %153 [
    i16 10, label %503
    i16 8, label %142
    i16 7, label %142
    i16 9, label %142
  ], !prof !475

142:                                              ; preds = %138, %138, %138
  %143 = and i32 %140, 65535
  %144 = icmp eq i32 %143, 7
  br i1 %144, label %153, label %145, !prof !476

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !159
  %148 = tail call i32 @may_trap_p(ptr noundef %147) #17
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %503, !prof !477

150:                                              ; preds = %145
  %151 = tail call i32 @for_each_rtx(ptr noundef nonnull %146, ptr noundef nonnull @find_memory, ptr noundef null) #17
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %503, !prof !478

153:                                              ; preds = %138, %150, %142
  %154 = icmp eq ptr %139, %82
  br i1 %154, label %158, label %155, !prof !479

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1, i32 0, i32 0, i64 2
  %157 = load ptr, ptr %156, align 8, !tbaa !159
  br label %138, !llvm.loop !480

158:                                              ; preds = %153
  %159 = tail call i32 @any_condjump_p(ptr noundef %10) #17
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %503, label %161, !prof !481

161:                                              ; preds = %158
  %162 = call fastcc ptr @noce_get_condition(ptr noundef %10, ptr noundef nonnull %6, i8 noundef zeroext 0)
  %163 = icmp eq ptr %162, null
  br i1 %163, label %503, label %164, !prof !481

164:                                              ; preds = %161
  %165 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #17
  %166 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #17
  %167 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #17
  %168 = load i32, ptr @max_regno, align 4, !tbaa !163
  %169 = call i32 @max_reg_num() #17
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %173, !prof !482

171:                                              ; preds = %164
  %172 = call i32 @max_reg_num() #17
  store i32 %172, ptr @max_regno, align 4, !tbaa !163
  br label %173

173:                                              ; preds = %171, %164
  %174 = load ptr, ptr %11, align 8, !tbaa !159
  %175 = load ptr, ptr %174, align 8, !tbaa !159
  %176 = icmp eq ptr %175, null
  br i1 %176, label %216, label %177, !prof !483

177:                                              ; preds = %173, %212
  %178 = phi ptr [ %214, %212 ], [ %175, %173 ]
  %179 = load ptr, ptr %11, align 8, !tbaa !159
  %180 = getelementptr inbounds %struct.rtl_bb_info, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !238
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !159
  %184 = icmp eq ptr %178, %183
  br i1 %184, label %216, label %185, !prof !484

185:                                              ; preds = %177
  %186 = load i32, ptr %178, align 8
  %187 = and i32 %186, 65535
  %188 = add nsw i32 %187, -11
  %189 = icmp ult i32 %188, -3
  br i1 %189, label %212, label %190, !prof !485

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !159
  %193 = load ptr, ptr @df, align 8, !tbaa !148
  %194 = getelementptr inbounds %struct.df, ptr %193, i64 0, i32 10
  %195 = load ptr, ptr %194, align 8, !tbaa !486
  %196 = zext i32 %192 to i64
  %197 = getelementptr inbounds ptr, ptr %195, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !148
  %199 = getelementptr inbounds %struct.df_insn_info, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !489
  %201 = load ptr, ptr %200, align 8, !tbaa !148
  %202 = icmp eq ptr %201, null
  br i1 %202, label %212, label %203, !prof !491

203:                                              ; preds = %190, %203
  %204 = phi ptr [ %210, %203 ], [ %201, %190 ]
  %205 = phi ptr [ %209, %203 ], [ %200, %190 ]
  %206 = getelementptr inbounds %struct.df_base_ref, ptr %204, i64 0, i32 6
  %207 = load i32, ptr %206, align 8, !tbaa !159
  %208 = call zeroext i8 @bitmap_set_bit(ptr noundef %165, i32 noundef %207) #17
  %209 = getelementptr inbounds ptr, ptr %205, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !148
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %203, !prof !492, !llvm.loop !493

212:                                              ; preds = %203, %190, %185
  %213 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 2
  %214 = load ptr, ptr %213, align 8, !tbaa !159
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %177, !prof !494, !llvm.loop !495

216:                                              ; preds = %177, %212, %173
  %217 = load i32, ptr @reload_completed, align 4, !tbaa !163
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %309, !prof !496

219:                                              ; preds = %216
  %220 = load ptr, ptr %165, align 8, !tbaa !497
  %221 = icmp eq ptr %220, null
  %222 = select i1 %221, ptr @bitmap_zero_bits, ptr %220, !prof !499
  %223 = getelementptr inbounds %struct.bitmap_element_def, ptr %222, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !500
  %225 = shl i32 %224, 7
  %226 = getelementptr inbounds %struct.bitmap_element_def, ptr %222, i64 0, i32 3
  %227 = load i64, ptr %226, align 8, !tbaa !294
  %228 = icmp eq i64 %227, 0
  %229 = zext i1 %228 to i32
  %230 = or disjoint i32 %225, %229
  br label %231

231:                                              ; preds = %305, %219
  %232 = phi i64 [ %227, %219 ], [ %307, %305 ]
  %233 = phi i32 [ 0, %219 ], [ %289, %305 ]
  %234 = phi i32 [ %230, %219 ], [ %308, %305 ]
  %235 = phi ptr [ %222, %219 ], [ %291, %305 ]
  %236 = phi i32 [ 0, %219 ], [ %306, %305 ]
  %237 = icmp eq i64 %232, 0
  br i1 %237, label %252, label %238, !prof !502

238:                                              ; preds = %266, %231
  %239 = phi i64 [ %232, %231 ], [ %271, %266 ]
  %240 = phi i32 [ %233, %231 ], [ %267, %266 ]
  %241 = phi i32 [ %234, %231 ], [ %268, %266 ]
  %242 = phi ptr [ %235, %231 ], [ %259, %266 ]
  %243 = and i64 %239, 1
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %287, !prof !503

245:                                              ; preds = %238, %245
  %246 = phi i32 [ %249, %245 ], [ %241, %238 ]
  %247 = phi i64 [ %248, %245 ], [ %239, %238 ]
  %248 = lshr exact i64 %247, 1
  %249 = add i32 %246, 1
  %250 = and i64 %247, 2
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %245, label %287, !prof !504, !llvm.loop !505

252:                                              ; preds = %231
  %253 = add i32 %234, 63
  %254 = and i32 %253, -64
  %255 = add i32 %233, 1
  br label %256

256:                                              ; preds = %283, %252
  %257 = phi i64 [ %232, %252 ], [ %278, %283 ]
  %258 = phi i32 [ %254, %252 ], [ %286, %283 ]
  %259 = phi ptr [ %235, %252 ], [ %281, %283 ]
  %260 = phi i32 [ %255, %252 ], [ 0, %283 ]
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %277, label %262, !prof !506

262:                                              ; preds = %256
  %263 = add i32 %258, 128
  %264 = shl i32 %260, 6
  %265 = sub i32 %263, %264
  br label %266

266:                                              ; preds = %262, %273
  %267 = phi i32 [ %275, %273 ], [ %260, %262 ]
  %268 = phi i32 [ %274, %273 ], [ %258, %262 ]
  %269 = zext i32 %267 to i64
  %270 = getelementptr inbounds %struct.bitmap_element_def, ptr %259, i64 0, i32 3, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !294
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %238, !prof !507

273:                                              ; preds = %266
  %274 = add i32 %268, 64
  %275 = add i32 %267, 1
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %266, !prof !508, !llvm.loop !509

277:                                              ; preds = %273, %256
  %278 = phi i64 [ %257, %256 ], [ %271, %273 ]
  %279 = phi i32 [ %258, %256 ], [ %265, %273 ]
  %280 = phi i32 [ %260, %256 ], [ 2, %273 ]
  %281 = load ptr, ptr %259, align 8, !tbaa !510
  %282 = icmp eq ptr %281, null
  br i1 %282, label %287, label %283, !prof !511

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.bitmap_element_def, ptr %281, i64 0, i32 2
  %285 = load i32, ptr %284, align 8, !tbaa !500
  %286 = shl i32 %285, 7
  br label %256, !llvm.loop !512

287:                                              ; preds = %277, %245, %238
  %288 = phi i64 [ %239, %238 ], [ %248, %245 ], [ %278, %277 ]
  %289 = phi i32 [ %240, %238 ], [ %240, %245 ], [ %280, %277 ]
  %290 = phi i32 [ %241, %238 ], [ %249, %245 ], [ %279, %277 ]
  %291 = phi ptr [ %242, %238 ], [ %242, %245 ], [ %281, %277 ]
  %292 = phi i1 [ false, %238 ], [ false, %245 ], [ true, %277 ]
  br i1 %292, label %309, label %293, !prof !513

293:                                              ; preds = %287
  %294 = icmp ult i32 %290, 53
  br i1 %294, label %295, label %305, !prof !514

295:                                              ; preds = %293
  %296 = zext nneg i32 %290 to i64
  %297 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !159
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %305, !prof !515

300:                                              ; preds = %295
  %301 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %296
  %302 = load i8, ptr %301, align 1, !tbaa !159
  %303 = icmp eq i8 %302, 0
  %304 = select i1 %303, i32 1, i32 %236
  br label %305

305:                                              ; preds = %300, %293, %295
  %306 = phi i32 [ %236, %295 ], [ %236, %293 ], [ %304, %300 ]
  %307 = lshr i64 %288, 1
  %308 = add i32 %290, 1
  br label %231, !llvm.loop !516

309:                                              ; preds = %287, %216
  %310 = phi i32 [ 0, %216 ], [ %236, %287 ]
  %311 = call ptr @df_get_live_in(ptr noundef %2) #17
  call void @bitmap_copy(ptr noundef %166, ptr noundef %311) #17
  call void @df_simulate_initialize_backwards(ptr noundef %0, ptr noundef %166) #17
  br label %312

312:                                              ; preds = %322, %309
  %313 = phi ptr [ %10, %309 ], [ %324, %322 ]
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 65535
  %316 = add nsw i32 %315, -7
  %317 = icmp ult i32 %316, 4
  br i1 %317, label %318, label %319, !prof !517

318:                                              ; preds = %312
  call void @df_simulate_find_defs(ptr noundef nonnull %313, ptr noundef %167) #17
  call void @df_simulate_one_insn_backwards(ptr noundef %0, ptr noundef nonnull %313, ptr noundef %166) #17
  br label %319

319:                                              ; preds = %312, %318
  %320 = load ptr, ptr %6, align 8, !tbaa !148
  %321 = icmp eq ptr %313, %320
  br i1 %321, label %325, label %322, !prof !518

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.rtx_def, ptr %313, i64 0, i32 1, i32 0, i32 0, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !159
  br label %312, !llvm.loop !519

325:                                              ; preds = %319
  %326 = call zeroext i8 @bitmap_intersect_p(ptr noundef %167, ptr noundef %165) #17
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %335, !prof !520

328:                                              ; preds = %325
  %329 = call zeroext i8 @bitmap_intersect_p(ptr noundef %166, ptr noundef %165) #17
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %335, !prof !521

331:                                              ; preds = %328
  %332 = call ptr @df_get_live_in(ptr noundef %1) #17
  %333 = call zeroext i8 @bitmap_intersect_p(ptr noundef %167, ptr noundef %332) #17
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %336, label %335, !prof !522

335:                                              ; preds = %331, %328, %325
  br label %336

336:                                              ; preds = %335, %331
  %337 = phi i32 [ 1, %335 ], [ %310, %331 ]
  call void @bitmap_obstack_free(ptr noundef %165) #17
  call void @bitmap_obstack_free(ptr noundef %166) #17
  call void @bitmap_obstack_free(ptr noundef %167) #17
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %503, !prof !523

339:                                              ; preds = %336, %70, %54, %135
  %340 = phi i32 [ %136, %135 ], [ 0, %54 ], [ 0, %70 ], [ 0, %336 ]
  %341 = phi ptr [ %82, %135 ], [ null, %54 ], [ null, %70 ], [ %82, %336 ]
  %342 = phi ptr [ %66, %135 ], [ null, %54 ], [ null, %70 ], [ %66, %336 ]
  %343 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1, i32 1, i32 0, i32 0, i64 2
  %344 = load ptr, ptr %343, align 8, !tbaa !159
  %345 = icmp eq ptr %2, %3
  br i1 %345, label %355, label %346, !prof !524

346:                                              ; preds = %339
  %347 = call ptr @block_label(ptr noundef %3) #17
  %348 = icmp eq i32 %4, 0
  br i1 %348, label %352, label %349, !prof !525

349:                                              ; preds = %346
  %350 = call i32 @invert_jump_1(ptr noundef %10, ptr noundef %347) #17
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %502, label %355, !prof !266

352:                                              ; preds = %346
  %353 = call i32 @redirect_jump_1(ptr noundef %10, ptr noundef %347) #17
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %502, label %355, !prof !526

355:                                              ; preds = %349, %352, %339
  %356 = phi ptr [ %347, %349 ], [ %347, %352 ], [ null, %339 ]
  %357 = call i32 @verify_changes(i32 noundef %340) #17
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %502, label %359, !prof !524

359:                                              ; preds = %355
  call void @confirm_change_group() #17
  br i1 %345, label %429, label %360, !prof !524

360:                                              ; preds = %359
  call void @redirect_jump_2(ptr noundef %10, ptr noundef %344, ptr noundef %356, i32 noundef 0, i32 noundef %4) #17
  %361 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !189
  %363 = getelementptr inbounds %struct.VEC_edge_base, ptr %362, i64 0, i32 2, i64 0
  %364 = load ptr, ptr %363, align 8, !tbaa !148
  %365 = getelementptr inbounds %struct.edge_def, ptr %364, i64 0, i32 7
  %366 = load i32, ptr %365, align 8, !tbaa !198
  %367 = and i32 %366, 1
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %372, label %369, !prof !527

369:                                              ; preds = %360
  %370 = getelementptr inbounds %struct.VEC_edge_base, ptr %362, i64 0, i32 2, i64 1
  %371 = load ptr, ptr %370, align 8, !tbaa !148
  br label %372

372:                                              ; preds = %360, %369
  %373 = phi ptr [ %371, %369 ], [ %364, %360 ]
  call void @redirect_edge_succ(ptr noundef %373, ptr noundef %3) #17
  %374 = icmp eq i32 %4, 0
  br i1 %374, label %429, label %375, !prof !525

375:                                              ; preds = %372
  %376 = load ptr, ptr %361, align 8, !tbaa !189
  %377 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 0
  %378 = load ptr, ptr %377, align 8, !tbaa !148
  %379 = getelementptr inbounds %struct.edge_def, ptr %378, i64 0, i32 7
  %380 = load i32, ptr %379, align 8, !tbaa !198
  %381 = and i32 %380, 1
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383, !prof !343

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %385 = load ptr, ptr %384, align 8, !tbaa !148
  br label %386

386:                                              ; preds = %375, %383
  %387 = phi ptr [ %385, %383 ], [ %378, %375 ]
  %388 = getelementptr inbounds %struct.edge_def, ptr %387, i64 0, i32 9
  %389 = load i64, ptr %388, align 8, !tbaa !528
  br i1 %382, label %390, label %393, !prof !343

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %392 = load ptr, ptr %391, align 8, !tbaa !148
  br label %393

393:                                              ; preds = %386, %390
  %394 = phi ptr [ %392, %390 ], [ %378, %386 ]
  %395 = getelementptr inbounds %struct.edge_def, ptr %394, i64 0, i32 9
  %396 = load i64, ptr %395, align 8, !tbaa !528
  br i1 %382, label %401, label %397, !prof !343

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %399 = load ptr, ptr %398, align 8, !tbaa !148
  %400 = getelementptr inbounds %struct.edge_def, ptr %399, i64 0, i32 9
  store i64 %396, ptr %400, align 8, !tbaa !528
  br label %405

401:                                              ; preds = %393
  %402 = getelementptr inbounds %struct.edge_def, ptr %378, i64 0, i32 9
  store i64 %396, ptr %402, align 8, !tbaa !528
  %403 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %404 = load ptr, ptr %403, align 8, !tbaa !148
  br label %405

405:                                              ; preds = %401, %397
  %406 = phi ptr [ %404, %401 ], [ %378, %397 ]
  %407 = phi ptr [ %378, %401 ], [ %399, %397 ]
  %408 = getelementptr inbounds %struct.edge_def, ptr %406, i64 0, i32 9
  store i64 %389, ptr %408, align 8, !tbaa !528
  %409 = getelementptr inbounds %struct.edge_def, ptr %407, i64 0, i32 8
  %410 = load i32, ptr %409, align 4, !tbaa !529
  br i1 %382, label %411, label %414, !prof !343

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %413 = load ptr, ptr %412, align 8, !tbaa !148
  br label %414

414:                                              ; preds = %405, %411
  %415 = phi ptr [ %413, %411 ], [ %378, %405 ]
  %416 = getelementptr inbounds %struct.edge_def, ptr %415, i64 0, i32 8
  %417 = load i32, ptr %416, align 4, !tbaa !529
  br i1 %382, label %422, label %418, !prof !343

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !148
  %421 = getelementptr inbounds %struct.edge_def, ptr %420, i64 0, i32 8
  store i32 %417, ptr %421, align 4, !tbaa !529
  br label %426

422:                                              ; preds = %414
  %423 = getelementptr inbounds %struct.edge_def, ptr %378, i64 0, i32 8
  store i32 %417, ptr %423, align 4, !tbaa !529
  %424 = getelementptr inbounds %struct.VEC_edge_base, ptr %376, i64 0, i32 2, i64 1
  %425 = load ptr, ptr %424, align 8, !tbaa !148
  br label %426

426:                                              ; preds = %418, %422
  %427 = phi ptr [ %425, %422 ], [ %378, %418 ]
  %428 = getelementptr inbounds %struct.edge_def, ptr %427, i64 0, i32 8
  store i32 %410, ptr %428, align 4, !tbaa !529
  call void @update_br_prob_note(ptr noundef %0) #17
  br label %429

429:                                              ; preds = %372, %426, %359
  %430 = icmp eq ptr %342, null
  br i1 %430, label %486, label %431, !prof !524

431:                                              ; preds = %429
  %432 = load ptr, ptr %11, align 8, !tbaa !159
  %433 = getelementptr inbounds %struct.rtl_bb_info, ptr %432, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !238
  %435 = icmp eq ptr %341, %434
  br i1 %435, label %436, label %439, !prof !525

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 0, i32 1, i32 0, i32 0, i64 1
  %438 = load ptr, ptr %437, align 8, !tbaa !159
  store ptr %438, ptr %433, align 8, !tbaa !238
  br label %439

439:                                              ; preds = %436, %431
  br label %440

440:                                              ; preds = %439, %478
  %441 = phi ptr [ %480, %478 ], [ %342, %439 ]
  %442 = load i32, ptr %441, align 8
  %443 = and i32 %442, 65535
  %444 = add nsw i32 %443, -7
  %445 = icmp ult i32 %444, 4
  br i1 %445, label %446, label %476, !prof !522

446:                                              ; preds = %440
  %447 = call ptr @find_reg_note(ptr noundef nonnull %441, i32 noundef 4, ptr noundef null) #17
  %448 = icmp eq ptr %447, null
  br i1 %448, label %476, label %449, !prof !525

449:                                              ; preds = %446
  %450 = load i32, ptr %441, align 8
  %451 = and i32 %450, 65535
  %452 = add nsw i32 %451, -7
  %453 = icmp ult i32 %452, 4
  br i1 %453, label %454, label %462, !prof !343

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.rtx_def, ptr %441, i64 1
  %456 = load ptr, ptr %455, align 8, !tbaa !159
  %457 = load i32, ptr %456, align 8
  %458 = and i32 %457, 65535
  %459 = icmp eq i32 %458, 23
  br i1 %459, label %462, label %460, !prof !343

460:                                              ; preds = %454
  %461 = call ptr @single_set_2(ptr noundef nonnull %441, ptr noundef nonnull %456) #17
  br label %462

462:                                              ; preds = %449, %454, %460
  %463 = phi ptr [ %461, %460 ], [ null, %449 ], [ %456, %454 ]
  %464 = icmp eq ptr %463, null
  br i1 %464, label %475, label %465, !prof !266

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.rtx_def, ptr %463, i64 0, i32 1, i32 0, i32 0, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !159
  %468 = call i32 @function_invariant_p(ptr noundef %467) #17
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %475, label %470, !prof !266

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.rtx_def, ptr %447, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !159
  %473 = call i32 @function_invariant_p(ptr noundef %472) #17
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %476, !prof !266

475:                                              ; preds = %470, %465, %462
  call void @remove_note(ptr noundef nonnull %441, ptr noundef nonnull %447) #17
  br label %476

476:                                              ; preds = %440, %470, %475, %446
  %477 = icmp eq ptr %441, %341
  br i1 %477, label %482, label %478, !prof !522

478:                                              ; preds = %476
  %479 = getelementptr inbounds %struct.rtx_def, ptr %441, i64 0, i32 1, i32 0, i32 0, i64 2
  %480 = load ptr, ptr %479, align 8, !tbaa !159
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %440, !llvm.loop !530

482:                                              ; preds = %478, %476
  %483 = load ptr, ptr %6, align 8, !tbaa !148
  %484 = getelementptr inbounds %struct.rtx_def, ptr %483, i64 0, i32 1, i32 0, i32 0, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !159
  call void @reorder_insns(ptr noundef nonnull %342, ptr noundef %341, ptr noundef %485) #17
  br label %486

486:                                              ; preds = %482, %429
  br i1 %345, label %487, label %503, !prof !524

487:                                              ; preds = %486
  %488 = call ptr @delete_insn(ptr noundef %10) #17
  %489 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !189
  %491 = getelementptr inbounds %struct.VEC_edge_base, ptr %490, i64 0, i32 2, i64 0
  %492 = load ptr, ptr %491, align 8, !tbaa !148
  %493 = getelementptr inbounds %struct.edge_def, ptr %492, i64 0, i32 7
  %494 = load i32, ptr %493, align 8, !tbaa !198
  %495 = and i32 %494, 1
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %500, label %497

497:                                              ; preds = %487
  %498 = getelementptr inbounds %struct.VEC_edge_base, ptr %490, i64 0, i32 2, i64 1
  %499 = load ptr, ptr %498, align 8, !tbaa !148
  br label %500

500:                                              ; preds = %487, %497
  %501 = phi ptr [ %499, %497 ], [ %492, %487 ]
  call void @remove_edge(ptr noundef %501) #17
  br label %503

502:                                              ; preds = %352, %349, %355
  call void @cancel_changes(i32 noundef 0) #17
  br label %503

503:                                              ; preds = %150, %138, %145, %158, %161, %486, %500, %24, %132, %336, %502
  %504 = phi i32 [ 0, %502 ], [ 0, %336 ], [ 0, %132 ], [ 0, %24 ], [ 1, %500 ], [ 1, %486 ], [ 0, %161 ], [ 0, %158 ], [ 0, %145 ], [ 0, %138 ], [ 0, %150 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i32 %504
}

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_bb_replace(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @verify_changes(i32 noundef) local_unnamed_addr #3

declare i32 @num_validated_changes() local_unnamed_addr #3

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_memory(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #15 !prof !531 !PGOFuncName !532 {
  %3 = load ptr, ptr %0, align 8, !tbaa !148
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_find_defs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_simulate_one_insn_backwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare i32 @invert_jump_1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @redirect_jump_1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @confirm_change_group() local_unnamed_addr #3

declare void @redirect_jump_2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #3

declare i32 @function_invariant_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }

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
!35 = !{ptr @gate_handle_if_conversion, ptr @dbg_cnt, i64 38}
!36 = !{ptr @rest_of_handle_if_conversion, ptr @cleanup_cfg, i64 76}
!37 = !{ptr @rest_of_handle_if_conversion, ptr @if_convert, i64 38}
!38 = !{ptr @gate_handle_if_after_combine, ptr @dbg_cnt, i64 38}
!39 = !{ptr @rest_of_handle_if_after_combine, ptr @if_convert, i64 38}
!40 = !{ptr @gate_handle_if_after_reload, ptr @dbg_cnt, i64 38}
!41 = !{ptr @rest_of_handle_if_after_reload, ptr @if_convert, i64 38}
!42 = !{ptr @if_convert, ptr @loop_optimizer_init, i64 114}
!43 = !{ptr @if_convert, ptr @mark_loop_exit_edges, i64 114}
!44 = !{ptr @if_convert, ptr @loop_optimizer_finalize, i64 114}
!45 = !{ptr @if_convert, ptr @free_dominance_info, i64 228}
!46 = !{ptr @if_convert, ptr @calculate_dominance_info, i64 114}
!47 = !{ptr @if_convert, ptr @df_set_flags, i64 114}
!48 = !{ptr @if_convert, ptr @df_analyze, i64 187}
!49 = !{ptr @if_convert, ptr @df_clear_flags, i64 187}
!50 = !{ptr @if_convert, ptr @df_get_bb_dirty, i64 2660477}
!51 = !{ptr @if_convert, ptr @onlyjump_p, i64 8676}
!52 = !{ptr @if_convert, ptr @noce_get_condition, i64 8676}
!53 = !{ptr @if_convert, ptr @optimize_bb_for_speed_p, i64 72755}
!54 = !{ptr @if_convert, ptr @predictable_edge_p, i64 8465}
!55 = !{ptr @if_convert, ptr @rtx_equal_p, i64 10756}
!56 = !{ptr @if_convert, ptr @prev_nonnote_insn, i64 18}
!57 = !{ptr @if_convert, ptr @noce_operand_ok, i64 18}
!58 = !{ptr @if_convert, ptr @reg_overlap_mentioned_p, i64 36}
!59 = !{ptr @if_convert, ptr @modified_between_p, i64 18}
!60 = !{ptr @if_convert, ptr @side_effects_p, i64 5586}
!61 = !{ptr @if_convert, ptr @may_trap_p, i64 3688}
!62 = !{ptr @if_convert, ptr @noce_get_alt_condition, i64 1862}
!63 = !{ptr @if_convert, ptr @register_operand, i64 18}
!64 = !{ptr @if_convert, ptr @start_sequence, i64 1844}
!65 = !{ptr @if_convert, ptr @noce_emit_cmove, i64 1844}
!66 = !{ptr @if_convert, ptr @end_ifcvt_sequence, i64 1844}
!67 = !{ptr @if_convert, ptr @emit_insn_before_setloc, i64 1844}
!68 = !{ptr @if_convert, ptr @noce_try_store_flag_constants, i64 18}
!69 = !{ptr @if_convert, ptr @noce_try_addcc, i64 18}
!70 = !{ptr @if_convert, ptr @noce_try_store_flag_mask, i64 18}
!71 = !{ptr @if_convert, ptr @noce_try_cmove_arith, i64 18}
!72 = !{ptr @if_convert, ptr @noce_try_sign_mask, i64 18}
!73 = !{ptr @if_convert, ptr @delete_basic_block, i64 63307}
!74 = !{ptr @if_convert, ptr @find_edge, i64 1844}
!75 = !{ptr @if_convert, ptr @remove_edge, i64 1844}
!76 = !{ptr @if_convert, ptr @redirect_edge_and_branch_force, i64 1845}
!77 = !{ptr @if_convert, ptr @can_merge_blocks_p, i64 1844}
!78 = !{ptr @if_convert, ptr @cond_move_process_if_block, i64 6832}
!79 = !{ptr @if_convert, ptr @dom_info_state, i64 827323}
!80 = !{ptr @if_convert, ptr @find_reg_note, i64 5026619}
!81 = !{ptr @if_convert, ptr @forwarder_block_p, i64 4271}
!82 = !{ptr @if_convert, ptr @cheap_bb_rtx_cost_p, i64 64079}
!83 = !{ptr @if_convert, ptr @dead_or_predicable, i64 61269}
!84 = !{ptr @if_convert, ptr @df_set_bb_dirty, i64 119238}
!85 = !{ptr @if_convert, ptr @df_bb_replace, i64 1}
!86 = !{ptr @if_convert, ptr @dominated_by_p, i64 55713}
!87 = !{ptr @if_convert, ptr @clear_aux_for_blocks, i64 114}
!88 = !{ptr @if_convert, ptr @max_reg_num, i64 118}
!89 = !{ptr @noce_get_condition, ptr @any_condjump_p, i64 68305}
!90 = !{ptr @noce_get_condition, ptr @pc_set, i64 68305}
!91 = !{ptr @noce_get_condition, ptr @canonicalize_condition, i64 68305}
!92 = !{ptr @cond_move_process_if_block, ptr @max_reg_num, i64 6832}
!93 = !{ptr @cond_move_process_if_block, ptr @check_cond_move_block, i64 6832}
!94 = !{ptr @cond_move_process_if_block, ptr @free, i64 76}
!95 = !{ptr @noce_operand_ok, ptr @side_effects_p, i64 18}
!96 = !{ptr @noce_operand_ok, ptr @may_trap_p, i64 18}
!97 = !{ptr @noce_try_store_flag_mask, ptr @reversed_comparison_code, i64 18}
!98 = !{ptr @noce_try_cmove_arith, ptr @may_trap_p, i64 18}
!99 = !{ptr @end_ifcvt_sequence, ptr @get_insns, i64 1844}
!100 = !{ptr @end_ifcvt_sequence, ptr @set_used_flags, i64 3688}
!101 = !{ptr @end_ifcvt_sequence, ptr @unshare_all_rtl_in_chain, i64 1844}
!102 = !{ptr @end_ifcvt_sequence, ptr @end_sequence, i64 1844}
!103 = !{ptr @end_ifcvt_sequence, ptr @recog, i64 7974}
!104 = !{ptr @noce_get_alt_condition, ptr @reg_mentioned_p, i64 3361}
!105 = !{ptr @noce_get_alt_condition, ptr @pc_set, i64 1499}
!106 = !{ptr @noce_get_alt_condition, ptr @prev_nonnote_insn, i64 1481}
!107 = !{ptr @noce_get_alt_condition, ptr @find_reg_equal_equiv_note, i64 741}
!108 = !{ptr @noce_get_alt_condition, ptr @canonicalize_condition, i64 1499}
!109 = !{ptr @noce_emit_cmove, ptr @general_operand, i64 3688}
!110 = !{ptr @noce_emit_cmove, ptr @emit_conditional_move, i64 1844}
!111 = !{ptr @check_cond_move_block, ptr @single_set_2, i64 96}
!112 = !{ptr @check_cond_move_block, ptr @register_operand, i64 265}
!113 = !{ptr @check_cond_move_block, ptr @side_effects_p, i64 152}
!114 = !{ptr @check_cond_move_block, ptr @may_trap_p, i64 152}
!115 = !{ptr @check_cond_move_block, ptr @reg_overlap_mentioned_p, i64 76}
!116 = !{ptr @check_cond_move_block, ptr @vec_heap_o_reserve, i64 76}
!117 = !{ptr @cheap_bb_rtx_cost_p, ptr @optimize_bb_for_speed_p, i64 64079}
!118 = !{ptr @cheap_bb_rtx_cost_p, ptr @insn_rtx_cost, i64 66161}
!119 = !{ptr @cheap_bb_rtx_cost_p, ptr @single_set_2, i64 726}
!120 = !{ptr @dead_or_predicable, ptr @tablejump_p, i64 61269}
!121 = !{ptr @dead_or_predicable, ptr @may_trap_p, i64 61271}
!122 = !{ptr @dead_or_predicable, ptr @for_each_rtx, i64 61271}
!123 = !{ptr @dead_or_predicable, ptr @any_condjump_p, i64 59629}
!124 = !{ptr @dead_or_predicable, ptr @noce_get_condition, i64 59629}
!125 = !{ptr @dead_or_predicable, ptr @bitmap_obstack_alloc_stat, i64 178887}
!126 = !{ptr @dead_or_predicable, ptr @max_reg_num, i64 60067}
!127 = !{ptr @dead_or_predicable, ptr @bitmap_set_bit, i64 59367}
!128 = !{ptr @dead_or_predicable, ptr @df_get_live_in, i64 119248}
!129 = !{ptr @dead_or_predicable, ptr @bitmap_copy, i64 59629}
!130 = !{ptr @dead_or_predicable, ptr @df_simulate_initialize_backwards, i64 59629}
!131 = !{ptr @dead_or_predicable, ptr @df_simulate_find_defs, i64 119256}
!132 = !{ptr @dead_or_predicable, ptr @df_simulate_one_insn_backwards, i64 119256}
!133 = !{ptr @dead_or_predicable, ptr @bitmap_intersect_p, i64 178875}
!134 = !{ptr @dead_or_predicable, ptr @bitmap_obstack_free, i64 178887}
!135 = !{ptr @dead_or_predicable, ptr @block_label, i64 59619}
!136 = !{ptr @dead_or_predicable, ptr @invert_jump_1, i64 1}
!137 = !{ptr @dead_or_predicable, ptr @redirect_jump_1, i64 59618}
!138 = !{ptr @dead_or_predicable, ptr @verify_changes, i64 59619}
!139 = !{ptr @dead_or_predicable, ptr @confirm_change_group, i64 59619}
!140 = !{ptr @dead_or_predicable, ptr @redirect_jump_2, i64 59619}
!141 = !{ptr @dead_or_predicable, ptr @redirect_edge_succ, i64 59619}
!142 = !{ptr @dead_or_predicable, ptr @update_br_prob_note, i64 1}
!143 = !{ptr @dead_or_predicable, ptr @find_reg_note, i64 59619}
!144 = !{ptr @dead_or_predicable, ptr @function_invariant_p, i64 2}
!145 = !{ptr @dead_or_predicable, ptr @reorder_insns, i64 59619}
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
!167 = !{!"function_entry_count", i64 38}
!168 = !{!"ifcvt.c;gate_handle_if_conversion"}
!169 = !{!"branch_weights", i32 38, i32 0}
!170 = !{!"ifcvt.c;rest_of_handle_if_conversion"}
!171 = !{!"branch_weights", i32 0, i32 38}
!172 = !{!"ifcvt.c;gate_handle_if_after_combine"}
!173 = !{!"ifcvt.c;rest_of_handle_if_after_combine"}
!174 = !{!"ifcvt.c;gate_handle_if_after_reload"}
!175 = !{!"ifcvt.c;rest_of_handle_if_after_reload"}
!176 = !{!"function_entry_count", i64 114}
!177 = !{!"ifcvt.c;if_convert"}
!178 = !{!"branch_weights", i32 0, i32 114}
!179 = !{!"branch_weights", i32 0, i32 187}
!180 = !{!181, !149, i64 8}
!181 = !{!"function", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !154, i64 104, !154, i64 108, !154, i64 112, !154, i64 116, !154, i64 120, !154, i64 124, !149, i64 128, !154, i64 136, !154, i64 137, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139}
!182 = !{!183, !149, i64 0}
!183 = !{!"control_flow_graph", !149, i64 0, !149, i64 8, !149, i64 16, !154, i64 24, !154, i64 28, !154, i64 32, !149, i64 40, !154, i64 48, !150, i64 52, !150, i64 60, !154, i64 68, !154, i64 72}
!184 = !{!185, !149, i64 56}
!185 = !{!"basic_block_def", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !150, i64 32, !149, i64 48, !149, i64 56, !150, i64 64, !155, i64 72, !154, i64 80, !154, i64 84, !154, i64 88, !154, i64 92, !154, i64 96}
!186 = !{!183, !149, i64 8}
!187 = !{!"branch_weights", i32 1, i32 186}
!188 = !{!"branch_weights", i32 875554, i32 121076}
!189 = !{!185, !149, i64 8}
!190 = !{!"branch_weights", i32 0, i32 875554}
!191 = !{!192, !154, i64 0}
!192 = !{!"VEC_edge_base", !154, i64 0, !154, i64 4, !150, i64 8}
!193 = !{!"branch_weights", i32 832034, i32 43520}
!194 = !{!195, !149, i64 8}
!195 = !{!"edge_def", !149, i64 0, !149, i64 8, !150, i64 16, !149, i64 24, !149, i64 32, !154, i64 40, !154, i64 44, !154, i64 48, !154, i64 52, !155, i64 56}
!196 = !{!"branch_weights", i32 831816, i32 218}
!197 = !{!"branch_weights", i32 829168, i32 2648}
!198 = !{!195, !154, i64 48}
!199 = !{!"branch_weights", i32 829168, i32 0}
!200 = !{!"branch_weights", i32 472085, i32 357083}
!201 = !{!"branch_weights", i32 0, i32 472085}
!202 = !{!203, !149, i64 0}
!203 = !{!"ce_if_block", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !154, i64 40, !154, i64 44, !154, i64 48, !154, i64 52, !154, i64 56, !154, i64 60, !154, i64 64, !154, i64 68}
!204 = !{!203, !149, i64 8}
!205 = !{!203, !149, i64 16}
!206 = !{!203, !154, i64 68}
!207 = !{!"branch_weights", i32 681038, i32 148130}
!208 = !{!185, !149, i64 0}
!209 = !{!"branch_weights", i32 0, i32 681038}
!210 = !{!"branch_weights", i32 226445, i32 454593}
!211 = !{!"branch_weights", i32 0, i32 454593}
!212 = !{!"branch_weights", i32 443966, i32 10627}
!213 = !{!"branch_weights", i32 0, i32 10627}
!214 = !{!"branch_weights", i32 6903, i32 3724}
!215 = !{!"branch_weights", i32 0, i32 3724}
!216 = !{!"branch_weights", i32 580, i32 3144}
!217 = !{!"branch_weights", i32 0, i32 3144}
!218 = !{!"branch_weights", i32 3144, i32 0}
!219 = !{!"branch_weights", i32 3005, i32 139}
!220 = !{!"branch_weights", i32 0, i32 3005}
!221 = !{!"branch_weights", i32 3005, i32 0}
!222 = !{!"branch_weights", i32 0, i32 678033}
!223 = !{!"branch_weights", i32 226445, i32 451588}
!224 = !{!"branch_weights", i32 0, i32 451588}
!225 = !{!"branch_weights", i32 443966, i32 7622}
!226 = !{!"branch_weights", i32 0, i32 7622}
!227 = !{!"branch_weights", i32 7622, i32 0}
!228 = !{!"branch_weights", i32 5671, i32 1951}
!229 = !{!"branch_weights", i32 0, i32 672362}
!230 = !{!"branch_weights", i32 603762, i32 68600}
!231 = !{!"branch_weights", i32 0, i32 68600}
!232 = !{!"branch_weights", i32 61010, i32 7590}
!233 = !{!"branch_weights", i32 0, i32 61010}
!234 = !{!"branch_weights", i32 0, i32 8676}
!235 = !{!"branch_weights", i32 8676, i32 0}
!236 = !{!"branch_weights", i32 5671, i32 3005}
!237 = !{!185, !154, i64 80}
!238 = !{!239, !149, i64 8}
!239 = !{!"rtl_bb_info", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !154, i64 32}
!240 = !{!241, !149, i64 0}
!241 = !{!"noce_if_info", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !150, i64 96, !154, i64 100}
!242 = !{!241, !149, i64 8}
!243 = !{!241, !149, i64 16}
!244 = !{!241, !149, i64 24}
!245 = !{!241, !149, i64 40}
!246 = !{!241, !149, i64 48}
!247 = !{!241, !149, i64 32}
!248 = !{!241, !150, i64 96}
!249 = !{!"branch_weights", i32 5706, i32 2970}
!250 = !{!"branch_weights", i32 2957, i32 13}
!251 = !{!241, !154, i64 100}
!252 = !{!239, !149, i64 0}
!253 = !{!"branch_weights", i32 1844, i32 8676}
!254 = !{!"branch_weights", i32 0, i32 1844}
!255 = !{!"branch_weights", i32 10520, i32 10534, i32 0, i32 0}
!256 = !{!"branch_weights", i32 0, i32 10534}
!257 = distinct !{!257, !165, !166}
!258 = !{!"branch_weights", i32 8676, i32 0, i32 0, i32 0}
!259 = distinct !{!259, !165, !166}
!260 = !{!"branch_weights", i32 1862, i32 6814}
!261 = !{!"branch_weights", i32 1862, i32 0}
!262 = !{!"branch_weights", i32 0, i32 1862}
!263 = !{!"branch_weights", i32 1844, i32 18}
!264 = !{!"branch_weights", i32 1844, i32 0, i32 0, i32 0}
!265 = !{!"branch_weights", i32 1844, i32 0}
!266 = !{!"branch_weights", i32 0, i32 1}
!267 = !{!"branch_weights", i32 0, i32 18}
!268 = distinct !{!268, !165, !166}
!269 = !{!"branch_weights", i32 18, i32 0}
!270 = !{i32 0, i32 2}
!271 = !{!"branch_weights", i32 18, i32 1844}
!272 = !{!"branch_weights", i32 36, i32 3706}
!273 = !{!"branch_weights", i32 3706, i32 0}
!274 = !{!241, !149, i64 56}
!275 = !{!241, !149, i64 64}
!276 = !{!241, !149, i64 88}
!277 = !{!241, !149, i64 72}
!278 = !{!241, !149, i64 80}
!279 = !{i8 0, i8 2}
!280 = !{!"branch_weights", i32 3, i32 1859}
!281 = !{!"branch_weights", i32 3455881, i32 0, i32 0, i32 0, i32 0}
!282 = !{!283, !150, i64 46}
!283 = !{!"real_format", !149, i64 0, !149, i64 8, !154, i64 16, !154, i64 20, !154, i64 24, !154, i64 28, !154, i64 32, !154, i64 36, !154, i64 40, !150, i64 44, !150, i64 45, !150, i64 46, !150, i64 47, !150, i64 48, !150, i64 49, !150, i64 50, !150, i64 51}
!284 = !{!"branch_weights", i32 1859, i32 0, i32 0, i32 0, i32 0}
!285 = !{!283, !150, i64 49}
!286 = !{!"branch_weights", i32 1859, i32 0}
!287 = !{!"branch_weights", i32 1496, i32 363}
!288 = !{!"branch_weights", i32 363, i32 0}
!289 = !{!"branch_weights", i32 31, i32 1813}
!290 = !{!"branch_weights", i32 0, i32 31}
!291 = !{!"branch_weights", i32 249, i32 1613}
!292 = !{!"branch_weights", i32 249, i32 0}
!293 = !{!"branch_weights", i32 0, i32 249}
!294 = !{!155, !155, i64 0}
!295 = !{!"branch_weights", i32 3467044, i32 0, i32 0, i32 0, i32 0}
!296 = !{!"branch_weights", i32 1862, i32 0, i32 0, i32 0, i32 0}
!297 = !{!"branch_weights", i32 1499, i32 363}
!298 = !{!"branch_weights", i32 0, i32 363}
!299 = !{!300, !149, i64 1000}
!300 = !{!"gcc_target", !301, i64 0, !303, i64 368, !304, i64 664, !154, i64 744, !149, i64 752, !149, i64 760, !149, i64 768, !149, i64 776, !149, i64 784, !149, i64 792, !149, i64 800, !149, i64 808, !149, i64 816, !149, i64 824, !149, i64 832, !149, i64 840, !149, i64 848, !149, i64 856, !149, i64 864, !149, i64 872, !149, i64 880, !149, i64 888, !149, i64 896, !149, i64 904, !149, i64 912, !149, i64 920, !149, i64 928, !149, i64 936, !149, i64 944, !149, i64 952, !149, i64 960, !149, i64 968, !149, i64 976, !149, i64 984, !149, i64 992, !149, i64 1000, !149, i64 1008, !149, i64 1016, !149, i64 1024, !149, i64 1032, !149, i64 1040, !149, i64 1048, !149, i64 1056, !155, i64 1064, !155, i64 1072, !149, i64 1080, !149, i64 1088, !149, i64 1096, !149, i64 1104, !149, i64 1112, !149, i64 1120, !149, i64 1128, !149, i64 1136, !149, i64 1144, !149, i64 1152, !149, i64 1160, !149, i64 1168, !305, i64 1176, !149, i64 1232, !149, i64 1240, !149, i64 1248, !149, i64 1256, !149, i64 1264, !149, i64 1272, !149, i64 1280, !149, i64 1288, !149, i64 1296, !149, i64 1304, !149, i64 1312, !149, i64 1320, !149, i64 1328, !149, i64 1336, !149, i64 1344, !149, i64 1352, !149, i64 1360, !149, i64 1368, !149, i64 1376, !149, i64 1384, !149, i64 1392, !149, i64 1400, !149, i64 1408, !149, i64 1416, !149, i64 1424, !149, i64 1432, !149, i64 1440, !149, i64 1448, !149, i64 1456, !155, i64 1464, !306, i64 1472, !149, i64 1664, !149, i64 1672, !149, i64 1680, !149, i64 1688, !149, i64 1696, !149, i64 1704, !149, i64 1712, !149, i64 1720, !149, i64 1728, !149, i64 1736, !149, i64 1744, !149, i64 1752, !149, i64 1760, !149, i64 1768, !149, i64 1776, !307, i64 1784, !308, i64 1792, !309, i64 1896, !310, i64 1968, !149, i64 2016, !150, i64 2024, !150, i64 2025, !150, i64 2026, !150, i64 2027, !150, i64 2028, !150, i64 2029, !150, i64 2030, !150, i64 2031, !150, i64 2032, !150, i64 2033, !150, i64 2034, !150, i64 2035}
!301 = !{!"asm_out", !149, i64 0, !149, i64 8, !149, i64 16, !302, i64 24, !302, i64 56, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184, !149, i64 192, !149, i64 200, !149, i64 208, !149, i64 216, !149, i64 224, !149, i64 232, !149, i64 240, !149, i64 248, !149, i64 256, !149, i64 264, !149, i64 272, !149, i64 280, !149, i64 288, !149, i64 296, !149, i64 304, !149, i64 312, !149, i64 320, !149, i64 328, !149, i64 336, !149, i64 344, !149, i64 352, !149, i64 360}
!302 = !{!"asm_int_op", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24}
!303 = !{!"sched", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184, !149, i64 192, !149, i64 200, !149, i64 208, !149, i64 216, !149, i64 224, !149, i64 232, !149, i64 240, !149, i64 248, !149, i64 256, !149, i64 264, !149, i64 272, !149, i64 280, !149, i64 288}
!304 = !{!"vectorize", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72}
!305 = !{!"addr_space", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48}
!306 = !{!"calls", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96, !149, i64 104, !149, i64 112, !149, i64 120, !149, i64 128, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !149, i64 168, !149, i64 176, !149, i64 184}
!307 = !{!"c", !149, i64 0}
!308 = !{!"cxx", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !149, i64 72, !149, i64 80, !149, i64 88, !149, i64 96}
!309 = !{!"emutls", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !149, i64 48, !149, i64 56, !150, i64 64, !150, i64 65}
!310 = !{!"target_option_hooks", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40}
!311 = !{!"VP", i32 0, i64 18, i64 -4114221222305073648, i64 18}
!312 = !{!"branch_weights", i32 679194, i32 1844}
!313 = !{!"VP", i32 0, i64 827324, i64 -4114221222305073648, i64 827324}
!314 = !{!"branch_weights", i32 0, i32 827324}
!315 = !{!203, !149, i64 32}
!316 = !{!195, !149, i64 0}
!317 = !{!203, !154, i64 56}
!318 = distinct !{!318, !165, !166}
!319 = !{!203, !154, i64 40}
!320 = !{!203, !154, i64 52}
!321 = !{!203, !154, i64 44}
!322 = !{!203, !154, i64 48}
!323 = distinct !{!323, !165, !166}
!324 = distinct !{!324, !165, !166}
!325 = distinct !{!325, !165, !166}
!326 = !{!203, !149, i64 24}
!327 = !{!328, !154, i64 0}
!328 = !{!"optab_handlers", !154, i64 0}
!329 = !{!"branch_weights", i32 827324, i32 0}
!330 = !{!"branch_weights", i32 18690, i32 808634}
!331 = !{!"branch_weights", i32 4621, i32 14069}
!332 = !{!"branch_weights", i32 0, i32 4621}
!333 = !{!"branch_weights", i32 4271, i32 350}
!334 = !{!"branch_weights", i32 2143, i32 2128}
!335 = !{!"branch_weights", i32 2143, i32 0}
!336 = !{!"branch_weights", i32 1346, i32 797}
!337 = !{!"branch_weights", i32 777, i32 20}
!338 = !{!"branch_weights", i32 2140, i32 3}
!339 = !{!"branch_weights", i32 0, i32 3}
!340 = !{!"branch_weights", i32 3, i32 0}
!341 = !{!"branch_weights", i32 2, i32 1}
!342 = !{!185, !149, i64 48}
!343 = !{!"branch_weights", i32 1, i32 0}
!344 = !{!185, !154, i64 96}
!345 = !{!"branch_weights", i32 0, i32 827323}
!346 = !{!"branch_weights", i32 827323, i32 0}
!347 = !{!"branch_weights", i32 368426, i32 458897}
!348 = !{!"branch_weights", i32 368348, i32 78}
!349 = !{!"branch_weights", i32 0, i32 368348}
!350 = !{!"branch_weights", i32 62684, i32 305664}
!351 = !{!"branch_weights", i32 0, i32 62684}
!352 = !{!"branch_weights", i32 6971, i32 55713}
!353 = !{!"branch_weights", i32 0, i32 55713}
!354 = !{!"branch_weights", i32 748, i32 54965}
!355 = !{!"branch_weights", i32 61936, i32 0}
!356 = !{!"branch_weights", i32 57238, i32 4698}
!357 = !{!"branch_weights", i32 4596, i32 102}
!358 = !{!"branch_weights", i32 670, i32 61266}
!359 = !{!"branch_weights", i32 1648, i32 59618}
!360 = !{!"branch_weights", i32 61463, i32 0}
!361 = !{!"branch_weights", i32 814091, i32 61463}
!362 = distinct !{!362, !165, !166}
!363 = !{!"branch_weights", i32 186, i32 934981}
!364 = !{!"branch_weights", i32 73, i32 114}
!365 = distinct !{!365, !165, !166}
!366 = !{!"branch_weights", i32 114, i32 0}
!367 = !{!"branch_weights", i32 4, i32 110}
!368 = !{!"function_entry_count", i64 68305}
!369 = !{!"ifcvt.c;noce_get_condition"}
!370 = !{!"branch_weights", i32 0, i32 68305}
!371 = !{!"branch_weights", i32 68129, i32 176}
!372 = !{!"branch_weights", i32 0, i32 68129}
!373 = !{!"function_entry_count", i64 6832}
!374 = !{!"ifcvt.c;cond_move_process_if_block"}
!375 = !{!"VP", i32 1, i64 6832, i64 513, i64 6832}
!376 = !{!"branch_weights", i32 6832, i32 0}
!377 = !{!"branch_weights", i32 6756, i32 76}
!378 = !{!379, !154, i64 0}
!379 = !{!"VEC_int_base", !154, i64 0, !154, i64 4, !150, i64 8}
!380 = distinct !{!380, !165, !166}
!381 = distinct !{!381, !165, !166}
!382 = !{!"ifcvt.c;first_active_insn"}
!383 = !{!"function_entry_count", i64 18}
!384 = !{!"ifcvt.c;noce_operand_ok"}
!385 = !{!300, !149, i64 1040}
!386 = distinct !{!386, !165, !166}
!387 = distinct !{!387, !165, !166}
!388 = distinct !{!388, !165, !166}
!389 = !{!"ifcvt.c;noce_try_store_flag_constants"}
!390 = !{!"ifcvt.c;noce_try_addcc"}
!391 = !{!"ifcvt.c;noce_try_store_flag_mask"}
!392 = !{!"ifcvt.c;noce_try_cmove_arith"}
!393 = !{!"branch_weights", i32 12, i32 6}
!394 = !{!"branch_weights", i32 6, i32 0}
!395 = !{!"branch_weights", i32 0, i32 6}
!396 = !{!397, !150, i64 32}
!397 = !{!"mem_attrs", !149, i64 0, !149, i64 8, !149, i64 16, !154, i64 24, !154, i64 28, !150, i64 32}
!398 = !{!300, !149, i64 1184}
!399 = !{!397, !154, i64 24}
!400 = !{!397, !154, i64 28}
!401 = !{!"ifcvt.c;noce_try_sign_mask"}
!402 = !{!"function_entry_count", i64 1844}
!403 = !{!"ifcvt.c;end_ifcvt_sequence"}
!404 = !{!"branch_weights", i32 1, i32 1843}
!405 = !{!"branch_weights", i32 0, i32 7974}
!406 = !{!"branch_weights", i32 7974, i32 0}
!407 = !{!"branch_weights", i32 1843, i32 6131}
!408 = distinct !{!408, !165, !166}
!409 = !{!"function_entry_count", i64 1862}
!410 = !{!"ifcvt.c;noce_get_alt_condition"}
!411 = !{!"branch_weights", i32 0, i32 1499}
!412 = !{!"branch_weights", i32 1481, i32 18}
!413 = !{!"branch_weights", i32 0, i32 1481}
!414 = !{!"branch_weights", i32 1016, i32 465}
!415 = !{!"branch_weights", i32 893, i32 123}
!416 = !{!"branch_weights", i32 741, i32 152}
!417 = !{!"branch_weights", i32 741, i32 0}
!418 = !{!"branch_weights", i32 0, i32 741}
!419 = !{!"branch_weights", i32 1481, i32 0}
!420 = !{!"branch_weights", i32 1478, i32 3, i32 0, i32 0, i32 0}
!421 = !{!"branch_weights", i32 1499, i32 0}
!422 = distinct !{!422, !165, !166}
!423 = distinct !{!423, !165, !166}
!424 = !{!"ifcvt.c;noce_emit_cmove"}
!425 = !{!"ifcvt.c;check_cond_move_block"}
!426 = !{!"branch_weights", i32 0, i32 6832}
!427 = !{!"branch_weights", i32 0, i32 13754}
!428 = !{!"branch_weights", i32 6908, i32 6846}
!429 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 6908, i32 0}
!430 = !{!"branch_weights", i32 6812, i32 96}
!431 = !{!"branch_weights", i32 0, i32 6908}
!432 = !{!"branch_weights", i32 2078, i32 4830}
!433 = !{!"branch_weights", i32 1737, i32 341}
!434 = !{!"branch_weights", i32 76, i32 265}
!435 = !{!"branch_weights", i32 265, i32 0}
!436 = !{!"branch_weights", i32 76, i32 0}
!437 = !{!"branch_weights", i32 5776, i32 0, i32 0}
!438 = !{!"branch_weights", i32 0, i32 76}
!439 = !{!379, !154, i64 4}
!440 = !{!"branch_weights", i32 6832, i32 76, i32 6846}
!441 = distinct !{!441, !165, !166}
!442 = distinct !{!442, !165, !166}
!443 = distinct !{!443, !165, !166}
!444 = distinct !{!444, !165, !166}
!445 = distinct !{!445, !166}
!446 = !{!203, !154, i64 60}
!447 = !{!203, !154, i64 64}
!448 = distinct !{!448, !165, !166}
!449 = distinct !{!449, !165, !166}
!450 = distinct !{!450, !165, !166}
!451 = distinct !{!451, !166}
!452 = !{!"function_entry_count", i64 64079}
!453 = !{!"ifcvt.c;cheap_bb_rtx_cost_p"}
!454 = !{!"branch_weights", i32 126307, i32 66161, i32 1239}
!455 = !{!"branch_weights", i32 0, i32 66161}
!456 = !{!"branch_weights", i32 66161, i32 0}
!457 = !{!"branch_weights", i32 65435, i32 726}
!458 = !{!"branch_weights", i32 63737, i32 2424}
!459 = !{!"branch_weights", i32 0, i32 63737}
!460 = !{!"branch_weights", i32 64590, i32 1571}
!461 = !{!"branch_weights", i32 61269, i32 129628}
!462 = distinct !{!462, !166}
!463 = !{!"function_entry_count", i64 61269}
!464 = !{!"ifcvt.c;dead_or_predicable"}
!465 = !{!"branch_weights", i32 0, i32 61269}
!466 = distinct !{!466, !165, !166}
!467 = !{!"branch_weights", i32 61269, i32 0}
!468 = !{!"branch_weights", i32 61266, i32 3}
!469 = distinct !{!469, !165, !166}
!470 = distinct !{!470, !165, !166}
!471 = !{!"branch_weights", i32 277, i32 60992}
!472 = !{!"branch_weights", i32 0, i32 277}
!473 = distinct !{!473, !165, !166}
!474 = !{!"VP", i32 0, i64 61269, i64 -4114221222305073648, i64 61269}
!475 = !{!"branch_weights", i32 2, i32 0, i32 61271, i32 0, i32 0}
!476 = !{!"branch_weights", i32 0, i32 61271}
!477 = !{!"branch_weights", i32 61271, i32 0}
!478 = !{!"branch_weights", i32 59631, i32 1640}
!479 = !{!"branch_weights", i32 59629, i32 4}
!480 = distinct !{!480, !166}
!481 = !{!"branch_weights", i32 0, i32 59629}
!482 = !{!"branch_weights", i32 438, i32 59191}
!483 = !{!"branch_weights", i32 1, i32 223}
!484 = !{!"branch_weights", i32 59622, i32 178898}
!485 = !{!"branch_weights", i32 119258, i32 59640}
!486 = !{!487, !149, i64 248}
!487 = !{!"df", !150, i64 0, !150, i64 64, !149, i64 128, !488, i64 136, !488, i64 176, !149, i64 216, !149, i64 224, !149, i64 232, !154, i64 240, !154, i64 244, !149, i64 248, !154, i64 256, !154, i64 260, !149, i64 264, !149, i64 272, !149, i64 280, !149, i64 288, !149, i64 296, !149, i64 304, !149, i64 312, !149, i64 320, !149, i64 328, !149, i64 336, !154, i64 344, !154, i64 348, !149, i64 352, !154, i64 360, !154, i64 364, !150, i64 365, !150, i64 366}
!488 = !{!"df_ref_info", !149, i64 0, !149, i64 8, !149, i64 16, !154, i64 24, !154, i64 28, !154, i64 32, !154, i64 36}
!489 = !{!490, !149, i64 8}
!490 = !{!"df_insn_info", !149, i64 0, !149, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !154, i64 40}
!491 = !{!"branch_weights", i32 9, i32 59631}
!492 = !{!"branch_weights", i32 59631, i32 0}
!493 = distinct !{!493, !165, !166}
!494 = !{!"branch_weights", i32 223, i32 7632417}
!495 = distinct !{!495, !165, !166}
!496 = !{!"branch_weights", i32 59620, i32 9}
!497 = !{!498, !149, i64 0}
!498 = !{!"bitmap_head_def", !149, i64 0, !149, i64 8, !154, i64 16, !149, i64 24}
!499 = !{!"branch_weights", i32 0, i32 59620}
!500 = !{!501, !154, i64 16}
!501 = !{!"bitmap_element_def", !149, i64 0, !149, i64 8, !154, i64 16, !150, i64 24}
!502 = !{!"branch_weights", i32 59774, i32 59468}
!503 = !{!"branch_weights", i32 59621, i32 1}
!504 = !{!"branch_weights", i32 3390948, i32 59621}
!505 = distinct !{!505, !165, !166}
!506 = !{!"branch_weights", i32 1, i32 59619}
!507 = !{!"branch_weights", i32 59466, i32 154}
!508 = !{!"branch_weights", i32 59619, i32 1}
!509 = distinct !{!509, !165, !166}
!510 = !{!501, !149, i64 0}
!511 = !{!"branch_weights", i32 59620, i32 0}
!512 = distinct !{!512, !166}
!513 = !{!"branch_weights", i32 59620, i32 59622}
!514 = !{!"branch_weights", i32 2, i32 59620}
!515 = !{!"branch_weights", i32 0, i32 2}
!516 = distinct !{!516, !165, !166}
!517 = !{!"branch_weights", i32 119256, i32 0}
!518 = !{!"branch_weights", i32 59629, i32 59627}
!519 = distinct !{!519, !166}
!520 = !{!"branch_weights", i32 59627, i32 2}
!521 = !{!"branch_weights", i32 59619, i32 8}
!522 = !{!"branch_weights", i32 59619, i32 0}
!523 = !{!"branch_weights", i32 59619, i32 10}
!524 = !{!"branch_weights", i32 0, i32 59619}
!525 = !{!"branch_weights", i32 59618, i32 1}
!526 = !{!"branch_weights", i32 0, i32 59618}
!527 = !{!"branch_weights", i32 55013, i32 4606}
!528 = !{!195, !155, i64 56}
!529 = !{!195, !154, i64 52}
!530 = distinct !{!530, !165, !166}
!531 = !{!"function_entry_count", i64 183820}
!532 = !{!"ifcvt.c;find_memory"}
