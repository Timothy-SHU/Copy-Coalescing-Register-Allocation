; ModuleID = 'regrename.c'
source_filename = "regrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.du_head = type { ptr, ptr, ptr, i32, i32, i32, %struct.bitmap_head_def, i64, i8 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.du_chain = type { ptr, ptr, ptr, i16 }
%struct.VEC_du_head_p_base = type { i32, i32, [1 x ptr] }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"rnreg\00", align 1
@pass_regrename = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_regrename, ptr @regrename_optimize, ptr null, ptr null, i32 0, i32 157, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_rename_registers = external local_unnamed_addr global i32, align 4
@rename_obstack = internal global %struct.obstack zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@id_to_chain = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"\0ABasic block %d:\0A\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"Register %s in insn %d\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c" crosses a call\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"; no available better choice\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", renamed as %s\0A\00", align 1
@closed_chains = internal unnamed_addr global ptr null, align 8
@open_chains = internal unnamed_addr global ptr null, align 8
@fail_current_block = internal unnamed_addr global i1 false, align 1
@current_id = internal unnamed_addr global i32 0, align 4
@open_chains_set = internal global %struct.bitmap_head_def zeroinitializer, align 8
@bitmap_default_obstack = external global %struct.bitmap_obstack, align 8
@live_in_chains = internal global i64 0, align 8
@live_hard_regs = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"regrename.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@df = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Creating chain %s (%d)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" at insn %d\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@.str.11 = private unnamed_addr constant [45 x i8] c"Cannot rename chain %s (%d) at insn %d (%s)\0A\00", align 1
@scan_actions_name = internal unnamed_addr constant [6 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@.str.12 = private unnamed_addr constant [47 x i8] c"Widening register in chain %s (%d) at insn %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Failing basic block due to unhandled overlap\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Closing chain %s (%d) at insn %d (%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"terminate_write\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"terminate_dead\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"mark_all_read\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mark_read\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mark_write\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mark_access\00", align 1
@reg_renumber = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"Register %s (%d):\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" %d [%s]\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_regrename() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_rename_registers, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !56
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @regrename_optimize() #10 !prof !34 {
  %1 = alloca [30 x ptr], align 16
  %2 = alloca [14 x ptr], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [53 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %5) #18
  %6 = tail call i32 @df_set_flags(i32 noundef 1) #18
  tail call void @df_note_add_problem() #18
  tail call void @df_analyze() #18
  %7 = tail call i32 @df_set_flags(i32 noundef 32) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) %5, i8 0, i64 212, i1 false)
  %8 = tail call i32 @_obstack_begin(ptr noundef nonnull @rename_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #18
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 0) #18
  br label %16

16:                                               ; preds = %0, %15
  %17 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  store ptr %19, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %24 = or i8 %23, 2
  store i8 %24, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %25

25:                                               ; preds = %16, %22
  %26 = ptrtoint ptr %20 to i64
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %27 = ptrtoint ptr %19 to i64
  %28 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !62
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = xor i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = inttoptr i64 %33 to ptr
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !63
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %33, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %36
  %41 = icmp sgt i64 %37, %40
  %42 = select i1 %41, ptr %38, ptr %34
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %43 = load ptr, ptr @cfun, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %993, label %52

52:                                               ; preds = %25, %984
  %53 = phi ptr [ %986, %984 ], [ %48, %25 ]
  %54 = phi i32 [ %522, %984 ], [ 0, %25 ]
  %55 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 0) #18
  store ptr %55, ptr @id_to_chain, align 8, !tbaa !35
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !71
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %56, ptr noundef nonnull @.str.1, i32 noundef %60)
  br label %62

62:                                               ; preds = %58, %52
  store ptr null, ptr @closed_chains, align 8, !tbaa !35
  store ptr null, ptr @open_chains, align 8, !tbaa !35
  store i1 false, ptr @fail_current_block, align 1
  store i32 0, ptr @current_id, align 4, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @open_chains_set, i8 0, i64 16, i1 false)
  store ptr @bitmap_default_obstack, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @open_chains_set, i64 0, i32 3), align 8, !tbaa !72
  store i64 0, ptr @live_in_chains, align 8, !tbaa !74
  store i64 0, ptr @live_hard_regs, align 8, !tbaa !74
  %63 = call ptr @df_get_live_in(ptr noundef %53) #18
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull @live_hard_regs, ptr noundef %63) #18
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !71
  %66 = load ptr, ptr @df, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.dataflow, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !75
  %71 = icmp ugt i32 %70, %65
  call void @llvm.assume(i1 %71)
  %72 = getelementptr inbounds %struct.dataflow, ptr %68, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !77
  %74 = zext i32 %65 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = load ptr, ptr %76, align 8, !tbaa !78
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  %79 = icmp eq ptr %78, null
  br i1 %79, label %100, label %80

80:                                               ; preds = %62
  %81 = load i64, ptr @live_hard_regs, align 8, !tbaa !74
  br label %82

82:                                               ; preds = %80, %95
  %83 = phi ptr [ %98, %95 ], [ %78, %80 ]
  %84 = phi ptr [ %97, %95 ], [ %77, %80 ]
  %85 = phi i64 [ %96, %95 ], [ %81, %80 ]
  %86 = load i32, ptr %83, align 8
  %87 = and i32 %86, 131072
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.df_base_ref, ptr %83, i64 0, i32 6
  %91 = load i32, ptr %90, align 8, !tbaa !46
  %92 = zext nneg i32 %91 to i64
  %93 = shl nuw i64 1, %92
  %94 = or i64 %93, %85
  store i64 %94, ptr @live_hard_regs, align 8, !tbaa !74
  br label %95

95:                                               ; preds = %89, %82
  %96 = phi i64 [ %94, %89 ], [ %85, %82 ]
  %97 = getelementptr inbounds ptr, ptr %84, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %82, !llvm.loop !80

100:                                              ; preds = %95, %62
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  br label %103

103:                                              ; preds = %442, %100
  %104 = phi ptr [ %102, %100 ], [ %447, %442 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = add nsw i32 %107, -11
  %109 = icmp ult i32 %108, -3
  br i1 %109, label %426, label %110

110:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 23, ptr %3, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 25, ptr %4, align 4, !tbaa !50
  call void @extract_insn(ptr noundef nonnull %105) #18
  %111 = call i32 @constrain_operands(i32 noundef 1) #18
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @_fatal_insn_not_found(ptr noundef nonnull %105, ptr noundef nonnull @.str.6, i32 noundef 1127, ptr noundef nonnull @.str.7) #18
  br label %114

114:                                              ; preds = %113, %110
  call void @preprocess_constraints() #18
  %115 = load i32, ptr @which_alternative, align 4, !tbaa !50
  %116 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !81
  %117 = sext i8 %116 to i32
  %118 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !46
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 14
  %123 = icmp sgt i8 %116, 0
  br i1 %123, label %124, label %210

124:                                              ; preds = %114
  %125 = sext i32 %115 to i64
  %126 = zext nneg i32 %117 to i64
  br label %127

127:                                              ; preds = %124, %207
  %128 = phi i64 [ 0, %124 ], [ %208, %207 ]
  %129 = phi i64 [ 0, %124 ], [ %174, %207 ]
  %130 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %128
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  %132 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %128, i64 %125, i32 3
  %133 = load i32, ptr %132, align 16, !tbaa !83
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %152

135:                                              ; preds = %127
  %136 = zext nneg i32 %133 to i64
  %137 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %136, i64 %125, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !85
  %139 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %128, i64 %125, i32 1
  store i32 %138, ptr %139, align 8, !tbaa !85
  %140 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %128
  store i32 2, ptr %140, align 4, !tbaa !50
  %141 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %128
  %142 = load i32, ptr %141, align 4, !tbaa !50
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !46
  %146 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %136
  %147 = load i32, ptr %146, align 4, !tbaa !50
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !46
  %151 = icmp eq i8 %145, %150
  br i1 %151, label %173, label %163

152:                                              ; preds = %127
  %153 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %128, i64 %125, i32 4
  %154 = load i32, ptr %153, align 4, !tbaa !86
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  br i1 %122, label %157, label %173

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %128
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %173

161:                                              ; preds = %157, %152
  %162 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %128
  store i32 2, ptr %162, align 4, !tbaa !50
  br label %173

163:                                              ; preds = %135
  %164 = call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %131, ptr noundef nonnull @live_in_chains), !range !87
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = trunc i64 %128 to i32
  %168 = shl nuw i32 1, %167
  %169 = shl nuw i32 1, %133
  %170 = or i32 %169, %168
  %171 = sext i32 %170 to i64
  %172 = or i64 %129, %171
  br label %173

173:                                              ; preds = %166, %163, %161, %157, %156, %135
  %174 = phi i64 [ %129, %163 ], [ %172, %166 ], [ %129, %135 ], [ %129, %161 ], [ %129, %157 ], [ %129, %156 ]
  %175 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %128
  %176 = load i32, ptr %175, align 4, !tbaa !50
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %207

178:                                              ; preds = %173
  %179 = trunc i64 %128 to i32
  %180 = shl nuw i32 1, %179
  %181 = sext i32 %180 to i64
  %182 = and i64 %174, %181
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %207

184:                                              ; preds = %178
  %185 = load i32, ptr %131, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 37
  br i1 %187, label %188, label %207

188:                                              ; preds = %184
  %189 = call fastcc zeroext i8 @verify_reg_in_set(ptr noundef nonnull %131, ptr noundef nonnull @live_hard_regs), !range !87
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call fastcc zeroext i8 @verify_reg_in_set(ptr noundef nonnull %131, ptr noundef nonnull @live_in_chains), !range !87
  br label %193

193:                                              ; preds = %191, %188
  %194 = phi i8 [ 1, %188 ], [ %192, %191 ]
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = load i32, ptr %131, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !46
  %202 = zext i32 %201 to i64
  %203 = zext nneg i32 %199 to i64
  %204 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %202, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !46
  %206 = zext i8 %205 to i32
  call fastcc void @create_new_chain(i32 noundef %201, i32 noundef %206, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %207

207:                                              ; preds = %196, %193, %184, %178, %173
  %208 = add nuw nsw i64 %128, 1
  %209 = icmp eq i64 %208, %126
  br i1 %209, label %210, label %127, !llvm.loop !88

210:                                              ; preds = %207, %114
  %211 = phi i64 [ 0, %114 ], [ %174, %207 ]
  %212 = load i1, ptr @fail_current_block, align 1
  br i1 %212, label %448, label %213

213:                                              ; preds = %210
  call fastcc void @hide_operands(i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %211, i8 noundef zeroext 0)
  %214 = load ptr, ptr %118, align 8, !tbaa !46
  call void @note_stores(ptr noundef %214, ptr noundef nonnull @note_sets_clobbers, ptr noundef nonnull %4) #18
  call fastcc void @restore_operands(ptr noundef nonnull %105, i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call fastcc void @record_out_operands(ptr noundef nonnull %105, i8 noundef zeroext 1)
  call fastcc void @hide_operands(i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %211, i8 noundef zeroext 0)
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %118, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  call fastcc void @restore_operands(ptr noundef nonnull %105, i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %215 = load i32, ptr %105, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 10
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1, i32 1, i32 0, i32 0, i64 2
  %220 = load ptr, ptr %219, align 8, !tbaa !46
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %219, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  br label %223

223:                                              ; preds = %222, %218, %213
  %224 = load ptr, ptr %118, align 8, !tbaa !46
  %225 = call i32 @asm_noperands(ptr noundef %224) #18
  %226 = icmp sgt i32 %225, 0
  %227 = icmp sgt i8 %116, 0
  %228 = and i1 %226, %227
  br i1 %228, label %229, label %252

229:                                              ; preds = %223
  %230 = zext i32 %117 to i64
  br label %231

231:                                              ; preds = %229, %249
  %232 = phi i64 [ 0, %229 ], [ %250, %249 ]
  %233 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !35
  %235 = load ptr, ptr %234, align 8, !tbaa !35
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 37
  br i1 %238, label %239, label %249

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !46
  %242 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1, i32 0, i32 0, i64 1
  %243 = load i32, ptr %242, align 8, !tbaa !46
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %232
  %247 = load i32, ptr %246, align 4, !tbaa !50
  switch i32 %247, label %249 [
    i32 0, label %248
    i32 2, label %248
  ]

248:                                              ; preds = %245, %245
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %234, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  br label %249

249:                                              ; preds = %248, %245, %239, %231
  %250 = add nuw nsw i64 %232, 1
  %251 = icmp eq i64 %250, %230
  br i1 %251, label %252, label %231, !llvm.loop !89

252:                                              ; preds = %249, %223
  %253 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !90
  %254 = sext i8 %253 to i32
  %255 = add nsw i32 %254, %117
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %307

257:                                              ; preds = %252
  %258 = sext i32 %115 to i64
  %259 = sext i8 %116 to i64
  %260 = sext i8 %116 to i64
  %261 = sext i8 %116 to i64
  br label %262

262:                                              ; preds = %257, %300
  %263 = phi i64 [ 0, %257 ], [ %301, %300 ]
  %264 = icmp slt i64 %263, %261
  %265 = trunc i64 %263 to i32
  br i1 %264, label %271, label %266

266:                                              ; preds = %262
  %267 = sub nsw i64 %263, %260
  %268 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !46
  %270 = sext i8 %269 to i32
  br label %271

271:                                              ; preds = %266, %262
  %272 = phi i32 [ %270, %266 ], [ %265, %262 ]
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %273
  %275 = sub nsw i64 %263, %259
  %276 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %275
  %277 = select i1 %264, ptr %274, ptr %276
  %278 = load ptr, ptr %277, align 8, !tbaa !35
  %279 = sext i32 %272 to i64
  %280 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %279, i64 %258, i32 1
  %281 = load i32, ptr %280, align 8, !tbaa !85
  %282 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %279
  %283 = load i32, ptr %282, align 4, !tbaa !50
  %284 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %279
  %285 = load ptr, ptr %284, align 8, !tbaa !35
  %286 = load i8, ptr %285, align 1, !tbaa !46
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %271
  %289 = shl nuw i32 1, %272
  %290 = sext i32 %289 to i64
  %291 = and i64 %211, %290
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %279, i64 %258, i32 5
  %295 = load i8, ptr %294, align 8
  %296 = and i8 %295, 64
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %293
  call fastcc void @scan_rtx_address(ptr noundef nonnull %105, ptr noundef %278, i32 noundef %281, i32 noundef 3)
  br label %300

299:                                              ; preds = %293
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef %278, i32 noundef %281, i32 noundef 3, i32 noundef %283)
  br label %300

300:                                              ; preds = %299, %298, %288, %271
  %301 = add nuw nsw i64 %263, 1
  %302 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !90
  %303 = sext i8 %302 to i32
  %304 = add nsw i32 %303, %117
  %305 = sext i32 %304 to i64
  %306 = icmp slt i64 %301, %305
  br i1 %306, label %262, label %307, !llvm.loop !91

307:                                              ; preds = %300, %252
  %308 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !46
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %321, %307
  %312 = load ptr, ptr %308, align 8, !tbaa !46
  %313 = icmp eq ptr %312, null
  br i1 %313, label %359, label %325

314:                                              ; preds = %307, %321
  %315 = phi ptr [ %323, %321 ], [ %309, %307 ]
  %316 = load i32, ptr %315, align 8
  %317 = lshr i32 %316, 16
  %318 = trunc i32 %317 to i8
  switch i8 %318, label %321 [
    i8 2, label %319
    i8 17, label %319
  ]

319:                                              ; preds = %314, %314
  %320 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %320, i32 noundef 26, i32 noundef 3, i32 noundef 2)
  br label %321

321:                                              ; preds = %319, %314
  %322 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1, i32 0, i32 0, i64 1
  %323 = load ptr, ptr %322, align 8, !tbaa !46
  %324 = icmp eq ptr %323, null
  br i1 %324, label %311, label %314, !llvm.loop !92

325:                                              ; preds = %311, %355
  %326 = phi ptr [ %357, %355 ], [ %312, %311 ]
  %327 = load i32, ptr %326, align 8
  %328 = and i32 %327, 16711680
  %329 = icmp eq i32 %328, 65536
  br i1 %329, label %330, label %355

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = load i32, ptr %332, align 8
  %334 = lshr i32 %333, 16
  %335 = and i32 %334, 255
  %336 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %337 = load i32, ptr %336, align 8, !tbaa !46
  %338 = zext i32 %337 to i64
  %339 = zext nneg i32 %335 to i64
  %340 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %338, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !46
  %342 = zext i8 %341 to i32
  %343 = add i32 %337, %342
  %344 = load i64, ptr @live_hard_regs, align 8, !tbaa !74
  br label %345

345:                                              ; preds = %345, %330
  %346 = phi i64 [ %344, %330 ], [ %351, %345 ]
  %347 = phi i32 [ %337, %330 ], [ %352, %345 ]
  %348 = zext nneg i32 %347 to i64
  %349 = shl nuw i64 1, %348
  %350 = xor i64 %349, -1
  %351 = and i64 %346, %350
  %352 = add i32 %347, 1
  %353 = icmp ult i32 %352, %343
  br i1 %353, label %345, label %354, !llvm.loop !93

354:                                              ; preds = %345
  store i64 %351, ptr @live_hard_regs, align 8, !tbaa !74
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %331, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %355

355:                                              ; preds = %354, %325
  %356 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !46
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %325, !llvm.loop !94

359:                                              ; preds = %355, %311
  %360 = load i32, ptr %105, align 8
  %361 = and i32 %360, 65535
  %362 = icmp ne i32 %361, 10
  %363 = load ptr, ptr @open_chains, align 8
  %364 = icmp eq ptr %363, null
  %365 = select i1 %362, i1 true, i1 %364
  br i1 %365, label %373, label %366

366:                                              ; preds = %359, %366
  %367 = phi ptr [ %371, %366 ], [ %363, %359 ]
  %368 = getelementptr inbounds %struct.du_head, ptr %367, i64 0, i32 8
  %369 = load i8, ptr %368, align 8
  %370 = or i8 %369, 2
  store i8 %370, ptr %368, align 8
  %371 = load ptr, ptr %367, align 8, !tbaa !35
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %366, !llvm.loop !95

373:                                              ; preds = %366, %359
  call fastcc void @hide_operands(i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %211, i8 noundef zeroext 1)
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %118, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call fastcc void @restore_operands(ptr noundef nonnull %105, i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call fastcc void @hide_operands(i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %211, i8 noundef zeroext 0)
  %374 = load ptr, ptr %118, align 8, !tbaa !46
  call void @note_stores(ptr noundef %374, ptr noundef nonnull @note_sets_clobbers, ptr noundef nonnull %3) #18
  call fastcc void @restore_operands(ptr noundef nonnull %105, i32 noundef %117, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call fastcc void @record_out_operands(ptr noundef nonnull %105, i8 noundef zeroext 0)
  %375 = load ptr, ptr %308, align 8, !tbaa !46
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %380

377:                                              ; preds = %387, %373
  %378 = load ptr, ptr %308, align 8, !tbaa !46
  %379 = icmp eq ptr %378, null
  br i1 %379, label %425, label %391

380:                                              ; preds = %373, %387
  %381 = phi ptr [ %389, %387 ], [ %375, %373 ]
  %382 = load i32, ptr %381, align 8
  %383 = and i32 %382, 16711680
  %384 = icmp eq i32 %383, 1114112
  br i1 %384, label %385, label %387

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.rtx_def, ptr %381, i64 0, i32 1
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %386, i32 noundef 26, i32 noundef 5, i32 noundef 2)
  br label %387

387:                                              ; preds = %385, %380
  %388 = getelementptr inbounds %struct.rtx_def, ptr %381, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !46
  %390 = icmp eq ptr %389, null
  br i1 %390, label %377, label %380, !llvm.loop !96

391:                                              ; preds = %377, %421
  %392 = phi ptr [ %423, %421 ], [ %378, %377 ]
  %393 = load i32, ptr %392, align 8
  %394 = and i32 %393, 16711680
  %395 = icmp eq i32 %394, 393216
  br i1 %395, label %396, label %421

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !46
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 16
  %401 = and i32 %400, 255
  %402 = getelementptr inbounds %struct.rtx_def, ptr %398, i64 0, i32 1
  %403 = load i32, ptr %402, align 8, !tbaa !46
  %404 = zext i32 %403 to i64
  %405 = zext nneg i32 %401 to i64
  %406 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %404, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !46
  %408 = zext i8 %407 to i32
  %409 = add i32 %403, %408
  %410 = load i64, ptr @live_hard_regs, align 8, !tbaa !74
  br label %411

411:                                              ; preds = %411, %396
  %412 = phi i64 [ %410, %396 ], [ %417, %411 ]
  %413 = phi i32 [ %403, %396 ], [ %418, %411 ]
  %414 = zext nneg i32 %413 to i64
  %415 = shl nuw i64 1, %414
  %416 = xor i64 %415, -1
  %417 = and i64 %412, %416
  %418 = add i32 %413, 1
  %419 = icmp ult i32 %418, %409
  br i1 %419, label %411, label %420, !llvm.loop !93

420:                                              ; preds = %411
  store i64 %417, ptr @live_hard_regs, align 8, !tbaa !74
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %397, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %421

421:                                              ; preds = %420, %391
  %422 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !46
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %391, !llvm.loop !97

425:                                              ; preds = %421, %377
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %1) #18
  br i1 %212, label %449, label %442

426:                                              ; preds = %103
  %427 = icmp eq i32 %107, 7
  br i1 %427, label %428, label %442

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !46
  %431 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1, i32 0, i32 0, i64 1
  %432 = load ptr, ptr %431, align 8, !tbaa !46
  %433 = load i32, ptr %432, align 8
  %434 = and i32 %433, 65535
  %435 = icmp eq i32 %434, 25
  br i1 %435, label %436, label %441

436:                                              ; preds = %428
  %437 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 0, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !46
  %439 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %440 = icmp eq ptr %438, %439
  br i1 %440, label %442, label %441

441:                                              ; preds = %436, %428
  call fastcc void @scan_rtx(ptr noundef nonnull %105, ptr noundef nonnull %431, i32 noundef 26, i32 noundef 3, i32 noundef 0)
  br label %442

442:                                              ; preds = %441, %436, %426, %425
  %443 = load ptr, ptr %101, align 8, !tbaa !46
  %444 = getelementptr inbounds %struct.rtl_bb_info, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !98
  %446 = icmp eq ptr %105, %445
  %447 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %446, label %449, label %103, !llvm.loop !100

448:                                              ; preds = %210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %1) #18
  br label %449

449:                                              ; preds = %425, %442, %448
  call void @bitmap_clear(ptr noundef nonnull @open_chains_set) #18
  %450 = load i1, ptr @fail_current_block, align 1
  %451 = load ptr, ptr @closed_chains, align 8
  %452 = select i1 %450, ptr null, ptr %451
  %453 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %454 = icmp eq ptr %453, null
  %455 = icmp eq ptr %452, null
  %456 = select i1 %454, i1 true, i1 %455
  br i1 %456, label %491, label %457

457:                                              ; preds = %449, %486
  %458 = phi ptr [ %489, %486 ], [ %452, %449 ]
  %459 = getelementptr inbounds %struct.du_head, ptr %458, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !101
  %461 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %462 = getelementptr inbounds %struct.du_head, ptr %458, i64 0, i32 3
  %463 = load i32, ptr %462, align 8, !tbaa !103
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !35
  %467 = getelementptr inbounds %struct.du_head, ptr %458, i64 0, i32 4
  %468 = load i32, ptr %467, align 4, !tbaa !104
  %469 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %461, ptr noundef nonnull @.str.21, ptr noundef %466, i32 noundef %468)
  %470 = icmp eq ptr %460, null
  br i1 %470, label %486, label %471

471:                                              ; preds = %457, %471
  %472 = phi ptr [ %484, %471 ], [ %460, %457 ]
  %473 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %474 = getelementptr inbounds %struct.du_chain, ptr %472, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !105
  %476 = getelementptr inbounds %struct.rtx_def, ptr %475, i64 0, i32 1
  %477 = load i32, ptr %476, align 8, !tbaa !46
  %478 = getelementptr inbounds %struct.du_chain, ptr %472, i64 0, i32 3
  %479 = load i16, ptr %478, align 8
  %480 = zext i16 %479 to i64
  %481 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !35
  %483 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.22, i32 noundef %477, ptr noundef %482)
  %484 = load ptr, ptr %472, align 8, !tbaa !107
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %471, !llvm.loop !108

486:                                              ; preds = %471, %457
  %487 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %488 = call i32 @fputc(i32 10, ptr %487)
  %489 = load ptr, ptr %458, align 8, !tbaa !109
  %490 = icmp eq ptr %489, null
  br i1 %490, label %491, label %457, !llvm.loop !110

491:                                              ; preds = %486, %449
  %492 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !111
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %518, label %494

494:                                              ; preds = %491
  %495 = load i8, ptr getelementptr inbounds ([53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 20, i64 16), align 4, !tbaa !46
  %496 = call i8 @llvm.umax.i8(i8 %495, i8 1)
  %497 = zext i8 %496 to i64
  %498 = add nuw nsw i64 %497, 19
  br label %499

499:                                              ; preds = %499, %494
  %500 = phi i64 [ %504, %499 ], [ 20, %494 ]
  %501 = phi i64 [ %503, %499 ], [ 0, %494 ]
  %502 = shl nuw i64 1, %500
  %503 = or i64 %502, %501
  %504 = add nuw nsw i64 %500, 1
  %505 = icmp eq i64 %500, %498
  br i1 %505, label %506, label %499, !llvm.loop !120

506:                                              ; preds = %499
  %507 = load i8, ptr getelementptr inbounds ([53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 6, i64 16), align 2, !tbaa !46
  %508 = call i8 @llvm.umax.i8(i8 %507, i8 1)
  %509 = zext i8 %508 to i64
  %510 = add nuw nsw i64 %509, 5
  br label %511

511:                                              ; preds = %511, %506
  %512 = phi i64 [ %516, %511 ], [ 6, %506 ]
  %513 = phi i64 [ %515, %511 ], [ %503, %506 ]
  %514 = shl nuw i64 1, %512
  %515 = or i64 %514, %513
  %516 = add nuw nsw i64 %512, 1
  %517 = icmp eq i64 %512, %510
  br i1 %517, label %518, label %511, !llvm.loop !120

518:                                              ; preds = %511, %491
  %519 = phi i64 [ 0, %491 ], [ %515, %511 ]
  %520 = icmp eq ptr %452, null
  br i1 %520, label %521, label %523

521:                                              ; preds = %948, %518
  %522 = phi i32 [ %54, %518 ], [ %949, %948 ]
  br label %951

523:                                              ; preds = %518, %948
  %524 = phi i32 [ %949, %948 ], [ %54, %518 ]
  %525 = phi ptr [ %528, %948 ], [ %452, %518 ]
  %526 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 3
  %527 = load i32, ptr %526, align 8, !tbaa !103
  %528 = load ptr, ptr %525, align 8, !tbaa !109
  %529 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 8
  %530 = load i8, ptr %529, align 8
  %531 = and i8 %530, 4
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %533, label %948, !llvm.loop !121

533:                                              ; preds = %523
  %534 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 4
  %535 = load i32, ptr %534, align 4, !tbaa !104
  %536 = sext i32 %527 to i64
  %537 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %536
  %538 = load i8, ptr %537, align 1, !tbaa !46
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %540, label %948, !llvm.loop !121

540:                                              ; preds = %533
  %541 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %536
  %542 = load i8, ptr %541, align 1, !tbaa !46
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %544, label %948, !llvm.loop !121

544:                                              ; preds = %540
  %545 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !111
  %546 = icmp ne i8 %545, 0
  %547 = icmp eq i32 %527, 6
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %948, label %549, !llvm.loop !121

549:                                              ; preds = %544
  %550 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !35
  %552 = icmp eq ptr %551, null
  br i1 %552, label %576, label %553

553:                                              ; preds = %549, %571
  %554 = phi ptr [ %574, %571 ], [ %551, %549 ]
  %555 = phi i32 [ %573, %571 ], [ 0, %549 ]
  %556 = phi i64 [ %572, %571 ], [ %519, %549 ]
  %557 = getelementptr inbounds %struct.du_chain, ptr %554, i64 0, i32 1
  %558 = load ptr, ptr %557, align 8, !tbaa !105
  %559 = load i32, ptr %558, align 8
  %560 = and i32 %559, 65535
  %561 = icmp eq i32 %560, 7
  br i1 %561, label %571, label %562

562:                                              ; preds = %553
  %563 = add nsw i32 %555, 1
  %564 = getelementptr inbounds %struct.du_chain, ptr %554, i64 0, i32 3
  %565 = load i16, ptr %564, align 8
  %566 = zext i16 %565 to i64
  %567 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %566
  %568 = load i64, ptr %567, align 8, !tbaa !74
  %569 = xor i64 %568, -1
  %570 = or i64 %556, %569
  br label %571

571:                                              ; preds = %553, %562
  %572 = phi i64 [ %556, %553 ], [ %570, %562 ]
  %573 = phi i32 [ %555, %553 ], [ %563, %562 ]
  %574 = load ptr, ptr %554, align 8, !tbaa !35
  %575 = icmp eq ptr %574, null
  br i1 %575, label %576, label %553, !llvm.loop !122

576:                                              ; preds = %571, %549
  %577 = phi i64 [ %519, %549 ], [ %572, %571 ]
  %578 = phi i32 [ 0, %549 ], [ %573, %571 ]
  %579 = icmp slt i32 %578, 2
  br i1 %579, label %948, label %580, !llvm.loop !121

580:                                              ; preds = %576
  %581 = and i8 %530, 2
  %582 = icmp eq i8 %581, 0
  %583 = load i64, ptr @call_used_reg_set, align 8
  %584 = select i1 %582, i64 0, i64 %583
  %585 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 7
  %586 = load i64, ptr %585, align 8, !tbaa !123
  %587 = or i64 %586, %577
  %588 = or i64 %587, %584
  %589 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 6
  %590 = load ptr, ptr %589, align 8, !tbaa !124
  %591 = icmp eq ptr %590, null
  %592 = select i1 %591, ptr @bitmap_zero_bits, ptr %590
  %593 = getelementptr inbounds %struct.bitmap_element_def, ptr %592, i64 0, i32 2
  %594 = load i32, ptr %593, align 8, !tbaa !125
  %595 = shl i32 %594, 7
  %596 = getelementptr inbounds %struct.bitmap_element_def, ptr %592, i64 0, i32 3
  %597 = load i64, ptr %596, align 8, !tbaa !74
  %598 = icmp eq i64 %597, 0
  %599 = zext i1 %598 to i32
  %600 = or disjoint i32 %595, %599
  %601 = load ptr, ptr @id_to_chain, align 8
  br label %602

602:                                              ; preds = %685, %580
  %603 = phi i64 [ %588, %580 ], [ %686, %685 ]
  %604 = phi i32 [ 0, %580 ], [ %659, %685 ]
  %605 = phi i64 [ %597, %580 ], [ %687, %685 ]
  %606 = phi ptr [ %592, %580 ], [ %661, %685 ]
  %607 = phi i32 [ %600, %580 ], [ %688, %685 ]
  %608 = icmp eq i64 %605, 0
  br i1 %608, label %623, label %609

609:                                              ; preds = %637, %602
  %610 = phi i32 [ %604, %602 ], [ %638, %637 ]
  %611 = phi i64 [ %605, %602 ], [ %642, %637 ]
  %612 = phi ptr [ %606, %602 ], [ %629, %637 ]
  %613 = phi i32 [ %607, %602 ], [ %639, %637 ]
  %614 = and i64 %611, 1
  %615 = icmp eq i64 %614, 0
  br i1 %615, label %616, label %658

616:                                              ; preds = %609, %616
  %617 = phi i32 [ %620, %616 ], [ %613, %609 ]
  %618 = phi i64 [ %619, %616 ], [ %611, %609 ]
  %619 = lshr exact i64 %618, 1
  %620 = add i32 %617, 1
  %621 = and i64 %618, 2
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %616, label %658, !llvm.loop !127

623:                                              ; preds = %602
  %624 = add i32 %607, 63
  %625 = and i32 %624, -64
  %626 = add i32 %604, 1
  br label %627

627:                                              ; preds = %654, %623
  %628 = phi i64 [ %605, %623 ], [ %649, %654 ]
  %629 = phi ptr [ %606, %623 ], [ %652, %654 ]
  %630 = phi i32 [ %625, %623 ], [ %657, %654 ]
  %631 = phi i32 [ %626, %623 ], [ 0, %654 ]
  %632 = icmp eq i32 %631, 2
  br i1 %632, label %648, label %633

633:                                              ; preds = %627
  %634 = add i32 %630, 128
  %635 = shl i32 %631, 6
  %636 = sub i32 %634, %635
  br label %637

637:                                              ; preds = %633, %644
  %638 = phi i32 [ %646, %644 ], [ %631, %633 ]
  %639 = phi i32 [ %645, %644 ], [ %630, %633 ]
  %640 = zext i32 %638 to i64
  %641 = getelementptr inbounds %struct.bitmap_element_def, ptr %629, i64 0, i32 3, i64 %640
  %642 = load i64, ptr %641, align 8, !tbaa !74
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %609

644:                                              ; preds = %637
  %645 = add i32 %639, 64
  %646 = add i32 %638, 1
  %647 = icmp eq i32 %646, 2
  br i1 %647, label %648, label %637, !llvm.loop !128

648:                                              ; preds = %644, %627
  %649 = phi i64 [ %628, %627 ], [ %642, %644 ]
  %650 = phi i32 [ %630, %627 ], [ %636, %644 ]
  %651 = phi i32 [ %631, %627 ], [ 2, %644 ]
  %652 = load ptr, ptr %629, align 8, !tbaa !129
  %653 = icmp eq ptr %652, null
  br i1 %653, label %658, label %654

654:                                              ; preds = %648
  %655 = getelementptr inbounds %struct.bitmap_element_def, ptr %652, i64 0, i32 2
  %656 = load i32, ptr %655, align 8, !tbaa !125
  %657 = shl i32 %656, 7
  br label %627, !llvm.loop !130

658:                                              ; preds = %648, %616, %609
  %659 = phi i32 [ %610, %609 ], [ %610, %616 ], [ %651, %648 ]
  %660 = phi i64 [ %611, %609 ], [ %619, %616 ], [ %649, %648 ]
  %661 = phi ptr [ %612, %609 ], [ %612, %616 ], [ %652, %648 ]
  %662 = phi i32 [ %613, %609 ], [ %620, %616 ], [ %650, %648 ]
  %663 = phi i1 [ false, %609 ], [ false, %616 ], [ true, %648 ]
  br i1 %663, label %689, label %664

664:                                              ; preds = %658
  %665 = zext i32 %662 to i64
  %666 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %601, i64 0, i32 2, i64 %665
  %667 = load ptr, ptr %666, align 8, !tbaa !35
  %668 = getelementptr inbounds %struct.du_head, ptr %667, i64 0, i32 4
  %669 = load i32, ptr %668, align 4, !tbaa !104
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %685, label %671

671:                                              ; preds = %664
  %672 = getelementptr inbounds %struct.du_head, ptr %667, i64 0, i32 3
  %673 = load i32, ptr %672, align 8, !tbaa !103
  %674 = zext i32 %669 to i64
  br label %675

675:                                              ; preds = %671, %675
  %676 = phi i64 [ %674, %671 ], [ %678, %675 ]
  %677 = phi i64 [ %603, %671 ], [ %683, %675 ]
  %678 = add nsw i64 %676, -1
  %679 = trunc i64 %678 to i32
  %680 = add i32 %673, %679
  %681 = zext nneg i32 %680 to i64
  %682 = shl nuw i64 1, %681
  %683 = or i64 %682, %677
  %684 = icmp eq i32 %679, 0
  br i1 %684, label %685, label %675, !llvm.loop !131

685:                                              ; preds = %675, %664
  %686 = phi i64 [ %603, %664 ], [ %683, %675 ]
  %687 = lshr i64 %660, 1
  %688 = add i32 %662, 1
  br label %602, !llvm.loop !132

689:                                              ; preds = %658, %769
  %690 = phi i64 [ %772, %769 ], [ 0, %658 ]
  %691 = phi i32 [ %771, %769 ], [ %535, %658 ]
  %692 = phi i32 [ %770, %769 ], [ %527, %658 ]
  %693 = load ptr, ptr %550, align 8, !tbaa !101
  %694 = getelementptr inbounds %struct.du_chain, ptr %693, i64 0, i32 2
  %695 = load ptr, ptr %694, align 8, !tbaa !133
  %696 = load ptr, ptr %695, align 8, !tbaa !35
  %697 = load i32, ptr %696, align 8
  %698 = lshr i32 %697, 16
  %699 = and i32 %698, 255
  %700 = zext nneg i32 %699 to i64
  %701 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %690, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !46
  %703 = zext i8 %702 to i32
  %704 = zext i8 %702 to i64
  br label %705

705:                                              ; preds = %735, %689
  %706 = phi i64 [ %707, %735 ], [ %704, %689 ]
  %707 = add nsw i64 %706, -1
  %708 = icmp sgt i64 %706, 0
  br i1 %708, label %714, label %709

709:                                              ; preds = %705
  %710 = load ptr, ptr %550, align 8, !tbaa !35
  %711 = icmp eq ptr %710, null
  br i1 %711, label %759, label %712

712:                                              ; preds = %709
  %713 = trunc i64 %690 to i32
  br label %740

714:                                              ; preds = %705
  %715 = add nsw i64 %707, %690
  %716 = shl nuw i64 1, %715
  %717 = and i64 %716, %603
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %769

719:                                              ; preds = %714
  %720 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %715
  %721 = load i8, ptr %720, align 1, !tbaa !46
  %722 = icmp eq i8 %721, 0
  br i1 %722, label %723, label %769

723:                                              ; preds = %719
  %724 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %715
  %725 = load i8, ptr %724, align 1, !tbaa !46
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %727, label %769

727:                                              ; preds = %723
  %728 = trunc i64 %715 to i32
  %729 = call zeroext i8 @df_regs_ever_live_p(i32 noundef %728) #18
  %730 = icmp eq i8 %729, 0
  br i1 %730, label %731, label %735

731:                                              ; preds = %727
  %732 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %715
  %733 = load i8, ptr %732, align 1, !tbaa !46
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %769, label %735

735:                                              ; preds = %731, %727
  %736 = trunc i64 %707 to i32
  %737 = add i32 %527, %736
  %738 = and i32 %737, -8
  %739 = icmp eq i32 %738, 8
  br i1 %739, label %769, label %705, !llvm.loop !134

740:                                              ; preds = %712, %756
  %741 = phi ptr [ %757, %756 ], [ %710, %712 ]
  %742 = getelementptr inbounds %struct.du_chain, ptr %741, i64 0, i32 2
  %743 = load ptr, ptr %742, align 8, !tbaa !133
  %744 = load ptr, ptr %743, align 8, !tbaa !35
  %745 = load i32, ptr %744, align 8
  %746 = lshr i32 %745, 16
  %747 = and i32 %746, 255
  %748 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %713, i32 noundef %747) #18
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %750, label %756

750:                                              ; preds = %740
  %751 = getelementptr inbounds %struct.du_chain, ptr %741, i64 0, i32 1
  %752 = load ptr, ptr %751, align 8, !tbaa !105
  %753 = load i32, ptr %752, align 8
  %754 = and i32 %753, 65535
  %755 = icmp eq i32 %754, 7
  br i1 %755, label %756, label %769

756:                                              ; preds = %750, %740
  %757 = load ptr, ptr %741, align 8, !tbaa !35
  %758 = icmp eq ptr %757, null
  br i1 %758, label %759, label %740, !llvm.loop !135

759:                                              ; preds = %756, %709
  %760 = sext i32 %692 to i64
  %761 = getelementptr inbounds [53 x i32], ptr %5, i64 0, i64 %760
  %762 = load i32, ptr %761, align 4, !tbaa !50
  %763 = getelementptr inbounds [53 x i32], ptr %5, i64 0, i64 %690
  %764 = load i32, ptr %763, align 4, !tbaa !50
  %765 = icmp sgt i32 %762, %764
  %766 = trunc i64 %690 to i32
  %767 = select i1 %765, i32 %766, i32 %692
  %768 = select i1 %765, i32 %703, i32 %691
  br label %769

769:                                              ; preds = %731, %735, %723, %719, %714, %750, %759
  %770 = phi i32 [ %767, %759 ], [ %692, %750 ], [ %692, %714 ], [ %692, %719 ], [ %692, %723 ], [ %692, %735 ], [ %692, %731 ]
  %771 = phi i32 [ %768, %759 ], [ %691, %750 ], [ %691, %714 ], [ %691, %719 ], [ %691, %723 ], [ %691, %735 ], [ %691, %731 ]
  %772 = add nuw nsw i64 %690, 1
  %773 = icmp eq i64 %772, 53
  br i1 %773, label %774, label %689, !llvm.loop !136

774:                                              ; preds = %769
  %775 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %776 = icmp eq ptr %775, null
  br i1 %776, label %792, label %777

777:                                              ; preds = %774
  %778 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %536
  %779 = load ptr, ptr %778, align 8, !tbaa !35
  %780 = load ptr, ptr %550, align 8, !tbaa !101
  %781 = getelementptr inbounds %struct.du_chain, ptr %780, i64 0, i32 1
  %782 = load ptr, ptr %781, align 8, !tbaa !105
  %783 = getelementptr inbounds %struct.rtx_def, ptr %782, i64 0, i32 1
  %784 = load i32, ptr %783, align 8, !tbaa !46
  %785 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %775, ptr noundef nonnull @.str.2, ptr noundef %779, i32 noundef %784)
  %786 = load i8, ptr %529, align 8
  %787 = and i8 %786, 2
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %792, label %789

789:                                              ; preds = %777
  %790 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %791 = call i64 @fwrite(ptr nonnull @.str.3, i64 15, i64 1, ptr %790)
  br label %792

792:                                              ; preds = %777, %789, %774
  %793 = icmp eq i32 %770, %527
  br i1 %793, label %794, label %801

794:                                              ; preds = %792
  %795 = add nsw i32 %524, 1
  %796 = getelementptr inbounds [53 x i32], ptr %5, i64 0, i64 %536
  store i32 %795, ptr %796, align 4, !tbaa !50
  %797 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %798 = icmp eq ptr %797, null
  br i1 %798, label %948, label %799, !llvm.loop !121

799:                                              ; preds = %794
  %800 = call i64 @fwrite(ptr nonnull @.str.4, i64 29, i64 1, ptr nonnull %797)
  br label %948, !llvm.loop !121

801:                                              ; preds = %792
  %802 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %803 = icmp eq ptr %802, null
  br i1 %803, label %809, label %804

804:                                              ; preds = %801
  %805 = sext i32 %770 to i64
  %806 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %805
  %807 = load ptr, ptr %806, align 8, !tbaa !35
  %808 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %802, ptr noundef nonnull @.str.5, ptr noundef %807)
  br label %809

809:                                              ; preds = %804, %801
  %810 = load i32, ptr %526, align 8, !tbaa !103
  %811 = load ptr, ptr %550, align 8, !tbaa !101
  %812 = getelementptr inbounds %struct.du_chain, ptr %811, i64 0, i32 1
  %813 = load ptr, ptr %812, align 8, !tbaa !105
  %814 = load i32, ptr %813, align 8
  %815 = and i32 %814, 65535
  %816 = icmp eq i32 %815, 7
  br i1 %816, label %817, label %818

817:                                              ; preds = %809
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 361, ptr noundef nonnull @.str.7) #18
  br label %818

818:                                              ; preds = %817, %809
  %819 = load ptr, ptr %550, align 8, !tbaa !35
  %820 = icmp eq ptr %819, null
  br i1 %820, label %915, label %821

821:                                              ; preds = %818, %909
  %822 = phi ptr [ %913, %909 ], [ %819, %818 ]
  %823 = phi i8 [ %910, %909 ], [ 0, %818 ]
  %824 = getelementptr inbounds %struct.du_chain, ptr %822, i64 0, i32 2
  %825 = load ptr, ptr %824, align 8, !tbaa !133
  %826 = load ptr, ptr %825, align 8, !tbaa !35
  %827 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 0, i32 1, i32 0, i32 0, i64 1
  %828 = load i32, ptr %827, align 8, !tbaa !46
  %829 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 0, i32 1, i32 0, i32 0, i64 2
  %830 = load ptr, ptr %829, align 8, !tbaa !46
  %831 = load i32, ptr %826, align 8
  %832 = and i32 %831, 1073741824
  %833 = getelementptr inbounds %struct.du_chain, ptr %822, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !105
  %835 = load i32, ptr %834, align 8
  %836 = and i32 %835, 65535
  %837 = icmp eq i32 %836, 7
  br i1 %837, label %838, label %849

838:                                              ; preds = %821
  %839 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 0, i32 1
  %840 = load i32, ptr %839, align 8, !tbaa !46
  %841 = icmp eq i32 %840, %810
  br i1 %841, label %849, label %842

842:                                              ; preds = %838
  %843 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %844 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %843) #18
  %845 = load ptr, ptr %833, align 8, !tbaa !105
  %846 = getelementptr inbounds %struct.rtx_def, ptr %845, i64 1
  %847 = load ptr, ptr %846, align 8, !tbaa !46
  %848 = getelementptr inbounds %struct.rtx_def, ptr %847, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %844, ptr %848, align 8, !tbaa !46
  br label %909

849:                                              ; preds = %838, %821
  %850 = lshr i32 %831, 16
  %851 = and i32 %850, 255
  %852 = call ptr @gen_raw_REG(i32 noundef %851, i32 noundef %770) #18
  %853 = load ptr, ptr %824, align 8, !tbaa !133
  store ptr %852, ptr %853, align 8, !tbaa !35
  %854 = icmp ugt i32 %828, 52
  br i1 %854, label %855, label %859

855:                                              ; preds = %849
  %856 = load ptr, ptr %824, align 8, !tbaa !133
  %857 = load ptr, ptr %856, align 8, !tbaa !35
  %858 = getelementptr inbounds %struct.rtx_def, ptr %857, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %828, ptr %858, align 8, !tbaa !46
  br label %859

859:                                              ; preds = %855, %849
  %860 = load ptr, ptr %824, align 8, !tbaa !133
  %861 = load ptr, ptr %860, align 8, !tbaa !35
  %862 = getelementptr inbounds %struct.rtx_def, ptr %861, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %830, ptr %862, align 8, !tbaa !46
  %863 = load ptr, ptr %824, align 8, !tbaa !133
  %864 = load ptr, ptr %863, align 8, !tbaa !35
  %865 = load i32, ptr %864, align 8
  %866 = and i32 %865, -1073741825
  %867 = or disjoint i32 %866, %832
  store i32 %867, ptr %864, align 8
  %868 = load ptr, ptr %833, align 8, !tbaa !105
  %869 = getelementptr inbounds %struct.rtx_def, ptr %868, i64 1, i32 1, i32 0, i32 0, i64 1
  %870 = load ptr, ptr %869, align 8, !tbaa !46
  %871 = icmp eq ptr %870, null
  br i1 %871, label %909, label %876

872:                                              ; preds = %906
  %873 = getelementptr inbounds %struct.rtx_def, ptr %877, i64 0, i32 1, i32 0, i32 0, i64 1
  %874 = load ptr, ptr %873, align 8, !tbaa !46
  %875 = icmp eq ptr %874, null
  br i1 %875, label %909, label %876, !llvm.loop !137

876:                                              ; preds = %859, %872
  %877 = phi ptr [ %874, %872 ], [ %870, %859 ]
  %878 = phi i8 [ %907, %872 ], [ %823, %859 ]
  %879 = load i32, ptr %877, align 8
  %880 = lshr i32 %879, 16
  %881 = and i32 %879, 16711680
  %882 = icmp eq i32 %881, 65536
  %883 = trunc i32 %880 to i8
  switch i8 %883, label %906 [
    i8 6, label %884
    i8 1, label %884
  ]

884:                                              ; preds = %876, %876
  %885 = getelementptr inbounds %struct.rtx_def, ptr %877, i64 0, i32 1
  %886 = load ptr, ptr %885, align 8, !tbaa !46
  %887 = getelementptr inbounds %struct.rtx_def, ptr %886, i64 0, i32 1
  %888 = load i32, ptr %887, align 8, !tbaa !46
  %889 = icmp ult i32 %888, 53
  br i1 %889, label %891, label %890

890:                                              ; preds = %884
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 387, ptr noundef nonnull @.str.7) #18
  br label %891

891:                                              ; preds = %890, %884
  %892 = load i32, ptr %887, align 8, !tbaa !46
  %893 = icmp eq i32 %892, %810
  br i1 %893, label %894, label %906

894:                                              ; preds = %891
  br i1 %882, label %895, label %903

895:                                              ; preds = %894
  %896 = load ptr, ptr %824, align 8, !tbaa !133
  %897 = load ptr, ptr %896, align 8, !tbaa !35
  %898 = load ptr, ptr %833, align 8, !tbaa !105
  %899 = call i32 @reg_set_p(ptr noundef %897, ptr noundef %898) #18
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %903, label %901

901:                                              ; preds = %895
  %902 = load ptr, ptr %833, align 8, !tbaa !105
  call void @remove_note(ptr noundef %902, ptr noundef nonnull %877) #18
  br label %906

903:                                              ; preds = %895, %894
  %904 = load ptr, ptr %824, align 8, !tbaa !133
  %905 = load ptr, ptr %904, align 8, !tbaa !35
  store ptr %905, ptr %885, align 8, !tbaa !46
  br label %906

906:                                              ; preds = %891, %901, %903, %876
  %907 = phi i8 [ %878, %876 ], [ 1, %903 ], [ 1, %901 ], [ %878, %891 ]
  %908 = phi i1 [ true, %876 ], [ false, %903 ], [ false, %901 ], [ true, %891 ]
  br i1 %908, label %872, label %909

909:                                              ; preds = %872, %906, %859, %842
  %910 = phi i8 [ %823, %842 ], [ %823, %859 ], [ %907, %906 ], [ %907, %872 ]
  %911 = load ptr, ptr %833, align 8, !tbaa !105
  %912 = call zeroext i8 @df_insn_rescan(ptr noundef %911) #18
  %913 = load ptr, ptr %822, align 8, !tbaa !35
  %914 = icmp eq ptr %913, null
  br i1 %914, label %915, label %821, !llvm.loop !138

915:                                              ; preds = %909, %818
  %916 = phi i8 [ 0, %818 ], [ %910, %909 ]
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %918, label %944

918:                                              ; preds = %915
  %919 = load ptr, ptr %550, align 8, !tbaa !101
  %920 = getelementptr inbounds %struct.du_chain, ptr %919, i64 0, i32 1
  %921 = load ptr, ptr %920, align 8, !tbaa !105
  %922 = getelementptr inbounds %struct.du_head, ptr %525, i64 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !139
  %924 = getelementptr inbounds %struct.du_chain, ptr %923, i64 0, i32 1
  %925 = load ptr, ptr %924, align 8, !tbaa !105
  %926 = icmp eq ptr %921, %925
  br i1 %926, label %927, label %928

927:                                              ; preds = %918
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 409, ptr noundef nonnull @.str.7) #18
  br label %928

928:                                              ; preds = %927, %918
  %929 = load ptr, ptr %922, align 8, !tbaa !139
  %930 = getelementptr inbounds %struct.du_chain, ptr %929, i64 0, i32 2
  %931 = load ptr, ptr %930, align 8, !tbaa !133
  %932 = load ptr, ptr %931, align 8, !tbaa !35
  %933 = getelementptr inbounds %struct.du_chain, ptr %929, i64 0, i32 1
  %934 = load ptr, ptr %933, align 8, !tbaa !105
  %935 = call i32 @reg_set_p(ptr noundef %932, ptr noundef %934) #18
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %944

937:                                              ; preds = %928
  %938 = load ptr, ptr %922, align 8, !tbaa !139
  %939 = getelementptr inbounds %struct.du_chain, ptr %938, i64 0, i32 1
  %940 = load ptr, ptr %939, align 8, !tbaa !105
  %941 = getelementptr inbounds %struct.du_chain, ptr %938, i64 0, i32 2
  %942 = load ptr, ptr %941, align 8, !tbaa !133
  %943 = load ptr, ptr %942, align 8, !tbaa !35
  call void @add_reg_note(ptr noundef %940, i32 noundef 1, ptr noundef %943) #18
  br label %944

944:                                              ; preds = %915, %928, %937
  store i32 %770, ptr %526, align 8, !tbaa !103
  store i32 %771, ptr %534, align 4, !tbaa !104
  %945 = add nsw i32 %524, 1
  %946 = sext i32 %770 to i64
  %947 = getelementptr inbounds [53 x i32], ptr %5, i64 0, i64 %946
  store i32 %945, ptr %947, align 4, !tbaa !50
  call void @df_set_regs_ever_live(i32 noundef %770, i8 noundef zeroext 1) #18
  br label %948

948:                                              ; preds = %794, %799, %576, %533, %540, %544, %523, %944
  %949 = phi i32 [ %945, %944 ], [ %524, %523 ], [ %524, %544 ], [ %524, %540 ], [ %524, %533 ], [ %524, %576 ], [ %795, %799 ], [ %795, %794 ]
  %950 = icmp eq ptr %528, null
  br i1 %950, label %521, label %523

951:                                              ; preds = %521, %965
  %952 = phi i64 [ 0, %521 ], [ %967, %965 ]
  %953 = load ptr, ptr @id_to_chain, align 8
  %954 = icmp eq ptr %953, null
  br i1 %954, label %962, label %955

955:                                              ; preds = %951
  %956 = load i32, ptr %953, align 8, !tbaa !140
  %957 = zext i32 %956 to i64
  %958 = icmp ult i64 %952, %957
  br i1 %958, label %959, label %962

959:                                              ; preds = %955
  %960 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %953, i64 0, i32 2, i64 %952
  %961 = load ptr, ptr %960, align 8, !tbaa !35
  br label %962

962:                                              ; preds = %959, %955, %951
  %963 = phi ptr [ %961, %959 ], [ null, %955 ], [ null, %951 ]
  %964 = phi i1 [ false, %959 ], [ true, %955 ], [ true, %951 ]
  br i1 %964, label %968, label %965

965:                                              ; preds = %962
  %966 = getelementptr inbounds %struct.du_head, ptr %963, i64 0, i32 6
  call void @bitmap_clear(ptr noundef nonnull %966) #18
  %967 = add nuw i64 %952, 1
  br label %951, !llvm.loop !142

968:                                              ; preds = %962
  br i1 %954, label %970, label %969

969:                                              ; preds = %968
  call void @free(ptr noundef %953)
  br label %970

970:                                              ; preds = %968, %969
  store ptr null, ptr @id_to_chain, align 8, !tbaa !35
  %971 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !63
  %972 = ptrtoint ptr %971 to i64
  %973 = sub i64 %26, %972
  store i64 %973, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %974 = icmp sgt i64 %973, 0
  br i1 %974, label %975, label %982

975:                                              ; preds = %970
  %976 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %977 = ptrtoint ptr %976 to i64
  %978 = sub i64 %977, %972
  %979 = icmp slt i64 %973, %978
  br i1 %979, label %980, label %982

980:                                              ; preds = %975
  %981 = getelementptr inbounds i8, ptr %971, i64 %973
  store ptr %981, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  store ptr %981, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  br label %984

982:                                              ; preds = %975, %970
  %983 = getelementptr inbounds i8, ptr %971, i64 %973
  call void @obstack_free(ptr noundef nonnull @rename_obstack, ptr noundef %983) #18
  br label %984

984:                                              ; preds = %982, %980
  %985 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %986 = load ptr, ptr %985, align 8, !tbaa !68
  %987 = load ptr, ptr @cfun, align 8, !tbaa !35
  %988 = getelementptr inbounds %struct.function, ptr %987, i64 0, i32 1
  %989 = load ptr, ptr %988, align 8, !tbaa !64
  %990 = getelementptr inbounds %struct.control_flow_graph, ptr %989, i64 0, i32 1
  %991 = load ptr, ptr %990, align 8, !tbaa !70
  %992 = icmp eq ptr %986, %991
  br i1 %992, label %993, label %52, !llvm.loop !143

993:                                              ; preds = %984, %25
  %994 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !63
  %995 = ptrtoint ptr %994 to i64
  %996 = sub i64 0, %995
  store i64 %996, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %997 = icmp sgt i64 %996, 0
  br i1 %997, label %998, label %1005

998:                                              ; preds = %993
  %999 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %1000 = ptrtoint ptr %999 to i64
  %1001 = sub i64 %1000, %995
  %1002 = icmp sgt i64 %1001, %996
  br i1 %1002, label %1003, label %1005

1003:                                             ; preds = %998
  %1004 = getelementptr inbounds i8, ptr %994, i64 %996
  store ptr %1004, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  store ptr %1004, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  br label %1007

1005:                                             ; preds = %998, %993
  %1006 = getelementptr inbounds i8, ptr %994, i64 %996
  call void @obstack_free(ptr noundef nonnull @rename_obstack, ptr noundef %1006) #18
  br label %1007

1007:                                             ; preds = %1005, %1003
  %1008 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1012, label %1010

1010:                                             ; preds = %1007
  %1011 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %1008)
  br label %1012

1012:                                             ; preds = %1010, %1007
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %5) #18
  ret i32 0
}

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @df_set_regs_ever_live(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @preprocess_constraints() local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @verify_reg_in_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !prof !34 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = zext i32 %8 to i64
  %10 = lshr i32 %3, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %1, align 8, !tbaa !74
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %18, %16 ], [ %33, %19 ]
  %21 = phi i8 [ 1, %16 ], [ %31, %19 ]
  %22 = phi i8 [ 1, %16 ], [ %30, %19 ]
  %23 = trunc i64 %20 to i32
  %24 = add nsw i32 %23, -1
  %25 = add i32 %24, %8
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %17, %27
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i8 0, i8 %22
  %31 = select i1 %29, i8 %21, i8 0
  %32 = icmp eq i32 %24, 0
  %33 = add nsw i64 %20, -1
  br i1 %32, label %34, label %19, !llvm.loop !144

34:                                               ; preds = %19
  %35 = icmp ne i8 %31, 0
  br label %36

36:                                               ; preds = %34, %6
  %37 = phi i8 [ 1, %6 ], [ %30, %34 ]
  %38 = phi i1 [ true, %6 ], [ %35, %34 ]
  %39 = icmp ne i8 %37, 0
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i1 true, ptr @fail_current_block, align 1
  br label %42

42:                                               ; preds = %36, %2, %41
  %43 = phi i8 [ 0, %41 ], [ 0, %2 ], [ %37, %36 ]
  ret i8 %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_new_chain(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 !prof !34 {
  store i64 88, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 88
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 88) #18
  br label %13

13:                                               ; preds = %5, %12
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %21 = or i8 %20, 2
  store i8 %21, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %22

22:                                               ; preds = %13, %19
  %23 = ptrtoint ptr %17 to i64
  store i64 %23, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %24 = ptrtoint ptr %16 to i64
  %25 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !62
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = xor i32 %25, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = inttoptr i64 %30 to ptr
  store ptr %31, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !63
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %30, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %33
  %38 = icmp sgt i64 %34, %37
  %39 = select i1 %38, ptr %35, ptr %31
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %40 = load ptr, ptr @open_chains, align 8, !tbaa !35
  store ptr %40, ptr %17, align 8, !tbaa !109
  store ptr %17, ptr @open_chains, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 3
  store i32 %0, ptr %41, align 8, !tbaa !103
  %42 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 4
  store i32 %1, ptr %42, align 4, !tbaa !104
  %43 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 8
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, -8
  store i8 %45, ptr %43, align 8
  %46 = load ptr, ptr @id_to_chain, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !145
  %51 = load i32, ptr %46, align 8, !tbaa !140
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %22, %48
  %54 = tail call ptr @vec_heap_p_reserve(ptr noundef %46, i32 noundef 1) #18
  store ptr %54, ptr @id_to_chain, align 8, !tbaa !35
  br label %55

55:                                               ; preds = %48, %53
  %56 = load ptr, ptr @id_to_chain, align 8, !tbaa !35
  %57 = load i32, ptr %56, align 8, !tbaa !140
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !140
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.VEC_du_head_p_base, ptr %56, i64 0, i32 2, i64 %59
  store ptr %17, ptr %60, align 8, !tbaa !35
  %61 = load i32, ptr @current_id, align 4, !tbaa !50
  %62 = add i32 %61, 1
  store i32 %62, ptr @current_id, align 4, !tbaa !50
  %63 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 5
  store i32 %61, ptr %63, align 8, !tbaa !146
  %64 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 6
  %65 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 6, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  store ptr @bitmap_default_obstack, ptr %65, align 8, !tbaa !72
  tail call void @bitmap_copy(ptr noundef nonnull %64, ptr noundef nonnull @open_chains_set) #18
  %66 = load i32, ptr %63, align 8, !tbaa !146
  %67 = load ptr, ptr @open_chains, align 8, !tbaa !35
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %55, %69
  %70 = phi ptr [ %73, %69 ], [ %67, %55 ]
  %71 = getelementptr inbounds %struct.du_head, ptr %70, i64 0, i32 6
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %71, i32 noundef %66) #18
  %73 = load ptr, ptr %70, align 8, !tbaa !35
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %69, !llvm.loop !147

75:                                               ; preds = %69, %55
  %76 = load i32, ptr %42, align 4, !tbaa !104
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i64, ptr @live_hard_regs, align 8, !tbaa !74
  %80 = load i64, ptr @live_in_chains, align 8, !tbaa !74
  %81 = load i32, ptr %41, align 8, !tbaa !103
  %82 = zext nneg i32 %76 to i64
  br label %83

83:                                               ; preds = %78, %83
  %84 = phi i64 [ %82, %78 ], [ %87, %83 ]
  %85 = phi i64 [ %80, %78 ], [ %92, %83 ]
  %86 = phi i64 [ %79, %78 ], [ %94, %83 ]
  %87 = add nsw i64 %84, -1
  %88 = trunc i64 %87 to i32
  %89 = add i32 %81, %88
  %90 = zext nneg i32 %89 to i64
  %91 = shl nuw i64 1, %90
  %92 = or i64 %91, %85
  %93 = xor i64 %91, -1
  %94 = and i64 %86, %93
  %95 = icmp sgt i64 %84, 1
  br i1 %95, label %83, label %96, !llvm.loop !148

96:                                               ; preds = %83
  store i64 %92, ptr @live_in_chains, align 8, !tbaa !74
  store i64 %94, ptr @live_hard_regs, align 8, !tbaa !74
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i64, ptr @live_hard_regs, align 8, !tbaa !74
  %99 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 7
  store i64 %98, ptr %99, align 8, !tbaa !123
  %100 = load i32, ptr %63, align 8, !tbaa !146
  %101 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @open_chains_set, i32 noundef %100) #18
  store ptr %17, ptr @open_chains, align 8, !tbaa !35
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %97
  %105 = load i32, ptr %41, align 8, !tbaa !103
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load i32, ptr %63, align 8, !tbaa !146
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str.8, ptr noundef %108, i32 noundef %109)
  %111 = icmp eq ptr %3, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %114 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !46
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.9, i32 noundef %115)
  br label %117

117:                                              ; preds = %112, %104
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %119 = tail call i32 @fputc(i32 10, ptr %118)
  br label %120

120:                                              ; preds = %117, %97
  %121 = icmp eq ptr %3, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  br label %165

124:                                              ; preds = %120
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %125 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %126 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %127 = ptrtoint ptr %125 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = icmp slt i64 %129, 32
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 32) #18
  br label %132

132:                                              ; preds = %124, %131
  %133 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %134 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %135 = getelementptr inbounds i8, ptr %134, i64 %133
  store ptr %135, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %136 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %140 = or i8 %139, 2
  store i8 %140, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %141

141:                                              ; preds = %132, %138
  %142 = ptrtoint ptr %136 to i64
  store i64 %142, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %143 = ptrtoint ptr %135 to i64
  %144 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !62
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = xor i32 %144, -1
  %148 = sext i32 %147 to i64
  %149 = and i64 %146, %148
  %150 = inttoptr i64 %149 to ptr
  store ptr %150, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %151 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !63
  %152 = ptrtoint ptr %151 to i64
  %153 = sub i64 %149, %152
  %154 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %155 = ptrtoint ptr %154 to i64
  %156 = sub i64 %155, %152
  %157 = icmp sgt i64 %153, %156
  %158 = select i1 %157, ptr %154, ptr %150
  store ptr %158, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %158, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %159 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 2
  store ptr %136, ptr %159, align 8, !tbaa !139
  %160 = getelementptr inbounds %struct.du_head, ptr %17, i64 0, i32 1
  store ptr %136, ptr %160, align 8, !tbaa !101
  store ptr null, ptr %136, align 8, !tbaa !107
  %161 = getelementptr inbounds %struct.du_chain, ptr %136, i64 0, i32 2
  store ptr %2, ptr %161, align 8, !tbaa !133
  %162 = getelementptr inbounds %struct.du_chain, ptr %136, i64 0, i32 1
  store ptr %3, ptr %162, align 8, !tbaa !105
  %163 = getelementptr inbounds %struct.du_chain, ptr %136, i64 0, i32 3
  %164 = trunc i32 %4 to i16
  store i16 %164, ptr %163, align 8
  br label %165

165:                                              ; preds = %141, %122
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @hide_operands(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #14 !prof !34 {
  %6 = load i32, ptr @which_alternative, align 4, !tbaa !50
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  %10 = sext i32 %6 to i64
  %11 = zext nneg i32 %0 to i64
  br label %19

12:                                               ; preds = %48, %5
  %13 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !90
  %14 = icmp sgt i8 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = zext nneg i8 %13 to i64
  %17 = icmp eq i8 %4, 0
  %18 = sext i32 %6 to i64
  br label %51

19:                                               ; preds = %8, %48
  %20 = phi i64 [ 0, %8 ], [ %49, %48 ]
  %21 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %1, i64 %20
  store ptr %22, ptr %23, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = load i8, ptr %25, align 1, !tbaa !46
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %19
  %29 = trunc i64 %20 to i32
  %30 = shl nuw i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, %3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  br i1 %9, label %44, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %20
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %20, i64 %10, i32 5
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %35, %34
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %20
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  store ptr %45, ptr %47, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %39, %44, %28, %19
  %49 = add nuw nsw i64 %20, 1
  %50 = icmp eq i64 %49, %11
  br i1 %50, label %12, label %19, !llvm.loop !149

51:                                               ; preds = %15, %78
  %52 = phi i64 [ 0, %15 ], [ %79, %78 ]
  %53 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !46
  %55 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %52
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %2, i64 %52
  store ptr %57, ptr %58, align 8, !tbaa !35
  %59 = zext nneg i8 %54 to i32
  %60 = shl nuw i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, %3
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %51
  br i1 %17, label %75, label %65

65:                                               ; preds = %64
  %66 = sext i8 %54 to i64
  %67 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %66, i64 %18, i32 5
  %72 = load i8, ptr %71, align 8
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70, %65, %64
  %76 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !35
  %77 = load ptr, ptr %55, align 8, !tbaa !35
  store ptr %76, ptr %77, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %70, %75, %51
  %79 = add nuw nsw i64 %52, 1
  %80 = icmp eq i64 %79, %16
  br i1 %80, label %81, label %51, !llvm.loop !150

81:                                               ; preds = %78, %12
  ret void
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @note_sets_clobbers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 !prof !34 {
  %4 = load i32, ptr %2, align 4, !tbaa !50
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %73

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 506, ptr noundef nonnull @.str.7) #18
  br label %25

25:                                               ; preds = %20, %24
  %26 = load i32, ptr %12, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = load i32, ptr %21, align 8, !tbaa !46
  %30 = zext i32 %29 to i64
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %30, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !46
  %34 = zext i8 %33 to i32
  %35 = add i32 %29, %34
  %36 = load i64, ptr @live_hard_regs, align 8, !tbaa !74
  br label %37

37:                                               ; preds = %37, %25
  %38 = phi i64 [ %36, %25 ], [ %42, %37 ]
  %39 = phi i32 [ %29, %25 ], [ %43, %37 ]
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = or i64 %41, %38
  %43 = add i32 %39, 1
  %44 = icmp ult i32 %43, %35
  br i1 %44, label %37, label %45, !llvm.loop !120

45:                                               ; preds = %37
  store i64 %42, ptr @live_hard_regs, align 8, !tbaa !74
  %46 = load ptr, ptr @open_chains, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %45, %70
  %49 = phi ptr [ %71, %70 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.du_head, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %12, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = load i32, ptr %21, align 8, !tbaa !46
  %55 = zext i32 %54 to i64
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %55, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !46
  %59 = zext i8 %58 to i32
  %60 = add i32 %54, %59
  %61 = load i64, ptr %50, align 8, !tbaa !74
  br label %62

62:                                               ; preds = %62, %48
  %63 = phi i64 [ %61, %48 ], [ %67, %62 ]
  %64 = phi i32 [ %54, %48 ], [ %68, %62 ]
  %65 = zext nneg i32 %64 to i64
  %66 = shl nuw i64 1, %65
  %67 = or i64 %66, %63
  %68 = add i32 %64, 1
  %69 = icmp ult i32 %68, %60
  br i1 %69, label %62, label %70, !llvm.loop !120

70:                                               ; preds = %62
  store i64 %67, ptr %50, align 8, !tbaa !74
  %71 = load ptr, ptr %49, align 8, !tbaa !35
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %48, !llvm.loop !151

73:                                               ; preds = %70, %45, %11, %16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @restore_operands(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !prof !34 {
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !90
  %6 = icmp sgt i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = zext nneg i8 %5 to i64
  br label %13

9:                                                ; preds = %13, %4
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %9
  %12 = zext nneg i32 %1 to i64
  br label %21

13:                                               ; preds = %7, %13
  %14 = phi i64 [ 0, %7 ], [ %19, %13 ]
  %15 = getelementptr inbounds ptr, ptr %3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  store ptr %16, ptr %18, align 8, !tbaa !35
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %9, label %13, !llvm.loop !152

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 0, %11 ], [ %27, %21 ]
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  store ptr %24, ptr %26, align 8, !tbaa !35
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %21, !llvm.loop !153

29:                                               ; preds = %21, %9
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #18
  br label %33

33:                                               ; preds = %31, %29
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_out_operands(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !34 {
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !81
  %4 = sext i8 %3 to i32
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !90
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %6, %4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %78

9:                                                ; preds = %2
  %10 = load i32, ptr @which_alternative, align 4, !tbaa !50
  %11 = sext i32 %10 to i64
  %12 = sext i8 %3 to i64
  %13 = sext i8 %3 to i64
  %14 = sext i8 %3 to i64
  br label %15

15:                                               ; preds = %9, %71
  %16 = phi i64 [ 0, %9 ], [ %72, %71 ]
  %17 = icmp slt i64 %16, %14
  %18 = trunc i64 %16 to i32
  br i1 %17, label %24, label %19

19:                                               ; preds = %15
  %20 = sub nsw i64 %16, %13
  %21 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %15, %19
  %25 = phi i32 [ %23, %19 ], [ %18, %15 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %26
  %28 = sub nsw i64 %16, %12
  %29 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %28
  %30 = select i1 %17, ptr %27, ptr %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = sext i32 %25 to i64
  %34 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %33, i64 %11, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !85
  %36 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %71

39:                                               ; preds = %24
  %40 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %33, i64 %11, i32 5
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, %1
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load ptr, ptr @open_chains, align 8, !tbaa !35
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %35, i32 noundef 4, i32 noundef 1)
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = tail call i32 @asm_noperands(ptr noundef %51) #18
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load i32, ptr %32, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !46
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58, %44
  %65 = load ptr, ptr @open_chains, align 8, !tbaa !35
  %66 = icmp eq ptr %45, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.du_head, ptr %65, i64 0, i32 8
  %69 = load i8, ptr %68, align 8
  %70 = or i8 %69, 4
  store i8 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %58, %49, %54, %67, %64, %24, %39
  %72 = add nuw nsw i64 %16, 1
  %73 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !90
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, %4
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %15, label %78, !llvm.loop !154

78:                                               ; preds = %71, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 !prof !34 {
  br label %6

6:                                                ; preds = %77, %75, %55, %42, %31, %5
  %7 = phi ptr [ %1, %5 ], [ %16, %31 ], [ %34, %42 ], [ %58, %55 ], [ %61, %75 ], [ %79, %77 ]
  %8 = phi i32 [ %4, %5 ], [ %32, %31 ], [ %43, %42 ], [ 0, %55 ], [ %76, %75 ], [ %8, %77 ]
  %9 = load ptr, ptr %7, align 8, !tbaa !35
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %82 [
    i16 35, label %116
    i16 30, label %116
    i16 32, label %116
    i16 31, label %116
    i16 33, label %116
    i16 45, label %116
    i16 44, label %116
    i16 46, label %116
    i16 36, label %116
    i16 37, label %12
    i16 43, label %13
    i16 23, label %15
    i16 40, label %33
    i16 120, label %44
    i16 119, label %44
    i16 77, label %59
    i16 75, label %59
    i16 76, label %59
    i16 74, label %59
    i16 79, label %59
    i16 78, label %59
    i16 25, label %60
    i16 3, label %77
  ]

12:                                               ; preds = %6
  tail call fastcc void @scan_rtx_reg(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %8)
  br label %116

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 13, i32 noundef %3)
  br label %116

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 14
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load ptr, ptr %16, align 8, !tbaa !46
  %25 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %24, ptr noundef nonnull @live_hard_regs), !range !87
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %24, ptr noundef nonnull @live_in_chains), !range !87
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 1, i32 2
  br label %31

31:                                               ; preds = %27, %23, %15
  %32 = phi i32 [ 1, %15 ], [ 2, %23 ], [ %30, %27 ]
  br label %6

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %35, ptr noundef nonnull @live_hard_regs), !range !87
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %35, ptr noundef nonnull @live_in_chains), !range !87
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 1, i32 2
  br label %42

42:                                               ; preds = %33, %38
  %43 = phi i32 [ 2, %33 ], [ %41, %38 ]
  br label %6

44:                                               ; preds = %6, %6
  %45 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %46 = icmp eq i32 %8, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !46
  %49 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %48, ptr noundef nonnull @live_hard_regs), !range !87
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %48, ptr noundef nonnull @live_in_chains), !range !87
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 1, i32 2
  br label %55

55:                                               ; preds = %51, %47, %44
  %56 = phi i32 [ 0, %44 ], [ 2, %47 ], [ %54, %51 ]
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %45, i32 noundef %2, i32 noundef %3, i32 noundef %56)
  %57 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %57, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  %58 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %6

59:                                               ; preds = %6, %6, %6, %6, %6, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 935, ptr noundef nonnull @.str.7) #18
  br label %60

60:                                               ; preds = %6, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 14
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load ptr, ptr %61, align 8, !tbaa !46
  %69 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %68, ptr noundef nonnull @live_hard_regs), !range !87
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = tail call fastcc zeroext i8 @verify_reg_in_set(ptr noundef %68, ptr noundef nonnull @live_in_chains), !range !87
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i32 1, i32 2
  br label %75

75:                                               ; preds = %71, %67, %60
  %76 = phi i32 [ 1, %60 ], [ 2, %67 ], [ %74, %71 ]
  br label %6

77:                                               ; preds = %6
  %78 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %78, i32 noundef %2, i32 noundef %3, i32 noundef %8)
  %79 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %116, label %6

82:                                               ; preds = %6
  %83 = and i32 %10, 65535
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !35
  %87 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %84
  %88 = load i8, ptr %87, align 1, !tbaa !46
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %92 = zext i8 %88 to i64
  br label %93

93:                                               ; preds = %90, %114
  %94 = phi i64 [ %92, %90 ], [ %95, %114 ]
  %95 = add nsw i64 %94, -1
  %96 = getelementptr inbounds i8, ptr %86, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !46
  switch i8 %97, label %114 [
    i8 101, label %98
    i8 69, label %101
  ]

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %100 = getelementptr inbounds [1 x %union.rtunion_def], ptr %99, i64 0, i64 %95
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %100, i32 noundef %2, i32 noundef %3, i32 noundef %8)
  br label %114

101:                                              ; preds = %93
  %102 = getelementptr inbounds [1 x %union.rtunion_def], ptr %91, i64 0, i64 %95
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = load i32, ptr %103, align 8, !tbaa !155
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = zext nneg i32 %104 to i64
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ %107, %106 ], [ %110, %108 ]
  %110 = add nsw i64 %109, -1
  %111 = load ptr, ptr %102, align 8, !tbaa !46
  %112 = getelementptr inbounds %struct.rtvec_def, ptr %111, i64 0, i32 1, i64 %110
  tail call fastcc void @scan_rtx(ptr noundef %0, ptr noundef nonnull %112, i32 noundef %2, i32 noundef %3, i32 noundef %8)
  %113 = icmp sgt i64 %109, 1
  br i1 %113, label %108, label %114, !llvm.loop !157

114:                                              ; preds = %108, %101, %93, %98
  %115 = icmp sgt i64 %94, 1
  br i1 %115, label %93, label %116, !llvm.loop !158

116:                                              ; preds = %114, %82, %6, %6, %6, %6, %6, %6, %6, %6, %77, %6, %13, %12
  ret void
}

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  br label %5

5:                                                ; preds = %250, %253, %4
  %6 = phi ptr [ %1, %4 ], [ %254, %253 ], [ %247, %250 ]
  %7 = phi i32 [ %2, %4 ], [ 13, %253 ], [ 13, %250 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !35
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = and i32 %3, -2
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %290, label %13

13:                                               ; preds = %5
  %14 = trunc i32 %9 to i16
  switch i16 %14, label %256 [
    i16 49, label %15
    i16 77, label %252
    i16 76, label %252
    i16 79, label %252
    i16 75, label %252
    i16 74, label %252
    i16 78, label %252
    i16 43, label %253
    i16 37, label %255
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = load i32, ptr %17, align 8
  %21 = and i32 %20, 65535
  %22 = load i32, ptr %19, align 8
  %23 = icmp eq i32 %21, 39
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  br label %29

29:                                               ; preds = %24, %15
  %30 = phi i32 [ %28, %24 ], [ %21, %15 ]
  %31 = phi ptr [ %26, %24 ], [ %17, %15 ]
  %32 = and i32 %22, 65535
  %33 = icmp eq i32 %32, 39
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load i32, ptr %36, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i32 [ %37, %34 ], [ %22, %29 ]
  %40 = phi ptr [ %36, %34 ], [ %19, %29 ]
  %41 = freeze i32 %39
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %245, label %44

44:                                               ; preds = %38
  %45 = trunc i32 %30 to i16
  switch i16 %45, label %46 [
    i16 100, label %245
    i16 99, label %245
    i16 98, label %245
    i16 52, label %245
    i16 43, label %48
  ]

46:                                               ; preds = %44
  %47 = trunc i32 %41 to i16
  switch i16 %47, label %49 [
    i16 100, label %48
    i16 99, label %48
    i16 98, label %48
    i16 52, label %48
  ]

48:                                               ; preds = %46, %46, %46, %44, %46
  br label %245

49:                                               ; preds = %46
  %50 = and i32 %30, 65534
  %51 = icmp eq i32 %50, 44
  br i1 %51, label %245, label %52

52:                                               ; preds = %49
  switch i16 %45, label %53 [
    i16 35, label %245
    i16 30, label %245
  ]

53:                                               ; preds = %52
  %54 = and i32 %41, 65534
  %55 = icmp eq i32 %54, 44
  br i1 %55, label %245, label %56

56:                                               ; preds = %53
  switch i16 %47, label %57 [
    i16 35, label %245
    i16 30, label %245
  ]

57:                                               ; preds = %56
  %58 = icmp eq i32 %30, 37
  %59 = icmp eq i32 %42, 37
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %241

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !46
  %66 = icmp ult i32 %65, 7
  br i1 %66, label %81, label %67

67:                                               ; preds = %61
  %68 = zext i32 %65 to i64
  %69 = add nsw i64 %68, -37
  %70 = icmp ult i64 %69, 8
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %73 = getelementptr inbounds i16, ptr %72, i64 %68
  %74 = load i16, ptr %73, align 2, !tbaa !159
  %75 = icmp ult i16 %74, 7
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = sext i16 %74 to i64
  %78 = and i64 %77, 4294967295
  %79 = add nsw i64 %78, -37
  %80 = icmp ult i64 %79, 8
  br i1 %80, label %81, label %115

81:                                               ; preds = %76, %71, %67, %61
  %82 = icmp ugt i32 %63, 52
  br i1 %82, label %83, label %91

83:                                               ; preds = %81
  %84 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %85 = zext i32 %63 to i64
  %86 = getelementptr inbounds i16, ptr %84, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !159
  %88 = sext i16 %87 to i32
  %89 = icmp slt i16 %87, 0
  %90 = select i1 %89, i32 %63, i32 %88
  br label %91

91:                                               ; preds = %83, %81
  %92 = phi i32 [ %63, %81 ], [ %90, %83 ]
  %93 = icmp ult i32 %92, 8
  br i1 %93, label %112, label %94

94:                                               ; preds = %91
  %95 = zext i32 %92 to i64
  %96 = add nsw i64 %95, -37
  %97 = icmp ult i64 %96, 8
  %98 = and i32 %92, -5
  %99 = icmp eq i32 %98, 16
  %100 = or i1 %99, %97
  br i1 %100, label %112, label %101

101:                                              ; preds = %94
  %102 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %103 = getelementptr inbounds i16, ptr %102, i64 %95
  %104 = load i16, ptr %103, align 2, !tbaa !159
  %105 = icmp ult i16 %104, 8
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = sext i16 %104 to i64
  %108 = and i64 %107, 4294967295
  %109 = add nsw i64 %108, -37
  %110 = icmp ult i64 %109, 8
  %111 = zext i1 %110 to i8
  br label %112

112:                                              ; preds = %91, %94, %101, %106
  %113 = phi i8 [ 1, %94 ], [ 1, %91 ], [ 1, %101 ], [ %111, %106 ]
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %236

115:                                              ; preds = %76, %112
  %116 = icmp ult i32 %63, 7
  br i1 %116, label %131, label %117

117:                                              ; preds = %115
  %118 = zext i32 %63 to i64
  %119 = add nsw i64 %118, -37
  %120 = icmp ult i64 %119, 8
  br i1 %120, label %131, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %123 = getelementptr inbounds i16, ptr %122, i64 %118
  %124 = load i16, ptr %123, align 2, !tbaa !159
  %125 = icmp ult i16 %124, 7
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = sext i16 %124 to i64
  %128 = and i64 %127, 4294967295
  %129 = add nsw i64 %128, -37
  %130 = icmp ult i64 %129, 8
  br i1 %130, label %131, label %161

131:                                              ; preds = %126, %121, %117, %115
  %132 = icmp ugt i32 %65, 52
  br i1 %132, label %133, label %141

133:                                              ; preds = %131
  %134 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %135 = zext i32 %65 to i64
  %136 = getelementptr inbounds i16, ptr %134, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !159
  %138 = sext i16 %137 to i32
  %139 = icmp slt i16 %137, 0
  %140 = select i1 %139, i32 %65, i32 %138
  br label %141

141:                                              ; preds = %133, %131
  %142 = phi i32 [ %65, %131 ], [ %140, %133 ]
  %143 = icmp ult i32 %142, 8
  br i1 %143, label %236, label %144

144:                                              ; preds = %141
  %145 = zext i32 %142 to i64
  %146 = add nsw i64 %145, -37
  %147 = icmp ult i64 %146, 8
  %148 = and i32 %142, -5
  %149 = icmp eq i32 %148, 16
  %150 = or i1 %149, %147
  br i1 %150, label %236, label %151

151:                                              ; preds = %144
  %152 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %153 = getelementptr inbounds i16, ptr %152, i64 %145
  %154 = load i16, ptr %153, align 2, !tbaa !159
  %155 = icmp ult i16 %154, 8
  br i1 %155, label %236, label %156

156:                                              ; preds = %151
  %157 = sext i16 %154 to i64
  %158 = and i64 %157, 4294967295
  %159 = add nsw i64 %158, -45
  %160 = icmp ult i64 %159, -8
  br i1 %160, label %161, label %236

161:                                              ; preds = %126, %156
  %162 = icmp ugt i32 %63, 52
  br i1 %162, label %163, label %171

163:                                              ; preds = %161
  %164 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %165 = zext i32 %63 to i64
  %166 = getelementptr inbounds i16, ptr %164, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !159
  %168 = sext i16 %167 to i32
  %169 = icmp slt i16 %167, 0
  %170 = select i1 %169, i32 %63, i32 %168
  br label %171

171:                                              ; preds = %163, %161
  %172 = phi i32 [ %63, %161 ], [ %170, %163 ]
  %173 = icmp ult i32 %172, 8
  br i1 %173, label %191, label %174

174:                                              ; preds = %171
  %175 = zext i32 %172 to i64
  %176 = add nsw i64 %175, -37
  %177 = icmp ult i64 %176, 8
  %178 = and i32 %172, -5
  %179 = icmp eq i32 %178, 16
  %180 = or i1 %179, %177
  br i1 %180, label %191, label %181

181:                                              ; preds = %174
  %182 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %183 = getelementptr inbounds i16, ptr %182, i64 %175
  %184 = load i16, ptr %183, align 2, !tbaa !159
  %185 = icmp ult i16 %184, 8
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = sext i16 %184 to i64
  %188 = and i64 %187, 4294967295
  %189 = add nsw i64 %188, -37
  %190 = icmp ult i64 %189, 8
  br label %191

191:                                              ; preds = %171, %174, %181, %186
  %192 = phi i1 [ true, %174 ], [ true, %171 ], [ true, %181 ], [ %190, %186 ]
  %193 = or i1 %66, %192
  br i1 %193, label %236, label %194

194:                                              ; preds = %191
  %195 = zext i32 %65 to i64
  %196 = add nsw i64 %195, -37
  %197 = icmp ult i64 %196, 8
  br i1 %197, label %236, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr @reg_renumber, align 8, !tbaa !35
  %200 = getelementptr inbounds i16, ptr %199, i64 %195
  %201 = load i16, ptr %200, align 2, !tbaa !159
  %202 = icmp ult i16 %201, 7
  br i1 %202, label %236, label %203

203:                                              ; preds = %198
  %204 = sext i16 %201 to i64
  %205 = and i64 %204, 4294967295
  %206 = add nsw i64 %205, -37
  %207 = icmp ult i64 %206, 8
  br i1 %207, label %236, label %208

208:                                              ; preds = %203
  %209 = icmp ugt i32 %65, 52
  %210 = sext i16 %201 to i32
  %211 = icmp slt i16 %201, 0
  %212 = select i1 %211, i32 %65, i32 %210
  %213 = select i1 %209, i32 %212, i32 %65
  %214 = icmp ult i32 %213, 8
  br i1 %214, label %231, label %215

215:                                              ; preds = %208
  %216 = zext i32 %213 to i64
  %217 = add nsw i64 %216, -37
  %218 = icmp ult i64 %217, 8
  %219 = and i32 %213, -5
  %220 = icmp eq i32 %219, 16
  %221 = or i1 %220, %218
  br i1 %221, label %231, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds i16, ptr %199, i64 %216
  %224 = load i16, ptr %223, align 2, !tbaa !159
  %225 = icmp ult i16 %224, 8
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = sext i16 %224 to i64
  %228 = and i64 %227, 4294967295
  %229 = add nsw i64 %228, -45
  %230 = icmp ult i64 %229, -8
  br label %231

231:                                              ; preds = %208, %215, %222, %226
  %232 = phi i1 [ false, %215 ], [ false, %208 ], [ false, %222 ], [ %230, %226 ]
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i64
  %235 = zext i1 %232 to i64
  br label %236

236:                                              ; preds = %144, %141, %151, %191, %156, %231, %194, %198, %203, %112
  %237 = phi i64 [ 0, %112 ], [ 0, %203 ], [ 0, %198 ], [ 0, %194 ], [ %234, %231 ], [ 1, %156 ], [ 0, %191 ], [ 1, %151 ], [ 1, %141 ], [ 1, %144 ]
  %238 = phi i64 [ 1, %112 ], [ 1, %203 ], [ 1, %198 ], [ 1, %194 ], [ %235, %231 ], [ 0, %156 ], [ 1, %191 ], [ 0, %151 ], [ 0, %141 ], [ 0, %144 ]
  %239 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %238
  %240 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %237
  br label %245

241:                                              ; preds = %57
  br i1 %58, label %245, label %242

242:                                              ; preds = %241
  %243 = select i1 %59, ptr %18, ptr null
  %244 = select i1 %59, ptr %16, ptr null
  br label %245

245:                                              ; preds = %241, %53, %56, %56, %49, %52, %52, %38, %44, %44, %44, %44, %242, %48, %236
  %246 = phi ptr [ %18, %48 ], [ %239, %236 ], [ %243, %242 ], [ %16, %44 ], [ %16, %44 ], [ %16, %44 ], [ %16, %44 ], [ %16, %38 ], [ null, %52 ], [ null, %52 ], [ null, %49 ], [ null, %56 ], [ null, %56 ], [ null, %53 ], [ %16, %241 ]
  %247 = phi ptr [ %16, %48 ], [ %240, %236 ], [ %244, %242 ], [ %18, %44 ], [ %18, %44 ], [ %18, %44 ], [ %18, %44 ], [ %18, %38 ], [ %18, %52 ], [ %18, %52 ], [ %18, %49 ], [ %16, %56 ], [ %16, %56 ], [ %16, %53 ], [ %18, %241 ]
  %248 = icmp eq ptr %246, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %246, i32 noundef 11, i32 noundef %3)
  br label %250

250:                                              ; preds = %249, %245
  %251 = icmp eq ptr %247, null
  br i1 %251, label %290, label %5

252:                                              ; preds = %13, %13, %13, %13, %13, %13
  br label %256

253:                                              ; preds = %13
  %254 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  br label %5

255:                                              ; preds = %13
  tail call fastcc void @scan_rtx_reg(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %7, i32 noundef %3, i32 noundef 0)
  br label %290

256:                                              ; preds = %13, %252
  %257 = phi i32 [ %3, %13 ], [ 2, %252 ]
  %258 = zext nneg i32 %10 to i64
  %259 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !35
  %261 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %258
  %262 = load i8, ptr %261, align 1, !tbaa !46
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %290, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %266 = zext i8 %262 to i64
  br label %267

267:                                              ; preds = %264, %288
  %268 = phi i64 [ %266, %264 ], [ %269, %288 ]
  %269 = add nsw i64 %268, -1
  %270 = getelementptr inbounds i8, ptr %260, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !46
  switch i8 %271, label %288 [
    i8 101, label %272
    i8 69, label %275
  ]

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %274 = getelementptr inbounds [1 x %union.rtunion_def], ptr %273, i64 0, i64 %269
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %274, i32 noundef %7, i32 noundef %257)
  br label %288

275:                                              ; preds = %267
  %276 = getelementptr inbounds [1 x %union.rtunion_def], ptr %265, i64 0, i64 %269
  %277 = load ptr, ptr %276, align 8, !tbaa !46
  %278 = load i32, ptr %277, align 8, !tbaa !155
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %275
  %281 = zext nneg i32 %278 to i64
  br label %282

282:                                              ; preds = %280, %282
  %283 = phi i64 [ %281, %280 ], [ %284, %282 ]
  %284 = add nsw i64 %283, -1
  %285 = load ptr, ptr %276, align 8, !tbaa !46
  %286 = getelementptr inbounds %struct.rtvec_def, ptr %285, i64 0, i32 1, i64 %284
  tail call fastcc void @scan_rtx_address(ptr noundef %0, ptr noundef nonnull %286, i32 noundef %7, i32 noundef %257)
  %287 = icmp sgt i64 %283, 1
  br i1 %287, label %282, label %288, !llvm.loop !160

288:                                              ; preds = %282, %275, %267, %272
  %289 = icmp sgt i64 %268, 1
  br i1 %289, label %267, label %290, !llvm.loop !161

290:                                              ; preds = %288, %256, %250, %5, %255
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @scan_rtx_reg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 !prof !34 {
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = zext i32 %11 to i64
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %3, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = icmp eq i32 %4, 1
  br i1 %19, label %20, label %258

20:                                               ; preds = %18
  tail call fastcc void @create_new_chain(i32 noundef %11, i32 noundef %16, ptr noundef nonnull %1, ptr noundef %0, i32 noundef %2)
  br label %258

21:                                               ; preds = %5
  %22 = icmp eq i32 %3, 0
  %23 = icmp eq i32 %3, 5
  %24 = or i1 %22, %23
  %25 = icmp ne i32 %4, 1
  %26 = xor i1 %25, %24
  br i1 %26, label %27, label %258

27:                                               ; preds = %21
  %28 = load ptr, ptr @open_chains, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %258, label %30

30:                                               ; preds = %27
  %31 = add i32 %11, %16
  %32 = add i32 %11, %16
  %33 = add i32 %11, %16
  %34 = icmp eq i32 %2, 0
  %35 = trunc i32 %2 to i16
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = zext nneg i32 %3 to i64
  %38 = getelementptr inbounds [6 x ptr], ptr @scan_actions_name, i64 0, i64 %37
  %39 = icmp ult i32 %3, 2
  br label %40

40:                                               ; preds = %30, %255
  %41 = phi ptr [ %28, %30 ], [ %256, %255 ]
  %42 = phi ptr [ @open_chains, %30 ], [ %254, %255 ]
  %43 = load ptr, ptr %41, align 8, !tbaa !109
  %44 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !103
  %46 = icmp eq i32 %45, %11
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !104
  %50 = icmp eq i32 %49, %16
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi i1 [ false, %40 ], [ %50, %47 ]
  %53 = icmp ugt i32 %11, %45
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !104
  %57 = add i32 %56, %45
  %58 = icmp uge i32 %31, %57
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ false, %51 ], [ %58, %54 ]
  %61 = icmp ult i32 %11, %45
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !104
  %65 = add i32 %64, %45
  %66 = icmp ule i32 %32, %65
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i1 [ false, %59 ], [ %66, %62 ]
  %69 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 8
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %252, !llvm.loop !162

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !104
  %76 = add i32 %75, %45
  %77 = icmp ugt i32 %76, %11
  %78 = icmp ugt i32 %33, %45
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %252, !llvm.loop !162

80:                                               ; preds = %73
  switch i32 %3, label %188 [
    i32 5, label %81
    i32 3, label %81
  ]

81:                                               ; preds = %80, %80
  br i1 %34, label %87, label %82

82:                                               ; preds = %81
  br i1 %52, label %135, label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %135, label %87

87:                                               ; preds = %83, %81
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = zext i32 %45 to i64
  %92 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  %94 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !146
  %96 = load i32, ptr %36, align 8, !tbaa !46
  %97 = load ptr, ptr %38, align 8, !tbaa !35
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.11, ptr noundef %93, i32 noundef %95, i32 noundef %96, ptr noundef %97)
  br label %99

99:                                               ; preds = %90, %87
  %100 = load i8, ptr %69, align 8
  %101 = or i8 %100, 4
  store i8 %101, ptr %69, align 8
  br i1 %60, label %102, label %129

102:                                              ; preds = %99
  %103 = icmp eq i8 %15, 0
  store i32 %11, ptr %44, align 8, !tbaa !103
  store i32 %16, ptr %74, align 4, !tbaa !104
  br i1 %103, label %118, label %104

104:                                              ; preds = %102
  %105 = zext i8 %15 to i64
  %106 = load i64, ptr @live_in_chains, align 8, !tbaa !74
  br label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %105, %104 ], [ %110, %107 ]
  %109 = phi i64 [ %106, %104 ], [ %115, %107 ]
  %110 = add nsw i64 %108, -1
  %111 = trunc i64 %110 to i32
  %112 = add i32 %11, %111
  %113 = zext nneg i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = or i64 %109, %114
  %116 = icmp eq i32 %111, 0
  br i1 %116, label %117, label %107, !llvm.loop !163

117:                                              ; preds = %107
  store i64 %115, ptr @live_in_chains, align 8, !tbaa !74
  br label %118

118:                                              ; preds = %117, %102
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %120 = icmp eq ptr %119, null
  br i1 %120, label %182, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %12
  %123 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %124 = load ptr, ptr %122, align 8, !tbaa !35
  %125 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 5
  %126 = load i32, ptr %125, align 8, !tbaa !146
  %127 = load i32, ptr %123, align 8, !tbaa !46
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %119, ptr noundef nonnull @.str.12, ptr noundef %124, i32 noundef %126, i32 noundef %127)
  br label %182

129:                                              ; preds = %99
  br i1 %68, label %182, label %130

130:                                              ; preds = %129
  store i1 true, ptr @fail_current_block, align 1
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %132 = icmp eq ptr %131, null
  br i1 %132, label %182, label %133

133:                                              ; preds = %130
  %134 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr nonnull %131)
  br label %182

135:                                              ; preds = %83, %82
  store i64 32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %136 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %137 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %138 = ptrtoint ptr %136 to i64
  %139 = ptrtoint ptr %137 to i64
  %140 = sub i64 %138, %139
  %141 = icmp slt i64 %140, 32
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  tail call void @_obstack_newchunk(ptr noundef nonnull @rename_obstack, i32 noundef 32) #18
  br label %143

143:                                              ; preds = %135, %142
  %144 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %145 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  store ptr %146, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %147 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  %151 = or i8 %150, 2
  store i8 %151, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 10), align 8
  br label %152

152:                                              ; preds = %143, %149
  %153 = ptrtoint ptr %147 to i64
  store i64 %153, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 5), align 8, !tbaa !57
  %154 = ptrtoint ptr %146 to i64
  %155 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 6), align 8, !tbaa !62
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = xor i32 %155, -1
  %159 = sext i32 %158 to i64
  %160 = and i64 %157, %159
  %161 = inttoptr i64 %160 to ptr
  store ptr %161, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8, !tbaa !60
  %162 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 1), align 8, !tbaa !63
  %163 = ptrtoint ptr %162 to i64
  %164 = sub i64 %160, %163
  %165 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 4), align 8, !tbaa !59
  %166 = ptrtoint ptr %165 to i64
  %167 = sub i64 %166, %163
  %168 = icmp sgt i64 %164, %167
  %169 = select i1 %168, ptr %165, ptr %161
  store ptr %169, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 3), align 8
  store ptr %169, ptr getelementptr inbounds (%struct.obstack, ptr @rename_obstack, i64 0, i32 2), align 8, !tbaa !61
  store ptr null, ptr %147, align 8, !tbaa !107
  %170 = getelementptr inbounds %struct.du_chain, ptr %147, i64 0, i32 2
  store ptr %1, ptr %170, align 8, !tbaa !133
  %171 = getelementptr inbounds %struct.du_chain, ptr %147, i64 0, i32 1
  store ptr %0, ptr %171, align 8, !tbaa !105
  %172 = getelementptr inbounds %struct.du_chain, ptr %147, i64 0, i32 3
  store i16 %35, ptr %172, align 8
  %173 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !101
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %152
  %177 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !139
  br label %179

179:                                              ; preds = %152, %176
  %180 = phi ptr [ %178, %176 ], [ %173, %152 ]
  store ptr %147, ptr %180, align 8, !tbaa !35
  %181 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 2
  store ptr %147, ptr %181, align 8, !tbaa !139
  br label %182

182:                                              ; preds = %118, %121, %130, %133, %129, %179
  %183 = load i32, ptr %0, align 8
  %184 = and i32 %183, 65535
  %185 = icmp eq i32 %184, 7
  %186 = select i1 %185, i32 1, i32 3
  %187 = select i1 %185, ptr %42, ptr %41
  br label %252

188:                                              ; preds = %80
  %189 = select i1 %39, i1 %60, i1 false
  br i1 %189, label %190, label %229

190:                                              ; preds = %188
  %191 = or disjoint i8 %70, 1
  store i8 %191, ptr %69, align 8
  %192 = load ptr, ptr @closed_chains, align 8, !tbaa !35
  store ptr %192, ptr %41, align 8, !tbaa !109
  store ptr %41, ptr @closed_chains, align 8, !tbaa !35
  %193 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 5
  %194 = load i32, ptr %193, align 8, !tbaa !146
  %195 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @open_chains_set, i32 noundef %194) #18
  %196 = load i32, ptr %74, align 4, !tbaa !104
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %214, label %198

198:                                              ; preds = %190
  %199 = load i64, ptr @live_in_chains, align 8, !tbaa !74
  %200 = load i32, ptr %44, align 8, !tbaa !103
  %201 = zext i32 %196 to i64
  br label %202

202:                                              ; preds = %198, %202
  %203 = phi i64 [ %201, %198 ], [ %205, %202 ]
  %204 = phi i64 [ %199, %198 ], [ %211, %202 ]
  %205 = add nsw i64 %203, -1
  %206 = trunc i64 %205 to i32
  %207 = add i32 %200, %206
  %208 = zext nneg i32 %207 to i64
  %209 = shl nuw i64 1, %208
  %210 = xor i64 %209, -1
  %211 = and i64 %204, %210
  %212 = icmp eq i32 %206, 0
  br i1 %212, label %213, label %202, !llvm.loop !164

213:                                              ; preds = %202
  store i64 %211, ptr @live_in_chains, align 8, !tbaa !74
  br label %214

214:                                              ; preds = %213, %190
  store ptr %43, ptr %42, align 8, !tbaa !35
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %216 = icmp eq ptr %215, null
  br i1 %216, label %252, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %219 = sext i32 %3 to i64
  %220 = getelementptr inbounds [6 x ptr], ptr @scan_actions_name, i64 0, i64 %219
  %221 = load i32, ptr %44, align 8, !tbaa !103
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !35
  %225 = load i32, ptr %193, align 8, !tbaa !146
  %226 = load i32, ptr %218, align 8, !tbaa !46
  %227 = load ptr, ptr %220, align 8, !tbaa !35
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %215, ptr noundef nonnull @.str.14, ptr noundef %224, i32 noundef %225, i32 noundef %226, ptr noundef %227)
  br label %252

229:                                              ; preds = %188
  br i1 %39, label %230, label %236

230:                                              ; preds = %229
  %231 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr nonnull %231)
  br label %235

235:                                              ; preds = %233, %230
  store i1 true, ptr @fail_current_block, align 1
  br label %252

236:                                              ; preds = %229
  %237 = or i8 %70, 4
  store i8 %237, ptr %69, align 8
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %239 = icmp eq ptr %238, null
  br i1 %239, label %252, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %242 = sext i32 %3 to i64
  %243 = getelementptr inbounds [6 x ptr], ptr @scan_actions_name, i64 0, i64 %242
  %244 = zext i32 %45 to i64
  %245 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !35
  %247 = getelementptr inbounds %struct.du_head, ptr %41, i64 0, i32 5
  %248 = load i32, ptr %247, align 8, !tbaa !146
  %249 = load i32, ptr %241, align 8, !tbaa !46
  %250 = load ptr, ptr %243, align 8, !tbaa !35
  %251 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %238, ptr noundef nonnull @.str.11, ptr noundef %246, i32 noundef %248, i32 noundef %249, ptr noundef %250)
  br label %252

252:                                              ; preds = %217, %214, %240, %236, %182, %67, %73, %235
  %253 = phi i32 [ 1, %235 ], [ 3, %73 ], [ 3, %67 ], [ %186, %182 ], [ 0, %236 ], [ 0, %240 ], [ 0, %214 ], [ 0, %217 ]
  %254 = phi ptr [ %42, %235 ], [ %41, %73 ], [ %41, %67 ], [ %187, %182 ], [ %41, %236 ], [ %41, %240 ], [ %42, %214 ], [ %42, %217 ]
  switch i32 %253, label %258 [
    i32 0, label %255
    i32 3, label %255
  ]

255:                                              ; preds = %252, %252
  %256 = load ptr, ptr %254, align 8, !tbaa !35
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %40, !llvm.loop !162

258:                                              ; preds = %255, %252, %27, %21, %18, %20
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"function_entry_count", i64 38}
!55 = !{!"regrename.c;gate_handle_regrename"}
!56 = !{!"branch_weights", i32 38, i32 0}
!57 = !{!58, !42, i64 40}
!58 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!59 = !{!58, !36, i64 32}
!60 = !{!58, !36, i64 24}
!61 = !{!58, !36, i64 16}
!62 = !{!58, !41, i64 48}
!63 = !{!58, !36, i64 8}
!64 = !{!65, !36, i64 8}
!65 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!66 = !{!67, !36, i64 0}
!67 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!68 = !{!69, !36, i64 56}
!69 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!70 = !{!67, !36, i64 8}
!71 = !{!69, !41, i64 80}
!72 = !{!73, !36, i64 24}
!73 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!74 = !{!42, !42, i64 0}
!75 = !{!76, !41, i64 16}
!76 = !{!"dataflow", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 53, !37, i64 54}
!77 = !{!76, !36, i64 8}
!78 = !{!79, !36, i64 0}
!79 = !{!"df_scan_bb_info", !36, i64 0, !36, i64 8}
!80 = distinct !{!80, !52, !53}
!81 = !{!82, !37, i64 1086}
!82 = !{!"recog_data", !37, i64 0, !37, i64 240, !37, i64 480, !37, i64 720, !37, i64 840, !37, i64 960, !37, i64 1072, !37, i64 1086, !37, i64 1087, !37, i64 1088, !37, i64 1089, !36, i64 1120}
!83 = !{!84, !41, i64 16}
!84 = !{!"operand_alternative", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 24, !41, i64 24, !41, i64 24, !41, i64 24, !41, i64 24, !41, i64 24, !41, i64 24}
!85 = !{!84, !41, i64 8}
!86 = !{!84, !41, i64 20}
!87 = !{i8 0, i8 2}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = !{!82, !37, i64 1087}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = !{!99, !36, i64 8}
!99 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!100 = distinct !{!100, !53}
!101 = !{!102, !36, i64 8}
!102 = !{!"du_head", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !73, i64 40, !42, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!103 = !{!102, !41, i64 24}
!104 = !{!102, !41, i64 28}
!105 = !{!106, !36, i64 8}
!106 = !{!"du_chain", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24}
!107 = !{!106, !36, i64 0}
!108 = distinct !{!108, !52, !53}
!109 = !{!102, !36, i64 0}
!110 = distinct !{!110, !52, !53}
!111 = !{!112, !37, i64 477}
!112 = !{!"rtl_data", !113, i64 0, !114, i64 40, !115, i64 96, !116, i64 112, !118, i64 208, !119, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!113 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!114 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!115 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!116 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !117, i64 24, !36, i64 88}
!117 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!118 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!119 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = !{!102, !42, i64 72}
!124 = !{!73, !36, i64 0}
!125 = !{!126, !41, i64 16}
!126 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = !{!126, !36, i64 0}
!130 = distinct !{!130, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = !{!106, !36, i64 16}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = !{!102, !36, i64 16}
!140 = !{!141, !41, i64 0}
!141 = !{!"VEC_du_head_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = !{!141, !41, i64 4}
!146 = !{!102, !41, i64 32}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = !{!156, !41, i64 0}
!156 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = !{!43, !43, i64 0}
!160 = distinct !{!160, !52, !53}
!161 = distinct !{!161, !52, !53}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = distinct !{!164, !52, !53}
