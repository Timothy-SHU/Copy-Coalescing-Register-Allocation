; ModuleID = 'reg-stack.c'
source_filename = "reg-stack.c"
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
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_char_base = type { i32, i32, [1 x i8] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.stack_def = type { i32, i64, [8 x i8] }
%struct.real_value = type { i32, [3 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.block_info_def = type { %struct.stack_def, %struct.stack_def, i64, i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@regstack_completed = dso_local local_unnamed_addr global i32 0, align 4
@stack_regs_mentioned_data = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [12 x i8] c"*stack_regs\00", align 1
@pass_stack_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_stack_regs, ptr null, ptr null, ptr null, i32 0, i32 164, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@pass_stack_regs_run = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr null, ptr @rest_of_handle_stack_regs, ptr null, ptr null, i32 0, i32 164, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@FP_mode_reg = internal unnamed_addr global [8 x [87 x ptr]] zeroinitializer, align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@ix86_flags_rtx = internal unnamed_addr global ptr null, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@ix86_cmodel = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@not_a_num = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@any_malformed_asm = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\0ABasic block %d\0AInput stack: \00", align 1
@current_block = internal unnamed_addr global ptr null, align 8
@starting_stack_p = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"reg-stack.c\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"  insn %d input stack: \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Expected live registers [\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" ]\0AOutput stack: \00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Emitting insn initializing reg %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"uninitialized\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"empty\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@.str.17 = private unnamed_addr constant [52 x i8] c"output constraint %d must specify a single register\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"output constraint %d cannot be specified together with \22%s\22 clobber\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.19 = private unnamed_addr constant [44 x i8] c"output regs must be grouped at top of stack\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"implicitly popped regs must be grouped at top of stack\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"output operand %d must use %<&%> constraint\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.22 = private unnamed_addr constant [14 x i8] c"Edge %d->%d: \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"no changes needed\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"correcting stack to \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !37 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !38
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !37 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !38
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !48

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !42
  %11 = load i8, ptr %3, align 1, !tbaa !49
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !37 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !37 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !48

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !50
  store i8 %12, ptr %4, align 1, !tbaa !49
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !37 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !37 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !37 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !37 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !54

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !37 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @stack_regs_mentioned(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !37 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 10
  %8 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %14, label %74

11:                                               ; preds = %1
  %12 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %74, label %14

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %17, align 4, !tbaa !57
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %14 ]
  %23 = icmp ult i32 %16, %22
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = udiv i32 %16, 20
  %26 = add i32 %16, 1
  %27 = add i32 %26, %25
  br i1 %18, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %17, align 4, !tbaa !57
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ 0, %24 ]
  br i1 %18, label %34, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %17, align 4, !tbaa !57
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ 0, %30 ]
  %36 = sub nsw i32 %27, %35
  br i1 %18, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.VEC_char_base, ptr %17, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = load i32, ptr %17, align 4, !tbaa !57
  %41 = sub i32 %39, %40
  %42 = icmp uge i32 %41, %36
  br label %45

43:                                               ; preds = %34
  %44 = icmp eq i32 %35, %27
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i1 [ %42, %37 ], [ %44, %43 ]
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %17, i32 noundef %36, i64 noundef 8, i64 noundef 1) #21
  store ptr %48, ptr @stack_regs_mentioned_data, align 8, !tbaa !38
  br label %49

49:                                               ; preds = %45, %47
  %50 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !38, !nonnull !60, !noundef !60
  store i32 %27, ptr %50, align 4, !tbaa !57
  %51 = getelementptr inbounds %struct.VEC_char_base, ptr %50, i64 0, i32 2
  %52 = sext i32 %31 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = sub nsw i32 %27, %31
  %55 = sext i32 %54 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %53, i8 0, i64 %55, i1 false)
  br label %56

56:                                               ; preds = %49, %21
  %57 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %58 = zext i32 %16 to i64
  %59 = getelementptr inbounds %struct.VEC_char_base, ptr %57, i64 0, i32 2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !49
  %61 = sext i8 %60 to i32
  %62 = icmp eq i8 %60, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !49
  %66 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %65)
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 2, i32 1
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr %59, align 1, !tbaa !49
  br label %70

70:                                               ; preds = %63, %56
  %71 = phi i32 [ %68, %63 ], [ %61, %56 ]
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %11, %6, %70
  %75 = phi i32 [ %73, %70 ], [ 0, %6 ], [ 0, %11 ]
  ret i32 %75
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @stack_regs_mentioned_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !37 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %49, label %10

10:                                               ; preds = %5, %1
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %11
  %15 = load i8, ptr %14, align 1, !tbaa !49
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = zext i8 %15 to i64
  br label %20

20:                                               ; preds = %17, %47
  %21 = phi i64 [ %19, %17 ], [ %22, %47 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds i8, ptr %13, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !49
  switch i8 %24, label %47 [
    i8 69, label %25
    i8 101, label %41
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %22
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %34, %25
  %31 = phi i64 [ %36, %34 ], [ %29, %25 ]
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = add nsw i64 %31, -1
  %36 = add nsw i64 %31, -1
  %37 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %30, label %49, !llvm.loop !63

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %22
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30, %20, %41
  %48 = icmp sgt i64 %21, 1
  br i1 %48, label %20, label %49, !llvm.loop !64

49:                                               ; preds = %47, %41, %34, %10, %5
  %50 = phi i32 [ 1, %5 ], [ 0, %10 ], [ 1, %34 ], [ 1, %41 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_handle_stack_regs() #11 !prof !65 !PGOFuncName !66 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_stack_regs() #12 !prof !65 !PGOFuncName !67 {
  %1 = alloca %struct.stack_def, align 8
  %2 = alloca %struct.real_value, align 8
  %3 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !68

5:                                                ; preds = %0
  tail call void @free(ptr noundef %3)
  store ptr null, ptr @stack_regs_mentioned_data, align 8, !tbaa !38
  br label %6

6:                                                ; preds = %5, %0
  br label %7

7:                                                ; preds = %6, %11
  %8 = phi i32 [ %12, %11 ], [ 8, %6 ]
  %9 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %8) #21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !69

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %7, !prof !70, !llvm.loop !71

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %8, %7 ], [ 16, %11 ]
  %16 = icmp ugt i32 %15, 15
  br i1 %16, label %568, label %17, !prof !68

17:                                               ; preds = %14
  tail call void @df_note_add_problem() #21
  tail call void @df_analyze() #21
  %18 = tail call zeroext i8 @mark_dfs_back_edges() #21
  tail call void @alloc_aux_for_blocks(i32 noundef 64) #21
  %19 = load ptr, ptr @cfun, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %37, label %42

28:                                               ; preds = %138
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr @cfun, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %37, label %42, !llvm.loop !79

37:                                               ; preds = %28, %17
  %38 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !49
  %39 = icmp eq i8 %38, 0
  %40 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 11), align 1
  %41 = icmp eq i8 %40, 0
  br label %141

42:                                               ; preds = %17, %28
  %43 = phi ptr [ %30, %28 ], [ %24, %17 ]
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !80
  %46 = icmp eq ptr %43, null
  %47 = getelementptr inbounds %struct.block_info_def, ptr %45, i64 0, i32 4
  br label %48

48:                                               ; preds = %87, %42
  %49 = phi i32 [ 0, %42 ], [ %88, %87 ]
  br i1 %46, label %50, label %51

50:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.4) #21
  br label %51

51:                                               ; preds = %50, %48
  %52 = load ptr, ptr %43, align 8, !tbaa !38
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8, !tbaa !81
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ 0, %51 ]
  %58 = icmp eq i32 %57, %49
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = zext i32 %49 to i64
  %61 = getelementptr inbounds %struct.VEC_edge_base, ptr %52, i64 0, i32 2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi ptr [ %62, %59 ], [ null, %56 ]
  br i1 %58, label %89, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !83
  %68 = and i32 %67, 32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load ptr, ptr %64, align 8, !tbaa !85
  %72 = load ptr, ptr @cfun, align 8, !tbaa !38
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !72
  %75 = load ptr, ptr %74, align 8, !tbaa !74
  %76 = icmp eq ptr %71, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, ptr %47, align 4, !tbaa !86
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %47, align 4, !tbaa !86
  br label %80

80:                                               ; preds = %77, %70, %65
  br i1 %53, label %83, label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %52, align 8, !tbaa !81
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ %82, %81 ], [ 0, %80 ]
  %85 = icmp ult i32 %49, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %87

87:                                               ; preds = %86, %83
  %88 = add i32 %49, 1
  br label %48, !llvm.loop !89

89:                                               ; preds = %63
  store i32 -2, ptr %45, align 8, !tbaa !90
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %91 = getelementptr inbounds %struct.block_info_def, ptr %45, i64 0, i32 2
  %92 = getelementptr inbounds %struct.stack_def, ptr %45, i64 0, i32 1
  br label %93

93:                                               ; preds = %89, %138
  %94 = phi i64 [ 8, %89 ], [ %139, %138 ]
  %95 = load i32, ptr %90, align 8, !tbaa !91
  %96 = load ptr, ptr @df, align 8, !tbaa !38
  %97 = getelementptr inbounds %struct.df, ptr %96, i64 0, i32 1, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !38
  %99 = getelementptr inbounds %struct.dataflow, ptr %98, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !92
  %101 = icmp ugt i32 %100, %95
  tail call void @llvm.assume(i1 %101)
  %102 = getelementptr inbounds %struct.dataflow, ptr %98, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !94
  %104 = zext i32 %95 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !38
  %107 = getelementptr inbounds %struct.df_lr_bb_info, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !95
  %109 = trunc i64 %94 to i32
  %110 = tail call i32 @bitmap_bit_p(ptr noundef %108, i32 noundef %109) #21
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %93
  %113 = shl nuw nsw i64 1, %94
  %114 = load i64, ptr %91, align 8, !tbaa !97
  %115 = or i64 %114, %113
  store i64 %115, ptr %91, align 8, !tbaa !97
  br label %116

116:                                              ; preds = %112, %93
  %117 = load i32, ptr %90, align 8, !tbaa !91
  %118 = load ptr, ptr @df, align 8, !tbaa !38
  %119 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 1, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !38
  %121 = getelementptr inbounds %struct.dataflow, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %121, align 8, !tbaa !92
  %123 = icmp ugt i32 %122, %117
  tail call void @llvm.assume(i1 %123)
  %124 = getelementptr inbounds %struct.dataflow, ptr %120, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !94
  %126 = zext i32 %117 to i64
  %127 = getelementptr inbounds ptr, ptr %125, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct.df_lr_bb_info, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !98
  %131 = trunc i64 %94 to i32
  %132 = tail call i32 @bitmap_bit_p(ptr noundef %130, i32 noundef %131) #21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %116
  %135 = shl nuw nsw i64 1, %94
  %136 = load i64, ptr %92, align 8, !tbaa !99
  %137 = or i64 %136, %135
  store i64 %137, ptr %92, align 8, !tbaa !99
  br label %138

138:                                              ; preds = %134, %116
  %139 = add nuw nsw i64 %94, 1
  %140 = icmp eq i64 %139, 16
  br i1 %140, label %28, label %93, !llvm.loop !100

141:                                              ; preds = %37, %168
  %142 = phi i64 [ 8, %37 ], [ %169, %168 ]
  br i1 %39, label %146, label %143

143:                                              ; preds = %141
  %144 = add nsw i64 %142, -8
  %145 = trunc i64 %142 to i32
  br label %150

146:                                              ; preds = %150, %141
  br i1 %41, label %168, label %147

147:                                              ; preds = %146
  %148 = add nsw i64 %142, -8
  %149 = trunc i64 %142 to i32
  br label %159

150:                                              ; preds = %143, %150
  %151 = phi i8 [ %38, %143 ], [ %157, %150 ]
  %152 = zext i8 %151 to i32
  %153 = tail call ptr @gen_rtx_REG(i32 noundef %152, i32 noundef %145) #21
  %154 = zext i8 %151 to i64
  %155 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %144, i64 %154
  store ptr %153, ptr %155, align 8, !tbaa !38
  %156 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %154
  %157 = load i8, ptr %156, align 1, !tbaa !49
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %146, label %150, !llvm.loop !101

159:                                              ; preds = %147, %159
  %160 = phi i8 [ %40, %147 ], [ %166, %159 ]
  %161 = zext i8 %160 to i32
  %162 = tail call ptr @gen_rtx_REG(i32 noundef %161, i32 noundef %149) #21
  %163 = zext i8 %160 to i64
  %164 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %148, i64 %163
  store ptr %162, ptr %164, align 8, !tbaa !38
  %165 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %163
  %166 = load i8, ptr %165, align 1, !tbaa !49
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %159, !llvm.loop !102

168:                                              ; preds = %159, %146
  %169 = add nuw nsw i64 %142, 1
  %170 = icmp eq i64 %169, 16
  br i1 %170, label %171, label %141, !llvm.loop !103

171:                                              ; preds = %168
  %172 = tail call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef 17) #21
  store ptr %172, ptr @ix86_flags_rtx, align 8, !tbaa !38
  %173 = load i32, ptr @flag_pic, align 4, !tbaa !53
  %174 = freeze i32 %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, ptr @ix86_cmodel, align 4
  switch i32 %177, label %180 [
    i32 7, label %178
    i32 4, label %178
  ]

178:                                              ; preds = %176, %176, %171
  %179 = load ptr, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 38), align 16, !tbaa !38
  store ptr %179, ptr @not_a_num, align 8, !tbaa !38
  br label %184

180:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %181 = call zeroext i8 @real_nan(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 38) #21
  %182 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %2, i32 noundef 38) #21
  store ptr %182, ptr @not_a_num, align 8, !tbaa !38
  %183 = call ptr @force_const_mem(i32 noundef 38, ptr noundef %182) #21
  store ptr %183, ptr @not_a_num, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %184

184:                                              ; preds = %180, %178
  %185 = call i32 @get_max_uid() #21
  %186 = add nsw i32 %185, 1
  %187 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %186, i64 noundef 8, i64 noundef 1) #21
  store ptr %187, ptr @stack_regs_mentioned_data, align 8, !tbaa !38
  %188 = icmp eq ptr %187, null
  %189 = getelementptr inbounds %struct.VEC_char_base, ptr %187, i64 0, i32 2
  %190 = select i1 %188, ptr null, ptr %189
  %191 = sext i32 %186 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %190, i8 0, i64 %191, i1 false)
  %192 = load ptr, ptr @cfun, align 8, !tbaa !38
  %193 = getelementptr inbounds %struct.function, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !72
  %195 = load ptr, ptr %194, align 8, !tbaa !74
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 1
  br label %197

197:                                              ; preds = %249, %184
  %198 = phi i32 [ 0, %184 ], [ %250, %249 ]
  %199 = phi i32 [ 0, %184 ], [ %237, %249 ]
  %200 = load ptr, ptr %196, align 8, !tbaa !38
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = load i32, ptr %200, align 8, !tbaa !81
  br label %204

204:                                              ; preds = %202, %197
  %205 = phi i32 [ %203, %202 ], [ 0, %197 ]
  %206 = icmp eq i32 %205, %198
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = zext i32 %198 to i64
  %209 = getelementptr inbounds %struct.VEC_edge_base, ptr %200, i64 0, i32 2, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !38
  br label %211

211:                                              ; preds = %207, %204
  %212 = phi ptr [ %210, %207 ], [ null, %204 ]
  br i1 %206, label %251, label %213

213:                                              ; preds = %211
  %214 = getelementptr inbounds %struct.edge_def, ptr %212, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !104
  %216 = getelementptr inbounds %struct.basic_block_def, ptr %215, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !80
  %218 = getelementptr inbounds %struct.stack_def, ptr %217, i64 0, i32 1
  br label %219

219:                                              ; preds = %213, %235
  %220 = phi i64 [ 15, %213 ], [ %238, %235 ]
  %221 = phi i32 [ %199, %213 ], [ %237, %235 ]
  %222 = phi i32 [ -1, %213 ], [ %236, %235 ]
  %223 = load i64, ptr %218, align 8, !tbaa !99
  %224 = shl nuw i64 1, %220
  %225 = and i64 %223, %224
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %219
  %228 = trunc i64 %220 to i8
  %229 = add nsw i32 %222, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.stack_def, ptr %217, i64 0, i32 2, i64 %230
  store i8 %228, ptr %231, align 1, !tbaa !49
  %232 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 38), align 16, !tbaa !38
  %233 = load ptr, ptr @not_a_num, align 8, !tbaa !38
  %234 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %232, ptr noundef %233) #21
  call void @insert_insn_on_edge(ptr noundef %234, ptr noundef %212) #21
  br label %235

235:                                              ; preds = %227, %219
  %236 = phi i32 [ %229, %227 ], [ %222, %219 ]
  %237 = phi i32 [ 1, %227 ], [ %221, %219 ]
  %238 = add nsw i64 %220, -1
  %239 = icmp ugt i64 %220, 8
  br i1 %239, label %219, label %240, !llvm.loop !105

240:                                              ; preds = %235
  store i32 %236, ptr %217, align 8, !tbaa !90
  %241 = load ptr, ptr %196, align 8, !tbaa !38
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %241, align 8, !tbaa !81
  br label %245

245:                                              ; preds = %243, %240
  %246 = phi i32 [ %244, %243 ], [ 0, %240 ]
  %247 = icmp ult i32 %198, %246
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %249

249:                                              ; preds = %248, %245
  %250 = add i32 %198, 1
  br label %197, !llvm.loop !106

251:                                              ; preds = %211
  %252 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %253 = getelementptr inbounds %struct.tree_decl_non_common, ptr %252, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !49
  %255 = call i32 @aggregate_value_p(ptr noundef %254, ptr noundef %252) #21
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %286

257:                                              ; preds = %251
  %258 = load ptr, ptr %253, align 8, !tbaa !49
  %259 = load i64, ptr %258, align 8
  %260 = and i64 %259, 65535
  %261 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %260, i64 11
  %262 = load i8, ptr %261, align 1, !tbaa !49
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %257
  %265 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %258, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !49
  %267 = icmp eq ptr %266, null
  br i1 %267, label %273, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !107
  %270 = getelementptr inbounds %struct.tree_common, ptr %258, i64 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !49
  %272 = call ptr %269(ptr noundef %271, ptr noundef %252, i8 noundef zeroext 1) #21
  br label %273

273:                                              ; preds = %268, %264, %257
  %274 = phi ptr [ %272, %268 ], [ null, %257 ], [ null, %264 ]
  %275 = icmp eq ptr %274, null
  br i1 %275, label %286, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %274, align 8
  %278 = and i32 %277, 65535
  %279 = icmp eq i32 %278, 37
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1
  %282 = load i32, ptr %281, align 8, !tbaa !49
  %283 = and i32 %282, -8
  %284 = icmp eq i32 %283, 8
  %285 = select i1 %284, ptr %274, ptr null
  br label %286

286:                                              ; preds = %280, %276, %273, %251
  %287 = phi ptr [ null, %251 ], [ null, %276 ], [ null, %273 ], [ %285, %280 ]
  %288 = icmp eq ptr %287, null
  br i1 %288, label %302, label %289

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !49
  %292 = load i32, ptr %287, align 8
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 255
  %295 = zext i32 %291 to i64
  %296 = zext nneg i32 %294 to i64
  %297 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %295, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !49
  %299 = zext i8 %298 to i32
  %300 = add i32 %291, -1
  %301 = add i32 %300, %299
  br label %302

302:                                              ; preds = %289, %286
  %303 = phi i32 [ %301, %289 ], [ -1, %286 ]
  %304 = phi i32 [ %291, %289 ], [ -1, %286 ]
  %305 = load ptr, ptr @cfun, align 8, !tbaa !38
  %306 = getelementptr inbounds %struct.function, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !72
  %308 = getelementptr inbounds %struct.control_flow_graph, ptr %307, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !78
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !80
  %312 = icmp eq i32 %304, -1
  br i1 %312, label %313, label %314

313:                                              ; preds = %302
  store i32 -1, ptr %311, align 8, !tbaa !119
  br label %333

314:                                              ; preds = %302
  %315 = sub nsw i32 %303, %304
  store i32 %315, ptr %311, align 8, !tbaa !119
  %316 = icmp sgt i32 %304, %303
  br i1 %316, label %333, label %317

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.stack_def, ptr %311, i64 0, i32 1
  %319 = sext i32 %304 to i64
  %320 = sext i32 %303 to i64
  %321 = add i32 %303, 1
  br label %322

322:                                              ; preds = %317, %322
  %323 = phi i64 [ %319, %317 ], [ %330, %322 ]
  %324 = trunc i64 %323 to i8
  %325 = sub nsw i64 %320, %323
  %326 = getelementptr inbounds %struct.stack_def, ptr %311, i64 0, i32 2, i64 %325
  store i8 %324, ptr %326, align 1, !tbaa !49
  %327 = shl nuw i64 1, %323
  %328 = load i64, ptr %318, align 8, !tbaa !120
  %329 = or i64 %328, %327
  store i64 %329, ptr %318, align 8, !tbaa !120
  %330 = add nsw i64 %323, 1
  %331 = trunc i64 %330 to i32
  %332 = icmp eq i32 %321, %331
  br i1 %332, label %333, label %322, !llvm.loop !121

333:                                              ; preds = %322, %314, %313
  %334 = load ptr, ptr @cfun, align 8, !tbaa !38
  %335 = getelementptr inbounds %struct.function, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !72
  %337 = getelementptr inbounds %struct.control_flow_graph, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !78
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %338, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !80
  %341 = getelementptr inbounds %struct.block_info_def, ptr %340, i64 0, i32 3
  store i32 1, ptr %341, align 8, !tbaa !122
  %342 = load ptr, ptr %336, align 8, !tbaa !74
  %343 = getelementptr inbounds %struct.basic_block_def, ptr %342, i64 0, i32 1
  br label %344

344:                                              ; preds = %370, %333
  %345 = phi i32 [ 0, %333 ], [ %371, %370 ]
  %346 = load ptr, ptr %343, align 8, !tbaa !38
  %347 = icmp eq ptr %346, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %344
  %349 = load i32, ptr %346, align 8, !tbaa !81
  br label %350

350:                                              ; preds = %348, %344
  %351 = phi i32 [ %349, %348 ], [ 0, %344 ]
  %352 = icmp eq i32 %351, %345
  br i1 %352, label %357, label %353

353:                                              ; preds = %350
  %354 = zext i32 %345 to i64
  %355 = getelementptr inbounds %struct.VEC_edge_base, ptr %346, i64 0, i32 2, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !38
  br label %357

357:                                              ; preds = %353, %350
  %358 = phi ptr [ %356, %353 ], [ null, %350 ]
  br i1 %352, label %372, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.edge_def, ptr %358, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !104
  call fastcc void @convert_regs_2(ptr noundef %361)
  %362 = load ptr, ptr %343, align 8, !tbaa !38
  %363 = icmp eq ptr %362, null
  br i1 %363, label %366, label %364

364:                                              ; preds = %359
  %365 = load i32, ptr %362, align 8, !tbaa !81
  br label %366

366:                                              ; preds = %364, %359
  %367 = phi i32 [ %365, %364 ], [ 0, %359 ]
  %368 = icmp ult i32 %345, %367
  br i1 %368, label %370, label %369

369:                                              ; preds = %366
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %370

370:                                              ; preds = %369, %366
  %371 = add i32 %345, 1
  br label %344, !llvm.loop !123

372:                                              ; preds = %357
  %373 = load ptr, ptr @cfun, align 8, !tbaa !38
  %374 = getelementptr inbounds %struct.function, ptr %373, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !72
  %376 = load ptr, ptr %375, align 8, !tbaa !74
  %377 = getelementptr inbounds %struct.basic_block_def, ptr %376, i64 0, i32 6
  %378 = load ptr, ptr %377, align 8, !tbaa !76
  %379 = getelementptr inbounds %struct.control_flow_graph, ptr %375, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !78
  %381 = icmp eq ptr %378, %380
  br i1 %381, label %399, label %382

382:                                              ; preds = %372, %390
  %383 = phi ptr [ %392, %390 ], [ %378, %372 ]
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !80
  %386 = getelementptr inbounds %struct.block_info_def, ptr %385, i64 0, i32 3
  %387 = load i32, ptr %386, align 8, !tbaa !122
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %382
  call fastcc void @convert_regs_2(ptr noundef %383)
  br label %390

390:                                              ; preds = %389, %382
  %391 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 6
  %392 = load ptr, ptr %391, align 8, !tbaa !76
  %393 = load ptr, ptr @cfun, align 8, !tbaa !38
  %394 = getelementptr inbounds %struct.function, ptr %393, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !72
  %396 = getelementptr inbounds %struct.control_flow_graph, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !78
  %398 = icmp eq ptr %392, %397
  br i1 %398, label %399, label %382, !llvm.loop !124

399:                                              ; preds = %390, %372
  %400 = phi ptr [ %375, %372 ], [ %395, %390 ]
  store i1 false, ptr @starting_stack_p, align 1
  %401 = load ptr, ptr %400, align 8, !tbaa !74
  %402 = getelementptr inbounds %struct.basic_block_def, ptr %401, i64 0, i32 6
  %403 = load ptr, ptr %402, align 8, !tbaa !76
  %404 = load ptr, ptr @cfun, align 8, !tbaa !38
  %405 = getelementptr inbounds %struct.function, ptr %404, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !72
  %407 = getelementptr inbounds %struct.control_flow_graph, ptr %406, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !78
  %409 = icmp eq ptr %403, %408
  br i1 %409, label %557, label %410

410:                                              ; preds = %399, %545
  %411 = phi ptr [ %551, %545 ], [ %406, %399 ]
  %412 = phi ptr [ %548, %545 ], [ %403, %399 ]
  %413 = phi i8 [ %546, %545 ], [ 0, %399 ]
  %414 = load ptr, ptr %411, align 8, !tbaa !74
  %415 = icmp eq ptr %412, %414
  br i1 %415, label %545, label %416

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.basic_block_def, ptr %412, i64 0, i32 1
  br label %418

418:                                              ; preds = %543, %416
  %419 = phi i32 [ 0, %416 ], [ %544, %543 ]
  %420 = phi i8 [ %413, %416 ], [ %534, %543 ]
  %421 = load ptr, ptr %417, align 8, !tbaa !38
  %422 = icmp eq ptr %421, null
  br i1 %422, label %425, label %423

423:                                              ; preds = %418
  %424 = load i32, ptr %421, align 8, !tbaa !81
  br label %425

425:                                              ; preds = %423, %418
  %426 = phi i32 [ %424, %423 ], [ 0, %418 ]
  %427 = icmp eq i32 %426, %419
  br i1 %427, label %432, label %428

428:                                              ; preds = %425
  %429 = zext i32 %419 to i64
  %430 = getelementptr inbounds %struct.VEC_edge_base, ptr %421, i64 0, i32 2, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !38
  br label %432

432:                                              ; preds = %428, %425
  %433 = phi ptr [ %431, %428 ], [ null, %425 ]
  br i1 %427, label %545, label %434

434:                                              ; preds = %432
  %435 = load ptr, ptr %433, align 8, !tbaa !85
  %436 = getelementptr inbounds %struct.edge_def, ptr %433, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !104
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %437, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !80
  %440 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !80
  %442 = getelementptr inbounds %struct.block_info_def, ptr %441, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %443 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %444 = icmp eq ptr %443, null
  br i1 %444, label %451, label %445

445:                                              ; preds = %434
  %446 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 9
  %447 = load i32, ptr %446, align 8, !tbaa !91
  %448 = getelementptr inbounds %struct.basic_block_def, ptr %437, i64 0, i32 9
  %449 = load i32, ptr %448, align 8, !tbaa !91
  %450 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %443, ptr noundef nonnull @.str.22, i32 noundef %447, i32 noundef %449)
  br label %451

451:                                              ; preds = %445, %434
  %452 = load i32, ptr %439, align 8, !tbaa !119
  %453 = icmp eq i32 %452, -2
  br i1 %453, label %454, label %455

454:                                              ; preds = %451
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2741, ptr noundef nonnull @.str.4) #21
  br label %455

455:                                              ; preds = %454, %451
  %456 = load i32, ptr %439, align 8, !tbaa !119
  %457 = load i32, ptr %442, align 8, !tbaa !119
  %458 = icmp eq i32 %456, %457
  br i1 %458, label %459, label %483

459:                                              ; preds = %455
  %460 = icmp sgt i32 %456, -1
  br i1 %460, label %461, label %475

461:                                              ; preds = %459
  %462 = zext nneg i32 %456 to i64
  br label %463

463:                                              ; preds = %461, %470
  %464 = phi i64 [ %462, %461 ], [ %471, %470 ]
  %465 = getelementptr inbounds %struct.stack_def, ptr %439, i64 0, i32 2, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !49
  %467 = getelementptr inbounds %struct.block_info_def, ptr %441, i64 0, i32 1, i32 2, i64 %464
  %468 = load i8, ptr %467, align 1, !tbaa !49
  %469 = icmp eq i8 %466, %468
  br i1 %469, label %470, label %473

470:                                              ; preds = %463
  %471 = add nsw i64 %464, -1
  %472 = icmp sgt i64 %464, 0
  br i1 %472, label %463, label %475, !llvm.loop !125

473:                                              ; preds = %463
  %474 = trunc i64 %464 to i32
  br label %475

475:                                              ; preds = %473, %470, %459
  %476 = phi i32 [ %456, %459 ], [ %474, %473 ], [ -1, %470 ]
  %477 = icmp eq i32 %476, -1
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %480 = icmp eq ptr %479, null
  br i1 %480, label %532, label %481

481:                                              ; preds = %478
  %482 = call i64 @fwrite(ptr nonnull @.str.23, i64 18, i64 1, ptr nonnull %479)
  br label %532

483:                                              ; preds = %475, %455
  %484 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %485 = icmp eq ptr %484, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %483
  %487 = call i64 @fwrite(ptr nonnull @.str.24, i64 20, i64 1, ptr nonnull %484)
  %488 = load ptr, ptr @dump_file, align 8, !tbaa !38
  call fastcc void @print_stack(ptr noundef %488, ptr noundef nonnull %439)
  br label %489

489:                                              ; preds = %486, %483
  %490 = getelementptr inbounds %struct.edge_def, ptr %433, i64 0, i32 7
  %491 = load i32, ptr %490, align 8, !tbaa !83
  %492 = and i32 %491, 4
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %502, label %494

494:                                              ; preds = %489
  %495 = load i32, ptr %442, align 8, !tbaa !119
  %496 = icmp ult i32 %495, 2
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2772, ptr noundef nonnull @.str.4) #21
  br label %498

498:                                              ; preds = %497, %494
  %499 = load i32, ptr %439, align 8, !tbaa !119
  %500 = icmp eq i32 %499, -1
  br i1 %500, label %532, label %501

501:                                              ; preds = %498
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2773, ptr noundef nonnull @.str.4) #21
  br label %532

502:                                              ; preds = %489
  %503 = and i32 %491, 8
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %509, label %505

505:                                              ; preds = %502
  %506 = load i32, ptr %439, align 8, !tbaa !119
  %507 = icmp eq i32 %506, -1
  br i1 %507, label %532, label %508

508:                                              ; preds = %505
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2782, ptr noundef nonnull @.str.4) #21
  br label %532

509:                                              ; preds = %502
  %510 = and i32 %491, 2
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %509
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2789, ptr noundef nonnull @.str.4) #21
  br label %513

513:                                              ; preds = %512, %509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %442, i64 24, i1 false), !tbaa.struct !126
  %514 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !128
  %516 = icmp eq ptr %515, null
  br i1 %516, label %529, label %517

517:                                              ; preds = %513
  %518 = load i32, ptr %515, align 8, !tbaa !81
  %519 = icmp eq i32 %518, 1
  br i1 %519, label %520, label %529

520:                                              ; preds = %517
  store ptr %435, ptr @current_block, align 8, !tbaa !38
  %521 = getelementptr inbounds %struct.basic_block_def, ptr %435, i64 0, i32 7
  %522 = load ptr, ptr %521, align 8, !tbaa !49
  %523 = getelementptr inbounds %struct.rtl_bb_info, ptr %522, i64 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !129
  %525 = load i32, ptr %524, align 8
  %526 = and i32 %525, 65535
  %527 = icmp eq i32 %526, 9
  %528 = zext i1 %527 to i32
  call fastcc void @change_stack(ptr noundef nonnull %524, ptr noundef nonnull %1, ptr noundef nonnull %439, i32 noundef %528)
  br label %532

529:                                              ; preds = %517, %513
  store ptr null, ptr @current_block, align 8, !tbaa !38
  call void @start_sequence() #21
  %530 = call ptr @emit_note(i32 noundef 0) #21
  call fastcc void @change_stack(ptr noundef %530, ptr noundef nonnull %1, ptr noundef nonnull %439, i32 noundef 1)
  %531 = call ptr @get_insns() #21
  call void @end_sequence() #21
  call void @insert_insn_on_edge(ptr noundef %531, ptr noundef nonnull %433) #21
  br label %532

532:                                              ; preds = %529, %520, %508, %505, %501, %498, %481, %478
  %533 = phi i8 [ 0, %520 ], [ 1, %529 ], [ 0, %481 ], [ 0, %478 ], [ 0, %498 ], [ 0, %501 ], [ 0, %505 ], [ 0, %508 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  %534 = or i8 %533, %420
  %535 = load ptr, ptr %417, align 8, !tbaa !38
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537

537:                                              ; preds = %532
  %538 = load i32, ptr %535, align 8, !tbaa !81
  br label %539

539:                                              ; preds = %537, %532
  %540 = phi i32 [ %538, %537 ], [ 0, %532 ]
  %541 = icmp ult i32 %419, %540
  br i1 %541, label %543, label %542

542:                                              ; preds = %539
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %543

543:                                              ; preds = %542, %539
  %544 = add i32 %419, 1
  br label %418, !llvm.loop !131

545:                                              ; preds = %432, %410
  %546 = phi i8 [ %413, %410 ], [ %420, %432 ]
  %547 = getelementptr inbounds %struct.basic_block_def, ptr %412, i64 0, i32 6
  %548 = load ptr, ptr %547, align 8, !tbaa !76
  %549 = load ptr, ptr @cfun, align 8, !tbaa !38
  %550 = getelementptr inbounds %struct.function, ptr %549, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !72
  %552 = getelementptr inbounds %struct.control_flow_graph, ptr %551, i64 0, i32 1
  %553 = load ptr, ptr %552, align 8, !tbaa !78
  %554 = icmp eq ptr %548, %553
  br i1 %554, label %555, label %410, !llvm.loop !132

555:                                              ; preds = %545
  %556 = zext nneg i8 %546 to i32
  br label %557

557:                                              ; preds = %555, %399
  %558 = phi i32 [ 0, %399 ], [ %556, %555 ]
  %559 = or i32 %199, %558
  call void @clear_aux_for_blocks() #21
  call void @fixup_abnormal_edges() #21
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %562, label %561

561:                                              ; preds = %557
  call void @commit_edge_insertions() #21
  br label %562

562:                                              ; preds = %561, %557
  %563 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %564 = icmp eq ptr %563, null
  br i1 %564, label %567, label %565

565:                                              ; preds = %562
  %566 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %563)
  br label %567

567:                                              ; preds = %565, %562
  call void @free_aux_for_blocks() #21
  br label %568

568:                                              ; preds = %14, %567
  store i32 1, ptr @regstack_completed, align 4, !tbaa !53
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_nan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #3

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_max_uid() local_unnamed_addr #3

declare void @free_aux_for_blocks() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @convert_regs_2(ptr noundef %0) unnamed_addr #9 !prof !37 {
  %2 = alloca %struct.stack_def, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !133
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #21
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %0, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  br label %14

14:                                               ; preds = %423, %1
  %15 = phi ptr [ %11, %1 ], [ %21, %423 ]
  %16 = getelementptr inbounds ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  br label %19

19:                                               ; preds = %61, %14
  %20 = phi i32 [ 0, %14 ], [ %62, %61 ]
  %21 = phi ptr [ %16, %14 ], [ %52, %61 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !38
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %22, align 8, !tbaa !81
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ]
  %28 = icmp eq i32 %27, %20
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = zext i32 %20 to i64
  %31 = getelementptr inbounds %struct.VEC_edge_base, ptr %22, i64 0, i32 2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  br label %33

33:                                               ; preds = %26, %29
  %34 = phi ptr [ %32, %29 ], [ null, %26 ]
  br i1 %28, label %63, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !83
  %38 = and i32 %37, 32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !104
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !80
  %45 = getelementptr inbounds %struct.block_info_def, ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !86
  %47 = add nsw i32 %46, -1
  store i32 %47, ptr %45, align 4, !tbaa !86
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %42, ptr %21, align 8, !tbaa !38
  br label %51

51:                                               ; preds = %40, %49, %35
  %52 = phi ptr [ %21, %35 ], [ %21, %40 ], [ %50, %49 ]
  %53 = load ptr, ptr %18, align 8, !tbaa !38
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %53, align 8, !tbaa !81
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ %56, %55 ], [ 0, %51 ]
  %59 = icmp ult i32 %20, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %61

61:                                               ; preds = %57, %60
  %62 = add i32 %20, 1
  br label %19, !llvm.loop !134

63:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !80
  store i1 false, ptr @any_malformed_asm, align 1
  %66 = load i32, ptr %65, align 8, !tbaa !90
  %67 = icmp eq i32 %66, -2
  br i1 %67, label %68, label %263

68:                                               ; preds = %63
  %69 = icmp eq ptr %17, null
  br label %70

70:                                               ; preds = %68, %188
  %71 = phi i32 [ %189, %188 ], [ 0, %68 ]
  %72 = phi ptr [ %181, %188 ], [ null, %68 ]
  br i1 %69, label %73, label %74

73:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.4) #21
  br label %74

74:                                               ; preds = %73, %70
  %75 = load ptr, ptr %17, align 8, !tbaa !38
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %75, align 8, !tbaa !81
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %78, %77 ], [ 0, %74 ]
  %81 = icmp eq i32 %80, %71
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = zext i32 %71 to i64
  %84 = getelementptr inbounds %struct.VEC_edge_base, ptr %75, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !38
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi ptr [ %85, %82 ], [ null, %79 ]
  br i1 %81, label %190, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %87, align 8, !tbaa !85
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !80
  %92 = getelementptr inbounds %struct.block_info_def, ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !122
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %180, label %95

95:                                               ; preds = %88
  %96 = icmp eq ptr %72, null
  br i1 %96, label %180, label %97

97:                                               ; preds = %95
  %98 = load ptr, ptr %72, align 8, !tbaa !85
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 11
  %100 = load i32, ptr %99, align 8, !tbaa !135
  %101 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 8
  %102 = load i32, ptr %101, align 4, !tbaa !136
  %103 = mul nsw i32 %102, %100
  %104 = add nsw i32 %103, 5000
  %105 = sdiv i32 %104, 10000
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 11
  %107 = load i32, ptr %106, align 8, !tbaa !135
  %108 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 8
  %109 = load i32, ptr %108, align 4, !tbaa !136
  %110 = mul nsw i32 %109, %107
  %111 = add nsw i32 %110, 5000
  %112 = sdiv i32 %111, 10000
  %113 = icmp sgt i32 %105, %112
  br i1 %113, label %180, label %114

114:                                              ; preds = %97
  %115 = icmp slt i32 %105, %112
  br i1 %115, label %180, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 9
  %118 = load i64, ptr %117, align 8, !tbaa !137
  %119 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 9
  %120 = load i64, ptr %119, align 8, !tbaa !137
  %121 = icmp sgt i64 %118, %120
  br i1 %121, label %180, label %122

122:                                              ; preds = %116
  %123 = icmp slt i64 %118, %120
  br i1 %123, label %180, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !128
  %127 = icmp eq ptr %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %126, align 8, !tbaa !81
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !104
  %134 = load ptr, ptr %133, align 8, !tbaa !138
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %134, align 8, !tbaa !81
  %138 = icmp ugt i32 %137, 1
  %139 = zext i1 %138 to i32
  br label %140

140:                                              ; preds = %136, %131, %128, %124
  %141 = phi i32 [ 0, %128 ], [ %139, %136 ], [ 0, %131 ], [ 0, %124 ]
  %142 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !128
  %144 = icmp eq ptr %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %140
  %146 = load i32, ptr %143, align 8, !tbaa !81
  %147 = icmp ugt i32 %146, 1
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !104
  %151 = load ptr, ptr %150, align 8, !tbaa !138
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i32, ptr %151, align 8, !tbaa !81
  %155 = icmp ugt i32 %154, 1
  %156 = zext i1 %155 to i32
  br label %157

157:                                              ; preds = %153, %148, %145, %140
  %158 = phi i32 [ 0, %145 ], [ %156, %153 ], [ 0, %148 ], [ 0, %140 ]
  %159 = icmp eq i32 %141, %158
  br i1 %159, label %173, label %160

160:                                              ; preds = %157
  br i1 %127, label %172, label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %126, align 8, !tbaa !81
  %163 = icmp ugt i32 %162, 1
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !104
  %167 = load ptr, ptr %166, align 8, !tbaa !138
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr %167, align 8, !tbaa !81
  %171 = icmp ugt i32 %170, 1
  br i1 %171, label %180, label %172

172:                                              ; preds = %169, %164, %161, %160
  br label %180

173:                                              ; preds = %157
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %98, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !91
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 9
  %177 = load i32, ptr %176, align 8, !tbaa !91
  %178 = icmp slt i32 %175, %177
  %179 = select i1 %178, ptr %72, ptr %87
  br label %180

180:                                              ; preds = %173, %172, %169, %122, %116, %114, %97, %95, %88
  %181 = phi ptr [ %72, %88 ], [ %179, %173 ], [ %87, %95 ], [ %72, %97 ], [ %87, %114 ], [ %72, %116 ], [ %87, %122 ], [ %87, %172 ], [ %72, %169 ]
  br i1 %76, label %184, label %182

182:                                              ; preds = %180
  %183 = load i32, ptr %75, align 8, !tbaa !81
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %183, %182 ], [ 0, %180 ]
  %186 = icmp ult i32 %71, %185
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #21
  br label %188

188:                                              ; preds = %187, %184
  %189 = add i32 %71, 1
  br label %70, !llvm.loop !139

190:                                              ; preds = %86
  %191 = icmp eq ptr %72, null
  br i1 %191, label %246, label %192

192:                                              ; preds = %190
  %193 = load ptr, ptr %72, align 8, !tbaa !85
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !80
  %196 = getelementptr inbounds %struct.block_info_def, ptr %195, i64 0, i32 1
  %197 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !104
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !80
  store i32 -1, ptr %200, align 8, !tbaa !119
  %201 = load i32, ptr %196, align 8, !tbaa !119
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %192
  %204 = getelementptr inbounds %struct.stack_def, ptr %200, i64 0, i32 1
  br label %208

205:                                              ; preds = %222, %192
  %206 = getelementptr inbounds %struct.stack_def, ptr %200, i64 0, i32 1
  %207 = getelementptr inbounds %struct.block_info_def, ptr %195, i64 0, i32 1, i32 1
  br label %227

208:                                              ; preds = %203, %222
  %209 = phi i64 [ 0, %203 ], [ %223, %222 ]
  %210 = load i64, ptr %204, align 8, !tbaa !120
  %211 = getelementptr inbounds %struct.block_info_def, ptr %195, i64 0, i32 1, i32 2, i64 %209
  %212 = load i8, ptr %211, align 1, !tbaa !49
  %213 = zext nneg i8 %212 to i64
  %214 = shl nuw i64 1, %213
  %215 = and i64 %214, %210
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %208
  %218 = load i32, ptr %200, align 8, !tbaa !119
  %219 = add nsw i32 %218, 1
  store i32 %219, ptr %200, align 8, !tbaa !119
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.stack_def, ptr %200, i64 0, i32 2, i64 %220
  store i8 %212, ptr %221, align 1, !tbaa !49
  br label %222

222:                                              ; preds = %217, %208
  %223 = add nuw nsw i64 %209, 1
  %224 = load i32, ptr %196, align 8, !tbaa !119
  %225 = sext i32 %224 to i64
  %226 = icmp slt i64 %209, %225
  br i1 %226, label %208, label %205, !llvm.loop !140

227:                                              ; preds = %205, %243
  %228 = phi i64 [ 8, %205 ], [ %244, %243 ]
  %229 = load i64, ptr %206, align 8, !tbaa !120
  %230 = shl nuw nsw i64 1, %228
  %231 = and i64 %229, %230
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %227
  %234 = load i64, ptr %207, align 8, !tbaa !120
  %235 = and i64 %234, %230
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = trunc i64 %228 to i8
  %239 = load i32, ptr %200, align 8, !tbaa !119
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %200, align 8, !tbaa !119
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.stack_def, ptr %200, i64 0, i32 2, i64 %241
  store i8 %238, ptr %242, align 1, !tbaa !49
  br label %243

243:                                              ; preds = %237, %233, %227
  %244 = add nuw nsw i64 %228, 1
  %245 = icmp eq i64 %244, 16
  br i1 %245, label %263, label %227, !llvm.loop !141

246:                                              ; preds = %190
  store i32 -1, ptr %65, align 8, !tbaa !90
  %247 = getelementptr inbounds %struct.stack_def, ptr %65, i64 0, i32 1
  br label %248

248:                                              ; preds = %246, %260
  %249 = phi i64 [ 15, %246 ], [ %261, %260 ]
  %250 = load i64, ptr %247, align 8, !tbaa !99
  %251 = shl nuw i64 1, %249
  %252 = and i64 %250, %251
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = trunc i64 %249 to i8
  %256 = load i32, ptr %65, align 8, !tbaa !90
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %65, align 8, !tbaa !90
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.stack_def, ptr %65, i64 0, i32 2, i64 %258
  store i8 %255, ptr %259, align 1, !tbaa !49
  br label %260

260:                                              ; preds = %254, %248
  %261 = add nsw i64 %249, -1
  %262 = icmp ugt i64 %249, 8
  br i1 %262, label %248, label %263, !llvm.loop !142

263:                                              ; preds = %243, %260, %63
  %264 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %265 = icmp eq ptr %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %268 = load i32, ptr %267, align 8, !tbaa !91
  %269 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %264, ptr noundef nonnull @.str.5, i32 noundef %268)
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !38
  call fastcc void @print_stack(ptr noundef %270, ptr noundef nonnull %65)
  br label %271

271:                                              ; preds = %266, %263
  store ptr %17, ptr @current_block, align 8, !tbaa !38
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %273 = load ptr, ptr %272, align 8, !tbaa !49
  %274 = load ptr, ptr %273, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %65, i64 24, i1 false), !tbaa.struct !126
  store i1 true, ptr @starting_stack_p, align 1
  br label %275

275:                                              ; preds = %320, %271
  %276 = phi i32 [ 0, %271 ], [ %321, %320 ]
  %277 = phi i8 [ 0, %271 ], [ %322, %320 ]
  %278 = phi ptr [ %274, %271 ], [ %289, %320 ]
  %279 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 0, i32 1
  %280 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 0, i32 1, i32 0, i32 0, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !49
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2937, ptr noundef nonnull @.str.4) #21
  br label %284

284:                                              ; preds = %283, %275
  %285 = load ptr, ptr %272, align 8, !tbaa !49
  %286 = getelementptr inbounds %struct.rtl_bb_info, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !129
  %288 = icmp eq ptr %278, %287
  %289 = select i1 %288, ptr null, ptr %281
  %290 = load i32, ptr %278, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 7
  br i1 %292, label %293, label %303

293:                                              ; preds = %284
  %294 = load i1, ptr @starting_stack_p, align 1
  br i1 %294, label %295, label %297

295:                                              ; preds = %293
  %296 = add nsw i32 %276, 1
  br label %320

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 1
  %299 = call i32 @for_each_rtx(ptr noundef nonnull %298, ptr noundef nonnull @subst_stack_regs_in_debug_insn, ptr noundef nonnull %2) #21
  %300 = call ptr @find_reg_note(ptr noundef nonnull %278, i32 noundef 1, ptr noundef null) #21
  %301 = icmp eq ptr %300, null
  br i1 %301, label %320, label %302

302:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2957, ptr noundef nonnull @.str.4) #21
  br label %320

303:                                              ; preds = %284
  %304 = call i32 @stack_regs_mentioned(ptr noundef nonnull %278), !range !144
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i32, ptr %278, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 10
  br i1 %309, label %310, label %320

310:                                              ; preds = %306, %303
  %311 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %312 = icmp eq ptr %311, null
  br i1 %312, label %317, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %279, align 8, !tbaa !49
  %315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %311, ptr noundef nonnull @.str.7, i32 noundef %314)
  %316 = load ptr, ptr @dump_file, align 8, !tbaa !38
  call fastcc void @print_stack(ptr noundef %316, ptr noundef nonnull %2)
  br label %317

317:                                              ; preds = %313, %310
  %318 = call fastcc zeroext i8 @subst_stack_regs(ptr noundef nonnull %278, ptr noundef nonnull %2)
  %319 = or i8 %318, %277
  store i1 false, ptr @starting_stack_p, align 1
  br label %320

320:                                              ; preds = %317, %306, %302, %297, %295
  %321 = phi i32 [ %296, %295 ], [ %276, %302 ], [ %276, %297 ], [ %276, %317 ], [ %276, %306 ]
  %322 = phi i8 [ %277, %295 ], [ %277, %302 ], [ %277, %297 ], [ %319, %317 ], [ %277, %306 ]
  %323 = icmp eq ptr %289, null
  br i1 %323, label %324, label %275, !llvm.loop !145

324:                                              ; preds = %320
  %325 = icmp eq i32 %321, 0
  br i1 %325, label %343, label %326

326:                                              ; preds = %324
  %327 = load ptr, ptr %272, align 8, !tbaa !49
  br label %328

328:                                              ; preds = %326, %339
  %329 = phi ptr [ %327, %326 ], [ %341, %339 ]
  %330 = phi i32 [ %321, %326 ], [ %340, %339 ]
  %331 = load ptr, ptr %329, align 8, !tbaa !49
  %332 = load i32, ptr %331, align 8
  %333 = and i32 %332, 65535
  %334 = icmp eq i32 %333, 7
  br i1 %334, label %335, label %339

335:                                              ; preds = %328
  %336 = add nsw i32 %330, -1
  %337 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 1
  %338 = call i32 @for_each_rtx(ptr noundef nonnull %337, ptr noundef nonnull @subst_stack_regs_in_debug_insn, ptr noundef nonnull %65) #21
  br label %339

339:                                              ; preds = %335, %328
  %340 = phi i32 [ %336, %335 ], [ %330, %328 ]
  %341 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 2
  %342 = icmp eq i32 %340, 0
  br i1 %342, label %343, label %328, !llvm.loop !146

343:                                              ; preds = %339, %324
  %344 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %345 = icmp eq ptr %344, null
  br i1 %345, label %366, label %346

346:                                              ; preds = %343
  %347 = call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr nonnull %344)
  %348 = getelementptr inbounds %struct.block_info_def, ptr %65, i64 0, i32 2
  br label %349

349:                                              ; preds = %346, %359
  %350 = phi i64 [ 8, %346 ], [ %360, %359 ]
  %351 = load i64, ptr %348, align 8, !tbaa !97
  %352 = shl nuw nsw i64 1, %350
  %353 = and i64 %351, %352
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %349
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %357 = trunc i64 %350 to i32
  %358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %356, ptr noundef nonnull @.str.9, i32 noundef %357)
  br label %359

359:                                              ; preds = %355, %349
  %360 = add nuw nsw i64 %350, 1
  %361 = icmp eq i64 %360, 16
  br i1 %361, label %362, label %349, !llvm.loop !147

362:                                              ; preds = %359
  %363 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %364 = call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %363)
  %365 = load ptr, ptr @dump_file, align 8, !tbaa !38
  call fastcc void @print_stack(ptr noundef %365, ptr noundef nonnull %2)
  br label %366

366:                                              ; preds = %362, %343
  %367 = load ptr, ptr %272, align 8, !tbaa !49
  %368 = getelementptr inbounds %struct.rtl_bb_info, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !129
  %370 = load i32, ptr %369, align 8
  %371 = and i32 %370, 65535
  %372 = icmp eq i32 %371, 9
  br i1 %372, label %373, label %376

373:                                              ; preds = %366
  %374 = getelementptr inbounds %struct.rtx_def, ptr %369, i64 0, i32 1, i32 0, i32 0, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !49
  br label %376

376:                                              ; preds = %373, %366
  %377 = phi ptr [ %375, %373 ], [ %369, %366 ]
  %378 = getelementptr inbounds %struct.block_info_def, ptr %65, i64 0, i32 2
  br label %379

379:                                              ; preds = %376, %406
  %380 = phi i64 [ 8, %376 ], [ %409, %406 ]
  %381 = phi ptr [ %377, %376 ], [ %408, %406 ]
  %382 = phi i8 [ %322, %376 ], [ %407, %406 ]
  %383 = load i64, ptr %378, align 8, !tbaa !97
  %384 = shl nuw nsw i64 1, %380
  %385 = and i64 %383, %384
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %406, label %387

387:                                              ; preds = %379
  %388 = load i64, ptr %12, align 8, !tbaa !120
  %389 = and i64 %388, %384
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %406

391:                                              ; preds = %387
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %393 = icmp eq ptr %392, null
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = trunc i64 %380 to i32
  %396 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %392, ptr noundef nonnull @.str.11, i32 noundef %395)
  br label %397

397:                                              ; preds = %394, %391
  %398 = add nsw i64 %380, -8
  %399 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %398, i64 38
  %400 = load ptr, ptr %399, align 8, !tbaa !38
  %401 = load ptr, ptr @not_a_num, align 8, !tbaa !38
  %402 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %400, ptr noundef %401) #21
  %403 = call ptr @emit_insn_after(ptr noundef %402, ptr noundef %381) #21
  %404 = call fastcc zeroext i8 @subst_stack_regs(ptr noundef %403, ptr noundef nonnull %2)
  %405 = or i8 %404, %382
  br label %406

406:                                              ; preds = %397, %387, %379
  %407 = phi i8 [ %382, %387 ], [ %405, %397 ], [ %382, %379 ]
  %408 = phi ptr [ %381, %387 ], [ %403, %397 ], [ %381, %379 ]
  %409 = add nuw nsw i64 %380, 1
  %410 = icmp eq i64 %409, 16
  br i1 %410, label %411, label %379, !llvm.loop !148

411:                                              ; preds = %406
  %412 = icmp eq i8 %407, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %411
  %414 = call zeroext i8 @purge_dead_edges(ptr noundef %17) #21
  br label %415

415:                                              ; preds = %413, %411
  %416 = load i64, ptr %13, align 8, !tbaa !120
  %417 = getelementptr inbounds %struct.block_info_def, ptr %65, i64 0, i32 2
  %418 = load i64, ptr %417, align 8, !tbaa !97
  %419 = icmp eq i64 %416, %418
  %420 = load i1, ptr @any_malformed_asm, align 1
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %423, label %422

422:                                              ; preds = %415
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3052, ptr noundef nonnull @.str.4) #21
  br label %423

423:                                              ; preds = %415, %422
  %424 = getelementptr inbounds %struct.block_info_def, ptr %65, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %424, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !126
  %425 = getelementptr inbounds %struct.block_info_def, ptr %65, i64 0, i32 3
  store i32 1, ptr %425, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  %426 = icmp eq ptr %21, %10
  br i1 %426, label %427, label %14, !llvm.loop !149

427:                                              ; preds = %423
  call void @free(ptr noundef %10)
  ret void
}

declare void @clear_aux_for_blocks() local_unnamed_addr #3

declare void @fixup_abnormal_edges() local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_stack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !prof !37 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !119
  switch i32 %5, label %10 [
    i32 -2, label %6
    i32 -1, label %8
  ]

6:                                                ; preds = %4
  %7 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 14, i64 1, ptr nonnull %0)
  br label %26

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 6, i64 1, ptr nonnull %0)
  br label %26

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr nonnull %0)
  %12 = load i32, ptr %1, align 8, !tbaa !119
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !49
  %18 = zext i8 %17 to i32
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef %18)
  %20 = add nuw nsw i64 %15, 1
  %21 = load i32, ptr %1, align 8, !tbaa !119
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %15, %22
  br i1 %23, label %14, label %24, !llvm.loop !150

24:                                               ; preds = %14, %10
  %25 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 2, i64 1, ptr nonnull %0)
  br label %26

26:                                               ; preds = %8, %24, %2, %6
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @subst_stack_regs_in_debug_insn(ptr noundef %0, ptr nocapture noundef readonly %1) #9 !prof !37 {
  %3 = tail call fastcc ptr @get_true_reg(ptr noundef %0)
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = and i32 %10, -8
  %12 = icmp eq i32 %11, 8
  %13 = icmp eq ptr %3, %0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 8, !tbaa !38
  %17 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %16)
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1337, ptr noundef nonnull @.str.4) #21
  br label %20

20:                                               ; preds = %15, %19
  tail call fastcc void @replace_reg(ptr noundef nonnull %0, i32 noundef %17)
  br label %21

21:                                               ; preds = %2, %8, %20
  %22 = phi i32 [ -1, %20 ], [ 0, %8 ], [ 0, %2 ]
  ret i32 %22
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @subst_stack_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !37 {
  %3 = alloca %struct.stack_def, align 8
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8, !tbaa !119
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !120
  store i32 %8, ptr %3, align 8, !tbaa !119
  %16 = add nuw nsw i32 %8, 8
  %17 = zext nneg i32 %8 to i64
  br label %18

18:                                               ; preds = %12, %18
  %19 = phi i64 [ %17, %12 ], [ %24, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = sub i32 %16, %20
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %19
  store i8 %22, ptr %23, align 1, !tbaa !49
  %24 = add nsw i64 %19, -1
  %25 = icmp sgt i64 %19, 0
  br i1 %25, label %18, label %26, !llvm.loop !151

26:                                               ; preds = %18
  call fastcc void @change_stack(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 1)
  br label %27

27:                                               ; preds = %10, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  %28 = load i32, ptr %1, align 8, !tbaa !119
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !120
  %33 = zext nneg i32 %28 to i64
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %33, %30 ], [ %40, %34 ]
  %36 = phi i64 [ %32, %30 ], [ %39, %34 ]
  %37 = shl i64 256, %35
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = add nsw i64 %35, -1
  %41 = icmp sgt i64 %35, 0
  br i1 %41, label %34, label %42, !llvm.loop !152

42:                                               ; preds = %34
  store i64 %39, ptr %31, align 8, !tbaa !120
  store i32 -1, ptr %1, align 8, !tbaa !119
  br label %43

43:                                               ; preds = %27, %42, %7, %2
  %44 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %0), !range !144
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %102, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = tail call i32 @asm_noperands(ptr noundef %48) #21
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call fastcc void @subst_asm_stack_regs(ptr noundef nonnull %0, ptr noundef %1)
  br label %100

52:                                               ; preds = %46
  %53 = load ptr, ptr %47, align 8, !tbaa !49
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 15
  br i1 %56, label %57, label %98

57:                                               ; preds = %52
  %58 = load ptr, ptr %47, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = load i32, ptr %60, align 8, !tbaa !61
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %57, %89
  %64 = phi i64 [ %91, %89 ], [ 0, %57 ]
  %65 = phi ptr [ %94, %89 ], [ %60, %57 ]
  %66 = phi i8 [ %90, %89 ], [ 0, %57 ]
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  %69 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %68, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 25
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %68) #21
  %77 = load ptr, ptr %47, align 8, !tbaa !49
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !49
  %80 = getelementptr inbounds %struct.rtvec_def, ptr %79, i64 0, i32 1, i64 %64
  store ptr %76, ptr %80, align 8, !tbaa !38
  br label %81

81:                                               ; preds = %75, %71
  %82 = load ptr, ptr %47, align 8, !tbaa !49
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = getelementptr inbounds %struct.rtvec_def, ptr %84, i64 0, i32 1, i64 %64
  %86 = load ptr, ptr %85, align 8, !tbaa !38
  %87 = tail call fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %86)
  %88 = or i8 %87, %66
  br label %89

89:                                               ; preds = %63, %81
  %90 = phi i8 [ %88, %81 ], [ %66, %63 ]
  %91 = add nuw nsw i64 %64, 1
  %92 = load ptr, ptr %47, align 8, !tbaa !49
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !49
  %95 = load i32, ptr %94, align 8, !tbaa !61
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %91, %96
  br i1 %97, label %63, label %100, !llvm.loop !153

98:                                               ; preds = %52
  %99 = tail call fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %53)
  br label %100

100:                                              ; preds = %89, %57, %98, %51
  %101 = phi i8 [ 0, %51 ], [ %99, %98 ], [ 0, %57 ], [ %90, %89 ]
  br i1 %50, label %102, label %152

102:                                              ; preds = %100, %43
  %103 = phi i8 [ 0, %43 ], [ %101, %100 ]
  %104 = load i32, ptr %0, align 8
  %105 = and i32 %104, 65535
  %106 = icmp ne i32 %105, 13
  %107 = and i32 %104, 134217728
  %108 = icmp eq i32 %107, 0
  %109 = and i1 %106, %108
  br i1 %109, label %110, label %152

110:                                              ; preds = %102
  %111 = icmp eq i32 %105, 10
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #21
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  store i32 -1, ptr %1, align 8, !tbaa !119
  %116 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  store i64 0, ptr %116, align 8, !tbaa !120
  br label %152

117:                                              ; preds = %112, %110
  %118 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !49
  %120 = icmp eq ptr %119, null
  br i1 %120, label %152, label %121

121:                                              ; preds = %117, %146
  %122 = phi ptr [ %150, %146 ], [ %119, %117 ]
  %123 = phi ptr [ %148, %146 ], [ %0, %117 ]
  %124 = phi ptr [ %147, %146 ], [ %118, %117 ]
  %125 = load i32, ptr %122, align 8
  %126 = and i32 %125, 16711680
  %127 = icmp eq i32 %126, 393216
  br i1 %127, label %128, label %144

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !49
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 37
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !49
  %137 = and i32 %136, -8
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !49
  store ptr %141, ptr %124, align 8, !tbaa !38
  %142 = load ptr, ptr %129, align 8, !tbaa !49
  %143 = tail call fastcc ptr @emit_pop_insn(ptr noundef %123, ptr noundef %1, ptr noundef %142, i32 noundef 0)
  br label %146

144:                                              ; preds = %134, %128, %121
  %145 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %146

146:                                              ; preds = %139, %144
  %147 = phi ptr [ %124, %139 ], [ %145, %144 ]
  %148 = phi ptr [ %143, %139 ], [ %123, %144 ]
  %149 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !49
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %121, !llvm.loop !154

152:                                              ; preds = %146, %117, %102, %100, %115
  %153 = phi i8 [ %103, %115 ], [ 0, %100 ], [ %103, %102 ], [ %103, %117 ], [ %103, %146 ]
  ret i8 %153
}

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_true_reg(ptr noundef %0) unnamed_addr #9 !prof !37 {
  br label %2

2:                                                ; preds = %54, %1
  %3 = phi ptr [ %0, %1 ], [ %57, %54 ]
  %4 = phi ptr [ undef, %1 ], [ %56, %54 ]
  %5 = load ptr, ptr %3, align 8, !tbaa !38
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %58 [
    i16 39, label %8
    i16 103, label %40
    i16 104, label %40
    i16 101, label %40
    i16 18, label %43
    i16 102, label %51
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = and i32 %16, -8
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = lshr i32 %11, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = lshr i32 %6, 16
  %25 = and i32 %24, 255
  %26 = tail call i32 @subreg_regno_offset(i32 noundef %16, i32 noundef %21, i32 noundef %23, i32 noundef %25) #21
  %27 = load i32, ptr %15, align 8, !tbaa !49
  %28 = add i32 %26, -8
  %29 = add i32 %28, %27
  %30 = zext i32 %29 to i64
  %31 = load i32, ptr %10, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %30, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  store ptr %36, ptr %3, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %8, %14, %19
  %38 = phi ptr [ %3, %19 ], [ %4, %14 ], [ %4, %8 ]
  %39 = phi i1 [ false, %19 ], [ true, %14 ], [ true, %8 ]
  br i1 %39, label %40, label %58

40:                                               ; preds = %2, %2, %37, %2
  %41 = phi ptr [ %4, %2 ], [ %38, %37 ], [ %4, %2 ], [ %4, %2 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !38
  br label %54

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load i32, ptr %44, align 8, !tbaa !49
  %46 = icmp eq i32 %45, 39
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %49, i64 0, i32 1
  br label %58

51:                                               ; preds = %2
  %52 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !53
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %40
  %55 = phi ptr [ %42, %40 ], [ %5, %51 ]
  %56 = phi ptr [ %41, %40 ], [ %4, %51 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  br label %2, !llvm.loop !155

58:                                               ; preds = %37, %2, %51, %43, %47
  %59 = phi ptr [ %50, %47 ], [ %3, %43 ], [ %3, %51 ], [ %3, %2 ], [ %38, %37 ]
  ret ptr %59
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_hard_regnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !37 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = and i32 %8, -8
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 731, ptr noundef nonnull @.str.4) #21
  br label %12

12:                                               ; preds = %6, %11
  %13 = load i32, ptr %0, align 8, !tbaa !119
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !49
  br label %18

18:                                               ; preds = %15, %25
  %19 = phi i32 [ %13, %15 ], [ %26, %25 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !49
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = add nsw i32 %19, -1
  %27 = icmp sgt i32 %19, 0
  br i1 %27, label %18, label %31, !llvm.loop !156

28:                                               ; preds = %18
  %29 = add nuw nsw i32 %13, 8
  %30 = sub i32 %29, %19
  br label %31

31:                                               ; preds = %25, %12, %28
  %32 = phi i32 [ %30, %28 ], [ -1, %12 ], [ -1, %25 ]
  ret i32 %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @replace_reg(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !37 {
  %3 = and i32 %1, -8
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 691, ptr noundef nonnull @.str.4) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = and i32 %13, -8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 692, ptr noundef nonnull @.str.4) #21
  br label %17

17:                                               ; preds = %11, %16
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !49
  switch i8 %24, label %25 [
    i8 8, label %26
    i8 9, label %26
    i8 11, label %26
  ]

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 695, ptr noundef nonnull @.str.4) #21
  br label %26

26:                                               ; preds = %17, %17, %17, %25
  %27 = add nsw i32 %1, -8
  %28 = sext i32 %27 to i64
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %28, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !38
  store ptr %35, ptr %0, align 8, !tbaa !38
  ret void
}

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @subst_asm_stack_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !37 {
  %3 = alloca %struct.stack_def, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %6 = tail call fastcc i32 @check_asm_stack_operands(ptr noundef %0), !range !144
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %469, label %8

8:                                                ; preds = %2
  tail call void @extract_insn(ptr noundef %0) #21
  %9 = tail call i32 @constrain_operands(i32 noundef 1) #21
  %10 = load i32, ptr @which_alternative, align 4, !tbaa !53
  tail call void @preprocess_constraints() #21
  %11 = tail call ptr @extract_asm_operands(ptr noundef %5) #21
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !157
  %16 = sext i8 %15 to i32
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = add i32 %14, %19
  %21 = sub i32 %16, %20
  %22 = icmp sgt i32 %10, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2029, ptr noundef nonnull @.str.4) #21
  br label %24

24:                                               ; preds = %8, %23
  %25 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !157
  %26 = icmp sgt i8 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = zext nneg i8 %25 to i64
  br label %29

29:                                               ; preds = %27, %45
  %30 = phi i64 [ 0, %27 ], [ %46, %45 ]
  %31 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 39
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %30
  store ptr %37, ptr %43, align 8, !tbaa !38
  %44 = load ptr, ptr %37, align 8, !tbaa !49
  store ptr %44, ptr %31, align 8, !tbaa !38
  br label %45

45:                                               ; preds = %29, %36, %42
  %46 = add nuw nsw i64 %30, 1
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %48, label %29, !llvm.loop !159

48:                                               ; preds = %45, %24
  %49 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48, %52
  %53 = phi ptr [ %57, %52 ], [ %50, %48 ]
  %54 = phi i32 [ %55, %52 ], [ 0, %48 ]
  %55 = add nuw nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %52, !llvm.loop !160

59:                                               ; preds = %52, %48
  %60 = phi i32 [ 0, %48 ], [ %55, %52 ]
  %61 = zext nneg i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  %63 = alloca i8, i64 %62, align 16
  %64 = alloca i8, i64 %62, align 16
  %65 = shl nuw nsw i64 %61, 2
  %66 = alloca i8, i64 %65, align 16
  %67 = load ptr, ptr %49, align 8, !tbaa !49
  %68 = icmp eq ptr %67, null
  br i1 %68, label %112, label %69

69:                                               ; preds = %59, %107
  %70 = phi ptr [ %110, %107 ], [ %67, %59 ]
  %71 = phi i32 [ %108, %107 ], [ 0, %59 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !49
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  %83 = select i1 %82, ptr %79, ptr %73
  %84 = select i1 %82, ptr %78, ptr %72
  br label %85

85:                                               ; preds = %77, %69
  %86 = phi ptr [ %73, %69 ], [ %83, %77 ]
  %87 = phi ptr [ %72, %69 ], [ %84, %77 ]
  %88 = load i32, ptr %86, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 37
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !49
  %94 = and i32 %93, -8
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32, ptr %70, align 8
  %98 = lshr i32 %97, 16
  %99 = trunc i32 %98 to i8
  switch i8 %99, label %107 [
    i8 1, label %100
    i8 6, label %100
  ]

100:                                              ; preds = %96, %96
  %101 = sext i32 %71 to i64
  %102 = getelementptr inbounds ptr, ptr %63, i64 %101
  store ptr %86, ptr %102, align 8, !tbaa !38
  %103 = getelementptr inbounds ptr, ptr %64, i64 %101
  store ptr %87, ptr %103, align 8, !tbaa !38
  %104 = and i32 %98, 255
  %105 = getelementptr inbounds i32, ptr %66, i64 %101
  store i32 %104, ptr %105, align 4, !tbaa !53
  %106 = add nsw i32 %71, 1
  br label %107

107:                                              ; preds = %96, %100, %91, %85
  %108 = phi i32 [ %106, %100 ], [ %71, %91 ], [ %71, %85 ], [ %71, %96 ]
  %109 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !49
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %69, !llvm.loop !161

112:                                              ; preds = %107, %59
  %113 = phi i32 [ 0, %59 ], [ %108, %107 ]
  %114 = load i32, ptr %5, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 15
  br i1 %116, label %117, label %170

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !49
  %120 = load i32, ptr %119, align 8, !tbaa !61
  %121 = sext i32 %120 to i64
  %122 = shl nsw i64 %121, 3
  %123 = alloca i8, i64 %122, align 16
  %124 = alloca i8, i64 %122, align 16
  %125 = icmp sgt i32 %120, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %117
  %127 = zext nneg i32 %120 to i64
  br label %128

128:                                              ; preds = %126, %166
  %129 = phi i64 [ 0, %126 ], [ %168, %166 ]
  %130 = phi i32 [ 0, %126 ], [ %167, %166 ]
  %131 = getelementptr inbounds %struct.rtvec_def, ptr %119, i64 0, i32 1, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !38
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 25
  br i1 %135, label %136, label %166

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !49
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 39
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !49
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 37
  %148 = select i1 %147, ptr %144, ptr %138
  %149 = select i1 %147, ptr %143, ptr %137
  br label %150

150:                                              ; preds = %142, %136
  %151 = phi ptr [ %138, %136 ], [ %148, %142 ]
  %152 = phi ptr [ %137, %136 ], [ %149, %142 ]
  %153 = load i32, ptr %151, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 37
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !49
  %159 = and i32 %158, -8
  %160 = icmp eq i32 %159, 8
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = sext i32 %130 to i64
  %163 = getelementptr inbounds ptr, ptr %123, i64 %162
  store ptr %151, ptr %163, align 8, !tbaa !38
  %164 = getelementptr inbounds ptr, ptr %124, i64 %162
  store ptr %152, ptr %164, align 8, !tbaa !38
  %165 = add nsw i32 %130, 1
  br label %166

166:                                              ; preds = %150, %156, %161, %128
  %167 = phi i32 [ %130, %128 ], [ %165, %161 ], [ %130, %156 ], [ %130, %150 ]
  %168 = add nuw nsw i64 %129, 1
  %169 = icmp eq i64 %168, %127
  br i1 %169, label %170, label %128, !llvm.loop !162

170:                                              ; preds = %166, %117, %112
  %171 = phi i32 [ 0, %112 ], [ 0, %117 ], [ %167, %166 ]
  %172 = phi ptr [ null, %112 ], [ %124, %117 ], [ %124, %166 ]
  %173 = phi ptr [ null, %112 ], [ %123, %117 ], [ %123, %166 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !126
  %174 = add nsw i32 %21, %14
  %175 = icmp sgt i32 %14, 0
  br i1 %175, label %176, label %225

176:                                              ; preds = %170
  %177 = sext i32 %10 to i64
  %178 = sext i32 %21 to i64
  %179 = sext i32 %174 to i64
  br label %180

180:                                              ; preds = %176, %222
  %181 = phi i64 [ %178, %176 ], [ %223, %222 ]
  %182 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !38
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 37
  br i1 %186, label %187, label %222

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !49
  %190 = and i32 %189, -8
  %191 = icmp eq i32 %190, 8
  br i1 %191, label %192, label %222

192:                                              ; preds = %187
  %193 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %181, i64 %177, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !163
  %195 = tail call i32 @reg_class_subset_p(i32 noundef %194, i32 noundef 16) #21
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %222, label %197

197:                                              ; preds = %192
  %198 = load i32, ptr %193, align 8, !tbaa !163
  %199 = icmp eq i32 %198, 16
  br i1 %199, label %222, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %182, align 8, !tbaa !38
  %202 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %3, ptr noundef %201)
  %203 = icmp sgt i32 %202, -1
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2122, ptr noundef nonnull @.str.4) #21
  br label %205

205:                                              ; preds = %200, %204
  %206 = load ptr, ptr %182, align 8, !tbaa !38
  %207 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !49
  %209 = icmp eq i32 %202, %208
  br i1 %209, label %222, label %210

210:                                              ; preds = %205
  %211 = load i32, ptr %3, align 8, !tbaa !119
  %212 = sub i32 %211, %202
  %213 = add i32 %212, 8
  %214 = sub i32 %211, %208
  %215 = add i32 %214, 8
  %216 = sext i32 %213 to i64
  %217 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !49
  %219 = sext i32 %215 to i64
  %220 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !49
  store i8 %221, ptr %217, align 1, !tbaa !49
  store i8 %218, ptr %220, align 1, !tbaa !49
  br label %222

222:                                              ; preds = %205, %210, %180, %187, %192, %197
  %223 = add nsw i64 %181, 1
  %224 = icmp slt i64 %223, %179
  br i1 %224, label %180, label %225, !llvm.loop !165

225:                                              ; preds = %222, %170
  call fastcc void @change_stack(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  %226 = icmp sgt i32 %14, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = sext i32 %21 to i64
  %229 = sext i32 %174 to i64
  br label %234

230:                                              ; preds = %253, %225
  %231 = icmp sgt i32 %113, 0
  br i1 %231, label %232, label %256

232:                                              ; preds = %230
  %233 = zext nneg i32 %113 to i64
  br label %260

234:                                              ; preds = %227, %253
  %235 = phi i64 [ %228, %227 ], [ %254, %253 ]
  %236 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !38
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 37
  br i1 %240, label %241, label %253

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !49
  %244 = and i32 %243, -8
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %237)
  %248 = icmp sgt i32 %247, -1
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2155, ptr noundef nonnull @.str.4) #21
  br label %250

250:                                              ; preds = %246, %249
  %251 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %235
  %252 = load ptr, ptr %251, align 8, !tbaa !38
  tail call fastcc void @replace_reg(ptr noundef %252, i32 noundef %247)
  br label %253

253:                                              ; preds = %234, %241, %250
  %254 = add nsw i64 %235, 1
  %255 = icmp slt i64 %254, %229
  br i1 %255, label %234, label %230, !llvm.loop !166

256:                                              ; preds = %274, %230
  %257 = icmp sgt i32 %171, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %256
  %259 = zext nneg i32 %171 to i64
  br label %286

260:                                              ; preds = %232, %274
  %261 = phi i64 [ 0, %232 ], [ %275, %274 ]
  %262 = getelementptr inbounds i32, ptr %66, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !53
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %274

265:                                              ; preds = %260
  %266 = getelementptr inbounds ptr, ptr %63, i64 %261
  %267 = load ptr, ptr %266, align 8, !tbaa !38
  %268 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %267)
  %269 = icmp sgt i32 %268, -1
  br i1 %269, label %271, label %270

270:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2165, ptr noundef nonnull @.str.4) #21
  br label %271

271:                                              ; preds = %265, %270
  %272 = getelementptr inbounds ptr, ptr %64, i64 %261
  %273 = load ptr, ptr %272, align 8, !tbaa !38
  tail call fastcc void @replace_reg(ptr noundef %273, i32 noundef %268)
  br label %274

274:                                              ; preds = %260, %271
  %275 = add nuw nsw i64 %261, 1
  %276 = icmp eq i64 %275, %233
  br i1 %276, label %256, label %260, !llvm.loop !167

277:                                              ; preds = %299, %256
  %278 = icmp sgt i32 %14, 0
  br i1 %278, label %279, label %302

279:                                              ; preds = %277
  %280 = icmp sgt i32 %171, 0
  %281 = sext i32 %10 to i64
  %282 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %283 = sext i32 %21 to i64
  %284 = sext i32 %174 to i64
  %285 = zext nneg i32 %171 to i64
  br label %306

286:                                              ; preds = %258, %299
  %287 = phi i64 [ 0, %258 ], [ %300, %299 ]
  %288 = getelementptr inbounds ptr, ptr %173, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !38
  %290 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %289)
  %291 = icmp sgt i32 %290, -1
  br i1 %291, label %292, label %299

292:                                              ; preds = %286
  %293 = add nsw i32 %290, -8
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %294, i64 39
  %296 = load ptr, ptr %295, align 8, !tbaa !38
  %297 = getelementptr inbounds ptr, ptr %172, i64 %287
  %298 = load ptr, ptr %297, align 8, !tbaa !38
  store ptr %296, ptr %298, align 8, !tbaa !38
  br label %299

299:                                              ; preds = %292, %286
  %300 = add nuw nsw i64 %287, 1
  %301 = icmp eq i64 %300, %259
  br i1 %301, label %277, label %286, !llvm.loop !168

302:                                              ; preds = %344, %277
  %303 = icmp sgt i32 %21, 0
  %304 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %305 = zext nneg i32 %21 to i64
  br label %347

306:                                              ; preds = %279, %344
  %307 = phi i64 [ %283, %279 ], [ %345, %344 ]
  %308 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !38
  %310 = load i32, ptr %309, align 8
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 37
  br i1 %312, label %313, label %344

313:                                              ; preds = %306
  %314 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1
  %315 = load i32, ptr %314, align 8, !tbaa !49
  %316 = and i32 %315, -8
  %317 = icmp eq i32 %316, 8
  br i1 %317, label %318, label %344

318:                                              ; preds = %313
  br i1 %280, label %322, label %329

319:                                              ; preds = %322
  %320 = add nuw nsw i64 %323, 1
  %321 = icmp eq i64 %320, %285
  br i1 %321, label %329, label %322, !llvm.loop !169

322:                                              ; preds = %318, %319
  %323 = phi i64 [ %320, %319 ], [ 0, %318 ]
  %324 = getelementptr inbounds ptr, ptr %173, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !38
  %326 = load ptr, ptr %308, align 8, !tbaa !38
  %327 = tail call i32 @operands_match_p(ptr noundef %325, ptr noundef %326) #21
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %319, label %333

329:                                              ; preds = %319, %318
  %330 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %307, i64 %281, i32 3
  %331 = load i32, ptr %330, align 16, !tbaa !170
  %332 = icmp sgt i32 %331, -1
  br i1 %332, label %333, label %344

333:                                              ; preds = %322, %329
  %334 = load i32, ptr %1, align 8, !tbaa !119
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !49
  %338 = zext nneg i8 %337 to i64
  %339 = shl nuw i64 1, %338
  %340 = xor i64 %339, -1
  %341 = load i64, ptr %282, align 8, !tbaa !120
  %342 = and i64 %341, %340
  store i64 %342, ptr %282, align 8, !tbaa !120
  %343 = add nsw i32 %334, -1
  store i32 %343, ptr %1, align 8, !tbaa !119
  br label %344

344:                                              ; preds = %329, %333, %306, %313
  %345 = add nsw i64 %307, 1
  %346 = icmp slt i64 %345, %284
  br i1 %346, label %306, label %302, !llvm.loop !171

347:                                              ; preds = %302, %382
  %348 = phi i64 [ 15, %302 ], [ %383, %382 ]
  br i1 %303, label %355, label %382

349:                                              ; preds = %382
  %350 = icmp sgt i32 %21, 0
  br i1 %350, label %351, label %385

351:                                              ; preds = %349
  %352 = icmp slt i32 %113, 1
  %353 = zext nneg i32 %21 to i64
  %354 = zext i32 %113 to i64
  br label %394

355:                                              ; preds = %347, %379
  %356 = phi i64 [ %380, %379 ], [ 0, %347 ]
  %357 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !38
  %359 = load i32, ptr %358, align 8
  %360 = and i32 %359, 65535
  %361 = icmp eq i32 %360, 37
  br i1 %361, label %362, label %379

362:                                              ; preds = %355
  %363 = getelementptr inbounds %struct.rtx_def, ptr %358, i64 0, i32 1
  %364 = load i32, ptr %363, align 8, !tbaa !49
  %365 = and i32 %364, -8
  %366 = icmp eq i32 %365, 8
  %367 = zext i32 %364 to i64
  %368 = icmp eq i64 %348, %367
  %369 = and i1 %368, %366
  br i1 %369, label %370, label %379

370:                                              ; preds = %362
  %371 = trunc i64 %348 to i8
  %372 = load i32, ptr %1, align 8, !tbaa !119
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %1, align 8, !tbaa !119
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %374
  store i8 %371, ptr %375, align 1, !tbaa !49
  %376 = shl nuw i64 1, %348
  %377 = load i64, ptr %304, align 8, !tbaa !120
  %378 = or i64 %377, %376
  store i64 %378, ptr %304, align 8, !tbaa !120
  br label %382

379:                                              ; preds = %355, %362
  %380 = add nuw nsw i64 %356, 1
  %381 = icmp eq i64 %380, %305
  br i1 %381, label %382, label %355, !llvm.loop !172

382:                                              ; preds = %379, %347, %370
  %383 = add nsw i64 %348, -1
  %384 = icmp ugt i64 %348, 8
  br i1 %384, label %347, label %349, !llvm.loop !173

385:                                              ; preds = %424, %349
  %386 = phi ptr [ %0, %349 ], [ %425, %424 ]
  %387 = icmp sgt i32 %14, 0
  br i1 %387, label %388, label %469

388:                                              ; preds = %385
  %389 = icmp slt i32 %113, 1
  %390 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %391 = sext i32 %21 to i64
  %392 = sext i32 %174 to i64
  %393 = zext i32 %113 to i64
  br label %428

394:                                              ; preds = %351, %424
  %395 = phi i64 [ 0, %351 ], [ %426, %424 ]
  %396 = phi ptr [ %0, %351 ], [ %425, %424 ]
  %397 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %395
  %398 = load ptr, ptr %397, align 8, !tbaa !38
  %399 = load i32, ptr %398, align 8
  %400 = and i32 %399, 65535
  %401 = icmp eq i32 %400, 37
  br i1 %401, label %402, label %424

402:                                              ; preds = %394
  %403 = getelementptr inbounds %struct.rtx_def, ptr %398, i64 0, i32 1
  %404 = load i32, ptr %403, align 8, !tbaa !49
  %405 = and i32 %404, -8
  %406 = icmp ne i32 %405, 8
  %407 = select i1 %406, i1 true, i1 %352
  br i1 %407, label %424, label %408

408:                                              ; preds = %402, %421
  %409 = phi i64 [ %422, %421 ], [ 0, %402 ]
  %410 = getelementptr inbounds ptr, ptr %63, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !38
  %412 = getelementptr inbounds %struct.rtx_def, ptr %411, i64 0, i32 1
  %413 = load i32, ptr %412, align 8, !tbaa !49
  %414 = icmp eq i32 %404, %413
  br i1 %414, label %415, label %421

415:                                              ; preds = %408
  %416 = getelementptr inbounds i32, ptr %66, i64 %409
  %417 = load i32, ptr %416, align 4, !tbaa !53
  %418 = icmp eq i32 %417, 6
  br i1 %418, label %419, label %421

419:                                              ; preds = %415
  %420 = tail call fastcc ptr @emit_pop_insn(ptr noundef %396, ptr noundef %1, ptr noundef nonnull %398, i32 noundef 0)
  br label %424

421:                                              ; preds = %408, %415
  %422 = add nuw nsw i64 %409, 1
  %423 = icmp eq i64 %422, %354
  br i1 %423, label %424, label %408, !llvm.loop !174

424:                                              ; preds = %421, %402, %419, %394
  %425 = phi ptr [ %396, %402 ], [ %396, %394 ], [ %420, %419 ], [ %396, %421 ]
  %426 = add nuw nsw i64 %395, 1
  %427 = icmp eq i64 %426, %353
  br i1 %427, label %385, label %394, !llvm.loop !175

428:                                              ; preds = %388, %465
  %429 = phi i64 [ %391, %388 ], [ %467, %465 ]
  %430 = phi ptr [ %386, %388 ], [ %466, %465 ]
  %431 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %429
  %432 = load ptr, ptr %431, align 8, !tbaa !38
  %433 = load i32, ptr %432, align 8
  %434 = and i32 %433, 65535
  %435 = icmp eq i32 %434, 37
  br i1 %435, label %436, label %465

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 0, i32 1
  %438 = load i32, ptr %437, align 8, !tbaa !49
  %439 = and i32 %438, -8
  %440 = icmp ne i32 %439, 8
  %441 = select i1 %440, i1 true, i1 %389
  br i1 %441, label %465, label %442

442:                                              ; preds = %436
  %443 = zext nneg i32 %438 to i64
  %444 = shl nuw nsw i64 1, %443
  br label %445

445:                                              ; preds = %442, %462
  %446 = phi i64 [ 0, %442 ], [ %463, %462 ]
  %447 = getelementptr inbounds ptr, ptr %63, i64 %446
  %448 = load ptr, ptr %447, align 8, !tbaa !38
  %449 = getelementptr inbounds %struct.rtx_def, ptr %448, i64 0, i32 1
  %450 = load i32, ptr %449, align 8, !tbaa !49
  %451 = icmp eq i32 %438, %450
  br i1 %451, label %452, label %462

452:                                              ; preds = %445
  %453 = getelementptr inbounds i32, ptr %66, i64 %446
  %454 = load i32, ptr %453, align 4, !tbaa !53
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %462

456:                                              ; preds = %452
  %457 = load i64, ptr %390, align 8, !tbaa !120
  %458 = and i64 %457, %444
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %462, label %460

460:                                              ; preds = %456
  %461 = tail call fastcc ptr @emit_pop_insn(ptr noundef %430, ptr noundef %1, ptr noundef nonnull %432, i32 noundef 0)
  br label %465

462:                                              ; preds = %445, %452, %456
  %463 = add nuw nsw i64 %446, 1
  %464 = icmp eq i64 %463, %393
  br i1 %464, label %465, label %445, !llvm.loop !176

465:                                              ; preds = %462, %436, %460, %428
  %466 = phi ptr [ %430, %436 ], [ %430, %428 ], [ %461, %460 ], [ %430, %462 ]
  %467 = add nsw i64 %429, 1
  %468 = icmp slt i64 %467, %392
  br i1 %468, label %428, label %469, !llvm.loop !177

469:                                              ; preds = %465, %385, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !37 {
  %4 = alloca [3 x ptr], align 16
  %5 = load i32, ptr %2, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %881 [
    i16 24, label %7
    i16 138, label %34
    i16 25, label %35
    i16 23, label %95
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %9 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %8)
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %881

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = and i32 %16, -8
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %881

19:                                               ; preds = %14
  %20 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %16) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %881, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !120
  %25 = load ptr, ptr %9, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !49
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %29, %24
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %881, label %32

32:                                               ; preds = %22
  %33 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %25, i32 noundef 0)
  br label %881

34:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1378, ptr noundef nonnull @.str.4) #21
  br label %35

35:                                               ; preds = %3, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %37 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %36)
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %881

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !49
  %45 = and i32 %44, -8
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %881

47:                                               ; preds = %42
  %48 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %38) #21
  %49 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = icmp eq ptr %50, %2
  %52 = icmp eq ptr %48, null
  br i1 %51, label %64, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %37, align 8, !tbaa !38
  br i1 %52, label %57, label %55

55:                                               ; preds = %53
  %56 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %54, i32 noundef 1)
  br label %59

57:                                               ; preds = %53
  %58 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 6, ptr noundef %54) #21
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %48, %55 ], [ %58, %57 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %60) #21
  br label %63

63:                                               ; preds = %62, %59
  tail call fastcc void @replace_reg(ptr noundef nonnull %37, i32 noundef 9)
  br label %881

64:                                               ; preds = %47
  br i1 %52, label %65, label %881

65:                                               ; preds = %64
  %66 = load ptr, ptr %37, align 8, !tbaa !38
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !49
  %73 = and i8 %72, -2
  %74 = icmp eq i8 %73, 10
  br i1 %74, label %75, label %88

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !49
  %78 = add i32 %77, -7
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %79, i64 38
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %81) #21
  %86 = tail call ptr @emit_insn_before(ptr noundef %85, ptr noundef %0) #21
  %87 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %86, ptr noundef %1, ptr noundef %81)
  br label %88

88:                                               ; preds = %65, %75, %84
  %89 = phi i8 [ 0, %65 ], [ %87, %84 ], [ 0, %75 ]
  %90 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %66)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %881

92:                                               ; preds = %88
  %93 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %66)
  %94 = or i8 %93, %89
  br label %881

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %97 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %96)
  %98 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %98)
  %100 = load ptr, ptr %98, align 8, !tbaa !49
  %101 = load ptr, ptr %99, align 8, !tbaa !38
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !49
  %108 = and i32 %107, -8
  %109 = icmp eq i32 %108, 8
  br i1 %109, label %122, label %110

110:                                              ; preds = %105, %95
  %111 = load ptr, ptr %97, align 8, !tbaa !38
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !49
  %118 = and i32 %117, -8
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = trunc i32 %102 to i16
  switch i16 %121, label %124 [
    i16 37, label %122
    i16 43, label %122
    i16 32, label %122
  ]

122:                                              ; preds = %120, %120, %120, %105
  %123 = tail call fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %881

124:                                              ; preds = %120, %115, %110
  %125 = load i32, ptr %100, align 8
  %126 = trunc i32 %125 to i16
  switch i16 %126, label %880 [
    i16 48, label %127
    i16 26, label %128
    i16 37, label %163
    i16 102, label %167
    i16 112, label %167
    i16 111, label %167
    i16 51, label %167
    i16 50, label %206
    i16 55, label %206
    i16 52, label %206
    i16 49, label %206
    i16 18, label %453
    i16 47, label %737
  ]

127:                                              ; preds = %124
  tail call fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %100)
  br label %881

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !49
  %131 = zext i32 %130 to i64
  %132 = lshr i32 %112, 16
  %133 = and i32 %132, 255
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %131, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !49
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %162, label %138

138:                                              ; preds = %128
  %139 = zext i8 %136 to i32
  %140 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  br label %141

141:                                              ; preds = %138, %141
  %142 = phi i32 [ %139, %138 ], [ %143, %141 ]
  %143 = add nsw i32 %142, -1
  %144 = load ptr, ptr %97, align 8, !tbaa !38
  %145 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !49
  %147 = add i32 %146, %143
  %148 = trunc i32 %147 to i8
  %149 = load i32, ptr %1, align 8, !tbaa !119
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %1, align 8, !tbaa !119
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %151
  store i8 %148, ptr %152, align 1, !tbaa !49
  %153 = load ptr, ptr %97, align 8, !tbaa !38
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !49
  %156 = add i32 %155, %143
  %157 = zext nneg i32 %156 to i64
  %158 = shl nuw i64 1, %157
  %159 = load i64, ptr %140, align 8, !tbaa !120
  %160 = or i64 %158, %159
  store i64 %160, ptr %140, align 8, !tbaa !120
  %161 = icmp sgt i32 %142, 1
  br i1 %161, label %141, label %162, !llvm.loop !178

162:                                              ; preds = %141, %128
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef 8)
  br label %881

163:                                              ; preds = %124
  %164 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !38
  %165 = icmp eq ptr %111, %164
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1481, ptr noundef nonnull @.str.4) #21
  br label %167

167:                                              ; preds = %124, %124, %124, %166, %163, %124
  %168 = phi ptr [ null, %124 ], [ %99, %163 ], [ %99, %166 ], [ null, %124 ], [ null, %124 ], [ null, %124 ]
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %172 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi ptr [ %172, %170 ], [ %168, %167 ]
  %175 = load ptr, ptr %174, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %175)
  %176 = load ptr, ptr %174, align 8, !tbaa !38
  %177 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %178 = load i32, ptr %177, align 8, !tbaa !49
  %179 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %178) #21
  %180 = load ptr, ptr %97, align 8, !tbaa !38
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 37
  br i1 %183, label %184, label %190

184:                                              ; preds = %173
  %185 = getelementptr inbounds %struct.rtx_def, ptr %180, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !49
  %187 = and i32 %186, -8
  %188 = icmp eq i32 %187, 8
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef 8)
  br label %190

190:                                              ; preds = %189, %184, %173
  %191 = icmp eq ptr %179, null
  br i1 %191, label %205, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %193, i32 noundef 8)
  %194 = load i32, ptr %1, align 8, !tbaa !119
  %195 = add nsw i32 %194, -1
  store i32 %195, ptr %1, align 8, !tbaa !119
  %196 = load ptr, ptr %174, align 8, !tbaa !38
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %198 = load i32, ptr %197, align 8, !tbaa !49
  %199 = zext nneg i32 %198 to i64
  %200 = shl nuw i64 1, %199
  %201 = xor i64 %200, -1
  %202 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !120
  %204 = and i64 %203, %201
  store i64 %204, ptr %202, align 8, !tbaa !120
  br label %205

205:                                              ; preds = %192, %190
  tail call fastcc void @replace_reg(ptr noundef nonnull %174, i32 noundef 8)
  br label %881

206:                                              ; preds = %124, %124, %124, %124
  %207 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %208 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %207)
  %209 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %210 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %209)
  %211 = load ptr, ptr %208, align 8, !tbaa !38
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 37
  br i1 %214, label %215, label %222

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !49
  %218 = and i32 %217, -8
  %219 = icmp eq i32 %218, 8
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %217) #21
  br label %222

222:                                              ; preds = %206, %215, %220
  %223 = phi ptr [ %221, %220 ], [ null, %215 ], [ null, %206 ]
  %224 = load ptr, ptr %210, align 8, !tbaa !38
  %225 = load i32, ptr %224, align 8
  %226 = and i32 %225, 65535
  %227 = icmp eq i32 %226, 37
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.rtx_def, ptr %224, i64 0, i32 1
  %230 = load i32, ptr %229, align 8, !tbaa !49
  %231 = and i32 %230, -8
  %232 = icmp eq i32 %231, 8
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %230) #21
  br label %235

235:                                              ; preds = %222, %228, %233
  %236 = phi ptr [ %234, %233 ], [ null, %228 ], [ null, %222 ]
  %237 = load ptr, ptr %208, align 8, !tbaa !38
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 37
  br i1 %240, label %241, label %282

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !49
  %244 = and i32 %243, -8
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %246, label %282

246:                                              ; preds = %241
  %247 = load ptr, ptr %210, align 8, !tbaa !38
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 37
  br i1 %250, label %251, label %282

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.rtx_def, ptr %247, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !49
  %254 = and i32 %253, -8
  %255 = icmp eq i32 %254, 8
  br i1 %255, label %256, label %282

256:                                              ; preds = %251
  %257 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %237)
  %258 = load ptr, ptr %210, align 8, !tbaa !38
  %259 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %258)
  %260 = icmp eq i32 %257, -1
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = load ptr, ptr %208, align 8, !tbaa !38
  %263 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %262) #21
  %264 = tail call ptr @emit_insn_before(ptr noundef %263, ptr noundef %0) #21
  %265 = load ptr, ptr %208, align 8, !tbaa !38
  %266 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %264, ptr noundef %1, ptr noundef %265)
  br label %267

267:                                              ; preds = %261, %256
  %268 = phi i8 [ %266, %261 ], [ 0, %256 ]
  %269 = icmp eq i32 %259, -1
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load ptr, ptr %210, align 8, !tbaa !38
  %272 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %271) #21
  %273 = tail call ptr @emit_insn_before(ptr noundef %272, ptr noundef %0) #21
  %274 = load ptr, ptr %210, align 8, !tbaa !38
  %275 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %273, ptr noundef %1, ptr noundef %274)
  %276 = or i8 %275, %268
  br label %277

277:                                              ; preds = %270, %267
  %278 = phi i8 [ %276, %270 ], [ %268, %267 ]
  %279 = icmp ne i32 %257, 8
  %280 = icmp ne i32 %259, 8
  %281 = select i1 %279, i1 %280, i1 false
  br i1 %281, label %282, label %285

282:                                              ; preds = %277, %235, %241, %246, %251
  %283 = phi i8 [ 0, %251 ], [ 0, %246 ], [ 0, %241 ], [ 0, %235 ], [ %278, %277 ]
  %284 = load ptr, ptr %97, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %284)
  br label %285

285:                                              ; preds = %282, %277
  %286 = phi i8 [ %278, %277 ], [ %283, %282 ]
  %287 = load ptr, ptr %208, align 8, !tbaa !38
  %288 = load i32, ptr %287, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 37
  br i1 %290, label %291, label %298

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %293 = load i32, ptr %292, align 8, !tbaa !49
  %294 = and i32 %293, -8
  %295 = icmp eq i32 %294, 8
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %287)
  tail call fastcc void @replace_reg(ptr noundef nonnull %208, i32 noundef %297)
  br label %298

298:                                              ; preds = %296, %291, %285
  %299 = load ptr, ptr %210, align 8, !tbaa !38
  %300 = load i32, ptr %299, align 8
  %301 = and i32 %300, 65535
  %302 = icmp eq i32 %301, 37
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.rtx_def, ptr %299, i64 0, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !49
  %306 = and i32 %305, -8
  %307 = icmp eq i32 %306, 8
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %299)
  tail call fastcc void @replace_reg(ptr noundef nonnull %210, i32 noundef %309)
  br label %310

310:                                              ; preds = %308, %303, %298
  %311 = icmp eq ptr %223, null
  br i1 %311, label %363, label %312

312:                                              ; preds = %310
  %313 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !49
  %315 = getelementptr inbounds %struct.rtx_def, ptr %314, i64 0, i32 1
  %316 = load i32, ptr %315, align 8, !tbaa !49
  %317 = load i32, ptr %1, align 8, !tbaa !119
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !49
  %321 = zext i8 %320 to i32
  %322 = icmp eq i32 %316, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %312
  %324 = load ptr, ptr %97, align 8, !tbaa !38
  %325 = getelementptr inbounds %struct.rtx_def, ptr %324, i64 0, i32 1
  %326 = load i32, ptr %325, align 8, !tbaa !49
  %327 = zext nneg i32 %326 to i64
  %328 = shl nuw i64 1, %327
  %329 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %330 = load i64, ptr %329, align 8, !tbaa !120
  %331 = or i64 %328, %330
  store i64 %331, ptr %329, align 8, !tbaa !120
  %332 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %324)
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef %332)
  br label %351

333:                                              ; preds = %312
  %334 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %314)
  %335 = load ptr, ptr %97, align 8, !tbaa !38
  %336 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1
  %337 = load i32, ptr %336, align 8, !tbaa !49
  %338 = zext nneg i32 %337 to i64
  %339 = shl nuw i64 1, %338
  %340 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %341 = load i64, ptr %340, align 8, !tbaa !120
  %342 = or i64 %339, %341
  store i64 %342, ptr %340, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef %334)
  %343 = load i32, ptr %1, align 8, !tbaa !119
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !49
  %347 = sub i32 %343, %334
  %348 = add i32 %347, 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %349
  store i8 %346, ptr %350, align 1, !tbaa !49
  br label %351

351:                                              ; preds = %333, %323
  %352 = load ptr, ptr %313, align 8, !tbaa !49
  %353 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 0, i32 1
  %354 = load i32, ptr %353, align 8, !tbaa !49
  %355 = zext nneg i32 %354 to i64
  %356 = shl nuw i64 1, %355
  %357 = xor i64 %356, -1
  %358 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %359 = load i64, ptr %358, align 8, !tbaa !120
  %360 = and i64 %359, %357
  store i64 %360, ptr %358, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef nonnull %313, i32 noundef 8)
  %361 = load i32, ptr %1, align 8, !tbaa !119
  %362 = add nsw i32 %361, -1
  store i32 %362, ptr %1, align 8, !tbaa !119
  br label %426

363:                                              ; preds = %310
  %364 = icmp eq ptr %236, null
  br i1 %364, label %416, label %365

365:                                              ; preds = %363
  %366 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !49
  %368 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !49
  %370 = load i32, ptr %1, align 8, !tbaa !119
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !49
  %374 = zext i8 %373 to i32
  %375 = icmp eq i32 %369, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %365
  %377 = load ptr, ptr %97, align 8, !tbaa !38
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1
  %379 = load i32, ptr %378, align 8, !tbaa !49
  %380 = zext nneg i32 %379 to i64
  %381 = shl nuw i64 1, %380
  %382 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %383 = load i64, ptr %382, align 8, !tbaa !120
  %384 = or i64 %381, %383
  store i64 %384, ptr %382, align 8, !tbaa !120
  %385 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %377)
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef %385)
  br label %404

386:                                              ; preds = %365
  %387 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %367)
  %388 = load ptr, ptr %97, align 8, !tbaa !38
  %389 = getelementptr inbounds %struct.rtx_def, ptr %388, i64 0, i32 1
  %390 = load i32, ptr %389, align 8, !tbaa !49
  %391 = zext nneg i32 %390 to i64
  %392 = shl nuw i64 1, %391
  %393 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %394 = load i64, ptr %393, align 8, !tbaa !120
  %395 = or i64 %392, %394
  store i64 %395, ptr %393, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef %387)
  %396 = load i32, ptr %1, align 8, !tbaa !119
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !49
  %400 = sub i32 %396, %387
  %401 = add i32 %400, 8
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %402
  store i8 %399, ptr %403, align 1, !tbaa !49
  br label %404

404:                                              ; preds = %386, %376
  %405 = load ptr, ptr %366, align 8, !tbaa !49
  %406 = getelementptr inbounds %struct.rtx_def, ptr %405, i64 0, i32 1
  %407 = load i32, ptr %406, align 8, !tbaa !49
  %408 = zext nneg i32 %407 to i64
  %409 = shl nuw i64 1, %408
  %410 = xor i64 %409, -1
  %411 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %412 = load i64, ptr %411, align 8, !tbaa !120
  %413 = and i64 %412, %410
  store i64 %413, ptr %411, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef nonnull %366, i32 noundef 8)
  %414 = load i32, ptr %1, align 8, !tbaa !119
  %415 = add nsw i32 %414, -1
  store i32 %415, ptr %1, align 8, !tbaa !119
  br label %426

416:                                              ; preds = %363
  %417 = load ptr, ptr %97, align 8, !tbaa !38
  %418 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1
  %419 = load i32, ptr %418, align 8, !tbaa !49
  %420 = zext nneg i32 %419 to i64
  %421 = shl nuw i64 1, %420
  %422 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %423 = load i64, ptr %422, align 8, !tbaa !120
  %424 = or i64 %421, %423
  store i64 %424, ptr %422, align 8, !tbaa !120
  %425 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %417)
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef %425)
  br label %426

426:                                              ; preds = %404, %416, %351
  %427 = load i32, ptr %100, align 8
  %428 = and i32 %427, 65535
  %429 = zext nneg i32 %428 to i64
  %430 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !53
  %432 = icmp eq i32 %431, 3
  br i1 %432, label %433, label %881

433:                                              ; preds = %426
  %434 = load ptr, ptr %208, align 8, !tbaa !38
  %435 = load i32, ptr %434, align 8
  %436 = and i32 %435, 65535
  %437 = icmp eq i32 %436, 37
  br i1 %437, label %438, label %881

438:                                              ; preds = %433
  %439 = load ptr, ptr %210, align 8, !tbaa !38
  %440 = load i32, ptr %439, align 8
  %441 = and i32 %440, 65535
  %442 = icmp eq i32 %441, 37
  br i1 %442, label %443, label %881

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.rtx_def, ptr %434, i64 0, i32 1
  %445 = load i32, ptr %444, align 8, !tbaa !49
  %446 = load ptr, ptr %97, align 8, !tbaa !38
  %447 = getelementptr inbounds %struct.rtx_def, ptr %446, i64 0, i32 1
  %448 = load i32, ptr %447, align 8, !tbaa !49
  %449 = icmp eq i32 %445, %448
  br i1 %449, label %881, label %450

450:                                              ; preds = %443
  %451 = getelementptr inbounds %struct.rtx_def, ptr %439, i64 0, i32 1
  %452 = load i32, ptr %451, align 8, !tbaa !49
  tail call fastcc void @replace_reg(ptr noundef nonnull %208, i32 noundef %452)
  tail call fastcc void @replace_reg(ptr noundef nonnull %210, i32 noundef %445)
  br label %881

453:                                              ; preds = %124
  %454 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %455 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %456 = load i32, ptr %455, align 8, !tbaa !49
  switch i32 %456, label %736 [
    i32 66, label %457
    i32 74, label %457
    i32 75, label %457
    i32 69, label %492
    i32 60, label %509
    i32 61, label %509
    i32 65, label %509
    i32 67, label %509
    i32 70, label %509
    i32 71, label %509
    i32 72, label %509
    i32 73, label %509
    i32 80, label %509
    i32 84, label %509
    i32 81, label %532
    i32 85, label %532
    i32 68, label %535
    i32 62, label %573
    i32 63, label %573
    i32 64, label %573
    i32 86, label %628
    i32 88, label %628
    i32 90, label %628
    i32 87, label %674
    i32 89, label %674
    i32 91, label %674
    i32 95, label %705
    i32 32, label %712
    i32 31, label %725
  ]

457:                                              ; preds = %453, %453, %453
  %458 = load ptr, ptr %454, align 8, !tbaa !49
  %459 = getelementptr inbounds %struct.rtvec_def, ptr %458, i64 0, i32 1
  %460 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %459)
  %461 = load ptr, ptr %460, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %461)
  %462 = load ptr, ptr %460, align 8, !tbaa !38
  %463 = getelementptr inbounds %struct.rtx_def, ptr %462, i64 0, i32 1
  %464 = load i32, ptr %463, align 8, !tbaa !49
  %465 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %464) #21
  %466 = load ptr, ptr %97, align 8, !tbaa !38
  %467 = load i32, ptr %466, align 8
  %468 = and i32 %467, 65535
  %469 = icmp eq i32 %468, 37
  br i1 %469, label %470, label %476

470:                                              ; preds = %457
  %471 = getelementptr inbounds %struct.rtx_def, ptr %466, i64 0, i32 1
  %472 = load i32, ptr %471, align 8, !tbaa !49
  %473 = and i32 %472, -8
  %474 = icmp eq i32 %473, 8
  br i1 %474, label %475, label %476

475:                                              ; preds = %470
  tail call fastcc void @replace_reg(ptr noundef nonnull %97, i32 noundef 8)
  br label %476

476:                                              ; preds = %475, %470, %457
  %477 = icmp eq ptr %465, null
  br i1 %477, label %491, label %478

478:                                              ; preds = %476
  %479 = getelementptr inbounds %struct.rtx_def, ptr %465, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %479, i32 noundef 8)
  %480 = load i32, ptr %1, align 8, !tbaa !119
  %481 = add nsw i32 %480, -1
  store i32 %481, ptr %1, align 8, !tbaa !119
  %482 = load ptr, ptr %460, align 8, !tbaa !38
  %483 = getelementptr inbounds %struct.rtx_def, ptr %482, i64 0, i32 1
  %484 = load i32, ptr %483, align 8, !tbaa !49
  %485 = zext nneg i32 %484 to i64
  %486 = shl nuw i64 1, %485
  %487 = xor i64 %486, -1
  %488 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %489 = load i64, ptr %488, align 8, !tbaa !120
  %490 = and i64 %489, %487
  store i64 %490, ptr %488, align 8, !tbaa !120
  br label %491

491:                                              ; preds = %478, %476
  tail call fastcc void @replace_reg(ptr noundef nonnull %460, i32 noundef 8)
  br label %881

492:                                              ; preds = %453
  %493 = load ptr, ptr %454, align 8, !tbaa !49
  %494 = getelementptr inbounds %struct.rtvec_def, ptr %493, i64 0, i32 1
  %495 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %494)
  %496 = load ptr, ptr %495, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %496)
  %497 = load ptr, ptr %495, align 8, !tbaa !38
  %498 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %499 = load i32, ptr %498, align 8, !tbaa !49
  %500 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %499) #21
  tail call fastcc void @replace_reg(ptr noundef nonnull %495, i32 noundef 8)
  %501 = icmp eq ptr %500, null
  br i1 %501, label %881, label %502

502:                                              ; preds = %492
  %503 = getelementptr inbounds %struct.rtx_def, ptr %500, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !49
  %505 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1
  %506 = load i32, ptr %505, align 8, !tbaa !49
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %506)
  %507 = load ptr, ptr %503, align 8, !tbaa !49
  %508 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %507, i32 noundef 0)
  br label %881

509:                                              ; preds = %453, %453, %453, %453, %453, %453, %453, %453, %453, %453
  %510 = load ptr, ptr %454, align 8, !tbaa !49
  %511 = getelementptr inbounds %struct.rtvec_def, ptr %510, i64 0, i32 1
  %512 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %511)
  %513 = load ptr, ptr %512, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %513)
  %514 = load ptr, ptr %512, align 8, !tbaa !38
  %515 = getelementptr inbounds %struct.rtx_def, ptr %514, i64 0, i32 1
  %516 = load i32, ptr %515, align 8, !tbaa !49
  %517 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %516) #21
  %518 = icmp eq ptr %517, null
  br i1 %518, label %520, label %519

519:                                              ; preds = %509
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1729, ptr noundef nonnull @.str.4) #21
  br label %520

520:                                              ; preds = %509, %519
  %521 = load ptr, ptr %97, align 8, !tbaa !38
  %522 = load i32, ptr %521, align 8
  %523 = and i32 %522, 65535
  %524 = icmp eq i32 %523, 37
  br i1 %524, label %525, label %531

525:                                              ; preds = %520
  %526 = getelementptr inbounds %struct.rtx_def, ptr %521, i64 0, i32 1
  %527 = load i32, ptr %526, align 8, !tbaa !49
  %528 = and i32 %527, -8
  %529 = icmp eq i32 %528, 8
  br i1 %529, label %530, label %531

530:                                              ; preds = %525
  tail call fastcc void @replace_reg(ptr noundef %97, i32 noundef 8)
  br label %531

531:                                              ; preds = %530, %525, %520
  tail call fastcc void @replace_reg(ptr noundef nonnull %512, i32 noundef 8)
  br label %881

532:                                              ; preds = %453, %453
  %533 = load i32, ptr %1, align 8, !tbaa !119
  %534 = add nsw i32 %533, 1
  store i32 %534, ptr %1, align 8, !tbaa !119
  br label %535

535:                                              ; preds = %453, %532
  %536 = load i32, ptr %1, align 8, !tbaa !119
  %537 = add nsw i32 %536, -1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !49
  %541 = sext i32 %536 to i64
  %542 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %541
  store i8 %540, ptr %542, align 1, !tbaa !49
  %543 = load ptr, ptr %97, align 8, !tbaa !38
  %544 = load i32, ptr %543, align 8
  %545 = and i32 %544, 65535
  %546 = icmp eq i32 %545, 37
  br i1 %546, label %547, label %552

547:                                              ; preds = %535
  %548 = getelementptr inbounds %struct.rtx_def, ptr %543, i64 0, i32 1
  %549 = load i32, ptr %548, align 8, !tbaa !49
  %550 = and i32 %549, -8
  %551 = icmp eq i32 %550, 8
  br i1 %551, label %553, label %552

552:                                              ; preds = %547, %535
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1756, ptr noundef nonnull @.str.4) #21
  br label %553

553:                                              ; preds = %547, %552
  %554 = load ptr, ptr %97, align 8, !tbaa !38
  %555 = getelementptr inbounds %struct.rtx_def, ptr %554, i64 0, i32 1
  %556 = load i32, ptr %555, align 8, !tbaa !49
  %557 = trunc i32 %556 to i8
  %558 = load i32, ptr %1, align 8, !tbaa !119
  %559 = add nsw i32 %558, -1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %560
  store i8 %557, ptr %561, align 1, !tbaa !49
  %562 = load ptr, ptr %97, align 8, !tbaa !38
  %563 = getelementptr inbounds %struct.rtx_def, ptr %562, i64 0, i32 1
  %564 = load i32, ptr %563, align 8, !tbaa !49
  %565 = zext nneg i32 %564 to i64
  %566 = shl nuw i64 1, %565
  %567 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %568 = load i64, ptr %567, align 8, !tbaa !120
  %569 = or i64 %566, %568
  store i64 %569, ptr %567, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef %97, i32 noundef 9)
  %570 = load ptr, ptr %454, align 8, !tbaa !49
  %571 = getelementptr inbounds %struct.rtvec_def, ptr %570, i64 0, i32 1
  %572 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %571)
  tail call fastcc void @replace_reg(ptr noundef %572, i32 noundef 8)
  br label %881

573:                                              ; preds = %453, %453, %453
  %574 = load ptr, ptr %454, align 8, !tbaa !49
  %575 = getelementptr inbounds %struct.rtvec_def, ptr %574, i64 0, i32 1
  %576 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %575)
  %577 = load ptr, ptr %454, align 8, !tbaa !49
  %578 = getelementptr inbounds %struct.rtvec_def, ptr %577, i64 1
  %579 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %578)
  %580 = load ptr, ptr %576, align 8, !tbaa !38
  %581 = getelementptr inbounds %struct.rtx_def, ptr %580, i64 0, i32 1
  %582 = load i32, ptr %581, align 8, !tbaa !49
  %583 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %582) #21
  %584 = load ptr, ptr %579, align 8, !tbaa !38
  %585 = getelementptr inbounds %struct.rtx_def, ptr %584, i64 0, i32 1
  %586 = load i32, ptr %585, align 8, !tbaa !49
  %587 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %586) #21
  %588 = load ptr, ptr %576, align 8, !tbaa !38
  %589 = load ptr, ptr %579, align 8, !tbaa !38
  tail call fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr noundef %588, ptr noundef %589)
  tail call fastcc void @replace_reg(ptr noundef nonnull %576, i32 noundef 8)
  tail call fastcc void @replace_reg(ptr noundef nonnull %579, i32 noundef 9)
  %590 = icmp eq ptr %583, null
  br i1 %590, label %593, label %591

591:                                              ; preds = %573
  %592 = getelementptr inbounds %struct.rtx_def, ptr %583, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %592, i32 noundef 8)
  br label %593

593:                                              ; preds = %591, %573
  %594 = icmp eq ptr %587, null
  br i1 %594, label %597, label %595

595:                                              ; preds = %593
  %596 = getelementptr inbounds %struct.rtx_def, ptr %587, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %596, i32 noundef 9)
  br label %597

597:                                              ; preds = %595, %593
  %598 = load i32, ptr %1, align 8, !tbaa !119
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %599
  %601 = load i8, ptr %600, align 1, !tbaa !49
  %602 = zext nneg i8 %601 to i64
  %603 = shl nuw i64 1, %602
  %604 = xor i64 %603, -1
  %605 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %606 = load i64, ptr %605, align 8, !tbaa !120
  %607 = and i64 %606, %604
  store i64 %607, ptr %605, align 8, !tbaa !120
  %608 = add nsw i32 %598, -1
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !49
  %612 = zext nneg i8 %611 to i64
  %613 = shl nuw i64 1, %612
  %614 = xor i64 %613, -1
  %615 = and i64 %607, %614
  store i64 %615, ptr %605, align 8, !tbaa !120
  %616 = add nsw i32 %598, -2
  store i32 %616, ptr %1, align 8, !tbaa !119
  %617 = load ptr, ptr %97, align 8, !tbaa !38
  %618 = getelementptr inbounds %struct.rtx_def, ptr %617, i64 0, i32 1
  %619 = load i32, ptr %618, align 8, !tbaa !49
  %620 = trunc i32 %619 to i8
  store i32 %608, ptr %1, align 8, !tbaa !119
  store i8 %620, ptr %610, align 1, !tbaa !49
  %621 = load ptr, ptr %97, align 8, !tbaa !38
  %622 = getelementptr inbounds %struct.rtx_def, ptr %621, i64 0, i32 1
  %623 = load i32, ptr %622, align 8, !tbaa !49
  %624 = zext nneg i32 %623 to i64
  %625 = shl nuw i64 1, %624
  %626 = load i64, ptr %605, align 8, !tbaa !120
  %627 = or i64 %625, %626
  store i64 %627, ptr %605, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef %97, i32 noundef 8)
  br label %881

628:                                              ; preds = %453, %453, %453
  %629 = load ptr, ptr %454, align 8, !tbaa !49
  %630 = getelementptr inbounds %struct.rtvec_def, ptr %629, i64 0, i32 1
  %631 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %630)
  %632 = load ptr, ptr %454, align 8, !tbaa !49
  %633 = getelementptr inbounds %struct.rtvec_def, ptr %632, i64 1
  %634 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %633)
  %635 = load ptr, ptr %631, align 8, !tbaa !38
  %636 = getelementptr inbounds %struct.rtx_def, ptr %635, i64 0, i32 1
  %637 = load i32, ptr %636, align 8, !tbaa !49
  %638 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %637) #21
  %639 = load ptr, ptr %634, align 8, !tbaa !38
  %640 = getelementptr inbounds %struct.rtx_def, ptr %639, i64 0, i32 1
  %641 = load i32, ptr %640, align 8, !tbaa !49
  %642 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %641) #21
  %643 = icmp eq ptr %638, null
  br i1 %643, label %645, label %644

644:                                              ; preds = %628
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1815, ptr noundef nonnull @.str.4) #21
  br label %645

645:                                              ; preds = %628, %644
  %646 = icmp eq ptr %642, null
  br i1 %646, label %648, label %647

647:                                              ; preds = %645
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1816, ptr noundef nonnull @.str.4) #21
  br label %648

648:                                              ; preds = %645, %647
  %649 = load ptr, ptr %631, align 8, !tbaa !38
  %650 = load ptr, ptr %634, align 8, !tbaa !38
  tail call fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr noundef %649, ptr noundef %650)
  %651 = load ptr, ptr %97, align 8, !tbaa !38
  %652 = load i32, ptr %651, align 8
  %653 = and i32 %652, 65535
  %654 = icmp eq i32 %653, 37
  br i1 %654, label %655, label %673

655:                                              ; preds = %648
  %656 = getelementptr inbounds %struct.rtx_def, ptr %651, i64 0, i32 1
  %657 = load i32, ptr %656, align 8, !tbaa !49
  %658 = and i32 %657, -8
  %659 = icmp eq i32 %658, 8
  br i1 %659, label %660, label %673

660:                                              ; preds = %655
  %661 = trunc i32 %657 to i8
  %662 = load i32, ptr %1, align 8, !tbaa !119
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %663
  store i8 %661, ptr %664, align 1, !tbaa !49
  %665 = load ptr, ptr %97, align 8, !tbaa !38
  %666 = getelementptr inbounds %struct.rtx_def, ptr %665, i64 0, i32 1
  %667 = load i32, ptr %666, align 8, !tbaa !49
  %668 = zext nneg i32 %667 to i64
  %669 = shl nuw i64 1, %668
  %670 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %671 = load i64, ptr %670, align 8, !tbaa !120
  %672 = or i64 %669, %671
  store i64 %672, ptr %670, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef %97, i32 noundef 8)
  br label %673

673:                                              ; preds = %660, %655, %648
  tail call fastcc void @replace_reg(ptr noundef nonnull %631, i32 noundef 8)
  tail call fastcc void @replace_reg(ptr noundef nonnull %634, i32 noundef 9)
  br label %881

674:                                              ; preds = %453, %453, %453
  %675 = load ptr, ptr %454, align 8, !tbaa !49
  %676 = getelementptr inbounds %struct.rtvec_def, ptr %675, i64 0, i32 1
  %677 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %676)
  %678 = load ptr, ptr %454, align 8, !tbaa !49
  %679 = getelementptr inbounds %struct.rtvec_def, ptr %678, i64 1
  %680 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %679)
  %681 = load ptr, ptr %97, align 8, !tbaa !38
  %682 = load i32, ptr %681, align 8
  %683 = and i32 %682, 65535
  %684 = icmp eq i32 %683, 37
  br i1 %684, label %685, label %704

685:                                              ; preds = %674
  %686 = getelementptr inbounds %struct.rtx_def, ptr %681, i64 0, i32 1
  %687 = load i32, ptr %686, align 8, !tbaa !49
  %688 = and i32 %687, -8
  %689 = icmp eq i32 %688, 8
  br i1 %689, label %690, label %704

690:                                              ; preds = %685
  %691 = trunc i32 %687 to i8
  %692 = load i32, ptr %1, align 8, !tbaa !119
  %693 = add nsw i32 %692, -1
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %694
  store i8 %691, ptr %695, align 1, !tbaa !49
  %696 = load ptr, ptr %97, align 8, !tbaa !38
  %697 = getelementptr inbounds %struct.rtx_def, ptr %696, i64 0, i32 1
  %698 = load i32, ptr %697, align 8, !tbaa !49
  %699 = zext nneg i32 %698 to i64
  %700 = shl nuw i64 1, %699
  %701 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %702 = load i64, ptr %701, align 8, !tbaa !120
  %703 = or i64 %700, %702
  store i64 %703, ptr %701, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef %97, i32 noundef 9)
  br label %704

704:                                              ; preds = %690, %685, %674
  tail call fastcc void @replace_reg(ptr noundef %677, i32 noundef 8)
  tail call fastcc void @replace_reg(ptr noundef %680, i32 noundef 9)
  br label %881

705:                                              ; preds = %453
  %706 = load ptr, ptr %454, align 8, !tbaa !49
  %707 = getelementptr inbounds %struct.rtvec_def, ptr %706, i64 0, i32 1
  %708 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %707)
  %709 = load ptr, ptr %454, align 8, !tbaa !49
  %710 = getelementptr inbounds %struct.rtvec_def, ptr %709, i64 1
  %711 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %710)
  tail call fastcc void @replace_reg(ptr noundef %708, i32 noundef 8)
  tail call fastcc void @replace_reg(ptr noundef %711, i32 noundef 9)
  br label %881

712:                                              ; preds = %453
  %713 = load ptr, ptr %454, align 8, !tbaa !49
  %714 = getelementptr inbounds %struct.rtvec_def, ptr %713, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !38
  %716 = load i32, ptr %715, align 8
  %717 = and i32 %716, 65535
  %718 = icmp eq i32 %717, 18
  br i1 %718, label %720, label %719

719:                                              ; preds = %712
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1871, ptr noundef nonnull @.str.4) #21
  br label %720

720:                                              ; preds = %712, %719
  %721 = getelementptr inbounds %struct.rtx_def, ptr %715, i64 0, i32 1, i32 0, i32 0, i64 1
  %722 = load i32, ptr %721, align 8, !tbaa !49
  %723 = icmp eq i32 %722, 31
  br i1 %723, label %725, label %724

724:                                              ; preds = %720
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1872, ptr noundef nonnull @.str.4) #21
  br label %725

725:                                              ; preds = %724, %720, %453
  %726 = phi ptr [ %100, %453 ], [ %715, %720 ], [ %715, %724 ]
  %727 = getelementptr inbounds %struct.rtx_def, ptr %726, i64 0, i32 1
  %728 = load ptr, ptr %727, align 8, !tbaa !49
  %729 = getelementptr inbounds %struct.rtvec_def, ptr %728, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !38
  %731 = load i32, ptr %730, align 8
  %732 = and i32 %731, 65535
  %733 = icmp eq i32 %732, 48
  br i1 %733, label %735, label %734

734:                                              ; preds = %725
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1881, ptr noundef nonnull @.str.4) #21
  br label %735

735:                                              ; preds = %725, %734
  tail call fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %730)
  br label %881

736:                                              ; preds = %453
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1887, ptr noundef nonnull @.str.4) #21
  br label %881

737:                                              ; preds = %124
  %738 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %739 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %740 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %739)
  %741 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 2
  %742 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %741)
  %743 = load ptr, ptr %740, align 8, !tbaa !38
  %744 = getelementptr inbounds %struct.rtx_def, ptr %743, i64 0, i32 1
  %745 = load i32, ptr %744, align 8, !tbaa !49
  %746 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %745) #21
  %747 = load ptr, ptr %742, align 8, !tbaa !38
  %748 = getelementptr inbounds %struct.rtx_def, ptr %747, i64 0, i32 1
  %749 = load i32, ptr %748, align 8, !tbaa !49
  %750 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %749) #21
  %751 = load ptr, ptr %97, align 8, !tbaa !38
  %752 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %751)
  %753 = icmp sgt i32 %752, 7
  br i1 %753, label %754, label %808

754:                                              ; preds = %737
  %755 = load ptr, ptr %97, align 8, !tbaa !38
  %756 = getelementptr inbounds %struct.rtx_def, ptr %755, i64 0, i32 1
  %757 = load i32, ptr %756, align 8, !tbaa !49
  %758 = load i32, ptr %1, align 8, !tbaa !119
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %759
  %761 = load i8, ptr %760, align 1, !tbaa !49
  %762 = zext i8 %761 to i32
  %763 = icmp eq i32 %757, %762
  br i1 %763, label %808, label %764

764:                                              ; preds = %754
  %765 = load ptr, ptr %740, align 8, !tbaa !38
  %766 = getelementptr inbounds %struct.rtx_def, ptr %765, i64 0, i32 1
  %767 = load i32, ptr %766, align 8, !tbaa !49
  %768 = icmp eq i32 %767, %762
  %769 = icmp ne ptr %746, null
  %770 = select i1 %768, i1 %769, i1 false
  br i1 %770, label %778, label %771

771:                                              ; preds = %764
  %772 = load ptr, ptr %742, align 8, !tbaa !38
  %773 = getelementptr inbounds %struct.rtx_def, ptr %772, i64 0, i32 1
  %774 = load i32, ptr %773, align 8, !tbaa !49
  %775 = icmp eq i32 %774, %762
  %776 = icmp ne ptr %750, null
  %777 = select i1 %775, i1 %776, i1 false
  br i1 %777, label %778, label %807

778:                                              ; preds = %771, %764
  %779 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %765)
  %780 = load ptr, ptr %742, align 8, !tbaa !38
  %781 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %780)
  %782 = load ptr, ptr %742, align 8, !tbaa !38
  %783 = getelementptr inbounds %struct.rtx_def, ptr %782, i64 0, i32 1
  %784 = load i32, ptr %783, align 8, !tbaa !49
  %785 = trunc i32 %784 to i8
  %786 = load i32, ptr %1, align 8, !tbaa !119
  %787 = sub i32 %786, %779
  %788 = add i32 %787, 8
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %789
  store i8 %785, ptr %790, align 1, !tbaa !49
  %791 = load ptr, ptr %740, align 8, !tbaa !38
  %792 = getelementptr inbounds %struct.rtx_def, ptr %791, i64 0, i32 1
  %793 = load i32, ptr %792, align 8, !tbaa !49
  %794 = trunc i32 %793 to i8
  %795 = load i32, ptr %1, align 8, !tbaa !119
  %796 = sub i32 %795, %781
  %797 = add i32 %796, 8
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %798
  store i8 %794, ptr %799, align 1, !tbaa !49
  %800 = load ptr, ptr %738, align 8, !tbaa !49
  %801 = tail call i32 @reversed_comparison_code(ptr noundef %800, ptr noundef %0) #21
  %802 = load ptr, ptr %738, align 8, !tbaa !49
  %803 = load i32, ptr %802, align 8
  %804 = and i32 %801, 65535
  %805 = and i32 %803, -65536
  %806 = or disjoint i32 %805, %804
  store i32 %806, ptr %802, align 8
  br label %808

807:                                              ; preds = %771
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %755)
  br label %808

808:                                              ; preds = %778, %807, %754, %737
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  store ptr null, ptr %4, align 16, !tbaa !38
  %809 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %746, ptr %809, align 8, !tbaa !38
  %810 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %750, ptr %810, align 16, !tbaa !38
  %811 = load ptr, ptr %740, align 8, !tbaa !38
  %812 = load i32, ptr %811, align 8
  %813 = and i32 %812, 65535
  %814 = icmp eq i32 %813, 37
  br i1 %814, label %815, label %822

815:                                              ; preds = %808
  %816 = getelementptr inbounds %struct.rtx_def, ptr %811, i64 0, i32 1
  %817 = load i32, ptr %816, align 8, !tbaa !49
  %818 = and i32 %817, -8
  %819 = icmp eq i32 %818, 8
  br i1 %819, label %820, label %822

820:                                              ; preds = %815
  %821 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %811)
  tail call fastcc void @replace_reg(ptr noundef nonnull %740, i32 noundef %821)
  br label %822

822:                                              ; preds = %820, %815, %808
  %823 = load ptr, ptr %742, align 8, !tbaa !38
  %824 = load i32, ptr %823, align 8
  %825 = and i32 %824, 65535
  %826 = icmp eq i32 %825, 37
  br i1 %826, label %827, label %834

827:                                              ; preds = %822
  %828 = getelementptr inbounds %struct.rtx_def, ptr %823, i64 0, i32 1
  %829 = load i32, ptr %828, align 8, !tbaa !49
  %830 = and i32 %829, -8
  %831 = icmp eq i32 %830, 8
  br i1 %831, label %832, label %834

832:                                              ; preds = %827
  %833 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %823)
  tail call fastcc void @replace_reg(ptr noundef nonnull %742, i32 noundef %833)
  br label %834

834:                                              ; preds = %832, %827, %822
  br label %835

835:                                              ; preds = %834, %855
  %836 = phi i64 [ %856, %855 ], [ 1, %834 ]
  %837 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !38
  %839 = icmp eq ptr %838, null
  br i1 %839, label %855, label %840

840:                                              ; preds = %835
  %841 = getelementptr inbounds %struct.rtx_def, ptr %838, i64 0, i32 1
  %842 = load ptr, ptr %841, align 8, !tbaa !49
  %843 = getelementptr inbounds %struct.rtx_def, ptr %842, i64 0, i32 1
  %844 = load i32, ptr %843, align 8, !tbaa !49
  %845 = load i32, ptr %1, align 8, !tbaa !119
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %846
  %848 = load i8, ptr %847, align 1, !tbaa !49
  %849 = zext i8 %848 to i32
  %850 = icmp eq i32 %844, %849
  br i1 %850, label %851, label %852

851:                                              ; preds = %840
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1957, ptr noundef nonnull @.str.4) #21
  br label %852

852:                                              ; preds = %840, %851
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %844)
  %853 = load ptr, ptr %841, align 8, !tbaa !49
  %854 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %853, i32 noundef 0)
  br label %855

855:                                              ; preds = %835, %852
  %856 = add nuw nsw i64 %836, 1
  %857 = icmp eq i64 %856, 3
  br i1 %857, label %858, label %835, !llvm.loop !179

858:                                              ; preds = %855
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %859 = load ptr, ptr %97, align 8, !tbaa !38
  %860 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %859)
  %861 = icmp slt i32 %860, 8
  br i1 %861, label %862, label %871

862:                                              ; preds = %858
  %863 = load ptr, ptr %97, align 8, !tbaa !38
  %864 = getelementptr inbounds %struct.rtx_def, ptr %863, i64 0, i32 1
  %865 = load i32, ptr %864, align 8, !tbaa !49
  %866 = trunc i32 %865 to i8
  %867 = load i32, ptr %1, align 8, !tbaa !119
  %868 = add nsw i32 %867, 1
  store i32 %868, ptr %1, align 8, !tbaa !119
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %869
  store i8 %866, ptr %870, align 1, !tbaa !49
  br label %871

871:                                              ; preds = %862, %858
  %872 = load ptr, ptr %97, align 8, !tbaa !38
  %873 = getelementptr inbounds %struct.rtx_def, ptr %872, i64 0, i32 1
  %874 = load i32, ptr %873, align 8, !tbaa !49
  %875 = zext nneg i32 %874 to i64
  %876 = shl nuw i64 1, %875
  %877 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %878 = load i64, ptr %877, align 8, !tbaa !120
  %879 = or i64 %876, %878
  store i64 %879, ptr %877, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef %97, i32 noundef 8)
  br label %881

880:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1973, ptr noundef nonnull @.str.4) #21
  br label %881

881:                                              ; preds = %35, %19, %14, %7, %3, %88, %92, %63, %64, %42, %127, %162, %205, %871, %880, %450, %443, %438, %433, %426, %492, %502, %736, %735, %705, %704, %673, %597, %553, %531, %491, %122, %22, %32
  %882 = phi i8 [ 0, %32 ], [ 0, %22 ], [ 0, %3 ], [ 0, %19 ], [ 0, %14 ], [ 0, %7 ], [ 0, %63 ], [ 0, %64 ], [ 0, %42 ], [ %94, %92 ], [ %89, %88 ], [ %123, %122 ], [ 0, %880 ], [ 0, %871 ], [ 0, %736 ], [ 0, %735 ], [ 0, %705 ], [ 0, %704 ], [ 0, %673 ], [ 0, %597 ], [ 0, %553 ], [ 0, %531 ], [ 0, %502 ], [ 0, %492 ], [ 0, %491 ], [ %286, %450 ], [ %286, %443 ], [ %286, %438 ], [ %286, %433 ], [ %286, %426 ], [ 0, %205 ], [ 0, %162 ], [ 0, %127 ], [ 0, %35 ]
  ret i8 %882
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #9 !prof !37 {
  %5 = load i32, ptr %2, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 10
  br i1 %12, label %13, label %38

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = add i32 %15, -8
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %17, i64 39
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = add i32 %15, -7
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %21, i64 39
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %19)
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %19, i32 noundef %3)
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi ptr [ %27, %26 ], [ null, %13 ]
  %30 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %23)
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %23, i32 noundef %3)
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ %29, %28 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %74

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 765, ptr noundef nonnull @.str.4) #21
  br label %74

38:                                               ; preds = %4
  %39 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %2)
  %40 = icmp sgt i32 %39, 7
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 771, ptr noundef nonnull @.str.4) #21
  br label %42

42:                                               ; preds = %38, %41
  %43 = add nsw i32 %39, -8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %44, i64 39
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 39), align 8, !tbaa !38
  %48 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %46, ptr noundef %47) #21
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = tail call ptr @emit_insn_after(ptr noundef %48, ptr noundef %0) #21
  br label %54

52:                                               ; preds = %42
  %53 = tail call ptr @emit_insn_before(ptr noundef %48, ptr noundef %0) #21
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 39), align 8, !tbaa !38
  tail call void @add_reg_note(ptr noundef %55, i32 noundef 1, ptr noundef %56) #21
  %57 = load i32, ptr %1, align 8, !tbaa !119
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !49
  %61 = sub nsw i32 %57, %43
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %62
  store i8 %60, ptr %63, align 1, !tbaa !49
  %64 = load i32, ptr %1, align 8, !tbaa !119
  %65 = add nsw i32 %64, -1
  store i32 %65, ptr %1, align 8, !tbaa !119
  %66 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !49
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = xor i64 %69, -1
  %71 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !120
  %73 = and i64 %72, %70
  store i64 %73, ptr %71, align 8, !tbaa !120
  br label %74

74:                                               ; preds = %37, %34, %54
  %75 = phi ptr [ %55, %54 ], [ %35, %34 ], [ %35, %37 ]
  ret ptr %75
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @change_stack(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #9 !prof !37 {
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i32], align 16
  %7 = load ptr, ptr @current_block, align 8, !tbaa !38
  %8 = icmp ne ptr %7, null
  %9 = load i1, ptr @starting_stack_p, align 1
  %10 = select i1 %8, i1 %9, i1 false
  %11 = icmp eq i32 %3, 1
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !126
  store i1 false, ptr @starting_stack_p, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !126
  br label %359

16:                                               ; preds = %4
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  br i1 %8, label %19, label %26

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = icmp eq ptr %23, %0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %18
  %27 = phi i32 [ 0, %18 ], [ %25, %19 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  br label %30

30:                                               ; preds = %26, %16
  %31 = phi ptr [ %29, %26 ], [ %0, %16 ]
  %32 = phi i32 [ %27, %26 ], [ 0, %16 ]
  %33 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %34 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  br label %35

35:                                               ; preds = %30, %59
  %36 = phi i64 [ 8, %30 ], [ %60, %59 ]
  %37 = load i64, ptr %33, align 8, !tbaa !120
  %38 = shl nuw nsw i64 1, %36
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load i64, ptr %34, align 8, !tbaa !120
  %43 = and i64 %42, %38
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = trunc i64 %36 to i8
  %47 = load i32, ptr %1, align 8, !tbaa !119
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 8, !tbaa !119
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %49
  store i8 %46, ptr %50, align 1, !tbaa !49
  %51 = load i64, ptr %34, align 8, !tbaa !120
  %52 = or i64 %51, %38
  store i64 %52, ptr %34, align 8, !tbaa !120
  %53 = add nsw i64 %36, -8
  %54 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %53, i64 38
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = load ptr, ptr @not_a_num, align 8, !tbaa !38
  %57 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %55, ptr noundef %56) #21
  %58 = tail call ptr @emit_insn_before(ptr noundef %57, ptr noundef %31) #21
  br label %59

59:                                               ; preds = %35, %41, %45
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %62, label %35, !llvm.loop !180

62:                                               ; preds = %59
  %63 = load i32, ptr %2, align 8, !tbaa !119
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %1, align 8, !tbaa !119
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %196, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !120
  %71 = add nuw i32 %66, 1
  %72 = zext i32 %71 to i64
  br label %202

73:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %74 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !120
  %76 = add nuw i32 %63, 1
  %77 = zext i32 %76 to i64
  br label %78

78:                                               ; preds = %73, %78
  %79 = phi i64 [ 0, %73 ], [ %88, %78 ]
  %80 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !49
  %82 = zext nneg i8 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = and i64 %83, %75
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i8
  %87 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %79
  store i8 %86, ptr %87, align 1, !tbaa !49
  %88 = add nuw nsw i64 %79, 1
  %89 = icmp eq i64 %88, %77
  br i1 %89, label %90, label %78, !llvm.loop !181

90:                                               ; preds = %78
  %91 = load i32, ptr %1, align 8, !tbaa !119
  %92 = icmp sgt i32 %91, %63
  br i1 %92, label %93, label %137

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !120
  %96 = sext i32 %91 to i64
  %97 = zext nneg i32 %63 to i64
  %98 = zext i32 %76 to i64
  br label %99

99:                                               ; preds = %93, %133
  %100 = phi i64 [ %96, %93 ], [ %135, %133 ]
  %101 = phi i32 [ -1, %93 ], [ %134, %133 ]
  %102 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %100
  %103 = load i8, ptr %102, align 1, !tbaa !49
  %104 = zext nneg i8 %103 to i64
  %105 = shl nuw i64 1, %104
  %106 = and i64 %105, %95
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %130, label %108

108:                                              ; preds = %99, %123
  %109 = phi i64 [ %124, %123 ], [ 0, %99 ]
  %110 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !49
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %109
  %115 = load i8, ptr %114, align 1, !tbaa !49
  %116 = icmp eq i8 %115, %103
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = trunc i64 %109 to i32
  %119 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %109
  %120 = icmp eq i32 %63, %118
  %121 = trunc i64 %100 to i32
  %122 = select i1 %120, i32 %121, i32 %101
  store i8 1, ptr %119, align 1, !tbaa !49
  br label %126

123:                                              ; preds = %108, %113
  %124 = add nuw nsw i64 %109, 1
  %125 = icmp eq i64 %124, %98
  br i1 %125, label %126, label %108, !llvm.loop !182

126:                                              ; preds = %123, %117
  %127 = phi i32 [ %118, %117 ], [ -1, %123 ]
  %128 = phi i32 [ %122, %117 ], [ %101, %123 ]
  %129 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %100
  store i32 %127, ptr %129, align 4, !tbaa !53
  br label %133

130:                                              ; preds = %99
  %131 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %100
  %132 = trunc i64 %100 to i32
  store i32 %132, ptr %131, align 4, !tbaa !53
  br label %133

133:                                              ; preds = %126, %130
  %134 = phi i32 [ %128, %126 ], [ %101, %130 ]
  %135 = add nsw i64 %100, -1
  %136 = icmp sgt i64 %135, %97
  br i1 %136, label %99, label %137, !llvm.loop !183

137:                                              ; preds = %133, %90
  %138 = phi i32 [ -1, %90 ], [ %134, %133 ]
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %158, label %140

140:                                              ; preds = %137
  %141 = tail call i32 @llvm.smax.i32(i32 %63, i32 1)
  %142 = zext nneg i32 %141 to i64
  br label %143

143:                                              ; preds = %140, %155
  %144 = phi i64 [ 0, %140 ], [ %156, %155 ]
  %145 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !49
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = trunc i64 %144 to i32
  %150 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %144
  %151 = sext i32 %138 to i64
  %152 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %151
  store i32 %149, ptr %152, align 4, !tbaa !53
  %153 = zext nneg i32 %63 to i64
  %154 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %153
  store i8 0, ptr %154, align 1, !tbaa !49
  store i8 1, ptr %150, align 1, !tbaa !49
  br label %158

155:                                              ; preds = %143
  %156 = add nuw nsw i64 %144, 1
  %157 = icmp eq i64 %156, %142
  br i1 %157, label %158, label %143, !llvm.loop !184

158:                                              ; preds = %155, %148, %137
  %159 = load i32, ptr %2, align 8, !tbaa !119
  %160 = icmp sgt i32 %91, %159
  br i1 %160, label %161, label %195

161:                                              ; preds = %158
  %162 = sext i32 %91 to i64
  br label %163

163:                                              ; preds = %161, %180
  %164 = phi i64 [ %162, %161 ], [ %191, %180 ]
  %165 = phi i32 [ %63, %161 ], [ %181, %180 ]
  %166 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %164
  %167 = load i32, ptr %166, align 4, !tbaa !53
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %180

169:                                              ; preds = %163
  %170 = sext i32 %165 to i64
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi i64 [ %170, %169 ], [ %176, %171 ]
  %173 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !49
  %175 = icmp eq i8 %174, 0
  %176 = add i64 %172, -1
  br i1 %175, label %177, label %171, !llvm.loop !185

177:                                              ; preds = %171
  %178 = trunc i64 %172 to i32
  %179 = add nsw i32 %178, -1
  br label %180

180:                                              ; preds = %177, %163
  %181 = phi i32 [ %179, %177 ], [ %165, %163 ]
  %182 = phi i32 [ %178, %177 ], [ %167, %163 ]
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !49
  %186 = zext i8 %185 to i64
  %187 = add nsw i64 %186, -8
  %188 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %187, i64 39
  %189 = load ptr, ptr %188, align 8, !tbaa !38
  %190 = tail call fastcc ptr @emit_pop_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %189, i32 noundef 1)
  %191 = add nsw i64 %164, -1
  %192 = load i32, ptr %2, align 8, !tbaa !119
  %193 = sext i32 %192 to i64
  %194 = icmp sgt i64 %191, %193
  br i1 %194, label %163, label %195, !llvm.loop !186

195:                                              ; preds = %180, %158
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %248

196:                                              ; preds = %202, %65
  %197 = phi i32 [ 0, %65 ], [ %212, %202 ]
  %198 = load i32, ptr %1, align 8, !tbaa !119
  %199 = icmp slt i32 %198, %197
  br i1 %199, label %248, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  br label %215

202:                                              ; preds = %68, %202
  %203 = phi i64 [ 0, %68 ], [ %213, %202 ]
  %204 = phi i32 [ 0, %68 ], [ %212, %202 ]
  %205 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %203
  %206 = load i8, ptr %205, align 1, !tbaa !49
  %207 = zext nneg i8 %206 to i64
  %208 = shl nuw i64 1, %207
  %209 = and i64 %208, %70
  %210 = icmp ne i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = add nuw nsw i32 %204, %211
  %213 = add nuw nsw i64 %203, 1
  %214 = icmp eq i64 %213, %72
  br i1 %214, label %196, label %202, !llvm.loop !187

215:                                              ; preds = %200, %239
  %216 = phi i32 [ %198, %200 ], [ %246, %239 ]
  %217 = phi i32 [ %197, %200 ], [ %241, %239 ]
  %218 = load i64, ptr %201, align 8, !tbaa !120
  %219 = sext i32 %216 to i64
  %220 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !49
  %222 = zext nneg i8 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = and i64 %223, %218
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %239, label %226

226:                                              ; preds = %215
  %227 = sext i32 %217 to i64
  br label %228

228:                                              ; preds = %226, %228
  %229 = phi i64 [ %227, %226 ], [ %236, %228 ]
  %230 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !49
  %232 = zext nneg i8 %231 to i64
  %233 = shl nuw i64 1, %232
  %234 = and i64 %233, %218
  %235 = icmp eq i64 %234, 0
  %236 = add i64 %229, -1
  br i1 %235, label %237, label %228, !llvm.loop !188

237:                                              ; preds = %228
  %238 = trunc i64 %229 to i32
  br label %239

239:                                              ; preds = %215, %237
  %240 = phi i64 [ %232, %237 ], [ %222, %215 ]
  %241 = phi i32 [ %238, %237 ], [ %217, %215 ]
  %242 = add nsw i64 %240, -8
  %243 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %242, i64 39
  %244 = load ptr, ptr %243, align 8, !tbaa !38
  %245 = tail call fastcc ptr @emit_pop_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %244, i32 noundef 1)
  %246 = load i32, ptr %1, align 8, !tbaa !119
  %247 = icmp slt i32 %246, %197
  br i1 %247, label %248, label %215, !llvm.loop !189

248:                                              ; preds = %239, %196, %195
  %249 = load i32, ptr %2, align 8, !tbaa !119
  %250 = icmp eq i32 %249, -2
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, ptr %1, align 8, !tbaa !119
  store i32 %252, ptr %2, align 8, !tbaa !119
  %253 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2
  %254 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2
  %255 = load i64, ptr %254, align 8
  store i64 %255, ptr %253, align 8
  br label %350

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %258 = load i64, ptr %257, align 8, !tbaa !120
  %259 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %260 = load i64, ptr %259, align 8, !tbaa !120
  %261 = icmp eq i64 %258, %260
  br i1 %261, label %263, label %262

262:                                              ; preds = %256
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2541, ptr noundef nonnull @.str.4) #21
  br label %263

263:                                              ; preds = %256, %262
  %264 = load i32, ptr %1, align 8, !tbaa !119
  %265 = load i32, ptr %2, align 8, !tbaa !119
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2542, ptr noundef nonnull @.str.4) #21
  br label %268

268:                                              ; preds = %263, %267
  %269 = load i32, ptr %2, align 8, !tbaa !119
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %334, label %271

271:                                              ; preds = %268, %329
  %272 = load i32, ptr %1, align 8, !tbaa !119
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !49
  %276 = load i32, ptr %2, align 8, !tbaa !119
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !49
  %280 = icmp eq i8 %275, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %301, %271
  %282 = phi i32 [ %276, %271 ], [ %313, %301 ]
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %321, label %334

284:                                              ; preds = %271, %301
  %285 = phi i32 [ %313, %301 ], [ %276, %271 ]
  %286 = phi i8 [ %312, %301 ], [ %275, %271 ]
  %287 = icmp sgt i32 %285, -1
  br i1 %287, label %288, label %297

288:                                              ; preds = %284, %294
  %289 = phi i32 [ %295, %294 ], [ %285, %284 ]
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !49
  %293 = icmp eq i8 %292, %286
  br i1 %293, label %297, label %294

294:                                              ; preds = %288
  %295 = add nsw i32 %289, -1
  %296 = icmp sgt i32 %289, 0
  br i1 %296, label %288, label %297, !llvm.loop !190

297:                                              ; preds = %294, %288, %284
  %298 = phi i32 [ %285, %284 ], [ -1, %294 ], [ %289, %288 ]
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2565, ptr noundef nonnull @.str.4) #21
  br label %301

301:                                              ; preds = %297, %300
  %302 = sext i32 %298 to i64
  %303 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !49
  %305 = zext i8 %304 to i64
  %306 = add nsw i64 %305, -8
  %307 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %306, i64 39
  %308 = load ptr, ptr %307, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %308)
  %309 = load i32, ptr %1, align 8, !tbaa !119
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !49
  %313 = load i32, ptr %2, align 8, !tbaa !119
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !49
  %317 = icmp eq i8 %312, %316
  br i1 %317, label %281, label %284, !llvm.loop !191

318:                                              ; preds = %321
  %319 = add nsw i32 %322, -1
  %320 = icmp sgt i32 %322, 0
  br i1 %320, label %321, label %334, !llvm.loop !192

321:                                              ; preds = %281, %318
  %322 = phi i32 [ %319, %318 ], [ %282, %281 ]
  %323 = zext nneg i32 %322 to i64
  %324 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !49
  %326 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %323
  %327 = load i8, ptr %326, align 1, !tbaa !49
  %328 = icmp eq i8 %325, %327
  br i1 %328, label %318, label %329

329:                                              ; preds = %321
  %330 = zext i8 %327 to i64
  %331 = add nsw i64 %330, -8
  %332 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %331, i64 39
  %333 = load ptr, ptr %332, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %333)
  br label %271, !llvm.loop !193

334:                                              ; preds = %281, %318, %268
  %335 = load i32, ptr %1, align 8, !tbaa !119
  %336 = icmp sgt i32 %335, -1
  br i1 %336, label %337, label %350

337:                                              ; preds = %334
  %338 = zext nneg i32 %335 to i64
  br label %339

339:                                              ; preds = %337, %347
  %340 = phi i64 [ %338, %337 ], [ %348, %347 ]
  %341 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !49
  %343 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %340
  %344 = load i8, ptr %343, align 1, !tbaa !49
  %345 = icmp eq i8 %342, %344
  br i1 %345, label %347, label %346

346:                                              ; preds = %339
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2587, ptr noundef nonnull @.str.4) #21
  br label %347

347:                                              ; preds = %339, %346
  %348 = add nsw i64 %340, -1
  %349 = icmp sgt i64 %340, 0
  br i1 %349, label %339, label %350, !llvm.loop !194

350:                                              ; preds = %347, %334, %251
  %351 = icmp eq i32 %32, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %354 = load ptr, ptr %353, align 8, !tbaa !49
  %355 = load ptr, ptr @current_block, align 8, !tbaa !38
  %356 = getelementptr inbounds %struct.basic_block_def, ptr %355, i64 0, i32 7
  %357 = load ptr, ptr %356, align 8, !tbaa !49
  %358 = getelementptr inbounds %struct.rtl_bb_info, ptr %357, i64 0, i32 1
  store ptr %354, ptr %358, align 8, !tbaa !129
  br label %359

359:                                              ; preds = %350, %352, %13
  ret void
}

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_swap_insn(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !37 {
  %4 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %2)
  switch i32 %4, label %16 [
    i32 8, label %153
    i32 -1, label %5
  ]

5:                                                ; preds = %3
  %6 = load i1, ptr @any_malformed_asm, align 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 817, ptr noundef nonnull @.str.4) #21
  br label %8

8:                                                ; preds = %5, %7
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = trunc i32 %10 to i8
  %12 = load i32, ptr %1, align 8, !tbaa !119
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 8, !tbaa !119
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %14
  store i8 %11, ptr %15, align 1, !tbaa !49
  br label %153

16:                                               ; preds = %3
  %17 = icmp sgt i32 %4, 7
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 821, ptr noundef nonnull @.str.4) #21
  br label %19

19:                                               ; preds = %16, %18
  %20 = load i32, ptr %1, align 8, !tbaa !119
  %21 = add nsw i32 %4, -8
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !49
  %26 = sext i32 %20 to i64
  %27 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !49
  store i8 %28, ptr %24, align 1, !tbaa !49
  %29 = load i32, ptr %1, align 8, !tbaa !119
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %30
  store i8 %25, ptr %31, align 1, !tbaa !49
  %32 = load ptr, ptr @current_block, align 8, !tbaa !38
  %33 = icmp eq ptr %32, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %63, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = icmp eq ptr %43, %41
  br i1 %44, label %63, label %45

45:                                               ; preds = %39, %59
  %46 = phi ptr [ %61, %59 ], [ %43, %39 ]
  %47 = load i32, ptr %46, align 8
  %48 = trunc i32 %47 to i16
  switch i16 %48, label %53 [
    i16 12, label %63
    i16 10, label %63
    i16 13, label %49
  ]

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 1
  %51 = load i32, ptr %50, align 8, !tbaa !49
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %63, label %53

53:                                               ; preds = %45, %49
  %54 = and i32 %47, 65535
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %46), !range !144
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = icmp eq ptr %61, %41
  br i1 %62, label %63, label %45, !llvm.loop !195

63:                                               ; preds = %59, %45, %45, %49, %56, %39, %34, %19
  %64 = phi ptr [ null, %34 ], [ null, %19 ], [ null, %39 ], [ %46, %56 ], [ %46, %49 ], [ %46, %45 ], [ %46, %45 ], [ null, %59 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %127, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %64, align 8
  %68 = and i32 %67, 65535
  %69 = add nsw i32 %68, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = tail call ptr @single_set_2(ptr noundef nonnull %64, ptr noundef nonnull %73) #21
  br label %79

79:                                               ; preds = %66, %71, %77
  %80 = phi ptr [ %78, %77 ], [ null, %66 ], [ %73, %71 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %127, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %84 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %84)
  %86 = load ptr, ptr %85, align 8, !tbaa !38
  %87 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %83)
  %88 = load ptr, ptr %87, align 8, !tbaa !38
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 37
  br i1 %91, label %92, label %108

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !49
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i32, ptr %86, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !49
  %103 = add i32 %4, -1
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = tail call ptr @find_regno_note(ptr noundef nonnull %64, i32 noundef 1, i32 noundef 8) #21
  %107 = icmp eq ptr %106, null
  br i1 %107, label %153, label %108

108:                                              ; preds = %105, %100, %96, %92, %82
  %109 = load i32, ptr %88, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 37
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !49
  %115 = icmp eq i32 %114, %4
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i32, ptr %86, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !49
  %123 = icmp eq i32 %122, 8
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = tail call ptr @find_regno_note(ptr noundef nonnull %64, i32 noundef 1, i32 noundef 8) #21
  %126 = icmp eq ptr %125, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %108, %112, %116, %120, %124, %79, %63
  %128 = load ptr, ptr @current_block, align 8, !tbaa !38
  %129 = icmp ne ptr %128, null
  %130 = load i1, ptr @starting_stack_p, align 1
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %134, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !126
  store i1 false, ptr @starting_stack_p, align 1
  br label %153

135:                                              ; preds = %127
  %136 = sext i32 %21 to i64
  %137 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %136, i64 40
  %138 = load ptr, ptr %137, align 8, !tbaa !38
  %139 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 40), align 16, !tbaa !38
  %140 = tail call ptr @gen_swapxf(ptr noundef %138, ptr noundef %139) #21
  br i1 %65, label %143, label %141

141:                                              ; preds = %135
  %142 = tail call ptr @emit_insn_after(ptr noundef %140, ptr noundef nonnull %64) #21
  br label %153

143:                                              ; preds = %135
  %144 = load ptr, ptr @current_block, align 8, !tbaa !38
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !49
  %149 = load ptr, ptr %148, align 8, !tbaa !143
  %150 = tail call ptr @emit_insn_before(ptr noundef %140, ptr noundef %149) #21
  br label %153

151:                                              ; preds = %143
  %152 = tail call ptr @emit_insn_before(ptr noundef %140, ptr noundef %0) #21
  br label %153

153:                                              ; preds = %124, %141, %151, %146, %105, %3, %132, %8
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_swapxf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @check_asm_stack_operands(ptr noundef %0) unnamed_addr #9 !prof !37 {
  %2 = alloca [53 x i8], align 16
  %3 = alloca [53 x i8], align 16
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %3) #21
  tail call void @extract_insn(ptr noundef %0) #21
  %6 = tail call i32 @constrain_operands(i32 noundef 1) #21
  %7 = load i32, ptr @which_alternative, align 4, !tbaa !53
  tail call void @preprocess_constraints() #21
  %8 = tail call ptr @extract_asm_operands(ptr noundef %5) #21
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !157
  %13 = sext i8 %12 to i32
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = load i32, ptr %15, align 8, !tbaa !61
  %17 = add i32 %11, %16
  %18 = sub i32 %13, %17
  %19 = icmp slt i32 %7, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = icmp sgt i8 %12, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %20
  %23 = zext nneg i32 %13 to i64
  br label %27

24:                                               ; preds = %1
  %25 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !38
  %26 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %25) #21
  store ptr %26, ptr %4, align 8, !tbaa !49
  br label %308

27:                                               ; preds = %22, %41
  %28 = phi i64 [ 0, %22 ], [ %42, %41 ]
  %29 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store ptr %36, ptr %29, align 8, !tbaa !38
  br label %41

41:                                               ; preds = %27, %34, %40
  %42 = add nuw nsw i64 %28, 1
  %43 = icmp eq i64 %42, %23
  br i1 %43, label %44, label %27, !llvm.loop !196

44:                                               ; preds = %41, %20
  %45 = load i32, ptr %5, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 15
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = load i32, ptr %50, align 8, !tbaa !61
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  %54 = alloca i8, i64 %53, align 16
  %55 = icmp sgt i32 %51, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %48
  %57 = zext nneg i32 %51 to i64
  br label %58

58:                                               ; preds = %56, %93
  %59 = phi i64 [ 0, %56 ], [ %95, %93 ]
  %60 = phi i32 [ 0, %56 ], [ %94, %93 ]
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %50, i64 0, i32 1, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 25
  br i1 %65, label %66, label %93

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !49
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 39
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 37
  %78 = select i1 %77, ptr %74, ptr %68
  br label %79

79:                                               ; preds = %72, %66
  %80 = phi ptr [ %68, %66 ], [ %78, %72 ]
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 37
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !49
  %87 = and i32 %86, -8
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = sext i32 %60 to i64
  %91 = getelementptr inbounds ptr, ptr %54, i64 %90
  store ptr %80, ptr %91, align 8, !tbaa !38
  %92 = add nsw i32 %60, 1
  br label %93

93:                                               ; preds = %79, %84, %89, %58
  %94 = phi i32 [ %60, %58 ], [ %92, %89 ], [ %60, %84 ], [ %60, %79 ]
  %95 = add nuw nsw i64 %59, 1
  %96 = icmp eq i64 %95, %57
  br i1 %96, label %97, label %58, !llvm.loop !197

97:                                               ; preds = %93, %48, %44
  %98 = phi i32 [ 0, %44 ], [ 0, %48 ], [ %94, %93 ]
  %99 = phi ptr [ null, %44 ], [ %54, %48 ], [ %54, %93 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %2, i8 0, i64 53, i1 false)
  %100 = icmp sgt i32 %18, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = zext nneg i32 %7 to i64
  %103 = icmp sgt i32 %98, 0
  %104 = zext nneg i32 %18 to i64
  %105 = zext nneg i32 %98 to i64
  br label %108

106:                                              ; preds = %157, %97
  %107 = phi i32 [ 0, %97 ], [ %158, %157 ]
  br label %161

108:                                              ; preds = %101, %157
  %109 = phi i64 [ 0, %101 ], [ %159, %157 ]
  %110 = phi i32 [ 0, %101 ], [ %158, %157 ]
  %111 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !38
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %157

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !49
  %119 = and i32 %118, -8
  %120 = icmp eq i32 %119, 8
  br i1 %120, label %121, label %157

121:                                              ; preds = %116
  %122 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %109, i64 %102, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !163
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !53
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br i1 %103, label %131, label %147

129:                                              ; preds = %121
  %130 = trunc i64 %109 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %130) #21
  br label %157

131:                                              ; preds = %128, %144
  %132 = phi i64 [ %145, %144 ], [ 0, %128 ]
  %133 = getelementptr inbounds ptr, ptr %99, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !38
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !49
  %137 = icmp eq i32 %118, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = trunc i64 %132 to i32
  %140 = zext i32 %136 to i64
  %141 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !38
  %143 = trunc i64 %109 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %143, ptr noundef %142) #21
  br label %147

144:                                              ; preds = %131
  %145 = add nuw nsw i64 %132, 1
  %146 = icmp eq i64 %145, %105
  br i1 %146, label %147, label %131, !llvm.loop !198

147:                                              ; preds = %144, %128, %138
  %148 = phi i32 [ %139, %138 ], [ 0, %128 ], [ %98, %144 ]
  %149 = phi i32 [ 1, %138 ], [ %110, %128 ], [ %110, %144 ]
  %150 = icmp eq i32 %148, %98
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load ptr, ptr %111, align 8, !tbaa !38
  %153 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !49
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %155
  store i8 1, ptr %156, align 1, !tbaa !49
  br label %157

157:                                              ; preds = %147, %151, %108, %116, %129
  %158 = phi i32 [ 1, %129 ], [ %110, %116 ], [ %110, %108 ], [ %149, %151 ], [ %149, %147 ]
  %159 = add nuw nsw i64 %109, 1
  %160 = icmp eq i64 %159, %104
  br i1 %160, label %106, label %108, !llvm.loop !199

161:                                              ; preds = %106, %166
  %162 = phi i64 [ 8, %106 ], [ %167, %166 ]
  %163 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !49
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = add nuw nsw i64 %162, 1
  %168 = icmp eq i64 %167, 16
  br i1 %168, label %171, label %161, !llvm.loop !200

169:                                              ; preds = %161
  %170 = trunc i64 %162 to i32
  br label %171

171:                                              ; preds = %166, %169
  %172 = phi i32 [ %170, %169 ], [ 16, %166 ]
  %173 = icmp ult i32 %172, 16
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = zext nneg i32 %172 to i64
  br label %176

176:                                              ; preds = %174, %181
  %177 = phi i64 [ %175, %174 ], [ %182, %181 ]
  %178 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !49
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = add nuw nsw i64 %177, 1
  %183 = icmp eq i64 %182, 16
  br i1 %183, label %186, label %176, !llvm.loop !201

184:                                              ; preds = %176
  %185 = trunc i64 %177 to i32
  br label %186

186:                                              ; preds = %184, %181, %171
  %187 = phi i32 [ %172, %171 ], [ %185, %184 ], [ 16, %181 ]
  %188 = icmp eq i32 %187, 16
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.19) #21
  br label %190

190:                                              ; preds = %189, %186
  %191 = phi i32 [ 1, %189 ], [ %107, %186 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %3, i8 0, i64 53, i1 false)
  %192 = add nsw i32 %18, %11
  %193 = icmp sgt i32 %11, 0
  br i1 %193, label %194, label %236

194:                                              ; preds = %190
  %195 = icmp sgt i32 %98, 0
  %196 = zext nneg i32 %7 to i64
  %197 = sext i32 %18 to i64
  %198 = sext i32 %192 to i64
  %199 = zext nneg i32 %98 to i64
  br label %200

200:                                              ; preds = %194, %233
  %201 = phi i64 [ %197, %194 ], [ %234, %233 ]
  %202 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !38
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 37
  br i1 %206, label %207, label %233

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !49
  %210 = and i32 %209, -8
  %211 = icmp eq i32 %210, 8
  br i1 %211, label %212, label %233

212:                                              ; preds = %207
  br i1 %195, label %216, label %223

213:                                              ; preds = %216
  %214 = add nuw nsw i64 %217, 1
  %215 = icmp eq i64 %214, %199
  br i1 %215, label %223, label %216, !llvm.loop !202

216:                                              ; preds = %212, %213
  %217 = phi i64 [ %214, %213 ], [ 0, %212 ]
  %218 = getelementptr inbounds ptr, ptr %99, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !38
  %220 = load ptr, ptr %202, align 8, !tbaa !38
  %221 = tail call i32 @operands_match_p(ptr noundef %219, ptr noundef %220) #21
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %213, label %227

223:                                              ; preds = %213, %212
  %224 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %201, i64 %196, i32 3
  %225 = load i32, ptr %224, align 16, !tbaa !170
  %226 = icmp sgt i32 %225, -1
  br i1 %226, label %227, label %233

227:                                              ; preds = %216, %223
  %228 = load ptr, ptr %202, align 8, !tbaa !38
  %229 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1
  %230 = load i32, ptr %229, align 8, !tbaa !49
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %231
  store i8 1, ptr %232, align 1, !tbaa !49
  br label %233

233:                                              ; preds = %223, %227, %200, %207
  %234 = add nsw i64 %201, 1
  %235 = icmp slt i64 %234, %198
  br i1 %235, label %200, label %236, !llvm.loop !203

236:                                              ; preds = %233, %190
  br label %237

237:                                              ; preds = %236, %242
  %238 = phi i64 [ %243, %242 ], [ 8, %236 ]
  %239 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !49
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = add nuw nsw i64 %238, 1
  %244 = icmp eq i64 %243, 16
  br i1 %244, label %247, label %237, !llvm.loop !204

245:                                              ; preds = %237
  %246 = trunc i64 %238 to i32
  br label %247

247:                                              ; preds = %242, %245
  %248 = phi i32 [ %246, %245 ], [ 16, %242 ]
  %249 = icmp ult i32 %248, 16
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = zext nneg i32 %248 to i64
  br label %252

252:                                              ; preds = %250, %257
  %253 = phi i64 [ %251, %250 ], [ %258, %257 ]
  %254 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !49
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = add nuw nsw i64 %253, 1
  %259 = icmp eq i64 %258, 16
  br i1 %259, label %262, label %252, !llvm.loop !205

260:                                              ; preds = %252
  %261 = trunc i64 %253 to i32
  br label %262

262:                                              ; preds = %260, %257, %247
  %263 = phi i32 [ %248, %247 ], [ %261, %260 ], [ 16, %257 ]
  %264 = icmp eq i32 %263, 16
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.20) #21
  br label %266

266:                                              ; preds = %265, %262
  %267 = phi i32 [ 1, %265 ], [ %191, %262 ]
  %268 = icmp sgt i32 %11, 0
  br i1 %268, label %269, label %302

269:                                              ; preds = %266
  %270 = zext nneg i32 %7 to i64
  %271 = icmp slt i32 %18, 1
  %272 = sext i32 %18 to i64
  %273 = sext i32 %192 to i64
  %274 = zext i32 %18 to i64
  br label %275

275:                                              ; preds = %269, %298
  %276 = phi i64 [ %272, %269 ], [ %300, %298 ]
  %277 = phi i32 [ %267, %269 ], [ %299, %298 ]
  %278 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %276, i64 %270, i32 3
  %279 = load i32, ptr %278, align 16, !tbaa !170
  %280 = icmp ne i32 %279, -1
  %281 = select i1 %280, i1 true, i1 %271
  br i1 %281, label %298, label %282

282:                                              ; preds = %275
  %283 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %276
  br label %284

284:                                              ; preds = %282, %294
  %285 = phi i64 [ 0, %282 ], [ %296, %294 ]
  %286 = phi i32 [ %277, %282 ], [ %295, %294 ]
  %287 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %285
  %288 = load ptr, ptr %287, align 8, !tbaa !38
  %289 = load ptr, ptr %283, align 8, !tbaa !38
  %290 = tail call i32 @operands_match_p(ptr noundef %288, ptr noundef %289) #21
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %284
  %293 = trunc i64 %285 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %293) #21
  br label %294

294:                                              ; preds = %284, %292
  %295 = phi i32 [ 1, %292 ], [ %286, %284 ]
  %296 = add nuw nsw i64 %285, 1
  %297 = icmp eq i64 %296, %274
  br i1 %297, label %298, label %284, !llvm.loop !206

298:                                              ; preds = %294, %275
  %299 = phi i32 [ %277, %275 ], [ %295, %294 ]
  %300 = add nsw i64 %276, 1
  %301 = icmp slt i64 %300, %273
  br i1 %301, label %275, label %302, !llvm.loop !207

302:                                              ; preds = %298, %266
  %303 = phi i32 [ %267, %266 ], [ %299, %298 ]
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !38
  %307 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %306) #21
  store ptr %307, ptr %4, align 8, !tbaa !49
  store i1 true, ptr @any_malformed_asm, align 1
  br label %308

308:                                              ; preds = %302, %305, %24
  %309 = phi i32 [ 0, %24 ], [ 0, %305 ], [ 1, %302 ]
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %2) #21
  ret i32 %309
}

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare void @preprocess_constraints() local_unnamed_addr #3

declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !37 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = add i32 %5, -8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %7, i64 38
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = load ptr, ptr @not_a_num, align 8, !tbaa !38
  %11 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %9, ptr noundef %10) #21
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store ptr %11, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %13, align 8, !tbaa !49
  %14 = tail call fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %11)
  ret i8 %14
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !37 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %5)
  %7 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4)
  %8 = load ptr, ptr %6, align 8, !tbaa !38
  %9 = load ptr, ptr %7, align 8, !tbaa !38
  %10 = load i32, ptr %8, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %144

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = and i32 %15, -8
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %111

18:                                               ; preds = %13
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %111

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !49
  %25 = and i32 %24, -8
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %15) #21
  %29 = icmp eq ptr %28, null
  %30 = load i32, ptr %14, align 8, !tbaa !49
  %31 = load i32, ptr %23, align 8, !tbaa !49
  %32 = icmp eq i32 %30, %31
  br i1 %29, label %84, label %33

33:                                               ; preds = %27
  br i1 %32, label %34, label %35

34:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 968, ptr noundef nonnull @.str.4) #21
  br label %35

35:                                               ; preds = %33, %34
  %36 = load i32, ptr %1, align 8, !tbaa !119
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, ptr %14, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %38, %47
  %41 = phi i32 [ %36, %38 ], [ %48, %47 ]
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !49
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = add nsw i32 %41, -1
  %49 = icmp sgt i32 %41, 0
  br i1 %49, label %40, label %50, !llvm.loop !208

50:                                               ; preds = %47, %40, %35
  %51 = phi i32 [ %36, %35 ], [ -1, %47 ], [ %41, %40 ]
  %52 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef nonnull %9)
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 975, ptr noundef nonnull @.str.4) #21
  br label %55

55:                                               ; preds = %50, %54
  %56 = icmp slt i32 %51, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9)
  br label %204

59:                                               ; preds = %55
  %60 = load i32, ptr %23, align 8, !tbaa !49
  %61 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %60) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 0)
  br label %81

65:                                               ; preds = %59
  %66 = load i32, ptr %23, align 8, !tbaa !49
  %67 = trunc i32 %66 to i8
  %68 = zext nneg i32 %51 to i64
  %69 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %68
  store i8 %67, ptr %69, align 1, !tbaa !49
  %70 = load i32, ptr %23, align 8, !tbaa !49
  %71 = zext nneg i32 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !120
  %75 = or i64 %72, %74
  store i64 %75, ptr %73, align 8, !tbaa !120
  %76 = load i32, ptr %14, align 8, !tbaa !49
  %77 = zext nneg i32 %76 to i64
  %78 = shl nuw i64 1, %77
  %79 = xor i64 %78, -1
  %80 = and i64 %75, %79
  store i64 %80, ptr %73, align 8, !tbaa !120
  br label %81

81:                                               ; preds = %65, %63
  %82 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #21
  %83 = tail call ptr @delete_insn(ptr noundef %0) #21
  br label %204

84:                                               ; preds = %27
  br i1 %32, label %85, label %93

85:                                               ; preds = %84
  %86 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %31) #21
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef 0)
  br label %90

90:                                               ; preds = %88, %85
  %91 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #21
  %92 = tail call ptr @delete_insn(ptr noundef %0) #21
  br label %204

93:                                               ; preds = %84
  %94 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %9)
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1017, ptr noundef nonnull @.str.4) #21
  br label %97

97:                                               ; preds = %93, %96
  %98 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %8)
  tail call fastcc void @replace_reg(ptr noundef nonnull %6, i32 noundef %98)
  %99 = load i32, ptr %23, align 8, !tbaa !49
  %100 = trunc i32 %99 to i8
  %101 = load i32, ptr %1, align 8, !tbaa !119
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %1, align 8, !tbaa !119
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %103
  store i8 %100, ptr %104, align 1, !tbaa !49
  %105 = load i32, ptr %23, align 8, !tbaa !49
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !120
  %110 = or i64 %107, %109
  store i64 %110, ptr %108, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef nonnull %7, i32 noundef 8)
  br label %204

111:                                              ; preds = %22, %18, %13
  br i1 %12, label %112, label %144

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !49
  %115 = and i32 %114, -8
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %144

117:                                              ; preds = %112
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8)
  %118 = load i32, ptr %113, align 8, !tbaa !49
  %119 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %118) #21
  %120 = icmp eq ptr %119, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %122, i32 noundef 8)
  %123 = load i32, ptr %1, align 8, !tbaa !119
  %124 = add nsw i32 %123, -1
  store i32 %124, ptr %1, align 8, !tbaa !119
  %125 = load i32, ptr %113, align 8, !tbaa !49
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = xor i64 %127, -1
  %129 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !120
  %131 = and i64 %130, %128
  store i64 %131, ptr %129, align 8, !tbaa !120
  br label %143

132:                                              ; preds = %117
  %133 = load i32, ptr %8, align 8
  %134 = and i32 %133, 16711680
  %135 = icmp eq i32 %134, 2621440
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32, ptr %1, align 8, !tbaa !119
  %138 = icmp slt i32 %137, 7
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 40), align 16, !tbaa !38
  %141 = tail call ptr @gen_movxf(ptr noundef %140, ptr noundef %140) #21
  %142 = tail call ptr @emit_insn_before(ptr noundef %141, ptr noundef %0) #21
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef %140) #21
  br label %143

143:                                              ; preds = %132, %136, %139, %121
  tail call fastcc void @replace_reg(ptr noundef nonnull %6, i32 noundef 8)
  br label %204

144:                                              ; preds = %3, %112, %111
  %145 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !49
  %147 = load i32, ptr %9, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 37
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !49
  %153 = and i32 %152, -8
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %156, label %155

155:                                              ; preds = %150, %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1064, ptr noundef nonnull @.str.4) #21
  br label %156

156:                                              ; preds = %150, %155
  %157 = load i32, ptr %146, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 15
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !49
  %163 = load i32, ptr %162, align 8, !tbaa !61
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %182

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.rtvec_def, ptr %162, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !38
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 23
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1, i32 0, i32 0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !49
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 18
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1, i32 0, i32 0, i64 1
  %179 = load i32, ptr %178, align 8, !tbaa !49
  %180 = icmp eq i32 %179, 68
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9)
  br label %186

182:                                              ; preds = %177, %171, %165, %160, %156
  %183 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %9)
  %184 = icmp slt i32 %183, 8
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1082, ptr noundef nonnull @.str.4) #21
  br label %186

186:                                              ; preds = %185, %182, %181
  %187 = load i32, ptr %1, align 8, !tbaa !119
  %188 = icmp slt i32 %187, 8
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1084, ptr noundef nonnull @.str.4) #21
  br label %190

190:                                              ; preds = %186, %189
  %191 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !49
  %193 = trunc i32 %192 to i8
  %194 = load i32, ptr %1, align 8, !tbaa !119
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %1, align 8, !tbaa !119
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %196
  store i8 %193, ptr %197, align 1, !tbaa !49
  %198 = load i32, ptr %191, align 8, !tbaa !49
  %199 = zext nneg i32 %198 to i64
  %200 = shl nuw i64 1, %199
  %201 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !120
  %203 = or i64 %200, %202
  store i64 %203, ptr %201, align 8, !tbaa !120
  tail call fastcc void @replace_reg(ptr noundef nonnull %7, i32 noundef 8)
  br label %204

204:                                              ; preds = %97, %190, %143, %57, %81, %90
  %205 = phi i8 [ %91, %90 ], [ %58, %57 ], [ %82, %81 ], [ 0, %143 ], [ 0, %190 ], [ 0, %97 ]
  ret i8 %205
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !37 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4)
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %6)
  %8 = load ptr, ptr %5, align 8, !tbaa !38
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = and i32 %14, -8
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr %7, align 8, !tbaa !38
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !49
  %25 = and i32 %24, -8
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %18)
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %27, %12, %3
  %31 = tail call fastcc i32 @swap_rtx_condition(ptr noundef %0), !range !144
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !tbaa !49
  %35 = load ptr, ptr %6, align 8, !tbaa !49
  store ptr %35, ptr %4, align 8, !tbaa !49
  store ptr %34, ptr %6, align 8, !tbaa !49
  %36 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4)
  %37 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %6)
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %38, align 8, !tbaa !49
  br label %39

39:                                               ; preds = %27, %33, %30, %22, %17
  %40 = phi ptr [ %37, %33 ], [ %7, %30 ], [ %7, %22 ], [ %7, %17 ], [ %7, %27 ]
  %41 = phi ptr [ %36, %33 ], [ %5, %30 ], [ %5, %22 ], [ %5, %17 ], [ %5, %27 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !49
  %45 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %44) #21
  %46 = load ptr, ptr %40, align 8, !tbaa !38
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !49
  %53 = and i32 %52, -8
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %52) #21
  br label %57

57:                                               ; preds = %39, %50, %55
  %58 = phi ptr [ %56, %55 ], [ null, %50 ], [ null, %39 ]
  %59 = load ptr, ptr %41, align 8, !tbaa !38
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %59)
  tail call fastcc void @replace_reg(ptr noundef nonnull %41, i32 noundef 8)
  %60 = load ptr, ptr %40, align 8, !tbaa !38
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !49
  %67 = and i32 %66, -8
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %60)
  tail call fastcc void @replace_reg(ptr noundef nonnull %40, i32 noundef %70)
  br label %71

71:                                               ; preds = %69, %64, %57
  %72 = icmp ne ptr %45, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !49
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !49
  tail call fastcc void @pop_stack(ptr noundef %1, i32 noundef %77)
  tail call fastcc void @replace_reg(ptr noundef nonnull %74, i32 noundef 8)
  br label %78

78:                                               ; preds = %73, %71
  %79 = icmp eq ptr %58, null
  br i1 %79, label %115, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %41, align 8, !tbaa !38
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !49
  %88 = and i32 %87, -8
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load ptr, ptr %40, align 8, !tbaa !38
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 37
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !49
  %98 = and i32 %97, -8
  %99 = icmp eq i32 %98, 8
  %100 = icmp eq i32 %87, %97
  %101 = and i1 %100, %99
  br i1 %101, label %115, label %102

102:                                              ; preds = %95, %90, %85, %80
  %103 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !49
  %105 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %104)
  %106 = icmp eq i32 %105, 8
  %107 = and i1 %72, %106
  %108 = load ptr, ptr %103, align 8, !tbaa !49
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !49
  br i1 %107, label %111, label %112

111:                                              ; preds = %102
  tail call fastcc void @pop_stack(ptr noundef %1, i32 noundef %110)
  tail call fastcc void @replace_reg(ptr noundef nonnull %103, i32 noundef 9)
  br label %115

112:                                              ; preds = %102
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %110)
  %113 = load ptr, ptr %103, align 8, !tbaa !49
  %114 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %113, i32 noundef 0)
  br label %115

115:                                              ; preds = %95, %111, %112, %78
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_regno_note(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !prof !37 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2, %25
  %7 = phi ptr [ %27, %25 ], [ %4, %2 ]
  %8 = phi ptr [ %26, %25 ], [ %3, %2 ]
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  store ptr %24, ptr %8, align 8, !tbaa !38
  br label %30

25:                                               ; preds = %18, %12, %6
  %26 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !209

29:                                               ; preds = %25, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 719, ptr noundef nonnull @.str.4) #21
  br label %30

30:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !prof !37 {
  %5 = alloca %struct.stack_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !126
  %6 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %5, ptr noundef %2)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 915, ptr noundef nonnull @.str.4) #21
  br label %9

9:                                                ; preds = %4, %8
  %10 = icmp eq i32 %6, 8
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %5, align 8, !tbaa !119
  %13 = sub i32 %12, %6
  %14 = add i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !49
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !49
  store i8 %20, ptr %16, align 1, !tbaa !49
  store i8 %17, ptr %19, align 1, !tbaa !49
  br label %21

21:                                               ; preds = %11, %9
  %22 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %5, ptr noundef %3)
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 928, ptr noundef nonnull @.str.4) #21
  br label %25

25:                                               ; preds = %21, %24
  %26 = icmp eq i32 %22, 9
  br i1 %26, label %38, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %5, align 8, !tbaa !119
  %29 = sub i32 %28, %22
  %30 = add i32 %29, 8
  %31 = add nsw i32 %28, -1
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !49
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !49
  store i8 %37, ptr %33, align 1, !tbaa !49
  store i8 %34, ptr %36, align 1, !tbaa !49
  br label %38

38:                                               ; preds = %27, %25
  call fastcc void @change_stack(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_movxf(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @swap_rtx_condition(ptr noundef %0) unnamed_addr #9 !prof !37 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = icmp eq i32 %15, 17
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @next_flags_user(ptr noundef %0)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %124, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  br label %23

23:                                               ; preds = %20, %13, %7, %1
  %24 = phi ptr [ %18, %20 ], [ %0, %13 ], [ %0, %7 ], [ %0, %1 ]
  %25 = phi ptr [ %22, %20 ], [ %3, %13 ], [ %3, %7 ], [ %3, %1 ]
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %29, label %101

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 18
  br i1 %35, label %36, label %101

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !49
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load ptr, ptr %30, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %60, %40
  %43 = phi ptr [ %24, %40 ], [ %52, %60 ]
  %44 = load ptr, ptr @current_block, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.rtl_bb_info, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !129
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -7
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = tail call i32 @reg_mentioned_p(ptr noundef %41, ptr noundef nonnull %52) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50, %57
  %61 = load i32, ptr %52, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %97, label %42, !llvm.loop !210

64:                                               ; preds = %57, %42
  %65 = phi ptr [ %43, %42 ], [ %52, %57 ]
  %66 = load ptr, ptr @current_block, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !49
  %69 = getelementptr inbounds %struct.rtl_bb_info, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !129
  %71 = icmp eq ptr %65, %70
  br i1 %71, label %97, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 23
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !49
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 18
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load i32, ptr %85, align 8, !tbaa !49
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = tail call i32 @dead_or_set_p(ptr noundef %65, ptr noundef %41) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @next_flags_user(ptr noundef %65)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  br label %97

97:                                               ; preds = %60, %64, %91, %72, %78, %84, %88, %94
  %98 = phi ptr [ %92, %94 ], [ %65, %88 ], [ %65, %84 ], [ %65, %78 ], [ %65, %72 ], [ null, %91 ], [ %65, %64 ], [ %52, %60 ]
  %99 = phi ptr [ %96, %94 ], [ %74, %88 ], [ %74, %84 ], [ %74, %78 ], [ %74, %72 ], [ %74, %91 ], [ %25, %64 ], [ %25, %60 ]
  %100 = phi i1 [ true, %94 ], [ false, %88 ], [ false, %84 ], [ false, %78 ], [ false, %72 ], [ false, %91 ], [ false, %64 ], [ false, %60 ]
  br i1 %100, label %101, label %124

101:                                              ; preds = %97, %36, %29, %23
  %102 = phi ptr [ %98, %97 ], [ %24, %36 ], [ %24, %29 ], [ %24, %23 ]
  %103 = phi ptr [ %99, %97 ], [ %25, %36 ], [ %25, %29 ], [ %25, %23 ]
  %104 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %103), !range !144
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 1, i32 1
  store i32 -1, ptr %107, align 8, !tbaa !49
  %108 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !49
  %110 = tail call i32 @recog(ptr noundef %109, ptr noundef %102, ptr noundef null) #21
  store i32 %110, ptr %107, align 8, !tbaa !49
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = load ptr, ptr @ix86_flags_rtx, align 8, !tbaa !38
  %114 = tail call i32 @dead_or_set_p(ptr noundef %102, ptr noundef %113) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = tail call fastcc ptr @next_flags_user(ptr noundef %102)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @swap_rtx_condition(ptr noundef nonnull %117), !range !144
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %119, %106
  %123 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %103), !range !144
  br label %124

124:                                              ; preds = %97, %101, %122, %112, %119, %17
  %125 = phi i32 [ 0, %17 ], [ 0, %122 ], [ 1, %112 ], [ 1, %119 ], [ 0, %101 ], [ 0, %97 ]
  ret i32 %125
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @pop_stack(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 !prof !37 {
  %3 = load i32, ptr %0, align 8, !tbaa !119
  %4 = zext nneg i32 %1 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !120
  %9 = and i64 %8, %6
  store i64 %9, ptr %7, align 8, !tbaa !120
  %10 = add nsw i32 %3, -1
  store i32 %10, ptr %0, align 8, !tbaa !119
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !49
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, %1
  %16 = icmp sgt i32 %3, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %2, %37
  %19 = phi i32 [ %38, %37 ], [ %10, %2 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !49
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = icmp slt i32 %19, %3
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = zext i32 %19 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %31 = add nuw nsw i64 %30, 1
  %32 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !49
  %34 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %30
  store i8 %33, ptr %34, align 1, !tbaa !49
  %35 = trunc i64 %31 to i32
  %36 = icmp sgt i32 %3, %35
  br i1 %36, label %29, label %40, !llvm.loop !211

37:                                               ; preds = %18
  %38 = add nsw i32 %19, -1
  %39 = icmp sgt i32 %19, 0
  br i1 %39, label %18, label %40, !llvm.loop !212

40:                                               ; preds = %37, %29, %25, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @next_flags_user(ptr noundef readonly %0) unnamed_addr #9 !prof !37 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %23 ]
  %4 = load ptr, ptr @current_block, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load ptr, ptr @ix86_flags_rtx, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = tail call i32 @reg_mentioned_p(ptr noundef %18, ptr noundef %20) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %10, %17
  %24 = load i32, ptr %12, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %2, !llvm.loop !213

27:                                               ; preds = %23, %17, %2
  %28 = phi ptr [ null, %2 ], [ %12, %17 ], [ null, %23 ]
  ret ptr %28
}

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @swap_rtx_condition_1(ptr nocapture noundef %0) unnamed_addr #9 !prof !37 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = tail call i32 @swap_condition(i32 noundef %3) #21
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %9, 65535
  %12 = and i32 %10, -65536
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %0, align 8
  br label %55

14:                                               ; preds = %1
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %4
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %18 = load i8, ptr %17, align 1, !tbaa !49
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %52
  %24 = phi i64 [ %22, %20 ], [ %26, %52 ]
  %25 = phi i32 [ 0, %20 ], [ %53, %52 ]
  %26 = add nsw i64 %24, -1
  %27 = getelementptr inbounds i8, ptr %16, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !49
  switch i8 %28, label %52 [
    i8 69, label %29
    i8 101, label %46
  ]

29:                                               ; preds = %23
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = load i32, ptr %31, align 8, !tbaa !61
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = zext nneg i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %38 = phi i32 [ %25, %34 ], [ %44, %36 ]
  %39 = add nsw i64 %37, -1
  %40 = load ptr, ptr %30, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %40, i64 0, i32 1, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %42), !range !144
  %44 = or i32 %43, %38
  %45 = icmp sgt i64 %37, 1
  br i1 %45, label %36, label %52, !llvm.loop !214

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %48 = getelementptr inbounds [1 x %union.rtunion_def], ptr %47, i64 0, i64 %26
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %49), !range !144
  %51 = or i32 %50, %25
  br label %52

52:                                               ; preds = %36, %29, %23, %46
  %53 = phi i32 [ %51, %46 ], [ %25, %23 ], [ %25, %29 ], [ %44, %36 ]
  %54 = icmp sgt i64 %24, 1
  br i1 %54, label %23, label %55, !llvm.loop !215

55:                                               ; preds = %52, %14, %8
  %56 = phi i32 [ 1, %8 ], [ 0, %14 ], [ %53, %52 ]
  ret i32 %56
}

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_note(i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

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
attributes #10 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @rest_of_handle_stack_regs, ptr @df_regs_ever_live_p, i64 304}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !39, i64 8}
!43 = !{!"_IO_FILE", !44, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !44, i64 112, !44, i64 116, !45, i64 120, !46, i64 128, !40, i64 130, !40, i64 131, !39, i64 136, !45, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !45, i64 184, !44, i64 192, !40, i64 196}
!44 = !{!"int", !40, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{!"short", !40, i64 0}
!47 = !{!43, !39, i64 16}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!40, !40, i64 0}
!50 = !{!43, !39, i64 40}
!51 = !{!43, !39, i64 48}
!52 = !{!43, !44, i64 0}
!53 = !{!44, !44, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !44, i64 0}
!58 = !{!"VEC_char_base", !44, i64 0, !44, i64 4, !40, i64 8}
!59 = !{!58, !44, i64 4}
!60 = !{}
!61 = !{!62, !44, i64 0}
!62 = !{!"rtvec_def", !44, i64 0, !40, i64 8}
!63 = distinct !{!63, !55, !56}
!64 = distinct !{!64, !55, !56}
!65 = !{!"function_entry_count", i64 38}
!66 = !{!"reg-stack.c;gate_handle_stack_regs"}
!67 = !{!"reg-stack.c;rest_of_handle_stack_regs"}
!68 = !{!"branch_weights", i32 38, i32 0}
!69 = !{!"branch_weights", i32 304, i32 0}
!70 = !{!"branch_weights", i32 38, i32 266}
!71 = distinct !{!71, !55, !56}
!72 = !{!73, !39, i64 8}
!73 = !{!"function", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !39, i64 128, !44, i64 136, !44, i64 137, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139}
!74 = !{!75, !39, i64 0}
!75 = !{!"control_flow_graph", !39, i64 0, !39, i64 8, !39, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !39, i64 40, !44, i64 48, !40, i64 52, !40, i64 60, !44, i64 68, !44, i64 72}
!76 = !{!77, !39, i64 56}
!77 = !{!"basic_block_def", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !39, i64 48, !39, i64 56, !40, i64 64, !45, i64 72, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96}
!78 = !{!75, !39, i64 8}
!79 = distinct !{!79, !55, !56}
!80 = !{!77, !39, i64 16}
!81 = !{!82, !44, i64 0}
!82 = !{!"VEC_edge_base", !44, i64 0, !44, i64 4, !40, i64 8}
!83 = !{!84, !44, i64 48}
!84 = !{!"edge_def", !39, i64 0, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !45, i64 56}
!85 = !{!84, !39, i64 0}
!86 = !{!87, !44, i64 60}
!87 = !{!"block_info_def", !88, i64 0, !88, i64 24, !45, i64 48, !44, i64 56, !44, i64 60}
!88 = !{!"stack_def", !44, i64 0, !45, i64 8, !40, i64 16}
!89 = distinct !{!89, !55, !56}
!90 = !{!87, !44, i64 0}
!91 = !{!77, !44, i64 80}
!92 = !{!93, !44, i64 16}
!93 = !{!"dataflow", !39, i64 0, !39, i64 8, !44, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !44, i64 48, !40, i64 52, !40, i64 53, !40, i64 54}
!94 = !{!93, !39, i64 8}
!95 = !{!96, !39, i64 24}
!96 = !{!"df_lr_bb_info", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!97 = !{!87, !45, i64 48}
!98 = !{!96, !39, i64 16}
!99 = !{!87, !45, i64 8}
!100 = distinct !{!100, !55, !56}
!101 = distinct !{!101, !55, !56}
!102 = distinct !{!102, !55, !56}
!103 = distinct !{!103, !55, !56}
!104 = !{!84, !39, i64 8}
!105 = distinct !{!105, !55, !56}
!106 = distinct !{!106, !55, !56}
!107 = !{!108, !39, i64 1592}
!108 = !{!"gcc_target", !109, i64 0, !111, i64 368, !112, i64 664, !44, i64 744, !39, i64 752, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !39, i64 816, !39, i64 824, !39, i64 832, !39, i64 840, !39, i64 848, !39, i64 856, !39, i64 864, !39, i64 872, !39, i64 880, !39, i64 888, !39, i64 896, !39, i64 904, !39, i64 912, !39, i64 920, !39, i64 928, !39, i64 936, !39, i64 944, !39, i64 952, !39, i64 960, !39, i64 968, !39, i64 976, !39, i64 984, !39, i64 992, !39, i64 1000, !39, i64 1008, !39, i64 1016, !39, i64 1024, !39, i64 1032, !39, i64 1040, !39, i64 1048, !39, i64 1056, !45, i64 1064, !45, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !113, i64 1176, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !45, i64 1464, !114, i64 1472, !39, i64 1664, !39, i64 1672, !39, i64 1680, !39, i64 1688, !39, i64 1696, !39, i64 1704, !39, i64 1712, !39, i64 1720, !39, i64 1728, !39, i64 1736, !39, i64 1744, !39, i64 1752, !39, i64 1760, !39, i64 1768, !39, i64 1776, !115, i64 1784, !116, i64 1792, !117, i64 1896, !118, i64 1968, !39, i64 2016, !40, i64 2024, !40, i64 2025, !40, i64 2026, !40, i64 2027, !40, i64 2028, !40, i64 2029, !40, i64 2030, !40, i64 2031, !40, i64 2032, !40, i64 2033, !40, i64 2034, !40, i64 2035}
!109 = !{!"asm_out", !39, i64 0, !39, i64 8, !39, i64 16, !110, i64 24, !110, i64 56, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !39, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360}
!110 = !{!"asm_int_op", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!111 = !{!"sched", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288}
!112 = !{!"vectorize", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72}
!113 = !{!"addr_space", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48}
!114 = !{!"calls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184}
!115 = !{!"c", !39, i64 0}
!116 = !{!"cxx", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96}
!117 = !{!"emutls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !40, i64 64, !40, i64 65}
!118 = !{!"target_option_hooks", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!119 = !{!88, !44, i64 0}
!120 = !{!88, !45, i64 8}
!121 = distinct !{!121, !55, !56}
!122 = !{!87, !44, i64 56}
!123 = distinct !{!123, !55, !56}
!124 = distinct !{!124, !55, !56}
!125 = distinct !{!125, !55, !56}
!126 = !{i64 0, i64 4, !53, i64 8, i64 8, !127, i64 16, i64 8, !49}
!127 = !{!45, !45, i64 0}
!128 = !{!77, !39, i64 8}
!129 = !{!130, !39, i64 8}
!130 = !{!"rtl_bb_info", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !44, i64 32}
!131 = distinct !{!131, !55, !56}
!132 = distinct !{!132, !55, !56}
!133 = !{!75, !44, i64 24}
!134 = distinct !{!134, !55, !56}
!135 = !{!77, !44, i64 88}
!136 = !{!84, !44, i64 52}
!137 = !{!84, !45, i64 56}
!138 = !{!77, !39, i64 0}
!139 = distinct !{!139, !55, !56}
!140 = distinct !{!140, !55, !56}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = !{!130, !39, i64 0}
!144 = !{i32 0, i32 2}
!145 = distinct !{!145, !55, !56}
!146 = distinct !{!146, !55, !56}
!147 = distinct !{!147, !55, !56}
!148 = distinct !{!148, !55, !56}
!149 = distinct !{!149, !55, !56}
!150 = distinct !{!150, !55, !56}
!151 = distinct !{!151, !55, !56}
!152 = distinct !{!152, !55, !56}
!153 = distinct !{!153, !55, !56}
!154 = distinct !{!154, !55, !56}
!155 = distinct !{!155, !56}
!156 = distinct !{!156, !55, !56}
!157 = !{!158, !40, i64 1086}
!158 = !{!"recog_data", !40, i64 0, !40, i64 240, !40, i64 480, !40, i64 720, !40, i64 840, !40, i64 960, !40, i64 1072, !40, i64 1086, !40, i64 1087, !40, i64 1088, !40, i64 1089, !39, i64 1120}
!159 = distinct !{!159, !55, !56}
!160 = distinct !{!160, !55, !56}
!161 = distinct !{!161, !55, !56}
!162 = distinct !{!162, !55, !56}
!163 = !{!164, !44, i64 8}
!164 = !{!"operand_alternative", !39, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 24, !44, i64 24, !44, i64 24, !44, i64 24, !44, i64 24, !44, i64 24, !44, i64 24}
!165 = distinct !{!165, !55, !56}
!166 = distinct !{!166, !55, !56}
!167 = distinct !{!167, !55, !56}
!168 = distinct !{!168, !55, !56}
!169 = distinct !{!169, !55, !56}
!170 = !{!164, !44, i64 16}
!171 = distinct !{!171, !55, !56}
!172 = distinct !{!172, !55, !56}
!173 = distinct !{!173, !55, !56}
!174 = distinct !{!174, !55, !56}
!175 = distinct !{!175, !55, !56}
!176 = distinct !{!176, !55, !56}
!177 = distinct !{!177, !55, !56}
!178 = distinct !{!178, !55, !56}
!179 = distinct !{!179, !55, !56}
!180 = distinct !{!180, !55, !56}
!181 = distinct !{!181, !55, !56}
!182 = distinct !{!182, !55, !56}
!183 = distinct !{!183, !55, !56}
!184 = distinct !{!184, !55, !56}
!185 = distinct !{!185, !55, !56}
!186 = distinct !{!186, !55, !56}
!187 = distinct !{!187, !55, !56}
!188 = distinct !{!188, !55, !56}
!189 = distinct !{!189, !55, !56}
!190 = distinct !{!190, !55, !56}
!191 = distinct !{!191, !55, !56}
!192 = distinct !{!192, !55, !56}
!193 = distinct !{!193, !55, !56}
!194 = distinct !{!194, !55, !56}
!195 = distinct !{!195, !55, !56}
!196 = distinct !{!196, !55, !56}
!197 = distinct !{!197, !55, !56}
!198 = distinct !{!198, !55, !56}
!199 = distinct !{!199, !55, !56}
!200 = distinct !{!200, !55, !56}
!201 = distinct !{!201, !55, !56}
!202 = distinct !{!202, !55, !56}
!203 = distinct !{!203, !55, !56}
!204 = distinct !{!204, !55, !56}
!205 = distinct !{!205, !55, !56}
!206 = distinct !{!206, !55, !56}
!207 = distinct !{!207, !55, !56}
!208 = distinct !{!208, !55, !56}
!209 = distinct !{!209, !55, !56}
!210 = distinct !{!210, !55, !56}
!211 = distinct !{!211, !55, !56}
!212 = distinct !{!212, !55, !56}
!213 = distinct !{!213, !55, !56}
!214 = distinct !{!214, !55, !56}
!215 = distinct !{!215, !55, !56}
