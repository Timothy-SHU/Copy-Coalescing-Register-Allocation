; ModuleID = 'loop-invariant.c'
source_filename = "loop-invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop_data = type { ptr, i8, [27 x i32], %struct.bitmap_head_def, %struct.bitmap_head_def }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.invariant = type { i32, i32, ptr, i32, ptr, ptr, i8, i8, i8, i32, ptr, i32 }
%struct.def = type { ptr, i32, i32, i32 }
%struct.VEC_invariant_p_base = type { i32, i32, [1 x ptr] }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.use = type { ptr, ptr, i32, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df_link = type { ptr, ptr }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.invariant_expr_entry = type { ptr, ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_ira_loop_pressure = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@curr_loop = internal unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@invariant_table = internal unnamed_addr global ptr null, align 8
@invariant_table_size = internal unnamed_addr global i32 0, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@curr_regs_live = internal global %struct.bitmap_head_def zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@n_regs_set = internal unnamed_addr global i32 0, align 4
@regs_set = internal unnamed_addr global [106 x ptr] zeroinitializer, align 16
@flag_ira_region = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [47 x i8] c"\0A  Loop %d (parent %d, header bb%d, depth %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A    ref. regnos:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A    live regnos:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A    Pressure:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@eliminable_regset = external local_unnamed_addr global i64, align 8
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@actual_stamp = internal unnamed_addr global i32 0, align 4
@invariants = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"*****starting processing of loop  ******\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"*****ending processing of loop  ******\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"loop-invariant.c\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"Set in insn %d is invariant (%d), cost %d, depends on \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Invariant %d is equivalent to invariant %d.\0A\00", align 1
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"Decided to move invariant %d -- gain %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Decided to move dependent invariant %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to move invariant %d\0A\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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

; Function Attrs: cold nounwind uwtable
define dso_local void @move_loop_invariants() local_unnamed_addr #9 !prof !34 {
  %1 = alloca i32, align 4
  %2 = alloca [27 x i32], align 16
  %3 = alloca [27 x i32], align 16
  %4 = alloca [27 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %9 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %960, label %11

11:                                               ; preds = %0
  tail call void @df_analyze() #17
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @ira_set_pseudo_classes(ptr noundef %12) #17
  %13 = load ptr, ptr @cfun, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %92, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ]
  %25 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %24, i64 noundef 8, i64 noundef 4) #17
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.loops, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  br label %31

31:                                               ; preds = %44, %23
  %32 = phi ptr [ %30, %23 ], [ %45, %44 ]
  %33 = load i32, ptr %32, align 8, !tbaa !61
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %25, align 4, !tbaa !65
  %37 = add i32 %36, 1
  store i32 %37, ptr %25, align 4, !tbaa !65
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.VEC_int_base, ptr %25, i64 0, i32 2, i64 %38
  store i32 %33, ptr %39, align 4, !tbaa !50
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !67
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %49, %40
  %45 = phi ptr [ %42, %40 ], [ %52, %49 ]
  br label %31, !llvm.loop !68

46:                                               ; preds = %68
  %47 = icmp eq ptr %25, null
  %48 = getelementptr inbounds %struct.loops, ptr %28, i64 0, i32 1
  br label %71

49:                                               ; preds = %40, %68
  %50 = phi ptr [ %69, %68 ], [ %32, %40 ]
  %51 = getelementptr inbounds %struct.loop, ptr %50, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %44, !llvm.loop !68

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.loop, ptr %50, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !70
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %59, %58 ], [ 0, %54 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = add i32 %61, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %56, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi ptr [ %67, %63 ], [ null, %60 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %46, label %49, !llvm.loop !71

71:                                               ; preds = %46, %83
  %72 = phi i32 [ %84, %83 ], [ 0, %46 ]
  br i1 %47, label %80, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %25, align 4, !tbaa !65
  %75 = icmp ugt i32 %74, %72
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds %struct.VEC_int_base, ptr %25, i64 0, i32 2, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !50
  br label %80

80:                                               ; preds = %76, %73, %71
  %81 = phi i32 [ %79, %76 ], [ 0, %73 ], [ 0, %71 ]
  %82 = phi i1 [ false, %76 ], [ true, %73 ], [ true, %71 ]
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = add i32 %72, 1
  %85 = load ptr, ptr %48, align 8, !tbaa !56
  %86 = zext i32 %81 to i64
  %87 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %85, i64 0, i32 2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !35
  %89 = icmp eq ptr %88, null
  br i1 %89, label %71, label %92, !llvm.loop !72

90:                                               ; preds = %80
  br i1 %47, label %92, label %91

91:                                               ; preds = %90
  tail call void @free(ptr noundef %25)
  br label %92

92:                                               ; preds = %83, %91, %90, %11
  %93 = phi ptr [ null, %11 ], [ null, %91 ], [ null, %90 ], [ %88, %83 ]
  %94 = phi i32 [ 0, %11 ], [ %72, %91 ], [ %72, %90 ], [ %84, %83 ]
  %95 = phi ptr [ null, %11 ], [ null, %91 ], [ null, %90 ], [ %25, %83 ]
  %96 = icmp eq ptr %93, null
  br i1 %96, label %142, label %97

97:                                               ; preds = %92, %137
  %98 = phi ptr [ %140, %137 ], [ %95, %92 ]
  %99 = phi i32 [ %139, %137 ], [ %94, %92 ]
  %100 = phi ptr [ %138, %137 ], [ %93, %92 ]
  %101 = getelementptr inbounds %struct.loop, ptr %100, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !73
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 184) #17
  store ptr %105, ptr %101, align 8, !tbaa !73
  %106 = getelementptr inbounds %struct.loop_data, ptr %105, i64 0, i32 3
  %107 = getelementptr inbounds %struct.loop_data, ptr %105, i64 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %107, align 8, !tbaa !74
  %108 = getelementptr inbounds %struct.loop_data, ptr %105, i64 0, i32 4
  %109 = getelementptr inbounds %struct.loop_data, ptr %105, i64 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %108, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %109, align 8, !tbaa !74
  br label %110

110:                                              ; preds = %104, %97
  %111 = icmp eq ptr %98, null
  %112 = load ptr, ptr @cfun, align 8
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 4
  br label %114

114:                                              ; preds = %126, %110
  %115 = phi i32 [ %99, %110 ], [ %127, %126 ]
  br i1 %111, label %123, label %116

116:                                              ; preds = %114
  %117 = load i32, ptr %98, align 4, !tbaa !65
  %118 = icmp ugt i32 %117, %115
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = zext i32 %115 to i64
  %121 = getelementptr inbounds %struct.VEC_int_base, ptr %98, i64 0, i32 2, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !50
  br label %123

123:                                              ; preds = %119, %116, %114
  %124 = phi i32 [ %122, %119 ], [ 0, %116 ], [ 0, %114 ]
  %125 = phi i1 [ false, %119 ], [ true, %116 ], [ true, %114 ]
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = add i32 %115, 1
  %128 = load ptr, ptr %113, align 8, !tbaa !54
  %129 = getelementptr inbounds %struct.loops, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !56
  %131 = zext i32 %124 to i64
  %132 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %130, i64 0, i32 2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  %134 = icmp eq ptr %133, null
  br i1 %134, label %114, label %137, !llvm.loop !72

135:                                              ; preds = %123
  br i1 %111, label %137, label %136

136:                                              ; preds = %135
  tail call void @free(ptr noundef %98)
  br label %137

137:                                              ; preds = %126, %136, %135
  %138 = phi ptr [ null, %136 ], [ null, %135 ], [ %133, %126 ]
  %139 = phi i32 [ %115, %136 ], [ %115, %135 ], [ %127, %126 ]
  %140 = phi ptr [ null, %136 ], [ null, %135 ], [ %98, %126 ]
  %141 = icmp eq ptr %138, null
  br i1 %141, label %142, label %97, !llvm.loop !76

142:                                              ; preds = %137, %92
  tail call void @ira_setup_eliminable_regset() #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @curr_regs_live, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @curr_regs_live, i64 0, i32 3), align 8, !tbaa !74
  %143 = load ptr, ptr @cfun, align 8, !tbaa !35
  %144 = getelementptr inbounds %struct.function, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !77
  %146 = load ptr, ptr %145, align 8, !tbaa !78
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !80
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %145, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !82
  %151 = icmp eq ptr %148, %150
  br i1 %151, label %401, label %152

152:                                              ; preds = %142, %392
  %153 = phi ptr [ %395, %392 ], [ %143, %142 ]
  %154 = phi ptr [ %394, %392 ], [ %148, %142 ]
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !83
  store ptr %156, ptr @curr_loop, align 8, !tbaa !35
  %157 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !54
  %159 = getelementptr inbounds %struct.loops, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !60
  %161 = icmp eq ptr %156, %160
  br i1 %161, label %392, label %162

162:                                              ; preds = %152
  %163 = load ptr, ptr @cfun, align 8, !tbaa !35
  %164 = getelementptr inbounds %struct.function, ptr %163, i64 0, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !54
  %166 = getelementptr inbounds %struct.loops, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !60
  %168 = icmp eq ptr %156, %167
  br i1 %168, label %212, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 9
  br label %171

171:                                              ; preds = %169, %204
  %172 = phi ptr [ %156, %169 ], [ %205, %204 ]
  %173 = getelementptr inbounds %struct.loop, ptr %172, i64 0, i32 10
  %174 = load ptr, ptr %173, align 8, !tbaa !73
  %175 = getelementptr inbounds %struct.loop_data, ptr %174, i64 0, i32 4
  %176 = load i32, ptr %170, align 8, !tbaa !84
  %177 = load ptr, ptr @df, align 8, !tbaa !35
  %178 = getelementptr inbounds %struct.df, ptr %177, i64 0, i32 1, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !35
  %180 = getelementptr inbounds %struct.dataflow, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !85
  %182 = icmp ugt i32 %181, %176
  tail call void @llvm.assume(i1 %182)
  %183 = getelementptr inbounds %struct.dataflow, ptr %179, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !87
  %185 = zext i32 %176 to i64
  %186 = getelementptr inbounds ptr, ptr %184, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !35
  %188 = getelementptr inbounds %struct.df_lr_bb_info, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !88
  %190 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %175, ptr noundef %189) #17
  %191 = getelementptr inbounds %struct.loop, ptr %172, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !70
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %171
  %195 = load i32, ptr %192, align 8, !tbaa !58
  br label %196

196:                                              ; preds = %194, %171
  %197 = phi i32 [ %195, %194 ], [ 0, %171 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = add i32 %197, -1
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %192, i64 0, i32 2, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !35
  br label %204

204:                                              ; preds = %199, %196
  %205 = phi ptr [ %203, %199 ], [ null, %196 ]
  %206 = load ptr, ptr @cfun, align 8, !tbaa !35
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 4
  %208 = load ptr, ptr %207, align 8, !tbaa !54
  %209 = getelementptr inbounds %struct.loops, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !60
  %211 = icmp eq ptr %205, %210
  br i1 %211, label %212, label %171, !llvm.loop !90

212:                                              ; preds = %204, %162
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 9
  %214 = load i32, ptr %213, align 8, !tbaa !84
  %215 = load ptr, ptr @df, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.df, ptr %215, i64 0, i32 1, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !35
  %218 = getelementptr inbounds %struct.dataflow, ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 8, !tbaa !85
  %220 = icmp ugt i32 %219, %214
  tail call void @llvm.assume(i1 %220)
  %221 = getelementptr inbounds %struct.dataflow, ptr %217, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !87
  %223 = zext i32 %214 to i64
  %224 = getelementptr inbounds ptr, ptr %222, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !35
  %226 = getelementptr inbounds %struct.df_lr_bb_info, ptr %225, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !88
  tail call void @bitmap_copy(ptr noundef nonnull @curr_regs_live, ptr noundef %227) #17
  %228 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %212
  %231 = zext nneg i32 %228 to i64
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi i64 [ 0, %230 ], [ %238, %232 ]
  %234 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !50
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %236
  store i32 0, ptr %237, align 4, !tbaa !50
  %238 = add nuw nsw i64 %233, 1
  %239 = icmp eq i64 %238, %231
  br i1 %239, label %240, label %232, !llvm.loop !91

240:                                              ; preds = %232, %212
  %241 = load ptr, ptr @curr_regs_live, align 8, !tbaa !92
  %242 = icmp eq ptr %241, null
  %243 = select i1 %242, ptr @bitmap_zero_bits, ptr %241
  %244 = getelementptr inbounds %struct.bitmap_element_def, ptr %243, i64 0, i32 2
  %245 = load i32, ptr %244, align 8, !tbaa !93
  %246 = shl i32 %245, 7
  %247 = getelementptr inbounds %struct.bitmap_element_def, ptr %243, i64 0, i32 3
  %248 = load i64, ptr %247, align 8, !tbaa !95
  %249 = icmp eq i64 %248, 0
  %250 = zext i1 %249 to i32
  %251 = or disjoint i32 %246, %250
  br label %252

252:                                              ; preds = %327, %240
  %253 = phi i64 [ %248, %240 ], [ %328, %327 ]
  %254 = phi i32 [ 0, %240 ], [ %309, %327 ]
  %255 = phi ptr [ %243, %240 ], [ %310, %327 ]
  %256 = phi i32 [ %251, %240 ], [ %329, %327 ]
  %257 = icmp eq i64 %253, 0
  br i1 %257, label %272, label %258

258:                                              ; preds = %286, %252
  %259 = phi i64 [ %253, %252 ], [ %291, %286 ]
  %260 = phi i32 [ %254, %252 ], [ %287, %286 ]
  %261 = phi ptr [ %255, %252 ], [ %278, %286 ]
  %262 = phi i32 [ %256, %252 ], [ %288, %286 ]
  %263 = and i64 %259, 1
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %307

265:                                              ; preds = %258, %265
  %266 = phi i32 [ %269, %265 ], [ %262, %258 ]
  %267 = phi i64 [ %268, %265 ], [ %259, %258 ]
  %268 = lshr exact i64 %267, 1
  %269 = add i32 %266, 1
  %270 = and i64 %267, 2
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %265, label %307, !llvm.loop !96

272:                                              ; preds = %252
  %273 = add i32 %256, 63
  %274 = and i32 %273, -64
  %275 = add i32 %254, 1
  br label %276

276:                                              ; preds = %303, %272
  %277 = phi i64 [ %253, %272 ], [ %298, %303 ]
  %278 = phi ptr [ %255, %272 ], [ %301, %303 ]
  %279 = phi i32 [ %274, %272 ], [ %306, %303 ]
  %280 = phi i32 [ %275, %272 ], [ 0, %303 ]
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %297, label %282

282:                                              ; preds = %276
  %283 = add i32 %279, 128
  %284 = shl i32 %280, 6
  %285 = sub i32 %283, %284
  br label %286

286:                                              ; preds = %282, %293
  %287 = phi i32 [ %295, %293 ], [ %280, %282 ]
  %288 = phi i32 [ %294, %293 ], [ %279, %282 ]
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds %struct.bitmap_element_def, ptr %278, i64 0, i32 3, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !95
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %258

293:                                              ; preds = %286
  %294 = add i32 %288, 64
  %295 = add i32 %287, 1
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %297, label %286, !llvm.loop !97

297:                                              ; preds = %293, %276
  %298 = phi i64 [ %277, %276 ], [ %291, %293 ]
  %299 = phi i32 [ %279, %276 ], [ %285, %293 ]
  %300 = phi i32 [ %280, %276 ], [ 2, %293 ]
  %301 = load ptr, ptr %278, align 8, !tbaa !98
  %302 = icmp eq ptr %301, null
  br i1 %302, label %307, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.bitmap_element_def, ptr %301, i64 0, i32 2
  %305 = load i32, ptr %304, align 8, !tbaa !93
  %306 = shl i32 %305, 7
  br label %276, !llvm.loop !99

307:                                              ; preds = %297, %265, %258
  %308 = phi i64 [ %259, %258 ], [ %268, %265 ], [ %298, %297 ]
  %309 = phi i32 [ %260, %258 ], [ %260, %265 ], [ %300, %297 ]
  %310 = phi ptr [ %261, %258 ], [ %261, %265 ], [ %301, %297 ]
  %311 = phi i32 [ %262, %258 ], [ %269, %265 ], [ %299, %297 ]
  %312 = phi i1 [ false, %258 ], [ false, %265 ], [ true, %297 ]
  br i1 %312, label %330, label %313

313:                                              ; preds = %307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %314 = call fastcc i32 @get_regno_cover_class(i32 noundef %311, ptr noundef nonnull %5)
  %315 = load i32, ptr %5, align 4, !tbaa !50
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !50
  %319 = add nsw i32 %318, %315
  store i32 %319, ptr %317, align 4, !tbaa !50
  %320 = load ptr, ptr @curr_loop, align 8, !tbaa !35
  %321 = getelementptr inbounds %struct.loop, ptr %320, i64 0, i32 10
  %322 = load ptr, ptr %321, align 8, !tbaa !73
  %323 = getelementptr inbounds %struct.loop_data, ptr %322, i64 0, i32 2, i64 %316
  %324 = load i32, ptr %323, align 4, !tbaa !50
  %325 = icmp slt i32 %324, %319
  br i1 %325, label %326, label %327

326:                                              ; preds = %313
  store i32 %319, ptr %323, align 4, !tbaa !50
  br label %327

327:                                              ; preds = %326, %313
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %328 = lshr i64 %308, 1
  %329 = add i32 %311, 1
  br label %252, !llvm.loop !100

330:                                              ; preds = %307
  %331 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 7
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = load ptr, ptr %332, align 8, !tbaa !46
  %334 = icmp eq ptr %333, null
  br i1 %334, label %392, label %335

335:                                              ; preds = %330, %388
  %336 = phi ptr [ %390, %388 ], [ %333, %330 ]
  %337 = load ptr, ptr %331, align 8, !tbaa !46
  %338 = getelementptr inbounds %struct.rtl_bb_info, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !101
  %340 = getelementptr inbounds %struct.rtx_def, ptr %339, i64 0, i32 1, i32 0, i32 0, i64 2
  %341 = load ptr, ptr %340, align 8, !tbaa !46
  %342 = icmp eq ptr %336, %341
  br i1 %342, label %392, label %343

343:                                              ; preds = %335
  %344 = load i32, ptr %336, align 8
  %345 = and i32 %344, 65535
  %346 = add nsw i32 %345, -11
  %347 = icmp ult i32 %346, -3
  br i1 %347, label %388, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !46
  tail call fastcc void @mark_ref_regs(ptr noundef %350)
  store i32 0, ptr @n_regs_set, align 4, !tbaa !50
  %351 = load ptr, ptr %349, align 8, !tbaa !46
  tail call void @note_stores(ptr noundef %351, ptr noundef nonnull @mark_reg_clobber, ptr noundef null) #17
  %352 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 1, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !46
  %354 = icmp eq ptr %353, null
  br i1 %354, label %367, label %355

355:                                              ; preds = %348, %363
  %356 = phi ptr [ %365, %363 ], [ %353, %348 ]
  %357 = load i32, ptr %356, align 8
  %358 = and i32 %357, 16711680
  %359 = icmp eq i32 %358, 65536
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !46
  tail call fastcc void @mark_reg_death(ptr noundef %362)
  br label %363

363:                                              ; preds = %360, %355
  %364 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1, i32 0, i32 0, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %355, !llvm.loop !103

367:                                              ; preds = %363, %348
  %368 = load ptr, ptr %349, align 8, !tbaa !46
  tail call void @note_stores(ptr noundef %368, ptr noundef nonnull @mark_reg_store, ptr noundef null) #17
  %369 = load i32, ptr @n_regs_set, align 4, !tbaa !50
  %370 = add nsw i32 %369, -1
  store i32 %370, ptr @n_regs_set, align 4, !tbaa !50
  %371 = icmp sgt i32 %369, 0
  br i1 %371, label %372, label %388

372:                                              ; preds = %367, %384
  %373 = phi i32 [ %386, %384 ], [ %370, %367 ]
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [106 x ptr], ptr @regs_set, i64 0, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !35
  %377 = getelementptr inbounds %struct.rtx_def, ptr %376, i64 0, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !46
  %379 = tail call ptr @find_regno_note(ptr noundef nonnull %336, i32 noundef 6, i32 noundef %378) #17
  %380 = icmp eq ptr %379, null
  br i1 %380, label %384, label %381, !llvm.loop !104

381:                                              ; preds = %372
  %382 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !46
  tail call fastcc void @mark_reg_death(ptr noundef %383)
  br label %384

384:                                              ; preds = %381, %372
  %385 = load i32, ptr @n_regs_set, align 4, !tbaa !50
  %386 = add nsw i32 %385, -1
  store i32 %386, ptr @n_regs_set, align 4, !tbaa !50
  %387 = icmp sgt i32 %385, 0
  br i1 %387, label %372, label %388

388:                                              ; preds = %384, %367, %343
  %389 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1, i32 0, i32 0, i64 2
  %390 = load ptr, ptr %389, align 8, !tbaa !46
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %335, !llvm.loop !105

392:                                              ; preds = %388, %335, %330, %152
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 6
  %394 = load ptr, ptr %393, align 8, !tbaa !80
  %395 = load ptr, ptr @cfun, align 8, !tbaa !35
  %396 = getelementptr inbounds %struct.function, ptr %395, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !77
  %398 = getelementptr inbounds %struct.control_flow_graph, ptr %397, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !82
  %400 = icmp eq ptr %394, %399
  br i1 %400, label %401, label %152, !llvm.loop !106

401:                                              ; preds = %392, %142
  tail call void @bitmap_clear(ptr noundef nonnull @curr_regs_live) #17
  %402 = load i32, ptr @flag_ira_region, align 4
  %403 = add i32 %402, -1
  %404 = icmp ult i32 %403, 2
  br i1 %404, label %405, label %617

405:                                              ; preds = %401
  %406 = load ptr, ptr @cfun, align 8, !tbaa !35
  %407 = getelementptr inbounds %struct.function, ptr %406, i64 0, i32 4
  %408 = load ptr, ptr %407, align 8, !tbaa !54
  %409 = icmp eq ptr %408, null
  br i1 %409, label %485, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.loops, ptr %408, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !56
  %413 = icmp eq ptr %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %410
  %415 = load i32, ptr %412, align 8, !tbaa !58
  br label %416

416:                                              ; preds = %414, %410
  %417 = phi i32 [ %415, %414 ], [ 0, %410 ]
  %418 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %417, i64 noundef 8, i64 noundef 4) #17
  %419 = load ptr, ptr @cfun, align 8, !tbaa !35
  %420 = getelementptr inbounds %struct.function, ptr %419, i64 0, i32 4
  %421 = load ptr, ptr %420, align 8, !tbaa !54
  %422 = getelementptr inbounds %struct.loops, ptr %421, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !60
  br label %424

424:                                              ; preds = %437, %416
  %425 = phi ptr [ %423, %416 ], [ %438, %437 ]
  %426 = load i32, ptr %425, align 8, !tbaa !61
  %427 = icmp slt i32 %426, 1
  br i1 %427, label %433, label %428

428:                                              ; preds = %424
  %429 = load i32, ptr %418, align 4, !tbaa !65
  %430 = add i32 %429, 1
  store i32 %430, ptr %418, align 4, !tbaa !65
  %431 = zext i32 %429 to i64
  %432 = getelementptr inbounds %struct.VEC_int_base, ptr %418, i64 0, i32 2, i64 %431
  store i32 %426, ptr %432, align 4, !tbaa !50
  br label %433

433:                                              ; preds = %428, %424
  %434 = getelementptr inbounds %struct.loop, ptr %425, i64 0, i32 8
  %435 = load ptr, ptr %434, align 8, !tbaa !67
  %436 = icmp eq ptr %435, null
  br i1 %436, label %442, label %437

437:                                              ; preds = %442, %433
  %438 = phi ptr [ %435, %433 ], [ %445, %442 ]
  br label %424, !llvm.loop !68

439:                                              ; preds = %461
  %440 = icmp eq ptr %418, null
  %441 = getelementptr inbounds %struct.loops, ptr %421, i64 0, i32 1
  br label %464

442:                                              ; preds = %433, %461
  %443 = phi ptr [ %462, %461 ], [ %425, %433 ]
  %444 = getelementptr inbounds %struct.loop, ptr %443, i64 0, i32 9
  %445 = load ptr, ptr %444, align 8, !tbaa !69
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %437, !llvm.loop !68

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.loop, ptr %443, i64 0, i32 7
  %449 = load ptr, ptr %448, align 8, !tbaa !70
  %450 = icmp eq ptr %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %447
  %452 = load i32, ptr %449, align 8, !tbaa !58
  br label %453

453:                                              ; preds = %451, %447
  %454 = phi i32 [ %452, %451 ], [ 0, %447 ]
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %453
  %457 = add i32 %454, -1
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %449, i64 0, i32 2, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !35
  br label %461

461:                                              ; preds = %456, %453
  %462 = phi ptr [ %460, %456 ], [ null, %453 ]
  %463 = icmp eq ptr %462, null
  br i1 %463, label %439, label %442, !llvm.loop !71

464:                                              ; preds = %439, %476
  %465 = phi i32 [ %477, %476 ], [ 0, %439 ]
  br i1 %440, label %473, label %466

466:                                              ; preds = %464
  %467 = load i32, ptr %418, align 4, !tbaa !65
  %468 = icmp ugt i32 %467, %465
  br i1 %468, label %469, label %473

469:                                              ; preds = %466
  %470 = zext i32 %465 to i64
  %471 = getelementptr inbounds %struct.VEC_int_base, ptr %418, i64 0, i32 2, i64 %470
  %472 = load i32, ptr %471, align 4, !tbaa !50
  br label %473

473:                                              ; preds = %469, %466, %464
  %474 = phi i32 [ %472, %469 ], [ 0, %466 ], [ 0, %464 ]
  %475 = phi i1 [ false, %469 ], [ true, %466 ], [ true, %464 ]
  br i1 %475, label %483, label %476

476:                                              ; preds = %473
  %477 = add i32 %465, 1
  %478 = load ptr, ptr %441, align 8, !tbaa !56
  %479 = zext i32 %474 to i64
  %480 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %478, i64 0, i32 2, i64 %479
  %481 = load ptr, ptr %480, align 8, !tbaa !35
  %482 = icmp eq ptr %481, null
  br i1 %482, label %464, label %485, !llvm.loop !72

483:                                              ; preds = %473
  br i1 %440, label %485, label %484

484:                                              ; preds = %483
  tail call void @free(ptr noundef %418)
  br label %485

485:                                              ; preds = %476, %484, %483, %405
  %486 = phi ptr [ null, %405 ], [ null, %484 ], [ null, %483 ], [ %481, %476 ]
  %487 = phi i32 [ 0, %405 ], [ %465, %484 ], [ %465, %483 ], [ %477, %476 ]
  %488 = phi ptr [ null, %405 ], [ null, %484 ], [ null, %483 ], [ %418, %476 ]
  %489 = icmp eq ptr %486, null
  br i1 %489, label %617, label %490

490:                                              ; preds = %485, %612
  %491 = phi ptr [ %615, %612 ], [ %488, %485 ]
  %492 = phi i32 [ %614, %612 ], [ %487, %485 ]
  %493 = phi ptr [ %613, %612 ], [ %486, %485 ]
  %494 = getelementptr inbounds %struct.loop, ptr %493, i64 0, i32 10
  %495 = load ptr, ptr %494, align 8, !tbaa !73
  %496 = getelementptr inbounds %struct.loop_data, ptr %495, i64 0, i32 4
  %497 = load ptr, ptr %496, align 8, !tbaa !92
  %498 = icmp eq ptr %497, null
  %499 = select i1 %498, ptr @bitmap_zero_bits, ptr %497
  %500 = getelementptr inbounds %struct.bitmap_element_def, ptr %499, i64 0, i32 2
  %501 = load i32, ptr %500, align 8, !tbaa !93
  %502 = shl i32 %501, 7
  %503 = getelementptr inbounds %struct.bitmap_element_def, ptr %499, i64 0, i32 3
  %504 = load i64, ptr %503, align 8, !tbaa !95
  %505 = icmp eq i64 %504, 0
  %506 = zext i1 %505 to i32
  %507 = or disjoint i32 %502, %506
  br label %508

508:                                              ; preds = %586, %490
  %509 = phi i64 [ %504, %490 ], [ %587, %586 ]
  %510 = phi i32 [ 0, %490 ], [ %565, %586 ]
  %511 = phi ptr [ %499, %490 ], [ %566, %586 ]
  %512 = phi i32 [ %507, %490 ], [ %588, %586 ]
  %513 = icmp eq i64 %509, 0
  br i1 %513, label %528, label %514

514:                                              ; preds = %542, %508
  %515 = phi i64 [ %509, %508 ], [ %547, %542 ]
  %516 = phi i32 [ %510, %508 ], [ %543, %542 ]
  %517 = phi ptr [ %511, %508 ], [ %534, %542 ]
  %518 = phi i32 [ %512, %508 ], [ %544, %542 ]
  %519 = and i64 %515, 1
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %563

521:                                              ; preds = %514, %521
  %522 = phi i32 [ %525, %521 ], [ %518, %514 ]
  %523 = phi i64 [ %524, %521 ], [ %515, %514 ]
  %524 = lshr exact i64 %523, 1
  %525 = add i32 %522, 1
  %526 = and i64 %523, 2
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %521, label %563, !llvm.loop !96

528:                                              ; preds = %508
  %529 = add i32 %512, 63
  %530 = and i32 %529, -64
  %531 = add i32 %510, 1
  br label %532

532:                                              ; preds = %559, %528
  %533 = phi i64 [ %509, %528 ], [ %554, %559 ]
  %534 = phi ptr [ %511, %528 ], [ %557, %559 ]
  %535 = phi i32 [ %530, %528 ], [ %562, %559 ]
  %536 = phi i32 [ %531, %528 ], [ 0, %559 ]
  %537 = icmp eq i32 %536, 2
  br i1 %537, label %553, label %538

538:                                              ; preds = %532
  %539 = add i32 %535, 128
  %540 = shl i32 %536, 6
  %541 = sub i32 %539, %540
  br label %542

542:                                              ; preds = %538, %549
  %543 = phi i32 [ %551, %549 ], [ %536, %538 ]
  %544 = phi i32 [ %550, %549 ], [ %535, %538 ]
  %545 = zext i32 %543 to i64
  %546 = getelementptr inbounds %struct.bitmap_element_def, ptr %534, i64 0, i32 3, i64 %545
  %547 = load i64, ptr %546, align 8, !tbaa !95
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %549, label %514

549:                                              ; preds = %542
  %550 = add i32 %544, 64
  %551 = add i32 %543, 1
  %552 = icmp eq i32 %551, 2
  br i1 %552, label %553, label %542, !llvm.loop !97

553:                                              ; preds = %549, %532
  %554 = phi i64 [ %533, %532 ], [ %547, %549 ]
  %555 = phi i32 [ %535, %532 ], [ %541, %549 ]
  %556 = phi i32 [ %536, %532 ], [ 2, %549 ]
  %557 = load ptr, ptr %534, align 8, !tbaa !98
  %558 = icmp eq ptr %557, null
  br i1 %558, label %563, label %559

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.bitmap_element_def, ptr %557, i64 0, i32 2
  %561 = load i32, ptr %560, align 8, !tbaa !93
  %562 = shl i32 %561, 7
  br label %532, !llvm.loop !99

563:                                              ; preds = %553, %521, %514
  %564 = phi i64 [ %515, %514 ], [ %524, %521 ], [ %554, %553 ]
  %565 = phi i32 [ %516, %514 ], [ %516, %521 ], [ %556, %553 ]
  %566 = phi ptr [ %517, %514 ], [ %517, %521 ], [ %557, %553 ]
  %567 = phi i32 [ %518, %514 ], [ %525, %521 ], [ %555, %553 ]
  %568 = phi i1 [ false, %514 ], [ false, %521 ], [ true, %553 ]
  br i1 %568, label %569, label %573

569:                                              ; preds = %563
  %570 = icmp eq ptr %491, null
  %571 = load ptr, ptr @cfun, align 8
  %572 = getelementptr inbounds %struct.function, ptr %571, i64 0, i32 4
  br label %589

573:                                              ; preds = %563
  %574 = load ptr, ptr %494, align 8, !tbaa !73
  %575 = getelementptr inbounds %struct.loop_data, ptr %574, i64 0, i32 3
  %576 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %575, i32 noundef %567) #17
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %573
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %579 = call fastcc i32 @get_regno_cover_class(i32 noundef %567, ptr noundef nonnull %6)
  %580 = load i32, ptr %6, align 4, !tbaa !50
  %581 = load ptr, ptr %494, align 8, !tbaa !73
  %582 = zext i32 %579 to i64
  %583 = getelementptr inbounds %struct.loop_data, ptr %581, i64 0, i32 2, i64 %582
  %584 = load i32, ptr %583, align 4, !tbaa !50
  %585 = sub nsw i32 %584, %580
  store i32 %585, ptr %583, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %586

586:                                              ; preds = %578, %573
  %587 = lshr i64 %564, 1
  %588 = add i32 %567, 1
  br label %508, !llvm.loop !107

589:                                              ; preds = %569, %601
  %590 = phi i32 [ %602, %601 ], [ %492, %569 ]
  br i1 %570, label %598, label %591

591:                                              ; preds = %589
  %592 = load i32, ptr %491, align 4, !tbaa !65
  %593 = icmp ugt i32 %592, %590
  br i1 %593, label %594, label %598

594:                                              ; preds = %591
  %595 = zext i32 %590 to i64
  %596 = getelementptr inbounds %struct.VEC_int_base, ptr %491, i64 0, i32 2, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !50
  br label %598

598:                                              ; preds = %594, %591, %589
  %599 = phi i32 [ %597, %594 ], [ 0, %591 ], [ 0, %589 ]
  %600 = phi i1 [ false, %594 ], [ true, %591 ], [ true, %589 ]
  br i1 %600, label %610, label %601

601:                                              ; preds = %598
  %602 = add i32 %590, 1
  %603 = load ptr, ptr %572, align 8, !tbaa !54
  %604 = getelementptr inbounds %struct.loops, ptr %603, i64 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !56
  %606 = zext i32 %599 to i64
  %607 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %605, i64 0, i32 2, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !35
  %609 = icmp eq ptr %608, null
  br i1 %609, label %589, label %612, !llvm.loop !72

610:                                              ; preds = %598
  br i1 %570, label %612, label %611

611:                                              ; preds = %610
  tail call void @free(ptr noundef %491)
  br label %612

612:                                              ; preds = %601, %611, %610
  %613 = phi ptr [ null, %611 ], [ null, %610 ], [ %608, %601 ]
  %614 = phi i32 [ %590, %611 ], [ %590, %610 ], [ %602, %601 ]
  %615 = phi ptr [ null, %611 ], [ null, %610 ], [ %491, %601 ]
  %616 = icmp eq ptr %613, null
  br i1 %616, label %617, label %490, !llvm.loop !108

617:                                              ; preds = %612, %485, %401
  %618 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %619 = icmp eq ptr %618, null
  br i1 %619, label %960, label %620

620:                                              ; preds = %617
  %621 = load ptr, ptr @cfun, align 8, !tbaa !35
  %622 = getelementptr inbounds %struct.function, ptr %621, i64 0, i32 4
  %623 = load ptr, ptr %622, align 8, !tbaa !54
  %624 = icmp eq ptr %623, null
  br i1 %624, label %700, label %625

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.loops, ptr %623, i64 0, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !56
  %628 = icmp eq ptr %627, null
  br i1 %628, label %631, label %629

629:                                              ; preds = %625
  %630 = load i32, ptr %627, align 8, !tbaa !58
  br label %631

631:                                              ; preds = %629, %625
  %632 = phi i32 [ %630, %629 ], [ 0, %625 ]
  %633 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %632, i64 noundef 8, i64 noundef 4) #17
  %634 = load ptr, ptr @cfun, align 8, !tbaa !35
  %635 = getelementptr inbounds %struct.function, ptr %634, i64 0, i32 4
  %636 = load ptr, ptr %635, align 8, !tbaa !54
  %637 = getelementptr inbounds %struct.loops, ptr %636, i64 0, i32 3
  %638 = load ptr, ptr %637, align 8, !tbaa !60
  br label %639

639:                                              ; preds = %652, %631
  %640 = phi ptr [ %638, %631 ], [ %653, %652 ]
  %641 = load i32, ptr %640, align 8, !tbaa !61
  %642 = icmp slt i32 %641, 1
  br i1 %642, label %648, label %643

643:                                              ; preds = %639
  %644 = load i32, ptr %633, align 4, !tbaa !65
  %645 = add i32 %644, 1
  store i32 %645, ptr %633, align 4, !tbaa !65
  %646 = zext i32 %644 to i64
  %647 = getelementptr inbounds %struct.VEC_int_base, ptr %633, i64 0, i32 2, i64 %646
  store i32 %641, ptr %647, align 4, !tbaa !50
  br label %648

648:                                              ; preds = %643, %639
  %649 = getelementptr inbounds %struct.loop, ptr %640, i64 0, i32 8
  %650 = load ptr, ptr %649, align 8, !tbaa !67
  %651 = icmp eq ptr %650, null
  br i1 %651, label %657, label %652

652:                                              ; preds = %657, %648
  %653 = phi ptr [ %650, %648 ], [ %660, %657 ]
  br label %639, !llvm.loop !68

654:                                              ; preds = %676
  %655 = icmp eq ptr %633, null
  %656 = getelementptr inbounds %struct.loops, ptr %636, i64 0, i32 1
  br label %679

657:                                              ; preds = %648, %676
  %658 = phi ptr [ %677, %676 ], [ %640, %648 ]
  %659 = getelementptr inbounds %struct.loop, ptr %658, i64 0, i32 9
  %660 = load ptr, ptr %659, align 8, !tbaa !69
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %652, !llvm.loop !68

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.loop, ptr %658, i64 0, i32 7
  %664 = load ptr, ptr %663, align 8, !tbaa !70
  %665 = icmp eq ptr %664, null
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = load i32, ptr %664, align 8, !tbaa !58
  br label %668

668:                                              ; preds = %666, %662
  %669 = phi i32 [ %667, %666 ], [ 0, %662 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %676, label %671

671:                                              ; preds = %668
  %672 = add i32 %669, -1
  %673 = zext i32 %672 to i64
  %674 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %664, i64 0, i32 2, i64 %673
  %675 = load ptr, ptr %674, align 8, !tbaa !35
  br label %676

676:                                              ; preds = %671, %668
  %677 = phi ptr [ %675, %671 ], [ null, %668 ]
  %678 = icmp eq ptr %677, null
  br i1 %678, label %654, label %657, !llvm.loop !71

679:                                              ; preds = %654, %691
  %680 = phi i32 [ %692, %691 ], [ 0, %654 ]
  br i1 %655, label %688, label %681

681:                                              ; preds = %679
  %682 = load i32, ptr %633, align 4, !tbaa !65
  %683 = icmp ugt i32 %682, %680
  br i1 %683, label %684, label %688

684:                                              ; preds = %681
  %685 = zext i32 %680 to i64
  %686 = getelementptr inbounds %struct.VEC_int_base, ptr %633, i64 0, i32 2, i64 %685
  %687 = load i32, ptr %686, align 4, !tbaa !50
  br label %688

688:                                              ; preds = %684, %681, %679
  %689 = phi i32 [ %687, %684 ], [ 0, %681 ], [ 0, %679 ]
  %690 = phi i1 [ false, %684 ], [ true, %681 ], [ true, %679 ]
  br i1 %690, label %698, label %691

691:                                              ; preds = %688
  %692 = add i32 %680, 1
  %693 = load ptr, ptr %656, align 8, !tbaa !56
  %694 = zext i32 %689 to i64
  %695 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %693, i64 0, i32 2, i64 %694
  %696 = load ptr, ptr %695, align 8, !tbaa !35
  %697 = icmp eq ptr %696, null
  br i1 %697, label %679, label %700, !llvm.loop !72

698:                                              ; preds = %688
  br i1 %655, label %700, label %699

699:                                              ; preds = %698
  tail call void @free(ptr noundef %633)
  br label %700

700:                                              ; preds = %691, %699, %698, %620
  %701 = phi ptr [ null, %620 ], [ null, %699 ], [ null, %698 ], [ %696, %691 ]
  %702 = phi i32 [ 0, %620 ], [ %680, %699 ], [ %680, %698 ], [ %692, %691 ]
  %703 = phi ptr [ null, %620 ], [ null, %699 ], [ null, %698 ], [ %633, %691 ]
  %704 = icmp eq ptr %701, null
  br i1 %704, label %960, label %705

705:                                              ; preds = %700, %955
  %706 = phi ptr [ %958, %955 ], [ %703, %700 ]
  %707 = phi i32 [ %957, %955 ], [ %702, %700 ]
  %708 = phi ptr [ %956, %955 ], [ %701, %700 ]
  %709 = getelementptr inbounds %struct.loop, ptr %708, i64 0, i32 7
  %710 = load ptr, ptr %709, align 8, !tbaa !70
  %711 = icmp eq ptr %710, null
  br i1 %711, label %714, label %712

712:                                              ; preds = %705
  %713 = load i32, ptr %710, align 8, !tbaa !58
  br label %714

714:                                              ; preds = %712, %705
  %715 = phi i32 [ %713, %712 ], [ 0, %705 ]
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %722, label %717

717:                                              ; preds = %714
  %718 = add i32 %715, -1
  %719 = zext i32 %718 to i64
  %720 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %710, i64 0, i32 2, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !35
  br label %722

722:                                              ; preds = %717, %714
  %723 = phi ptr [ %721, %717 ], [ null, %714 ]
  %724 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %725 = load i32, ptr %708, align 8, !tbaa !61
  %726 = icmp eq ptr %723, null
  br i1 %726, label %729, label %727

727:                                              ; preds = %722
  %728 = load i32, ptr %723, align 8, !tbaa !61
  br label %729

729:                                              ; preds = %727, %722
  %730 = phi i32 [ %728, %727 ], [ -1, %722 ]
  %731 = getelementptr inbounds %struct.loop, ptr %708, i64 0, i32 2
  %732 = load ptr, ptr %731, align 8, !tbaa !109
  %733 = getelementptr inbounds %struct.basic_block_def, ptr %732, i64 0, i32 9
  %734 = load i32, ptr %733, align 8, !tbaa !84
  br i1 %711, label %737, label %735

735:                                              ; preds = %729
  %736 = load i32, ptr %710, align 8, !tbaa !58
  br label %737

737:                                              ; preds = %735, %729
  %738 = phi i32 [ %736, %735 ], [ 0, %729 ]
  %739 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %724, ptr noundef nonnull @.str, i32 noundef %725, i32 noundef %730, i32 noundef %734, i32 noundef %738)
  %740 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %741 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 17, i64 1, ptr %740)
  %742 = getelementptr inbounds %struct.loop, ptr %708, i64 0, i32 10
  %743 = load ptr, ptr %742, align 8, !tbaa !73
  %744 = getelementptr inbounds %struct.loop_data, ptr %743, i64 0, i32 3
  %745 = load ptr, ptr %744, align 8, !tbaa !92
  %746 = icmp eq ptr %745, null
  %747 = select i1 %746, ptr @bitmap_zero_bits, ptr %745
  %748 = getelementptr inbounds %struct.bitmap_element_def, ptr %747, i64 0, i32 2
  %749 = load i32, ptr %748, align 8, !tbaa !93
  %750 = shl i32 %749, 7
  %751 = getelementptr inbounds %struct.bitmap_element_def, ptr %747, i64 0, i32 3
  %752 = load i64, ptr %751, align 8, !tbaa !95
  %753 = icmp eq i64 %752, 0
  %754 = zext i1 %753 to i32
  %755 = or disjoint i32 %750, %754
  br label %756

756:                                              ; preds = %818, %737
  %757 = phi i64 [ %752, %737 ], [ %820, %818 ]
  %758 = phi i32 [ 0, %737 ], [ %813, %818 ]
  %759 = phi ptr [ %747, %737 ], [ %814, %818 ]
  %760 = phi i32 [ %755, %737 ], [ %821, %818 ]
  %761 = icmp eq i64 %757, 0
  br i1 %761, label %776, label %762

762:                                              ; preds = %790, %756
  %763 = phi i64 [ %757, %756 ], [ %795, %790 ]
  %764 = phi i32 [ %758, %756 ], [ %791, %790 ]
  %765 = phi ptr [ %759, %756 ], [ %782, %790 ]
  %766 = phi i32 [ %760, %756 ], [ %792, %790 ]
  %767 = and i64 %763, 1
  %768 = icmp eq i64 %767, 0
  br i1 %768, label %769, label %811

769:                                              ; preds = %762, %769
  %770 = phi i32 [ %773, %769 ], [ %766, %762 ]
  %771 = phi i64 [ %772, %769 ], [ %763, %762 ]
  %772 = lshr exact i64 %771, 1
  %773 = add i32 %770, 1
  %774 = and i64 %771, 2
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %769, label %811, !llvm.loop !96

776:                                              ; preds = %756
  %777 = add i32 %760, 63
  %778 = and i32 %777, -64
  %779 = add i32 %758, 1
  br label %780

780:                                              ; preds = %807, %776
  %781 = phi i64 [ %757, %776 ], [ %802, %807 ]
  %782 = phi ptr [ %759, %776 ], [ %805, %807 ]
  %783 = phi i32 [ %778, %776 ], [ %810, %807 ]
  %784 = phi i32 [ %779, %776 ], [ 0, %807 ]
  %785 = icmp eq i32 %784, 2
  br i1 %785, label %801, label %786

786:                                              ; preds = %780
  %787 = add i32 %783, 128
  %788 = shl i32 %784, 6
  %789 = sub i32 %787, %788
  br label %790

790:                                              ; preds = %786, %797
  %791 = phi i32 [ %799, %797 ], [ %784, %786 ]
  %792 = phi i32 [ %798, %797 ], [ %783, %786 ]
  %793 = zext i32 %791 to i64
  %794 = getelementptr inbounds %struct.bitmap_element_def, ptr %782, i64 0, i32 3, i64 %793
  %795 = load i64, ptr %794, align 8, !tbaa !95
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %797, label %762

797:                                              ; preds = %790
  %798 = add i32 %792, 64
  %799 = add i32 %791, 1
  %800 = icmp eq i32 %799, 2
  br i1 %800, label %801, label %790, !llvm.loop !97

801:                                              ; preds = %797, %780
  %802 = phi i64 [ %781, %780 ], [ %795, %797 ]
  %803 = phi i32 [ %783, %780 ], [ %789, %797 ]
  %804 = phi i32 [ %784, %780 ], [ 2, %797 ]
  %805 = load ptr, ptr %782, align 8, !tbaa !98
  %806 = icmp eq ptr %805, null
  br i1 %806, label %811, label %807

807:                                              ; preds = %801
  %808 = getelementptr inbounds %struct.bitmap_element_def, ptr %805, i64 0, i32 2
  %809 = load i32, ptr %808, align 8, !tbaa !93
  %810 = shl i32 %809, 7
  br label %780, !llvm.loop !99

811:                                              ; preds = %801, %769, %762
  %812 = phi i64 [ %763, %762 ], [ %772, %769 ], [ %802, %801 ]
  %813 = phi i32 [ %764, %762 ], [ %764, %769 ], [ %804, %801 ]
  %814 = phi ptr [ %765, %762 ], [ %765, %769 ], [ %805, %801 ]
  %815 = phi i32 [ %766, %762 ], [ %773, %769 ], [ %803, %801 ]
  %816 = phi i1 [ false, %762 ], [ false, %769 ], [ true, %801 ]
  %817 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %816, label %822, label %818

818:                                              ; preds = %811
  %819 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %817, ptr noundef nonnull @.str.2, i32 noundef %815)
  %820 = lshr i64 %812, 1
  %821 = add i32 %815, 1
  br label %756, !llvm.loop !110

822:                                              ; preds = %811
  %823 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %817)
  %824 = load ptr, ptr %742, align 8, !tbaa !73
  %825 = getelementptr inbounds %struct.loop_data, ptr %824, i64 0, i32 4
  %826 = load ptr, ptr %825, align 8, !tbaa !92
  %827 = icmp eq ptr %826, null
  %828 = select i1 %827, ptr @bitmap_zero_bits, ptr %826
  %829 = getelementptr inbounds %struct.bitmap_element_def, ptr %828, i64 0, i32 2
  %830 = load i32, ptr %829, align 8, !tbaa !93
  %831 = shl i32 %830, 7
  %832 = getelementptr inbounds %struct.bitmap_element_def, ptr %828, i64 0, i32 3
  %833 = load i64, ptr %832, align 8, !tbaa !95
  %834 = icmp eq i64 %833, 0
  %835 = zext i1 %834 to i32
  %836 = or disjoint i32 %831, %835
  br label %837

837:                                              ; preds = %899, %822
  %838 = phi i64 [ %833, %822 ], [ %901, %899 ]
  %839 = phi i32 [ 0, %822 ], [ %894, %899 ]
  %840 = phi ptr [ %828, %822 ], [ %895, %899 ]
  %841 = phi i32 [ %836, %822 ], [ %902, %899 ]
  %842 = icmp eq i64 %838, 0
  br i1 %842, label %857, label %843

843:                                              ; preds = %871, %837
  %844 = phi i64 [ %838, %837 ], [ %876, %871 ]
  %845 = phi i32 [ %839, %837 ], [ %872, %871 ]
  %846 = phi ptr [ %840, %837 ], [ %863, %871 ]
  %847 = phi i32 [ %841, %837 ], [ %873, %871 ]
  %848 = and i64 %844, 1
  %849 = icmp eq i64 %848, 0
  br i1 %849, label %850, label %892

850:                                              ; preds = %843, %850
  %851 = phi i32 [ %854, %850 ], [ %847, %843 ]
  %852 = phi i64 [ %853, %850 ], [ %844, %843 ]
  %853 = lshr exact i64 %852, 1
  %854 = add i32 %851, 1
  %855 = and i64 %852, 2
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %850, label %892, !llvm.loop !96

857:                                              ; preds = %837
  %858 = add i32 %841, 63
  %859 = and i32 %858, -64
  %860 = add i32 %839, 1
  br label %861

861:                                              ; preds = %888, %857
  %862 = phi i64 [ %838, %857 ], [ %883, %888 ]
  %863 = phi ptr [ %840, %857 ], [ %886, %888 ]
  %864 = phi i32 [ %859, %857 ], [ %891, %888 ]
  %865 = phi i32 [ %860, %857 ], [ 0, %888 ]
  %866 = icmp eq i32 %865, 2
  br i1 %866, label %882, label %867

867:                                              ; preds = %861
  %868 = add i32 %864, 128
  %869 = shl i32 %865, 6
  %870 = sub i32 %868, %869
  br label %871

871:                                              ; preds = %867, %878
  %872 = phi i32 [ %880, %878 ], [ %865, %867 ]
  %873 = phi i32 [ %879, %878 ], [ %864, %867 ]
  %874 = zext i32 %872 to i64
  %875 = getelementptr inbounds %struct.bitmap_element_def, ptr %863, i64 0, i32 3, i64 %874
  %876 = load i64, ptr %875, align 8, !tbaa !95
  %877 = icmp eq i64 %876, 0
  br i1 %877, label %878, label %843

878:                                              ; preds = %871
  %879 = add i32 %873, 64
  %880 = add i32 %872, 1
  %881 = icmp eq i32 %880, 2
  br i1 %881, label %882, label %871, !llvm.loop !97

882:                                              ; preds = %878, %861
  %883 = phi i64 [ %862, %861 ], [ %876, %878 ]
  %884 = phi i32 [ %864, %861 ], [ %870, %878 ]
  %885 = phi i32 [ %865, %861 ], [ 2, %878 ]
  %886 = load ptr, ptr %863, align 8, !tbaa !98
  %887 = icmp eq ptr %886, null
  br i1 %887, label %892, label %888

888:                                              ; preds = %882
  %889 = getelementptr inbounds %struct.bitmap_element_def, ptr %886, i64 0, i32 2
  %890 = load i32, ptr %889, align 8, !tbaa !93
  %891 = shl i32 %890, 7
  br label %861, !llvm.loop !99

892:                                              ; preds = %882, %850, %843
  %893 = phi i64 [ %844, %843 ], [ %853, %850 ], [ %883, %882 ]
  %894 = phi i32 [ %845, %843 ], [ %845, %850 ], [ %885, %882 ]
  %895 = phi ptr [ %846, %843 ], [ %846, %850 ], [ %886, %882 ]
  %896 = phi i32 [ %847, %843 ], [ %854, %850 ], [ %884, %882 ]
  %897 = phi i1 [ false, %843 ], [ false, %850 ], [ true, %882 ]
  %898 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %897, label %903, label %899

899:                                              ; preds = %892
  %900 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %898, ptr noundef nonnull @.str.2, i32 noundef %896)
  %901 = lshr i64 %893, 1
  %902 = add i32 %896, 1
  br label %837, !llvm.loop !111

903:                                              ; preds = %892
  %904 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %898)
  %905 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %906 = icmp sgt i32 %905, 0
  br i1 %906, label %907, label %926

907:                                              ; preds = %903, %921
  %908 = phi i64 [ %922, %921 ], [ 0, %903 ]
  %909 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !50
  %911 = load ptr, ptr %742, align 8, !tbaa !73
  %912 = zext i32 %910 to i64
  %913 = getelementptr inbounds %struct.loop_data, ptr %911, i64 0, i32 2, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !50
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %921, label %916

916:                                              ; preds = %907
  %917 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %918 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %912
  %919 = load ptr, ptr %918, align 8, !tbaa !35
  %920 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %917, ptr noundef nonnull @.str.5, ptr noundef %919, i32 noundef %914)
  br label %921

921:                                              ; preds = %916, %907
  %922 = add nuw nsw i64 %908, 1
  %923 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %924 = sext i32 %923 to i64
  %925 = icmp slt i64 %922, %924
  br i1 %925, label %907, label %926, !llvm.loop !112

926:                                              ; preds = %921, %903
  %927 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %928 = tail call i32 @fputc(i32 10, ptr %927)
  %929 = icmp eq ptr %706, null
  %930 = load ptr, ptr @cfun, align 8
  %931 = getelementptr inbounds %struct.function, ptr %930, i64 0, i32 4
  br label %932

932:                                              ; preds = %944, %926
  %933 = phi i32 [ %707, %926 ], [ %945, %944 ]
  br i1 %929, label %941, label %934

934:                                              ; preds = %932
  %935 = load i32, ptr %706, align 4, !tbaa !65
  %936 = icmp ugt i32 %935, %933
  br i1 %936, label %937, label %941

937:                                              ; preds = %934
  %938 = zext i32 %933 to i64
  %939 = getelementptr inbounds %struct.VEC_int_base, ptr %706, i64 0, i32 2, i64 %938
  %940 = load i32, ptr %939, align 4, !tbaa !50
  br label %941

941:                                              ; preds = %937, %934, %932
  %942 = phi i32 [ %940, %937 ], [ 0, %934 ], [ 0, %932 ]
  %943 = phi i1 [ false, %937 ], [ true, %934 ], [ true, %932 ]
  br i1 %943, label %953, label %944

944:                                              ; preds = %941
  %945 = add i32 %933, 1
  %946 = load ptr, ptr %931, align 8, !tbaa !54
  %947 = getelementptr inbounds %struct.loops, ptr %946, i64 0, i32 1
  %948 = load ptr, ptr %947, align 8, !tbaa !56
  %949 = zext i32 %942 to i64
  %950 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %948, i64 0, i32 2, i64 %949
  %951 = load ptr, ptr %950, align 8, !tbaa !35
  %952 = icmp eq ptr %951, null
  br i1 %952, label %932, label %955, !llvm.loop !72

953:                                              ; preds = %941
  br i1 %929, label %955, label %954

954:                                              ; preds = %953
  tail call void @free(ptr noundef %706)
  br label %955

955:                                              ; preds = %944, %954, %953
  %956 = phi ptr [ null, %954 ], [ null, %953 ], [ %951, %944 ]
  %957 = phi i32 [ %933, %954 ], [ %933, %953 ], [ %945, %944 ]
  %958 = phi ptr [ null, %954 ], [ null, %953 ], [ %706, %944 ]
  %959 = icmp eq ptr %956, null
  br i1 %959, label %960, label %705, !llvm.loop !113

960:                                              ; preds = %955, %700, %617, %0
  %961 = tail call i32 @df_set_flags(i32 noundef 36) #17
  call fastcc void @fel_init(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 2)
  %962 = load ptr, ptr %7, align 8, !tbaa !35
  %963 = icmp eq ptr %962, null
  br i1 %963, label %1808, label %964

964:                                              ; preds = %960
  %965 = getelementptr inbounds %struct.loop_iterator, ptr %8, i64 0, i32 1
  br label %966

966:                                              ; preds = %964, %1805
  %967 = phi ptr [ %962, %964 ], [ %1806, %1805 ]
  store ptr %967, ptr @curr_loop, align 8, !tbaa !35
  %968 = getelementptr inbounds %struct.loop, ptr %967, i64 0, i32 6
  %969 = load i32, ptr %968, align 4, !tbaa !114
  %970 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %971 = getelementptr inbounds %struct.param_info, ptr %970, i64 112, i32 1
  %972 = load i32, ptr %971, align 8, !tbaa !115
  %973 = icmp ugt i32 %969, %972
  br i1 %973, label %1772, label %974

974:                                              ; preds = %966
  store i32 1, ptr @actual_stamp, align 4, !tbaa !50
  %975 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #17
  store ptr %975, ptr @invariants, align 8, !tbaa !35
  %976 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %977 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %978 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %979 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %980 = tail call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %967) #17
  %981 = load i32, ptr %968, align 4, !tbaa !114
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1105, label %983

983:                                              ; preds = %974, %1098
  %984 = phi i64 [ %1101, %1098 ], [ 0, %974 ]
  %985 = phi ptr [ %1100, %1098 ], [ %967, %974 ]
  %986 = phi i8 [ %1099, %1098 ], [ 0, %974 ]
  %987 = getelementptr inbounds ptr, ptr %980, i64 %984
  %988 = load ptr, ptr %987, align 8, !tbaa !35
  %989 = getelementptr inbounds %struct.basic_block_def, ptr %988, i64 0, i32 3
  %990 = load ptr, ptr %989, align 8, !tbaa !83
  %991 = icmp eq ptr %990, %967
  br i1 %991, label %992, label %1068

992:                                              ; preds = %983
  %993 = getelementptr inbounds %struct.basic_block_def, ptr %988, i64 0, i32 7
  %994 = load ptr, ptr %993, align 8, !tbaa !46
  %995 = load ptr, ptr %994, align 8, !tbaa !46
  %996 = icmp eq ptr %995, null
  br i1 %996, label %1022, label %997

997:                                              ; preds = %992
  %998 = getelementptr inbounds %struct.rtl_bb_info, ptr %994, i64 0, i32 1
  %999 = load ptr, ptr %998, align 8, !tbaa !101
  %1000 = getelementptr inbounds %struct.rtx_def, ptr %999, i64 0, i32 1, i32 0, i32 0, i64 2
  %1001 = load ptr, ptr %1000, align 8, !tbaa !46
  br label %1002

1002:                                             ; preds = %997, %1018
  %1003 = phi ptr [ %995, %997 ], [ %1020, %1018 ]
  %1004 = icmp eq ptr %1003, %1001
  br i1 %1004, label %1022, label %1005

1005:                                             ; preds = %1002
  %1006 = load i32, ptr %1003, align 8
  %1007 = and i32 %1006, 65535
  %1008 = icmp eq i32 %1007, 10
  br i1 %1008, label %1009, label %1018

1009:                                             ; preds = %1005
  %1010 = and i32 %1006, 33554432
  %1011 = icmp ne i32 %1010, 0
  %1012 = and i32 %1006, -2080374784
  %1013 = icmp eq i32 %1012, 0
  %1014 = or i1 %1011, %1013
  br i1 %1014, label %1015, label %1018

1015:                                             ; preds = %1009
  %1016 = trunc i64 %984 to i32
  %1017 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %976, i32 noundef %1016) #17
  br label %1022

1018:                                             ; preds = %1009, %1005
  %1019 = getelementptr inbounds %struct.rtx_def, ptr %1003, i64 0, i32 1, i32 0, i32 0, i64 2
  %1020 = load ptr, ptr %1019, align 8, !tbaa !46
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %1022, label %1002, !llvm.loop !117

1022:                                             ; preds = %1018, %1002, %992, %1015
  %1023 = phi i8 [ 1, %1015 ], [ %986, %992 ], [ %986, %1002 ], [ %986, %1018 ]
  %1024 = load ptr, ptr %987, align 8, !tbaa !35
  %1025 = getelementptr inbounds %struct.basic_block_def, ptr %1024, i64 0, i32 1
  %1026 = trunc i64 %984 to i32
  %1027 = trunc i64 %984 to i32
  br label %1028

1028:                                             ; preds = %1066, %1022
  %1029 = phi i32 [ 0, %1022 ], [ %1067, %1066 ]
  %1030 = phi ptr [ %985, %1022 ], [ %1057, %1066 ]
  %1031 = load ptr, ptr %1025, align 8, !tbaa !35
  %1032 = icmp eq ptr %1031, null
  br i1 %1032, label %1035, label %1033

1033:                                             ; preds = %1028
  %1034 = load i32, ptr %1031, align 8, !tbaa !118
  br label %1035

1035:                                             ; preds = %1033, %1028
  %1036 = phi i32 [ %1034, %1033 ], [ 0, %1028 ]
  %1037 = icmp eq i32 %1036, %1029
  br i1 %1037, label %1042, label %1038

1038:                                             ; preds = %1035
  %1039 = zext i32 %1029 to i64
  %1040 = getelementptr inbounds %struct.VEC_edge_base, ptr %1031, i64 0, i32 2, i64 %1039
  %1041 = load ptr, ptr %1040, align 8, !tbaa !35
  br label %1042

1042:                                             ; preds = %1038, %1035
  %1043 = phi ptr [ %1041, %1038 ], [ null, %1035 ]
  br i1 %1037, label %1098, label %1044

1044:                                             ; preds = %1042
  %1045 = getelementptr inbounds %struct.edge_def, ptr %1043, i64 0, i32 1
  %1046 = load ptr, ptr %1045, align 8, !tbaa !120
  %1047 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %967, ptr noundef %1046) #17
  %1048 = icmp eq i8 %1047, 0
  br i1 %1048, label %1049, label %1056

1049:                                             ; preds = %1044
  %1050 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %976, i32 noundef %1026) #17
  %1051 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %978, i32 noundef %1027) #17
  %1052 = load ptr, ptr %1045, align 8, !tbaa !120
  %1053 = getelementptr inbounds %struct.basic_block_def, ptr %1052, i64 0, i32 3
  %1054 = load ptr, ptr %1053, align 8, !tbaa !83
  %1055 = tail call ptr @find_common_loop(ptr noundef %1030, ptr noundef %1054) #17
  br label %1056

1056:                                             ; preds = %1049, %1044
  %1057 = phi ptr [ %1030, %1044 ], [ %1055, %1049 ]
  %1058 = load ptr, ptr %1025, align 8, !tbaa !35
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1062, label %1060

1060:                                             ; preds = %1056
  %1061 = load i32, ptr %1058, align 8, !tbaa !118
  br label %1062

1062:                                             ; preds = %1060, %1056
  %1063 = phi i32 [ %1061, %1060 ], [ 0, %1056 ]
  %1064 = icmp ult i32 %1029, %1063
  br i1 %1064, label %1066, label %1065

1065:                                             ; preds = %1062
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #17
  br label %1066

1066:                                             ; preds = %1065, %1062
  %1067 = add i32 %1029, 1
  br label %1028, !llvm.loop !122

1068:                                             ; preds = %983
  %1069 = getelementptr inbounds %struct.loop, ptr %990, i64 0, i32 2
  %1070 = load ptr, ptr %1069, align 8, !tbaa !109
  %1071 = icmp eq ptr %1070, %988
  br i1 %1071, label %1072, label %1098

1072:                                             ; preds = %1068
  %1073 = getelementptr inbounds %struct.loop, ptr %990, i64 0, i32 10
  %1074 = load ptr, ptr %1073, align 8, !tbaa !73
  %1075 = getelementptr inbounds %struct.loop_data, ptr %1074, i64 0, i32 1
  %1076 = load i8, ptr %1075, align 8, !tbaa !123
  %1077 = icmp eq i8 %1076, 0
  br i1 %1077, label %1081, label %1078

1078:                                             ; preds = %1072
  %1079 = trunc i64 %984 to i32
  %1080 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %976, i32 noundef %1079) #17
  br label %1081

1081:                                             ; preds = %1078, %1072
  %1082 = phi i8 [ 1, %1078 ], [ %986, %1072 ]
  %1083 = load ptr, ptr %987, align 8, !tbaa !35
  %1084 = getelementptr inbounds %struct.basic_block_def, ptr %1083, i64 0, i32 3
  %1085 = load ptr, ptr %1084, align 8, !tbaa !83
  %1086 = getelementptr inbounds %struct.loop, ptr %1085, i64 0, i32 10
  %1087 = load ptr, ptr %1086, align 8, !tbaa !73
  %1088 = load ptr, ptr %1087, align 8, !tbaa !125
  %1089 = icmp eq ptr %1088, %967
  br i1 %1089, label %1098, label %1090

1090:                                             ; preds = %1081
  %1091 = trunc i64 %984 to i32
  %1092 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %976, i32 noundef %1091) #17
  %1093 = trunc i64 %984 to i32
  %1094 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %978, i32 noundef %1093) #17
  %1095 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %1088, ptr noundef %985) #17
  %1096 = icmp eq i8 %1095, 0
  %1097 = select i1 %1096, ptr %985, ptr %1088
  br label %1098

1098:                                             ; preds = %1042, %1090, %1081, %1068
  %1099 = phi i8 [ %986, %1068 ], [ %1082, %1081 ], [ %1082, %1090 ], [ %1023, %1042 ]
  %1100 = phi ptr [ %985, %1068 ], [ %985, %1081 ], [ %1097, %1090 ], [ %1030, %1042 ]
  %1101 = add nuw nsw i64 %984, 1
  %1102 = load i32, ptr %968, align 4, !tbaa !114
  %1103 = zext i32 %1102 to i64
  %1104 = icmp ult i64 %1101, %1103
  br i1 %1104, label %983, label %1105, !llvm.loop !126

1105:                                             ; preds = %1098, %974
  %1106 = phi i8 [ 0, %974 ], [ %1099, %1098 ]
  %1107 = phi ptr [ %967, %974 ], [ %1100, %1098 ]
  %1108 = getelementptr inbounds %struct.loop, ptr %967, i64 0, i32 10
  %1109 = load ptr, ptr %1108, align 8, !tbaa !73
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1111, label %1117

1111:                                             ; preds = %1105
  %1112 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 184) #17
  store ptr %1112, ptr %1108, align 8, !tbaa !73
  %1113 = getelementptr inbounds %struct.loop_data, ptr %1112, i64 0, i32 3
  %1114 = getelementptr inbounds %struct.loop_data, ptr %1112, i64 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1113, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %1114, align 8, !tbaa !74
  %1115 = getelementptr inbounds %struct.loop_data, ptr %1112, i64 0, i32 4
  %1116 = getelementptr inbounds %struct.loop_data, ptr %1112, i64 0, i32 4, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1115, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %1116, align 8, !tbaa !74
  br label %1117

1117:                                             ; preds = %1111, %1105
  %1118 = load ptr, ptr %1108, align 8, !tbaa !73
  store ptr %1107, ptr %1118, align 8, !tbaa !125
  %1119 = getelementptr inbounds %struct.loop_data, ptr %1118, i64 0, i32 1
  store i8 %1106, ptr %1119, align 8, !tbaa !123
  tail call fastcc void @compute_always_reached(ptr noundef nonnull %967, ptr noundef %980, ptr noundef %976, ptr noundef %977)
  tail call fastcc void @compute_always_reached(ptr noundef nonnull %967, ptr noundef %980, ptr noundef %978, ptr noundef %979)
  %1120 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %1121 = load i32, ptr %968, align 4, !tbaa !114
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1134, label %1123

1123:                                             ; preds = %1117, %1123
  %1124 = phi i64 [ %1130, %1123 ], [ 0, %1117 ]
  %1125 = getelementptr inbounds ptr, ptr %980, i64 %1124
  %1126 = load ptr, ptr %1125, align 8, !tbaa !35
  %1127 = getelementptr inbounds %struct.basic_block_def, ptr %1126, i64 0, i32 9
  %1128 = load i32, ptr %1127, align 8, !tbaa !84
  %1129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1120, i32 noundef %1128) #17
  %1130 = add nuw nsw i64 %1124, 1
  %1131 = load i32, ptr %968, align 4, !tbaa !114
  %1132 = zext i32 %1131 to i64
  %1133 = icmp ult i64 %1130, %1132
  br i1 %1133, label %1123, label %1134, !llvm.loop !127

1134:                                             ; preds = %1123, %1117
  %1135 = load ptr, ptr @df, align 8, !tbaa !35
  %1136 = getelementptr inbounds %struct.df, ptr %1135, i64 0, i32 1, i64 4
  %1137 = load ptr, ptr %1136, align 8, !tbaa !35
  tail call void @df_remove_problem(ptr noundef %1137) #17
  tail call void @df_process_deferred_rescans() #17
  tail call void @df_chain_add_problem(i32 noundef 2) #17
  tail call void @df_set_blocks(ptr noundef %1120) #17
  tail call void @df_analyze() #17
  %1138 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1139 = icmp eq ptr %1138, null
  br i1 %1139, label %1147, label %1140

1140:                                             ; preds = %1134
  tail call void @df_dump_region(ptr noundef nonnull %1138) #17
  %1141 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1142 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 41, i64 1, ptr %1141)
  %1143 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1144 = tail call ptr @get_insns() #17
  tail call void @print_rtl_with_bb(ptr noundef %1143, ptr noundef %1144) #17
  %1145 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1146 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 39, i64 1, ptr %1145)
  br label %1147

1147:                                             ; preds = %1140, %1134
  tail call fastcc void @check_invariant_table_size()
  tail call void @bitmap_obstack_free(ptr noundef %1120) #17
  %1148 = load i32, ptr %968, align 4, !tbaa !114
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1433, label %1150

1150:                                             ; preds = %1147, %1428
  %1151 = phi i64 [ %1429, %1428 ], [ 0, %1147 ]
  %1152 = getelementptr inbounds ptr, ptr %980, i64 %1151
  %1153 = load ptr, ptr %1152, align 8, !tbaa !35
  %1154 = trunc i64 %1151 to i32
  %1155 = tail call i32 @bitmap_bit_p(ptr noundef %977, i32 noundef %1154) #17
  %1156 = trunc i64 %1151 to i32
  %1157 = tail call i32 @bitmap_bit_p(ptr noundef %979, i32 noundef %1156) #17
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.basic_block_def, ptr %1153, i64 0, i32 7
  %1160 = load ptr, ptr %1159, align 8, !tbaa !46
  %1161 = load ptr, ptr %1160, align 8, !tbaa !46
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1428, label %1163

1163:                                             ; preds = %1150
  %1164 = trunc i32 %1155 to i8
  br label %1165

1165:                                             ; preds = %1163, %1423
  %1166 = phi ptr [ %1426, %1423 ], [ %1161, %1163 ]
  %1167 = phi i8 [ %1424, %1423 ], [ %1164, %1163 ]
  %1168 = load ptr, ptr %1159, align 8, !tbaa !46
  %1169 = getelementptr inbounds %struct.rtl_bb_info, ptr %1168, i64 0, i32 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !101
  %1171 = getelementptr inbounds %struct.rtx_def, ptr %1170, i64 0, i32 1, i32 0, i32 0, i64 2
  %1172 = load ptr, ptr %1171, align 8, !tbaa !46
  %1173 = icmp eq ptr %1166, %1172
  br i1 %1173, label %1428, label %1174

1174:                                             ; preds = %1165
  %1175 = load i32, ptr %1166, align 8
  %1176 = and i32 %1175, 65535
  %1177 = add nsw i32 %1176, -11
  %1178 = icmp ult i32 %1177, -3
  br i1 %1178, label %1423, label %1179

1179:                                             ; preds = %1174
  %1180 = getelementptr inbounds %struct.rtx_def, ptr %1166, i64 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !46
  %1182 = load i32, ptr %1181, align 8
  %1183 = and i32 %1182, 65535
  %1184 = icmp eq i32 %1183, 23
  br i1 %1184, label %1187, label %1185

1185:                                             ; preds = %1179
  %1186 = tail call ptr @single_set_2(ptr noundef nonnull %1166, ptr noundef nonnull %1181) #17
  br label %1187

1187:                                             ; preds = %1185, %1179
  %1188 = phi ptr [ %1186, %1185 ], [ %1181, %1179 ]
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1368, label %1190

1190:                                             ; preds = %1187
  %1191 = getelementptr inbounds %struct.rtx_def, ptr %1188, i64 0, i32 1
  %1192 = load ptr, ptr %1191, align 8, !tbaa !46
  %1193 = load i32, ptr %1192, align 8
  %1194 = and i32 %1193, 65535
  %1195 = icmp eq i32 %1194, 37
  br i1 %1195, label %1196, label %1200

1196:                                             ; preds = %1190
  %1197 = getelementptr inbounds %struct.rtx_def, ptr %1192, i64 0, i32 1
  %1198 = load i32, ptr %1197, align 8, !tbaa !46
  %1199 = icmp ult i32 %1198, 53
  br i1 %1199, label %1200, label %1201

1200:                                             ; preds = %1196, %1190
  br label %1201

1201:                                             ; preds = %1200, %1196
  %1202 = phi i1 [ true, %1200 ], [ false, %1196 ]
  %1203 = lshr i32 %1193, 16
  %1204 = and i32 %1203, 255
  %1205 = icmp ult i32 %1204, 2
  br i1 %1205, label %1223, label %1206

1206:                                             ; preds = %1201
  %1207 = tail call zeroext i8 @can_copy_p(i32 noundef %1204) #17
  %1208 = icmp eq i8 %1207, 0
  br i1 %1208, label %1223, label %1209

1209:                                             ; preds = %1206
  %1210 = load i32, ptr %1192, align 8
  %1211 = and i32 %1210, 65535
  %1212 = icmp eq i32 %1211, 37
  br i1 %1212, label %1213, label %1223

1213:                                             ; preds = %1209
  %1214 = getelementptr inbounds %struct.rtx_def, ptr %1192, i64 0, i32 1
  %1215 = load i32, ptr %1214, align 8, !tbaa !46
  %1216 = icmp ult i32 %1215, 53
  br i1 %1216, label %1217, label %1223

1217:                                             ; preds = %1213
  %1218 = zext nneg i32 %1215 to i64
  %1219 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %1218
  %1220 = load i32, ptr %1219, align 4, !tbaa !50
  %1221 = icmp ne i32 %1220, 0
  %1222 = zext i1 %1221 to i8
  br label %1223

1223:                                             ; preds = %1217, %1213, %1209, %1206, %1201
  %1224 = phi i8 [ 0, %1206 ], [ 1, %1213 ], [ 1, %1209 ], [ %1222, %1217 ], [ 0, %1201 ]
  %1225 = icmp eq i8 %1224, 0
  br i1 %1225, label %1368, label %1226

1226:                                             ; preds = %1223
  %1227 = getelementptr inbounds %struct.rtx_def, ptr %1188, i64 0, i32 1, i32 0, i32 0, i64 1
  %1228 = load ptr, ptr %1227, align 8, !tbaa !46
  %1229 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %1228), !range !128
  %1230 = icmp eq i8 %1229, 0
  br i1 %1230, label %1368, label %1231

1231:                                             ; preds = %1226
  %1232 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %1166) #17
  %1233 = icmp eq i8 %1232, 0
  br i1 %1233, label %1234, label %1368

1234:                                             ; preds = %1231
  %1235 = load ptr, ptr %1180, align 8, !tbaa !46
  %1236 = tail call i32 @may_trap_or_fault_p(ptr noundef %1235) #17
  %1237 = icmp eq i32 %1236, 0
  %1238 = icmp ne i8 %1167, 0
  %1239 = or i1 %1238, %1237
  br i1 %1239, label %1240, label %1368

1240:                                             ; preds = %1234
  %1241 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %1242 = load ptr, ptr @df, align 8, !tbaa !35
  %1243 = getelementptr inbounds %struct.df, ptr %1242, i64 0, i32 10
  %1244 = load ptr, ptr %1243, align 8, !tbaa !129
  %1245 = getelementptr inbounds %struct.rtx_def, ptr %1166, i64 0, i32 1
  %1246 = load i32, ptr %1245, align 8, !tbaa !46
  %1247 = sext i32 %1246 to i64
  %1248 = getelementptr inbounds ptr, ptr %1244, i64 %1247
  %1249 = load ptr, ptr %1248, align 8, !tbaa !35
  %1250 = getelementptr inbounds %struct.rtx_def, ptr %1166, i64 0, i32 1, i32 0, i32 1
  %1251 = load ptr, ptr %1250, align 8, !tbaa !46
  %1252 = getelementptr inbounds %struct.df_insn_info, ptr %1249, i64 0, i32 2
  %1253 = load ptr, ptr %1252, align 8, !tbaa !132
  %1254 = load ptr, ptr %1253, align 8, !tbaa !35
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1265, label %1260

1256:                                             ; preds = %1260
  %1257 = getelementptr inbounds ptr, ptr %1262, i64 1
  %1258 = load ptr, ptr %1257, align 8, !tbaa !35
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1265, label %1260, !llvm.loop !134

1260:                                             ; preds = %1240, %1256
  %1261 = phi ptr [ %1258, %1256 ], [ %1254, %1240 ]
  %1262 = phi ptr [ %1257, %1256 ], [ %1253, %1240 ]
  %1263 = tail call fastcc zeroext i8 @check_dependency(ptr noundef %1251, ptr noundef nonnull %1261, ptr noundef %1241), !range !128
  %1264 = icmp eq i8 %1263, 0
  br i1 %1264, label %1279, label %1256

1265:                                             ; preds = %1256, %1240
  %1266 = getelementptr inbounds %struct.df_insn_info, ptr %1249, i64 0, i32 3
  %1267 = load ptr, ptr %1266, align 8, !tbaa !135
  %1268 = load ptr, ptr %1267, align 8, !tbaa !35
  %1269 = icmp eq ptr %1268, null
  br i1 %1269, label %1280, label %1274

1270:                                             ; preds = %1274
  %1271 = getelementptr inbounds ptr, ptr %1276, i64 1
  %1272 = load ptr, ptr %1271, align 8, !tbaa !35
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1280, label %1274, !llvm.loop !136

1274:                                             ; preds = %1265, %1270
  %1275 = phi ptr [ %1272, %1270 ], [ %1268, %1265 ]
  %1276 = phi ptr [ %1271, %1270 ], [ %1267, %1265 ]
  %1277 = tail call fastcc zeroext i8 @check_dependency(ptr noundef %1251, ptr noundef nonnull %1275, ptr noundef %1241), !range !128
  %1278 = icmp eq i8 %1277, 0
  br i1 %1278, label %1279, label %1270

1279:                                             ; preds = %1260, %1274
  tail call void @bitmap_obstack_free(ptr noundef %1241) #17
  br label %1368

1280:                                             ; preds = %1270, %1265
  br i1 %1202, label %1283, label %1281

1281:                                             ; preds = %1280
  %1282 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #17
  br label %1283

1283:                                             ; preds = %1281, %1280
  %1284 = phi ptr [ %1282, %1281 ], [ null, %1280 ]
  %1285 = tail call ptr @xmalloc(i64 noundef 64) #17
  %1286 = load i32, ptr %1166, align 8
  %1287 = and i32 %1286, 65535
  %1288 = add nsw i32 %1287, -7
  %1289 = icmp ult i32 %1288, 4
  br i1 %1289, label %1290, label %1297

1290:                                             ; preds = %1283
  %1291 = load ptr, ptr %1180, align 8, !tbaa !46
  %1292 = load i32, ptr %1291, align 8
  %1293 = and i32 %1292, 65535
  %1294 = icmp eq i32 %1293, 23
  br i1 %1294, label %1297, label %1295

1295:                                             ; preds = %1290
  %1296 = tail call ptr @single_set_2(ptr noundef nonnull %1166, ptr noundef nonnull %1291) #17
  br label %1297

1297:                                             ; preds = %1295, %1290, %1283
  %1298 = phi ptr [ %1296, %1295 ], [ null, %1283 ], [ %1291, %1290 ]
  %1299 = load ptr, ptr %1250, align 8, !tbaa !46
  %1300 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %1299) #17
  %1301 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 4
  store ptr %1284, ptr %1301, align 8, !tbaa !137
  %1302 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 6
  store i8 %1158, ptr %1302, align 8, !tbaa !139
  %1303 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 10
  store ptr %1241, ptr %1303, align 8, !tbaa !140
  %1304 = icmp eq ptr %1284, null
  br i1 %1304, label %1314, label %1305

1305:                                             ; preds = %1297
  %1306 = tail call i32 @rtx_cost(ptr noundef %1298, i32 noundef 23, i8 noundef zeroext %1300) #17
  %1307 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 9
  store i32 %1306, ptr %1307, align 4, !tbaa !141
  %1308 = getelementptr inbounds %struct.rtx_def, ptr %1298, i64 0, i32 1, i32 0, i32 0, i64 1
  %1309 = load ptr, ptr %1308, align 8, !tbaa !46
  %1310 = load i32, ptr @word_mode, align 4, !tbaa !50
  %1311 = tail call i32 @address_cost(ptr noundef %1309, i32 noundef %1310, i8 noundef zeroext 0, i8 noundef zeroext %1300) #17
  %1312 = icmp slt i32 %1311, 3
  %1313 = zext i1 %1312 to i8
  br label %1319

1314:                                             ; preds = %1297
  %1315 = getelementptr inbounds %struct.rtx_def, ptr %1298, i64 0, i32 1, i32 0, i32 0, i64 1
  %1316 = load ptr, ptr %1315, align 8, !tbaa !46
  %1317 = tail call i32 @rtx_cost(ptr noundef %1316, i32 noundef 23, i8 noundef zeroext %1300) #17
  %1318 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 9
  store i32 %1317, ptr %1318, align 4, !tbaa !141
  br label %1319

1319:                                             ; preds = %1314, %1305
  %1320 = phi i8 [ 0, %1314 ], [ %1313, %1305 ]
  %1321 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 8
  store i8 %1320, ptr %1321, align 2, !tbaa !142
  %1322 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 7
  store i8 0, ptr %1322, align 1, !tbaa !143
  %1323 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 2
  store ptr null, ptr %1323, align 8, !tbaa !144
  %1324 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 3
  store i32 -1, ptr %1324, align 8, !tbaa !145
  %1325 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 11
  store i32 0, ptr %1325, align 8, !tbaa !146
  %1326 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 5
  store ptr %1166, ptr %1326, align 8, !tbaa !147
  %1327 = load ptr, ptr @invariants, align 8
  %1328 = icmp eq ptr %1327, null
  br i1 %1328, label %1331, label %1329

1329:                                             ; preds = %1319
  %1330 = load i32, ptr %1327, align 8, !tbaa !148
  br label %1331

1331:                                             ; preds = %1329, %1319
  %1332 = phi i32 [ %1330, %1329 ], [ 0, %1319 ]
  store i32 %1332, ptr %1285, align 8, !tbaa !150
  %1333 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 1
  store i32 -1, ptr %1333, align 4, !tbaa !151
  br i1 %1304, label %1336, label %1334

1334:                                             ; preds = %1331
  %1335 = getelementptr inbounds %struct.def, ptr %1284, i64 0, i32 3
  store i32 %1332, ptr %1335, align 8, !tbaa !152
  br label %1336

1336:                                             ; preds = %1334, %1331
  br i1 %1328, label %1342, label %1337

1337:                                             ; preds = %1336
  %1338 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %1327, i64 0, i32 1
  %1339 = load i32, ptr %1338, align 4, !tbaa !154
  %1340 = load i32, ptr %1327, align 8, !tbaa !148
  %1341 = icmp eq i32 %1339, %1340
  br i1 %1341, label %1342, label %1344

1342:                                             ; preds = %1337, %1336
  %1343 = tail call ptr @vec_heap_p_reserve(ptr noundef %1327, i32 noundef 1) #17
  store ptr %1343, ptr @invariants, align 8, !tbaa !35
  br label %1344

1344:                                             ; preds = %1342, %1337
  %1345 = load ptr, ptr @invariants, align 8, !tbaa !35
  %1346 = load i32, ptr %1345, align 8, !tbaa !148
  %1347 = add i32 %1346, 1
  store i32 %1347, ptr %1345, align 8, !tbaa !148
  %1348 = zext i32 %1346 to i64
  %1349 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %1345, i64 0, i32 2, i64 %1348
  store ptr %1285, ptr %1349, align 8, !tbaa !35
  %1350 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1351 = icmp eq ptr %1350, null
  br i1 %1351, label %1360, label %1352

1352:                                             ; preds = %1344
  %1353 = load i32, ptr %1245, align 8, !tbaa !46
  %1354 = load i32, ptr %1285, align 8, !tbaa !150
  %1355 = getelementptr inbounds %struct.invariant, ptr %1285, i64 0, i32 9
  %1356 = load i32, ptr %1355, align 4, !tbaa !141
  %1357 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1350, ptr noundef nonnull @.str.12, i32 noundef %1353, i32 noundef %1354, i32 noundef %1356)
  %1358 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1359 = load ptr, ptr %1303, align 8, !tbaa !140
  tail call void @bitmap_print(ptr noundef %1358, ptr noundef %1359, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #17
  br label %1360

1360:                                             ; preds = %1352, %1344
  br i1 %1202, label %1368, label %1361

1361:                                             ; preds = %1360
  %1362 = tail call ptr @df_find_def(ptr noundef nonnull %1166, ptr noundef nonnull %1192) #17
  tail call fastcc void @check_invariant_table_size()
  %1363 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %1364 = getelementptr inbounds %struct.df_base_ref, ptr %1362, i64 0, i32 7
  %1365 = load i32, ptr %1364, align 4, !tbaa !46
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds ptr, ptr %1363, i64 %1366
  store ptr %1285, ptr %1367, align 8, !tbaa !35
  br label %1368

1368:                                             ; preds = %1361, %1360, %1279, %1234, %1231, %1226, %1223, %1187
  %1369 = load ptr, ptr @df, align 8, !tbaa !35
  %1370 = getelementptr inbounds %struct.df, ptr %1369, i64 0, i32 10
  %1371 = load ptr, ptr %1370, align 8, !tbaa !129
  %1372 = getelementptr inbounds %struct.rtx_def, ptr %1166, i64 0, i32 1
  %1373 = load i32, ptr %1372, align 8, !tbaa !46
  %1374 = sext i32 %1373 to i64
  %1375 = getelementptr inbounds ptr, ptr %1371, i64 %1374
  %1376 = load ptr, ptr %1375, align 8, !tbaa !35
  %1377 = getelementptr inbounds %struct.df_insn_info, ptr %1376, i64 0, i32 2
  %1378 = load ptr, ptr %1377, align 8, !tbaa !132
  %1379 = load ptr, ptr %1378, align 8, !tbaa !35
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1393, label %1381

1381:                                             ; preds = %1368, %1389
  %1382 = phi ptr [ %1391, %1389 ], [ %1379, %1368 ]
  %1383 = phi ptr [ %1390, %1389 ], [ %1378, %1368 ]
  %1384 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %1382)
  %1385 = icmp eq ptr %1384, null
  br i1 %1385, label %1389, label %1386

1386:                                             ; preds = %1381
  %1387 = getelementptr inbounds %struct.invariant, ptr %1384, i64 0, i32 4
  %1388 = load ptr, ptr %1387, align 8, !tbaa !137
  tail call fastcc void @record_use(ptr noundef %1388, ptr noundef nonnull %1382)
  br label %1389

1389:                                             ; preds = %1386, %1381
  %1390 = getelementptr inbounds ptr, ptr %1383, i64 1
  %1391 = load ptr, ptr %1390, align 8, !tbaa !35
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1393, label %1381, !llvm.loop !155

1393:                                             ; preds = %1389, %1368
  %1394 = getelementptr inbounds %struct.df_insn_info, ptr %1376, i64 0, i32 3
  %1395 = load ptr, ptr %1394, align 8, !tbaa !135
  %1396 = load ptr, ptr %1395, align 8, !tbaa !35
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1410, label %1398

1398:                                             ; preds = %1393, %1406
  %1399 = phi ptr [ %1408, %1406 ], [ %1396, %1393 ]
  %1400 = phi ptr [ %1407, %1406 ], [ %1395, %1393 ]
  %1401 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %1399)
  %1402 = icmp eq ptr %1401, null
  br i1 %1402, label %1406, label %1403

1403:                                             ; preds = %1398
  %1404 = getelementptr inbounds %struct.invariant, ptr %1401, i64 0, i32 4
  %1405 = load ptr, ptr %1404, align 8, !tbaa !137
  tail call fastcc void @record_use(ptr noundef %1405, ptr noundef nonnull %1399)
  br label %1406

1406:                                             ; preds = %1403, %1398
  %1407 = getelementptr inbounds ptr, ptr %1400, i64 1
  %1408 = load ptr, ptr %1407, align 8, !tbaa !35
  %1409 = icmp eq ptr %1408, null
  br i1 %1409, label %1410, label %1398, !llvm.loop !156

1410:                                             ; preds = %1406, %1393
  %1411 = icmp eq i8 %1167, 0
  br i1 %1411, label %1423, label %1412

1412:                                             ; preds = %1410
  %1413 = load i32, ptr %1166, align 8
  %1414 = and i32 %1413, 65535
  %1415 = icmp eq i32 %1414, 10
  br i1 %1415, label %1416, label %1423

1416:                                             ; preds = %1412
  %1417 = and i32 %1413, 33554432
  %1418 = icmp ne i32 %1417, 0
  %1419 = and i32 %1413, -2080374784
  %1420 = icmp eq i32 %1419, 0
  %1421 = or i1 %1418, %1420
  %1422 = select i1 %1421, i8 0, i8 %1167
  br label %1423

1423:                                             ; preds = %1416, %1412, %1410, %1174
  %1424 = phi i8 [ %1167, %1412 ], [ %1167, %1410 ], [ %1167, %1174 ], [ %1422, %1416 ]
  %1425 = getelementptr inbounds %struct.rtx_def, ptr %1166, i64 0, i32 1, i32 0, i32 0, i64 2
  %1426 = load ptr, ptr %1425, align 8, !tbaa !46
  %1427 = icmp eq ptr %1426, null
  br i1 %1427, label %1428, label %1165, !llvm.loop !157

1428:                                             ; preds = %1423, %1165, %1150
  %1429 = add nuw nsw i64 %1151, 1
  %1430 = load i32, ptr %968, align 4, !tbaa !114
  %1431 = zext i32 %1430 to i64
  %1432 = icmp ult i64 %1429, %1431
  br i1 %1432, label %1150, label %1433, !llvm.loop !158

1433:                                             ; preds = %1428, %1147
  %1434 = load ptr, ptr @invariants, align 8
  %1435 = icmp eq ptr %1434, null
  br i1 %1435, label %1439, label %1436

1436:                                             ; preds = %1433
  %1437 = load i32, ptr %1434, align 8, !tbaa !148
  %1438 = zext i32 %1437 to i64
  br label %1439

1439:                                             ; preds = %1436, %1433
  %1440 = phi i64 [ %1438, %1436 ], [ 0, %1433 ]
  %1441 = tail call ptr @htab_create(i64 noundef %1440, ptr noundef nonnull @hash_invariant_expr, ptr noundef nonnull @eq_invariant_expr, ptr noundef nonnull @free) #17
  br label %1442

1442:                                             ; preds = %1456, %1439
  %1443 = phi i32 [ 0, %1439 ], [ %1457, %1456 ]
  %1444 = load ptr, ptr @invariants, align 8
  %1445 = icmp eq ptr %1444, null
  br i1 %1445, label %1453, label %1446

1446:                                             ; preds = %1442
  %1447 = load i32, ptr %1444, align 8, !tbaa !148
  %1448 = icmp ugt i32 %1447, %1443
  br i1 %1448, label %1449, label %1453

1449:                                             ; preds = %1446
  %1450 = zext i32 %1443 to i64
  %1451 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %1444, i64 0, i32 2, i64 %1450
  %1452 = load ptr, ptr %1451, align 8, !tbaa !35
  br label %1453

1453:                                             ; preds = %1449, %1446, %1442
  %1454 = phi ptr [ %1452, %1449 ], [ null, %1446 ], [ null, %1442 ]
  %1455 = phi i1 [ false, %1449 ], [ true, %1446 ], [ true, %1442 ]
  br i1 %1455, label %1458, label %1456

1456:                                             ; preds = %1453
  tail call fastcc void @find_identical_invariants(ptr noundef %1441, ptr noundef %1454)
  %1457 = add i32 %1443, 1
  br label %1442, !llvm.loop !159

1458:                                             ; preds = %1453
  tail call void @htab_delete(ptr noundef %1441) #17
  tail call void @bitmap_obstack_free(ptr noundef %977) #17
  tail call void @bitmap_obstack_free(ptr noundef %979) #17
  tail call void @bitmap_obstack_free(ptr noundef %976) #17
  tail call void @bitmap_obstack_free(ptr noundef %978) #17
  tail call void @free(ptr noundef %980)
  %1459 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef nonnull %967) #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %4) #17
  %1460 = load ptr, ptr @invariants, align 8
  %1461 = icmp eq ptr %1460, null
  br i1 %1461, label %1464, label %1462

1462:                                             ; preds = %1458
  %1463 = load i32, ptr %1460, align 8, !tbaa !148
  br label %1464

1464:                                             ; preds = %1462, %1458
  %1465 = phi i32 [ %1463, %1462 ], [ 0, %1458 ]
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1662, label %1467

1467:                                             ; preds = %1464
  %1468 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1470, label %1497

1470:                                             ; preds = %1467
  %1471 = load ptr, ptr @df, align 8, !tbaa !35
  %1472 = getelementptr inbounds %struct.df, ptr %1471, i64 0, i32 9
  %1473 = load i32, ptr %1472, align 4, !tbaa !160
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1497, label %1475

1475:                                             ; preds = %1470
  %1476 = getelementptr inbounds %struct.df, ptr %1471, i64 0, i32 5
  %1477 = load ptr, ptr %1476, align 8, !tbaa !161
  %1478 = getelementptr inbounds %struct.df, ptr %1471, i64 0, i32 6
  %1479 = zext i32 %1473 to i64
  br label %1480

1480:                                             ; preds = %1475, %1493
  %1481 = phi i64 [ 0, %1475 ], [ %1495, %1493 ]
  %1482 = phi i32 [ 2, %1475 ], [ %1494, %1493 ]
  %1483 = getelementptr inbounds ptr, ptr %1477, i64 %1481
  %1484 = load ptr, ptr %1483, align 8, !tbaa !35
  %1485 = icmp eq ptr %1484, null
  br i1 %1485, label %1486, label %1493

1486:                                             ; preds = %1480
  %1487 = load ptr, ptr %1478, align 8, !tbaa !162
  %1488 = getelementptr inbounds ptr, ptr %1487, i64 %1481
  %1489 = load ptr, ptr %1488, align 8, !tbaa !35
  %1490 = icmp ne ptr %1489, null
  %1491 = zext i1 %1490 to i32
  %1492 = add i32 %1482, %1491
  br label %1493

1493:                                             ; preds = %1486, %1480
  %1494 = phi i32 [ %1482, %1480 ], [ %1492, %1486 ]
  %1495 = add nuw nsw i64 %1481, 1
  %1496 = icmp eq i64 %1495, %1479
  br i1 %1496, label %1497, label %1480, !llvm.loop !163

1497:                                             ; preds = %1493, %1470, %1467
  %1498 = phi i32 [ 0, %1467 ], [ 2, %1470 ], [ %1494, %1493 ]
  br i1 %1469, label %1504, label %1499

1499:                                             ; preds = %1497
  %1500 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %1501 = icmp sgt i32 %1500, 0
  br i1 %1501, label %1502, label %1513

1502:                                             ; preds = %1499
  %1503 = zext nneg i32 %1500 to i64
  br label %1505

1504:                                             ; preds = %1497
  store i32 0, ptr %3, align 16, !tbaa !50
  store i32 0, ptr %4, align 16, !tbaa !50
  br label %1513

1505:                                             ; preds = %1502, %1505
  %1506 = phi i64 [ 0, %1502 ], [ %1511, %1505 ]
  %1507 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1506
  %1508 = load i32, ptr %1507, align 4, !tbaa !50
  %1509 = zext i32 %1508 to i64
  %1510 = getelementptr inbounds [27 x i32], ptr %4, i64 0, i64 %1509
  store i32 0, ptr %1510, align 4, !tbaa !50
  %1511 = add nuw nsw i64 %1506, 1
  %1512 = icmp eq i64 %1511, %1503
  br i1 %1512, label %1513, label %1505, !llvm.loop !164

1513:                                             ; preds = %1505, %1499, %1504
  br label %1514

1514:                                             ; preds = %1513, %1661
  %1515 = phi ptr [ %1518, %1661 ], [ null, %1513 ]
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %2) #17
  %1516 = load i32, ptr %4, align 16
  br label %1517

1517:                                             ; preds = %1630, %1514
  %1518 = phi ptr [ %1515, %1514 ], [ %1631, %1630 ]
  %1519 = phi i32 [ 0, %1514 ], [ %1632, %1630 ]
  %1520 = phi i32 [ 0, %1514 ], [ %1633, %1630 ]
  %1521 = load ptr, ptr @invariants, align 8
  %1522 = icmp eq ptr %1521, null
  br i1 %1522, label %1530, label %1523

1523:                                             ; preds = %1517
  %1524 = load i32, ptr %1521, align 8, !tbaa !148
  %1525 = icmp ugt i32 %1524, %1520
  br i1 %1525, label %1526, label %1530

1526:                                             ; preds = %1523
  %1527 = zext i32 %1520 to i64
  %1528 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %1521, i64 0, i32 2, i64 %1527
  %1529 = load ptr, ptr %1528, align 8, !tbaa !35
  br label %1530

1530:                                             ; preds = %1526, %1523, %1517
  %1531 = phi ptr [ %1529, %1526 ], [ null, %1523 ], [ null, %1517 ]
  %1532 = phi i1 [ false, %1526 ], [ true, %1523 ], [ true, %1517 ]
  br i1 %1532, label %1634, label %1533

1533:                                             ; preds = %1530
  %1534 = getelementptr inbounds %struct.invariant, ptr %1531, i64 0, i32 7
  %1535 = load i8, ptr %1534, align 1, !tbaa !143
  %1536 = icmp eq i8 %1535, 0
  br i1 %1536, label %1537, label %1630

1537:                                             ; preds = %1533
  %1538 = getelementptr inbounds %struct.invariant, ptr %1531, i64 0, i32 1
  %1539 = load i32, ptr %1538, align 4, !tbaa !151
  %1540 = load i32, ptr %1531, align 8, !tbaa !150
  %1541 = icmp eq i32 %1539, %1540
  br i1 %1541, label %1542, label %1630

1542:                                             ; preds = %1537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  %1543 = load i32, ptr @actual_stamp, align 4, !tbaa !50
  %1544 = add i32 %1543, 1
  store i32 %1544, ptr @actual_stamp, align 4, !tbaa !50
  call fastcc void @get_inv_cost(ptr noundef nonnull %1531, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %1545 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1573, label %1547

1547:                                             ; preds = %1542
  %1548 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %1549 = icmp sgt i32 %1548, 0
  br i1 %1549, label %1550, label %1603

1550:                                             ; preds = %1547
  %1551 = load ptr, ptr @curr_loop, align 8, !tbaa !35
  %1552 = getelementptr inbounds %struct.loop, ptr %1551, i64 0, i32 10
  %1553 = load ptr, ptr %1552, align 8, !tbaa !73
  %1554 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1555 = getelementptr inbounds %struct.param_info, ptr %1554, i64 107, i32 1
  %1556 = load i32, ptr %1555, align 8, !tbaa !115
  %1557 = zext nneg i32 %1548 to i64
  %1558 = zext nneg i32 %1548 to i64
  %1559 = load i32, ptr @ira_reg_class_cover, align 16, !tbaa !50
  %1560 = zext i32 %1559 to i64
  %1561 = getelementptr inbounds i32, ptr %4, i64 %1560
  %1562 = load i32, ptr %1561, align 4, !tbaa !50
  %1563 = getelementptr inbounds i32, ptr %2, i64 %1560
  %1564 = load i32, ptr %1563, align 4, !tbaa !50
  %1565 = add nsw i32 %1564, %1562
  %1566 = getelementptr inbounds %struct.loop_data, ptr %1553, i64 0, i32 2, i64 %1560
  %1567 = load i32, ptr %1566, align 4, !tbaa !50
  %1568 = add nsw i32 %1565, %1567
  %1569 = add nsw i32 %1568, %1556
  %1570 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %1560
  %1571 = load i32, ptr %1570, align 4, !tbaa !50
  %1572 = icmp sgt i32 %1569, %1571
  br i1 %1572, label %1601, label %1579

1573:                                             ; preds = %1542
  %1574 = load i32, ptr %2, align 16, !tbaa !50
  %1575 = add i32 %1574, %1516
  %1576 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %1575, i32 noundef %1498, i8 noundef zeroext %1459) #17
  %1577 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %1516, i32 noundef %1498, i8 noundef zeroext %1459) #17
  %1578 = sub i32 %1577, %1576
  br label %1603

1579:                                             ; preds = %1550, %1583
  %1580 = phi i64 [ %1581, %1583 ], [ 0, %1550 ]
  %1581 = add nuw nsw i64 %1580, 1
  %1582 = icmp eq i64 %1581, %1558
  br i1 %1582, label %1603, label %1583, !llvm.loop !165

1583:                                             ; preds = %1579
  %1584 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1581
  %1585 = load i32, ptr %1584, align 4, !tbaa !50
  %1586 = zext i32 %1585 to i64
  %1587 = getelementptr inbounds i32, ptr %4, i64 %1586
  %1588 = load i32, ptr %1587, align 4, !tbaa !50
  %1589 = getelementptr inbounds i32, ptr %2, i64 %1586
  %1590 = load i32, ptr %1589, align 4, !tbaa !50
  %1591 = add nsw i32 %1590, %1588
  %1592 = getelementptr inbounds %struct.loop_data, ptr %1553, i64 0, i32 2, i64 %1586
  %1593 = load i32, ptr %1592, align 4, !tbaa !50
  %1594 = add nsw i32 %1591, %1593
  %1595 = add nsw i32 %1594, %1556
  %1596 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %1586
  %1597 = load i32, ptr %1596, align 4, !tbaa !50
  %1598 = icmp sgt i32 %1595, %1597
  br i1 %1598, label %1599, label %1579, !llvm.loop !165

1599:                                             ; preds = %1583
  %1600 = icmp ult i64 %1581, %1557
  br label %1601

1601:                                             ; preds = %1599, %1550
  %1602 = phi i1 [ %1600, %1599 ], [ %1549, %1550 ]
  br i1 %1602, label %1607, label %1603

1603:                                             ; preds = %1579, %1547, %1601, %1573
  %1604 = phi i32 [ 0, %1601 ], [ %1578, %1573 ], [ 0, %1547 ], [ 0, %1579 ]
  %1605 = load i32, ptr %1, align 4, !tbaa !50
  %1606 = add i32 %1605, %1604
  br label %1607

1607:                                             ; preds = %1603, %1601
  %1608 = phi i32 [ %1606, %1603 ], [ -1, %1601 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  %1609 = icmp sgt i32 %1608, %1519
  br i1 %1609, label %1610, label %1630

1610:                                             ; preds = %1607
  %1611 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1618, label %1613

1613:                                             ; preds = %1610
  %1614 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %1615 = icmp sgt i32 %1614, 0
  br i1 %1615, label %1616, label %1630

1616:                                             ; preds = %1613
  %1617 = zext nneg i32 %1614 to i64
  br label %1620

1618:                                             ; preds = %1610
  %1619 = load i32, ptr %2, align 16, !tbaa !50
  store i32 %1619, ptr %3, align 16, !tbaa !50
  br label %1630

1620:                                             ; preds = %1616, %1620
  %1621 = phi i64 [ 0, %1616 ], [ %1628, %1620 ]
  %1622 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1621
  %1623 = load i32, ptr %1622, align 4, !tbaa !50
  %1624 = zext i32 %1623 to i64
  %1625 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %1624
  %1626 = load i32, ptr %1625, align 4, !tbaa !50
  %1627 = getelementptr inbounds i32, ptr %3, i64 %1624
  store i32 %1626, ptr %1627, align 4, !tbaa !50
  %1628 = add nuw nsw i64 %1621, 1
  %1629 = icmp eq i64 %1628, %1617
  br i1 %1629, label %1630, label %1620, !llvm.loop !166

1630:                                             ; preds = %1620, %1613, %1618, %1607, %1537, %1533
  %1631 = phi ptr [ %1531, %1618 ], [ %1518, %1607 ], [ %1518, %1537 ], [ %1518, %1533 ], [ %1531, %1613 ], [ %1531, %1620 ]
  %1632 = phi i32 [ %1608, %1618 ], [ %1519, %1607 ], [ %1519, %1537 ], [ %1519, %1533 ], [ %1608, %1613 ], [ %1608, %1620 ]
  %1633 = add i32 %1520, 1
  br label %1517, !llvm.loop !167

1634:                                             ; preds = %1530
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %2) #17
  %1635 = icmp eq i32 %1519, 0
  br i1 %1635, label %1662, label %1636

1636:                                             ; preds = %1634
  %1637 = load i32, ptr %1518, align 8, !tbaa !150
  tail call fastcc void @set_move_mark(i32 noundef %1637, i32 noundef %1519)
  %1638 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1645, label %1640

1640:                                             ; preds = %1636
  %1641 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %1642 = icmp sgt i32 %1641, 0
  br i1 %1642, label %1643, label %1661

1643:                                             ; preds = %1640
  %1644 = zext nneg i32 %1641 to i64
  br label %1649

1645:                                             ; preds = %1636
  %1646 = load i32, ptr %3, align 16, !tbaa !50
  %1647 = load i32, ptr %4, align 16, !tbaa !50
  %1648 = add i32 %1647, %1646
  store i32 %1648, ptr %4, align 16, !tbaa !50
  br label %1661

1649:                                             ; preds = %1643, %1649
  %1650 = phi i64 [ 0, %1643 ], [ %1659, %1649 ]
  %1651 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %1650
  %1652 = load i32, ptr %1651, align 4, !tbaa !50
  %1653 = zext i32 %1652 to i64
  %1654 = getelementptr inbounds [27 x i32], ptr %3, i64 0, i64 %1653
  %1655 = load i32, ptr %1654, align 4, !tbaa !50
  %1656 = getelementptr inbounds [27 x i32], ptr %4, i64 0, i64 %1653
  %1657 = load i32, ptr %1656, align 4, !tbaa !50
  %1658 = add i32 %1657, %1655
  store i32 %1658, ptr %1656, align 4, !tbaa !50
  %1659 = add nuw nsw i64 %1650, 1
  %1660 = icmp eq i64 %1659, %1644
  br i1 %1660, label %1661, label %1649, !llvm.loop !168

1661:                                             ; preds = %1649, %1640, %1645
  br label %1514, !llvm.loop !169

1662:                                             ; preds = %1634, %1464
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %3) #17
  br label %1663

1663:                                             ; preds = %1674, %1662
  %1664 = phi i32 [ 0, %1662 ], [ %1676, %1674 ]
  %1665 = load ptr, ptr @invariants, align 8
  %1666 = icmp eq ptr %1665, null
  br i1 %1666, label %1671, label %1667

1667:                                             ; preds = %1663
  %1668 = load i32, ptr %1665, align 8, !tbaa !148
  %1669 = icmp ugt i32 %1668, %1664
  %1670 = zext i1 %1669 to i32
  br label %1671

1671:                                             ; preds = %1667, %1663
  %1672 = phi i32 [ 0, %1663 ], [ %1670, %1667 ]
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1677, label %1674

1674:                                             ; preds = %1671
  %1675 = tail call fastcc zeroext i8 @move_invariant_reg(ptr noundef nonnull %967, i32 noundef %1664), !range !128
  %1676 = add i32 %1664, 1
  br label %1663, !llvm.loop !170

1677:                                             ; preds = %1671
  %1678 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1716, label %1680

1680:                                             ; preds = %1677
  %1681 = tail call zeroext i8 @resize_reg_info() #17
  %1682 = icmp eq i8 %1681, 0
  br i1 %1682, label %1716, label %1683

1683:                                             ; preds = %1680, %1714
  %1684 = phi i32 [ %1715, %1714 ], [ 0, %1680 ]
  %1685 = load ptr, ptr @invariants, align 8
  %1686 = icmp eq ptr %1685, null
  br i1 %1686, label %1694, label %1687

1687:                                             ; preds = %1683
  %1688 = load i32, ptr %1685, align 8, !tbaa !148
  %1689 = icmp ugt i32 %1688, %1684
  br i1 %1689, label %1690, label %1694

1690:                                             ; preds = %1687
  %1691 = zext i32 %1684 to i64
  %1692 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %1685, i64 0, i32 2, i64 %1691
  %1693 = load ptr, ptr %1692, align 8, !tbaa !35
  br label %1694

1694:                                             ; preds = %1690, %1687, %1683
  %1695 = phi ptr [ %1693, %1690 ], [ null, %1687 ], [ null, %1683 ]
  %1696 = phi i1 [ false, %1690 ], [ true, %1687 ], [ true, %1683 ]
  br i1 %1696, label %1716, label %1697

1697:                                             ; preds = %1694
  %1698 = getelementptr inbounds %struct.invariant, ptr %1695, i64 0, i32 2
  %1699 = load ptr, ptr %1698, align 8, !tbaa !144
  %1700 = icmp eq ptr %1699, null
  br i1 %1700, label %1714, label %1701

1701:                                             ; preds = %1697
  %1702 = getelementptr inbounds %struct.invariant, ptr %1695, i64 0, i32 3
  %1703 = load i32, ptr %1702, align 8, !tbaa !145
  %1704 = icmp sgt i32 %1703, -1
  %1705 = getelementptr inbounds %struct.rtx_def, ptr %1699, i64 0, i32 1
  %1706 = load i32, ptr %1705, align 8, !tbaa !46
  br i1 %1704, label %1707, label %1713

1707:                                             ; preds = %1701
  %1708 = tail call i32 @reg_preferred_class(i32 noundef %1703) #17
  %1709 = load i32, ptr %1702, align 8, !tbaa !145
  %1710 = tail call i32 @reg_alternate_class(i32 noundef %1709) #17
  %1711 = load i32, ptr %1702, align 8, !tbaa !145
  %1712 = tail call i32 @reg_cover_class(i32 noundef %1711) #17
  tail call void @setup_reg_classes(i32 noundef %1706, i32 noundef %1708, i32 noundef %1710, i32 noundef %1712) #17
  br label %1714

1713:                                             ; preds = %1701
  tail call void @setup_reg_classes(i32 noundef %1706, i32 noundef 13, i32 noundef 0, i32 noundef 13) #17
  br label %1714

1714:                                             ; preds = %1713, %1707, %1697
  %1715 = add i32 %1684, 1
  br label %1683, !llvm.loop !171

1716:                                             ; preds = %1694, %1680, %1677
  tail call fastcc void @check_invariant_table_size()
  %1717 = load ptr, ptr @df, align 8, !tbaa !35
  %1718 = getelementptr inbounds %struct.df, ptr %1717, i64 0, i32 3, i32 4
  %1719 = load i32, ptr %1718, align 4, !tbaa !172
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1750, label %1721

1721:                                             ; preds = %1716, %1743
  %1722 = phi i64 [ %1744, %1743 ], [ 0, %1716 ]
  %1723 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %1724 = getelementptr inbounds ptr, ptr %1723, i64 %1722
  %1725 = load ptr, ptr %1724, align 8, !tbaa !35
  %1726 = icmp eq ptr %1725, null
  br i1 %1726, label %1743, label %1727

1727:                                             ; preds = %1721
  %1728 = getelementptr inbounds %struct.invariant, ptr %1725, i64 0, i32 4
  %1729 = load ptr, ptr %1728, align 8, !tbaa !137
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %1731, label %1732

1731:                                             ; preds = %1727
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1533, ptr noundef nonnull @.str.8) #17
  br label %1732

1732:                                             ; preds = %1731, %1727
  %1733 = load ptr, ptr %1729, align 8, !tbaa !173
  %1734 = icmp eq ptr %1733, null
  br i1 %1734, label %1740, label %1735

1735:                                             ; preds = %1732, %1735
  %1736 = phi ptr [ %1738, %1735 ], [ %1733, %1732 ]
  %1737 = getelementptr inbounds %struct.use, ptr %1736, i64 0, i32 3
  %1738 = load ptr, ptr %1737, align 8, !tbaa !174
  tail call void @free(ptr noundef %1736)
  %1739 = icmp eq ptr %1738, null
  br i1 %1739, label %1740, label %1735, !llvm.loop !176

1740:                                             ; preds = %1735, %1732
  tail call void @free(ptr noundef %1729)
  %1741 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %1742 = getelementptr inbounds ptr, ptr %1741, i64 %1722
  store ptr null, ptr %1742, align 8, !tbaa !35
  br label %1743

1743:                                             ; preds = %1740, %1721
  %1744 = add nuw nsw i64 %1722, 1
  %1745 = load ptr, ptr @df, align 8, !tbaa !35
  %1746 = getelementptr inbounds %struct.df, ptr %1745, i64 0, i32 3, i32 4
  %1747 = load i32, ptr %1746, align 4, !tbaa !172
  %1748 = zext i32 %1747 to i64
  %1749 = icmp ult i64 %1744, %1748
  br i1 %1749, label %1721, label %1750, !llvm.loop !177

1750:                                             ; preds = %1743, %1716
  br label %1751

1751:                                             ; preds = %1750, %1765
  %1752 = phi i32 [ %1768, %1765 ], [ 0, %1750 ]
  %1753 = load ptr, ptr @invariants, align 8
  %1754 = icmp eq ptr %1753, null
  br i1 %1754, label %1762, label %1755

1755:                                             ; preds = %1751
  %1756 = load i32, ptr %1753, align 8, !tbaa !148
  %1757 = icmp ugt i32 %1756, %1752
  br i1 %1757, label %1758, label %1762

1758:                                             ; preds = %1755
  %1759 = zext i32 %1752 to i64
  %1760 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %1753, i64 0, i32 2, i64 %1759
  %1761 = load ptr, ptr %1760, align 8, !tbaa !35
  br label %1762

1762:                                             ; preds = %1758, %1755, %1751
  %1763 = phi ptr [ %1761, %1758 ], [ null, %1755 ], [ null, %1751 ]
  %1764 = phi i1 [ false, %1758 ], [ true, %1755 ], [ true, %1751 ]
  br i1 %1764, label %1769, label %1765

1765:                                             ; preds = %1762
  %1766 = getelementptr inbounds %struct.invariant, ptr %1763, i64 0, i32 10
  %1767 = load ptr, ptr %1766, align 8, !tbaa !140
  tail call void @bitmap_obstack_free(ptr noundef %1767) #17
  store ptr null, ptr %1766, align 8, !tbaa !140
  tail call void @free(ptr noundef %1763)
  %1768 = add i32 %1752, 1
  br label %1751, !llvm.loop !178

1769:                                             ; preds = %1762
  br i1 %1754, label %1771, label %1770

1770:                                             ; preds = %1769
  tail call void @free(ptr noundef %1753)
  br label %1771

1771:                                             ; preds = %1769, %1770
  store ptr null, ptr @invariants, align 8, !tbaa !35
  br label %1772

1772:                                             ; preds = %966, %1771
  %1773 = load ptr, ptr %8, align 8, !tbaa !35
  %1774 = icmp eq ptr %1773, null
  %1775 = load i32, ptr %965, align 8, !tbaa !179
  %1776 = load ptr, ptr %7, align 8, !tbaa !35
  %1777 = load ptr, ptr @cfun, align 8
  %1778 = getelementptr inbounds %struct.function, ptr %1777, i64 0, i32 4
  br label %1779

1779:                                             ; preds = %1792, %1772
  %1780 = phi ptr [ %1799, %1792 ], [ %1776, %1772 ]
  %1781 = phi i32 [ %1793, %1792 ], [ %1775, %1772 ]
  br i1 %1774, label %1789, label %1782

1782:                                             ; preds = %1779
  %1783 = load i32, ptr %1773, align 4, !tbaa !65
  %1784 = icmp ugt i32 %1783, %1781
  br i1 %1784, label %1785, label %1789

1785:                                             ; preds = %1782
  %1786 = zext i32 %1781 to i64
  %1787 = getelementptr inbounds %struct.VEC_int_base, ptr %1773, i64 0, i32 2, i64 %1786
  %1788 = load i32, ptr %1787, align 4, !tbaa !50
  br label %1789

1789:                                             ; preds = %1785, %1782, %1779
  %1790 = phi i32 [ %1788, %1785 ], [ 0, %1782 ], [ 0, %1779 ]
  %1791 = phi i1 [ false, %1785 ], [ true, %1782 ], [ true, %1779 ]
  br i1 %1791, label %1801, label %1792

1792:                                             ; preds = %1789
  %1793 = add i32 %1781, 1
  %1794 = load ptr, ptr %1778, align 8, !tbaa !54
  %1795 = getelementptr inbounds %struct.loops, ptr %1794, i64 0, i32 1
  %1796 = load ptr, ptr %1795, align 8, !tbaa !56
  %1797 = zext i32 %1790 to i64
  %1798 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1796, i64 0, i32 2, i64 %1797
  %1799 = load ptr, ptr %1798, align 8, !tbaa !35
  %1800 = icmp eq ptr %1799, null
  br i1 %1800, label %1779, label %1804, !llvm.loop !72

1801:                                             ; preds = %1789
  store i32 %1781, ptr %965, align 8, !tbaa !179
  store ptr %1780, ptr %7, align 8, !tbaa !35
  br i1 %1774, label %1803, label %1802

1802:                                             ; preds = %1801
  tail call void @free(ptr noundef %1773)
  br label %1803

1803:                                             ; preds = %1802, %1801
  store ptr null, ptr %8, align 8, !tbaa !35
  br label %1805

1804:                                             ; preds = %1792
  store i32 %1793, ptr %965, align 8, !tbaa !179
  br label %1805

1805:                                             ; preds = %1804, %1803
  %1806 = phi ptr [ %1799, %1804 ], [ null, %1803 ]
  store ptr %1806, ptr %7, align 8, !tbaa !35
  %1807 = icmp eq ptr %1806, null
  br i1 %1807, label %1808, label %966, !llvm.loop !181

1808:                                             ; preds = %1805, %960
  %1809 = getelementptr inbounds %struct.loop_iterator, ptr %8, i64 0, i32 1
  store i32 0, ptr %1809, align 8, !tbaa !179
  %1810 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1811 = getelementptr inbounds %struct.function, ptr %1810, i64 0, i32 4
  %1812 = load ptr, ptr %1811, align 8, !tbaa !54
  %1813 = icmp eq ptr %1812, null
  br i1 %1813, label %1814, label %1815

1814:                                             ; preds = %1808
  store ptr null, ptr %8, align 8, !tbaa !182
  store ptr null, ptr %7, align 8, !tbaa !35
  br label %1895

1815:                                             ; preds = %1808
  %1816 = getelementptr inbounds %struct.loops, ptr %1812, i64 0, i32 1
  %1817 = load ptr, ptr %1816, align 8, !tbaa !56
  %1818 = icmp eq ptr %1817, null
  br i1 %1818, label %1821, label %1819

1819:                                             ; preds = %1815
  %1820 = load i32, ptr %1817, align 8, !tbaa !58
  br label %1821

1821:                                             ; preds = %1819, %1815
  %1822 = phi i32 [ %1820, %1819 ], [ 0, %1815 ]
  %1823 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %1822, i64 noundef 8, i64 noundef 4) #17
  store ptr %1823, ptr %8, align 8, !tbaa !182
  %1824 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1825 = getelementptr inbounds %struct.function, ptr %1824, i64 0, i32 4
  %1826 = load ptr, ptr %1825, align 8, !tbaa !54
  %1827 = getelementptr inbounds %struct.loops, ptr %1826, i64 0, i32 3
  %1828 = load ptr, ptr %1827, align 8, !tbaa !60
  br label %1829

1829:                                             ; preds = %1842, %1821
  %1830 = phi ptr [ %1828, %1821 ], [ %1843, %1842 ]
  %1831 = load i32, ptr %1830, align 8, !tbaa !61
  %1832 = icmp slt i32 %1831, 1
  br i1 %1832, label %1838, label %1833

1833:                                             ; preds = %1829
  %1834 = load i32, ptr %1823, align 4, !tbaa !65
  %1835 = add i32 %1834, 1
  store i32 %1835, ptr %1823, align 4, !tbaa !65
  %1836 = zext i32 %1834 to i64
  %1837 = getelementptr inbounds %struct.VEC_int_base, ptr %1823, i64 0, i32 2, i64 %1836
  store i32 %1831, ptr %1837, align 4, !tbaa !50
  br label %1838

1838:                                             ; preds = %1833, %1829
  %1839 = getelementptr inbounds %struct.loop, ptr %1830, i64 0, i32 8
  %1840 = load ptr, ptr %1839, align 8, !tbaa !67
  %1841 = icmp eq ptr %1840, null
  br i1 %1841, label %1849, label %1842

1842:                                             ; preds = %1849, %1838
  %1843 = phi ptr [ %1840, %1838 ], [ %1852, %1849 ]
  br label %1829, !llvm.loop !68

1844:                                             ; preds = %1868
  %1845 = icmp eq ptr %1823, null
  %1846 = load i32, ptr %1809, align 8, !tbaa !179
  %1847 = load ptr, ptr %7, align 8, !tbaa !35
  %1848 = getelementptr inbounds %struct.loops, ptr %1826, i64 0, i32 1
  br label %1871

1849:                                             ; preds = %1838, %1868
  %1850 = phi ptr [ %1869, %1868 ], [ %1830, %1838 ]
  %1851 = getelementptr inbounds %struct.loop, ptr %1850, i64 0, i32 9
  %1852 = load ptr, ptr %1851, align 8, !tbaa !69
  %1853 = icmp eq ptr %1852, null
  br i1 %1853, label %1854, label %1842, !llvm.loop !68

1854:                                             ; preds = %1849
  %1855 = getelementptr inbounds %struct.loop, ptr %1850, i64 0, i32 7
  %1856 = load ptr, ptr %1855, align 8, !tbaa !70
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %1860, label %1858

1858:                                             ; preds = %1854
  %1859 = load i32, ptr %1856, align 8, !tbaa !58
  br label %1860

1860:                                             ; preds = %1858, %1854
  %1861 = phi i32 [ %1859, %1858 ], [ 0, %1854 ]
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1868, label %1863

1863:                                             ; preds = %1860
  %1864 = add i32 %1861, -1
  %1865 = zext i32 %1864 to i64
  %1866 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1856, i64 0, i32 2, i64 %1865
  %1867 = load ptr, ptr %1866, align 8, !tbaa !35
  br label %1868

1868:                                             ; preds = %1863, %1860
  %1869 = phi ptr [ %1867, %1863 ], [ null, %1860 ]
  %1870 = icmp eq ptr %1869, null
  br i1 %1870, label %1844, label %1849, !llvm.loop !71

1871:                                             ; preds = %1844, %1884
  %1872 = phi ptr [ %1847, %1844 ], [ %1889, %1884 ]
  %1873 = phi i32 [ %1846, %1844 ], [ %1885, %1884 ]
  br i1 %1845, label %1881, label %1874

1874:                                             ; preds = %1871
  %1875 = load i32, ptr %1823, align 4, !tbaa !65
  %1876 = icmp ugt i32 %1875, %1873
  br i1 %1876, label %1877, label %1881

1877:                                             ; preds = %1874
  %1878 = zext i32 %1873 to i64
  %1879 = getelementptr inbounds %struct.VEC_int_base, ptr %1823, i64 0, i32 2, i64 %1878
  %1880 = load i32, ptr %1879, align 4, !tbaa !50
  br label %1881

1881:                                             ; preds = %1877, %1874, %1871
  %1882 = phi i32 [ %1880, %1877 ], [ 0, %1874 ], [ 0, %1871 ]
  %1883 = phi i1 [ false, %1877 ], [ true, %1874 ], [ true, %1871 ]
  br i1 %1883, label %1891, label %1884

1884:                                             ; preds = %1881
  %1885 = add i32 %1873, 1
  %1886 = load ptr, ptr %1848, align 8, !tbaa !56
  %1887 = zext i32 %1882 to i64
  %1888 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1886, i64 0, i32 2, i64 %1887
  %1889 = load ptr, ptr %1888, align 8, !tbaa !35
  %1890 = icmp eq ptr %1889, null
  br i1 %1890, label %1871, label %1894, !llvm.loop !72

1891:                                             ; preds = %1881
  store i32 %1873, ptr %1809, align 8, !tbaa !179
  store ptr %1872, ptr %7, align 8, !tbaa !35
  br i1 %1845, label %1893, label %1892

1892:                                             ; preds = %1891
  tail call void @free(ptr noundef %1823)
  br label %1893

1893:                                             ; preds = %1892, %1891
  store ptr null, ptr %8, align 8, !tbaa !35
  store ptr null, ptr %7, align 8, !tbaa !35
  br label %1895

1894:                                             ; preds = %1884
  store i32 %1885, ptr %1809, align 8, !tbaa !179
  store ptr %1889, ptr %7, align 8, !tbaa !35
  br label %1895

1895:                                             ; preds = %1894, %1814, %1893
  %1896 = load ptr, ptr %7, align 8, !tbaa !35
  %1897 = load ptr, ptr %8, align 8, !tbaa !35
  %1898 = load i32, ptr %1809, align 8, !tbaa !179
  %1899 = icmp eq ptr %1896, null
  br i1 %1899, label %1943, label %1900

1900:                                             ; preds = %1895, %1938
  %1901 = phi ptr [ %1941, %1938 ], [ %1896, %1895 ]
  %1902 = phi ptr [ %1940, %1938 ], [ %1897, %1895 ]
  %1903 = phi i32 [ %1939, %1938 ], [ %1898, %1895 ]
  %1904 = getelementptr inbounds %struct.loop, ptr %1901, i64 0, i32 10
  %1905 = load ptr, ptr %1904, align 8, !tbaa !73
  %1906 = icmp eq ptr %1905, null
  br i1 %1906, label %1911, label %1907

1907:                                             ; preds = %1900
  %1908 = getelementptr inbounds %struct.loop_data, ptr %1905, i64 0, i32 3
  tail call void @bitmap_clear(ptr noundef nonnull %1908) #17
  %1909 = load ptr, ptr %1904, align 8, !tbaa !73
  %1910 = getelementptr inbounds %struct.loop_data, ptr %1909, i64 0, i32 4
  tail call void @bitmap_clear(ptr noundef nonnull %1910) #17
  tail call void @free(ptr noundef %1905)
  store ptr null, ptr %1904, align 8, !tbaa !73
  br label %1911

1911:                                             ; preds = %1900, %1907
  %1912 = icmp eq ptr %1902, null
  %1913 = load ptr, ptr @cfun, align 8
  %1914 = getelementptr inbounds %struct.function, ptr %1913, i64 0, i32 4
  br label %1915

1915:                                             ; preds = %1927, %1911
  %1916 = phi i32 [ %1928, %1927 ], [ %1903, %1911 ]
  br i1 %1912, label %1924, label %1917

1917:                                             ; preds = %1915
  %1918 = load i32, ptr %1902, align 4, !tbaa !65
  %1919 = icmp ugt i32 %1918, %1916
  br i1 %1919, label %1920, label %1924

1920:                                             ; preds = %1917
  %1921 = zext i32 %1916 to i64
  %1922 = getelementptr inbounds %struct.VEC_int_base, ptr %1902, i64 0, i32 2, i64 %1921
  %1923 = load i32, ptr %1922, align 4, !tbaa !50
  br label %1924

1924:                                             ; preds = %1920, %1917, %1915
  %1925 = phi i32 [ %1923, %1920 ], [ 0, %1917 ], [ 0, %1915 ]
  %1926 = phi i1 [ false, %1920 ], [ true, %1917 ], [ true, %1915 ]
  br i1 %1926, label %1936, label %1927

1927:                                             ; preds = %1924
  %1928 = add i32 %1916, 1
  %1929 = load ptr, ptr %1914, align 8, !tbaa !54
  %1930 = getelementptr inbounds %struct.loops, ptr %1929, i64 0, i32 1
  %1931 = load ptr, ptr %1930, align 8, !tbaa !56
  %1932 = zext i32 %1925 to i64
  %1933 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1931, i64 0, i32 2, i64 %1932
  %1934 = load ptr, ptr %1933, align 8, !tbaa !35
  %1935 = icmp eq ptr %1934, null
  br i1 %1935, label %1915, label %1938, !llvm.loop !72

1936:                                             ; preds = %1924
  br i1 %1912, label %1938, label %1937

1937:                                             ; preds = %1936
  tail call void @free(ptr noundef %1902)
  br label %1938

1938:                                             ; preds = %1927, %1936, %1937
  %1939 = phi i32 [ %1916, %1937 ], [ %1916, %1936 ], [ %1928, %1927 ]
  %1940 = phi ptr [ null, %1937 ], [ null, %1936 ], [ %1902, %1927 ]
  %1941 = phi ptr [ null, %1937 ], [ null, %1936 ], [ %1934, %1927 ]
  %1942 = icmp eq ptr %1941, null
  br i1 %1942, label %1943, label %1900, !llvm.loop !183

1943:                                             ; preds = %1938, %1895
  %1944 = phi i32 [ %1898, %1895 ], [ %1939, %1938 ]
  %1945 = phi ptr [ %1897, %1895 ], [ %1940, %1938 ]
  %1946 = phi ptr [ %1896, %1895 ], [ %1941, %1938 ]
  store ptr %1946, ptr %7, align 8, !tbaa !35
  store ptr %1945, ptr %8, align 8, !tbaa !35
  store i32 %1944, ptr %1809, align 8, !tbaa !179
  %1947 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1950, label %1949

1949:                                             ; preds = %1943
  tail call void @free_reg_info() #17
  br label %1950

1950:                                             ; preds = %1949, %1943
  %1951 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  tail call void @free(ptr noundef %1951)
  store ptr null, ptr @invariant_table, align 8, !tbaa !35
  store i32 0, ptr @invariant_table_size, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret void
}

declare void @df_analyze() local_unnamed_addr #3

declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #2 !prof !34 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !179
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %146, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !58
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %16, i64 noundef 8, i64 noundef 4) #17
  store ptr %17, ptr %0, align 8, !tbaa !182
  %18 = and i32 %2, 1
  %19 = xor i32 %18, 1
  %20 = and i32 %2, 2
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr @cfun, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.loops, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  br i1 %21, label %80, label %27

27:                                               ; preds = %15, %27
  %28 = phi ptr [ %30, %27 ], [ %26, %15 ]
  %29 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !184

32:                                               ; preds = %27, %78
  %33 = phi ptr [ %79, %78 ], [ %28, %27 ]
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = icmp slt i32 %34, %19
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %17, align 4, !tbaa !65
  %38 = add i32 %37, 1
  store i32 %38, ptr %17, align 4, !tbaa !65
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds %struct.VEC_int_base, ptr %17, i64 0, i32 2, i64 %39
  store i32 %34, ptr %40, align 4, !tbaa !50
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %48, %45 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.loop, ptr %46, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !67
  %49 = icmp eq ptr %48, null
  br i1 %49, label %78, label %45, !llvm.loop !185

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !70
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %52, align 8, !tbaa !58
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ 0, %50 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = add i32 %57, -1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %52, i64 0, i32 2, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  br label %64

64:                                               ; preds = %56, %59
  %65 = phi ptr [ %63, %59 ], [ null, %56 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %117, label %67

67:                                               ; preds = %64
  br i1 %53, label %70, label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %52, align 8, !tbaa !58
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ %69, %68 ], [ 0, %67 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = add i32 %71, -1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %52, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %45, %73, %70
  %79 = phi ptr [ %77, %73 ], [ null, %70 ], [ %46, %45 ]
  br label %32, !llvm.loop !186

80:                                               ; preds = %15, %93
  %81 = phi ptr [ %94, %93 ], [ %26, %15 ]
  %82 = load i32, ptr %81, align 8, !tbaa !61
  %83 = icmp slt i32 %82, %19
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr %17, align 4, !tbaa !65
  %86 = add i32 %85, 1
  store i32 %86, ptr %17, align 4, !tbaa !65
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds %struct.VEC_int_base, ptr %17, i64 0, i32 2, i64 %87
  store i32 %82, ptr %88, align 4, !tbaa !50
  br label %89

89:                                               ; preds = %84, %80
  %90 = getelementptr inbounds %struct.loop, ptr %81, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !67
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %95, %89
  %94 = phi ptr [ %91, %89 ], [ %98, %95 ]
  br label %80, !llvm.loop !68

95:                                               ; preds = %89, %114
  %96 = phi ptr [ %115, %114 ], [ %81, %89 ]
  %97 = getelementptr inbounds %struct.loop, ptr %96, i64 0, i32 9
  %98 = load ptr, ptr %97, align 8, !tbaa !69
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %93, !llvm.loop !68

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.loop, ptr %96, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !70
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %102, align 8, !tbaa !58
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi i32 [ %105, %104 ], [ 0, %100 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = add i32 %107, -1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %102, i64 0, i32 2, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  br label %114

114:                                              ; preds = %106, %109
  %115 = phi ptr [ %113, %109 ], [ null, %106 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %95, !llvm.loop !71

117:                                              ; preds = %64, %114
  %118 = load i32, ptr %4, align 8, !tbaa !179
  br label %119

119:                                              ; preds = %133, %117
  %120 = phi i32 [ %134, %133 ], [ %118, %117 ]
  %121 = load ptr, ptr %0, align 8, !tbaa !35
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %121, align 4, !tbaa !65
  %125 = icmp ugt i32 %124, %120
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = zext i32 %120 to i64
  %128 = getelementptr inbounds %struct.VEC_int_base, ptr %121, i64 0, i32 2, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !50
  br label %130

130:                                              ; preds = %126, %123, %119
  %131 = phi i32 [ %129, %126 ], [ 0, %123 ], [ 0, %119 ]
  %132 = phi i1 [ false, %126 ], [ true, %123 ], [ true, %119 ]
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = add i32 %120, 1
  store i32 %134, ptr %4, align 8, !tbaa !179
  %135 = load ptr, ptr @cfun, align 8, !tbaa !35
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !54
  %138 = getelementptr inbounds %struct.loops, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !56
  %140 = zext i32 %131 to i64
  %141 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %139, i64 0, i32 2, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  store ptr %142, ptr %1, align 8, !tbaa !35
  %143 = icmp eq ptr %142, null
  br i1 %143, label %119, label %147, !llvm.loop !72

144:                                              ; preds = %130
  br i1 %122, label %146, label %145

145:                                              ; preds = %144
  tail call void @free(ptr noundef %121)
  br label %146

146:                                              ; preds = %144, %145, %3
  store ptr null, ptr %0, align 8, !tbaa !35
  store ptr null, ptr %1, align 8, !tbaa !35
  br label %147

147:                                              ; preds = %133, %146
  ret void
}

declare void @free_reg_info() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #10

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ira_setup_eliminable_regset() local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_ref_regs(ptr noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %81, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = load ptr, ptr @curr_loop, align 8, !tbaa !35
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.loops, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %81, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %37
  %18 = phi ptr [ %8, %15 ], [ %38, %37 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.loop_data, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %16, align 8, !tbaa !46
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %21, i32 noundef %22) #17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %25, align 8, !tbaa !58
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i32 [ %28, %27 ], [ 0, %17 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = add i32 %30, -1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %29, %32
  %38 = phi ptr [ %36, %32 ], [ null, %29 ]
  %39 = load ptr, ptr @cfun, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.loops, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %81, label %17, !llvm.loop !187

45:                                               ; preds = %3
  %46 = zext nneg i32 %5 to i64
  %47 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %46
  %50 = load i8, ptr %49, align 1, !tbaa !46
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %54 = zext i8 %50 to i64
  br label %55

55:                                               ; preds = %52, %79
  %56 = phi i64 [ %54, %52 ], [ %57, %79 ]
  %57 = add nsw i64 %56, -1
  %58 = getelementptr inbounds i8, ptr %48, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !46
  switch i8 %59, label %79 [
    i8 101, label %65
    i8 69, label %60
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds [1 x %union.rtunion_def], ptr %53, i64 0, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = load i32, ptr %62, align 8, !tbaa !188
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %69, label %79

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %67 = getelementptr inbounds [1 x %union.rtunion_def], ptr %66, i64 0, i64 %57
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  tail call fastcc void @mark_ref_regs(ptr noundef %68)
  br label %79

69:                                               ; preds = %60, %69
  %70 = phi i64 [ %74, %69 ], [ 0, %60 ]
  %71 = phi ptr [ %75, %69 ], [ %62, %60 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  tail call fastcc void @mark_ref_regs(ptr noundef %73)
  %74 = add nuw nsw i64 %70, 1
  %75 = load ptr, ptr %61, align 8, !tbaa !46
  %76 = load i32, ptr %75, align 8, !tbaa !188
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %69, label %79, !llvm.loop !190

79:                                               ; preds = %69, %60, %55, %65
  %80 = icmp sgt i64 %56, 1
  br i1 %80, label %55, label %81, !llvm.loop !191

81:                                               ; preds = %79, %37, %45, %7, %1
  ret void
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @mark_reg_clobber(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 !prof !34 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @mark_reg_store(ptr noundef %0, ptr nonnull poison, ptr poison)
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_reg_death(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp sgt i32 %3, 52
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @mark_regno_death(i32 noundef %3)
  br label %21

6:                                                ; preds = %1
  %7 = sext i32 %3 to i64
  %8 = load i32, ptr %0, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %7, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %3, %14
  %16 = icmp eq i8 %13, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6, %17
  %18 = phi i32 [ %19, %17 ], [ %3, %6 ]
  tail call fastcc void @mark_regno_death(i32 noundef %18)
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %19, %15
  br i1 %20, label %17, label %21, !llvm.loop !192

21:                                               ; preds = %17, %6, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @mark_reg_store(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load i32, ptr @n_regs_set, align 4, !tbaa !50
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @n_regs_set, align 4, !tbaa !50
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [106 x ptr], ptr @regs_set, i64 0, i64 %18
  store ptr %11, ptr %19, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp sgt i32 %21, 52
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call fastcc void @mark_regno_live(i32 noundef %21)
  br label %38

24:                                               ; preds = %15
  %25 = sext i32 %21 to i64
  %26 = lshr i32 %12, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %21, %31
  %33 = icmp eq i8 %30, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24, %34
  %35 = phi i32 [ %36, %34 ], [ %21, %24 ]
  tail call fastcc void @mark_regno_live(i32 noundef %35)
  %36 = add nsw i32 %35, 1
  %37 = icmp slt i32 %36, %32
  br i1 %37, label %34, label %38, !llvm.loop !193

38:                                               ; preds = %34, %24, %23, %10
  ret void
}

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_regno_cover_class(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !34 {
  %3 = icmp sgt i32 %0, 52
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call i32 @reg_cover_class(i32 noundef %0) #17
  %6 = zext i32 %5 to i64
  %7 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %6, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !50
  store i32 %16, ptr %1, align 4, !tbaa !50
  br label %35

17:                                               ; preds = %2
  %18 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !95
  %19 = zext nneg i32 %0 to i64
  %20 = shl nuw i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i64, ptr @eliminable_regset, align 8, !tbaa !95
  %25 = and i64 %24, %20
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  store i32 1, ptr %1, align 4, !tbaa !50
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !50
  br label %35

34:                                               ; preds = %23, %17
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %35

35:                                               ; preds = %34, %27, %4
  %36 = phi i32 [ %5, %4 ], [ 0, %34 ], [ %33, %27 ]
  ret i32 %36
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_regno_death(i32 noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %7 = call fastcc i32 @get_regno_cover_class(i32 noundef %0, ptr noundef nonnull %2)
  %8 = load i32, ptr %2, align 4, !tbaa !50
  %9 = zext i32 %7 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = sub nsw i32 %11, %8
  store i32 %12, ptr %10, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %13

13:                                               ; preds = %1, %5
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_regno_live(i32 noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @curr_loop, align 8, !tbaa !35
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %37, label %10

10:                                               ; preds = %1, %29
  %11 = phi ptr [ %30, %29 ], [ %3, %1 ]
  %12 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.loop_data, ptr %13, i64 0, i32 4
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %14, i32 noundef %0) #17
  %16 = getelementptr inbounds %struct.loop, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %17, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = add i32 %22, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %17, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi ptr [ %28, %24 ], [ null, %21 ]
  %31 = load ptr, ptr @cfun, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.loops, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %37, label %10, !llvm.loop !194

37:                                               ; preds = %29, %1
  %38 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %42 = call fastcc i32 @get_regno_cover_class(i32 noundef %0, ptr noundef nonnull %2)
  %43 = load i32, ptr %2, align 4, !tbaa !50
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = add nsw i32 %46, %43
  store i32 %47, ptr %45, align 4, !tbaa !50
  %48 = load ptr, ptr @curr_loop, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = getelementptr inbounds %struct.loop_data, ptr %50, i64 0, i32 2, i64 %44
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = icmp slt i32 %52, %47
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 %47, ptr %51, align 4, !tbaa !50
  br label %55

55:                                               ; preds = %40, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %56

56:                                               ; preds = %37, %55
  ret void
}

declare i32 @reg_cover_class(i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @compute_always_reached(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !114
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %15

10:                                               ; preds = %25
  %11 = add nuw nsw i64 %16, 1
  %12 = load i32, ptr %5, align 4, !tbaa !114
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %29, !llvm.loop !195

15:                                               ; preds = %8, %10
  %16 = phi i64 [ 0, %8 ], [ %11, %10 ]
  %17 = load ptr, ptr %9, align 8, !tbaa !196
  %18 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %17, ptr noundef %19) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = trunc i64 %16 to i32
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %22, %15
  %26 = trunc i64 %16 to i32
  %27 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %10, label %29

29:                                               ; preds = %25, %10, %4
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_remove_problem(ptr noundef) local_unnamed_addr #3

declare void @df_process_deferred_rescans() local_unnamed_addr #3

declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #3

declare void @df_set_blocks(ptr noundef) local_unnamed_addr #3

declare void @df_dump_region(ptr noundef) local_unnamed_addr #3

declare void @print_rtl_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_invariant_table_size() unnamed_addr #9 !prof !34 {
  %1 = load i32, ptr @invariant_table_size, align 4, !tbaa !50
  %2 = load ptr, ptr @df, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !172
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = lshr i32 %4, 2
  %8 = add i32 %7, %4
  %9 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %10 = zext i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %11) #17
  store ptr %12, ptr @invariant_table, align 8, !tbaa !35
  %13 = load i32, ptr @invariant_table_size, align 4, !tbaa !50
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = sub i32 %8, %13
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  store i32 %8, ptr @invariant_table_size, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %6, %0
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_maybe_invariant(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !34 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %12 [
    i16 30, label %51
    i16 32, label %51
    i16 31, label %51
    i16 45, label %51
    i16 35, label %51
    i16 44, label %51
    i16 36, label %5
    i16 46, label %5
    i16 19, label %5
    i16 26, label %5
    i16 37, label %51
    i16 43, label %6
    i16 17, label %9
  ]

5:                                                ; preds = %1, %1, %1, %1
  br label %51

6:                                                ; preds = %1
  %7 = and i32 %2, 201326592
  %8 = icmp eq i32 %7, 67108864
  br i1 %8, label %12, label %51

9:                                                ; preds = %1
  %10 = and i32 %2, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %6, %1, %9
  %13 = zext nneg i32 %3 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !46
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %19, %49
  %23 = phi i64 [ %21, %19 ], [ %24, %49 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !46
  switch i8 %26, label %49 [
    i8 101, label %34
    i8 69, label %27
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = load i32, ptr %29, align 8, !tbaa !188
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = zext nneg i32 %30 to i64
  br label %43

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds [1 x %union.rtunion_def], ptr %35, i64 0, i64 %24
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %37), !range !128
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %51, label %49

40:                                               ; preds = %43
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %49, label %43, !llvm.loop !197

43:                                               ; preds = %32, %40
  %44 = phi i64 [ 0, %32 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %46), !range !128
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %40

49:                                               ; preds = %40, %27, %22, %34
  %50 = icmp sgt i64 %23, 1
  br i1 %50, label %22, label %51, !llvm.loop !198

51:                                               ; preds = %34, %49, %43, %12, %9, %6, %1, %1, %1, %1, %1, %1, %1, %5
  %52 = phi i8 [ 0, %5 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 0, %6 ], [ 0, %9 ], [ 1, %12 ], [ 0, %43 ], [ 1, %49 ], [ 0, %34 ]
  ret i8 %52
}

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare i32 @may_trap_or_fault_p(ptr noundef) local_unnamed_addr #3

declare ptr @df_find_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_copy_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @check_dependency(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.df_link, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !199
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !tbaa !201
  tail call fastcc void @check_invariant_table_size()
  %17 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !46
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.invariant, ptr %22, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 797, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %24, %28
  %30 = load i32, ptr %16, align 8
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.df_artificial_ref, ptr %16, i64 0, i32 1
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load ptr, ptr %37, align 8, !tbaa !202
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 1
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi ptr [ %34, %33 ], [ %39, %35 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %42) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.def, ptr %26, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !152
  %48 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %47) #17
  br label %49

49:                                               ; preds = %40, %15, %11, %7, %3, %45
  %50 = phi i8 [ 1, %45 ], [ 0, %3 ], [ 1, %7 ], [ 0, %11 ], [ 0, %15 ], [ 0, %40 ]
  ret i8 %50
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @invariant_for_use(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !202
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi ptr [ %6, %5 ], [ %11, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = and i32 %2, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.df_link, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !199
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !201
  tail call fastcc void @check_invariant_table_size()
  %27 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %26, align 8
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.df_artificial_ref, ptr %26, i64 0, i32 1
  br label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = load ptr, ptr %42, align 8, !tbaa !202
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 1
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi ptr [ %39, %38 ], [ %44, %40 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %14, ptr noundef %47) #17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @invariant_table, align 8, !tbaa !35
  %52 = load i32, ptr %28, align 4, !tbaa !46
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  br label %56

56:                                               ; preds = %45, %25, %17, %21, %12, %50
  %57 = phi ptr [ %55, %50 ], [ null, %12 ], [ null, %21 ], [ null, %17 ], [ null, %25 ], [ null, %45 ]
  ret ptr %57
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @record_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #17
  %4 = getelementptr inbounds %struct.df_regular_ref, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = select i1 %9, ptr %10, ptr %5
  store ptr %11, ptr %3, align 8, !tbaa !203
  %12 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !202
  %15 = getelementptr inbounds %struct.use, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !204
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65024
  %18 = icmp eq i32 %17, 512
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.use, ptr %3, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !205
  %21 = load ptr, ptr %0, align 8, !tbaa !173
  %22 = getelementptr inbounds %struct.use, ptr %3, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !174
  store ptr %3, ptr %0, align 8, !tbaa !173
  %23 = getelementptr inbounds %struct.def, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !206
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !206
  br i1 %18, label %26, label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.def, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !207
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !207
  br label %30

30:                                               ; preds = %26, %2
  ret void
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @hash_invariant_expr(ptr nocapture noundef readonly %0) #13 !prof !34 {
  %2 = getelementptr inbounds %struct.invariant_expr_entry, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !208
  ret i32 %3
}

; Function Attrs: cold nounwind uwtable
define internal i32 @eq_invariant_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = getelementptr inbounds %struct.invariant_expr_entry, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !210
  %5 = getelementptr inbounds %struct.invariant_expr_entry, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !210
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !211
  %10 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = getelementptr inbounds %struct.invariant_expr_entry, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !212
  %14 = load ptr, ptr %1, align 8, !tbaa !211
  %15 = getelementptr inbounds %struct.invariant, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !147
  %17 = getelementptr inbounds %struct.invariant_expr_entry, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !212
  %19 = tail call fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %11, ptr noundef %13, ptr noundef %16, ptr noundef %18)
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %2, %8
  %22 = phi i32 [ %20, %8 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_identical_invariants(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.invariant_expr_entry, align 8
  %4 = getelementptr inbounds %struct.invariant, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !151
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %139

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.invariant, ptr %1, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @bitmap_zero_bits, ptr %10
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !93
  %15 = shl i32 %14, 7
  %16 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !95
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = or disjoint i32 %15, %19
  br label %21

21:                                               ; preds = %82, %7
  %22 = phi i64 [ %17, %7 ], [ %87, %82 ]
  %23 = phi i32 [ 0, %7 ], [ %78, %82 ]
  %24 = phi i32 [ %20, %7 ], [ %88, %82 ]
  %25 = phi ptr [ %12, %7 ], [ %80, %82 ]
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %55, %21
  %28 = phi i64 [ %22, %21 ], [ %60, %55 ]
  %29 = phi i32 [ %23, %21 ], [ %56, %55 ]
  %30 = phi i32 [ %24, %21 ], [ %57, %55 ]
  %31 = phi ptr [ %25, %21 ], [ %48, %55 ]
  %32 = and i64 %28, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %38, %34 ], [ %30, %27 ]
  %36 = phi i64 [ %37, %34 ], [ %28, %27 ]
  %37 = lshr exact i64 %36, 1
  %38 = add i32 %35, 1
  %39 = and i64 %36, 2
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %34, label %76, !llvm.loop !96

41:                                               ; preds = %21
  %42 = add i32 %24, 63
  %43 = and i32 %42, -64
  %44 = add i32 %23, 1
  br label %45

45:                                               ; preds = %72, %41
  %46 = phi i64 [ %22, %41 ], [ %67, %72 ]
  %47 = phi i32 [ %43, %41 ], [ %75, %72 ]
  %48 = phi ptr [ %25, %41 ], [ %70, %72 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %72 ]
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %66, label %51

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
  %60 = load i64, ptr %59, align 8, !tbaa !95
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %55
  %63 = add i32 %57, 64
  %64 = add i32 %56, 1
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %55, !llvm.loop !97

66:                                               ; preds = %62, %45
  %67 = phi i64 [ %46, %45 ], [ %60, %62 ]
  %68 = phi i32 [ %47, %45 ], [ %54, %62 ]
  %69 = phi i32 [ %49, %45 ], [ 2, %62 ]
  %70 = load ptr, ptr %48, align 8, !tbaa !98
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !93
  %75 = shl i32 %74, 7
  br label %45, !llvm.loop !99

76:                                               ; preds = %66, %34, %27
  %77 = phi i64 [ %28, %27 ], [ %37, %34 ], [ %67, %66 ]
  %78 = phi i32 [ %29, %27 ], [ %29, %34 ], [ %69, %66 ]
  %79 = phi i32 [ %30, %27 ], [ %38, %34 ], [ %68, %66 ]
  %80 = phi ptr [ %31, %27 ], [ %31, %34 ], [ %70, %66 ]
  %81 = phi i1 [ false, %27 ], [ false, %34 ], [ true, %66 ]
  br i1 %81, label %89, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr @invariants, align 8
  %84 = zext i32 %79 to i64
  %85 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %83, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !35
  tail call fastcc void @find_identical_invariants(ptr noundef %0, ptr noundef %86)
  %87 = lshr i64 %77, 1
  %88 = add i32 %79, 1
  br label %21, !llvm.loop !213

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.invariant, ptr %1, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !147
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 23
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  %98 = tail call ptr @single_set_2(ptr noundef %91, ptr noundef nonnull %93) #17
  br label %99

99:                                               ; preds = %89, %97
  %100 = phi ptr [ %98, %97 ], [ %93, %89 ]
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 255
  br label %113

113:                                              ; preds = %107, %99
  %114 = phi i32 [ %112, %107 ], [ %105, %99 ]
  %115 = load ptr, ptr %90, align 8, !tbaa !147
  %116 = tail call fastcc i32 @hash_invariant_expr_1(ptr noundef %115, ptr noundef nonnull %102)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %117 = getelementptr inbounds %struct.invariant_expr_entry, ptr %3, i64 0, i32 1
  store ptr %102, ptr %117, align 8, !tbaa !212
  store ptr %1, ptr %3, align 8, !tbaa !211
  %118 = getelementptr inbounds %struct.invariant_expr_entry, ptr %3, i64 0, i32 2
  store i32 %114, ptr %118, align 8, !tbaa !210
  %119 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %116, i32 noundef 1) #17
  %120 = load ptr, ptr %119, align 8, !tbaa !35
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %113
  %123 = load ptr, ptr %120, align 8, !tbaa !211
  br label %129

124:                                              ; preds = %113
  %125 = call ptr @xmalloc(i64 noundef 24) #17
  store ptr %1, ptr %125, align 8, !tbaa !211
  %126 = getelementptr inbounds %struct.invariant_expr_entry, ptr %125, i64 0, i32 1
  store ptr %102, ptr %126, align 8, !tbaa !212
  %127 = getelementptr inbounds %struct.invariant_expr_entry, ptr %125, i64 0, i32 2
  store i32 %114, ptr %127, align 8, !tbaa !210
  %128 = getelementptr inbounds %struct.invariant_expr_entry, ptr %125, i64 0, i32 3
  store i32 %116, ptr %128, align 4, !tbaa !208
  store ptr %125, ptr %119, align 8, !tbaa !35
  br label %129

129:                                              ; preds = %122, %124
  %130 = phi ptr [ %123, %122 ], [ %1, %124 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %131 = load i32, ptr %130, align 8, !tbaa !150
  store i32 %131, ptr %4, align 4, !tbaa !151
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i32, ptr %1, align 8, !tbaa !150
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %132, ptr noundef nonnull @.str.14, i32 noundef %135, i32 noundef %131)
  br label %139

139:                                              ; preds = %129, %134, %137, %2
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %118

10:                                               ; preds = %4
  %11 = xor i32 %7, %5
  %12 = and i32 %11, 16711680
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %118

14:                                               ; preds = %10
  %15 = trunc i32 %5 to i16
  switch i16 %15, label %55 [
    i16 30, label %16
    i16 32, label %16
    i16 31, label %16
    i16 45, label %16
    i16 35, label %16
    i16 44, label %16
    i16 37, label %19
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14
  %17 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %3) #17
  %18 = trunc i32 %17 to i8
  br label %118

19:                                               ; preds = %14
  %20 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef nonnull %1) #17
  %21 = tail call ptr @df_find_use(ptr noundef %2, ptr noundef nonnull %3) #17
  %22 = icmp eq ptr %20, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %20)
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ null, %19 ]
  %27 = icmp eq ptr %21, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %21)
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  %32 = icmp ne ptr %26, null
  %33 = icmp ne ptr %31, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %3) #17
  %37 = trunc i32 %36 to i8
  br label %118

38:                                               ; preds = %30
  %39 = select i1 %32, i1 %33, i1 false
  br i1 %39, label %40, label %118

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.invariant, ptr %26, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !151
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 388, ptr noundef nonnull @.str.8) #17
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.invariant, ptr %31, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !151
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 389, ptr noundef nonnull @.str.8) #17
  br label %50

50:                                               ; preds = %45, %49
  %51 = load i32, ptr %41, align 4, !tbaa !151
  %52 = load i32, ptr %46, align 4, !tbaa !151
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i8
  br label %118

55:                                               ; preds = %14
  %56 = zext nneg i32 %6 to i64
  %57 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %56
  %60 = load i8, ptr %59, align 1, !tbaa !46
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %118, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %66 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %67 = zext i8 %60 to i64
  br label %68

68:                                               ; preds = %62, %116
  %69 = phi i64 [ %67, %62 ], [ %70, %116 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds i8, ptr %58, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !46
  switch i8 %72, label %118 [
    i8 101, label %73
    i8 69, label %82
    i8 105, label %110
    i8 110, label %110
  ]

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %75 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %76 = getelementptr inbounds [1 x %union.rtunion_def], ptr %74, i64 0, i64 %70
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds [1 x %union.rtunion_def], ptr %75, i64 0, i64 %70
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = tail call fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %0, ptr noundef %77, ptr noundef %2, ptr noundef %79)
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %118, label %116

82:                                               ; preds = %68
  %83 = getelementptr inbounds [1 x %union.rtunion_def], ptr %65, i64 0, i64 %70
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = load i32, ptr %84, align 8, !tbaa !188
  %86 = getelementptr inbounds [1 x %union.rtunion_def], ptr %66, i64 0, i64 %70
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = load i32, ptr %87, align 8, !tbaa !188
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %82
  %91 = load ptr, ptr %83, align 8, !tbaa !46
  %92 = load i32, ptr %91, align 8, !tbaa !188
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %100, label %116

94:                                               ; preds = %100
  %95 = add nuw nsw i64 %101, 1
  %96 = load ptr, ptr %83, align 8, !tbaa !46
  %97 = load i32, ptr %96, align 8, !tbaa !188
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %100, label %116, !llvm.loop !214

100:                                              ; preds = %90, %94
  %101 = phi i64 [ %95, %94 ], [ 0, %90 ]
  %102 = phi ptr [ %96, %94 ], [ %91, %90 ]
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %102, i64 0, i32 1, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = load ptr, ptr %86, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %101
  %107 = load ptr, ptr %106, align 8, !tbaa !35
  %108 = tail call fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %0, ptr noundef %104, ptr noundef %2, ptr noundef %107)
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %118, label %94

110:                                              ; preds = %68, %68
  %111 = getelementptr inbounds [1 x %union.rtunion_def], ptr %63, i64 0, i64 %70
  %112 = load i32, ptr %111, align 8, !tbaa !46
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %70
  %114 = load i32, ptr %113, align 8, !tbaa !46
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %94, %90, %73, %110
  %117 = icmp sgt i64 %69, 1
  br i1 %117, label %68, label %118, !llvm.loop !215

118:                                              ; preds = %110, %116, %68, %73, %82, %100, %55, %38, %4, %10, %50, %35, %16
  %119 = phi i8 [ %54, %50 ], [ %37, %35 ], [ %18, %16 ], [ 0, %10 ], [ 0, %4 ], [ 0, %38 ], [ 1, %55 ], [ 0, %100 ], [ 0, %82 ], [ 0, %73 ], [ 0, %68 ], [ 1, %116 ], [ 0, %110 ]
  ret i8 %119
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @df_find_use(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @hash_invariant_expr_1(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %33 [
    i16 30, label %6
    i16 32, label %6
    i16 31, label %6
    i16 45, label %6
    i16 35, label %6
    i16 44, label %6
    i16 37, label %10
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2
  %7 = lshr i32 %4, 16
  %8 = and i32 %7, 255
  %9 = call i32 @hash_rtx(ptr noundef nonnull %1, i32 noundef %8, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #17
  br label %82

10:                                               ; preds = %2
  %11 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef nonnull %1) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, ptr %1, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = call i32 @hash_rtx(ptr noundef nonnull %1, i32 noundef %16, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #17
  br label %82

18:                                               ; preds = %10
  %19 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %11)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = call i32 @hash_rtx(ptr noundef nonnull %1, i32 noundef %24, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #17
  br label %82

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.invariant, ptr %19, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !151
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 321, ptr noundef nonnull @.str.8) #17
  br label %31

31:                                               ; preds = %26, %30
  %32 = load i32, ptr %27, align 4, !tbaa !151
  br label %82

33:                                               ; preds = %2
  %34 = and i32 %4, 65535
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %35
  %39 = load i8, ptr %38, align 1, !tbaa !46
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %82, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %44 = zext i8 %39 to i64
  br label %45

45:                                               ; preds = %41, %79
  %46 = phi i64 [ %44, %41 ], [ %48, %79 ]
  %47 = phi i32 [ %34, %41 ], [ %80, %79 ]
  %48 = add nsw i64 %46, -1
  %49 = getelementptr inbounds i8, ptr %37, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !46
  switch i8 %50, label %79 [
    i8 101, label %56
    i8 69, label %51
    i8 105, label %75
    i8 110, label %75
  ]

51:                                               ; preds = %45
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %43, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = load i32, ptr %53, align 8, !tbaa !188
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %62, label %79

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %57, i64 0, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = tail call fastcc i32 @hash_invariant_expr_1(ptr noundef %0, ptr noundef %59)
  %61 = xor i32 %60, %47
  br label %79

62:                                               ; preds = %51, %62
  %63 = phi i64 [ %70, %62 ], [ 0, %51 ]
  %64 = phi ptr [ %71, %62 ], [ %53, %51 ]
  %65 = phi i32 [ %69, %62 ], [ %47, %51 ]
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %64, i64 0, i32 1, i64 %63
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  %68 = tail call fastcc i32 @hash_invariant_expr_1(ptr noundef %0, ptr noundef %67)
  %69 = xor i32 %68, %65
  %70 = add nuw nsw i64 %63, 1
  %71 = load ptr, ptr %52, align 8, !tbaa !46
  %72 = load i32, ptr %71, align 8, !tbaa !188
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %62, label %79, !llvm.loop !216

75:                                               ; preds = %45, %45
  %76 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %48
  %77 = load i32, ptr %76, align 8, !tbaa !46
  %78 = xor i32 %77, %47
  br label %79

79:                                               ; preds = %62, %51, %45, %56, %75
  %80 = phi i32 [ %61, %56 ], [ %78, %75 ], [ %47, %45 ], [ %47, %51 ], [ %69, %62 ]
  %81 = icmp sgt i64 %46, 1
  br i1 %81, label %45, label %82, !llvm.loop !217

82:                                               ; preds = %79, %33, %31, %21, %13, %6
  %83 = phi i32 [ %32, %31 ], [ %25, %21 ], [ %17, %13 ], [ %9, %6 ], [ %34, %33 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %83
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @set_move_mark(i32 noundef %0, i32 noundef %1) unnamed_addr #14 !prof !34 {
  %3 = load ptr, ptr @invariants, align 8
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %3, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !151
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %3, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.invariant, ptr %11, i64 0, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !143
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %2
  store i8 1, ptr %12, align 1, !tbaa !143
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = icmp sgt i32 %1, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.15, i32 noundef %0, i32 noundef %1)
  br label %24

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.16, i32 noundef %0)
  br label %24

24:                                               ; preds = %20, %22, %15
  %25 = getelementptr inbounds %struct.invariant, ptr %11, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @bitmap_zero_bits, ptr %27
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !93
  %32 = shl i32 %31, 7
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !95
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = or disjoint i32 %32, %36
  br label %38

38:                                               ; preds = %99, %24
  %39 = phi i64 [ %34, %24 ], [ %100, %99 ]
  %40 = phi i32 [ 0, %24 ], [ %95, %99 ]
  %41 = phi i32 [ %37, %24 ], [ %101, %99 ]
  %42 = phi ptr [ %29, %24 ], [ %97, %99 ]
  %43 = icmp eq i64 %39, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %72, %38
  %45 = phi i64 [ %39, %38 ], [ %77, %72 ]
  %46 = phi i32 [ %40, %38 ], [ %73, %72 ]
  %47 = phi i32 [ %41, %38 ], [ %74, %72 ]
  %48 = phi ptr [ %42, %38 ], [ %65, %72 ]
  %49 = and i64 %45, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %44, %51
  %52 = phi i32 [ %55, %51 ], [ %47, %44 ]
  %53 = phi i64 [ %54, %51 ], [ %45, %44 ]
  %54 = lshr exact i64 %53, 1
  %55 = add i32 %52, 1
  %56 = and i64 %53, 2
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %51, label %93, !llvm.loop !96

58:                                               ; preds = %38
  %59 = add i32 %41, 63
  %60 = and i32 %59, -64
  %61 = add i32 %40, 1
  br label %62

62:                                               ; preds = %89, %58
  %63 = phi i64 [ %39, %58 ], [ %84, %89 ]
  %64 = phi i32 [ %60, %58 ], [ %92, %89 ]
  %65 = phi ptr [ %42, %58 ], [ %87, %89 ]
  %66 = phi i32 [ %61, %58 ], [ 0, %89 ]
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = add i32 %64, 128
  %70 = shl i32 %66, 6
  %71 = sub i32 %69, %70
  br label %72

72:                                               ; preds = %68, %79
  %73 = phi i32 [ %81, %79 ], [ %66, %68 ]
  %74 = phi i32 [ %80, %79 ], [ %64, %68 ]
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds %struct.bitmap_element_def, ptr %65, i64 0, i32 3, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !95
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %44

79:                                               ; preds = %72
  %80 = add i32 %74, 64
  %81 = add i32 %73, 1
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %72, !llvm.loop !97

83:                                               ; preds = %79, %62
  %84 = phi i64 [ %63, %62 ], [ %77, %79 ]
  %85 = phi i32 [ %64, %62 ], [ %71, %79 ]
  %86 = phi i32 [ %66, %62 ], [ 2, %79 ]
  %87 = load ptr, ptr %65, align 8, !tbaa !98
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.bitmap_element_def, ptr %87, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !93
  %92 = shl i32 %91, 7
  br label %62, !llvm.loop !99

93:                                               ; preds = %83, %51, %44
  %94 = phi i64 [ %45, %44 ], [ %54, %51 ], [ %84, %83 ]
  %95 = phi i32 [ %46, %44 ], [ %46, %51 ], [ %86, %83 ]
  %96 = phi i32 [ %47, %44 ], [ %55, %51 ], [ %85, %83 ]
  %97 = phi ptr [ %48, %44 ], [ %48, %51 ], [ %87, %83 ]
  %98 = phi i1 [ false, %44 ], [ false, %51 ], [ true, %83 ]
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  tail call fastcc void @set_move_mark(i32 noundef %96, i32 noundef -1)
  %100 = lshr i64 %94, 1
  %101 = add i32 %96, 1
  br label %38, !llvm.loop !218

102:                                              ; preds = %93, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @get_inv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca [27 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %5) #17
  %8 = load ptr, ptr @invariants, align 8
  %9 = getelementptr inbounds %struct.invariant, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !151
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %8, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  store i32 0, ptr %1, align 4, !tbaa !50
  %14 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %20, label %30

19:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !50
  br label %30

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %26, %20 ], [ 0, %16 ]
  %22 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  store i32 0, ptr %25, align 4, !tbaa !50
  %26 = add nuw nsw i64 %21, 1
  %27 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %20, label %30, !llvm.loop !219

30:                                               ; preds = %20, %16, %19
  %31 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !143
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %287

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !146
  %37 = load i32, ptr @actual_stamp, align 4, !tbaa !50
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %287, label %39

39:                                               ; preds = %34
  store i32 %37, ptr %35, align 8, !tbaa !146
  %40 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 4, !tbaa !50
  %44 = add i32 %43, 1
  store i32 %44, ptr %2, align 4, !tbaa !50
  br label %54

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %46 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !147
  %48 = call fastcc i32 @get_cover_class_and_nregs(ptr noundef %47, ptr noundef nonnull %6)
  %49 = load i32, ptr %6, align 4, !tbaa !50
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, ptr %2, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = add i32 %52, %49
  store i32 %53, ptr %51, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %54

54:                                               ; preds = %45, %42
  %55 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 8
  %56 = load i8, ptr %55, align 2, !tbaa !142
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !137
  %61 = getelementptr inbounds %struct.def, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !207
  %63 = getelementptr inbounds %struct.def, ptr %60, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !206
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58, %54
  %67 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !141
  %69 = load i32, ptr %1, align 4, !tbaa !50
  %70 = add i32 %69, %68
  store i32 %70, ptr %1, align 4, !tbaa !50
  br label %71

71:                                               ; preds = %66, %58
  %72 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 23
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = tail call ptr @single_set_2(ptr noundef nonnull %73, ptr noundef nonnull %80) #17
  br label %86

86:                                               ; preds = %71, %78, %84
  %87 = phi ptr [ %85, %84 ], [ null, %71 ], [ %80, %78 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %123, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 16711680
  switch i32 %93, label %123 [
    i32 2490368, label %94
    i32 2555904, label %103
    i32 2621440, label %113
  ]

94:                                               ; preds = %89
  %95 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %96 = and i32 %95, 65536
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %98
  switch i32 %93, label %123 [
    i32 2555904, label %103
    i32 2621440, label %113
  ]

103:                                              ; preds = %89, %102
  %104 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %105 = and i32 %104, 131072
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load i32, ptr @ix86_fpmath, align 4, !tbaa !50
  %109 = and i32 %108, 2
  %110 = icmp eq i32 %109, 0
  %111 = icmp eq i32 %93, 2621440
  %112 = or i1 %111, %110
  br i1 %112, label %113, label %123

113:                                              ; preds = %89, %102, %107, %103, %98, %94
  %114 = tail call zeroext i8 @constant_pool_constant_p(ptr noundef nonnull %91) #17
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i64 0, i64 16
  %120 = getelementptr inbounds i32, ptr %2, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = add i32 %121, 2
  store i32 %122, ptr %120, align 4, !tbaa !50
  br label %123

123:                                              ; preds = %116, %102, %89, %107, %113, %86
  %124 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 10
  %125 = load ptr, ptr %124, align 8, !tbaa !140
  %126 = load ptr, ptr %125, align 8, !tbaa !92
  %127 = icmp eq ptr %126, null
  %128 = select i1 %127, ptr @bitmap_zero_bits, ptr %126
  %129 = getelementptr inbounds %struct.bitmap_element_def, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !93
  %131 = shl i32 %130, 7
  %132 = getelementptr inbounds %struct.bitmap_element_def, ptr %128, i64 0, i32 3
  %133 = load i64, ptr %132, align 8, !tbaa !95
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = or disjoint i32 %131, %135
  br label %137

137:                                              ; preds = %281, %123
  %138 = phi i64 [ %133, %123 ], [ %285, %281 ]
  %139 = phi i32 [ 0, %123 ], [ %194, %281 ]
  %140 = phi i32 [ %136, %123 ], [ %286, %281 ]
  %141 = phi ptr [ %128, %123 ], [ %196, %281 ]
  %142 = icmp eq i64 %138, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %171, %137
  %144 = phi i64 [ %138, %137 ], [ %176, %171 ]
  %145 = phi i32 [ %139, %137 ], [ %172, %171 ]
  %146 = phi i32 [ %140, %137 ], [ %173, %171 ]
  %147 = phi ptr [ %141, %137 ], [ %164, %171 ]
  %148 = and i64 %144, 1
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %192

150:                                              ; preds = %143, %150
  %151 = phi i32 [ %154, %150 ], [ %146, %143 ]
  %152 = phi i64 [ %153, %150 ], [ %144, %143 ]
  %153 = lshr exact i64 %152, 1
  %154 = add i32 %151, 1
  %155 = and i64 %152, 2
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %150, label %192, !llvm.loop !96

157:                                              ; preds = %137
  %158 = add i32 %140, 63
  %159 = and i32 %158, -64
  %160 = add i32 %139, 1
  br label %161

161:                                              ; preds = %188, %157
  %162 = phi i64 [ %138, %157 ], [ %183, %188 ]
  %163 = phi i32 [ %159, %157 ], [ %191, %188 ]
  %164 = phi ptr [ %141, %157 ], [ %186, %188 ]
  %165 = phi i32 [ %160, %157 ], [ 0, %188 ]
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %182, label %167

167:                                              ; preds = %161
  %168 = add i32 %163, 128
  %169 = shl i32 %165, 6
  %170 = sub i32 %168, %169
  br label %171

171:                                              ; preds = %167, %178
  %172 = phi i32 [ %180, %178 ], [ %165, %167 ]
  %173 = phi i32 [ %179, %178 ], [ %163, %167 ]
  %174 = zext i32 %172 to i64
  %175 = getelementptr inbounds %struct.bitmap_element_def, ptr %164, i64 0, i32 3, i64 %174
  %176 = load i64, ptr %175, align 8, !tbaa !95
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %143

178:                                              ; preds = %171
  %179 = add i32 %173, 64
  %180 = add i32 %172, 1
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %171, !llvm.loop !97

182:                                              ; preds = %178, %161
  %183 = phi i64 [ %162, %161 ], [ %176, %178 ]
  %184 = phi i32 [ %163, %161 ], [ %170, %178 ]
  %185 = phi i32 [ %165, %161 ], [ 2, %178 ]
  %186 = load ptr, ptr %164, align 8, !tbaa !98
  %187 = icmp eq ptr %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.bitmap_element_def, ptr %186, i64 0, i32 2
  %190 = load i32, ptr %189, align 8, !tbaa !93
  %191 = shl i32 %190, 7
  br label %161, !llvm.loop !99

192:                                              ; preds = %182, %150, %143
  %193 = phi i64 [ %144, %143 ], [ %153, %150 ], [ %183, %182 ]
  %194 = phi i32 [ %145, %143 ], [ %145, %150 ], [ %185, %182 ]
  %195 = phi i32 [ %146, %143 ], [ %154, %150 ], [ %184, %182 ]
  %196 = phi ptr [ %147, %143 ], [ %147, %150 ], [ %186, %182 ]
  %197 = phi i1 [ false, %143 ], [ false, %150 ], [ true, %182 ]
  br i1 %197, label %287, label %198

198:                                              ; preds = %192
  %199 = load ptr, ptr @invariants, align 8
  %200 = zext i32 %195 to i64
  %201 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %199, i64 0, i32 2, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !35
  call fastcc void @get_inv_cost(ptr noundef %202, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %203 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %198
  %206 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %232

208:                                              ; preds = %205
  %209 = zext nneg i32 %206 to i64
  %210 = zext nneg i32 %206 to i64
  %211 = load i32, ptr @ira_reg_class_cover, align 16, !tbaa !50
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !50
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %232

216:                                              ; preds = %198
  %217 = load i32, ptr %5, align 16, !tbaa !50
  %218 = icmp ne i32 %217, 0
  br label %232

219:                                              ; preds = %208, %223
  %220 = phi i64 [ %221, %223 ], [ 0, %208 ]
  %221 = add nuw nsw i64 %220, 1
  %222 = icmp eq i64 %221, %210
  br i1 %222, label %230, label %223, !llvm.loop !220

223:                                              ; preds = %219
  %224 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %221
  %225 = load i32, ptr %224, align 4, !tbaa !50
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !50
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %219, label %230, !llvm.loop !220

230:                                              ; preds = %223, %219
  %231 = icmp ult i64 %221, %209
  br label %232

232:                                              ; preds = %230, %208, %205, %216
  %233 = phi i1 [ %218, %216 ], [ %207, %205 ], [ %207, %208 ], [ %231, %230 ]
  br i1 %233, label %234, label %257

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.invariant, ptr %202, i64 0, i32 6
  %236 = load i8, ptr %235, align 8, !tbaa !139
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %257, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.invariant, ptr %202, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !137
  %241 = load ptr, ptr %240, align 8, !tbaa !173
  %242 = getelementptr inbounds %struct.use, ptr %241, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !174
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %257

245:                                              ; preds = %238
  br i1 %204, label %246, label %249

246:                                              ; preds = %245
  %247 = load i32, ptr %5, align 16, !tbaa !50
  %248 = add i32 %247, -1
  store i32 %248, ptr %5, align 16, !tbaa !50
  br label %257

249:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %250 = load ptr, ptr %72, align 8, !tbaa !147
  %251 = call fastcc i32 @get_cover_class_and_nregs(ptr noundef %250, ptr noundef nonnull %7)
  %252 = load i32, ptr %7, align 4, !tbaa !50
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !50
  %256 = sub i32 %255, %252
  store i32 %256, ptr %254, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %257

257:                                              ; preds = %246, %249, %238, %234, %232
  %258 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !50
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %267, label %281

263:                                              ; preds = %257
  %264 = load i32, ptr %5, align 16, !tbaa !50
  %265 = load i32, ptr %2, align 4, !tbaa !50
  %266 = add i32 %265, %264
  store i32 %266, ptr %2, align 4, !tbaa !50
  br label %281

267:                                              ; preds = %260, %267
  %268 = phi i64 [ %277, %267 ], [ 0, %260 ]
  %269 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !50
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !50
  %274 = getelementptr inbounds i32, ptr %2, i64 %271
  %275 = load i32, ptr %274, align 4, !tbaa !50
  %276 = add i32 %275, %273
  store i32 %276, ptr %274, align 4, !tbaa !50
  %277 = add nuw nsw i64 %268, 1
  %278 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !50
  %279 = sext i32 %278 to i64
  %280 = icmp slt i64 %277, %279
  br i1 %280, label %267, label %281, !llvm.loop !221

281:                                              ; preds = %267, %260, %263
  %282 = load i32, ptr %4, align 4, !tbaa !50
  %283 = load i32, ptr %1, align 4, !tbaa !50
  %284 = add nsw i32 %283, %282
  store i32 %284, ptr %1, align 4, !tbaa !50
  %285 = lshr i64 %193, 1
  %286 = add i32 %195, 1
  br label %137, !llvm.loop !222

287:                                              ; preds = %192, %30, %34
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

declare i32 @estimate_reg_pressure_cost(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_cover_class_and_nregs(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %9) #17
  br label %15

15:                                               ; preds = %2, %7, %13
  %16 = phi ptr [ %14, %13 ], [ null, %2 ], [ %9, %7 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1025, ptr noundef nonnull @.str.8) #17
  br label %19

19:                                               ; preds = %15, %18
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi ptr [ %27, %25 ], [ %21, %19 ]
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %36 [
    i16 43, label %47
    i16 37, label %32
  ]

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = tail call i32 @reg_cover_class(i32 noundef %34) #17
  br label %36

36:                                               ; preds = %28, %32
  %37 = phi i32 [ %35, %32 ], [ 13, %28 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %38, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !50
  br label %47

47:                                               ; preds = %28, %36
  %48 = phi i32 [ %46, %36 ], [ 0, %28 ]
  %49 = phi i32 [ %37, %36 ], [ 0, %28 ]
  store i32 %48, ptr %1, align 4, !tbaa !50
  ret i32 %49
}

declare zeroext i8 @constant_pool_constant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @invariants, align 8
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %3, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !151
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %3, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = tail call ptr @loop_preheader_edge(ptr noundef %0) #17
  %13 = load ptr, ptr %12, align 8, !tbaa !223
  %14 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !144
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %224

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.invariant, ptr %11, i64 0, i32 7
  %19 = load i8, ptr %18, align 1, !tbaa !143
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %224, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %6, %11
  br i1 %22, label %23, label %170

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = icmp eq ptr %25, null
  br i1 %26, label %106, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !92
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @bitmap_zero_bits, ptr %28
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !93
  %33 = shl i32 %32, 7
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %30, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !95
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = or disjoint i32 %33, %37
  br label %39

39:                                               ; preds = %103, %27
  %40 = phi i64 [ %35, %27 ], [ %104, %103 ]
  %41 = phi i32 [ 0, %27 ], [ %96, %103 ]
  %42 = phi i32 [ %38, %27 ], [ %105, %103 ]
  %43 = phi ptr [ %30, %27 ], [ %98, %103 ]
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %73, %39
  %46 = phi i64 [ %40, %39 ], [ %78, %73 ]
  %47 = phi i32 [ %41, %39 ], [ %74, %73 ]
  %48 = phi i32 [ %42, %39 ], [ %75, %73 ]
  %49 = phi ptr [ %43, %39 ], [ %66, %73 ]
  %50 = and i64 %46, 1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %45, %52
  %53 = phi i32 [ %56, %52 ], [ %48, %45 ]
  %54 = phi i64 [ %55, %52 ], [ %46, %45 ]
  %55 = lshr exact i64 %54, 1
  %56 = add i32 %53, 1
  %57 = and i64 %54, 2
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %52, label %94, !llvm.loop !96

59:                                               ; preds = %39
  %60 = add i32 %42, 63
  %61 = and i32 %60, -64
  %62 = add i32 %41, 1
  br label %63

63:                                               ; preds = %90, %59
  %64 = phi i64 [ %40, %59 ], [ %85, %90 ]
  %65 = phi i32 [ %61, %59 ], [ %93, %90 ]
  %66 = phi ptr [ %43, %59 ], [ %88, %90 ]
  %67 = phi i32 [ %62, %59 ], [ 0, %90 ]
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %84, label %69

69:                                               ; preds = %63
  %70 = add i32 %65, 128
  %71 = shl i32 %67, 6
  %72 = sub i32 %70, %71
  br label %73

73:                                               ; preds = %69, %80
  %74 = phi i32 [ %82, %80 ], [ %67, %69 ]
  %75 = phi i32 [ %81, %80 ], [ %65, %69 ]
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 3, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !95
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %45

80:                                               ; preds = %73
  %81 = add i32 %75, 64
  %82 = add i32 %74, 1
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %73, !llvm.loop !97

84:                                               ; preds = %80, %63
  %85 = phi i64 [ %64, %63 ], [ %78, %80 ]
  %86 = phi i32 [ %65, %63 ], [ %72, %80 ]
  %87 = phi i32 [ %67, %63 ], [ 2, %80 ]
  %88 = load ptr, ptr %66, align 8, !tbaa !98
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.bitmap_element_def, ptr %88, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !93
  %93 = shl i32 %92, 7
  br label %63, !llvm.loop !99

94:                                               ; preds = %84, %52, %45
  %95 = phi i64 [ %46, %45 ], [ %55, %52 ], [ %85, %84 ]
  %96 = phi i32 [ %47, %45 ], [ %47, %52 ], [ %87, %84 ]
  %97 = phi i32 [ %48, %45 ], [ %56, %52 ], [ %86, %84 ]
  %98 = phi ptr [ %49, %45 ], [ %49, %52 ], [ %88, %84 ]
  %99 = phi i1 [ false, %45 ], [ false, %52 ], [ true, %84 ]
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = tail call fastcc zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %97), !range !128
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %216, label %103

103:                                              ; preds = %100
  %104 = lshr i64 %95, 1
  %105 = add i32 %97, 1
  br label %39, !llvm.loop !224

106:                                              ; preds = %94, %23
  %107 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !147
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = add nsw i32 %110, -7
  %112 = icmp ult i32 %111, 4
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 23
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = tail call ptr @single_set_2(ptr noundef nonnull %108, ptr noundef nonnull %115) #17
  br label %121

121:                                              ; preds = %106, %113, %119
  %122 = phi ptr [ %120, %119 ], [ null, %106 ], [ %115, %113 ]
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !46
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 39
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  br label %131

131:                                              ; preds = %128, %121
  %132 = phi ptr [ %130, %128 ], [ %124, %121 ]
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 37
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !46
  br label %139

139:                                              ; preds = %136, %131
  %140 = phi i32 [ %138, %136 ], [ -1, %131 ]
  %141 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef nonnull %124) #17
  %142 = load ptr, ptr %107, align 8, !tbaa !147
  %143 = tail call zeroext i8 @validate_change(ptr noundef %142, ptr noundef nonnull %123, ptr noundef %141, i8 noundef zeroext 0) #17
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %216, label %145

145:                                              ; preds = %139
  %146 = load ptr, ptr %107, align 8, !tbaa !147
  %147 = tail call zeroext i8 @df_insn_rescan(ptr noundef %146) #17
  %148 = tail call ptr @gen_move_insn(ptr noundef nonnull %124, ptr noundef %141) #17
  %149 = load ptr, ptr %107, align 8, !tbaa !147
  %150 = tail call ptr @emit_insn_after(ptr noundef %148, ptr noundef %149) #17
  %151 = load ptr, ptr %107, align 8, !tbaa !147
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.rtl_bb_info, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !101
  tail call void @reorder_insns(ptr noundef %151, ptr noundef %151, ptr noundef %155) #17
  %156 = load ptr, ptr %107, align 8, !tbaa !147
  %157 = tail call ptr @find_reg_note(ptr noundef %156, i32 noundef 4, ptr noundef null) #17
  %158 = icmp eq ptr %157, null
  br i1 %158, label %197, label %159

159:                                              ; preds = %145
  %160 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 6
  %161 = load i8, ptr %160, align 8, !tbaa !139
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %165), !range !128
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %163, %159
  %169 = load ptr, ptr %107, align 8, !tbaa !147
  tail call void @remove_note(ptr noundef %169, ptr noundef nonnull %157) #17
  br label %197

170:                                              ; preds = %21
  %171 = load i32, ptr %11, align 8, !tbaa !150
  %172 = tail call fastcc zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %171), !range !128
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %216, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.invariant, ptr %11, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !144
  %177 = getelementptr inbounds %struct.invariant, ptr %11, i64 0, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !145
  %179 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 5
  %180 = load ptr, ptr %179, align 8, !tbaa !147
  %181 = getelementptr inbounds %struct.rtx_def, ptr %180, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  %183 = load i32, ptr %182, align 8
  %184 = and i32 %183, 65535
  %185 = icmp eq i32 %184, 23
  br i1 %185, label %188, label %186

186:                                              ; preds = %174
  %187 = tail call ptr @single_set_2(ptr noundef %180, ptr noundef nonnull %182) #17
  br label %188

188:                                              ; preds = %174, %186
  %189 = phi ptr [ %187, %186 ], [ %182, %174 ]
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  %192 = tail call ptr @gen_move_insn(ptr noundef %191, ptr noundef %176) #17
  %193 = load ptr, ptr %179, align 8, !tbaa !147
  %194 = tail call ptr @emit_insn_after(ptr noundef %192, ptr noundef %193) #17
  %195 = load ptr, ptr %179, align 8, !tbaa !147
  %196 = tail call ptr @delete_insn(ptr noundef %195) #17
  br label %197

197:                                              ; preds = %145, %163, %168, %188
  %198 = phi ptr [ %141, %163 ], [ %141, %168 ], [ %141, %145 ], [ %176, %188 ]
  %199 = phi i32 [ %140, %163 ], [ %140, %168 ], [ %140, %145 ], [ %178, %188 ]
  store ptr %198, ptr %14, align 8, !tbaa !144
  %200 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 3
  store i32 %199, ptr %200, align 8, !tbaa !145
  %201 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !137
  %203 = icmp eq ptr %202, null
  br i1 %203, label %224, label %204

204:                                              ; preds = %197
  %205 = load ptr, ptr %202, align 8, !tbaa !35
  %206 = icmp eq ptr %205, null
  br i1 %206, label %224, label %207

207:                                              ; preds = %204, %207
  %208 = phi ptr [ %214, %207 ], [ %205, %204 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !203
  store ptr %198, ptr %209, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct.use, ptr %208, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !204
  %212 = tail call zeroext i8 @df_insn_rescan(ptr noundef %211) #17
  %213 = getelementptr inbounds %struct.use, ptr %208, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !35
  %215 = icmp eq ptr %214, null
  br i1 %215, label %224, label %207, !llvm.loop !225

216:                                              ; preds = %100, %170, %139
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.17, i32 noundef %1)
  br label %221

221:                                              ; preds = %219, %216
  %222 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 7
  store i8 0, ptr %222, align 1, !tbaa !143
  store ptr null, ptr %14, align 8, !tbaa !144
  %223 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 3
  store i32 -1, ptr %223, align 8, !tbaa !145
  br label %224

224:                                              ; preds = %207, %204, %197, %17, %2, %221
  %225 = phi i8 [ 0, %221 ], [ 1, %2 ], [ 0, %17 ], [ 1, %197 ], [ 1, %204 ], [ 1, %207 ]
  ret i8 %225
}

declare zeroext i8 @resize_reg_info() local_unnamed_addr #3

declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

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
!54 = !{!55, !36, i64 32}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!57, !36, i64 8}
!57 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!58 = !{!59, !41, i64 0}
!59 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!60 = !{!57, !36, i64 24}
!61 = !{!62, !41, i64 0}
!62 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !63, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !64, i64 80, !64, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!63 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!64 = !{!"", !42, i64 0, !42, i64 8}
!65 = !{!66, !41, i64 0}
!66 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!67 = !{!62, !36, i64 48}
!68 = distinct !{!68, !53}
!69 = !{!62, !36, i64 56}
!70 = !{!62, !36, i64 40}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = !{!62, !36, i64 64}
!74 = !{!75, !36, i64 24}
!75 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!76 = distinct !{!76, !52, !53}
!77 = !{!55, !36, i64 8}
!78 = !{!79, !36, i64 0}
!79 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!80 = !{!81, !36, i64 56}
!81 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!82 = !{!79, !36, i64 8}
!83 = !{!81, !36, i64 24}
!84 = !{!81, !41, i64 80}
!85 = !{!86, !41, i64 16}
!86 = !{!"dataflow", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 53, !37, i64 54}
!87 = !{!86, !36, i64 8}
!88 = !{!89, !36, i64 16}
!89 = !{!"df_lr_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = !{!75, !36, i64 0}
!93 = !{!94, !41, i64 16}
!94 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!95 = !{!42, !42, i64 0}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = !{!94, !36, i64 0}
!99 = distinct !{!99, !53}
!100 = distinct !{!100, !52, !53}
!101 = !{!102, !36, i64 8}
!102 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = distinct !{!108, !52, !53}
!109 = !{!62, !36, i64 8}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = !{!62, !41, i64 36}
!115 = !{!116, !41, i64 8}
!116 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!117 = distinct !{!117, !52, !53}
!118 = !{!119, !41, i64 0}
!119 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!120 = !{!121, !36, i64 8}
!121 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!122 = distinct !{!122, !52, !53}
!123 = !{!124, !37, i64 8}
!124 = !{!"loop_data", !36, i64 0, !37, i64 8, !37, i64 12, !75, i64 120, !75, i64 152}
!125 = !{!124, !36, i64 0}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = !{i8 0, i8 2}
!129 = !{!130, !36, i64 248}
!130 = !{!"df", !37, i64 0, !37, i64 64, !36, i64 128, !131, i64 136, !131, i64 176, !36, i64 216, !36, i64 224, !36, i64 232, !41, i64 240, !41, i64 244, !36, i64 248, !41, i64 256, !41, i64 260, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !41, i64 344, !41, i64 348, !36, i64 352, !41, i64 360, !41, i64 364, !37, i64 365, !37, i64 366}
!131 = !{!"df_ref_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!132 = !{!133, !36, i64 16}
!133 = !{!"df_insn_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40}
!134 = distinct !{!134, !52, !53}
!135 = !{!133, !36, i64 24}
!136 = distinct !{!136, !52, !53}
!137 = !{!138, !36, i64 24}
!138 = !{!"invariant", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !37, i64 42, !41, i64 44, !36, i64 48, !41, i64 56}
!139 = !{!138, !37, i64 40}
!140 = !{!138, !36, i64 48}
!141 = !{!138, !41, i64 44}
!142 = !{!138, !37, i64 42}
!143 = !{!138, !37, i64 41}
!144 = !{!138, !36, i64 8}
!145 = !{!138, !41, i64 16}
!146 = !{!138, !41, i64 56}
!147 = !{!138, !36, i64 32}
!148 = !{!149, !41, i64 0}
!149 = !{!"VEC_invariant_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!150 = !{!138, !41, i64 0}
!151 = !{!138, !41, i64 4}
!152 = !{!153, !41, i64 16}
!153 = !{!"def", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!154 = !{!149, !41, i64 4}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = !{!130, !41, i64 244}
!161 = !{!130, !36, i64 216}
!162 = !{!130, !36, i64 224}
!163 = distinct !{!163, !52, !53}
!164 = distinct !{!164, !52, !53}
!165 = distinct !{!165, !52, !53}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = !{!130, !41, i64 164}
!173 = !{!153, !36, i64 0}
!174 = !{!175, !36, i64 24}
!175 = !{!"use", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = !{!180, !41, i64 8}
!180 = !{!"", !36, i64 0, !41, i64 8}
!181 = distinct !{!181, !52, !53}
!182 = !{!180, !36, i64 0}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !53}
!187 = distinct !{!187, !52, !53}
!188 = !{!189, !41, i64 0}
!189 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = distinct !{!194, !52, !53}
!195 = distinct !{!195, !52, !53}
!196 = !{!62, !36, i64 16}
!197 = distinct !{!197, !52, !53}
!198 = distinct !{!198, !52, !53}
!199 = !{!200, !36, i64 8}
!200 = !{!"df_link", !36, i64 0, !36, i64 8}
!201 = !{!200, !36, i64 0}
!202 = !{!133, !36, i64 0}
!203 = !{!175, !36, i64 0}
!204 = !{!175, !36, i64 8}
!205 = !{!175, !41, i64 16}
!206 = !{!153, !41, i64 8}
!207 = !{!153, !41, i64 12}
!208 = !{!209, !41, i64 20}
!209 = !{!"invariant_expr_entry", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!210 = !{!209, !41, i64 16}
!211 = !{!209, !36, i64 0}
!212 = !{!209, !36, i64 8}
!213 = distinct !{!213, !52, !53}
!214 = distinct !{!214, !52, !53}
!215 = distinct !{!215, !52, !53}
!216 = distinct !{!216, !52, !53}
!217 = distinct !{!217, !52, !53}
!218 = distinct !{!218, !52, !53}
!219 = distinct !{!219, !52, !53}
!220 = distinct !{!220, !52, !53}
!221 = distinct !{!221, !52, !53}
!222 = distinct !{!222, !52, !53}
!223 = !{!121, !36, i64 0}
!224 = distinct !{!224, !52, !53}
!225 = distinct !{!225, !52, !53}
