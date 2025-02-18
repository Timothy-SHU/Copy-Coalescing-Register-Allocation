; ModuleID = 'ira-emit.c'
source_filename = "ira-emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.move = type { ptr, ptr, ptr, i8, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_move_t_base = type { i32, i32, [1 x ptr] }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@at_bb_start = internal unnamed_addr global ptr null, align 8
@at_bb_end = internal unnamed_addr global ptr null, align 8
@local_allocno_bitmap = internal unnamed_addr global ptr null, align 8
@used_regno_bitmap = internal unnamed_addr global ptr null, align 8
@renamed_regno_bitmap = internal unnamed_addr global ptr null, align 8
@max_regno_before_changing = internal unnamed_addr global i32 0, align 4
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@allocno_last_set = internal unnamed_addr global ptr null, align 8
@allocno_last_set_check = internal unnamed_addr global ptr null, align 8
@hard_regno_last_set_check = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@curr_tick = internal unnamed_addr global i32 0, align 4
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@move_vec = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [16 x i8] c" a%dr%d->a%dr%d\00", align 1
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"      Changing RTL for loop %d (header bb%d)\0A\00", align 1
@ira_curr_loop_tree_node = external local_unnamed_addr global ptr, align 8
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ira_prohibited_mode_move_regs = external local_unnamed_addr global [87 x i64], align 16
@ira_reg_equiv_invariant_p = external local_unnamed_addr global ptr, align 8
@ira_reg_equiv_const = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"  %i vs parent %i:\00", align 1
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"      Creating newreg=%i from oldreg=%i\0A\00", align 1
@ira_loops = external local_unnamed_addr global %struct.loops, align 8
@ira_loop_nodes = external local_unnamed_addr global ptr, align 8
@ira_bb_nodes = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"      Remove r%d:a%d->a%d(mem)\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"ira-emit.c\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@ira_additional_jumps_num = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@hard_regno_last_set = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@ira_move_loops_num = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"    Creating temporary allocno a%dr%d\0A\00", align 1
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@ira_store_cost = external local_unnamed_addr global i32, align 4
@ira_load_cost = external local_unnamed_addr global i32, align 4
@ira_shuffle_cost = external local_unnamed_addr global i32, align 4
@ira_overall_cost = external local_unnamed_addr global i32, align 4
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_max_point = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"    Allocate conflicts for a%dr%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"    Adding cp%d:a%dr%d-a%dr%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"    Adding range [%d..%d] to allocno a%dr%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"    Adding range [%d..%d] to live through %s allocno a%dr%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"upper level\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

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

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_move_list(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %17, %4 ], [ %0, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !58
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9, i32 noundef %12, i32 noundef %14) #19
  %16 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !61

19:                                               ; preds = %4, %1
  %20 = tail call i32 @fputc(i32 10, ptr %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_emit(i8 noundef zeroext %0) local_unnamed_addr #10 !prof !62 {
  %2 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !50
  %3 = load ptr, ptr @ira_allocnos, align 8
  %4 = load ptr, ptr @regno_reg_rtx, align 8
  br label %5

5:                                                ; preds = %38, %1
  %6 = phi ptr [ undef, %1 ], [ %36, %38 ]
  %7 = phi i32 [ 0, %1 ], [ %37, %38 ]
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %34, !prof !63

9:                                                ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %20, !prof !64

14:                                               ; preds = %26
  %15 = getelementptr inbounds ptr, ptr %3, i64 %29
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !64, !llvm.loop !65

18:                                               ; preds = %14
  %19 = icmp slt i64 %29, %28
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i64 [ %10, %9 ], [ %29, %18 ]
  %22 = phi i1 [ %8, %9 ], [ %19, %18 ]
  %23 = phi ptr [ %12, %9 ], [ %16, %18 ]
  %24 = trunc i64 %21 to i32
  %25 = add nsw i32 %24, 1
  br label %34

26:                                               ; preds = %9, %14
  %27 = phi i64 [ %29, %14 ], [ %10, %9 ]
  %28 = sext i32 %2 to i64
  %29 = add nsw i64 %27, 1
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %2, %30
  br i1 %31, label %32, label %14, !prof !66, !llvm.loop !65

32:                                               ; preds = %26
  %33 = icmp slt i64 %29, %28
  br label %34

34:                                               ; preds = %32, %5, %20
  %35 = phi i1 [ %22, %20 ], [ %8, %5 ], [ %33, %32 ]
  %36 = phi ptr [ %23, %20 ], [ %6, %5 ], [ %6, %32 ]
  %37 = phi i32 [ %25, %20 ], [ %7, %5 ], [ %7, %32 ]
  br i1 %35, label %38, label %45, !prof !67

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %4, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !68
  br label %5, !llvm.loop !69

45:                                               ; preds = %34
  %46 = icmp eq i8 %0, 0
  br i1 %46, label %1103, label %47, !prof !70

47:                                               ; preds = %45
  %48 = load ptr, ptr @cfun, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !73
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call ptr @ira_allocate(i64 noundef %54) #18
  store ptr %55, ptr @at_bb_start, align 8, !tbaa !35
  %56 = load ptr, ptr @cfun, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !71
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !73
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %55, i8 0, i64 %62, i1 false)
  %63 = load ptr, ptr @cfun, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !71
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !73
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  %70 = tail call ptr @ira_allocate(i64 noundef %69) #18
  store ptr %70, ptr @at_bb_end, align 8, !tbaa !35
  %71 = load ptr, ptr @cfun, align 8, !tbaa !35
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !73
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 %77, i1 false)
  %78 = tail call ptr @ira_allocate_bitmap() #18
  store ptr %78, ptr @local_allocno_bitmap, align 8, !tbaa !35
  %79 = tail call ptr @ira_allocate_bitmap() #18
  store ptr %79, ptr @used_regno_bitmap, align 8, !tbaa !35
  %80 = tail call ptr @ira_allocate_bitmap() #18
  store ptr %80, ptr @renamed_regno_bitmap, align 8, !tbaa !35
  %81 = tail call i32 @max_reg_num() #18
  store i32 %81, ptr @max_regno_before_changing, align 4, !tbaa !50
  %82 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !35
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %82, ptr noundef nonnull @change_loop, ptr noundef null) #18
  br label %83

83:                                               ; preds = %134, %47
  %84 = phi ptr [ undef, %47 ], [ %116, %134 ]
  %85 = phi i32 [ 0, %47 ], [ %117, %134 ]
  %86 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !50
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load ptr, ptr @ira_allocnos, align 8, !tbaa !35
  %90 = sext i32 %85 to i64
  %91 = sext i32 %86 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  %94 = icmp eq ptr %93, null
  br i1 %94, label %107, label %101

95:                                               ; preds = %107
  %96 = getelementptr inbounds ptr, ptr %89, i64 %109
  %97 = load ptr, ptr %96, align 8, !tbaa !35
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99, !llvm.loop !65

99:                                               ; preds = %95
  %100 = icmp slt i64 %109, %91
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi i64 [ %90, %88 ], [ %109, %99 ]
  %103 = phi i1 [ %87, %88 ], [ %100, %99 ]
  %104 = phi ptr [ %93, %88 ], [ %97, %99 ]
  %105 = trunc i64 %102 to i32
  %106 = add nsw i32 %105, 1
  br label %114

107:                                              ; preds = %88, %95
  %108 = phi i64 [ %109, %95 ], [ %90, %88 ]
  %109 = add nsw i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %86, %110
  br i1 %111, label %112, label %95, !llvm.loop !65

112:                                              ; preds = %107
  %113 = icmp slt i64 %109, %91
  br label %114

114:                                              ; preds = %112, %83, %101
  %115 = phi i1 [ %103, %101 ], [ %87, %83 ], [ %113, %112 ]
  %116 = phi ptr [ %104, %101 ], [ %84, %83 ], [ %84, %112 ]
  %117 = phi i32 [ %106, %101 ], [ %85, %83 ], [ %85, %112 ]
  br i1 %115, label %118, label %135

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ira_allocno, ptr %116, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !58
  %121 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !35
  %122 = tail call i32 @bitmap_bit_p(ptr noundef %121, i32 noundef %120) #18
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.ira_allocno, ptr %116, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !68
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !46
  %129 = icmp eq i32 %128, %120
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.ira_allocno, ptr %116, i64 0, i32 31
  %132 = load i16, ptr %131, align 4
  %133 = or i16 %132, 2
  store i16 %133, ptr %131, align 4
  br label %134

134:                                              ; preds = %130, %124, %118
  br label %83, !llvm.loop !75

135:                                              ; preds = %114
  %136 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !35
  tail call void @ira_free_bitmap(ptr noundef %136) #18
  %137 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !35
  tail call void @ira_free_bitmap(ptr noundef %137) #18
  %138 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !35
  tail call void @ira_free_bitmap(ptr noundef %138) #18
  br label %139

139:                                              ; preds = %228, %135
  %140 = phi i32 [ 0, %135 ], [ %229, %228 ]
  %141 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %141, align 8, !tbaa !76
  %145 = icmp ugt i32 %144, %140
  %146 = zext i1 %145 to i32
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i32 [ 0, %139 ], [ %146, %143 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %230, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !35
  %152 = zext i32 %140 to i64
  %153 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %151, i64 %152, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !78
  %155 = icmp eq ptr %154, null
  br i1 %155, label %228, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %151, i64 %152
  %158 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %151, i64 %152, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = icmp eq ptr %159, null
  br i1 %160, label %224, label %161

161:                                              ; preds = %156, %220
  %162 = phi ptr [ %222, %220 ], [ %159, %156 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !80
  %164 = icmp eq ptr %163, null
  br i1 %164, label %220, label %165

165:                                              ; preds = %161, %218
  %166 = phi i32 [ %219, %218 ], [ 0, %161 ]
  %167 = load ptr, ptr %163, align 8, !tbaa !35
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %167, align 8, !tbaa !81
  br label %171

171:                                              ; preds = %169, %165
  %172 = phi i32 [ %170, %169 ], [ 0, %165 ]
  %173 = icmp eq i32 %172, %166
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = zext i32 %166 to i64
  %176 = getelementptr inbounds %struct.VEC_edge_base, ptr %167, i64 0, i32 2, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !35
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi ptr [ %177, %174 ], [ null, %171 ]
  br i1 %173, label %220, label %180

180:                                              ; preds = %178
  %181 = load ptr, ptr %179, align 8, !tbaa !83
  %182 = load ptr, ptr @cfun, align 8, !tbaa !35
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !71
  %185 = load ptr, ptr %184, align 8, !tbaa !85
  %186 = icmp eq ptr %181, %185
  br i1 %186, label %211, label %187

187:                                              ; preds = %180
  %188 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !35
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %181, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !86
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %188, i64 %191, i32 6
  %193 = load ptr, ptr %192, align 8, !tbaa !88
  %194 = icmp eq ptr %193, %157
  br i1 %194, label %211, label %195

195:                                              ; preds = %187, %195
  %196 = phi ptr [ %198, %195 ], [ %193, %187 ]
  %197 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %196, i64 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !88
  %199 = icmp eq ptr %198, null
  %200 = icmp eq ptr %198, %157
  %201 = or i1 %199, %200
  br i1 %201, label %202, label %195, !llvm.loop !89

202:                                              ; preds = %195
  br i1 %199, label %203, label %211

203:                                              ; preds = %202, %203
  %204 = phi ptr [ %206, %203 ], [ %157, %202 ]
  %205 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %204, i64 0, i32 6
  %206 = load ptr, ptr %205, align 8, !tbaa !88
  %207 = icmp eq ptr %206, null
  %208 = icmp eq ptr %193, %206
  %209 = or i1 %207, %208
  br i1 %209, label %210, label %203, !llvm.loop !90

210:                                              ; preds = %203
  br i1 %207, label %224, label %211

211:                                              ; preds = %210, %202, %187, %180
  br i1 %168, label %214, label %212

212:                                              ; preds = %211
  %213 = load i32, ptr %167, align 8, !tbaa !81
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i32 [ %213, %212 ], [ 0, %211 ]
  %216 = icmp ult i32 %166, %215
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #18
  br label %218

218:                                              ; preds = %217, %214
  %219 = add i32 %166, 1
  br label %165, !llvm.loop !91

220:                                              ; preds = %178, %161
  %221 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %162, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !35
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %161, !llvm.loop !92

224:                                              ; preds = %220, %210, %156
  %225 = phi i8 [ 0, %156 ], [ 1, %210 ], [ 0, %220 ]
  %226 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !35
  %227 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %226, i64 %152, i32 10
  store i8 %225, ptr %227, align 8, !tbaa !93
  br label %228

228:                                              ; preds = %224, %150
  %229 = add i32 %140, 1
  br label %139, !llvm.loop !94

230:                                              ; preds = %147
  %231 = load ptr, ptr @cfun, align 8, !tbaa !35
  %232 = getelementptr inbounds %struct.function, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !71
  %234 = load ptr, ptr %233, align 8, !tbaa !85
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 6
  %236 = load ptr, ptr %235, align 8, !tbaa !95
  %237 = getelementptr inbounds %struct.control_flow_graph, ptr %233, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !96
  %239 = icmp eq ptr %236, %238
  br i1 %239, label %500, label %244

240:                                              ; preds = %267
  %241 = getelementptr inbounds %struct.basic_block_def, ptr %245, i64 0, i32 6
  %242 = load ptr, ptr %241, align 8, !tbaa !95
  %243 = icmp eq ptr %242, %273
  br i1 %243, label %500, label %244, !llvm.loop !97

244:                                              ; preds = %230, %240
  %245 = phi ptr [ %242, %240 ], [ %236, %230 ]
  %246 = load ptr, ptr @at_bb_start, align 8, !tbaa !35
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %245, i64 0, i32 9
  %248 = load i32, ptr %247, align 8, !tbaa !86
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds ptr, ptr %246, i64 %249
  store ptr null, ptr %250, align 8, !tbaa !35
  %251 = load ptr, ptr @at_bb_end, align 8, !tbaa !35
  %252 = getelementptr inbounds ptr, ptr %251, i64 %249
  store ptr null, ptr %252, align 8, !tbaa !35
  %253 = getelementptr inbounds %struct.basic_block_def, ptr %245, i64 0, i32 1
  br label %254

254:                                              ; preds = %498, %244
  %255 = phi i32 [ 0, %244 ], [ %499, %498 ]
  %256 = load ptr, ptr %253, align 8, !tbaa !35
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  %259 = load i32, ptr %256, align 8, !tbaa !81
  br label %260

260:                                              ; preds = %258, %254
  %261 = phi i32 [ %259, %258 ], [ 0, %254 ]
  %262 = icmp eq i32 %261, %255
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = zext i32 %255 to i64
  %265 = getelementptr inbounds %struct.VEC_edge_base, ptr %256, i64 0, i32 2, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  br label %267

267:                                              ; preds = %260, %263
  %268 = phi ptr [ %266, %263 ], [ null, %260 ]
  %269 = load ptr, ptr @cfun, align 8, !tbaa !35
  %270 = getelementptr inbounds %struct.function, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !71
  %272 = getelementptr inbounds %struct.control_flow_graph, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !96
  br i1 %262, label %240, label %274

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.edge_def, ptr %268, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !98
  %277 = icmp eq ptr %276, %273
  br i1 %277, label %489, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !35
  %280 = load ptr, ptr %268, align 8, !tbaa !83
  %281 = getelementptr inbounds %struct.basic_block_def, ptr %280, i64 0, i32 9
  %282 = load i32, ptr %281, align 8, !tbaa !86
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %279, i64 %283, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !88
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %276, i64 0, i32 9
  %287 = load i32, ptr %286, align 8, !tbaa !86
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %279, i64 %288, i32 6
  %290 = load ptr, ptr %289, align 8, !tbaa !88
  %291 = getelementptr inbounds %struct.edge_def, ptr %268, i64 0, i32 3
  store ptr null, ptr %291, align 8, !tbaa !99
  %292 = icmp eq ptr %285, %290
  br i1 %292, label %489, label %293

293:                                              ; preds = %278
  %294 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %285, i64 0, i32 9
  %295 = load ptr, ptr %294, align 8, !tbaa !78
  %296 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %290, i64 0, i32 9
  %297 = load ptr, ptr %296, align 8, !tbaa !78
  %298 = load ptr, ptr @df, align 8, !tbaa !35
  %299 = getelementptr inbounds %struct.df, ptr %298, i64 0, i32 1, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !35
  %301 = getelementptr inbounds %struct.dataflow, ptr %300, i64 0, i32 2
  %302 = load i32, ptr %301, align 8, !tbaa !100
  %303 = icmp ugt i32 %302, %287
  tail call void @llvm.assume(i1 %303)
  %304 = getelementptr inbounds %struct.dataflow, ptr %300, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !102
  %306 = zext i32 %287 to i64
  %307 = getelementptr inbounds ptr, ptr %305, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !35
  %309 = getelementptr inbounds %struct.df_lr_bb_info, ptr %308, i64 0, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !103
  %311 = load ptr, ptr %310, align 8, !tbaa !105
  %312 = icmp eq ptr %311, null
  %313 = select i1 %312, ptr @bitmap_zero_bits, ptr %311
  %314 = getelementptr inbounds %struct.bitmap_element_def, ptr %313, i64 0, i32 2
  %315 = load i32, ptr %314, align 8, !tbaa !107
  %316 = icmp eq i32 %315, 0
  %317 = shl i32 %315, 7
  %318 = select i1 %316, i32 53, i32 %317
  %319 = getelementptr inbounds %struct.bitmap_element_def, ptr %313, i64 0, i32 3, i64 0
  %320 = load i64, ptr %319, align 8, !tbaa !109
  %321 = and i32 %318, 53
  %322 = zext nneg i32 %321 to i64
  %323 = lshr i64 %320, %322
  %324 = icmp eq i64 %323, 0
  %325 = zext i1 %324 to i32
  %326 = add nuw nsw i32 %318, %325
  br label %327

327:                                              ; preds = %486, %293
  %328 = phi i64 [ %323, %293 ], [ %487, %486 ]
  %329 = phi i32 [ 0, %293 ], [ %384, %486 ]
  %330 = phi i32 [ %326, %293 ], [ %488, %486 ]
  %331 = phi ptr [ %313, %293 ], [ %386, %486 ]
  %332 = icmp eq i64 %328, 0
  br i1 %332, label %347, label %333

333:                                              ; preds = %361, %327
  %334 = phi i64 [ %328, %327 ], [ %366, %361 ]
  %335 = phi i32 [ %329, %327 ], [ %362, %361 ]
  %336 = phi i32 [ %330, %327 ], [ %363, %361 ]
  %337 = phi ptr [ %331, %327 ], [ %354, %361 ]
  %338 = and i64 %334, 1
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %382

340:                                              ; preds = %333, %340
  %341 = phi i32 [ %344, %340 ], [ %336, %333 ]
  %342 = phi i64 [ %343, %340 ], [ %334, %333 ]
  %343 = lshr exact i64 %342, 1
  %344 = add i32 %341, 1
  %345 = and i64 %342, 2
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %340, label %382, !llvm.loop !110

347:                                              ; preds = %327
  %348 = add i32 %330, 63
  %349 = and i32 %348, -64
  %350 = add i32 %329, 1
  br label %351

351:                                              ; preds = %378, %347
  %352 = phi i64 [ %328, %347 ], [ %373, %378 ]
  %353 = phi i32 [ %349, %347 ], [ %381, %378 ]
  %354 = phi ptr [ %331, %347 ], [ %376, %378 ]
  %355 = phi i32 [ %350, %347 ], [ 0, %378 ]
  %356 = icmp eq i32 %355, 2
  br i1 %356, label %372, label %357

357:                                              ; preds = %351
  %358 = add i32 %353, 128
  %359 = shl i32 %355, 6
  %360 = sub i32 %358, %359
  br label %361

361:                                              ; preds = %357, %368
  %362 = phi i32 [ %370, %368 ], [ %355, %357 ]
  %363 = phi i32 [ %369, %368 ], [ %353, %357 ]
  %364 = zext i32 %362 to i64
  %365 = getelementptr inbounds %struct.bitmap_element_def, ptr %354, i64 0, i32 3, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !109
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %333

368:                                              ; preds = %361
  %369 = add i32 %363, 64
  %370 = add i32 %362, 1
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %361, !llvm.loop !111

372:                                              ; preds = %368, %351
  %373 = phi i64 [ %352, %351 ], [ %366, %368 ]
  %374 = phi i32 [ %353, %351 ], [ %360, %368 ]
  %375 = phi i32 [ %355, %351 ], [ 2, %368 ]
  %376 = load ptr, ptr %354, align 8, !tbaa !112
  %377 = icmp eq ptr %376, null
  br i1 %377, label %382, label %378

378:                                              ; preds = %372
  %379 = getelementptr inbounds %struct.bitmap_element_def, ptr %376, i64 0, i32 2
  %380 = load i32, ptr %379, align 8, !tbaa !107
  %381 = shl i32 %380, 7
  br label %351, !llvm.loop !113

382:                                              ; preds = %372, %340, %333
  %383 = phi i64 [ %334, %333 ], [ %343, %340 ], [ %373, %372 ]
  %384 = phi i32 [ %335, %333 ], [ %335, %340 ], [ %375, %372 ]
  %385 = phi i32 [ %336, %333 ], [ %344, %340 ], [ %374, %372 ]
  %386 = phi ptr [ %337, %333 ], [ %337, %340 ], [ %376, %372 ]
  %387 = phi i1 [ false, %333 ], [ false, %340 ], [ true, %372 ]
  br i1 %387, label %489, label %388

388:                                              ; preds = %382
  %389 = load ptr, ptr %268, align 8, !tbaa !83
  %390 = getelementptr inbounds %struct.basic_block_def, ptr %389, i64 0, i32 9
  %391 = load i32, ptr %390, align 8, !tbaa !86
  %392 = load ptr, ptr @df, align 8, !tbaa !35
  %393 = getelementptr inbounds %struct.df, ptr %392, i64 0, i32 1, i64 1
  %394 = load ptr, ptr %393, align 8, !tbaa !35
  %395 = getelementptr inbounds %struct.dataflow, ptr %394, i64 0, i32 2
  %396 = load i32, ptr %395, align 8, !tbaa !100
  %397 = icmp ugt i32 %396, %391
  tail call void @llvm.assume(i1 %397)
  %398 = getelementptr inbounds %struct.dataflow, ptr %394, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !102
  %400 = zext i32 %391 to i64
  %401 = getelementptr inbounds ptr, ptr %399, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !35
  %403 = getelementptr inbounds %struct.df_lr_bb_info, ptr %402, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !114
  %405 = tail call i32 @bitmap_bit_p(ptr noundef %404, i32 noundef %385) #18
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %486, label %407

407:                                              ; preds = %388
  %408 = zext i32 %385 to i64
  %409 = getelementptr inbounds ptr, ptr %295, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !35
  %411 = getelementptr inbounds ptr, ptr %297, i64 %408
  %412 = load ptr, ptr %411, align 8, !tbaa !35
  %413 = getelementptr inbounds %struct.ira_allocno, ptr %410, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !68
  %415 = getelementptr inbounds %struct.rtx_def, ptr %414, i64 0, i32 1
  %416 = load i32, ptr %415, align 8, !tbaa !46
  %417 = getelementptr inbounds %struct.ira_allocno, ptr %412, i64 0, i32 4
  %418 = load ptr, ptr %417, align 8, !tbaa !68
  %419 = getelementptr inbounds %struct.rtx_def, ptr %418, i64 0, i32 1
  %420 = load i32, ptr %419, align 8, !tbaa !46
  %421 = icmp eq i32 %416, %420
  br i1 %421, label %486, label %422

422:                                              ; preds = %407
  %423 = getelementptr inbounds %struct.ira_allocno, ptr %412, i64 0, i32 3
  %424 = load i32, ptr %423, align 4, !tbaa !115
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %477

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.ira_allocno, ptr %410, i64 0, i32 3
  %428 = load i32, ptr %427, align 4, !tbaa !115
  %429 = icmp sgt i32 %428, -1
  br i1 %429, label %430, label %477

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.ira_allocno, ptr %410, i64 0, i32 1
  %432 = load i32, ptr %431, align 4, !tbaa !58
  %433 = getelementptr inbounds %struct.ira_allocno, ptr %410, i64 0, i32 6
  %434 = load ptr, ptr %433, align 8, !tbaa !35
  %435 = icmp eq ptr %434, null
  br i1 %435, label %462, label %436

436:                                              ; preds = %430
  %437 = sext i32 %432 to i64
  br label %442

438:                                              ; preds = %458
  %439 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %443, i64 0, i32 6
  %440 = load ptr, ptr %439, align 8, !tbaa !35
  %441 = icmp eq ptr %440, null
  br i1 %441, label %462, label %442, !llvm.loop !116

442:                                              ; preds = %436, %438
  %443 = phi ptr [ %434, %436 ], [ %440, %438 ]
  %444 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %443, i64 0, i32 9
  %445 = load ptr, ptr %444, align 8, !tbaa !78
  %446 = getelementptr inbounds ptr, ptr %445, i64 %437
  %447 = load ptr, ptr %446, align 8, !tbaa !35
  %448 = getelementptr inbounds %struct.ira_allocno, ptr %447, i64 0, i32 4
  %449 = load ptr, ptr %448, align 8, !tbaa !68
  %450 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %451 = load i32, ptr %450, align 8, !tbaa !46
  %452 = icmp eq i32 %451, %420
  br i1 %452, label %463, label %453

453:                                              ; preds = %442
  %454 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %443, i64 0, i32 14
  %455 = load ptr, ptr %454, align 8, !tbaa !117
  %456 = tail call i32 @bitmap_bit_p(ptr noundef %455, i32 noundef %432) #18
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %477

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %443, i64 0, i32 10
  %460 = load i8, ptr %459, align 8, !tbaa !93
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %438, label %477

462:                                              ; preds = %438, %430
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 371, ptr noundef nonnull @.str.6) #18
  br label %477

463:                                              ; preds = %442
  %464 = getelementptr inbounds %struct.ira_allocno, ptr %410, i64 0, i32 32
  store ptr %412, ptr %464, align 8, !tbaa !118
  %465 = getelementptr inbounds %struct.ira_allocno, ptr %412, i64 0, i32 31
  %466 = load i16, ptr %465, align 4
  %467 = or i16 %466, 1
  store i16 %467, ptr %465, align 4
  %468 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %469 = icmp sgt i32 %468, 3
  %470 = load ptr, ptr @ira_dump_file, align 8
  %471 = icmp ne ptr %470, null
  %472 = select i1 %469, i1 %471, i1 false
  br i1 %472, label %473, label %486

473:                                              ; preds = %463
  %474 = load i32, ptr %410, align 8, !tbaa !56
  %475 = load i32, ptr %412, align 8, !tbaa !56
  %476 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %470, ptr noundef nonnull @.str.7, i32 noundef %385, i32 noundef %474, i32 noundef %475)
  br label %486

477:                                              ; preds = %453, %458, %462, %426, %422
  %478 = tail call ptr @ira_allocate(i64 noundef 48) #18
  %479 = getelementptr inbounds %struct.move, ptr %478, i64 0, i32 5
  store ptr null, ptr %479, align 8, !tbaa !119
  %480 = getelementptr inbounds %struct.move, ptr %478, i64 0, i32 4
  store i32 0, ptr %480, align 4, !tbaa !120
  %481 = getelementptr inbounds %struct.move, ptr %478, i64 0, i32 1
  store ptr %412, ptr %481, align 8, !tbaa !59
  store ptr %410, ptr %478, align 8, !tbaa !54
  %482 = getelementptr inbounds %struct.move, ptr %478, i64 0, i32 2
  store ptr null, ptr %482, align 8, !tbaa !60
  %483 = getelementptr inbounds %struct.move, ptr %478, i64 0, i32 6
  store ptr null, ptr %483, align 8, !tbaa !121
  %484 = getelementptr inbounds %struct.move, ptr %478, i64 0, i32 3
  store i8 0, ptr %484, align 8, !tbaa !122
  %485 = load ptr, ptr %291, align 8, !tbaa !99
  store ptr %485, ptr %482, align 8, !tbaa !60
  store ptr %478, ptr %291, align 8, !tbaa !99
  br label %486

486:                                              ; preds = %477, %473, %463, %407, %388
  %487 = lshr i64 %383, 1
  %488 = add i32 %385, 1
  br label %327, !llvm.loop !123

489:                                              ; preds = %382, %274, %278
  %490 = load ptr, ptr %253, align 8, !tbaa !35
  %491 = icmp eq ptr %490, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %489
  %493 = load i32, ptr %490, align 8, !tbaa !81
  br label %494

494:                                              ; preds = %492, %489
  %495 = phi i32 [ %493, %492 ], [ 0, %489 ]
  %496 = icmp ult i32 %255, %495
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #18
  br label %498

498:                                              ; preds = %494, %497
  %499 = add i32 %255, 1
  br label %254, !llvm.loop !124

500:                                              ; preds = %240, %230
  %501 = tail call i32 @max_reg_num() #18
  %502 = sext i32 %501 to i64
  %503 = shl nsw i64 %502, 3
  %504 = tail call ptr @ira_allocate(i64 noundef %503) #18
  store ptr %504, ptr @allocno_last_set, align 8, !tbaa !35
  %505 = tail call i32 @max_reg_num() #18
  %506 = sext i32 %505 to i64
  %507 = shl nsw i64 %506, 2
  %508 = tail call ptr @ira_allocate(i64 noundef %507) #18
  store ptr %508, ptr @allocno_last_set_check, align 8, !tbaa !35
  %509 = tail call i32 @max_reg_num() #18
  %510 = sext i32 %509 to i64
  %511 = shl nsw i64 %510, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %508, i8 0, i64 %511, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @hard_regno_last_set_check, i8 0, i64 212, i1 false)
  store i32 0, ptr @curr_tick, align 4, !tbaa !50
  %512 = load ptr, ptr @cfun, align 8, !tbaa !35
  %513 = getelementptr inbounds %struct.function, ptr %512, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !71
  %515 = load ptr, ptr %514, align 8, !tbaa !85
  %516 = getelementptr inbounds %struct.basic_block_def, ptr %515, i64 0, i32 6
  %517 = load ptr, ptr %516, align 8, !tbaa !95
  %518 = getelementptr inbounds %struct.control_flow_graph, ptr %514, i64 0, i32 1
  %519 = load ptr, ptr %518, align 8, !tbaa !96
  %520 = icmp eq ptr %517, %519
  br i1 %520, label %531, label %521

521:                                              ; preds = %500, %521
  %522 = phi ptr [ %524, %521 ], [ %517, %500 ]
  tail call fastcc void @unify_moves(ptr noundef %522, i8 noundef zeroext 1)
  %523 = getelementptr inbounds %struct.basic_block_def, ptr %522, i64 0, i32 6
  %524 = load ptr, ptr %523, align 8, !tbaa !95
  %525 = load ptr, ptr @cfun, align 8, !tbaa !35
  %526 = getelementptr inbounds %struct.function, ptr %525, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !71
  %528 = getelementptr inbounds %struct.control_flow_graph, ptr %527, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !96
  %530 = icmp eq ptr %524, %529
  br i1 %530, label %531, label %521, !llvm.loop !125

531:                                              ; preds = %521, %500
  %532 = phi ptr [ %514, %500 ], [ %527, %521 ]
  %533 = load ptr, ptr %532, align 8, !tbaa !85
  %534 = getelementptr inbounds %struct.basic_block_def, ptr %533, i64 0, i32 6
  %535 = load ptr, ptr %534, align 8, !tbaa !95
  %536 = load ptr, ptr @cfun, align 8, !tbaa !35
  %537 = getelementptr inbounds %struct.function, ptr %536, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !71
  %539 = getelementptr inbounds %struct.control_flow_graph, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !96
  %541 = icmp eq ptr %535, %540
  br i1 %541, label %552, label %542

542:                                              ; preds = %531, %542
  %543 = phi ptr [ %545, %542 ], [ %535, %531 ]
  tail call fastcc void @unify_moves(ptr noundef %543, i8 noundef zeroext 0)
  %544 = getelementptr inbounds %struct.basic_block_def, ptr %543, i64 0, i32 6
  %545 = load ptr, ptr %544, align 8, !tbaa !95
  %546 = load ptr, ptr @cfun, align 8, !tbaa !35
  %547 = getelementptr inbounds %struct.function, ptr %546, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !71
  %549 = getelementptr inbounds %struct.control_flow_graph, ptr %548, i64 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !96
  %551 = icmp eq ptr %545, %550
  br i1 %551, label %552, label %542, !llvm.loop !126

552:                                              ; preds = %542, %531
  %553 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !50
  %554 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %553) #18
  store ptr %554, ptr @move_vec, align 8, !tbaa !35
  %555 = load ptr, ptr @cfun, align 8, !tbaa !35
  %556 = getelementptr inbounds %struct.function, ptr %555, i64 0, i32 1
  %557 = load ptr, ptr %556, align 8, !tbaa !71
  %558 = load ptr, ptr %557, align 8, !tbaa !85
  %559 = getelementptr inbounds %struct.basic_block_def, ptr %558, i64 0, i32 6
  %560 = load ptr, ptr %559, align 8, !tbaa !95
  %561 = getelementptr inbounds %struct.control_flow_graph, ptr %557, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !96
  %563 = icmp eq ptr %560, %562
  br i1 %563, label %758, label %573

564:                                              ; preds = %702
  %565 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 6
  %566 = load ptr, ptr %565, align 8, !tbaa !95
  %567 = load ptr, ptr @cfun, align 8, !tbaa !35
  %568 = getelementptr inbounds %struct.function, ptr %567, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !71
  %570 = getelementptr inbounds %struct.control_flow_graph, ptr %569, i64 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !96
  %572 = icmp eq ptr %566, %571
  br i1 %572, label %758, label %573, !llvm.loop !127

573:                                              ; preds = %552, %564
  %574 = phi ptr [ %566, %564 ], [ %560, %552 ]
  %575 = load ptr, ptr @at_bb_start, align 8, !tbaa !35
  %576 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 9
  %577 = load i32, ptr %576, align 8, !tbaa !86
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds ptr, ptr %575, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !35
  %581 = icmp eq ptr %580, null
  br i1 %581, label %646, label %582

582:                                              ; preds = %573
  %583 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %580)
  %584 = load ptr, ptr @at_bb_start, align 8, !tbaa !35
  %585 = load i32, ptr %576, align 8, !tbaa !86
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds ptr, ptr %584, i64 %586
  store ptr %583, ptr %587, align 8, !tbaa !35
  %588 = load i32, ptr @optimize_size, align 4, !tbaa !50
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %608

590:                                              ; preds = %582
  %591 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %601, label %593

593:                                              ; preds = %590
  %594 = load ptr, ptr @cfun, align 8, !tbaa !35
  %595 = getelementptr inbounds %struct.function, ptr %594, i64 0, i32 1
  %596 = load ptr, ptr %595, align 8, !tbaa !71
  %597 = load ptr, ptr %596, align 8, !tbaa !85
  %598 = getelementptr inbounds %struct.basic_block_def, ptr %597, i64 0, i32 8
  %599 = load i64, ptr %598, align 8, !tbaa !128
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %608, label %601

601:                                              ; preds = %593, %590
  %602 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 11
  %603 = load i32, ptr %602, align 8, !tbaa !129
  %604 = add i32 %603, 9
  %605 = icmp ult i32 %604, 19
  br i1 %605, label %608, label %606

606:                                              ; preds = %601
  %607 = sdiv i32 %603, 10
  br label %608

608:                                              ; preds = %593, %606, %601, %582
  %609 = phi i32 [ 1000, %582 ], [ %607, %606 ], [ 1, %601 ], [ 1000, %593 ]
  %610 = tail call fastcc ptr @emit_move_list(ptr noundef %583, i32 noundef %609)
  %611 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 7
  %612 = load ptr, ptr %611, align 8, !tbaa !46
  %613 = load ptr, ptr %612, align 8, !tbaa !130
  %614 = load i32, ptr %613, align 8
  %615 = and i32 %614, 65535
  %616 = icmp eq i32 %615, 12
  br i1 %616, label %617, label %620

617:                                              ; preds = %608
  %618 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1, i32 0, i32 0, i64 2
  %619 = load ptr, ptr %618, align 8, !tbaa !46
  br label %620

620:                                              ; preds = %617, %608
  %621 = phi ptr [ %619, %617 ], [ %613, %608 ]
  %622 = load i32, ptr %621, align 8
  %623 = and i32 %622, 65535
  %624 = icmp eq i32 %623, 13
  br i1 %624, label %625, label %632

625:                                              ; preds = %620
  %626 = getelementptr inbounds %struct.rtx_def, ptr %621, i64 1
  %627 = load i32, ptr %626, align 8, !tbaa !46
  %628 = icmp eq i32 %627, 10
  br i1 %628, label %629, label %632

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.rtx_def, ptr %621, i64 0, i32 1, i32 0, i32 0, i64 2
  %631 = load ptr, ptr %630, align 8, !tbaa !46
  br label %632

632:                                              ; preds = %629, %625, %620
  %633 = phi ptr [ %631, %629 ], [ %621, %625 ], [ %621, %620 ]
  %634 = icmp eq ptr %633, %613
  br i1 %634, label %635, label %637

635:                                              ; preds = %632
  %636 = tail call ptr @emit_insn_before(ptr noundef %610, ptr noundef %633) #18
  br label %646

637:                                              ; preds = %632
  %638 = icmp eq ptr %633, null
  br i1 %638, label %643, label %639

639:                                              ; preds = %637
  %640 = getelementptr inbounds %struct.rtx_def, ptr %633, i64 0, i32 1, i32 0, i32 0, i64 1
  %641 = load ptr, ptr %640, align 8, !tbaa !46
  %642 = tail call ptr @emit_insn_after(ptr noundef %610, ptr noundef %641) #18
  br label %646

643:                                              ; preds = %637
  %644 = tail call ptr @get_last_insn() #18
  %645 = tail call ptr @emit_insn_after(ptr noundef %610, ptr noundef %644) #18
  br label %646

646:                                              ; preds = %643, %639, %635, %573
  %647 = load ptr, ptr @at_bb_end, align 8, !tbaa !35
  %648 = load i32, ptr %576, align 8, !tbaa !86
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds ptr, ptr %647, i64 %649
  %651 = load ptr, ptr %650, align 8, !tbaa !35
  %652 = icmp eq ptr %651, null
  br i1 %652, label %687, label %653

653:                                              ; preds = %646
  %654 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %651)
  %655 = load ptr, ptr @at_bb_end, align 8, !tbaa !35
  %656 = load i32, ptr %576, align 8, !tbaa !86
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds ptr, ptr %655, i64 %657
  store ptr %654, ptr %658, align 8, !tbaa !35
  %659 = load i32, ptr @optimize_size, align 4, !tbaa !50
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %679

661:                                              ; preds = %653
  %662 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %672, label %664

664:                                              ; preds = %661
  %665 = load ptr, ptr @cfun, align 8, !tbaa !35
  %666 = getelementptr inbounds %struct.function, ptr %665, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !71
  %668 = load ptr, ptr %667, align 8, !tbaa !85
  %669 = getelementptr inbounds %struct.basic_block_def, ptr %668, i64 0, i32 8
  %670 = load i64, ptr %669, align 8, !tbaa !128
  %671 = icmp eq i64 %670, 0
  br i1 %671, label %679, label %672

672:                                              ; preds = %664, %661
  %673 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 11
  %674 = load i32, ptr %673, align 8, !tbaa !129
  %675 = add i32 %674, 9
  %676 = icmp ult i32 %675, 19
  br i1 %676, label %679, label %677

677:                                              ; preds = %672
  %678 = sdiv i32 %674, 10
  br label %679

679:                                              ; preds = %664, %677, %672, %653
  %680 = phi i32 [ 1000, %653 ], [ %678, %677 ], [ 1, %672 ], [ 1000, %664 ]
  %681 = tail call fastcc ptr @emit_move_list(ptr noundef %654, i32 noundef %680)
  %682 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 7
  %683 = load ptr, ptr %682, align 8, !tbaa !46
  %684 = getelementptr inbounds %struct.rtl_bb_info, ptr %683, i64 0, i32 1
  %685 = load ptr, ptr %684, align 8, !tbaa !132
  %686 = tail call ptr @emit_insn_after(ptr noundef %681, ptr noundef %685) #18
  br label %687

687:                                              ; preds = %679, %646
  %688 = getelementptr inbounds %struct.basic_block_def, ptr %574, i64 0, i32 1
  br label %689

689:                                              ; preds = %756, %687
  %690 = phi i32 [ 0, %687 ], [ %757, %756 ]
  %691 = load ptr, ptr %688, align 8, !tbaa !35
  %692 = icmp eq ptr %691, null
  br i1 %692, label %695, label %693

693:                                              ; preds = %689
  %694 = load i32, ptr %691, align 8, !tbaa !81
  br label %695

695:                                              ; preds = %693, %689
  %696 = phi i32 [ %694, %693 ], [ 0, %689 ]
  %697 = icmp eq i32 %696, %690
  br i1 %697, label %702, label %698

698:                                              ; preds = %695
  %699 = zext i32 %690 to i64
  %700 = getelementptr inbounds %struct.VEC_edge_base, ptr %691, i64 0, i32 2, i64 %699
  %701 = load ptr, ptr %700, align 8, !tbaa !35
  br label %702

702:                                              ; preds = %698, %695
  %703 = phi ptr [ %701, %698 ], [ null, %695 ]
  br i1 %697, label %564, label %704

704:                                              ; preds = %702
  %705 = getelementptr inbounds %struct.edge_def, ptr %703, i64 0, i32 3
  %706 = load ptr, ptr %705, align 8, !tbaa !99
  %707 = icmp eq ptr %706, null
  br i1 %707, label %747, label %708

708:                                              ; preds = %704
  %709 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %706)
  store ptr %709, ptr %705, align 8, !tbaa !99
  %710 = load i32, ptr @optimize_size, align 4, !tbaa !50
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %735

712:                                              ; preds = %708
  %713 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %723, label %715

715:                                              ; preds = %712
  %716 = load ptr, ptr @cfun, align 8, !tbaa !35
  %717 = getelementptr inbounds %struct.function, ptr %716, i64 0, i32 1
  %718 = load ptr, ptr %717, align 8, !tbaa !71
  %719 = load ptr, ptr %718, align 8, !tbaa !85
  %720 = getelementptr inbounds %struct.basic_block_def, ptr %719, i64 0, i32 8
  %721 = load i64, ptr %720, align 8, !tbaa !128
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %735, label %723

723:                                              ; preds = %715, %712
  %724 = load ptr, ptr %703, align 8, !tbaa !83
  %725 = getelementptr inbounds %struct.basic_block_def, ptr %724, i64 0, i32 11
  %726 = load i32, ptr %725, align 8, !tbaa !129
  %727 = getelementptr inbounds %struct.edge_def, ptr %703, i64 0, i32 8
  %728 = load i32, ptr %727, align 4, !tbaa !133
  %729 = mul nsw i32 %728, %726
  %730 = add i32 %729, 104999
  %731 = icmp ult i32 %730, 199999
  br i1 %731, label %735, label %732

732:                                              ; preds = %723
  %733 = add nsw i32 %729, 5000
  %734 = sdiv i32 %733, 100000
  br label %735

735:                                              ; preds = %715, %732, %723, %708
  %736 = phi i32 [ 1000, %708 ], [ %734, %732 ], [ 1, %723 ], [ 1000, %715 ]
  %737 = tail call fastcc ptr @emit_move_list(ptr noundef %709, i32 noundef %736)
  tail call void @insert_insn_on_edge(ptr noundef %737, ptr noundef %703) #18
  %738 = load ptr, ptr %703, align 8, !tbaa !83
  %739 = getelementptr inbounds %struct.basic_block_def, ptr %738, i64 0, i32 6
  %740 = load ptr, ptr %739, align 8, !tbaa !95
  %741 = getelementptr inbounds %struct.edge_def, ptr %703, i64 0, i32 1
  %742 = load ptr, ptr %741, align 8, !tbaa !98
  %743 = icmp eq ptr %740, %742
  br i1 %743, label %747, label %744

744:                                              ; preds = %735
  %745 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !50
  %746 = add nsw i32 %745, 1
  store i32 %746, ptr @ira_additional_jumps_num, align 4, !tbaa !50
  br label %747

747:                                              ; preds = %744, %735, %704
  %748 = load ptr, ptr %688, align 8, !tbaa !35
  %749 = icmp eq ptr %748, null
  br i1 %749, label %752, label %750

750:                                              ; preds = %747
  %751 = load i32, ptr %748, align 8, !tbaa !81
  br label %752

752:                                              ; preds = %750, %747
  %753 = phi i32 [ %751, %750 ], [ 0, %747 ]
  %754 = icmp ult i32 %690, %753
  br i1 %754, label %756, label %755

755:                                              ; preds = %752
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #18
  br label %756

756:                                              ; preds = %755, %752
  %757 = add i32 %690, 1
  br label %689, !llvm.loop !134

758:                                              ; preds = %564, %552
  %759 = tail call ptr @ira_allocate_bitmap() #18
  %760 = load ptr, ptr @cfun, align 8, !tbaa !35
  %761 = getelementptr inbounds %struct.function, ptr %760, i64 0, i32 1
  %762 = load ptr, ptr %761, align 8, !tbaa !71
  %763 = load ptr, ptr %762, align 8, !tbaa !85
  %764 = getelementptr inbounds %struct.basic_block_def, ptr %763, i64 0, i32 6
  %765 = load ptr, ptr %764, align 8, !tbaa !95
  %766 = getelementptr inbounds %struct.control_flow_graph, ptr %762, i64 0, i32 1
  %767 = load ptr, ptr %766, align 8, !tbaa !96
  %768 = icmp eq ptr %765, %767
  br i1 %768, label %947, label %778

769:                                              ; preds = %881
  %770 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 6
  %771 = load ptr, ptr %770, align 8, !tbaa !95
  %772 = load ptr, ptr @cfun, align 8, !tbaa !35
  %773 = getelementptr inbounds %struct.function, ptr %772, i64 0, i32 1
  %774 = load ptr, ptr %773, align 8, !tbaa !71
  %775 = getelementptr inbounds %struct.control_flow_graph, ptr %774, i64 0, i32 1
  %776 = load ptr, ptr %775, align 8, !tbaa !96
  %777 = icmp eq ptr %771, %776
  br i1 %777, label %947, label %778, !llvm.loop !135

778:                                              ; preds = %758, %769
  %779 = phi ptr [ %771, %769 ], [ %765, %758 ]
  %780 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !35
  %781 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 9
  %782 = load i32, ptr %781, align 8, !tbaa !86
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %780, i64 %783, i32 6
  %785 = load ptr, ptr %784, align 8, !tbaa !88
  %786 = load ptr, ptr @df, align 8, !tbaa !35
  %787 = getelementptr inbounds %struct.df, ptr %786, i64 0, i32 1, i64 1
  %788 = load ptr, ptr %787, align 8, !tbaa !35
  %789 = getelementptr inbounds %struct.dataflow, ptr %788, i64 0, i32 2
  %790 = load i32, ptr %789, align 8, !tbaa !100
  %791 = icmp ugt i32 %790, %782
  tail call void @llvm.assume(i1 %791)
  %792 = getelementptr inbounds %struct.dataflow, ptr %788, i64 0, i32 1
  %793 = load ptr, ptr %792, align 8, !tbaa !102
  %794 = zext i32 %782 to i64
  %795 = getelementptr inbounds ptr, ptr %793, i64 %794
  %796 = load ptr, ptr %795, align 8, !tbaa !35
  %797 = getelementptr inbounds %struct.df_lr_bb_info, ptr %796, i64 0, i32 2
  %798 = load ptr, ptr %797, align 8, !tbaa !103
  tail call void @bitmap_copy(ptr noundef %759, ptr noundef %798) #18
  %799 = load ptr, ptr @at_bb_start, align 8, !tbaa !35
  %800 = load i32, ptr %781, align 8, !tbaa !86
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds ptr, ptr %799, i64 %801
  %803 = load ptr, ptr %802, align 8, !tbaa !35
  %804 = load i32, ptr @optimize_size, align 4, !tbaa !50
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %824

806:                                              ; preds = %778
  %807 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %817, label %809

809:                                              ; preds = %806
  %810 = load ptr, ptr @cfun, align 8, !tbaa !35
  %811 = getelementptr inbounds %struct.function, ptr %810, i64 0, i32 1
  %812 = load ptr, ptr %811, align 8, !tbaa !71
  %813 = load ptr, ptr %812, align 8, !tbaa !85
  %814 = getelementptr inbounds %struct.basic_block_def, ptr %813, i64 0, i32 8
  %815 = load i64, ptr %814, align 8, !tbaa !128
  %816 = icmp eq i64 %815, 0
  br i1 %816, label %824, label %817

817:                                              ; preds = %809, %806
  %818 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 11
  %819 = load i32, ptr %818, align 8, !tbaa !129
  %820 = add i32 %819, 9
  %821 = icmp ult i32 %820, 19
  br i1 %821, label %824, label %822

822:                                              ; preds = %817
  %823 = sdiv i32 %819, 10
  br label %824

824:                                              ; preds = %809, %822, %817, %778
  %825 = phi i32 [ 1000, %778 ], [ %823, %822 ], [ 1, %817 ], [ 1000, %809 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %803, ptr noundef %785, ptr noundef %759, i32 noundef %825)
  %826 = load i32, ptr %781, align 8, !tbaa !86
  %827 = load ptr, ptr @df, align 8, !tbaa !35
  %828 = getelementptr inbounds %struct.df, ptr %827, i64 0, i32 1, i64 1
  %829 = load ptr, ptr %828, align 8, !tbaa !35
  %830 = getelementptr inbounds %struct.dataflow, ptr %829, i64 0, i32 2
  %831 = load i32, ptr %830, align 8, !tbaa !100
  %832 = icmp ugt i32 %831, %826
  tail call void @llvm.assume(i1 %832)
  %833 = getelementptr inbounds %struct.dataflow, ptr %829, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !102
  %835 = zext i32 %826 to i64
  %836 = getelementptr inbounds ptr, ptr %834, i64 %835
  %837 = load ptr, ptr %836, align 8, !tbaa !35
  %838 = getelementptr inbounds %struct.df_lr_bb_info, ptr %837, i64 0, i32 3
  %839 = load ptr, ptr %838, align 8, !tbaa !114
  tail call void @bitmap_copy(ptr noundef %759, ptr noundef %839) #18
  %840 = load ptr, ptr @at_bb_end, align 8, !tbaa !35
  %841 = load i32, ptr %781, align 8, !tbaa !86
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds ptr, ptr %840, i64 %842
  %844 = load ptr, ptr %843, align 8, !tbaa !35
  %845 = load i32, ptr @optimize_size, align 4, !tbaa !50
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %865

847:                                              ; preds = %824
  %848 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %858, label %850

850:                                              ; preds = %847
  %851 = load ptr, ptr @cfun, align 8, !tbaa !35
  %852 = getelementptr inbounds %struct.function, ptr %851, i64 0, i32 1
  %853 = load ptr, ptr %852, align 8, !tbaa !71
  %854 = load ptr, ptr %853, align 8, !tbaa !85
  %855 = getelementptr inbounds %struct.basic_block_def, ptr %854, i64 0, i32 8
  %856 = load i64, ptr %855, align 8, !tbaa !128
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %865, label %858

858:                                              ; preds = %850, %847
  %859 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 11
  %860 = load i32, ptr %859, align 8, !tbaa !129
  %861 = add i32 %860, 9
  %862 = icmp ult i32 %861, 19
  br i1 %862, label %865, label %863

863:                                              ; preds = %858
  %864 = sdiv i32 %860, 10
  br label %865

865:                                              ; preds = %850, %863, %858, %824
  %866 = phi i32 [ 1000, %824 ], [ %864, %863 ], [ 1, %858 ], [ 1000, %850 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %844, ptr noundef %785, ptr noundef %759, i32 noundef %866)
  %867 = getelementptr inbounds %struct.basic_block_def, ptr %779, i64 0, i32 1
  br label %868

868:                                              ; preds = %945, %865
  %869 = phi i32 [ 0, %865 ], [ %946, %945 ]
  %870 = load ptr, ptr %867, align 8, !tbaa !35
  %871 = icmp eq ptr %870, null
  br i1 %871, label %874, label %872

872:                                              ; preds = %868
  %873 = load i32, ptr %870, align 8, !tbaa !81
  br label %874

874:                                              ; preds = %872, %868
  %875 = phi i32 [ %873, %872 ], [ 0, %868 ]
  %876 = icmp eq i32 %875, %869
  br i1 %876, label %881, label %877

877:                                              ; preds = %874
  %878 = zext i32 %869 to i64
  %879 = getelementptr inbounds %struct.VEC_edge_base, ptr %870, i64 0, i32 2, i64 %878
  %880 = load ptr, ptr %879, align 8, !tbaa !35
  br label %881

881:                                              ; preds = %877, %874
  %882 = phi ptr [ %880, %877 ], [ null, %874 ]
  br i1 %876, label %769, label %883

883:                                              ; preds = %881
  %884 = getelementptr inbounds %struct.edge_def, ptr %882, i64 0, i32 1
  %885 = load ptr, ptr %884, align 8, !tbaa !98
  %886 = getelementptr inbounds %struct.basic_block_def, ptr %885, i64 0, i32 9
  %887 = load i32, ptr %886, align 8, !tbaa !86
  %888 = load ptr, ptr @df, align 8, !tbaa !35
  %889 = getelementptr inbounds %struct.df, ptr %888, i64 0, i32 1, i64 1
  %890 = load ptr, ptr %889, align 8, !tbaa !35
  %891 = getelementptr inbounds %struct.dataflow, ptr %890, i64 0, i32 2
  %892 = load i32, ptr %891, align 8, !tbaa !100
  %893 = icmp ugt i32 %892, %887
  tail call void @llvm.assume(i1 %893)
  %894 = getelementptr inbounds %struct.dataflow, ptr %890, i64 0, i32 1
  %895 = load ptr, ptr %894, align 8, !tbaa !102
  %896 = zext i32 %887 to i64
  %897 = getelementptr inbounds ptr, ptr %895, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !35
  %899 = getelementptr inbounds %struct.df_lr_bb_info, ptr %898, i64 0, i32 2
  %900 = load ptr, ptr %899, align 8, !tbaa !103
  %901 = load i32, ptr %781, align 8, !tbaa !86
  %902 = icmp ugt i32 %892, %901
  tail call void @llvm.assume(i1 %902)
  %903 = zext i32 %901 to i64
  %904 = getelementptr inbounds ptr, ptr %895, i64 %903
  %905 = load ptr, ptr %904, align 8, !tbaa !35
  %906 = getelementptr inbounds %struct.df_lr_bb_info, ptr %905, i64 0, i32 3
  %907 = load ptr, ptr %906, align 8, !tbaa !114
  tail call void @bitmap_and(ptr noundef %759, ptr noundef %900, ptr noundef %907) #18
  %908 = getelementptr inbounds %struct.edge_def, ptr %882, i64 0, i32 3
  %909 = load ptr, ptr %908, align 8, !tbaa !99
  %910 = load i32, ptr @optimize_size, align 4, !tbaa !50
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %935

912:                                              ; preds = %883
  %913 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %923, label %915

915:                                              ; preds = %912
  %916 = load ptr, ptr @cfun, align 8, !tbaa !35
  %917 = getelementptr inbounds %struct.function, ptr %916, i64 0, i32 1
  %918 = load ptr, ptr %917, align 8, !tbaa !71
  %919 = load ptr, ptr %918, align 8, !tbaa !85
  %920 = getelementptr inbounds %struct.basic_block_def, ptr %919, i64 0, i32 8
  %921 = load i64, ptr %920, align 8, !tbaa !128
  %922 = icmp eq i64 %921, 0
  br i1 %922, label %935, label %923

923:                                              ; preds = %915, %912
  %924 = load ptr, ptr %882, align 8, !tbaa !83
  %925 = getelementptr inbounds %struct.basic_block_def, ptr %924, i64 0, i32 11
  %926 = load i32, ptr %925, align 8, !tbaa !129
  %927 = getelementptr inbounds %struct.edge_def, ptr %882, i64 0, i32 8
  %928 = load i32, ptr %927, align 4, !tbaa !133
  %929 = mul nsw i32 %928, %926
  %930 = add i32 %929, 104999
  %931 = icmp ult i32 %930, 199999
  br i1 %931, label %935, label %932

932:                                              ; preds = %923
  %933 = add nsw i32 %929, 5000
  %934 = sdiv i32 %933, 100000
  br label %935

935:                                              ; preds = %915, %932, %923, %883
  %936 = phi i32 [ 1000, %883 ], [ %934, %932 ], [ 1, %923 ], [ 1000, %915 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %909, ptr noundef %785, ptr noundef %759, i32 noundef %936)
  %937 = load ptr, ptr %867, align 8, !tbaa !35
  %938 = icmp eq ptr %937, null
  br i1 %938, label %941, label %939

939:                                              ; preds = %935
  %940 = load i32, ptr %937, align 8, !tbaa !81
  br label %941

941:                                              ; preds = %939, %935
  %942 = phi i32 [ %940, %939 ], [ 0, %935 ]
  %943 = icmp ult i32 %869, %942
  br i1 %943, label %945, label %944

944:                                              ; preds = %941
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #18
  br label %945

945:                                              ; preds = %944, %941
  %946 = add i32 %869, 1
  br label %868, !llvm.loop !136

947:                                              ; preds = %769, %758
  tail call void @ira_free_bitmap(ptr noundef %759) #18
  %948 = load ptr, ptr @cfun, align 8, !tbaa !35
  %949 = getelementptr inbounds %struct.function, ptr %948, i64 0, i32 1
  %950 = load ptr, ptr %949, align 8, !tbaa !71
  %951 = load ptr, ptr %950, align 8, !tbaa !85
  %952 = getelementptr inbounds %struct.basic_block_def, ptr %951, i64 0, i32 6
  %953 = load ptr, ptr %952, align 8, !tbaa !95
  %954 = getelementptr inbounds %struct.control_flow_graph, ptr %950, i64 0, i32 1
  %955 = load ptr, ptr %954, align 8, !tbaa !96
  %956 = icmp eq ptr %953, %955
  br i1 %956, label %1044, label %966

957:                                              ; preds = %1017
  %958 = getelementptr inbounds %struct.basic_block_def, ptr %967, i64 0, i32 6
  %959 = load ptr, ptr %958, align 8, !tbaa !95
  %960 = load ptr, ptr @cfun, align 8, !tbaa !35
  %961 = getelementptr inbounds %struct.function, ptr %960, i64 0, i32 1
  %962 = load ptr, ptr %961, align 8, !tbaa !71
  %963 = getelementptr inbounds %struct.control_flow_graph, ptr %962, i64 0, i32 1
  %964 = load ptr, ptr %963, align 8, !tbaa !96
  %965 = icmp eq ptr %959, %964
  br i1 %965, label %1044, label %966, !llvm.loop !137

966:                                              ; preds = %947, %957
  %967 = phi ptr [ %959, %957 ], [ %953, %947 ]
  %968 = load ptr, ptr @at_bb_start, align 8, !tbaa !35
  %969 = getelementptr inbounds %struct.basic_block_def, ptr %967, i64 0, i32 9
  %970 = load i32, ptr %969, align 8, !tbaa !86
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds ptr, ptr %968, i64 %971
  %973 = load ptr, ptr %972, align 8, !tbaa !35
  %974 = icmp eq ptr %973, null
  br i1 %974, label %985, label %975

975:                                              ; preds = %966, %983
  %976 = phi ptr [ %978, %983 ], [ %973, %966 ]
  %977 = getelementptr inbounds %struct.move, ptr %976, i64 0, i32 2
  %978 = load ptr, ptr %977, align 8, !tbaa !60
  %979 = getelementptr inbounds %struct.move, ptr %976, i64 0, i32 5
  %980 = load ptr, ptr %979, align 8, !tbaa !119
  %981 = icmp eq ptr %980, null
  br i1 %981, label %983, label %982

982:                                              ; preds = %975
  tail call void @ira_free(ptr noundef nonnull %980) #18
  br label %983

983:                                              ; preds = %982, %975
  tail call void @ira_free(ptr noundef nonnull %976) #18
  %984 = icmp eq ptr %978, null
  br i1 %984, label %985, label %975, !llvm.loop !138

985:                                              ; preds = %983, %966
  %986 = load ptr, ptr @at_bb_end, align 8, !tbaa !35
  %987 = load i32, ptr %969, align 8, !tbaa !86
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds ptr, ptr %986, i64 %988
  %990 = load ptr, ptr %989, align 8, !tbaa !35
  %991 = icmp eq ptr %990, null
  br i1 %991, label %1002, label %992

992:                                              ; preds = %985, %1000
  %993 = phi ptr [ %995, %1000 ], [ %990, %985 ]
  %994 = getelementptr inbounds %struct.move, ptr %993, i64 0, i32 2
  %995 = load ptr, ptr %994, align 8, !tbaa !60
  %996 = getelementptr inbounds %struct.move, ptr %993, i64 0, i32 5
  %997 = load ptr, ptr %996, align 8, !tbaa !119
  %998 = icmp eq ptr %997, null
  br i1 %998, label %1000, label %999

999:                                              ; preds = %992
  tail call void @ira_free(ptr noundef nonnull %997) #18
  br label %1000

1000:                                             ; preds = %999, %992
  tail call void @ira_free(ptr noundef nonnull %993) #18
  %1001 = icmp eq ptr %995, null
  br i1 %1001, label %1002, label %992, !llvm.loop !138

1002:                                             ; preds = %1000, %985
  %1003 = getelementptr inbounds %struct.basic_block_def, ptr %967, i64 0, i32 1
  br label %1004

1004:                                             ; preds = %1042, %1002
  %1005 = phi i32 [ 0, %1002 ], [ %1043, %1042 ]
  %1006 = load ptr, ptr %1003, align 8, !tbaa !35
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1010, label %1008

1008:                                             ; preds = %1004
  %1009 = load i32, ptr %1006, align 8, !tbaa !81
  br label %1010

1010:                                             ; preds = %1008, %1004
  %1011 = phi i32 [ %1009, %1008 ], [ 0, %1004 ]
  %1012 = icmp eq i32 %1011, %1005
  br i1 %1012, label %1017, label %1013

1013:                                             ; preds = %1010
  %1014 = zext i32 %1005 to i64
  %1015 = getelementptr inbounds %struct.VEC_edge_base, ptr %1006, i64 0, i32 2, i64 %1014
  %1016 = load ptr, ptr %1015, align 8, !tbaa !35
  br label %1017

1017:                                             ; preds = %1010, %1013
  %1018 = phi ptr [ %1016, %1013 ], [ null, %1010 ]
  br i1 %1012, label %957, label %1019

1019:                                             ; preds = %1017
  %1020 = getelementptr inbounds %struct.edge_def, ptr %1018, i64 0, i32 3
  %1021 = load ptr, ptr %1020, align 8, !tbaa !99
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1033, label %1023

1023:                                             ; preds = %1019, %1031
  %1024 = phi ptr [ %1026, %1031 ], [ %1021, %1019 ]
  %1025 = getelementptr inbounds %struct.move, ptr %1024, i64 0, i32 2
  %1026 = load ptr, ptr %1025, align 8, !tbaa !60
  %1027 = getelementptr inbounds %struct.move, ptr %1024, i64 0, i32 5
  %1028 = load ptr, ptr %1027, align 8, !tbaa !119
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1031, label %1030

1030:                                             ; preds = %1023
  tail call void @ira_free(ptr noundef nonnull %1028) #18
  br label %1031

1031:                                             ; preds = %1030, %1023
  tail call void @ira_free(ptr noundef nonnull %1024) #18
  %1032 = icmp eq ptr %1026, null
  br i1 %1032, label %1033, label %1023, !llvm.loop !138

1033:                                             ; preds = %1031, %1019
  store ptr null, ptr %1020, align 8, !tbaa !99
  %1034 = load ptr, ptr %1003, align 8, !tbaa !35
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1038, label %1036

1036:                                             ; preds = %1033
  %1037 = load i32, ptr %1034, align 8, !tbaa !81
  br label %1038

1038:                                             ; preds = %1036, %1033
  %1039 = phi i32 [ %1037, %1036 ], [ 0, %1033 ]
  %1040 = icmp ult i32 %1005, %1039
  br i1 %1040, label %1042, label %1041

1041:                                             ; preds = %1038
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #18
  br label %1042

1042:                                             ; preds = %1038, %1041
  %1043 = add i32 %1005, 1
  br label %1004, !llvm.loop !139

1044:                                             ; preds = %957, %947
  %1045 = load ptr, ptr @move_vec, align 8, !tbaa !35
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1048, label %1047

1047:                                             ; preds = %1044
  tail call void @free(ptr noundef %1045)
  br label %1048

1048:                                             ; preds = %1044, %1047
  store ptr null, ptr @move_vec, align 8, !tbaa !35
  %1049 = load ptr, ptr @allocno_last_set_check, align 8, !tbaa !35
  tail call void @ira_free(ptr noundef %1049) #18
  %1050 = load ptr, ptr @allocno_last_set, align 8, !tbaa !35
  tail call void @ira_free(ptr noundef %1050) #18
  tail call void @commit_edge_insertions() #18
  %1051 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1052 = getelementptr inbounds %struct.function, ptr %1051, i64 0, i32 1
  %1053 = load ptr, ptr %1052, align 8, !tbaa !71
  %1054 = load ptr, ptr %1053, align 8, !tbaa !85
  %1055 = getelementptr inbounds %struct.basic_block_def, ptr %1054, i64 0, i32 6
  %1056 = load ptr, ptr %1055, align 8, !tbaa !95
  %1057 = getelementptr inbounds %struct.control_flow_graph, ptr %1053, i64 0, i32 1
  %1058 = load ptr, ptr %1057, align 8, !tbaa !96
  %1059 = icmp eq ptr %1056, %1058
  br i1 %1059, label %1100, label %1060

1060:                                             ; preds = %1048, %1091
  %1061 = phi ptr [ %1093, %1091 ], [ %1056, %1048 ]
  %1062 = getelementptr inbounds %struct.basic_block_def, ptr %1061, i64 0, i32 7
  %1063 = load ptr, ptr %1062, align 8, !tbaa !46
  %1064 = getelementptr inbounds %struct.rtl_bb_info, ptr %1063, i64 0, i32 1
  %1065 = load ptr, ptr %1064, align 8, !tbaa !46
  %1066 = icmp eq ptr %1065, null
  br i1 %1066, label %1091, label %1067

1067:                                             ; preds = %1060, %1087
  %1068 = phi ptr [ %1089, %1087 ], [ %1065, %1060 ]
  %1069 = load ptr, ptr %1062, align 8, !tbaa !46
  %1070 = load ptr, ptr %1069, align 8, !tbaa !130
  %1071 = getelementptr inbounds %struct.rtx_def, ptr %1070, i64 0, i32 1, i32 0, i32 0, i64 1
  %1072 = load ptr, ptr %1071, align 8, !tbaa !46
  %1073 = icmp eq ptr %1068, %1072
  br i1 %1073, label %1091, label %1074

1074:                                             ; preds = %1067
  %1075 = load i32, ptr %1068, align 8
  %1076 = and i32 %1075, 65535
  %1077 = add nsw i32 %1076, -7
  %1078 = icmp ult i32 %1077, 4
  br i1 %1078, label %1079, label %1087

1079:                                             ; preds = %1074
  %1080 = getelementptr inbounds %struct.rtx_def, ptr %1068, i64 1, i32 1
  %1081 = load i32, ptr %1080, align 8, !tbaa !46
  %1082 = icmp slt i32 %1081, 0
  br i1 %1082, label %1083, label %1087

1083:                                             ; preds = %1079
  %1084 = getelementptr inbounds %struct.rtx_def, ptr %1068, i64 1
  %1085 = load ptr, ptr %1084, align 8, !tbaa !46
  %1086 = tail call i32 @recog(ptr noundef %1085, ptr noundef nonnull %1068, ptr noundef null) #18
  store i32 %1086, ptr %1080, align 8, !tbaa !46
  br label %1087

1087:                                             ; preds = %1083, %1079, %1074
  %1088 = getelementptr inbounds %struct.rtx_def, ptr %1068, i64 0, i32 1, i32 0, i32 0, i64 1
  %1089 = load ptr, ptr %1088, align 8, !tbaa !46
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1091, label %1067, !llvm.loop !140

1091:                                             ; preds = %1087, %1067, %1060
  %1092 = getelementptr inbounds %struct.basic_block_def, ptr %1061, i64 0, i32 6
  %1093 = load ptr, ptr %1092, align 8, !tbaa !95
  %1094 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1095 = getelementptr inbounds %struct.function, ptr %1094, i64 0, i32 1
  %1096 = load ptr, ptr %1095, align 8, !tbaa !71
  %1097 = getelementptr inbounds %struct.control_flow_graph, ptr %1096, i64 0, i32 1
  %1098 = load ptr, ptr %1097, align 8, !tbaa !96
  %1099 = icmp eq ptr %1093, %1098
  br i1 %1099, label %1100, label %1060, !llvm.loop !141

1100:                                             ; preds = %1091, %1048
  %1101 = load ptr, ptr @at_bb_end, align 8, !tbaa !35
  tail call void @ira_free(ptr noundef %1101) #18
  %1102 = load ptr, ptr @at_bb_start, align 8, !tbaa !35
  tail call void @ira_free(ptr noundef %1102) #18
  br label %1103

1103:                                             ; preds = %45, %1100
  ret void
}

declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare ptr @ira_allocate_bitmap() local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @change_loop(ptr noundef readonly %0) #12 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !35
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %210, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  store ptr %11, ptr %2, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %320, label %13

13:                                               ; preds = %8, %34
  %14 = phi ptr [ %37, %34 ], [ %11, %8 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %14, %21
  br i1 %22, label %320, label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %14, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = call fastcc zeroext i8 @change_regs(ptr noundef nonnull %2), !range !142
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 8, !tbaa !35
  %33 = tail call zeroext i8 @df_insn_rescan(ptr noundef %32) #18
  tail call void @df_notes_rescan(ptr noundef %32) #18
  br label %34

34:                                               ; preds = %23, %28, %31
  %35 = load ptr, ptr %2, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  store ptr %37, ptr %2, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %320, label %13, !llvm.loop !143

39:                                               ; preds = %5
  %40 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %41 = icmp sgt i32 %40, 3
  %42 = load ptr, ptr @ira_dump_file, align 8
  %43 = icmp ne ptr %42, null
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !144
  %48 = load i32, ptr %47, align 8, !tbaa !145
  %49 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !149
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !86
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %42, ptr noundef nonnull @.str.2, i32 noundef %48, i32 noundef %52)
  br label %54

54:                                               ; preds = %45, %39
  %55 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !78
  %60 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %55, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !150
  %62 = load ptr, ptr %61, align 8, !tbaa !105
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @bitmap_zero_bits, ptr %62
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !107
  %67 = shl i32 %66, 7
  %68 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 3, i64 0
  %69 = load i64, ptr %68, align 8, !tbaa !109
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = or disjoint i32 %67, %71
  br label %73

73:                                               ; preds = %207, %54
  %74 = phi i64 [ %69, %54 ], [ %208, %207 ]
  %75 = phi i32 [ 0, %54 ], [ %130, %207 ]
  %76 = phi ptr [ %64, %54 ], [ %131, %207 ]
  %77 = phi i32 [ %72, %54 ], [ %209, %207 ]
  %78 = icmp eq i64 %74, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %107, %73
  %80 = phi i64 [ %74, %73 ], [ %112, %107 ]
  %81 = phi i32 [ %75, %73 ], [ %108, %107 ]
  %82 = phi ptr [ %76, %73 ], [ %99, %107 ]
  %83 = phi i32 [ %77, %73 ], [ %109, %107 ]
  %84 = and i64 %80, 1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %79, %86
  %87 = phi i32 [ %90, %86 ], [ %83, %79 ]
  %88 = phi i64 [ %89, %86 ], [ %80, %79 ]
  %89 = lshr exact i64 %88, 1
  %90 = add i32 %87, 1
  %91 = and i64 %88, 2
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %86, label %128, !llvm.loop !110

93:                                               ; preds = %73
  %94 = add i32 %77, 63
  %95 = and i32 %94, -64
  %96 = add i32 %75, 1
  br label %97

97:                                               ; preds = %124, %93
  %98 = phi i64 [ %74, %93 ], [ %119, %124 ]
  %99 = phi ptr [ %76, %93 ], [ %122, %124 ]
  %100 = phi i32 [ %95, %93 ], [ %127, %124 ]
  %101 = phi i32 [ %96, %93 ], [ 0, %124 ]
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %118, label %103

103:                                              ; preds = %97
  %104 = add i32 %100, 128
  %105 = shl i32 %101, 6
  %106 = sub i32 %104, %105
  br label %107

107:                                              ; preds = %103, %114
  %108 = phi i32 [ %116, %114 ], [ %101, %103 ]
  %109 = phi i32 [ %115, %114 ], [ %100, %103 ]
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.bitmap_element_def, ptr %99, i64 0, i32 3, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !109
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %79

114:                                              ; preds = %107
  %115 = add i32 %109, 64
  %116 = add i32 %108, 1
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %107, !llvm.loop !111

118:                                              ; preds = %114, %97
  %119 = phi i64 [ %98, %97 ], [ %112, %114 ]
  %120 = phi i32 [ %100, %97 ], [ %106, %114 ]
  %121 = phi i32 [ %101, %97 ], [ 2, %114 ]
  %122 = load ptr, ptr %99, align 8, !tbaa !112
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.bitmap_element_def, ptr %122, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !107
  %127 = shl i32 %126, 7
  br label %97, !llvm.loop !113

128:                                              ; preds = %118, %86, %79
  %129 = phi i64 [ %80, %79 ], [ %89, %86 ], [ %119, %118 ]
  %130 = phi i32 [ %81, %79 ], [ %81, %86 ], [ %121, %118 ]
  %131 = phi ptr [ %82, %79 ], [ %82, %86 ], [ %122, %118 ]
  %132 = phi i32 [ %83, %79 ], [ %90, %86 ], [ %120, %118 ]
  %133 = phi i1 [ false, %79 ], [ false, %86 ], [ true, %118 ]
  br i1 %133, label %210, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr @ira_allocnos, align 8, !tbaa !35
  %136 = zext i32 %132 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !35
  %139 = getelementptr inbounds %struct.ira_allocno, ptr %138, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !58
  %141 = getelementptr inbounds %struct.ira_allocno, ptr %138, i64 0, i32 9
  %142 = load i32, ptr %141, align 8, !tbaa !151
  %143 = sext i32 %140 to i64
  %144 = getelementptr inbounds ptr, ptr %59, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = icmp eq ptr %145, null
  br i1 %146, label %182, label %147

147:                                              ; preds = %134
  %148 = getelementptr inbounds %struct.ira_allocno, ptr %138, i64 0, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !115
  %150 = getelementptr inbounds %struct.ira_allocno, ptr %145, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !115
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %147
  %154 = icmp slt i32 %149, 0
  br i1 %154, label %207, label %155

155:                                              ; preds = %153
  %156 = zext i32 %142 to i64
  %157 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 11, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !50
  %159 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %156
  %160 = load i32, ptr %159, align 4, !tbaa !50
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %207, label %162

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.ira_allocno, ptr %138, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !152
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [87 x i64], ptr @ira_prohibited_mode_move_regs, i64 0, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !109
  %168 = zext nneg i32 %149 to i64
  %169 = shl nuw i64 1, %168
  %170 = and i64 %167, %169
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %207

172:                                              ; preds = %162
  %173 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !35
  %174 = getelementptr inbounds i8, ptr %173, i64 %143
  %175 = load i8, ptr %174, align 1, !tbaa !46
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %172
  %178 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !35
  %179 = getelementptr inbounds ptr, ptr %178, i64 %143
  %180 = load ptr, ptr %179, align 8, !tbaa !35
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %207

182:                                              ; preds = %177, %147, %134
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %138, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !68
  br i1 %146, label %193, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.ira_allocno, ptr %145, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !68
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !46
  %190 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !46
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %185, %182
  %194 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %195 = icmp sgt i32 %194, 3
  %196 = load ptr, ptr @ira_dump_file, align 8
  %197 = icmp ne ptr %196, null
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %138, i64 0, i32 3
  %201 = load i32, ptr %200, align 4, !tbaa !115
  %202 = getelementptr inbounds %struct.ira_allocno, ptr %145, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !115
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %196, ptr noundef nonnull @.str.3, i32 noundef %201, i32 noundef %203)
  br label %205

205:                                              ; preds = %199, %193
  %206 = tail call fastcc ptr @create_new_reg(ptr noundef %184)
  tail call fastcc void @set_allocno_reg(ptr noundef %138, ptr noundef %206)
  br label %207

207:                                              ; preds = %185, %205, %153, %155, %162, %172, %177
  %208 = lshr i64 %129, 1
  %209 = add i32 %132, 1
  br label %73, !llvm.loop !153

210:                                              ; preds = %128, %1
  %211 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !35
  %212 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !35
  %213 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %212, i64 0, i32 12
  %214 = load ptr, ptr %213, align 8, !tbaa !154
  %215 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %212, i64 0, i32 13
  %216 = load ptr, ptr %215, align 8, !tbaa !150
  %217 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %211, ptr noundef %214, ptr noundef %216) #18
  %218 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !35
  %219 = load ptr, ptr %218, align 8, !tbaa !105
  %220 = icmp eq ptr %219, null
  %221 = select i1 %220, ptr @bitmap_zero_bits, ptr %219
  %222 = getelementptr inbounds %struct.bitmap_element_def, ptr %221, i64 0, i32 2
  %223 = load i32, ptr %222, align 8, !tbaa !107
  %224 = shl i32 %223, 7
  %225 = getelementptr inbounds %struct.bitmap_element_def, ptr %221, i64 0, i32 3, i64 0
  %226 = load i64, ptr %225, align 8, !tbaa !109
  %227 = icmp eq i64 %226, 0
  %228 = zext i1 %227 to i32
  %229 = or disjoint i32 %224, %228
  br label %230

230:                                              ; preds = %317, %210
  %231 = phi i64 [ %226, %210 ], [ %318, %317 ]
  %232 = phi i32 [ 0, %210 ], [ %287, %317 ]
  %233 = phi ptr [ %221, %210 ], [ %288, %317 ]
  %234 = phi i32 [ %229, %210 ], [ %319, %317 ]
  %235 = icmp eq i64 %231, 0
  br i1 %235, label %250, label %236

236:                                              ; preds = %264, %230
  %237 = phi i64 [ %231, %230 ], [ %269, %264 ]
  %238 = phi i32 [ %232, %230 ], [ %265, %264 ]
  %239 = phi ptr [ %233, %230 ], [ %256, %264 ]
  %240 = phi i32 [ %234, %230 ], [ %266, %264 ]
  %241 = and i64 %237, 1
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %285

243:                                              ; preds = %236, %243
  %244 = phi i32 [ %247, %243 ], [ %240, %236 ]
  %245 = phi i64 [ %246, %243 ], [ %237, %236 ]
  %246 = lshr exact i64 %245, 1
  %247 = add i32 %244, 1
  %248 = and i64 %245, 2
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %243, label %285, !llvm.loop !110

250:                                              ; preds = %230
  %251 = add i32 %234, 63
  %252 = and i32 %251, -64
  %253 = add i32 %232, 1
  br label %254

254:                                              ; preds = %281, %250
  %255 = phi i64 [ %231, %250 ], [ %276, %281 ]
  %256 = phi ptr [ %233, %250 ], [ %279, %281 ]
  %257 = phi i32 [ %252, %250 ], [ %284, %281 ]
  %258 = phi i32 [ %253, %250 ], [ 0, %281 ]
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %275, label %260

260:                                              ; preds = %254
  %261 = add i32 %257, 128
  %262 = shl i32 %258, 6
  %263 = sub i32 %261, %262
  br label %264

264:                                              ; preds = %260, %271
  %265 = phi i32 [ %273, %271 ], [ %258, %260 ]
  %266 = phi i32 [ %272, %271 ], [ %257, %260 ]
  %267 = zext i32 %265 to i64
  %268 = getelementptr inbounds %struct.bitmap_element_def, ptr %256, i64 0, i32 3, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !109
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %236

271:                                              ; preds = %264
  %272 = add i32 %266, 64
  %273 = add i32 %265, 1
  %274 = icmp eq i32 %273, 2
  br i1 %274, label %275, label %264, !llvm.loop !111

275:                                              ; preds = %271, %254
  %276 = phi i64 [ %255, %254 ], [ %269, %271 ]
  %277 = phi i32 [ %257, %254 ], [ %263, %271 ]
  %278 = phi i32 [ %258, %254 ], [ 2, %271 ]
  %279 = load ptr, ptr %256, align 8, !tbaa !112
  %280 = icmp eq ptr %279, null
  br i1 %280, label %285, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.bitmap_element_def, ptr %279, i64 0, i32 2
  %283 = load i32, ptr %282, align 8, !tbaa !107
  %284 = shl i32 %283, 7
  br label %254, !llvm.loop !113

285:                                              ; preds = %275, %243, %236
  %286 = phi i64 [ %237, %236 ], [ %246, %243 ], [ %276, %275 ]
  %287 = phi i32 [ %238, %236 ], [ %238, %243 ], [ %278, %275 ]
  %288 = phi ptr [ %239, %236 ], [ %239, %243 ], [ %279, %275 ]
  %289 = phi i32 [ %240, %236 ], [ %247, %243 ], [ %277, %275 ]
  %290 = phi i1 [ false, %236 ], [ false, %243 ], [ true, %275 ]
  br i1 %290, label %320, label %291

291:                                              ; preds = %285
  %292 = load ptr, ptr @ira_allocnos, align 8, !tbaa !35
  %293 = zext i32 %289 to i64
  %294 = getelementptr inbounds ptr, ptr %292, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !35
  %296 = getelementptr inbounds %struct.ira_allocno, ptr %295, i64 0, i32 1
  %297 = load i32, ptr %296, align 4, !tbaa !58
  %298 = getelementptr inbounds %struct.ira_allocno, ptr %295, i64 0, i32 17
  %299 = load ptr, ptr %298, align 8, !tbaa !155
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %317

301:                                              ; preds = %291
  %302 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !35
  %303 = tail call i32 @bitmap_bit_p(ptr noundef %302, i32 noundef %297) #18
  %304 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !35
  %305 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %304, i32 noundef %297) #18
  %306 = getelementptr inbounds %struct.ira_allocno, ptr %295, i64 0, i32 31
  %307 = load i16, ptr %306, align 4
  %308 = or i16 %307, 2
  store i16 %308, ptr %306, align 4
  %309 = and i32 %303, 255
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %301
  %312 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !35
  %313 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %312, i32 noundef %297) #18
  %314 = getelementptr inbounds %struct.ira_allocno, ptr %295, i64 0, i32 4
  %315 = load ptr, ptr %314, align 8, !tbaa !68
  %316 = tail call fastcc ptr @create_new_reg(ptr noundef %315)
  tail call fastcc void @set_allocno_reg(ptr noundef %295, ptr noundef %316)
  br label %317

317:                                              ; preds = %301, %291, %311
  %318 = lshr i64 %286, 1
  %319 = add i32 %289, 1
  br label %230, !llvm.loop !156

320:                                              ; preds = %34, %13, %285, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @unify_moves(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !34 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %109, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %6, align 8, !tbaa !81
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %109, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  br i1 %7, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %6, align 8, !tbaa !81
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i64 [ %18, %16 ], [ 0, %11 ]
  %21 = icmp ne ptr %15, null
  br label %22

22:                                               ; preds = %60, %19
  %23 = phi i64 [ %24, %60 ], [ %20, %19 ]
  %24 = add nsw i64 %23, -1
  %25 = trunc i64 %24 to i32
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = and i64 %24, 4294967295
  %29 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = icmp ne ptr %32, null
  %34 = select i1 %21, i1 %33, i1 false
  br i1 %34, label %35, label %55

35:                                               ; preds = %27, %47
  %36 = phi ptr [ %51, %47 ], [ %32, %27 ]
  %37 = phi ptr [ %49, %47 ], [ %15, %27 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = load ptr, ptr %36, align 8, !tbaa !54
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.move, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.move, ptr %37, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = icmp ne ptr %49, null
  %53 = icmp ne ptr %51, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %35, label %55, !llvm.loop !157

55:                                               ; preds = %47, %27
  %56 = phi ptr [ %15, %27 ], [ %49, %47 ]
  %57 = phi ptr [ %32, %27 ], [ %51, %47 ]
  %58 = icmp eq ptr %56, %57
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %41, %35, %55
  %61 = phi i8 [ %59, %55 ], [ 0, %35 ], [ 0, %41 ]
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %22, !llvm.loop !158

63:                                               ; preds = %60
  br i1 %26, label %109, label %64

64:                                               ; preds = %22, %63
  br i1 %3, label %65, label %72

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.rtl_bb_info, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !132
  %70 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %69) #18
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %65, %64
  store ptr null, ptr %14, align 8, !tbaa !99
  br i1 %7, label %76, label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %6, align 8, !tbaa !81
  %75 = add i32 %74, -1
  br label %76

76:                                               ; preds = %72, %73
  %77 = phi i32 [ %75, %73 ], [ -1, %72 ]
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = zext nneg i32 %77 to i64
  br label %81

81:                                               ; preds = %79, %98
  %82 = phi i64 [ %80, %79 ], [ %99, %98 ]
  %83 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !99
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %81, %96
  %89 = phi ptr [ %91, %96 ], [ %86, %81 ]
  %90 = getelementptr inbounds %struct.move, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !60
  %92 = getelementptr inbounds %struct.move, ptr %89, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !119
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  tail call void @ira_free(ptr noundef nonnull %93) #18
  br label %96

96:                                               ; preds = %95, %88
  tail call void @ira_free(ptr noundef nonnull %89) #18
  %97 = icmp eq ptr %91, null
  br i1 %97, label %98, label %88, !llvm.loop !138

98:                                               ; preds = %96, %81
  store ptr null, ptr %85, align 8, !tbaa !99
  %99 = add nsw i64 %82, -1
  %100 = icmp sgt i64 %82, 1
  br i1 %100, label %81, label %101, !llvm.loop !159

101:                                              ; preds = %98, %76
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !86
  %104 = sext i32 %103 to i64
  %105 = load ptr, ptr @at_bb_end, align 8
  %106 = load ptr, ptr @at_bb_start, align 8
  %107 = select i1 %3, ptr %105, ptr %106
  %108 = getelementptr inbounds ptr, ptr %107, i64 %104
  store ptr %15, ptr %108, align 8, !tbaa !35
  br label %109

109:                                              ; preds = %101, %2, %65, %8, %63
  ret void
}

declare void @ira_free(ptr noundef) local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @change_regs(ptr nocapture noundef %0) unnamed_addr #13 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %79, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = icmp sgt i32 %10, 52
  %12 = load i32, ptr @max_regno_before_changing, align 4
  %13 = icmp slt i32 %10, %12
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %79

15:                                               ; preds = %8
  %16 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !35
  %17 = zext nneg i32 %10 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %79, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %79, label %25

25:                                               ; preds = %21
  store ptr %23, ptr %0, align 8, !tbaa !35
  br label %79

26:                                               ; preds = %4
  %27 = zext nneg i32 %6 to i64
  %28 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %79, label %33

33:                                               ; preds = %26
  %34 = zext i8 %31 to i64
  br label %35

35:                                               ; preds = %33, %74
  %36 = phi i64 [ %34, %33 ], [ %38, %74 ]
  %37 = phi i32 [ 0, %33 ], [ %75, %74 ]
  %38 = add nsw i64 %36, -1
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !46
  switch i8 %40, label %74 [
    i8 101, label %41
    i8 69, label %50
  ]

41:                                               ; preds = %35
  %42 = load ptr, ptr %0, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = getelementptr inbounds [1 x %union.rtunion_def], ptr %43, i64 0, i64 %38
  %45 = tail call fastcc zeroext i8 @change_regs(ptr noundef nonnull %44), !range !142
  %46 = icmp ne i8 %45, 0
  %47 = icmp ne i32 %37, 0
  %48 = select i1 %46, i1 true, i1 %47
  %49 = zext i1 %48 to i32
  br label %74

50:                                               ; preds = %35
  %51 = load ptr, ptr %0, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %38
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = load i32, ptr %54, align 8, !tbaa !160
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = zext nneg i32 %55 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ %58, %57 ], [ %62, %59 ]
  %61 = phi i32 [ %37, %57 ], [ %72, %59 ]
  %62 = add nsw i64 %60, -1
  %63 = load ptr, ptr %0, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %38
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %62
  %68 = tail call fastcc zeroext i8 @change_regs(ptr noundef nonnull %67), !range !142
  %69 = icmp ne i8 %68, 0
  %70 = icmp ne i32 %61, 0
  %71 = select i1 %69, i1 true, i1 %70
  %72 = zext i1 %71 to i32
  %73 = icmp sgt i64 %60, 1
  br i1 %73, label %59, label %74, !llvm.loop !162

74:                                               ; preds = %59, %50, %35, %41
  %75 = phi i32 [ %49, %41 ], [ %37, %35 ], [ %37, %50 ], [ %72, %59 ]
  %76 = icmp sgt i64 %36, 1
  br i1 %76, label %35, label %77, !llvm.loop !163

77:                                               ; preds = %74
  %78 = trunc i32 %75 to i8
  br label %79

79:                                               ; preds = %26, %77, %21, %15, %8, %1, %25
  %80 = phi i8 [ 1, %25 ], [ 0, %1 ], [ 0, %8 ], [ 0, %15 ], [ 0, %21 ], [ 0, %26 ], [ %78, %77 ]
  ret i8 %80
}

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_allocno_reg(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #14 !prof !34 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %29, %2
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %33

16:                                               ; preds = %2, %29
  %17 = phi ptr [ %31, %29 ], [ %10, %2 ]
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 6
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %18, %16 ], [ %25, %19 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %21, %4
  %24 = select i1 %22, i1 true, i1 %23
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 6
  br i1 %24, label %26, label %19, !llvm.loop !166

26:                                               ; preds = %19
  br i1 %22, label %29, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 4
  store ptr %1, ptr %28, align 8, !tbaa !68
  br label %29

29:                                               ; preds = %26, %27
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %12, label %16, !llvm.loop !167

33:                                               ; preds = %12, %33
  %34 = phi ptr [ %37, %33 ], [ %14, %12 ]
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 4
  store ptr %1, ptr %35, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !165
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33, !llvm.loop !168

39:                                               ; preds = %33, %12
  br label %40

40:                                               ; preds = %68, %39
  %41 = phi ptr [ %0, %39 ], [ %69, %68 ]
  %42 = phi ptr [ %4, %39 ], [ %59, %68 ]
  %43 = icmp eq ptr %41, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !165
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %42, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %50, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = getelementptr inbounds ptr, ptr %54, i64 %8
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi ptr [ %56, %52 ], [ %46, %44 ]
  %59 = phi ptr [ %50, %52 ], [ %42, %44 ]
  %60 = icmp eq ptr %58, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %58, i64 0, i32 31
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = or disjoint i16 %63, 4
  store i16 %67, ptr %62, align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = phi ptr [ null, %57 ], [ %58, %66 ]
  br label %40, !llvm.loop !169

70:                                               ; preds = %61, %48
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @create_new_reg(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !34 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %7, ptr %8, align 8, !tbaa !46
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 134217728
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, -134217729
  %13 = or disjoint i32 %12, %10
  store i32 %13, ptr %5, align 8
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 1073741824
  %16 = and i32 %13, -1073741825
  %17 = or disjoint i32 %16, %15
  store i32 %17, ptr %5, align 8
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %19, ptr %20, align 8, !tbaa !46
  %21 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %22 = icmp sgt i32 %21, 3
  %23 = load ptr, ptr @ira_dump_file, align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !46
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %23, ptr noundef nonnull @.str.4, i32 noundef %28, i32 noundef %30)
  br label %32

32:                                               ; preds = %26, %1
  ret ptr %5
}

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @modify_move_list(ptr noundef %0) unnamed_addr #12 !prof !34 {
  %2 = load i32, ptr @curr_tick, align 4, !tbaa !50
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @curr_tick, align 4, !tbaa !50
  %4 = icmp eq ptr %0, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %1, %30
  %6 = phi ptr [ %32, %30 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.move, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !115
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %5
  %13 = zext nneg i32 %10 to i64
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !152
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = zext nneg i32 %10 to i64
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %28, %23 ]
  %25 = add nuw nsw i64 %24, %21
  %26 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %25
  store ptr %6, ptr %26, align 8, !tbaa !35
  %27 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %25
  store i32 %3, ptr %27, align 4, !tbaa !50
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, %22
  br i1 %29, label %30, label %23, !llvm.loop !170

30:                                               ; preds = %23, %12, %5
  %31 = getelementptr inbounds %struct.move, ptr %6, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %5, !llvm.loop !171

34:                                               ; preds = %30, %115
  %35 = phi ptr [ %117, %115 ], [ %0, %30 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !115
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %115

40:                                               ; preds = %34
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !152
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %41, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !46
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr @curr_tick, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 1
  %51 = zext nneg i32 %38 to i64
  %52 = zext i8 %46 to i64
  br label %53

53:                                               ; preds = %48, %71
  %54 = phi i64 [ 0, %48 ], [ %73, %71 ]
  %55 = phi i32 [ 0, %48 ], [ %72, %71 ]
  %56 = add nuw nsw i64 %54, %51
  %57 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = icmp eq i32 %58, %49
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds %struct.move, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !59
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !58
  %67 = load i32, ptr %50, align 4, !tbaa !58
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %55, %69
  br label %71

71:                                               ; preds = %60, %53
  %72 = phi i32 [ %55, %53 ], [ %70, %60 ]
  %73 = add nuw nsw i64 %54, 1
  %74 = icmp eq i64 %73, %52
  br i1 %74, label %75, label %53, !llvm.loop !172

75:                                               ; preds = %71, %40
  %76 = phi i32 [ 0, %40 ], [ %72, %71 ]
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 3
  %79 = tail call ptr @ira_allocate(i64 noundef %78) #18
  %80 = getelementptr inbounds %struct.move, ptr %35, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !119
  %81 = icmp eq i8 %46, 0
  br i1 %81, label %112, label %82

82:                                               ; preds = %75
  %83 = load i32, ptr @curr_tick, align 4, !tbaa !50
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 1
  %85 = zext nneg i32 %38 to i64
  %86 = zext i8 %46 to i64
  br label %87

87:                                               ; preds = %82, %108
  %88 = phi i64 [ 0, %82 ], [ %110, %108 ]
  %89 = phi i32 [ 0, %82 ], [ %109, %108 ]
  %90 = add nuw nsw i64 %88, %85
  %91 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = icmp eq i32 %92, %83
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %90
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = getelementptr inbounds %struct.move, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !59
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %98, i64 0, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !58
  %101 = load i32, ptr %84, align 4, !tbaa !58
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %94
  %104 = load ptr, ptr %80, align 8, !tbaa !119
  %105 = add nsw i32 %89, 1
  %106 = sext i32 %89 to i64
  %107 = getelementptr inbounds ptr, ptr %104, i64 %106
  store ptr %96, ptr %107, align 8, !tbaa !35
  br label %108

108:                                              ; preds = %87, %94, %103
  %109 = phi i32 [ %105, %103 ], [ %89, %94 ], [ %89, %87 ]
  %110 = add nuw nsw i64 %88, 1
  %111 = icmp eq i64 %110, %86
  br i1 %111, label %112, label %87, !llvm.loop !173

112:                                              ; preds = %108, %75
  %113 = phi i32 [ 0, %75 ], [ %109, %108 ]
  %114 = getelementptr inbounds %struct.move, ptr %35, i64 0, i32 4
  store i32 %113, ptr %114, align 4, !tbaa !120
  br label %115

115:                                              ; preds = %34, %112
  %116 = getelementptr inbounds %struct.move, ptr %35, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !60
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %34, !llvm.loop !174

119:                                              ; preds = %115, %1
  %120 = load ptr, ptr @move_vec, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 0, ptr %120, align 8, !tbaa !175
  br label %123

123:                                              ; preds = %119, %122
  %124 = icmp eq ptr %0, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %123, %125
  %126 = phi ptr [ %128, %125 ], [ %0, %123 ]
  tail call fastcc void @traverse_moves(ptr noundef nonnull %126)
  %127 = getelementptr inbounds %struct.move, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !60
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %125, !llvm.loop !177

130:                                              ; preds = %125, %123
  %131 = load ptr, ptr @move_vec, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load i32, ptr %131, align 8, !tbaa !175
  br label %135

135:                                              ; preds = %130, %133
  %136 = phi i32 [ %134, %133 ], [ 0, %130 ]
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = zext nneg i32 %136 to i64
  br label %140

140:                                              ; preds = %138, %150
  %141 = phi i64 [ %139, %138 ], [ %143, %150 ]
  %142 = phi ptr [ null, %138 ], [ %145, %150 ]
  %143 = add nsw i64 %141, -1
  %144 = getelementptr inbounds %struct.VEC_move_t_base, ptr %131, i64 0, i32 2, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = getelementptr inbounds %struct.move, ptr %145, i64 0, i32 2
  store ptr null, ptr %146, align 8, !tbaa !60
  %147 = icmp eq ptr %142, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.move, ptr %142, i64 0, i32 2
  store ptr %145, ptr %149, align 8, !tbaa !60
  br label %150

150:                                              ; preds = %148, %140
  %151 = icmp sgt i64 %141, 1
  br i1 %151, label %140, label %152, !llvm.loop !178

152:                                              ; preds = %150, %135
  %153 = phi ptr [ null, %135 ], [ %145, %150 ]
  %154 = load i32, ptr %131, align 8, !tbaa !175
  %155 = add i32 %154, -1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.VEC_move_t_base, ptr %131, i64 0, i32 2, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = load i32, ptr @curr_tick, align 4, !tbaa !50
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr @curr_tick, align 4, !tbaa !50
  store i32 0, ptr %131, align 8, !tbaa !175
  %161 = icmp eq ptr %158, null
  br i1 %161, label %289, label %162

162:                                              ; preds = %152, %285
  %163 = phi ptr [ %287, %285 ], [ %158, %152 ]
  %164 = load ptr, ptr %163, align 8, !tbaa !54
  %165 = getelementptr inbounds %struct.move, ptr %163, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !59
  %167 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !115
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %170, label %262

170:                                              ; preds = %162
  %171 = zext nneg i32 %168 to i64
  %172 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !152
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %171, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !46
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %262, label %178

178:                                              ; preds = %170
  %179 = zext nneg i32 %168 to i64
  %180 = zext i8 %176 to i64
  br label %181

181:                                              ; preds = %178, %259
  %182 = phi i64 [ 0, %178 ], [ %260, %259 ]
  %183 = add nuw nsw i64 %182, %179
  %184 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !50
  %186 = load i32, ptr @curr_tick, align 4, !tbaa !50
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %259

188:                                              ; preds = %181
  %189 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %183
  %190 = load ptr, ptr %189, align 8, !tbaa !35
  %191 = getelementptr inbounds %struct.move, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !59
  %193 = getelementptr inbounds %struct.ira_allocno, ptr %192, i64 0, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !115
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %259

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.ira_allocno, ptr %192, i64 0, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !58
  %199 = getelementptr inbounds %struct.ira_allocno, ptr %192, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !164
  %201 = tail call ptr @ira_create_allocno(i32 noundef %198, i8 noundef zeroext 0, ptr noundef %200) #18
  %202 = load ptr, ptr %191, align 8, !tbaa !59
  %203 = getelementptr inbounds %struct.ira_allocno, ptr %202, i64 0, i32 2
  %204 = load i32, ptr %203, align 8, !tbaa !152
  %205 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 2
  store i32 %204, ptr %205, align 8, !tbaa !152
  %206 = getelementptr inbounds %struct.ira_allocno, ptr %202, i64 0, i32 9
  %207 = load i32, ptr %206, align 8, !tbaa !151
  tail call void @ira_set_allocno_cover_class(ptr noundef %201, i32 noundef %207) #18
  %208 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 31
  %209 = load i16, ptr %208, align 4
  %210 = or i16 %209, 256
  store i16 %210, ptr %208, align 4
  %211 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 3
  store i32 -1, ptr %211, align 4, !tbaa !115
  %212 = load ptr, ptr %191, align 8, !tbaa !59
  %213 = getelementptr inbounds %struct.ira_allocno, ptr %212, i64 0, i32 4
  %214 = load ptr, ptr %213, align 8, !tbaa !68
  %215 = tail call fastcc ptr @create_new_reg(ptr noundef %214)
  %216 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 4
  store ptr %215, ptr %216, align 8, !tbaa !68
  %217 = load i32, ptr %201, align 8, !tbaa !56
  %218 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 24
  store i32 %217, ptr %218, align 8, !tbaa !179
  %219 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 21
  store i32 0, ptr %219, align 8, !tbaa !180
  %220 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !50
  %221 = add nsw i32 %220, -1
  %222 = getelementptr inbounds %struct.ira_allocno, ptr %201, i64 0, i32 22
  store i32 %221, ptr %222, align 4, !tbaa !181
  %223 = load ptr, ptr %191, align 8, !tbaa !59
  %224 = tail call ptr @ira_allocate(i64 noundef 48) #18
  %225 = getelementptr inbounds %struct.move, ptr %224, i64 0, i32 5
  store ptr null, ptr %225, align 8, !tbaa !119
  %226 = getelementptr inbounds %struct.move, ptr %224, i64 0, i32 4
  store i32 0, ptr %226, align 4, !tbaa !120
  %227 = getelementptr inbounds %struct.move, ptr %224, i64 0, i32 1
  store ptr %223, ptr %227, align 8, !tbaa !59
  store ptr %201, ptr %224, align 8, !tbaa !54
  %228 = getelementptr inbounds %struct.move, ptr %224, i64 0, i32 2
  store ptr null, ptr %228, align 8, !tbaa !60
  %229 = getelementptr inbounds %struct.move, ptr %224, i64 0, i32 6
  store ptr null, ptr %229, align 8, !tbaa !121
  %230 = getelementptr inbounds %struct.move, ptr %224, i64 0, i32 3
  store i8 0, ptr %230, align 8, !tbaa !122
  store ptr %201, ptr %191, align 8, !tbaa !59
  %231 = load ptr, ptr @move_vec, align 8, !tbaa !35
  %232 = icmp eq ptr %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %196
  %234 = getelementptr inbounds %struct.VEC_move_t_base, ptr %231, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !182
  %236 = load i32, ptr %231, align 8, !tbaa !175
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %196, %233
  %239 = tail call ptr @vec_heap_p_reserve(ptr noundef %231, i32 noundef 1) #18
  store ptr %239, ptr @move_vec, align 8, !tbaa !35
  br label %240

240:                                              ; preds = %233, %238
  %241 = load ptr, ptr @move_vec, align 8, !tbaa !35
  %242 = load i32, ptr %241, align 8, !tbaa !175
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 8, !tbaa !175
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds %struct.VEC_move_t_base, ptr %241, i64 0, i32 2, i64 %244
  store ptr %224, ptr %245, align 8, !tbaa !35
  %246 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !50
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr @ira_move_loops_num, align 4, !tbaa !50
  %248 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %249 = icmp sgt i32 %248, 2
  %250 = load ptr, ptr @ira_dump_file, align 8
  %251 = icmp ne ptr %250, null
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %253, label %259

253:                                              ; preds = %240
  %254 = load i32, ptr %201, align 8, !tbaa !56
  %255 = load ptr, ptr %216, align 8, !tbaa !68
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %257 = load i32, ptr %256, align 8, !tbaa !46
  %258 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %250, ptr noundef nonnull @.str.9, i32 noundef %254, i32 noundef %257)
  br label %259

259:                                              ; preds = %181, %188, %253, %240
  %260 = add nuw nsw i64 %182, 1
  %261 = icmp eq i64 %260, %180
  br i1 %261, label %262, label %181, !llvm.loop !183

262:                                              ; preds = %259, %170, %162
  %263 = getelementptr inbounds %struct.ira_allocno, ptr %166, i64 0, i32 3
  %264 = load i32, ptr %263, align 4, !tbaa !115
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %285, label %266

266:                                              ; preds = %262
  %267 = zext nneg i32 %264 to i64
  %268 = getelementptr inbounds %struct.ira_allocno, ptr %166, i64 0, i32 2
  %269 = load i32, ptr %268, align 8, !tbaa !152
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %267, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !46
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %266
  %275 = load i32, ptr @curr_tick, align 4, !tbaa !50
  %276 = zext nneg i32 %264 to i64
  %277 = zext i8 %272 to i64
  br label %278

278:                                              ; preds = %274, %278
  %279 = phi i64 [ 0, %274 ], [ %283, %278 ]
  %280 = add nuw nsw i64 %279, %276
  %281 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %280
  store ptr %163, ptr %281, align 8, !tbaa !35
  %282 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %280
  store i32 %275, ptr %282, align 4, !tbaa !50
  %283 = add nuw nsw i64 %279, 1
  %284 = icmp eq i64 %283, %277
  br i1 %284, label %285, label %278, !llvm.loop !184

285:                                              ; preds = %278, %266, %262
  %286 = getelementptr inbounds %struct.move, ptr %163, i64 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !60
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %162, !llvm.loop !185

289:                                              ; preds = %285, %152
  %290 = load ptr, ptr @move_vec, align 8
  %291 = icmp eq ptr %290, null
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = load i32, ptr %290, align 8, !tbaa !175
  br label %294

294:                                              ; preds = %289, %292
  %295 = phi i32 [ %293, %292 ], [ 0, %289 ]
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = zext nneg i32 %295 to i64
  br label %299

299:                                              ; preds = %297, %299
  %300 = phi i64 [ %298, %297 ], [ %302, %299 ]
  %301 = phi ptr [ %153, %297 ], [ %304, %299 ]
  %302 = add nsw i64 %300, -1
  %303 = getelementptr inbounds %struct.VEC_move_t_base, ptr %290, i64 0, i32 2, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !35
  %305 = getelementptr inbounds %struct.move, ptr %304, i64 0, i32 2
  store ptr null, ptr %305, align 8, !tbaa !60
  %306 = getelementptr inbounds %struct.move, ptr %301, i64 0, i32 2
  store ptr %304, ptr %306, align 8, !tbaa !60
  %307 = icmp sgt i64 %300, 1
  br i1 %307, label %299, label %308, !llvm.loop !186

308:                                              ; preds = %299, %294
  ret ptr %158
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_move_list(ptr noundef %0, i32 noundef %1) unnamed_addr #12 !prof !34 {
  tail call void @start_sequence() #18
  %3 = icmp eq ptr %0, null
  br i1 %3, label %85, label %4

4:                                                ; preds = %2, %78
  %5 = phi ptr [ %83, %78 ], [ %0, %2 ]
  tail call void @start_sequence() #18
  %6 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = load ptr, ptr %5, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = tail call ptr @emit_move_insn(ptr noundef %9, ptr noundef %12) #18
  %14 = tail call ptr @get_insns() #18
  %15 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 6
  store ptr %14, ptr %15, align 8, !tbaa !121
  tail call void @end_sequence() #18
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %4, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %4 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call i32 @recog(ptr noundef %25, ptr noundef nonnull %19, ptr noundef null) #18
  store i32 %26, ptr %20, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %18, %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !187

31:                                               ; preds = %27, %4
  %32 = load ptr, ptr %15, align 8, !tbaa !121
  %33 = tail call ptr @emit_insn(ptr noundef %32) #18
  %34 = load ptr, ptr %6, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !152
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !151
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !115
  %41 = icmp slt i32 %40, 0
  %42 = load ptr, ptr %5, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !115
  br i1 %41, label %45, label %53

45:                                               ; preds = %31
  %46 = icmp sgt i32 %44, -1
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = zext i32 %36 to i64
  %49 = zext i32 %38 to i64
  %50 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %48, i64 %49
  %51 = load i16, ptr %50, align 4, !tbaa !188
  %52 = sext i16 %51 to i32
  br label %72

53:                                               ; preds = %31
  %54 = icmp slt i32 %44, 0
  %55 = zext i32 %36 to i64
  br i1 %54, label %56, label %61

56:                                               ; preds = %53
  %57 = zext i32 %38 to i64
  %58 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %55, i64 %57
  %59 = load i16, ptr %58, align 4, !tbaa !188
  %60 = sext i16 %59 to i32
  br label %72

61:                                               ; preds = %53
  %62 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %55
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @ira_init_register_move_cost(i32 noundef %36) #18
  br label %66

66:                                               ; preds = %61, %65
  %67 = load ptr, ptr %62, align 8, !tbaa !35
  %68 = zext i32 %38 to i64
  %69 = getelementptr inbounds [27 x i16], ptr %67, i64 %68, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !188
  %71 = zext i16 %70 to i32
  br label %72

72:                                               ; preds = %47, %56, %66
  %73 = phi i32 [ %52, %47 ], [ %60, %56 ], [ %71, %66 ]
  %74 = phi ptr [ @ira_store_cost, %47 ], [ @ira_load_cost, %56 ], [ @ira_shuffle_cost, %66 ]
  %75 = mul nsw i32 %73, %1
  %76 = load i32, ptr %74, align 4, !tbaa !50
  %77 = add nsw i32 %75, %76
  store i32 %77, ptr %74, align 4, !tbaa !50
  br label %78

78:                                               ; preds = %72, %45
  %79 = phi i32 [ 0, %45 ], [ %75, %72 ]
  %80 = load i32, ptr @ira_overall_cost, align 4, !tbaa !50
  %81 = add nsw i32 %80, %79
  store i32 %81, ptr @ira_overall_cost, align 4, !tbaa !50
  %82 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !60
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %4, !llvm.loop !189

85:                                               ; preds = %78, %2
  %86 = tail call ptr @get_insns() #18
  tail call void @end_sequence() #18
  ret ptr %86
}

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @traverse_moves(ptr noundef %0) unnamed_addr #12 !prof !34 {
  %2 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !122
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  store i8 1, ptr %2, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !120
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 5
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %10, align 8, !tbaa !119
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  tail call fastcc void @traverse_moves(ptr noundef %17)
  %18 = icmp sgt i64 %13, 1
  br i1 %18, label %12, label %19, !llvm.loop !190

19:                                               ; preds = %12, %5
  %20 = load ptr, ptr @move_vec, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.VEC_move_t_base, ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !182
  %25 = load i32, ptr %20, align 8, !tbaa !175
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %22
  %28 = tail call ptr @vec_heap_p_reserve(ptr noundef %20, i32 noundef 1) #18
  store ptr %28, ptr @move_vec, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %22, %27
  %30 = load ptr, ptr @move_vec, align 8, !tbaa !35
  %31 = load i32, ptr %30, align 8, !tbaa !175
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !175
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds %struct.VEC_move_t_base, ptr %30, i64 0, i32 2, i64 %33
  store ptr %0, ptr %34, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %1, %29
  ret void
}

declare ptr @ira_create_allocno(i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @ira_set_allocno_cover_class(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_range_and_copies_from_move_list(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #12 !prof !34 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %6 = icmp eq ptr %0, null
  br i1 %6, label %326, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !105
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @bitmap_zero_bits, ptr %8
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !107
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i64 53, i64 0
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 0
  %16 = load i64, ptr %15, align 8, !tbaa !109
  %17 = lshr i64 %16, %14
  br label %18

18:                                               ; preds = %61, %7
  %19 = phi i64 [ %17, %7 ], [ %63, %61 ]
  %20 = phi i32 [ 0, %7 ], [ %58, %61 ]
  %21 = phi ptr [ %10, %7 ], [ %59, %61 ]
  %22 = phi i32 [ 0, %7 ], [ %62, %61 ]
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %42, %18
  %25 = phi i64 [ %19, %18 ], [ %46, %42 ]
  %26 = phi i32 [ %20, %18 ], [ %43, %42 ]
  %27 = phi ptr [ %21, %18 ], [ %39, %42 ]
  %28 = and i64 %25, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %24, %30
  %31 = phi i64 [ %32, %30 ], [ %25, %24 ]
  %32 = lshr exact i64 %31, 1
  %33 = and i64 %31, 2
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %30, label %56, !llvm.loop !110

35:                                               ; preds = %18
  %36 = add i32 %20, 1
  br label %37

37:                                               ; preds = %51, %35
  %38 = phi i64 [ %19, %35 ], [ %52, %51 ]
  %39 = phi ptr [ %21, %35 ], [ %54, %51 ]
  %40 = phi i32 [ %36, %35 ], [ 0, %51 ]
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %51, label %42

42:                                               ; preds = %37, %48
  %43 = phi i32 [ %49, %48 ], [ %40, %37 ]
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bitmap_element_def, ptr %39, i64 0, i32 3, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !109
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %24

48:                                               ; preds = %42
  %49 = add i32 %43, 1
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %42, !llvm.loop !111

51:                                               ; preds = %48, %37
  %52 = phi i64 [ %38, %37 ], [ %46, %48 ]
  %53 = phi i32 [ %40, %37 ], [ 2, %48 ]
  %54 = load ptr, ptr %39, align 8, !tbaa !112
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %37, !llvm.loop !113

56:                                               ; preds = %51, %30, %24
  %57 = phi i64 [ %25, %24 ], [ %32, %30 ], [ %52, %51 ]
  %58 = phi i32 [ %26, %24 ], [ %26, %30 ], [ %53, %51 ]
  %59 = phi ptr [ %27, %24 ], [ %27, %30 ], [ %54, %51 ]
  %60 = phi i1 [ false, %24 ], [ false, %30 ], [ true, %51 ]
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = add nuw nsw i32 %22, 1
  %63 = lshr i64 %57, 1
  br label %18, !llvm.loop !191

64:                                               ; preds = %56
  store i64 0, ptr %5, align 8, !tbaa !109
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %5, ptr noundef nonnull %2) #18
  %65 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @ira_max_point, align 4, !tbaa !50
  br label %67

67:                                               ; preds = %64, %174
  %68 = phi ptr [ %0, %64 ], [ %183, %174 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.move, ptr %68, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 23
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %77 = icmp sgt i32 %76, 2
  %78 = load ptr, ptr @ira_dump_file, align 8
  %79 = icmp ne ptr %78, null
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, ptr %71, align 8, !tbaa !56
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !46
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.10, i32 noundef %82, i32 noundef %86)
  br label %88

88:                                               ; preds = %81, %75
  call void @ira_allocate_allocno_conflicts(ptr noundef %71, i32 noundef %22) #18
  br label %89

89:                                               ; preds = %88, %67
  %90 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !58
  %92 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %91) #18
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !58
  %95 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %94) #18
  %96 = load i64, ptr %5, align 8, !tbaa !109
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 26
  %98 = load i64, ptr %97, align 8, !tbaa !193
  %99 = or i64 %98, %96
  store i64 %99, ptr %97, align 8, !tbaa !193
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 26
  %101 = load i64, ptr %100, align 8, !tbaa !193
  %102 = or i64 %101, %96
  store i64 %102, ptr %100, align 8, !tbaa !193
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 27
  %104 = load i64, ptr %103, align 8, !tbaa !194
  %105 = or i64 %104, %96
  store i64 %105, ptr %103, align 8, !tbaa !194
  %106 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 27
  %107 = load i64, ptr %106, align 8, !tbaa !194
  %108 = or i64 %107, %96
  store i64 %108, ptr %106, align 8, !tbaa !194
  call fastcc void @update_costs(ptr noundef %69, i8 noundef zeroext 1, i32 noundef %3)
  call fastcc void @update_costs(ptr noundef %71, i8 noundef zeroext 0, i32 noundef %3)
  %109 = getelementptr inbounds %struct.move, ptr %68, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !121
  %111 = call ptr @ira_add_allocno_copy(ptr noundef %69, ptr noundef %71, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %110, ptr noundef null) #18
  %112 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %113 = icmp sgt i32 %112, 2
  %114 = load ptr, ptr @ira_dump_file, align 8
  %115 = icmp ne ptr %114, null
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %134

117:                                              ; preds = %89
  %118 = load i32, ptr %111, align 8, !tbaa !195
  %119 = getelementptr inbounds %struct.ira_allocno_copy, ptr %111, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !197
  %121 = load i32, ptr %120, align 8, !tbaa !56
  %122 = getelementptr inbounds %struct.ira_allocno, ptr %120, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !68
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.ira_allocno_copy, ptr %111, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !198
  %128 = load i32, ptr %127, align 8, !tbaa !56
  %129 = getelementptr inbounds %struct.ira_allocno, ptr %127, i64 0, i32 4
  %130 = load ptr, ptr %129, align 8, !tbaa !68
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !46
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %114, ptr noundef nonnull @.str.11, i32 noundef %118, i32 noundef %121, i32 noundef %125, i32 noundef %128, i32 noundef %132)
  br label %134

134:                                              ; preds = %117, %89
  %135 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 20
  %136 = load ptr, ptr %135, align 8, !tbaa !199
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %136, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !200
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %158

142:                                              ; preds = %138, %134
  %143 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %144 = call ptr @ira_create_allocno_live_range(ptr noundef %69, i32 noundef %66, i32 noundef %143, ptr noundef %136) #18
  store ptr %144, ptr %135, align 8, !tbaa !199
  %145 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %146 = icmp sgt i32 %145, 2
  %147 = load ptr, ptr @ira_dump_file, align 8
  %148 = icmp ne ptr %147, null
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %150, label %174

150:                                              ; preds = %142
  %151 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %152 = load i32, ptr %69, align 8, !tbaa !56
  %153 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !68
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !46
  %157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %147, ptr noundef nonnull @.str.12, i32 noundef %66, i32 noundef %151, i32 noundef %152, i32 noundef %156)
  br label %174

158:                                              ; preds = %138
  %159 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  store i32 %159, ptr %139, align 4, !tbaa !200
  %160 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %161 = icmp sgt i32 %160, 2
  %162 = load ptr, ptr @ira_dump_file, align 8
  %163 = icmp ne ptr %162, null
  %164 = select i1 %161, i1 %163, i1 false
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %136, i64 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !202
  %168 = load i32, ptr %69, align 8, !tbaa !56
  %169 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 4
  %170 = load ptr, ptr %169, align 8, !tbaa !68
  %171 = getelementptr inbounds %struct.rtx_def, ptr %170, i64 0, i32 1
  %172 = load i32, ptr %171, align 8, !tbaa !46
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %162, ptr noundef nonnull @.str.12, i32 noundef %167, i32 noundef %159, i32 noundef %168, i32 noundef %172)
  br label %174

174:                                              ; preds = %158, %165, %142, %150
  %175 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr @ira_max_point, align 4, !tbaa !50
  %177 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 20
  %178 = load ptr, ptr %177, align 8, !tbaa !199
  %179 = call ptr @ira_create_allocno_live_range(ptr noundef %71, i32 noundef %176, i32 noundef -1, ptr noundef %178) #18
  store ptr %179, ptr %177, align 8, !tbaa !199
  %180 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr @ira_max_point, align 4, !tbaa !50
  %182 = getelementptr inbounds %struct.move, ptr %68, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !60
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %67, !llvm.loop !203

185:                                              ; preds = %174, %211
  %186 = phi ptr [ %213, %211 ], [ %0, %174 ]
  %187 = getelementptr inbounds %struct.move, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !59
  %189 = getelementptr inbounds %struct.ira_allocno, ptr %188, i64 0, i32 20
  %190 = load ptr, ptr %189, align 8, !tbaa !199
  %191 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %190, i64 0, i32 2
  %192 = load i32, ptr %191, align 4, !tbaa !200
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %185
  %195 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %196 = add nsw i32 %195, -1
  store i32 %196, ptr %191, align 4, !tbaa !200
  %197 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %198 = icmp sgt i32 %197, 2
  %199 = load ptr, ptr @ira_dump_file, align 8
  %200 = icmp ne ptr %199, null
  %201 = select i1 %198, i1 %200, i1 false
  br i1 %201, label %202, label %211

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %190, i64 0, i32 1
  %204 = load i32, ptr %203, align 8, !tbaa !202
  %205 = load i32, ptr %188, align 8, !tbaa !56
  %206 = getelementptr inbounds %struct.ira_allocno, ptr %188, i64 0, i32 4
  %207 = load ptr, ptr %206, align 8, !tbaa !68
  %208 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !46
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %199, ptr noundef nonnull @.str.12, i32 noundef %204, i32 noundef %196, i32 noundef %205, i32 noundef %209)
  br label %211

211:                                              ; preds = %185, %202, %194
  %212 = getelementptr inbounds %struct.move, ptr %186, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !60
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %185, !llvm.loop !204

215:                                              ; preds = %211
  %216 = load ptr, ptr %2, align 8, !tbaa !105
  %217 = icmp eq ptr %216, null
  %218 = select i1 %217, ptr @bitmap_zero_bits, ptr %216
  %219 = getelementptr inbounds %struct.bitmap_element_def, ptr %218, i64 0, i32 2
  %220 = load i32, ptr %219, align 8, !tbaa !107
  %221 = icmp eq i32 %220, 0
  %222 = shl i32 %220, 7
  %223 = select i1 %221, i32 53, i32 %222
  %224 = getelementptr inbounds %struct.bitmap_element_def, ptr %218, i64 0, i32 3, i64 0
  %225 = load i64, ptr %224, align 8, !tbaa !109
  %226 = and i32 %223, 53
  %227 = zext nneg i32 %226 to i64
  %228 = lshr i64 %225, %227
  %229 = icmp eq i64 %228, 0
  %230 = zext i1 %229 to i32
  %231 = add nuw nsw i32 %223, %230
  %232 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 9
  br label %233

233:                                              ; preds = %323, %215
  %234 = phi i64 [ %228, %215 ], [ %324, %323 ]
  %235 = phi i32 [ %231, %215 ], [ %325, %323 ]
  %236 = phi i32 [ 0, %215 ], [ %291, %323 ]
  %237 = phi ptr [ %218, %215 ], [ %292, %323 ]
  %238 = icmp eq i64 %234, 0
  br i1 %238, label %253, label %239

239:                                              ; preds = %267, %233
  %240 = phi i64 [ %234, %233 ], [ %272, %267 ]
  %241 = phi i32 [ %235, %233 ], [ %269, %267 ]
  %242 = phi i32 [ %236, %233 ], [ %268, %267 ]
  %243 = phi ptr [ %237, %233 ], [ %260, %267 ]
  %244 = and i64 %240, 1
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %288

246:                                              ; preds = %239, %246
  %247 = phi i32 [ %250, %246 ], [ %241, %239 ]
  %248 = phi i64 [ %249, %246 ], [ %240, %239 ]
  %249 = lshr exact i64 %248, 1
  %250 = add i32 %247, 1
  %251 = and i64 %248, 2
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %246, label %288, !llvm.loop !110

253:                                              ; preds = %233
  %254 = add i32 %235, 63
  %255 = and i32 %254, -64
  %256 = add i32 %236, 1
  br label %257

257:                                              ; preds = %284, %253
  %258 = phi i64 [ %234, %253 ], [ %279, %284 ]
  %259 = phi i32 [ %255, %253 ], [ %287, %284 ]
  %260 = phi ptr [ %237, %253 ], [ %282, %284 ]
  %261 = phi i32 [ %256, %253 ], [ 0, %284 ]
  %262 = icmp eq i32 %261, 2
  br i1 %262, label %278, label %263

263:                                              ; preds = %257
  %264 = add i32 %259, 128
  %265 = shl i32 %261, 6
  %266 = sub i32 %264, %265
  br label %267

267:                                              ; preds = %263, %274
  %268 = phi i32 [ %276, %274 ], [ %261, %263 ]
  %269 = phi i32 [ %275, %274 ], [ %259, %263 ]
  %270 = zext i32 %268 to i64
  %271 = getelementptr inbounds %struct.bitmap_element_def, ptr %260, i64 0, i32 3, i64 %270
  %272 = load i64, ptr %271, align 8, !tbaa !109
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %239

274:                                              ; preds = %267
  %275 = add i32 %269, 64
  %276 = add i32 %268, 1
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %278, label %267, !llvm.loop !111

278:                                              ; preds = %274, %257
  %279 = phi i64 [ %258, %257 ], [ %272, %274 ]
  %280 = phi i32 [ %259, %257 ], [ %266, %274 ]
  %281 = phi i32 [ %261, %257 ], [ 2, %274 ]
  %282 = load ptr, ptr %260, align 8, !tbaa !112
  %283 = icmp eq ptr %282, null
  br i1 %283, label %288, label %284

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.bitmap_element_def, ptr %282, i64 0, i32 2
  %286 = load i32, ptr %285, align 8, !tbaa !107
  %287 = shl i32 %286, 7
  br label %257, !llvm.loop !113

288:                                              ; preds = %278, %246, %239
  %289 = phi i64 [ %240, %239 ], [ %249, %246 ], [ %279, %278 ]
  %290 = phi i32 [ %241, %239 ], [ %250, %246 ], [ %280, %278 ]
  %291 = phi i32 [ %242, %239 ], [ %242, %246 ], [ %281, %278 ]
  %292 = phi ptr [ %243, %239 ], [ %243, %246 ], [ %282, %278 ]
  %293 = phi i1 [ false, %239 ], [ false, %246 ], [ true, %278 ]
  br i1 %293, label %326, label %294

294:                                              ; preds = %288
  %295 = load ptr, ptr %232, align 8, !tbaa !78
  %296 = zext i32 %290 to i64
  %297 = getelementptr inbounds ptr, ptr %295, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !35
  %299 = getelementptr inbounds %struct.ira_allocno, ptr %298, i64 0, i32 32
  %300 = load ptr, ptr %299, align 8, !tbaa !118
  %301 = icmp eq ptr %300, null
  %302 = select i1 %301, ptr %298, ptr %300
  %303 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %304 = add nsw i32 %303, -1
  %305 = getelementptr inbounds %struct.ira_allocno, ptr %302, i64 0, i32 20
  %306 = load ptr, ptr %305, align 8, !tbaa !199
  %307 = call ptr @ira_create_allocno_live_range(ptr noundef %302, i32 noundef %66, i32 noundef %304, ptr noundef %306) #18
  store ptr %307, ptr %305, align 8, !tbaa !199
  %308 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !50
  %309 = icmp sgt i32 %308, 2
  %310 = load ptr, ptr @ira_dump_file, align 8
  %311 = icmp ne ptr %310, null
  %312 = select i1 %309, i1 %311, i1 false
  br i1 %312, label %313, label %323

313:                                              ; preds = %294
  %314 = load i32, ptr @ira_max_point, align 4, !tbaa !50
  %315 = add nsw i32 %314, -1
  %316 = select i1 %301, ptr @.str.15, ptr @.str.14
  %317 = load i32, ptr %302, align 8, !tbaa !56
  %318 = getelementptr inbounds %struct.ira_allocno, ptr %302, i64 0, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !68
  %320 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !46
  %322 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %310, ptr noundef nonnull @.str.13, i32 noundef %66, i32 noundef %315, ptr noundef nonnull %316, i32 noundef %317, i32 noundef %321)
  br label %323

323:                                              ; preds = %294, %313
  %324 = lshr i64 %289, 1
  %325 = add i32 %290, 1
  br label %233, !llvm.loop !205

326:                                              ; preds = %288, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ira_allocate_allocno_conflicts(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_costs(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #14 !prof !34 {
  %4 = icmp ne i8 %1, 0
  %5 = zext i1 %4 to i64
  br label %6

6:                                                ; preds = %30, %3
  %7 = phi ptr [ %0, %3 ], [ %31, %30 ]
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !206
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !206
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !207
  %13 = add nsw i32 %12, %2
  store i32 %13, ptr %11, align 4, !tbaa !207
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !152
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !151
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %16, i64 %19, i64 %5
  %21 = load i16, ptr %20, align 2, !tbaa !188
  %22 = sext i16 %21 to i32
  %23 = mul nsw i32 %22, %2
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 12
  %25 = load i32, ptr %24, align 4, !tbaa !208
  %26 = add nsw i32 %23, %25
  store i32 %26, ptr %24, align 4, !tbaa !208
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !165
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6, %38
  %31 = phi ptr [ %45, %38 ], [ %28, %6 ]
  br label %6, !llvm.loop !209

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %36, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !58
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %30

47:                                               ; preds = %32, %38
  ret void
}

declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold }

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
!54 = !{!55, !36, i64 0}
!55 = !{!"move", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !41, i64 28, !36, i64 32, !36, i64 40}
!56 = !{!57, !41, i64 0}
!57 = !{!"ira_allocno", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 140, !42, i64 144, !42, i64 152, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 172, !41, i64 172, !41, i64 172, !41, i64 172, !41, i64 172, !41, i64 172, !41, i64 172, !41, i64 173, !41, i64 173, !41, i64 173, !41, i64 173, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !41, i64 216, !41, i64 220, !36, i64 224, !36, i64 232, !41, i64 240}
!58 = !{!57, !41, i64 4}
!59 = !{!55, !36, i64 8}
!60 = !{!55, !36, i64 16}
!61 = distinct !{!61, !52, !53}
!62 = !{!"function_entry_count", i64 38}
!63 = !{!"branch_weights", i32 151, i32 1}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = distinct !{!65, !52, !53}
!66 = !{!"branch_weights", i32 151, i32 429581}
!67 = !{!"branch_weights", i32 107433, i32 38}
!68 = !{!57, !36, i64 16}
!69 = distinct !{!69, !52, !53}
!70 = !{!"branch_weights", i32 38, i32 0}
!71 = !{!72, !36, i64 8}
!72 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!73 = !{!74, !41, i64 32}
!74 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!75 = distinct !{!75, !52, !53}
!76 = !{!77, !41, i64 0}
!77 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!78 = !{!79, !36, i64 64}
!79 = !{!"ira_loop_tree_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60, !36, i64 64, !37, i64 72, !37, i64 76, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!80 = !{!79, !36, i64 0}
!81 = !{!82, !41, i64 0}
!82 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!83 = !{!84, !36, i64 0}
!84 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!85 = !{!74, !36, i64 0}
!86 = !{!87, !41, i64 80}
!87 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!88 = !{!79, !36, i64 48}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = !{!79, !37, i64 72}
!94 = distinct !{!94, !52, !53}
!95 = !{!87, !36, i64 56}
!96 = !{!74, !36, i64 8}
!97 = distinct !{!97, !52, !53}
!98 = !{!84, !36, i64 8}
!99 = !{!84, !36, i64 24}
!100 = !{!101, !41, i64 16}
!101 = !{!"dataflow", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 53, !37, i64 54}
!102 = !{!101, !36, i64 8}
!103 = !{!104, !36, i64 16}
!104 = !{!"df_lr_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!105 = !{!106, !36, i64 0}
!106 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!107 = !{!108, !41, i64 16}
!108 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!109 = !{!42, !42, i64 0}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = !{!108, !36, i64 0}
!113 = distinct !{!113, !53}
!114 = !{!104, !36, i64 24}
!115 = !{!57, !41, i64 12}
!116 = distinct !{!116, !52, !53}
!117 = !{!79, !36, i64 200}
!118 = !{!57, !36, i64 176}
!119 = !{!55, !36, i64 32}
!120 = !{!55, !41, i64 28}
!121 = !{!55, !36, i64 40}
!122 = !{!55, !37, i64 24}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = !{!87, !42, i64 72}
!129 = !{!87, !41, i64 88}
!130 = !{!131, !36, i64 0}
!131 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!132 = !{!131, !36, i64 8}
!133 = !{!84, !41, i64 52}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = distinct !{!140, !52, !53}
!141 = distinct !{!141, !52, !53}
!142 = !{i8 0, i8 2}
!143 = distinct !{!143, !52, !53}
!144 = !{!79, !36, i64 8}
!145 = !{!146, !41, i64 0}
!146 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !147, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !148, i64 80, !148, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!147 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!148 = !{!"", !42, i64 0, !42, i64 8}
!149 = !{!146, !36, i64 8}
!150 = !{!79, !36, i64 192}
!151 = !{!57, !41, i64 48}
!152 = !{!57, !41, i64 8}
!153 = distinct !{!153, !52, !53}
!154 = !{!79, !36, i64 184}
!155 = !{!57, !36, i64 88}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = distinct !{!158, !52, !53}
!159 = distinct !{!159, !52, !53}
!160 = !{!161, !41, i64 0}
!161 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = !{!57, !36, i64 32}
!165 = !{!57, !36, i64 80}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !53}
!170 = distinct !{!170, !52, !53}
!171 = distinct !{!171, !52, !53}
!172 = distinct !{!172, !52, !53}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = !{!176, !41, i64 0}
!176 = !{!"VEC_move_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = !{!57, !41, i64 136}
!180 = !{!57, !41, i64 120}
!181 = !{!57, !41, i64 124}
!182 = !{!176, !41, i64 4}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = !{!43, !43, i64 0}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = !{!57, !36, i64 128}
!193 = !{!57, !42, i64 144}
!194 = !{!57, !42, i64 152}
!195 = !{!196, !41, i64 0}
!196 = !{!"ira_allocno_copy", !41, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!197 = !{!196, !36, i64 8}
!198 = !{!196, !36, i64 16}
!199 = !{!57, !36, i64 112}
!200 = !{!201, !41, i64 12}
!201 = !{!"ira_allocno_live_range", !36, i64 0, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 24, !36, i64 32}
!202 = !{!201, !41, i64 8}
!203 = distinct !{!203, !52, !53}
!204 = distinct !{!204, !52, !53}
!205 = distinct !{!205, !52, !53}
!206 = !{!57, !41, i64 40}
!207 = !{!57, !41, i64 44}
!208 = !{!57, !41, i64 60}
!209 = distinct !{!209, !53}
