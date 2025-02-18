; ModuleID = 'ira-lives.c'
source_filename = "ira-lives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_finish_point_ranges = dso_local local_unnamed_addr global ptr null, align 8
@ira_start_point_ranges = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [10 x i8] c" [%d..%d]\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@allocnos_live = internal unnamed_addr global ptr null, align 8
@curr_point = internal unnamed_addr global i32 0, align 4
@last_call_num = internal unnamed_addr global i32 0, align 4
@allocno_saved_at_call = internal unnamed_addr global ptr null, align 8
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@ira_max_point = dso_local local_unnamed_addr global i32 0, align 4
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Ranges after the compression:\0A\00", align 1
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" a%d(r%d):\00", align 1
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@high_pressure_start_point = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@curr_bb_node = internal unnamed_addr global ptr null, align 8
@hard_regs_live = internal global i64 0, align 8
@eliminable_regset = external local_unnamed_addr global i64, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@ira_reg_class_super_classes = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"   Insn %u(l%d): point = %d\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ira-lives.c\00", align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_hard_regno_cover_class = external local_unnamed_addr global [53 x i32], align 16
@ira_class_subset_p = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Compressing live ranges: from %d to %d - %d%%\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !69 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !70
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !69 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !70
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !69 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !80

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !74
  %11 = load i8, ptr %3, align 1, !tbaa !81
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !69 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !80

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !74
  %11 = load i8, ptr %3, align 1, !tbaa !81
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !69 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !80

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !74
  %11 = load i8, ptr %3, align 1, !tbaa !81
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !69 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !70
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !69 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !80

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i8 %12, ptr %4, align 1, !tbaa !81
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !69 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !80

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i8 %12, ptr %4, align 1, !tbaa !81
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !69 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !80

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i8 %12, ptr %4, align 1, !tbaa !81
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !69 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !69 {
  %2 = load i32, ptr %0, align 8, !tbaa !84
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !69 {
  %2 = load i32, ptr %0, align 8, !tbaa !84
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !69 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !85
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !69 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !85
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !69 {
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
  br i1 %23, label %7, label %24, !llvm.loop !86

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !69 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_implicitly_set_insn_hard_regs(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !69 {
  store i64 0, ptr %0, align 8, !tbaa !89
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %77

4:                                                ; preds = %1, %71
  %5 = phi i64 [ %73, %71 ], [ 0, %1 ]
  %6 = phi i32 [ %72, %71 ], [ 0, %1 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi ptr [ %14, %12 ], [ %8, %4 ]
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %71 [
    i16 38, label %23
    i16 37, label %19
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = icmp sgt i32 %21, 52
  br i1 %22, label %23, label %71

23:                                               ; preds = %15, %19
  %24 = phi i32 [ %6, %15 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %5
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = and i32 %17, 65535
  %28 = icmp eq i32 %27, 38
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !70
  %31 = sext i32 %24 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = load i32, ptr %33, align 8
  br label %35

35:                                               ; preds = %23, %29
  %36 = phi i32 [ %34, %29 ], [ %17, %23 ]
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  br label %40

40:                                               ; preds = %66, %35
  %41 = phi i8 [ 0, %35 ], [ %67, %66 ]
  %42 = phi ptr [ %26, %35 ], [ %70, %66 ]
  %43 = load i8, ptr %42, align 1, !tbaa !81
  switch i8 %43, label %45 [
    i8 0, label %71
    i8 35, label %66
    i8 44, label %44
  ]

44:                                               ; preds = %40
  br label %66

45:                                               ; preds = %40
  %46 = icmp eq i8 %41, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  switch i8 %43, label %66 [
    i8 114, label %51
    i8 65, label %48
    i8 66, label %48
    i8 67, label %48
    i8 68, label %48
    i8 81, label %48
    i8 82, label %48
    i8 83, label %48
    i8 84, label %48
    i8 85, label %48
    i8 87, label %48
    i8 89, label %48
    i8 90, label %48
    i8 97, label %48
    i8 98, label %48
    i8 99, label %48
    i8 100, label %48
    i8 101, label %48
    i8 102, label %48
    i8 104, label %48
    i8 106, label %48
    i8 107, label %48
    i8 108, label %48
    i8 113, label %48
    i8 116, label %48
    i8 117, label %48
    i8 118, label %48
    i8 119, label %48
    i8 120, label %48
    i8 121, label %48
    i8 122, label %48
  ]

48:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %49 = tail call i32 @lookup_constraint(ptr noundef nonnull %42) #17
  %50 = tail call i32 @regclass_for_constraint(i32 noundef %49) #17
  br label %51

51:                                               ; preds = %47, %48
  %52 = phi i32 [ %50, %48 ], [ 13, %47 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = zext i32 %52 to i64
  %56 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !85
  %58 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %55, i64 %39
  %59 = load i32, ptr %58, align 4, !tbaa !85
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %55
  %63 = load i64, ptr %62, align 8, !tbaa !89
  %64 = load i64, ptr %0, align 8, !tbaa !89
  %65 = or i64 %64, %63
  store i64 %65, ptr %0, align 8, !tbaa !89
  br label %66

66:                                               ; preds = %47, %40, %45, %51, %54, %61, %44
  %67 = phi i8 [ 0, %44 ], [ 1, %45 ], [ 0, %47 ], [ 0, %61 ], [ 0, %54 ], [ 0, %51 ], [ 1, %40 ]
  %68 = icmp eq i8 %43, 89
  %69 = select i1 %68, i64 2, i64 1
  %70 = getelementptr inbounds i8, ptr %42, i64 %69
  br label %40, !llvm.loop !92

71:                                               ; preds = %40, %19, %15
  %72 = phi i32 [ %6, %15 ], [ %21, %19 ], [ %24, %40 ]
  %73 = add nuw nsw i64 %5, 1
  %74 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %75 = sext i8 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %4, label %77, !llvm.loop !93

77:                                               ; preds = %71, %1
  ret void
}

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_rebuild_start_finish_chains() local_unnamed_addr #8 !prof !69 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %1) #17
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %2) #17
  tail call fastcc void @create_start_finish_chains()
  ret void
}

declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @create_start_finish_chains() unnamed_addr #9 !prof !94 !PGOFuncName !95 {
  %1 = load i32, ptr @ira_max_point, align 4, !tbaa !85
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #17
  store ptr %4, ptr @ira_start_point_ranges, align 8, !tbaa !70
  %5 = load i32, ptr @ira_max_point, align 4, !tbaa !85
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %7, i1 false), !prof !96
  %8 = load i32, ptr @ira_max_point, align 4, !tbaa !85
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @ira_allocate(i64 noundef %10) #17
  store ptr %11, ptr @ira_finish_point_ranges, align 8, !tbaa !70
  %12 = load i32, ptr @ira_max_point, align 4, !tbaa !85
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 %14, i1 false), !prof !96
  %15 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  br label %17

16:                                               ; preds = %55, %51
  br label %17, !llvm.loop !97

17:                                               ; preds = %16, %0
  %18 = phi ptr [ undef, %0 ], [ %49, %16 ]
  %19 = phi i32 [ 0, %0 ], [ %50, %16 ]
  %20 = icmp slt i32 %19, %15
  br i1 %20, label %21, label %47, !prof !98

21:                                               ; preds = %17
  %22 = load ptr, ptr @ira_allocnos, align 8, !tbaa !70
  %23 = sext i32 %19 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %33, !prof !99

27:                                               ; preds = %39
  %28 = getelementptr inbounds ptr, ptr %22, i64 %42
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31, !prof !99, !llvm.loop !100

31:                                               ; preds = %27
  %32 = icmp slt i64 %42, %41
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi i64 [ %23, %21 ], [ %42, %31 ]
  %35 = phi i1 [ %20, %21 ], [ %32, %31 ]
  %36 = phi ptr [ %25, %21 ], [ %29, %31 ]
  %37 = trunc i64 %34 to i32
  %38 = add nsw i32 %37, 1
  br label %47

39:                                               ; preds = %21, %27
  %40 = phi i64 [ %42, %27 ], [ %23, %21 ]
  %41 = sext i32 %15 to i64
  %42 = add nsw i64 %40, 1
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %15, %43
  br i1 %44, label %45, label %27, !prof !101, !llvm.loop !100

45:                                               ; preds = %39
  %46 = icmp slt i64 %42, %41
  br label %47

47:                                               ; preds = %45, %17, %33
  %48 = phi i1 [ %35, %33 ], [ %20, %17 ], [ %46, %45 ]
  %49 = phi ptr [ %36, %33 ], [ %18, %17 ], [ %18, %45 ]
  %50 = phi i32 [ %38, %33 ], [ %19, %17 ], [ %19, %45 ]
  br i1 %48, label %51, label %74, !prof !102

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = icmp eq ptr %53, null
  br i1 %54, label %16, label %55, !prof !103

55:                                               ; preds = %51, %55
  %56 = phi ptr [ %72, %55 ], [ %53, %51 ]
  %57 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %56, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !104
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %56, i64 0, i32 4
  store ptr %62, ptr %63, align 8, !tbaa !106
  store ptr %56, ptr %61, align 8, !tbaa !70
  %64 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !70
  %65 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %56, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !107
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %56, i64 0, i32 5
  store ptr %69, ptr %70, align 8, !tbaa !108
  store ptr %56, ptr %68, align 8, !tbaa !70
  %71 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %56, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !70
  %73 = icmp eq ptr %72, null
  br i1 %73, label %16, label %55, !prof !109, !llvm.loop !110

74:                                               ; preds = %47
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_print_live_range_list(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !69 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %12, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !107
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9)
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !112

14:                                               ; preds = %4, %2
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_live_range_list(ptr noundef %0) local_unnamed_addr #10 !prof !69 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !70
  tail call void @ira_print_live_range_list(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_allocno_live_ranges(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !69 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !70
  %3 = load i32, ptr %0, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !115
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5) #18
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  tail call void @ira_print_live_range_list(ptr noundef %2, ptr noundef %8)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_live_ranges() local_unnamed_addr #10 !prof !69 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !70
  tail call fastcc void @print_live_ranges(ptr noundef %1)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_live_ranges(ptr nocapture noundef %0) unnamed_addr #10 !prof !69 {
  br label %2

2:                                                ; preds = %37, %1
  %3 = phi ptr [ undef, %1 ], [ %35, %37 ]
  %4 = phi i32 [ 0, %1 ], [ %36, %37 ]
  %5 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load ptr, ptr @ira_allocnos, align 8, !tbaa !70
  %9 = sext i32 %4 to i64
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %20

14:                                               ; preds = %26
  %15 = getelementptr inbounds ptr, ptr %8, i64 %28
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !llvm.loop !100

18:                                               ; preds = %14
  %19 = icmp slt i64 %28, %10
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi i64 [ %9, %7 ], [ %28, %18 ]
  %22 = phi i1 [ %6, %7 ], [ %19, %18 ]
  %23 = phi ptr [ %12, %7 ], [ %16, %18 ]
  %24 = trunc i64 %21 to i32
  %25 = add nsw i32 %24, 1
  br label %33

26:                                               ; preds = %7, %14
  %27 = phi i64 [ %28, %14 ], [ %9, %7 ]
  %28 = add nsw i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %5, %29
  br i1 %30, label %31, label %14, !llvm.loop !100

31:                                               ; preds = %26
  %32 = icmp slt i64 %28, %10
  br label %33

33:                                               ; preds = %31, %2, %20
  %34 = phi i1 [ %22, %20 ], [ %6, %2 ], [ %32, %31 ]
  %35 = phi ptr [ %23, %20 ], [ %3, %2 ], [ %3, %31 ]
  %36 = phi i32 [ %25, %20 ], [ %4, %2 ], [ %4, %31 ]
  br i1 %34, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !113
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %35, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !115
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %38, i32 noundef %40)
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %35, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !116
  tail call void @ira_print_live_range_list(ptr noundef %0, ptr noundef %43)
  br label %2, !llvm.loop !117

44:                                               ; preds = %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_create_allocno_live_ranges() local_unnamed_addr #9 !prof !118 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  %2 = tail call ptr @sparseset_alloc(i32 noundef %1) #17
  store ptr %2, ptr @allocnos_live, align 8, !tbaa !70
  store i32 0, ptr @curr_point, align 4, !tbaa !85
  store i32 0, ptr @last_call_num, align 4, !tbaa !85
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #17
  store ptr %6, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %7 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false), !prof !119
  %10 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !70
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %10, ptr noundef null, ptr noundef nonnull @process_bb_node_lives) #17
  %11 = load i32, ptr @curr_point, align 4, !tbaa !85
  store i32 %11, ptr @ira_max_point, align 4, !tbaa !85
  tail call fastcc void @create_start_finish_chains()
  %12 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !85
  %13 = icmp sgt i32 %12, 2
  %14 = load ptr, ptr @ira_dump_file, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false, !prof !120
  br i1 %16, label %17, label %18, !prof !121

17:                                               ; preds = %0
  tail call fastcc void @print_live_ranges(ptr noundef nonnull %14)
  br label %18

18:                                               ; preds = %17, %0
  %19 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %19) #17
  %20 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  tail call void @free(ptr noundef %20)
  ret void
}

declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @process_bb_node_lives(ptr noundef %0) #12 !prof !122 !PGOFuncName !123 {
  %2 = load ptr, ptr %0, align 8, !tbaa !124
  %3 = icmp eq ptr %2, null
  br i1 %3, label %2007, label %4, !prof !126

4:                                                ; preds = %1
  %5 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !85
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18, !prof !127

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %16, %9 ]
  %11 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %13
  store i32 0, ptr %14, align 4, !tbaa !85
  %15 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %13
  store i32 -1, ptr %15, align 4, !tbaa !85
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !prof !128, !llvm.loop !129

18:                                               ; preds = %9, %4
  store ptr %0, ptr @curr_bb_node, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !130
  %21 = load ptr, ptr @df, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !132
  %26 = icmp ugt i32 %25, %20
  tail call void @llvm.assume(i1 %26)
  %27 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  %29 = zext i32 %20 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.df_lr_bb_info, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !135
  %34 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %35 = getelementptr inbounds %struct.sparseset_def, ptr %34, i64 0, i32 2
  store i32 0, ptr %35, align 8, !tbaa !137
  %36 = getelementptr inbounds %struct.sparseset_def, ptr %34, i64 0, i32 6
  store i8 0, ptr %36, align 1, !tbaa !139
  store i64 0, ptr @hard_regs_live, align 8, !tbaa !89
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @hard_regs_live, ptr noundef %33) #17
  %37 = load i64, ptr @eliminable_regset, align 8, !tbaa !89
  %38 = xor i64 %37, -1
  %39 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %40 = and i64 %39, %38
  store i64 %40, ptr @hard_regs_live, align 8, !tbaa !89
  %41 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !89
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  store i64 %43, ptr @hard_regs_live, align 8, !tbaa !89
  %44 = load ptr, ptr @curr_bb_node, align 8
  br label %45

45:                                               ; preds = %18, %77
  %46 = phi i64 [ 0, %18 ], [ %78, %77 ]
  %47 = shl nuw i64 1, %46
  %48 = and i64 %47, %43
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %77, label %50, !prof !140

50:                                               ; preds = %45
  %51 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %46
  %52 = load i32, ptr %51, align 4, !tbaa !85
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !85
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %56, i64 0
  %58 = load i32, ptr %57, align 4, !tbaa !85
  %59 = icmp eq i32 %58, 27
  br i1 %59, label %77, label %60, !prof !141

60:                                               ; preds = %50, %71
  %61 = phi i32 [ %75, %71 ], [ %58, %50 ]
  %62 = phi i32 [ %72, %71 ], [ 0, %50 ]
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !85
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !85
  %67 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %44, i64 0, i32 11, i64 %63
  %68 = load i32, ptr %67, align 4, !tbaa !85
  %69 = icmp sgt i32 %68, %65
  br i1 %69, label %71, label %70, !prof !142

70:                                               ; preds = %60
  store i32 %66, ptr %67, align 4, !tbaa !85
  br label %71

71:                                               ; preds = %60, %70
  %72 = add i32 %62, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %56, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !85
  %76 = icmp eq i32 %75, 27
  br i1 %76, label %77, label %60, !prof !143, !llvm.loop !144

77:                                               ; preds = %71, %50, %45
  %78 = add nuw nsw i64 %46, 1
  %79 = icmp eq i64 %78, 53
  br i1 %79, label %80, label %45, !prof !145, !llvm.loop !146

80:                                               ; preds = %77
  %81 = load ptr, ptr %33, align 8, !tbaa !147
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr @bitmap_zero_bits, ptr %81, !prof !149
  %84 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !150
  %86 = icmp eq i32 %85, 0
  %87 = shl i32 %85, 7
  %88 = select i1 %86, i32 53, i32 %87, !prof !152
  %89 = getelementptr inbounds %struct.bitmap_element_def, ptr %83, i64 0, i32 3, i64 0
  %90 = load i64, ptr %89, align 8, !tbaa !89
  %91 = and i32 %88, 53
  %92 = zext nneg i32 %91 to i64
  %93 = lshr i64 %90, %92
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = add nuw nsw i32 %88, %95
  br label %97

97:                                               ; preds = %321, %80
  %98 = phi i64 [ %93, %80 ], [ %322, %321 ]
  %99 = phi i32 [ 0, %80 ], [ %154, %321 ]
  %100 = phi i32 [ %96, %80 ], [ %323, %321 ]
  %101 = phi ptr [ %83, %80 ], [ %156, %321 ]
  %102 = icmp eq i64 %98, 0
  br i1 %102, label %117, label %103, !prof !153

103:                                              ; preds = %131, %97
  %104 = phi i64 [ %98, %97 ], [ %136, %131 ]
  %105 = phi i32 [ %99, %97 ], [ %132, %131 ]
  %106 = phi i32 [ %100, %97 ], [ %133, %131 ]
  %107 = phi ptr [ %101, %97 ], [ %124, %131 ]
  %108 = and i64 %104, 1
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %152, !prof !154

110:                                              ; preds = %103, %110
  %111 = phi i32 [ %114, %110 ], [ %106, %103 ]
  %112 = phi i64 [ %113, %110 ], [ %104, %103 ]
  %113 = lshr exact i64 %112, 1
  %114 = add i32 %111, 1
  %115 = and i64 %112, 2
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %110, label %152, !prof !155, !llvm.loop !156

117:                                              ; preds = %97
  %118 = add i32 %100, 63
  %119 = and i32 %118, -64
  %120 = add i32 %99, 1
  br label %121

121:                                              ; preds = %148, %117
  %122 = phi i64 [ %98, %117 ], [ %143, %148 ]
  %123 = phi i32 [ %119, %117 ], [ %151, %148 ]
  %124 = phi ptr [ %101, %117 ], [ %146, %148 ]
  %125 = phi i32 [ %120, %117 ], [ 0, %148 ]
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %142, label %127, !prof !157

127:                                              ; preds = %121
  %128 = add i32 %123, 128
  %129 = shl i32 %125, 6
  %130 = sub i32 %128, %129
  br label %131

131:                                              ; preds = %127, %138
  %132 = phi i32 [ %140, %138 ], [ %125, %127 ]
  %133 = phi i32 [ %139, %138 ], [ %123, %127 ]
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds %struct.bitmap_element_def, ptr %124, i64 0, i32 3, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !89
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %103, !prof !158

138:                                              ; preds = %131
  %139 = add i32 %133, 64
  %140 = add i32 %132, 1
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %131, !prof !159, !llvm.loop !160

142:                                              ; preds = %138, %121
  %143 = phi i64 [ %122, %121 ], [ %136, %138 ]
  %144 = phi i32 [ %123, %121 ], [ %130, %138 ]
  %145 = phi i32 [ %125, %121 ], [ 2, %138 ]
  %146 = load ptr, ptr %124, align 8, !tbaa !161
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148, !prof !162

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.bitmap_element_def, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !150
  %151 = shl i32 %150, 7
  br label %121, !llvm.loop !163

152:                                              ; preds = %142, %110, %103
  %153 = phi i64 [ %104, %103 ], [ %113, %110 ], [ %143, %142 ]
  %154 = phi i32 [ %105, %103 ], [ %105, %110 ], [ %145, %142 ]
  %155 = phi i32 [ %106, %103 ], [ %114, %110 ], [ %144, %142 ]
  %156 = phi ptr [ %107, %103 ], [ %107, %110 ], [ %146, %142 ]
  %157 = phi i1 [ false, %103 ], [ false, %110 ], [ true, %142 ]
  br i1 %157, label %324, label %158, !prof !164

158:                                              ; preds = %152
  %159 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %160 = zext i32 %155 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !70
  %163 = icmp eq ptr %162, null
  br i1 %163, label %321, label %164, !prof !165

164:                                              ; preds = %158
  %165 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %166 = load i32, ptr %162, align 8, !tbaa !113
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, ptr %165, i64 %167
  store i32 0, ptr %168, align 4, !tbaa !85
  %169 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %170 = load i32, ptr %162, align 8, !tbaa !113
  %171 = getelementptr inbounds %struct.sparseset_def, ptr %169, i64 0, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !166
  %173 = icmp ugt i32 %172, %170
  br i1 %173, label %175, label %174, !prof !167

174:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %175

175:                                              ; preds = %174, %164
  %176 = getelementptr inbounds %struct.sparseset_def, ptr %169, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !168
  %178 = zext i32 %170 to i64
  %179 = getelementptr inbounds i32, ptr %177, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !85
  %181 = getelementptr inbounds %struct.sparseset_def, ptr %169, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !137
  %183 = icmp ult i32 %180, %182
  br i1 %183, label %184, label %190, !prof !169

184:                                              ; preds = %175
  %185 = load ptr, ptr %169, align 8, !tbaa !170
  %186 = zext i32 %180 to i64
  %187 = getelementptr inbounds i32, ptr %185, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !85
  %189 = icmp eq i32 %188, %170
  br i1 %189, label %264, label %190, !prof !171

190:                                              ; preds = %184, %175
  %191 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %192 = load i32, ptr %162, align 8, !tbaa !113
  %193 = getelementptr inbounds %struct.sparseset_def, ptr %191, i64 0, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !166
  %195 = icmp ugt i32 %194, %192
  br i1 %195, label %197, label %196, !prof !167

196:                                              ; preds = %190
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %197

197:                                              ; preds = %196, %190
  %198 = getelementptr inbounds %struct.sparseset_def, ptr %191, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !168
  %200 = zext i32 %192 to i64
  %201 = getelementptr inbounds i32, ptr %199, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !85
  %203 = getelementptr inbounds %struct.sparseset_def, ptr %191, i64 0, i32 2
  %204 = load i32, ptr %203, align 8, !tbaa !137
  %205 = icmp ult i32 %202, %204
  br i1 %205, label %206, label %212, !prof !169

206:                                              ; preds = %197
  %207 = load ptr, ptr %191, align 8, !tbaa !170
  %208 = zext i32 %202 to i64
  %209 = getelementptr inbounds i32, ptr %207, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !85
  %211 = icmp eq i32 %210, %192
  br i1 %211, label %217, label %212, !prof !172

212:                                              ; preds = %206, %197
  %213 = add i32 %204, 1
  store i32 %213, ptr %203, align 8, !tbaa !137
  store i32 %204, ptr %201, align 4, !tbaa !85
  %214 = load ptr, ptr %191, align 8, !tbaa !170
  %215 = zext i32 %204 to i64
  %216 = getelementptr inbounds i32, ptr %214, i64 %215
  store i32 %192, ptr %216, align 4, !tbaa !85
  br label %217

217:                                              ; preds = %212, %206
  %218 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %219 = getelementptr inbounds %struct.ira_allocno, ptr %162, i64 0, i32 26
  %220 = load i64, ptr %219, align 8, !tbaa !173
  %221 = or i64 %220, %218
  store i64 %221, ptr %219, align 8, !tbaa !173
  %222 = getelementptr inbounds %struct.ira_allocno, ptr %162, i64 0, i32 27
  %223 = load i64, ptr %222, align 8, !tbaa !174
  %224 = or i64 %223, %218
  store i64 %224, ptr %222, align 8, !tbaa !174
  %225 = getelementptr inbounds %struct.ira_allocno, ptr %162, i64 0, i32 9
  %226 = load i32, ptr %225, align 8, !tbaa !175
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %227, i64 0
  %229 = load i32, ptr %228, align 4, !tbaa !85
  %230 = icmp eq i32 %229, 27
  br i1 %230, label %264, label %231, !prof !176

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.ira_allocno, ptr %162, i64 0, i32 2
  %233 = load i32, ptr @curr_point, align 4
  %234 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %235

235:                                              ; preds = %259, %231
  %236 = phi i64 [ 0, %231 ], [ %260, %259 ]
  %237 = phi i32 [ %229, %231 ], [ %262, %259 ]
  %238 = zext i32 %237 to i64
  %239 = load i32, ptr %232, align 8, !tbaa !177
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %238, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !85
  %243 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %238
  %244 = load i32, ptr %243, align 4, !tbaa !85
  %245 = add nsw i32 %244, %242
  store i32 %245, ptr %243, align 4, !tbaa !85
  %246 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %238
  %247 = load i32, ptr %246, align 4, !tbaa !85
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %254, !prof !178

249:                                              ; preds = %235
  %250 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %238
  %251 = load i32, ptr %250, align 4, !tbaa !85
  %252 = icmp sgt i32 %245, %251
  br i1 %252, label %253, label %254, !prof !179

253:                                              ; preds = %249
  store i32 %233, ptr %246, align 4, !tbaa !85
  br label %254

254:                                              ; preds = %253, %249, %235
  %255 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %234, i64 0, i32 11, i64 %238
  %256 = load i32, ptr %255, align 4, !tbaa !85
  %257 = icmp slt i32 %256, %245
  br i1 %257, label %258, label %259, !prof !180

258:                                              ; preds = %254
  store i32 %245, ptr %255, align 4, !tbaa !85
  br label %259

259:                                              ; preds = %258, %254
  %260 = add nuw nsw i64 %236, 1
  %261 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %227, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !85
  %263 = icmp eq i32 %262, 27
  br i1 %263, label %264, label %235, !prof !181, !llvm.loop !182

264:                                              ; preds = %259, %184, %217
  %265 = icmp slt i32 %155, 53
  br i1 %265, label %266, label %301, !prof !183

266:                                              ; preds = %264
  %267 = shl nuw i64 1, %160
  %268 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %269 = or i64 %268, %267
  store i64 %269, ptr @hard_regs_live, align 8, !tbaa !89
  %270 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %271 = getelementptr inbounds %struct.sparseset_def, ptr %270, i64 0, i32 4
  store i32 0, ptr %271, align 8, !tbaa !184
  %272 = getelementptr inbounds %struct.sparseset_def, ptr %270, i64 0, i32 5
  store i8 1, ptr %272, align 4, !tbaa !185
  %273 = getelementptr inbounds %struct.sparseset_def, ptr %270, i64 0, i32 6
  store i8 1, ptr %273, align 1, !tbaa !139
  %274 = getelementptr inbounds %struct.sparseset_def, ptr %270, i64 0, i32 2
  %275 = load i32, ptr %274, align 8, !tbaa !137
  %276 = load ptr, ptr @ira_allocnos, align 8
  %277 = icmp eq i32 %275, 0
  br i1 %277, label %282, label %278, !prof !186

278:                                              ; preds = %266
  %279 = load ptr, ptr %270, align 8, !tbaa !170
  %280 = load i8, ptr %272, align 4, !tbaa !185
  br label %283

281:                                              ; preds = %283
  store i8 1, ptr %272, align 4, !tbaa !185
  br label %282

282:                                              ; preds = %281, %266
  store i8 0, ptr %273, align 1, !tbaa !139
  br label %321

283:                                              ; preds = %278, %283
  %284 = phi i8 [ %280, %278 ], [ 1, %283 ]
  %285 = phi i32 [ 0, %278 ], [ %299, %283 ]
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, ptr %279, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !85
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %276, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !70
  %292 = getelementptr inbounds %struct.ira_allocno, ptr %291, i64 0, i32 26
  %293 = load i64, ptr %292, align 8, !tbaa !173
  %294 = or i64 %293, %267
  store i64 %294, ptr %292, align 8, !tbaa !173
  %295 = getelementptr inbounds %struct.ira_allocno, ptr %291, i64 0, i32 27
  %296 = load i64, ptr %295, align 8, !tbaa !174
  %297 = or i64 %296, %267
  store i64 %297, ptr %295, align 8, !tbaa !174
  %298 = zext i8 %284 to i32
  %299 = add i32 %285, %298
  store i32 %299, ptr %271, align 8, !tbaa !184
  %300 = icmp ult i32 %299, %275
  br i1 %300, label %283, label %281, !prof !187

301:                                              ; preds = %264
  %302 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %303 = getelementptr inbounds ptr, ptr %302, i64 %160
  %304 = load ptr, ptr %303, align 8, !tbaa !70
  %305 = icmp eq ptr %304, null
  br i1 %305, label %321, label %306, !prof !171

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.ira_allocno, ptr %304, i64 0, i32 20
  %308 = load ptr, ptr %307, align 8, !tbaa !116
  %309 = icmp eq ptr %308, null
  br i1 %309, label %318, label %310, !prof !188

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %308, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !107
  %313 = load i32, ptr @curr_point, align 4, !tbaa !85
  %314 = icmp eq i32 %312, %313
  %315 = add nsw i32 %312, 1
  %316 = icmp eq i32 %315, %313
  %317 = select i1 %314, i1 true, i1 %316, !prof !189
  br i1 %317, label %321, label %318, !prof !190

318:                                              ; preds = %310, %306
  %319 = load i32, ptr @curr_point, align 4, !tbaa !85
  %320 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %304, i32 noundef %319, i32 noundef -1, ptr noundef %308) #17
  store ptr %320, ptr %307, align 8, !tbaa !116
  br label %321

321:                                              ; preds = %318, %310, %301, %282, %158
  %322 = lshr i64 %153, 1
  %323 = add i32 %155, 1
  br label %97, !llvm.loop !191

324:                                              ; preds = %152
  %325 = load i32, ptr @optimize_size, align 4, !tbaa !85
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %345, !prof !152

327:                                              ; preds = %324
  %328 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !85
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %338, label %330, !prof !152

330:                                              ; preds = %327
  %331 = load ptr, ptr @cfun, align 8, !tbaa !70
  %332 = getelementptr inbounds %struct.function, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !192
  %334 = load ptr, ptr %333, align 8, !tbaa !194
  %335 = getelementptr inbounds %struct.basic_block_def, ptr %334, i64 0, i32 8
  %336 = load i64, ptr %335, align 8, !tbaa !196
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %330, %327
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  %340 = load i32, ptr %339, align 8, !tbaa !197
  %341 = add i32 %340, 9
  %342 = icmp ult i32 %341, 19
  br i1 %342, label %345, label %343, !prof !198

343:                                              ; preds = %338
  %344 = sdiv i32 %340, 10
  br label %345

345:                                              ; preds = %330, %343, %338, %324
  %346 = phi i32 [ 1000, %324 ], [ %344, %343 ], [ 1, %338 ], [ 1000, %330 ]
  %347 = tail call i32 @llvm.umax.i32(i32 %346, i32 1)
  %348 = load i32, ptr @last_call_num, align 4, !tbaa !85
  %349 = add nsw i32 %348, 1
  store i32 %349, ptr @last_call_num, align 4, !tbaa !85
  %350 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %351 = load ptr, ptr %350, align 8, !tbaa !81
  %352 = getelementptr inbounds %struct.rtl_bb_info, ptr %351, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !81
  %354 = icmp eq ptr %353, null
  br i1 %354, label %1779, label %355, !prof !99

355:                                              ; preds = %345, %1775
  %356 = phi ptr [ %1777, %1775 ], [ %353, %345 ]
  %357 = load ptr, ptr %350, align 8, !tbaa !81
  %358 = load ptr, ptr %357, align 8, !tbaa !199
  %359 = getelementptr inbounds %struct.rtx_def, ptr %358, i64 0, i32 1, i32 0, i32 0, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !81
  %361 = icmp eq ptr %356, %360
  br i1 %361, label %1779, label %362, !prof !201

362:                                              ; preds = %355
  %363 = load i32, ptr %356, align 8
  %364 = and i32 %363, 65535
  %365 = add nsw i32 %364, -11
  %366 = icmp ult i32 %365, -3
  br i1 %366, label %1775, label %367, !prof !202

367:                                              ; preds = %362
  %368 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !85
  %369 = icmp sgt i32 %368, 2
  %370 = load ptr, ptr @ira_dump_file, align 8
  %371 = icmp ne ptr %370, null
  %372 = select i1 %369, i1 %371, i1 false, !prof !203
  br i1 %372, label %373, label %383, !prof !204

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %375 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1
  %376 = load i32, ptr %375, align 8, !tbaa !81
  %377 = load ptr, ptr %374, align 8, !tbaa !205
  %378 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !206
  %380 = load i32, ptr %379, align 8, !tbaa !207
  %381 = load i32, ptr @curr_point, align 4, !tbaa !85
  %382 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %370, ptr noundef nonnull @.str.4, i32 noundef %376, i32 noundef %380, i32 noundef %381)
  br label %383

383:                                              ; preds = %373, %367
  %384 = load i32, ptr %356, align 8
  %385 = and i32 %384, 65535
  %386 = icmp eq i32 %385, 10
  %387 = load ptr, ptr @df, align 8, !tbaa !70
  %388 = getelementptr inbounds %struct.df, ptr %387, i64 0, i32 10
  %389 = load ptr, ptr %388, align 8, !tbaa !211
  %390 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1
  %391 = load i32, ptr %390, align 8, !tbaa !81
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds ptr, ptr %389, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !70
  %395 = getelementptr inbounds %struct.df_insn_info, ptr %394, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !214
  %397 = load ptr, ptr %396, align 8, !tbaa !70
  %398 = icmp eq ptr %397, null
  br i1 %398, label %715, label %399, !prof !216

399:                                              ; preds = %383, %711
  %400 = phi ptr [ %713, %711 ], [ %397, %383 ]
  %401 = phi ptr [ %712, %711 ], [ %396, %383 ]
  br i1 %386, label %402, label %406, !prof !217

402:                                              ; preds = %399
  %403 = load i32, ptr %400, align 8
  %404 = and i32 %403, 4194304
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %711, !prof !218

406:                                              ; preds = %402, %399
  %407 = getelementptr inbounds %struct.df_base_ref, ptr %400, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !81
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 39
  br i1 %411, label %412, label %415, !prof !219

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !81
  br label %415

415:                                              ; preds = %406, %412
  %416 = phi ptr [ %414, %412 ], [ %408, %406 ]
  %417 = load i32, ptr %416, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 37
  br i1 %419, label %421, label %420, !prof !220

420:                                              ; preds = %415
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 252, ptr noundef nonnull @.str.6) #17
  br label %421

421:                                              ; preds = %420, %415
  %422 = getelementptr inbounds %struct.rtx_def, ptr %416, i64 0, i32 1
  %423 = load i32, ptr %422, align 8, !tbaa !81
  %424 = icmp sgt i32 %423, 52
  %425 = zext nneg i32 %423 to i64
  br i1 %424, label %426, label %578, !prof !221

426:                                              ; preds = %421
  %427 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %428 = getelementptr inbounds ptr, ptr %427, i64 %425
  %429 = load ptr, ptr %428, align 8, !tbaa !70
  %430 = icmp eq ptr %429, null
  br i1 %430, label %558, label %431, !prof !222

431:                                              ; preds = %426
  %432 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %433 = load i32, ptr %429, align 8, !tbaa !113
  %434 = getelementptr inbounds %struct.sparseset_def, ptr %432, i64 0, i32 3
  %435 = load i32, ptr %434, align 4, !tbaa !166
  %436 = icmp ugt i32 %435, %433
  br i1 %436, label %438, label %437, !prof !223

437:                                              ; preds = %431
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %438

438:                                              ; preds = %437, %431
  %439 = getelementptr inbounds %struct.sparseset_def, ptr %432, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !168
  %441 = zext i32 %433 to i64
  %442 = getelementptr inbounds i32, ptr %440, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !85
  %444 = getelementptr inbounds %struct.sparseset_def, ptr %432, i64 0, i32 2
  %445 = load i32, ptr %444, align 8, !tbaa !137
  %446 = icmp ult i32 %443, %445
  br i1 %446, label %447, label %458, !prof !224

447:                                              ; preds = %438
  %448 = load ptr, ptr %432, align 8, !tbaa !170
  %449 = zext i32 %443 to i64
  %450 = getelementptr inbounds i32, ptr %448, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !85
  %452 = icmp eq i32 %451, %433
  br i1 %452, label %453, label %458, !prof !225

453:                                              ; preds = %447
  %454 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %455 = load i32, ptr %429, align 8, !tbaa !113
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, ptr %454, i64 %456
  store i32 0, ptr %457, align 4, !tbaa !85
  br label %711

458:                                              ; preds = %447, %438
  %459 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %460 = load i32, ptr %429, align 8, !tbaa !113
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, ptr %459, i64 %461
  store i32 0, ptr %462, align 4, !tbaa !85
  %463 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %464 = load i32, ptr %429, align 8, !tbaa !113
  %465 = getelementptr inbounds %struct.sparseset_def, ptr %463, i64 0, i32 3
  %466 = load i32, ptr %465, align 4, !tbaa !166
  %467 = icmp ugt i32 %466, %464
  br i1 %467, label %469, label %468, !prof !167

468:                                              ; preds = %458
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %469

469:                                              ; preds = %468, %458
  %470 = getelementptr inbounds %struct.sparseset_def, ptr %463, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !168
  %472 = zext i32 %464 to i64
  %473 = getelementptr inbounds i32, ptr %471, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !85
  %475 = getelementptr inbounds %struct.sparseset_def, ptr %463, i64 0, i32 2
  %476 = load i32, ptr %475, align 8, !tbaa !137
  %477 = icmp ult i32 %474, %476
  br i1 %477, label %478, label %484, !prof !169

478:                                              ; preds = %469
  %479 = load ptr, ptr %463, align 8, !tbaa !170
  %480 = zext i32 %474 to i64
  %481 = getelementptr inbounds i32, ptr %479, i64 %480
  %482 = load i32, ptr %481, align 4, !tbaa !85
  %483 = icmp eq i32 %482, %464
  br i1 %483, label %558, label %484, !prof !171

484:                                              ; preds = %478, %469
  %485 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %486 = load i32, ptr %429, align 8, !tbaa !113
  %487 = getelementptr inbounds %struct.sparseset_def, ptr %485, i64 0, i32 3
  %488 = load i32, ptr %487, align 4, !tbaa !166
  %489 = icmp ugt i32 %488, %486
  br i1 %489, label %491, label %490, !prof !167

490:                                              ; preds = %484
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %491

491:                                              ; preds = %490, %484
  %492 = getelementptr inbounds %struct.sparseset_def, ptr %485, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !168
  %494 = zext i32 %486 to i64
  %495 = getelementptr inbounds i32, ptr %493, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !85
  %497 = getelementptr inbounds %struct.sparseset_def, ptr %485, i64 0, i32 2
  %498 = load i32, ptr %497, align 8, !tbaa !137
  %499 = icmp ult i32 %496, %498
  br i1 %499, label %500, label %506, !prof !169

500:                                              ; preds = %491
  %501 = load ptr, ptr %485, align 8, !tbaa !170
  %502 = zext i32 %496 to i64
  %503 = getelementptr inbounds i32, ptr %501, i64 %502
  %504 = load i32, ptr %503, align 4, !tbaa !85
  %505 = icmp eq i32 %504, %486
  br i1 %505, label %511, label %506, !prof !172

506:                                              ; preds = %500, %491
  %507 = add i32 %498, 1
  store i32 %507, ptr %497, align 8, !tbaa !137
  store i32 %498, ptr %495, align 4, !tbaa !85
  %508 = load ptr, ptr %485, align 8, !tbaa !170
  %509 = zext i32 %498 to i64
  %510 = getelementptr inbounds i32, ptr %508, i64 %509
  store i32 %486, ptr %510, align 4, !tbaa !85
  br label %511

511:                                              ; preds = %506, %500
  %512 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %513 = getelementptr inbounds %struct.ira_allocno, ptr %429, i64 0, i32 26
  %514 = load i64, ptr %513, align 8, !tbaa !173
  %515 = or i64 %514, %512
  store i64 %515, ptr %513, align 8, !tbaa !173
  %516 = getelementptr inbounds %struct.ira_allocno, ptr %429, i64 0, i32 27
  %517 = load i64, ptr %516, align 8, !tbaa !174
  %518 = or i64 %517, %512
  store i64 %518, ptr %516, align 8, !tbaa !174
  %519 = getelementptr inbounds %struct.ira_allocno, ptr %429, i64 0, i32 9
  %520 = load i32, ptr %519, align 8, !tbaa !175
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %521, i64 0
  %523 = load i32, ptr %522, align 4, !tbaa !85
  %524 = icmp eq i32 %523, 27
  br i1 %524, label %558, label %525, !prof !176

525:                                              ; preds = %511
  %526 = getelementptr inbounds %struct.ira_allocno, ptr %429, i64 0, i32 2
  %527 = load i32, ptr @curr_point, align 4
  %528 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %529

529:                                              ; preds = %553, %525
  %530 = phi i64 [ 0, %525 ], [ %554, %553 ]
  %531 = phi i32 [ %523, %525 ], [ %556, %553 ]
  %532 = zext i32 %531 to i64
  %533 = load i32, ptr %526, align 8, !tbaa !177
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %532, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !85
  %537 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %532
  %538 = load i32, ptr %537, align 4, !tbaa !85
  %539 = add nsw i32 %538, %536
  store i32 %539, ptr %537, align 4, !tbaa !85
  %540 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %532
  %541 = load i32, ptr %540, align 4, !tbaa !85
  %542 = icmp slt i32 %541, 0
  br i1 %542, label %543, label %548, !prof !178

543:                                              ; preds = %529
  %544 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %532
  %545 = load i32, ptr %544, align 4, !tbaa !85
  %546 = icmp sgt i32 %539, %545
  br i1 %546, label %547, label %548, !prof !179

547:                                              ; preds = %543
  store i32 %527, ptr %540, align 4, !tbaa !85
  br label %548

548:                                              ; preds = %547, %543, %529
  %549 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %528, i64 0, i32 11, i64 %532
  %550 = load i32, ptr %549, align 4, !tbaa !85
  %551 = icmp slt i32 %550, %539
  br i1 %551, label %552, label %553, !prof !180

552:                                              ; preds = %548
  store i32 %539, ptr %549, align 4, !tbaa !85
  br label %553

553:                                              ; preds = %552, %548
  %554 = add nuw nsw i64 %530, 1
  %555 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %521, i64 %554
  %556 = load i32, ptr %555, align 4, !tbaa !85
  %557 = icmp eq i32 %556, 27
  br i1 %557, label %558, label %529, !prof !181, !llvm.loop !182

558:                                              ; preds = %553, %511, %478, %426
  %559 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %560 = getelementptr inbounds ptr, ptr %559, i64 %425
  %561 = load ptr, ptr %560, align 8, !tbaa !70
  %562 = icmp eq ptr %561, null
  br i1 %562, label %711, label %563, !prof !171

563:                                              ; preds = %558
  %564 = getelementptr inbounds %struct.ira_allocno, ptr %561, i64 0, i32 20
  %565 = load ptr, ptr %564, align 8, !tbaa !116
  %566 = icmp eq ptr %565, null
  br i1 %566, label %575, label %567, !prof !188

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %565, i64 0, i32 2
  %569 = load i32, ptr %568, align 4, !tbaa !107
  %570 = load i32, ptr @curr_point, align 4, !tbaa !85
  %571 = icmp eq i32 %569, %570
  %572 = add nsw i32 %569, 1
  %573 = icmp eq i32 %572, %570
  %574 = select i1 %571, i1 true, i1 %573, !prof !189
  br i1 %574, label %711, label %575, !prof !190

575:                                              ; preds = %567, %563
  %576 = load i32, ptr @curr_point, align 4, !tbaa !85
  %577 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %561, i32 noundef %576, i32 noundef -1, ptr noundef %565) #17
  store ptr %577, ptr %564, align 8, !tbaa !116
  br label %711

578:                                              ; preds = %421
  %579 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !89
  %580 = shl nuw i64 1, %425
  %581 = and i64 %579, %580
  %582 = icmp eq i64 %581, 0
  br i1 %582, label %583, label %711, !prof !226

583:                                              ; preds = %578
  %584 = sext i32 %423 to i64
  %585 = load i32, ptr %416, align 8
  %586 = lshr i32 %585, 16
  %587 = and i32 %586, 255
  %588 = zext nneg i32 %587 to i64
  %589 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %584, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !81
  %591 = icmp eq i8 %590, 0
  br i1 %591, label %711, label %592, !prof !227

592:                                              ; preds = %583
  %593 = zext i8 %590 to i32
  %594 = add nsw i32 %423, %593
  %595 = sext i32 %594 to i64
  br label %596

596:                                              ; preds = %708, %592
  %597 = phi i64 [ %584, %592 ], [ %709, %708 ]
  %598 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %599 = shl nuw i64 1, %597
  %600 = and i64 %598, %599
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %708, !prof !228

602:                                              ; preds = %596
  %603 = load i64, ptr @eliminable_regset, align 8, !tbaa !89
  %604 = and i64 %603, %599
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %606, label %708, !prof !229

606:                                              ; preds = %602
  %607 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %597
  %608 = load i32, ptr %607, align 4, !tbaa !85
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %609, i64 0
  %611 = load i32, ptr %610, align 4, !tbaa !85
  %612 = icmp eq i32 %611, 27
  br i1 %612, label %635, label %613, !prof !186

613:                                              ; preds = %606
  %614 = load i32, ptr @curr_point, align 4
  br label %615

615:                                              ; preds = %630, %613
  %616 = phi i64 [ 0, %613 ], [ %631, %630 ]
  %617 = phi i32 [ %611, %613 ], [ %633, %630 ]
  %618 = zext i32 %617 to i64
  %619 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %618
  %620 = load i32, ptr %619, align 4, !tbaa !85
  %621 = add nsw i32 %620, 1
  store i32 %621, ptr %619, align 4, !tbaa !85
  %622 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %618
  %623 = load i32, ptr %622, align 4, !tbaa !85
  %624 = icmp slt i32 %623, 0
  br i1 %624, label %625, label %630, !prof !230

625:                                              ; preds = %615
  %626 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %618
  %627 = load i32, ptr %626, align 4, !tbaa !85
  %628 = icmp slt i32 %620, %627
  br i1 %628, label %630, label %629, !prof !231

629:                                              ; preds = %625
  store i32 %614, ptr %622, align 4, !tbaa !85
  br label %630

630:                                              ; preds = %629, %625, %615
  %631 = add nuw nsw i64 %616, 1
  %632 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %609, i64 %631
  %633 = load i32, ptr %632, align 4, !tbaa !85
  %634 = icmp eq i32 %633, 27
  br i1 %634, label %635, label %615, !prof !232, !llvm.loop !233

635:                                              ; preds = %630, %606
  %636 = icmp slt i64 %597, 53
  br i1 %636, label %637, label %668, !prof !183

637:                                              ; preds = %635
  %638 = or i64 %598, %599
  store i64 %638, ptr @hard_regs_live, align 8, !tbaa !89
  %639 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %640 = getelementptr inbounds %struct.sparseset_def, ptr %639, i64 0, i32 4
  store i32 0, ptr %640, align 8, !tbaa !184
  %641 = getelementptr inbounds %struct.sparseset_def, ptr %639, i64 0, i32 5
  store i8 1, ptr %641, align 4, !tbaa !185
  %642 = getelementptr inbounds %struct.sparseset_def, ptr %639, i64 0, i32 6
  store i8 1, ptr %642, align 1, !tbaa !139
  %643 = getelementptr inbounds %struct.sparseset_def, ptr %639, i64 0, i32 2
  %644 = load i32, ptr %643, align 8, !tbaa !137
  %645 = load ptr, ptr @ira_allocnos, align 8
  %646 = icmp eq i32 %644, 0
  br i1 %646, label %651, label %647, !prof !186

647:                                              ; preds = %637
  %648 = load ptr, ptr %639, align 8, !tbaa !170
  %649 = zext i32 %644 to i64
  br label %652

650:                                              ; preds = %652
  store i8 1, ptr %641, align 4, !tbaa !185
  br label %651

651:                                              ; preds = %650, %637
  store i8 0, ptr %642, align 1, !tbaa !139
  br label %688

652:                                              ; preds = %652, %647
  %653 = phi i64 [ %665, %652 ], [ 0, %647 ]
  %654 = getelementptr inbounds i32, ptr %648, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !85
  %656 = zext i32 %655 to i64
  %657 = getelementptr inbounds ptr, ptr %645, i64 %656
  %658 = load ptr, ptr %657, align 8, !tbaa !70
  %659 = getelementptr inbounds %struct.ira_allocno, ptr %658, i64 0, i32 26
  %660 = load i64, ptr %659, align 8, !tbaa !173
  %661 = or i64 %660, %599
  store i64 %661, ptr %659, align 8, !tbaa !173
  %662 = getelementptr inbounds %struct.ira_allocno, ptr %658, i64 0, i32 27
  %663 = load i64, ptr %662, align 8, !tbaa !174
  %664 = or i64 %663, %599
  store i64 %664, ptr %662, align 8, !tbaa !174
  %665 = add nuw nsw i64 %653, 1
  %666 = trunc i64 %665 to i32
  store i32 %666, ptr %640, align 8, !tbaa !184
  %667 = icmp eq i64 %665, %649
  br i1 %667, label %650, label %652, !prof !234

668:                                              ; preds = %635
  %669 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %670 = getelementptr inbounds ptr, ptr %669, i64 %597
  %671 = load ptr, ptr %670, align 8, !tbaa !70
  %672 = icmp eq ptr %671, null
  br i1 %672, label %688, label %673, !prof !171

673:                                              ; preds = %668
  %674 = getelementptr inbounds %struct.ira_allocno, ptr %671, i64 0, i32 20
  %675 = load ptr, ptr %674, align 8, !tbaa !116
  %676 = icmp eq ptr %675, null
  br i1 %676, label %685, label %677, !prof !188

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %675, i64 0, i32 2
  %679 = load i32, ptr %678, align 4, !tbaa !107
  %680 = load i32, ptr @curr_point, align 4, !tbaa !85
  %681 = icmp eq i32 %679, %680
  %682 = add nsw i32 %679, 1
  %683 = icmp eq i32 %682, %680
  %684 = select i1 %681, i1 true, i1 %683, !prof !189
  br i1 %684, label %688, label %685, !prof !190

685:                                              ; preds = %677, %673
  %686 = load i32, ptr @curr_point, align 4, !tbaa !85
  %687 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %671, i32 noundef %686, i32 noundef -1, ptr noundef %675) #17
  store ptr %687, ptr %674, align 8, !tbaa !116
  br label %688

688:                                              ; preds = %685, %677, %668, %651
  %689 = load i32, ptr %610, align 4, !tbaa !85
  %690 = icmp eq i32 %689, 27
  br i1 %690, label %708, label %691, !prof !186

691:                                              ; preds = %688
  %692 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %693

693:                                              ; preds = %703, %691
  %694 = phi i64 [ 0, %691 ], [ %704, %703 ]
  %695 = phi i32 [ %689, %691 ], [ %706, %703 ]
  %696 = zext i32 %695 to i64
  %697 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %692, i64 0, i32 11, i64 %696
  %698 = load i32, ptr %697, align 4, !tbaa !85
  %699 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %696
  %700 = load i32, ptr %699, align 4, !tbaa !85
  %701 = icmp slt i32 %698, %700
  br i1 %701, label %702, label %703, !prof !235

702:                                              ; preds = %693
  store i32 %700, ptr %697, align 4, !tbaa !85
  br label %703

703:                                              ; preds = %702, %693
  %704 = add nuw nsw i64 %694, 1
  %705 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %609, i64 %704
  %706 = load i32, ptr %705, align 4, !tbaa !85
  %707 = icmp eq i32 %706, 27
  br i1 %707, label %708, label %693, !prof !232, !llvm.loop !236

708:                                              ; preds = %703, %688, %602, %596
  %709 = add nsw i64 %597, 1
  %710 = icmp slt i64 %709, %595
  br i1 %710, label %596, label %711, !prof !227, !llvm.loop !237

711:                                              ; preds = %708, %583, %578, %575, %567, %558, %453, %402
  %712 = getelementptr inbounds ptr, ptr %401, i64 1
  %713 = load ptr, ptr %712, align 8, !tbaa !70
  %714 = icmp eq ptr %713, null
  br i1 %714, label %715, label %399, !prof !238, !llvm.loop !239

715:                                              ; preds = %711, %383
  %716 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 1
  %717 = load ptr, ptr %716, align 8, !tbaa !81
  %718 = load i32, ptr %717, align 8
  %719 = and i32 %718, 65535
  %720 = icmp eq i32 %719, 15
  br i1 %720, label %721, label %782, !prof !240

721:                                              ; preds = %715
  %722 = tail call i32 @multiple_sets(ptr noundef nonnull %356) #17
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %782, label %724, !prof !241

724:                                              ; preds = %721
  %725 = load ptr, ptr @df, align 8, !tbaa !70
  %726 = getelementptr inbounds %struct.df, ptr %725, i64 0, i32 10
  %727 = load ptr, ptr %726, align 8, !tbaa !211
  %728 = load i32, ptr %390, align 8, !tbaa !81
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds ptr, ptr %727, i64 %729
  %731 = load ptr, ptr %730, align 8, !tbaa !70
  %732 = getelementptr inbounds %struct.df_insn_info, ptr %731, i64 0, i32 2
  %733 = load ptr, ptr %732, align 8, !tbaa !242
  %734 = load ptr, ptr %733, align 8, !tbaa !70
  %735 = icmp eq ptr %734, null
  br i1 %735, label %782, label %736, !prof !243

736:                                              ; preds = %724, %778
  %737 = phi ptr [ %780, %778 ], [ %734, %724 ]
  %738 = phi ptr [ %779, %778 ], [ %733, %724 ]
  %739 = getelementptr inbounds %struct.df_base_ref, ptr %737, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !81
  %741 = load ptr, ptr %716, align 8, !tbaa !81
  %742 = getelementptr inbounds %struct.rtx_def, ptr %741, i64 0, i32 1
  %743 = load ptr, ptr %742, align 8, !tbaa !81
  %744 = load i32, ptr %743, align 8, !tbaa !244
  %745 = icmp sgt i32 %744, 0
  br i1 %745, label %746, label %778, !prof !246

746:                                              ; preds = %736
  %747 = zext nneg i32 %744 to i64
  br label %748

748:                                              ; preds = %746, %776
  %749 = phi i64 [ %747, %746 ], [ %750, %776 ]
  %750 = add nsw i64 %749, -1
  %751 = load ptr, ptr %716, align 8, !tbaa !81
  %752 = getelementptr inbounds %struct.rtx_def, ptr %751, i64 0, i32 1
  %753 = load ptr, ptr %752, align 8, !tbaa !81
  %754 = getelementptr inbounds %struct.rtvec_def, ptr %753, i64 0, i32 1, i64 %750
  %755 = load ptr, ptr %754, align 8, !tbaa !70
  %756 = load i32, ptr %755, align 8
  %757 = and i32 %756, 65535
  %758 = icmp eq i32 %757, 23
  br i1 %758, label %759, label %776, !prof !247

759:                                              ; preds = %748
  %760 = getelementptr inbounds %struct.rtx_def, ptr %755, i64 0, i32 1
  %761 = load ptr, ptr %760, align 8, !tbaa !81
  %762 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %740, ptr noundef %761) #17
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %776, label %764, !prof !247

764:                                              ; preds = %759
  %765 = load ptr, ptr %738, align 8, !tbaa !70
  %766 = getelementptr inbounds %struct.df_base_ref, ptr %765, i64 0, i32 1
  %767 = load ptr, ptr %766, align 8, !tbaa !81
  %768 = load i32, ptr %767, align 8
  %769 = and i32 %768, 65535
  %770 = icmp eq i32 %769, 39
  br i1 %770, label %771, label %774

771:                                              ; preds = %764
  %772 = getelementptr inbounds %struct.rtx_def, ptr %767, i64 0, i32 1
  %773 = load ptr, ptr %772, align 8, !tbaa !81
  br label %774

774:                                              ; preds = %764, %771
  %775 = phi ptr [ %773, %771 ], [ %767, %764 ]
  tail call fastcc void @mark_reg_live(ptr noundef %775)
  br label %778

776:                                              ; preds = %748, %759
  %777 = icmp sgt i64 %749, 1
  br i1 %777, label %748, label %778, !prof !248, !llvm.loop !249

778:                                              ; preds = %776, %736, %774
  %779 = getelementptr inbounds ptr, ptr %738, i64 1
  %780 = load ptr, ptr %779, align 8, !tbaa !70
  %781 = icmp eq ptr %780, null
  br i1 %781, label %782, label %736, !prof !250, !llvm.loop !251

782:                                              ; preds = %778, %724, %721, %715
  tail call void @extract_insn(ptr noundef nonnull %356) #17
  tail call void @preprocess_constraints() #17
  %783 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %784 = icmp sgt i8 %783, 0
  br i1 %784, label %785, label %958, !prof !252

785:                                              ; preds = %782, %953
  %786 = phi i64 [ %954, %953 ], [ 0, %782 ]
  %787 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !70
  %789 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %786
  %790 = load i32, ptr %789, align 4, !tbaa !85
  %791 = add i32 %790, -1
  %792 = icmp ult i32 %791, 2
  br i1 %792, label %793, label %953, !prof !253

793:                                              ; preds = %785
  %794 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %795 = icmp eq i8 %794, 0
  br i1 %795, label %800, label %796, !prof !254

796:                                              ; preds = %793
  %797 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %786
  %798 = load ptr, ptr %797, align 8, !tbaa !70
  %799 = tail call fastcc i32 @single_reg_class(ptr noundef %798, ptr noundef %788)
  br label %800

800:                                              ; preds = %796, %793
  %801 = phi i32 [ %799, %796 ], [ 0, %793 ]
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %953, label %803, !prof !255

803:                                              ; preds = %800
  %804 = load i32, ptr %788, align 8
  %805 = and i32 %804, 65535
  %806 = icmp eq i32 %805, 39
  br i1 %806, label %807, label %810, !prof !256

807:                                              ; preds = %803
  %808 = getelementptr inbounds %struct.rtx_def, ptr %788, i64 0, i32 1
  %809 = load ptr, ptr %808, align 8, !tbaa !81
  br label %810

810:                                              ; preds = %807, %803
  %811 = phi ptr [ %809, %807 ], [ %788, %803 ]
  %812 = load i32, ptr %811, align 8
  %813 = and i32 %812, 65535
  %814 = icmp eq i32 %813, 37
  br i1 %814, label %815, label %913, !prof !256

815:                                              ; preds = %810
  %816 = getelementptr inbounds %struct.rtx_def, ptr %811, i64 0, i32 1
  %817 = load i32, ptr %816, align 8, !tbaa !81
  %818 = icmp sgt i32 %817, 52
  br i1 %818, label %819, label %913, !prof !256

819:                                              ; preds = %815
  %820 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %821 = zext nneg i32 %817 to i64
  %822 = getelementptr inbounds ptr, ptr %820, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !70
  %824 = getelementptr inbounds %struct.ira_allocno, ptr %823, i64 0, i32 2
  %825 = load i32, ptr %824, align 8, !tbaa !177
  %826 = getelementptr inbounds %struct.ira_allocno, ptr %823, i64 0, i32 9
  %827 = load i32, ptr %826, align 8, !tbaa !175
  %828 = zext i32 %801 to i64
  %829 = zext i32 %827 to i64
  %830 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %828, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !85
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %913, label %833, !prof !257

833:                                              ; preds = %819
  %834 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %828
  %835 = load i32, ptr %834, align 4, !tbaa !85
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %913, label %837, !prof !257

837:                                              ; preds = %833
  %838 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %828
  %839 = load i16, ptr %838, align 2, !tbaa !258
  %840 = sext i16 %839 to i64
  %841 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %829, i64 %840
  %842 = load i16, ptr %841, align 2, !tbaa !258
  %843 = icmp sgt i16 %842, -1
  br i1 %843, label %844, label %913, !prof !256

844:                                              ; preds = %837
  %845 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %828
  %846 = load i32, ptr %845, align 4, !tbaa !85
  %847 = tail call i32 @reg_classes_intersect_p(i32 noundef %801, i32 noundef 13) #17
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %856, !prof !257

849:                                              ; preds = %844
  %850 = zext i32 %825 to i64
  %851 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !81
  %853 = and i8 %852, -2
  %854 = icmp eq i8 %853, 10
  %855 = select i1 %854, i32 2, i32 1
  br label %867

856:                                              ; preds = %844
  %857 = icmp eq i32 %825, 40
  br i1 %857, label %863, label %858, !prof !257

858:                                              ; preds = %856
  %859 = zext i32 %825 to i64
  %860 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !81
  %862 = zext i8 %861 to i32
  br label %863

863:                                              ; preds = %858, %856
  %864 = phi i32 [ %862, %858 ], [ 12, %856 ]
  %865 = add nuw nsw i32 %864, 3
  %866 = lshr i32 %865, 2
  br label %867

867:                                              ; preds = %863, %849
  %868 = phi i32 [ %855, %849 ], [ %866, %863 ]
  %869 = icmp ugt i32 %846, %868
  br i1 %869, label %913, label %870, !prof !257

870:                                              ; preds = %867
  %871 = zext i32 %825 to i64
  %872 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %871
  %873 = load ptr, ptr %872, align 8, !tbaa !70
  %874 = icmp eq ptr %873, null
  br i1 %874, label %875, label %876

875:                                              ; preds = %870
  tail call void @ira_init_register_move_cost(i32 noundef %825) #17
  br label %876

876:                                              ; preds = %875, %870
  %877 = load ptr, ptr %872, align 8, !tbaa !70
  %878 = getelementptr inbounds [27 x i16], ptr %877, i64 %828, i64 %829
  %879 = load i16, ptr %878, align 2, !tbaa !258
  %880 = zext i16 %879 to i32
  %881 = mul nsw i32 %347, %880
  %882 = getelementptr inbounds %struct.ira_allocno, ptr %823, i64 0, i32 35
  %883 = load ptr, ptr %882, align 8, !tbaa !70
  %884 = icmp eq ptr %883, null
  br i1 %884, label %885, label %893, !prof !256

885:                                              ; preds = %876
  %886 = tail call ptr @ira_allocate_cost_vector(i32 noundef %827) #17
  store ptr %886, ptr %882, align 8, !tbaa !70
  %887 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %829
  %888 = load i32, ptr %887, align 4, !tbaa !85
  %889 = icmp sgt i32 %888, 0
  br i1 %889, label %890, label %893, !prof !259

890:                                              ; preds = %885
  %891 = zext nneg i32 %888 to i64
  %892 = shl nuw nsw i64 %891, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %886, i8 0, i64 %892, i1 false), !tbaa !85
  br label %893

893:                                              ; preds = %890, %885, %876
  %894 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %829, i64 %871
  %895 = load i32, ptr %894, align 4, !tbaa !85
  %896 = icmp sgt i32 %895, 0
  br i1 %896, label %897, label %913, !prof !259

897:                                              ; preds = %893
  %898 = load ptr, ptr %882, align 8, !tbaa !260
  %899 = zext nneg i32 %895 to i64
  br label %900

900:                                              ; preds = %900, %897
  %901 = phi i64 [ 0, %897 ], [ %911, %900 ]
  %902 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %828, i64 %901
  %903 = load i16, ptr %902, align 2, !tbaa !258
  %904 = sext i16 %903 to i64
  %905 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %829, i64 %904
  %906 = load i16, ptr %905, align 2, !tbaa !258
  %907 = sext i16 %906 to i64
  %908 = getelementptr inbounds i32, ptr %898, i64 %907
  %909 = load i32, ptr %908, align 4, !tbaa !85
  %910 = sub nsw i32 %909, %881
  store i32 %910, ptr %908, align 4, !tbaa !85
  %911 = add nuw nsw i64 %901, 1
  %912 = icmp eq i64 %911, %899
  br i1 %912, label %913, label %900, !prof !259, !llvm.loop !261

913:                                              ; preds = %900, %893, %867, %837, %833, %819, %815, %810
  %914 = phi ptr [ null, %815 ], [ null, %810 ], [ %823, %867 ], [ %823, %837 ], [ %823, %833 ], [ %823, %819 ], [ %823, %893 ], [ %823, %900 ]
  %915 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %916 = getelementptr inbounds %struct.sparseset_def, ptr %915, i64 0, i32 4
  store i32 0, ptr %916, align 8, !tbaa !184
  %917 = getelementptr inbounds %struct.sparseset_def, ptr %915, i64 0, i32 5
  store i8 1, ptr %917, align 4, !tbaa !185
  %918 = getelementptr inbounds %struct.sparseset_def, ptr %915, i64 0, i32 6
  store i8 1, ptr %918, align 1, !tbaa !139
  %919 = getelementptr inbounds %struct.sparseset_def, ptr %915, i64 0, i32 2
  %920 = load i32, ptr %919, align 8, !tbaa !137
  %921 = load ptr, ptr @ira_allocnos, align 8
  %922 = zext i32 %801 to i64
  %923 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %922
  %924 = icmp eq i32 %920, 0
  br i1 %924, label %929, label %925, !prof !262

925:                                              ; preds = %913
  %926 = load ptr, ptr %915, align 8, !tbaa !170
  %927 = load i8, ptr %917, align 4, !tbaa !185
  br label %930

928:                                              ; preds = %949
  store i8 1, ptr %917, align 4, !tbaa !185
  br label %929

929:                                              ; preds = %928, %913
  store i8 0, ptr %918, align 1, !tbaa !139
  br label %953

930:                                              ; preds = %925, %949
  %931 = phi i8 [ %927, %925 ], [ 1, %949 ]
  %932 = phi i32 [ 0, %925 ], [ %951, %949 ]
  %933 = zext i32 %932 to i64
  %934 = getelementptr inbounds i32, ptr %926, i64 %933
  %935 = load i32, ptr %934, align 4, !tbaa !85
  %936 = zext i32 %935 to i64
  %937 = getelementptr inbounds ptr, ptr %921, i64 %936
  %938 = load ptr, ptr %937, align 8, !tbaa !70
  %939 = icmp eq ptr %938, %914
  br i1 %939, label %949, label %940, !prof !263

940:                                              ; preds = %930
  %941 = load i64, ptr %923, align 8, !tbaa !89
  %942 = getelementptr inbounds %struct.ira_allocno, ptr %938, i64 0, i32 26
  %943 = load i64, ptr %942, align 8, !tbaa !173
  %944 = or i64 %943, %941
  store i64 %944, ptr %942, align 8, !tbaa !173
  %945 = load i64, ptr %923, align 8, !tbaa !89
  %946 = getelementptr inbounds %struct.ira_allocno, ptr %938, i64 0, i32 27
  %947 = load i64, ptr %946, align 8, !tbaa !174
  %948 = or i64 %947, %945
  store i64 %948, ptr %946, align 8, !tbaa !174
  br label %949

949:                                              ; preds = %940, %930
  %950 = zext i8 %931 to i32
  %951 = add i32 %932, %950
  store i32 %951, ptr %916, align 8, !tbaa !184
  %952 = icmp ult i32 %951, %920
  br i1 %952, label %930, label %928, !prof !264

953:                                              ; preds = %929, %800, %785
  %954 = add nuw nsw i64 %786, 1
  %955 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %956 = sext i8 %955 to i64
  %957 = icmp slt i64 %954, %956
  br i1 %957, label %785, label %958, !prof !265, !llvm.loop !266

958:                                              ; preds = %953, %782
  %959 = load ptr, ptr @df, align 8, !tbaa !70
  %960 = getelementptr inbounds %struct.df, ptr %959, i64 0, i32 10
  %961 = load ptr, ptr %960, align 8, !tbaa !211
  %962 = load i32, ptr %390, align 8, !tbaa !81
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds ptr, ptr %961, i64 %963
  %965 = load ptr, ptr %964, align 8, !tbaa !70
  %966 = getelementptr inbounds %struct.df_insn_info, ptr %965, i64 0, i32 1
  %967 = load ptr, ptr %966, align 8, !tbaa !214
  %968 = load ptr, ptr %967, align 8, !tbaa !70
  %969 = icmp eq ptr %968, null
  br i1 %969, label %996, label %970, !prof !216

970:                                              ; preds = %958, %992
  %971 = phi ptr [ %994, %992 ], [ %968, %958 ]
  %972 = phi ptr [ %993, %992 ], [ %967, %958 ]
  br i1 %386, label %973, label %977, !prof !217

973:                                              ; preds = %970
  %974 = load i32, ptr %971, align 8
  %975 = and i32 %974, 4194304
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %992, !prof !218

977:                                              ; preds = %973, %970
  %978 = load i32, ptr %971, align 8
  %979 = and i32 %978, 1114112
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %992, !prof !267

981:                                              ; preds = %977
  %982 = getelementptr inbounds %struct.df_base_ref, ptr %971, i64 0, i32 1
  %983 = load ptr, ptr %982, align 8, !tbaa !81
  %984 = load i32, ptr %983, align 8
  %985 = and i32 %984, 65535
  %986 = icmp eq i32 %985, 39
  br i1 %986, label %987, label %990, !prof !219

987:                                              ; preds = %981
  %988 = getelementptr inbounds %struct.rtx_def, ptr %983, i64 0, i32 1
  %989 = load ptr, ptr %988, align 8, !tbaa !81
  br label %990

990:                                              ; preds = %987, %981
  %991 = phi ptr [ %989, %987 ], [ %983, %981 ]
  tail call fastcc void @mark_reg_dead(ptr noundef %991)
  br label %992

992:                                              ; preds = %973, %990, %977
  %993 = getelementptr inbounds ptr, ptr %972, i64 1
  %994 = load ptr, ptr %993, align 8, !tbaa !70
  %995 = icmp eq ptr %994, null
  br i1 %995, label %996, label %970, !prof !238, !llvm.loop !268

996:                                              ; preds = %992, %958
  br i1 %386, label %997, label %1076, !prof !269

997:                                              ; preds = %996
  %998 = load i32, ptr @last_call_num, align 4, !tbaa !85
  %999 = add nsw i32 %998, 1
  store i32 %999, ptr @last_call_num, align 4, !tbaa !85
  %1000 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1001 = getelementptr inbounds %struct.sparseset_def, ptr %1000, i64 0, i32 4
  store i32 0, ptr %1001, align 8, !tbaa !184
  %1002 = getelementptr inbounds %struct.sparseset_def, ptr %1000, i64 0, i32 5
  store i8 1, ptr %1002, align 4, !tbaa !185
  %1003 = getelementptr inbounds %struct.sparseset_def, ptr %1000, i64 0, i32 6
  store i8 1, ptr %1003, align 1, !tbaa !139
  %1004 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1005 = getelementptr inbounds %struct.sparseset_def, ptr %1004, i64 0, i32 6
  %1006 = load i8, ptr %1005, align 1, !tbaa !139
  %1007 = icmp eq i8 %1006, 0
  br i1 %1007, label %1015, label %1008, !prof !99

1008:                                             ; preds = %997, %1064
  %1009 = phi ptr [ %1072, %1064 ], [ %1004, %997 ]
  %1010 = getelementptr inbounds %struct.sparseset_def, ptr %1009, i64 0, i32 4
  %1011 = load i32, ptr %1010, align 8, !tbaa !184
  %1012 = getelementptr inbounds %struct.sparseset_def, ptr %1009, i64 0, i32 2
  %1013 = load i32, ptr %1012, align 8, !tbaa !137
  %1014 = icmp ult i32 %1011, %1013
  br i1 %1014, label %1018, label %1015, !prof !270

1015:                                             ; preds = %1064, %1008, %997
  %1016 = phi ptr [ %1004, %997 ], [ %1072, %1064 ], [ %1009, %1008 ]
  %1017 = getelementptr inbounds %struct.sparseset_def, ptr %1016, i64 0, i32 6
  store i8 0, ptr %1017, align 1, !tbaa !139
  br label %1076

1018:                                             ; preds = %1008
  %1019 = load ptr, ptr %1009, align 8, !tbaa !170
  %1020 = getelementptr inbounds %struct.sparseset_def, ptr %1009, i64 0, i32 4
  %1021 = load i32, ptr %1020, align 8, !tbaa !184
  %1022 = zext i32 %1021 to i64
  %1023 = getelementptr inbounds i32, ptr %1019, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !85
  %1025 = load ptr, ptr @ira_allocnos, align 8, !tbaa !70
  %1026 = sext i32 %1024 to i64
  %1027 = getelementptr inbounds ptr, ptr %1025, i64 %1026
  %1028 = load ptr, ptr %1027, align 8, !tbaa !70
  %1029 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %1030 = getelementptr inbounds i32, ptr %1029, i64 %1026
  %1031 = load i32, ptr %1030, align 4, !tbaa !85
  %1032 = load i32, ptr @last_call_num, align 4, !tbaa !85
  %1033 = icmp eq i32 %1031, %1032
  br i1 %1033, label %1038, label %1034, !prof !271

1034:                                             ; preds = %1018
  %1035 = getelementptr inbounds %struct.ira_allocno, ptr %1028, i64 0, i32 29
  %1036 = load i32, ptr %1035, align 4, !tbaa !272
  %1037 = add nsw i32 %1036, %347
  store i32 %1037, ptr %1035, align 4, !tbaa !272
  br label %1038

1038:                                             ; preds = %1034, %1018
  %1039 = add nsw i32 %1032, 1
  store i32 %1039, ptr %1030, align 4, !tbaa !85
  %1040 = getelementptr inbounds %struct.ira_allocno, ptr %1028, i64 0, i32 30
  %1041 = load i32, ptr %1040, align 8, !tbaa !273
  %1042 = add nsw i32 %1041, 1
  store i32 %1042, ptr %1040, align 8, !tbaa !273
  %1043 = load ptr, ptr @cfun, align 8, !tbaa !70
  %1044 = getelementptr inbounds %struct.function, ptr %1043, i64 0, i32 20
  %1045 = load i32, ptr %1044, align 8
  %1046 = and i32 %1045, 1048576
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1051, !prof !274

1048:                                             ; preds = %1038
  %1049 = tail call ptr @find_reg_note(ptr noundef nonnull %356, i32 noundef 30, ptr noundef null) #17
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1053, label %1051, !prof !274

1051:                                             ; preds = %1048, %1038
  %1052 = getelementptr inbounds %struct.ira_allocno, ptr %1028, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1052, i8 -1, i64 16, i1 false)
  br label %1053

1053:                                             ; preds = %1051, %1048
  %1054 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %356) #17
  %1055 = icmp eq i8 %1054, 0
  br i1 %1055, label %1064, label %1056, !prof !274

1056:                                             ; preds = %1053
  %1057 = load i64, ptr @call_used_reg_set, align 8, !tbaa !89
  %1058 = getelementptr inbounds %struct.ira_allocno, ptr %1028, i64 0, i32 27
  %1059 = load i64, ptr %1058, align 8, !tbaa !174
  %1060 = or i64 %1059, %1057
  store i64 %1060, ptr %1058, align 8, !tbaa !174
  %1061 = getelementptr inbounds %struct.ira_allocno, ptr %1028, i64 0, i32 26
  %1062 = load i64, ptr %1061, align 8, !tbaa !173
  %1063 = or i64 %1062, %1057
  store i64 %1063, ptr %1061, align 8, !tbaa !173
  br label %1064

1064:                                             ; preds = %1056, %1053
  %1065 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1066 = getelementptr inbounds %struct.sparseset_def, ptr %1065, i64 0, i32 5
  %1067 = load i8, ptr %1066, align 4, !tbaa !185
  %1068 = zext i8 %1067 to i32
  %1069 = getelementptr inbounds %struct.sparseset_def, ptr %1065, i64 0, i32 4
  %1070 = load i32, ptr %1069, align 8, !tbaa !184
  %1071 = add i32 %1070, %1068
  store i32 %1071, ptr %1069, align 8, !tbaa !184
  store i8 1, ptr %1066, align 4, !tbaa !185
  %1072 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1073 = getelementptr inbounds %struct.sparseset_def, ptr %1072, i64 0, i32 6
  %1074 = load i8, ptr %1073, align 1, !tbaa !139
  %1075 = icmp eq i8 %1074, 0
  br i1 %1075, label %1015, label %1008, !prof !275, !llvm.loop !276

1076:                                             ; preds = %1015, %996
  %1077 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !277
  %1078 = icmp sgt i8 %1077, 0
  br i1 %1078, label %1079, label %1131, !prof !278

1079:                                             ; preds = %1076, %1126
  %1080 = phi i64 [ %1127, %1126 ], [ 0, %1076 ]
  %1081 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %1082 = icmp sgt i8 %1081, 0
  br i1 %1082, label %1083, label %1126, !prof !279

1083:                                             ; preds = %1079, %1121
  %1084 = phi i64 [ %1122, %1121 ], [ 0, %1079 ]
  %1085 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %1084, i64 %1080, i32 5
  %1086 = load i8, ptr %1085, align 8
  %1087 = and i8 %1086, 1
  %1088 = icmp eq i8 %1087, 0
  br i1 %1088, label %1098, label %1089, !prof !280

1089:                                             ; preds = %1083
  %1090 = icmp sgt i8 %1086, -1
  br i1 %1090, label %1091, label %1094

1091:                                             ; preds = %1089
  %1092 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %1084, i64 %1080, i32 1
  %1093 = load i32, ptr %1092, align 8, !tbaa !281
  br label %1094

1094:                                             ; preds = %1091, %1089
  %1095 = phi i32 [ %1093, %1091 ], [ 26, %1089 ]
  %1096 = trunc i64 %1080 to i32
  %1097 = trunc i64 %1084 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %1096, i32 noundef %1097, i32 noundef %1095)
  br label %1098

1098:                                             ; preds = %1094, %1083
  %1099 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %1084, i64 %1080, i32 3
  %1100 = load i32, ptr %1099, align 16, !tbaa !283
  %1101 = icmp sgt i32 %1100, -1
  br i1 %1101, label %1102, label %1121, !prof !284

1102:                                             ; preds = %1098
  %1103 = zext nneg i32 %1100 to i64
  %1104 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %1103, i64 %1080, i32 5
  %1105 = load i8, ptr %1104, align 8
  %1106 = and i8 %1105, 1
  %1107 = icmp eq i8 %1106, 0
  br i1 %1107, label %1108, label %1112, !prof !285

1108:                                             ; preds = %1102
  %1109 = load i8, ptr %1085, align 8
  %1110 = and i8 %1109, 1
  %1111 = icmp eq i8 %1110, 0
  br i1 %1111, label %1121, label %1112, !prof !285

1112:                                             ; preds = %1108, %1102
  %1113 = icmp sgt i8 %1105, -1
  br i1 %1113, label %1114, label %1117

1114:                                             ; preds = %1112
  %1115 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %1103, i64 %1080, i32 1
  %1116 = load i32, ptr %1115, align 8, !tbaa !281
  br label %1117

1117:                                             ; preds = %1114, %1112
  %1118 = phi i32 [ %1116, %1114 ], [ 26, %1112 ]
  %1119 = trunc i64 %1080 to i32
  %1120 = trunc i64 %1084 to i32
  tail call fastcc void @check_and_make_def_conflict(i32 noundef %1119, i32 noundef %1120, i32 noundef %1118)
  br label %1121

1121:                                             ; preds = %1117, %1108, %1098
  %1122 = add nuw nsw i64 %1084, 1
  %1123 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %1124 = sext i8 %1123 to i64
  %1125 = icmp slt i64 %1122, %1124
  br i1 %1125, label %1083, label %1126, !prof !286, !llvm.loop !287

1126:                                             ; preds = %1121, %1079
  %1127 = add nuw nsw i64 %1080, 1
  %1128 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !277
  %1129 = sext i8 %1128 to i64
  %1130 = icmp slt i64 %1127, %1129
  br i1 %1130, label %1079, label %1131, !prof !288, !llvm.loop !289

1131:                                             ; preds = %1126, %1076
  %1132 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1133 = add nsw i32 %1132, 1
  store i32 %1133, ptr @curr_point, align 4, !tbaa !85
  %1134 = load ptr, ptr @df, align 8, !tbaa !70
  %1135 = getelementptr inbounds %struct.df, ptr %1134, i64 0, i32 10
  %1136 = load ptr, ptr %1135, align 8, !tbaa !211
  %1137 = load i32, ptr %390, align 8, !tbaa !81
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds ptr, ptr %1136, i64 %1138
  %1140 = load ptr, ptr %1139, align 8, !tbaa !70
  %1141 = getelementptr inbounds %struct.df_insn_info, ptr %1140, i64 0, i32 2
  %1142 = load ptr, ptr %1141, align 8, !tbaa !242
  %1143 = load ptr, ptr %1142, align 8, !tbaa !70
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1456, label %1145, !prof !290

1145:                                             ; preds = %1131, %1452
  %1146 = phi ptr [ %1454, %1452 ], [ %1143, %1131 ]
  %1147 = phi ptr [ %1453, %1452 ], [ %1142, %1131 ]
  %1148 = getelementptr inbounds %struct.df_base_ref, ptr %1146, i64 0, i32 1
  %1149 = load ptr, ptr %1148, align 8, !tbaa !81
  %1150 = load i32, ptr %1149, align 8
  %1151 = and i32 %1150, 65535
  %1152 = icmp eq i32 %1151, 39
  br i1 %1152, label %1153, label %1156, !prof !291

1153:                                             ; preds = %1145
  %1154 = getelementptr inbounds %struct.rtx_def, ptr %1149, i64 0, i32 1
  %1155 = load ptr, ptr %1154, align 8, !tbaa !81
  br label %1156

1156:                                             ; preds = %1145, %1153
  %1157 = phi ptr [ %1155, %1153 ], [ %1149, %1145 ]
  %1158 = load i32, ptr %1157, align 8
  %1159 = and i32 %1158, 65535
  %1160 = icmp eq i32 %1159, 37
  br i1 %1160, label %1162, label %1161, !prof !220

1161:                                             ; preds = %1156
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 252, ptr noundef nonnull @.str.6) #17
  br label %1162

1162:                                             ; preds = %1161, %1156
  %1163 = getelementptr inbounds %struct.rtx_def, ptr %1157, i64 0, i32 1
  %1164 = load i32, ptr %1163, align 8, !tbaa !81
  %1165 = icmp sgt i32 %1164, 52
  %1166 = zext nneg i32 %1164 to i64
  br i1 %1165, label %1167, label %1319, !prof !221

1167:                                             ; preds = %1162
  %1168 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %1169 = getelementptr inbounds ptr, ptr %1168, i64 %1166
  %1170 = load ptr, ptr %1169, align 8, !tbaa !70
  %1171 = icmp eq ptr %1170, null
  br i1 %1171, label %1299, label %1172, !prof !222

1172:                                             ; preds = %1167
  %1173 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1174 = load i32, ptr %1170, align 8, !tbaa !113
  %1175 = getelementptr inbounds %struct.sparseset_def, ptr %1173, i64 0, i32 3
  %1176 = load i32, ptr %1175, align 4, !tbaa !166
  %1177 = icmp ugt i32 %1176, %1174
  br i1 %1177, label %1179, label %1178, !prof !223

1178:                                             ; preds = %1172
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %1179

1179:                                             ; preds = %1178, %1172
  %1180 = getelementptr inbounds %struct.sparseset_def, ptr %1173, i64 0, i32 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !168
  %1182 = zext i32 %1174 to i64
  %1183 = getelementptr inbounds i32, ptr %1181, i64 %1182
  %1184 = load i32, ptr %1183, align 4, !tbaa !85
  %1185 = getelementptr inbounds %struct.sparseset_def, ptr %1173, i64 0, i32 2
  %1186 = load i32, ptr %1185, align 8, !tbaa !137
  %1187 = icmp ult i32 %1184, %1186
  br i1 %1187, label %1188, label %1199, !prof !224

1188:                                             ; preds = %1179
  %1189 = load ptr, ptr %1173, align 8, !tbaa !170
  %1190 = zext i32 %1184 to i64
  %1191 = getelementptr inbounds i32, ptr %1189, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !85
  %1193 = icmp eq i32 %1192, %1174
  br i1 %1193, label %1194, label %1199, !prof !225

1194:                                             ; preds = %1188
  %1195 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %1196 = load i32, ptr %1170, align 8, !tbaa !113
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds i32, ptr %1195, i64 %1197
  store i32 0, ptr %1198, align 4, !tbaa !85
  br label %1452

1199:                                             ; preds = %1188, %1179
  %1200 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %1201 = load i32, ptr %1170, align 8, !tbaa !113
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds i32, ptr %1200, i64 %1202
  store i32 0, ptr %1203, align 4, !tbaa !85
  %1204 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1205 = load i32, ptr %1170, align 8, !tbaa !113
  %1206 = getelementptr inbounds %struct.sparseset_def, ptr %1204, i64 0, i32 3
  %1207 = load i32, ptr %1206, align 4, !tbaa !166
  %1208 = icmp ugt i32 %1207, %1205
  br i1 %1208, label %1210, label %1209, !prof !167

1209:                                             ; preds = %1199
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %1210

1210:                                             ; preds = %1209, %1199
  %1211 = getelementptr inbounds %struct.sparseset_def, ptr %1204, i64 0, i32 1
  %1212 = load ptr, ptr %1211, align 8, !tbaa !168
  %1213 = zext i32 %1205 to i64
  %1214 = getelementptr inbounds i32, ptr %1212, i64 %1213
  %1215 = load i32, ptr %1214, align 4, !tbaa !85
  %1216 = getelementptr inbounds %struct.sparseset_def, ptr %1204, i64 0, i32 2
  %1217 = load i32, ptr %1216, align 8, !tbaa !137
  %1218 = icmp ult i32 %1215, %1217
  br i1 %1218, label %1219, label %1225, !prof !169

1219:                                             ; preds = %1210
  %1220 = load ptr, ptr %1204, align 8, !tbaa !170
  %1221 = zext i32 %1215 to i64
  %1222 = getelementptr inbounds i32, ptr %1220, i64 %1221
  %1223 = load i32, ptr %1222, align 4, !tbaa !85
  %1224 = icmp eq i32 %1223, %1205
  br i1 %1224, label %1299, label %1225, !prof !171

1225:                                             ; preds = %1219, %1210
  %1226 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1227 = load i32, ptr %1170, align 8, !tbaa !113
  %1228 = getelementptr inbounds %struct.sparseset_def, ptr %1226, i64 0, i32 3
  %1229 = load i32, ptr %1228, align 4, !tbaa !166
  %1230 = icmp ugt i32 %1229, %1227
  br i1 %1230, label %1232, label %1231, !prof !167

1231:                                             ; preds = %1225
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %1232

1232:                                             ; preds = %1231, %1225
  %1233 = getelementptr inbounds %struct.sparseset_def, ptr %1226, i64 0, i32 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !168
  %1235 = zext i32 %1227 to i64
  %1236 = getelementptr inbounds i32, ptr %1234, i64 %1235
  %1237 = load i32, ptr %1236, align 4, !tbaa !85
  %1238 = getelementptr inbounds %struct.sparseset_def, ptr %1226, i64 0, i32 2
  %1239 = load i32, ptr %1238, align 8, !tbaa !137
  %1240 = icmp ult i32 %1237, %1239
  br i1 %1240, label %1241, label %1247, !prof !169

1241:                                             ; preds = %1232
  %1242 = load ptr, ptr %1226, align 8, !tbaa !170
  %1243 = zext i32 %1237 to i64
  %1244 = getelementptr inbounds i32, ptr %1242, i64 %1243
  %1245 = load i32, ptr %1244, align 4, !tbaa !85
  %1246 = icmp eq i32 %1245, %1227
  br i1 %1246, label %1252, label %1247, !prof !172

1247:                                             ; preds = %1241, %1232
  %1248 = add i32 %1239, 1
  store i32 %1248, ptr %1238, align 8, !tbaa !137
  store i32 %1239, ptr %1236, align 4, !tbaa !85
  %1249 = load ptr, ptr %1226, align 8, !tbaa !170
  %1250 = zext i32 %1239 to i64
  %1251 = getelementptr inbounds i32, ptr %1249, i64 %1250
  store i32 %1227, ptr %1251, align 4, !tbaa !85
  br label %1252

1252:                                             ; preds = %1247, %1241
  %1253 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %1254 = getelementptr inbounds %struct.ira_allocno, ptr %1170, i64 0, i32 26
  %1255 = load i64, ptr %1254, align 8, !tbaa !173
  %1256 = or i64 %1255, %1253
  store i64 %1256, ptr %1254, align 8, !tbaa !173
  %1257 = getelementptr inbounds %struct.ira_allocno, ptr %1170, i64 0, i32 27
  %1258 = load i64, ptr %1257, align 8, !tbaa !174
  %1259 = or i64 %1258, %1253
  store i64 %1259, ptr %1257, align 8, !tbaa !174
  %1260 = getelementptr inbounds %struct.ira_allocno, ptr %1170, i64 0, i32 9
  %1261 = load i32, ptr %1260, align 8, !tbaa !175
  %1262 = zext i32 %1261 to i64
  %1263 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1262, i64 0
  %1264 = load i32, ptr %1263, align 4, !tbaa !85
  %1265 = icmp eq i32 %1264, 27
  br i1 %1265, label %1299, label %1266, !prof !176

1266:                                             ; preds = %1252
  %1267 = getelementptr inbounds %struct.ira_allocno, ptr %1170, i64 0, i32 2
  %1268 = load i32, ptr @curr_point, align 4
  %1269 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %1270

1270:                                             ; preds = %1294, %1266
  %1271 = phi i64 [ 0, %1266 ], [ %1295, %1294 ]
  %1272 = phi i32 [ %1264, %1266 ], [ %1297, %1294 ]
  %1273 = zext i32 %1272 to i64
  %1274 = load i32, ptr %1267, align 8, !tbaa !177
  %1275 = zext i32 %1274 to i64
  %1276 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %1273, i64 %1275
  %1277 = load i32, ptr %1276, align 4, !tbaa !85
  %1278 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %1273
  %1279 = load i32, ptr %1278, align 4, !tbaa !85
  %1280 = add nsw i32 %1279, %1277
  store i32 %1280, ptr %1278, align 4, !tbaa !85
  %1281 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %1273
  %1282 = load i32, ptr %1281, align 4, !tbaa !85
  %1283 = icmp slt i32 %1282, 0
  br i1 %1283, label %1284, label %1289, !prof !178

1284:                                             ; preds = %1270
  %1285 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %1273
  %1286 = load i32, ptr %1285, align 4, !tbaa !85
  %1287 = icmp sgt i32 %1280, %1286
  br i1 %1287, label %1288, label %1289, !prof !179

1288:                                             ; preds = %1284
  store i32 %1268, ptr %1281, align 4, !tbaa !85
  br label %1289

1289:                                             ; preds = %1288, %1284, %1270
  %1290 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1269, i64 0, i32 11, i64 %1273
  %1291 = load i32, ptr %1290, align 4, !tbaa !85
  %1292 = icmp slt i32 %1291, %1280
  br i1 %1292, label %1293, label %1294, !prof !180

1293:                                             ; preds = %1289
  store i32 %1280, ptr %1290, align 4, !tbaa !85
  br label %1294

1294:                                             ; preds = %1293, %1289
  %1295 = add nuw nsw i64 %1271, 1
  %1296 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1262, i64 %1295
  %1297 = load i32, ptr %1296, align 4, !tbaa !85
  %1298 = icmp eq i32 %1297, 27
  br i1 %1298, label %1299, label %1270, !prof !181, !llvm.loop !182

1299:                                             ; preds = %1294, %1252, %1219, %1167
  %1300 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %1301 = getelementptr inbounds ptr, ptr %1300, i64 %1166
  %1302 = load ptr, ptr %1301, align 8, !tbaa !70
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1452, label %1304, !prof !171

1304:                                             ; preds = %1299
  %1305 = getelementptr inbounds %struct.ira_allocno, ptr %1302, i64 0, i32 20
  %1306 = load ptr, ptr %1305, align 8, !tbaa !116
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1316, label %1308, !prof !188

1308:                                             ; preds = %1304
  %1309 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %1306, i64 0, i32 2
  %1310 = load i32, ptr %1309, align 4, !tbaa !107
  %1311 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1312 = icmp eq i32 %1310, %1311
  %1313 = add nsw i32 %1310, 1
  %1314 = icmp eq i32 %1313, %1311
  %1315 = select i1 %1312, i1 true, i1 %1314, !prof !189
  br i1 %1315, label %1452, label %1316, !prof !190

1316:                                             ; preds = %1308, %1304
  %1317 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1318 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %1302, i32 noundef %1317, i32 noundef -1, ptr noundef %1306) #17
  store ptr %1318, ptr %1305, align 8, !tbaa !116
  br label %1452

1319:                                             ; preds = %1162
  %1320 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !89
  %1321 = shl nuw i64 1, %1166
  %1322 = and i64 %1320, %1321
  %1323 = icmp eq i64 %1322, 0
  br i1 %1323, label %1324, label %1452, !prof !226

1324:                                             ; preds = %1319
  %1325 = sext i32 %1164 to i64
  %1326 = load i32, ptr %1157, align 8
  %1327 = lshr i32 %1326, 16
  %1328 = and i32 %1327, 255
  %1329 = zext nneg i32 %1328 to i64
  %1330 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1325, i64 %1329
  %1331 = load i8, ptr %1330, align 1, !tbaa !81
  %1332 = icmp eq i8 %1331, 0
  br i1 %1332, label %1452, label %1333, !prof !227

1333:                                             ; preds = %1324
  %1334 = zext i8 %1331 to i32
  %1335 = add nsw i32 %1164, %1334
  %1336 = sext i32 %1335 to i64
  br label %1337

1337:                                             ; preds = %1449, %1333
  %1338 = phi i64 [ %1325, %1333 ], [ %1450, %1449 ]
  %1339 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %1340 = shl nuw i64 1, %1338
  %1341 = and i64 %1339, %1340
  %1342 = icmp eq i64 %1341, 0
  br i1 %1342, label %1343, label %1449, !prof !228

1343:                                             ; preds = %1337
  %1344 = load i64, ptr @eliminable_regset, align 8, !tbaa !89
  %1345 = and i64 %1344, %1340
  %1346 = icmp eq i64 %1345, 0
  br i1 %1346, label %1347, label %1449, !prof !229

1347:                                             ; preds = %1343
  %1348 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %1338
  %1349 = load i32, ptr %1348, align 4, !tbaa !85
  %1350 = zext i32 %1349 to i64
  %1351 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1350, i64 0
  %1352 = load i32, ptr %1351, align 4, !tbaa !85
  %1353 = icmp eq i32 %1352, 27
  br i1 %1353, label %1376, label %1354, !prof !186

1354:                                             ; preds = %1347
  %1355 = load i32, ptr @curr_point, align 4
  br label %1356

1356:                                             ; preds = %1371, %1354
  %1357 = phi i64 [ 0, %1354 ], [ %1372, %1371 ]
  %1358 = phi i32 [ %1352, %1354 ], [ %1374, %1371 ]
  %1359 = zext i32 %1358 to i64
  %1360 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %1359
  %1361 = load i32, ptr %1360, align 4, !tbaa !85
  %1362 = add nsw i32 %1361, 1
  store i32 %1362, ptr %1360, align 4, !tbaa !85
  %1363 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %1359
  %1364 = load i32, ptr %1363, align 4, !tbaa !85
  %1365 = icmp slt i32 %1364, 0
  br i1 %1365, label %1366, label %1371, !prof !230

1366:                                             ; preds = %1356
  %1367 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %1359
  %1368 = load i32, ptr %1367, align 4, !tbaa !85
  %1369 = icmp slt i32 %1361, %1368
  br i1 %1369, label %1371, label %1370, !prof !231

1370:                                             ; preds = %1366
  store i32 %1355, ptr %1363, align 4, !tbaa !85
  br label %1371

1371:                                             ; preds = %1370, %1366, %1356
  %1372 = add nuw nsw i64 %1357, 1
  %1373 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1350, i64 %1372
  %1374 = load i32, ptr %1373, align 4, !tbaa !85
  %1375 = icmp eq i32 %1374, 27
  br i1 %1375, label %1376, label %1356, !prof !232, !llvm.loop !233

1376:                                             ; preds = %1371, %1347
  %1377 = icmp slt i64 %1338, 53
  br i1 %1377, label %1378, label %1409, !prof !183

1378:                                             ; preds = %1376
  %1379 = or i64 %1339, %1340
  store i64 %1379, ptr @hard_regs_live, align 8, !tbaa !89
  %1380 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1381 = getelementptr inbounds %struct.sparseset_def, ptr %1380, i64 0, i32 4
  store i32 0, ptr %1381, align 8, !tbaa !184
  %1382 = getelementptr inbounds %struct.sparseset_def, ptr %1380, i64 0, i32 5
  store i8 1, ptr %1382, align 4, !tbaa !185
  %1383 = getelementptr inbounds %struct.sparseset_def, ptr %1380, i64 0, i32 6
  store i8 1, ptr %1383, align 1, !tbaa !139
  %1384 = getelementptr inbounds %struct.sparseset_def, ptr %1380, i64 0, i32 2
  %1385 = load i32, ptr %1384, align 8, !tbaa !137
  %1386 = load ptr, ptr @ira_allocnos, align 8
  %1387 = icmp eq i32 %1385, 0
  br i1 %1387, label %1392, label %1388, !prof !186

1388:                                             ; preds = %1378
  %1389 = load ptr, ptr %1380, align 8, !tbaa !170
  %1390 = zext i32 %1385 to i64
  br label %1393

1391:                                             ; preds = %1393
  store i8 1, ptr %1382, align 4, !tbaa !185
  br label %1392

1392:                                             ; preds = %1391, %1378
  store i8 0, ptr %1383, align 1, !tbaa !139
  br label %1429

1393:                                             ; preds = %1393, %1388
  %1394 = phi i64 [ %1406, %1393 ], [ 0, %1388 ]
  %1395 = getelementptr inbounds i32, ptr %1389, i64 %1394
  %1396 = load i32, ptr %1395, align 4, !tbaa !85
  %1397 = zext i32 %1396 to i64
  %1398 = getelementptr inbounds ptr, ptr %1386, i64 %1397
  %1399 = load ptr, ptr %1398, align 8, !tbaa !70
  %1400 = getelementptr inbounds %struct.ira_allocno, ptr %1399, i64 0, i32 26
  %1401 = load i64, ptr %1400, align 8, !tbaa !173
  %1402 = or i64 %1401, %1340
  store i64 %1402, ptr %1400, align 8, !tbaa !173
  %1403 = getelementptr inbounds %struct.ira_allocno, ptr %1399, i64 0, i32 27
  %1404 = load i64, ptr %1403, align 8, !tbaa !174
  %1405 = or i64 %1404, %1340
  store i64 %1405, ptr %1403, align 8, !tbaa !174
  %1406 = add nuw nsw i64 %1394, 1
  %1407 = trunc i64 %1406 to i32
  store i32 %1407, ptr %1381, align 8, !tbaa !184
  %1408 = icmp eq i64 %1406, %1390
  br i1 %1408, label %1391, label %1393, !prof !234

1409:                                             ; preds = %1376
  %1410 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %1411 = getelementptr inbounds ptr, ptr %1410, i64 %1338
  %1412 = load ptr, ptr %1411, align 8, !tbaa !70
  %1413 = icmp eq ptr %1412, null
  br i1 %1413, label %1429, label %1414, !prof !171

1414:                                             ; preds = %1409
  %1415 = getelementptr inbounds %struct.ira_allocno, ptr %1412, i64 0, i32 20
  %1416 = load ptr, ptr %1415, align 8, !tbaa !116
  %1417 = icmp eq ptr %1416, null
  br i1 %1417, label %1426, label %1418, !prof !188

1418:                                             ; preds = %1414
  %1419 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %1416, i64 0, i32 2
  %1420 = load i32, ptr %1419, align 4, !tbaa !107
  %1421 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1422 = icmp eq i32 %1420, %1421
  %1423 = add nsw i32 %1420, 1
  %1424 = icmp eq i32 %1423, %1421
  %1425 = select i1 %1422, i1 true, i1 %1424, !prof !189
  br i1 %1425, label %1429, label %1426, !prof !190

1426:                                             ; preds = %1418, %1414
  %1427 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1428 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %1412, i32 noundef %1427, i32 noundef -1, ptr noundef %1416) #17
  store ptr %1428, ptr %1415, align 8, !tbaa !116
  br label %1429

1429:                                             ; preds = %1426, %1418, %1409, %1392
  %1430 = load i32, ptr %1351, align 4, !tbaa !85
  %1431 = icmp eq i32 %1430, 27
  br i1 %1431, label %1449, label %1432, !prof !186

1432:                                             ; preds = %1429
  %1433 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %1434

1434:                                             ; preds = %1444, %1432
  %1435 = phi i64 [ 0, %1432 ], [ %1445, %1444 ]
  %1436 = phi i32 [ %1430, %1432 ], [ %1447, %1444 ]
  %1437 = zext i32 %1436 to i64
  %1438 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1433, i64 0, i32 11, i64 %1437
  %1439 = load i32, ptr %1438, align 4, !tbaa !85
  %1440 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %1437
  %1441 = load i32, ptr %1440, align 4, !tbaa !85
  %1442 = icmp slt i32 %1439, %1441
  br i1 %1442, label %1443, label %1444, !prof !235

1443:                                             ; preds = %1434
  store i32 %1441, ptr %1438, align 4, !tbaa !85
  br label %1444

1444:                                             ; preds = %1443, %1434
  %1445 = add nuw nsw i64 %1435, 1
  %1446 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1350, i64 %1445
  %1447 = load i32, ptr %1446, align 4, !tbaa !85
  %1448 = icmp eq i32 %1447, 27
  br i1 %1448, label %1449, label %1434, !prof !232, !llvm.loop !236

1449:                                             ; preds = %1444, %1429, %1343, %1337
  %1450 = add nsw i64 %1338, 1
  %1451 = icmp slt i64 %1450, %1336
  br i1 %1451, label %1337, label %1452, !prof !227, !llvm.loop !237

1452:                                             ; preds = %1449, %1194, %1299, %1308, %1316, %1319, %1324
  %1453 = getelementptr inbounds ptr, ptr %1147, i64 1
  %1454 = load ptr, ptr %1453, align 8, !tbaa !70
  %1455 = icmp eq ptr %1454, null
  br i1 %1455, label %1456, label %1145, !prof !292, !llvm.loop !293

1456:                                             ; preds = %1452, %1131
  %1457 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %1458 = icmp sgt i8 %1457, 0
  br i1 %1458, label %1459, label %1630, !prof !252

1459:                                             ; preds = %1456, %1625
  %1460 = phi i64 [ %1626, %1625 ], [ 0, %1456 ]
  %1461 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1460
  %1462 = load ptr, ptr %1461, align 8, !tbaa !70
  %1463 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %1460
  %1464 = load i32, ptr %1463, align 4, !tbaa !85
  switch i32 %1464, label %1625 [
    i32 0, label %1465
    i32 2, label %1465
  ], !prof !294

1465:                                             ; preds = %1459, %1459
  %1466 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %1467 = icmp eq i8 %1466, 0
  br i1 %1467, label %1472, label %1468, !prof !254

1468:                                             ; preds = %1465
  %1469 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1460
  %1470 = load ptr, ptr %1469, align 8, !tbaa !70
  %1471 = tail call fastcc i32 @single_reg_class(ptr noundef %1470, ptr noundef %1462)
  br label %1472

1472:                                             ; preds = %1468, %1465
  %1473 = phi i32 [ %1471, %1468 ], [ 0, %1465 ]
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1625, label %1475, !prof !255

1475:                                             ; preds = %1472
  %1476 = load i32, ptr %1462, align 8
  %1477 = and i32 %1476, 65535
  %1478 = icmp eq i32 %1477, 39
  br i1 %1478, label %1479, label %1482, !prof !256

1479:                                             ; preds = %1475
  %1480 = getelementptr inbounds %struct.rtx_def, ptr %1462, i64 0, i32 1
  %1481 = load ptr, ptr %1480, align 8, !tbaa !81
  br label %1482

1482:                                             ; preds = %1479, %1475
  %1483 = phi ptr [ %1481, %1479 ], [ %1462, %1475 ]
  %1484 = load i32, ptr %1483, align 8
  %1485 = and i32 %1484, 65535
  %1486 = icmp eq i32 %1485, 37
  br i1 %1486, label %1487, label %1585, !prof !256

1487:                                             ; preds = %1482
  %1488 = getelementptr inbounds %struct.rtx_def, ptr %1483, i64 0, i32 1
  %1489 = load i32, ptr %1488, align 8, !tbaa !81
  %1490 = icmp sgt i32 %1489, 52
  br i1 %1490, label %1491, label %1585, !prof !256

1491:                                             ; preds = %1487
  %1492 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %1493 = zext nneg i32 %1489 to i64
  %1494 = getelementptr inbounds ptr, ptr %1492, i64 %1493
  %1495 = load ptr, ptr %1494, align 8, !tbaa !70
  %1496 = getelementptr inbounds %struct.ira_allocno, ptr %1495, i64 0, i32 2
  %1497 = load i32, ptr %1496, align 8, !tbaa !177
  %1498 = getelementptr inbounds %struct.ira_allocno, ptr %1495, i64 0, i32 9
  %1499 = load i32, ptr %1498, align 8, !tbaa !175
  %1500 = zext i32 %1473 to i64
  %1501 = zext i32 %1499 to i64
  %1502 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %1500, i64 %1501
  %1503 = load i32, ptr %1502, align 4, !tbaa !85
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1585, label %1505, !prof !257

1505:                                             ; preds = %1491
  %1506 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %1500
  %1507 = load i32, ptr %1506, align 4, !tbaa !85
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1585, label %1509, !prof !257

1509:                                             ; preds = %1505
  %1510 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %1500
  %1511 = load i16, ptr %1510, align 2, !tbaa !258
  %1512 = sext i16 %1511 to i64
  %1513 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %1501, i64 %1512
  %1514 = load i16, ptr %1513, align 2, !tbaa !258
  %1515 = icmp sgt i16 %1514, -1
  br i1 %1515, label %1516, label %1585, !prof !256

1516:                                             ; preds = %1509
  %1517 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1500
  %1518 = load i32, ptr %1517, align 4, !tbaa !85
  %1519 = tail call i32 @reg_classes_intersect_p(i32 noundef %1473, i32 noundef 13) #17
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1521, label %1528, !prof !257

1521:                                             ; preds = %1516
  %1522 = zext i32 %1497 to i64
  %1523 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1522
  %1524 = load i8, ptr %1523, align 1, !tbaa !81
  %1525 = and i8 %1524, -2
  %1526 = icmp eq i8 %1525, 10
  %1527 = select i1 %1526, i32 2, i32 1
  br label %1539

1528:                                             ; preds = %1516
  %1529 = icmp eq i32 %1497, 40
  br i1 %1529, label %1535, label %1530, !prof !257

1530:                                             ; preds = %1528
  %1531 = zext i32 %1497 to i64
  %1532 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1531
  %1533 = load i8, ptr %1532, align 1, !tbaa !81
  %1534 = zext i8 %1533 to i32
  br label %1535

1535:                                             ; preds = %1530, %1528
  %1536 = phi i32 [ %1534, %1530 ], [ 12, %1528 ]
  %1537 = add nuw nsw i32 %1536, 3
  %1538 = lshr i32 %1537, 2
  br label %1539

1539:                                             ; preds = %1535, %1521
  %1540 = phi i32 [ %1527, %1521 ], [ %1538, %1535 ]
  %1541 = icmp ugt i32 %1518, %1540
  br i1 %1541, label %1585, label %1542, !prof !257

1542:                                             ; preds = %1539
  %1543 = zext i32 %1497 to i64
  %1544 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %1543
  %1545 = load ptr, ptr %1544, align 8, !tbaa !70
  %1546 = icmp eq ptr %1545, null
  br i1 %1546, label %1547, label %1548, !prof !257

1547:                                             ; preds = %1542
  tail call void @ira_init_register_move_cost(i32 noundef %1497) #17
  br label %1548

1548:                                             ; preds = %1547, %1542
  %1549 = load ptr, ptr %1544, align 8, !tbaa !70
  %1550 = getelementptr inbounds [27 x i16], ptr %1549, i64 %1501, i64 %1500
  %1551 = load i16, ptr %1550, align 2, !tbaa !258
  %1552 = zext i16 %1551 to i32
  %1553 = mul nsw i32 %347, %1552
  %1554 = getelementptr inbounds %struct.ira_allocno, ptr %1495, i64 0, i32 35
  %1555 = load ptr, ptr %1554, align 8, !tbaa !70
  %1556 = icmp eq ptr %1555, null
  br i1 %1556, label %1557, label %1565, !prof !256

1557:                                             ; preds = %1548
  %1558 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1499) #17
  store ptr %1558, ptr %1554, align 8, !tbaa !70
  %1559 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %1501
  %1560 = load i32, ptr %1559, align 4, !tbaa !85
  %1561 = icmp sgt i32 %1560, 0
  br i1 %1561, label %1562, label %1565, !prof !259

1562:                                             ; preds = %1557
  %1563 = zext nneg i32 %1560 to i64
  %1564 = shl nuw nsw i64 %1563, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1558, i8 0, i64 %1564, i1 false), !tbaa !85
  br label %1565

1565:                                             ; preds = %1562, %1557, %1548
  %1566 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %1501, i64 %1543
  %1567 = load i32, ptr %1566, align 4, !tbaa !85
  %1568 = icmp sgt i32 %1567, 0
  br i1 %1568, label %1569, label %1585, !prof !259

1569:                                             ; preds = %1565
  %1570 = load ptr, ptr %1554, align 8, !tbaa !260
  %1571 = zext nneg i32 %1567 to i64
  br label %1572

1572:                                             ; preds = %1572, %1569
  %1573 = phi i64 [ 0, %1569 ], [ %1583, %1572 ]
  %1574 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %1500, i64 %1573
  %1575 = load i16, ptr %1574, align 2, !tbaa !258
  %1576 = sext i16 %1575 to i64
  %1577 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %1501, i64 %1576
  %1578 = load i16, ptr %1577, align 2, !tbaa !258
  %1579 = sext i16 %1578 to i64
  %1580 = getelementptr inbounds i32, ptr %1570, i64 %1579
  %1581 = load i32, ptr %1580, align 4, !tbaa !85
  %1582 = sub nsw i32 %1581, %1553
  store i32 %1582, ptr %1580, align 4, !tbaa !85
  %1583 = add nuw nsw i64 %1573, 1
  %1584 = icmp eq i64 %1583, %1571
  br i1 %1584, label %1585, label %1572, !prof !259, !llvm.loop !261

1585:                                             ; preds = %1572, %1565, %1539, %1509, %1505, %1491, %1487, %1482
  %1586 = phi ptr [ null, %1487 ], [ null, %1482 ], [ %1495, %1539 ], [ %1495, %1509 ], [ %1495, %1505 ], [ %1495, %1491 ], [ %1495, %1565 ], [ %1495, %1572 ]
  %1587 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1588 = getelementptr inbounds %struct.sparseset_def, ptr %1587, i64 0, i32 4
  store i32 0, ptr %1588, align 8, !tbaa !184
  %1589 = getelementptr inbounds %struct.sparseset_def, ptr %1587, i64 0, i32 5
  store i8 1, ptr %1589, align 4, !tbaa !185
  %1590 = getelementptr inbounds %struct.sparseset_def, ptr %1587, i64 0, i32 6
  store i8 1, ptr %1590, align 1, !tbaa !139
  %1591 = getelementptr inbounds %struct.sparseset_def, ptr %1587, i64 0, i32 2
  %1592 = load i32, ptr %1591, align 8, !tbaa !137
  %1593 = load ptr, ptr @ira_allocnos, align 8
  %1594 = zext i32 %1473 to i64
  %1595 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %1594
  %1596 = icmp eq i32 %1592, 0
  br i1 %1596, label %1601, label %1597, !prof !262

1597:                                             ; preds = %1585
  %1598 = load ptr, ptr %1587, align 8, !tbaa !170
  %1599 = load i8, ptr %1589, align 4, !tbaa !185
  br label %1602

1600:                                             ; preds = %1621
  store i8 1, ptr %1589, align 4, !tbaa !185
  br label %1601

1601:                                             ; preds = %1600, %1585
  store i8 0, ptr %1590, align 1, !tbaa !139
  br label %1625

1602:                                             ; preds = %1597, %1621
  %1603 = phi i8 [ %1599, %1597 ], [ 1, %1621 ]
  %1604 = phi i32 [ 0, %1597 ], [ %1623, %1621 ]
  %1605 = zext i32 %1604 to i64
  %1606 = getelementptr inbounds i32, ptr %1598, i64 %1605
  %1607 = load i32, ptr %1606, align 4, !tbaa !85
  %1608 = zext i32 %1607 to i64
  %1609 = getelementptr inbounds ptr, ptr %1593, i64 %1608
  %1610 = load ptr, ptr %1609, align 8, !tbaa !70
  %1611 = icmp eq ptr %1610, %1586
  br i1 %1611, label %1621, label %1612, !prof !263

1612:                                             ; preds = %1602
  %1613 = load i64, ptr %1595, align 8, !tbaa !89
  %1614 = getelementptr inbounds %struct.ira_allocno, ptr %1610, i64 0, i32 26
  %1615 = load i64, ptr %1614, align 8, !tbaa !173
  %1616 = or i64 %1615, %1613
  store i64 %1616, ptr %1614, align 8, !tbaa !173
  %1617 = load i64, ptr %1595, align 8, !tbaa !89
  %1618 = getelementptr inbounds %struct.ira_allocno, ptr %1610, i64 0, i32 27
  %1619 = load i64, ptr %1618, align 8, !tbaa !174
  %1620 = or i64 %1619, %1617
  store i64 %1620, ptr %1618, align 8, !tbaa !174
  br label %1621

1621:                                             ; preds = %1612, %1602
  %1622 = zext i8 %1603 to i32
  %1623 = add i32 %1604, %1622
  store i32 %1623, ptr %1588, align 8, !tbaa !184
  %1624 = icmp ult i32 %1623, %1592
  br i1 %1624, label %1602, label %1600, !prof !264

1625:                                             ; preds = %1601, %1472, %1459
  %1626 = add nuw nsw i64 %1460, 1
  %1627 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %1628 = sext i8 %1627 to i64
  %1629 = icmp slt i64 %1626, %1628
  br i1 %1629, label %1459, label %1630, !prof !265, !llvm.loop !266

1630:                                             ; preds = %1625, %1456
  %1631 = load ptr, ptr @df, align 8, !tbaa !70
  %1632 = getelementptr inbounds %struct.df, ptr %1631, i64 0, i32 10
  %1633 = load ptr, ptr %1632, align 8, !tbaa !211
  %1634 = load i32, ptr %390, align 8, !tbaa !81
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds ptr, ptr %1633, i64 %1635
  %1637 = load ptr, ptr %1636, align 8, !tbaa !70
  %1638 = getelementptr inbounds %struct.df_insn_info, ptr %1637, i64 0, i32 1
  %1639 = load ptr, ptr %1638, align 8, !tbaa !214
  %1640 = load ptr, ptr %1639, align 8, !tbaa !70
  %1641 = icmp eq ptr %1640, null
  br i1 %1641, label %1678, label %1642, !prof !295

1642:                                             ; preds = %1630, %1673
  %1643 = phi ptr [ %1676, %1673 ], [ %1640, %1630 ]
  %1644 = phi i8 [ %1674, %1673 ], [ 0, %1630 ]
  %1645 = phi ptr [ %1675, %1673 ], [ %1639, %1630 ]
  %1646 = load i32, ptr %1643, align 8
  %1647 = and i32 %1646, 8388608
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1673, label %1649, !prof !296

1649:                                             ; preds = %1642
  %1650 = getelementptr inbounds %struct.df_base_ref, ptr %1643, i64 0, i32 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !81
  %1652 = load i32, ptr %1651, align 8
  %1653 = and i32 %1652, 65535
  %1654 = icmp eq i32 %1653, 39
  br i1 %1654, label %1655, label %1658, !prof !297

1655:                                             ; preds = %1649
  %1656 = getelementptr inbounds %struct.rtx_def, ptr %1651, i64 0, i32 1
  %1657 = load ptr, ptr %1656, align 8, !tbaa !81
  br label %1658

1658:                                             ; preds = %1655, %1649
  %1659 = phi ptr [ %1657, %1655 ], [ %1651, %1649 ]
  %1660 = load i32, ptr %1659, align 8
  %1661 = and i32 %1660, 65535
  %1662 = icmp eq i32 %1661, 37
  br i1 %1662, label %1663, label %1673, !prof !298

1663:                                             ; preds = %1658
  %1664 = getelementptr inbounds %struct.rtx_def, ptr %1659, i64 0, i32 1
  %1665 = load i32, ptr %1664, align 8, !tbaa !81
  %1666 = icmp ugt i32 %1665, 52
  br i1 %1666, label %1673, label %1667, !prof !297

1667:                                             ; preds = %1663
  br i1 %1654, label %1668, label %1671, !prof !299

1668:                                             ; preds = %1667
  %1669 = getelementptr inbounds %struct.rtx_def, ptr %1651, i64 0, i32 1
  %1670 = load ptr, ptr %1669, align 8, !tbaa !81
  br label %1671

1671:                                             ; preds = %1668, %1667
  %1672 = phi ptr [ %1670, %1668 ], [ %1651, %1667 ]
  tail call fastcc void @mark_reg_live(ptr noundef %1672)
  br label %1673

1673:                                             ; preds = %1671, %1663, %1658, %1642
  %1674 = phi i8 [ %1644, %1642 ], [ %1644, %1663 ], [ %1644, %1658 ], [ 1, %1671 ]
  %1675 = getelementptr inbounds ptr, ptr %1645, i64 1
  %1676 = load ptr, ptr %1675, align 8, !tbaa !70
  %1677 = icmp eq ptr %1676, null
  br i1 %1677, label %1678, label %1642, !prof !300, !llvm.loop !301

1678:                                             ; preds = %1673, %1630
  %1679 = phi i8 [ 0, %1630 ], [ %1674, %1673 ]
  %1680 = icmp eq i8 %1679, 0
  br i1 %1680, label %1772, label %1681, !prof !302

1681:                                             ; preds = %1678
  %1682 = load ptr, ptr @df, align 8, !tbaa !70
  %1683 = getelementptr inbounds %struct.df, ptr %1682, i64 0, i32 10
  %1684 = load ptr, ptr %1683, align 8, !tbaa !211
  %1685 = load i32, ptr %390, align 8, !tbaa !81
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds ptr, ptr %1684, i64 %1686
  %1688 = load ptr, ptr %1687, align 8, !tbaa !70
  %1689 = getelementptr inbounds %struct.df_insn_info, ptr %1688, i64 0, i32 1
  %1690 = load ptr, ptr %1689, align 8, !tbaa !214
  %1691 = load ptr, ptr %1690, align 8, !tbaa !70
  %1692 = icmp eq ptr %1691, null
  br i1 %1692, label %1730, label %1693, !prof !295

1693:                                             ; preds = %1681, %1726
  %1694 = phi ptr [ %1728, %1726 ], [ %1691, %1681 ]
  %1695 = phi ptr [ %1727, %1726 ], [ %1690, %1681 ]
  %1696 = load i32, ptr %1694, align 8
  %1697 = and i32 %1696, 8388608
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1726, label %1699, !prof !296

1699:                                             ; preds = %1693
  %1700 = getelementptr inbounds %struct.df_base_ref, ptr %1694, i64 0, i32 1
  %1701 = load ptr, ptr %1700, align 8, !tbaa !81
  %1702 = load i32, ptr %1701, align 8
  %1703 = and i32 %1702, 65535
  %1704 = icmp eq i32 %1703, 39
  br i1 %1704, label %1705, label %1708, !prof !297

1705:                                             ; preds = %1699
  %1706 = getelementptr inbounds %struct.rtx_def, ptr %1701, i64 0, i32 1
  %1707 = load ptr, ptr %1706, align 8, !tbaa !81
  br label %1708

1708:                                             ; preds = %1705, %1699
  %1709 = phi ptr [ %1707, %1705 ], [ %1701, %1699 ]
  %1710 = load i32, ptr %1709, align 8
  %1711 = and i32 %1710, 65535
  %1712 = icmp eq i32 %1711, 37
  br i1 %1712, label %1713, label %1726, !prof !298

1713:                                             ; preds = %1708
  %1714 = getelementptr inbounds %struct.rtx_def, ptr %1709, i64 0, i32 1
  %1715 = load i32, ptr %1714, align 8, !tbaa !81
  %1716 = icmp ult i32 %1715, 53
  %1717 = and i32 %1696, 1114112
  %1718 = icmp eq i32 %1717, 0
  %1719 = and i1 %1716, %1718
  br i1 %1719, label %1720, label %1726, !prof !303

1720:                                             ; preds = %1713
  br i1 %1704, label %1721, label %1724, !prof !299

1721:                                             ; preds = %1720
  %1722 = getelementptr inbounds %struct.rtx_def, ptr %1701, i64 0, i32 1
  %1723 = load ptr, ptr %1722, align 8, !tbaa !81
  br label %1724

1724:                                             ; preds = %1721, %1720
  %1725 = phi ptr [ %1723, %1721 ], [ %1701, %1720 ]
  tail call fastcc void @mark_reg_dead(ptr noundef %1725)
  br label %1726

1726:                                             ; preds = %1724, %1713, %1708, %1693
  %1727 = getelementptr inbounds ptr, ptr %1695, i64 1
  %1728 = load ptr, ptr %1727, align 8, !tbaa !70
  %1729 = icmp eq ptr %1728, null
  br i1 %1729, label %1730, label %1693, !prof !300, !llvm.loop !301

1730:                                             ; preds = %1726, %1681
  %1731 = load ptr, ptr @df, align 8, !tbaa !70
  %1732 = getelementptr inbounds %struct.df, ptr %1731, i64 0, i32 10
  %1733 = load ptr, ptr %1732, align 8, !tbaa !211
  %1734 = load i32, ptr %390, align 8, !tbaa !81
  %1735 = sext i32 %1734 to i64
  %1736 = getelementptr inbounds ptr, ptr %1733, i64 %1735
  %1737 = load ptr, ptr %1736, align 8, !tbaa !70
  %1738 = getelementptr inbounds %struct.df_insn_info, ptr %1737, i64 0, i32 2
  %1739 = load ptr, ptr %1738, align 8, !tbaa !242
  %1740 = load ptr, ptr %1739, align 8, !tbaa !70
  %1741 = icmp eq ptr %1740, null
  br i1 %1741, label %1772, label %1742, !prof !304

1742:                                             ; preds = %1730, %1768
  %1743 = phi ptr [ %1770, %1768 ], [ %1740, %1730 ]
  %1744 = phi ptr [ %1769, %1768 ], [ %1739, %1730 ]
  %1745 = getelementptr inbounds %struct.df_base_ref, ptr %1743, i64 0, i32 1
  %1746 = load ptr, ptr %1745, align 8, !tbaa !81
  %1747 = load i32, ptr %1746, align 8
  %1748 = and i32 %1747, 65535
  %1749 = icmp eq i32 %1748, 39
  br i1 %1749, label %1750, label %1753, !prof !305

1750:                                             ; preds = %1742
  %1751 = getelementptr inbounds %struct.rtx_def, ptr %1746, i64 0, i32 1
  %1752 = load ptr, ptr %1751, align 8, !tbaa !81
  br label %1753

1753:                                             ; preds = %1750, %1742
  %1754 = phi ptr [ %1752, %1750 ], [ %1746, %1742 ]
  %1755 = load i32, ptr %1754, align 8
  %1756 = and i32 %1755, 65535
  %1757 = icmp eq i32 %1756, 37
  br i1 %1757, label %1758, label %1768, !prof !306

1758:                                             ; preds = %1753
  %1759 = getelementptr inbounds %struct.rtx_def, ptr %1754, i64 0, i32 1
  %1760 = load i32, ptr %1759, align 8, !tbaa !81
  %1761 = icmp ugt i32 %1760, 52
  br i1 %1761, label %1768, label %1762, !prof !307

1762:                                             ; preds = %1758
  br i1 %1749, label %1763, label %1766, !prof !308

1763:                                             ; preds = %1762
  %1764 = getelementptr inbounds %struct.rtx_def, ptr %1746, i64 0, i32 1
  %1765 = load ptr, ptr %1764, align 8, !tbaa !81
  br label %1766

1766:                                             ; preds = %1762, %1763
  %1767 = phi ptr [ %1765, %1763 ], [ %1746, %1762 ]
  tail call fastcc void @mark_reg_live(ptr noundef %1767)
  br label %1768

1768:                                             ; preds = %1753, %1758, %1766
  %1769 = getelementptr inbounds ptr, ptr %1744, i64 1
  %1770 = load ptr, ptr %1769, align 8, !tbaa !70
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1772, label %1742, !prof !309, !llvm.loop !310

1772:                                             ; preds = %1768, %1730, %1678
  %1773 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1774 = add nsw i32 %1773, 1
  store i32 %1774, ptr @curr_point, align 4, !tbaa !85
  br label %1775

1775:                                             ; preds = %362, %1772
  %1776 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1, i32 0, i32 0, i64 1
  %1777 = load ptr, ptr %1776, align 8, !tbaa !81
  %1778 = icmp eq ptr %1777, null
  br i1 %1778, label %1779, label %355, !prof !311, !llvm.loop !312

1779:                                             ; preds = %355, %1775, %345
  br label %1780

1780:                                             ; preds = %1779, %1807
  %1781 = phi i32 [ %1808, %1807 ], [ 0, %1779 ]
  %1782 = load ptr, ptr %2, align 8, !tbaa !70
  %1783 = icmp eq ptr %1782, null
  br i1 %1783, label %1786, label %1784, !prof !313

1784:                                             ; preds = %1780
  %1785 = load i32, ptr %1782, align 8, !tbaa !314
  br label %1786

1786:                                             ; preds = %1784, %1780
  %1787 = phi i32 [ %1785, %1784 ], [ 0, %1780 ]
  %1788 = icmp eq i32 %1787, %1781
  br i1 %1788, label %1793, label %1789, !prof !316

1789:                                             ; preds = %1786
  %1790 = zext i32 %1781 to i64
  %1791 = getelementptr inbounds %struct.VEC_edge_base, ptr %1782, i64 0, i32 2, i64 %1790
  %1792 = load ptr, ptr %1791, align 8, !tbaa !70
  br label %1793

1793:                                             ; preds = %1789, %1786
  %1794 = phi ptr [ %1792, %1789 ], [ null, %1786 ]
  br i1 %1788, label %1814, label %1795, !prof !316

1795:                                             ; preds = %1793
  %1796 = getelementptr inbounds %struct.edge_def, ptr %1794, i64 0, i32 7
  %1797 = load i32, ptr %1796, align 8, !tbaa !317
  %1798 = and i32 %1797, 8
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1800, label %1809, !prof !319

1800:                                             ; preds = %1795
  br i1 %1783, label %1803, label %1801, !prof !320

1801:                                             ; preds = %1800
  %1802 = load i32, ptr %1782, align 8, !tbaa !314
  br label %1803

1803:                                             ; preds = %1801, %1800
  %1804 = phi i32 [ %1802, %1801 ], [ 0, %1800 ]
  %1805 = icmp ult i32 %1781, %1804
  br i1 %1805, label %1807, label %1806, !prof !319

1806:                                             ; preds = %1803
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1807

1807:                                             ; preds = %1806, %1803
  %1808 = add i32 %1781, 1
  br label %1780, !llvm.loop !321

1809:                                             ; preds = %1795
  br i1 %1788, label %1814, label %1810, !prof !152

1810:                                             ; preds = %1809, %1810
  %1811 = phi i32 [ %1812, %1810 ], [ 0, %1809 ]
  tail call fastcc void @make_regno_born(i32 noundef %1811)
  %1812 = add nuw nsw i32 %1811, 1
  %1813 = icmp eq i32 %1811, 0
  br i1 %1813, label %1810, label %1814, !llvm.loop !322

1814:                                             ; preds = %1793, %1810, %1809
  br label %1815

1815:                                             ; preds = %1814, %1842
  %1816 = phi i32 [ %1843, %1842 ], [ 0, %1814 ]
  %1817 = load ptr, ptr %2, align 8, !tbaa !70
  %1818 = icmp eq ptr %1817, null
  br i1 %1818, label %1821, label %1819, !prof !313

1819:                                             ; preds = %1815
  %1820 = load i32, ptr %1817, align 8, !tbaa !314
  br label %1821

1821:                                             ; preds = %1819, %1815
  %1822 = phi i32 [ %1820, %1819 ], [ 0, %1815 ]
  %1823 = icmp eq i32 %1822, %1816
  br i1 %1823, label %1828, label %1824, !prof !316

1824:                                             ; preds = %1821
  %1825 = zext i32 %1816 to i64
  %1826 = getelementptr inbounds %struct.VEC_edge_base, ptr %1817, i64 0, i32 2, i64 %1825
  %1827 = load ptr, ptr %1826, align 8, !tbaa !70
  br label %1828

1828:                                             ; preds = %1824, %1821
  %1829 = phi ptr [ %1827, %1824 ], [ null, %1821 ]
  br i1 %1823, label %1929, label %1830, !prof !316

1830:                                             ; preds = %1828
  %1831 = getelementptr inbounds %struct.edge_def, ptr %1829, i64 0, i32 7
  %1832 = load i32, ptr %1831, align 8, !tbaa !317
  %1833 = and i32 %1832, 2
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1835, label %1844, !prof !319

1835:                                             ; preds = %1830
  br i1 %1818, label %1838, label %1836, !prof !320

1836:                                             ; preds = %1835
  %1837 = load i32, ptr %1817, align 8, !tbaa !314
  br label %1838

1838:                                             ; preds = %1836, %1835
  %1839 = phi i32 [ %1837, %1836 ], [ 0, %1835 ]
  %1840 = icmp ult i32 %1816, %1839
  br i1 %1840, label %1842, label %1841, !prof !319

1841:                                             ; preds = %1838
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1842

1842:                                             ; preds = %1841, %1838
  %1843 = add i32 %1816, 1
  br label %1815, !llvm.loop !323

1844:                                             ; preds = %1830
  br i1 %1823, label %1929, label %1845, !prof !152

1845:                                             ; preds = %1844
  %1846 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1847 = getelementptr inbounds %struct.sparseset_def, ptr %1846, i64 0, i32 4
  store i32 0, ptr %1847, align 8, !tbaa !184
  %1848 = getelementptr inbounds %struct.sparseset_def, ptr %1846, i64 0, i32 5
  store i8 1, ptr %1848, align 4, !tbaa !185
  %1849 = getelementptr inbounds %struct.sparseset_def, ptr %1846, i64 0, i32 6
  store i8 1, ptr %1849, align 1, !tbaa !139
  %1850 = load ptr, ptr @ira_allocnos, align 8
  br label %1851

1851:                                             ; preds = %1845, %1857
  %1852 = getelementptr inbounds %struct.sparseset_def, ptr %1846, i64 0, i32 2
  %1853 = load i32, ptr %1847, align 8, !tbaa !184
  %1854 = load i32, ptr %1852, align 8, !tbaa !137
  %1855 = icmp ult i32 %1853, %1854
  br i1 %1855, label %1857, label %1856

1856:                                             ; preds = %1857, %1851
  store i8 0, ptr %1849, align 1, !tbaa !139
  br label %1879

1857:                                             ; preds = %1851
  %1858 = load ptr, ptr %1846, align 8, !tbaa !170
  %1859 = load i32, ptr %1847, align 8, !tbaa !184
  %1860 = zext i32 %1859 to i64
  %1861 = getelementptr inbounds i32, ptr %1858, i64 %1860
  %1862 = load i32, ptr %1861, align 4, !tbaa !85
  %1863 = zext i32 %1862 to i64
  %1864 = getelementptr inbounds ptr, ptr %1850, i64 %1863
  %1865 = load ptr, ptr %1864, align 8, !tbaa !70
  %1866 = getelementptr inbounds %struct.ira_allocno, ptr %1865, i64 0, i32 31
  %1867 = load i16, ptr %1866, align 4
  %1868 = or i16 %1867, 16
  store i16 %1868, ptr %1866, align 4
  %1869 = load ptr, ptr %1864, align 8, !tbaa !70
  %1870 = getelementptr inbounds %struct.ira_allocno, ptr %1869, i64 0, i32 31
  %1871 = load i16, ptr %1870, align 4
  %1872 = or i16 %1871, 32
  store i16 %1872, ptr %1870, align 4
  %1873 = load i8, ptr %1848, align 4, !tbaa !185
  %1874 = zext i8 %1873 to i32
  %1875 = load i32, ptr %1847, align 8, !tbaa !184
  %1876 = add i32 %1875, %1874
  store i32 %1876, ptr %1847, align 8, !tbaa !184
  store i8 1, ptr %1848, align 4, !tbaa !185
  %1877 = load i8, ptr %1849, align 1, !tbaa !139
  %1878 = icmp eq i8 %1877, 0
  br i1 %1878, label %1856, label %1851, !llvm.loop !324

1879:                                             ; preds = %1856, %1879
  %1880 = phi i32 [ 8, %1856 ], [ %1881, %1879 ]
  tail call fastcc void @make_regno_born(i32 noundef %1880)
  %1881 = add nuw nsw i32 %1880, 1
  %1882 = icmp eq i32 %1881, 16
  br i1 %1882, label %1883, label %1879, !llvm.loop !325

1883:                                             ; preds = %1879
  %1884 = load ptr, ptr @cfun, align 8, !tbaa !70
  %1885 = getelementptr inbounds %struct.function, ptr %1884, i64 0, i32 20
  %1886 = load i32, ptr %1885, align 8
  %1887 = and i32 %1886, 1048576
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1889, label %1929

1889:                                             ; preds = %1883, %1916
  %1890 = phi i32 [ %1917, %1916 ], [ 0, %1883 ]
  %1891 = load ptr, ptr %2, align 8, !tbaa !70
  %1892 = icmp eq ptr %1891, null
  br i1 %1892, label %1895, label %1893

1893:                                             ; preds = %1889
  %1894 = load i32, ptr %1891, align 8, !tbaa !314
  br label %1895

1895:                                             ; preds = %1893, %1889
  %1896 = phi i32 [ %1894, %1893 ], [ 0, %1889 ]
  %1897 = icmp eq i32 %1896, %1890
  br i1 %1897, label %1902, label %1898

1898:                                             ; preds = %1895
  %1899 = zext i32 %1890 to i64
  %1900 = getelementptr inbounds %struct.VEC_edge_base, ptr %1891, i64 0, i32 2, i64 %1899
  %1901 = load ptr, ptr %1900, align 8, !tbaa !70
  br label %1902

1902:                                             ; preds = %1898, %1895
  %1903 = phi ptr [ %1901, %1898 ], [ null, %1895 ]
  br i1 %1897, label %1929, label %1904

1904:                                             ; preds = %1902
  %1905 = getelementptr inbounds %struct.edge_def, ptr %1903, i64 0, i32 7
  %1906 = load i32, ptr %1905, align 8, !tbaa !317
  %1907 = and i32 %1906, 12
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1909, label %1918

1909:                                             ; preds = %1904
  br i1 %1892, label %1912, label %1910

1910:                                             ; preds = %1909
  %1911 = load i32, ptr %1891, align 8, !tbaa !314
  br label %1912

1912:                                             ; preds = %1910, %1909
  %1913 = phi i32 [ %1911, %1910 ], [ 0, %1909 ]
  %1914 = icmp ult i32 %1890, %1913
  br i1 %1914, label %1916, label %1915

1915:                                             ; preds = %1912
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 738, ptr noundef nonnull @.str.6) #17
  br label %1916

1916:                                             ; preds = %1915, %1912
  %1917 = add i32 %1890, 1
  br label %1889, !llvm.loop !326

1918:                                             ; preds = %1904
  br i1 %1897, label %1929, label %1919

1919:                                             ; preds = %1918, %1926
  %1920 = phi i64 [ %1927, %1926 ], [ 0, %1918 ]
  %1921 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %1920
  %1922 = load i8, ptr %1921, align 1, !tbaa !81
  %1923 = icmp eq i8 %1922, 0
  br i1 %1923, label %1926, label %1924

1924:                                             ; preds = %1919
  %1925 = trunc i64 %1920 to i32
  tail call fastcc void @make_regno_born(i32 noundef %1925)
  br label %1926

1926:                                             ; preds = %1919, %1924
  %1927 = add nuw nsw i64 %1920, 1
  %1928 = icmp eq i64 %1927, 53
  br i1 %1928, label %1929, label %1919, !llvm.loop !327

1929:                                             ; preds = %1828, %1902, %1926, %1918, %1883, %1844
  %1930 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %1931 = getelementptr inbounds %struct.sparseset_def, ptr %1930, i64 0, i32 4
  store i32 0, ptr %1931, align 8, !tbaa !184
  %1932 = getelementptr inbounds %struct.sparseset_def, ptr %1930, i64 0, i32 5
  store i8 1, ptr %1932, align 4, !tbaa !185
  %1933 = getelementptr inbounds %struct.sparseset_def, ptr %1930, i64 0, i32 6
  store i8 1, ptr %1933, align 1, !tbaa !139
  %1934 = getelementptr inbounds %struct.sparseset_def, ptr %1930, i64 0, i32 2
  %1935 = load i32, ptr %1934, align 8, !tbaa !137
  %1936 = load ptr, ptr @ira_allocnos, align 8
  %1937 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %1938 = load i32, ptr @curr_point, align 4
  %1939 = add i32 %1938, 1
  %1940 = load i32, ptr %1931, align 8, !tbaa !184
  %1941 = icmp ult i32 %1940, %1935
  br i1 %1941, label %1942, label %1947, !prof !127

1942:                                             ; preds = %1929
  %1943 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %1944 = load ptr, ptr %1930, align 8, !tbaa !170
  %1945 = load i8, ptr %1932, align 4, !tbaa !185
  br label %1950

1946:                                             ; preds = %2002
  store i8 1, ptr %1932, align 4, !tbaa !185
  br label %1947

1947:                                             ; preds = %1946, %1929
  store i8 0, ptr %1933, align 1, !tbaa !139
  %1948 = load i32, ptr @curr_point, align 4, !tbaa !85
  %1949 = add nsw i32 %1948, 1
  store i32 %1949, ptr @curr_point, align 4, !tbaa !85
  br label %2007

1950:                                             ; preds = %1942, %2002
  %1951 = phi i8 [ %1945, %1942 ], [ 1, %2002 ]
  %1952 = phi i64 [ %1943, %1942 ], [ %2003, %2002 ]
  %1953 = phi i32 [ %1940, %1942 ], [ %2005, %2002 ]
  %1954 = zext i32 %1953 to i64
  %1955 = getelementptr inbounds i32, ptr %1944, i64 %1954
  %1956 = load i32, ptr %1955, align 4, !tbaa !85
  %1957 = sext i32 %1956 to i64
  %1958 = getelementptr inbounds ptr, ptr %1936, i64 %1957
  %1959 = load ptr, ptr %1958, align 8, !tbaa !70
  %1960 = getelementptr inbounds %struct.ira_allocno, ptr %1959, i64 0, i32 1
  %1961 = load i32, ptr %1960, align 4, !tbaa !115
  %1962 = icmp slt i32 %1961, 53
  %1963 = zext nneg i32 %1961 to i64
  br i1 %1962, label %1964, label %1968, !prof !328

1964:                                             ; preds = %1950
  %1965 = shl nuw i64 1, %1963
  %1966 = xor i64 %1965, -1
  %1967 = and i64 %1952, %1966
  store i64 %1967, ptr @hard_regs_live, align 8, !tbaa !89
  br label %2002

1968:                                             ; preds = %1950
  %1969 = getelementptr inbounds ptr, ptr %1937, i64 %1963
  %1970 = load ptr, ptr %1969, align 8, !tbaa !70
  %1971 = icmp eq ptr %1970, null
  br i1 %1971, label %2002, label %1972, !prof !171

1972:                                             ; preds = %1968
  %1973 = getelementptr inbounds %struct.ira_allocno, ptr %1970, i64 0, i32 20
  %1974 = load ptr, ptr %1973, align 8, !tbaa !116
  %1975 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %1974, i64 0, i32 2
  store i32 %1938, ptr %1975, align 4, !tbaa !107
  %1976 = getelementptr inbounds %struct.ira_allocno, ptr %1970, i64 0, i32 9
  %1977 = load i32, ptr %1976, align 8, !tbaa !175
  %1978 = zext i32 %1977 to i64
  %1979 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1978, i64 0
  %1980 = load i32, ptr %1979, align 4, !tbaa !85
  %1981 = icmp eq i32 %1980, 27
  br i1 %1981, label %2002, label %1982, !prof !176

1982:                                             ; preds = %1972, %1997
  %1983 = phi i64 [ %1998, %1997 ], [ 0, %1972 ]
  %1984 = phi i32 [ %2000, %1997 ], [ %1980, %1972 ]
  %1985 = zext i32 %1984 to i64
  %1986 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %1985
  %1987 = load i32, ptr %1986, align 4, !tbaa !85
  %1988 = icmp slt i32 %1987, 0
  br i1 %1988, label %1997, label %1989, !prof !178

1989:                                             ; preds = %1982
  %1990 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %1974, i64 0, i32 1
  %1991 = getelementptr inbounds %struct.ira_allocno, ptr %1970, i64 0, i32 14
  %1992 = load i32, ptr %1990, align 8, !tbaa !104
  %1993 = tail call i32 @llvm.smax.i32(i32 %1987, i32 %1992)
  %1994 = load i32, ptr %1991, align 4, !tbaa !329
  %1995 = sub i32 %1939, %1993
  %1996 = add nsw i32 %1995, %1994
  store i32 %1996, ptr %1991, align 4, !tbaa !329
  br label %1997

1997:                                             ; preds = %1989, %1982
  %1998 = add nuw nsw i64 %1983, 1
  %1999 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %1978, i64 %1998
  %2000 = load i32, ptr %1999, align 4, !tbaa !85
  %2001 = icmp eq i32 %2000, 27
  br i1 %2001, label %2002, label %1982, !prof !181, !llvm.loop !330

2002:                                             ; preds = %1997, %1964, %1968, %1972
  %2003 = phi i64 [ %1967, %1964 ], [ %1952, %1968 ], [ %1952, %1972 ], [ %1952, %1997 ]
  %2004 = zext i8 %1951 to i32
  %2005 = add i32 %1953, %2004
  store i32 %2005, ptr %1931, align 8, !tbaa !184
  %2006 = icmp ult i32 %2005, %1935
  br i1 %2006, label %1950, label %1946, !prof !331

2007:                                             ; preds = %1947, %1
  %2008 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !70
  %2009 = icmp ne ptr %2008, %0
  %2010 = load i32, ptr @ira_reg_class_cover_size, align 4
  %2011 = icmp sgt i32 %2010, 0
  %2012 = select i1 %2009, i1 %2011, i1 false
  br i1 %2012, label %2013, label %2032, !prof !332

2013:                                             ; preds = %2007
  %2014 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %2015 = load ptr, ptr %2014, align 8, !tbaa !205
  br label %2016

2016:                                             ; preds = %2013, %2027
  %2017 = phi i64 [ 0, %2013 ], [ %2028, %2027 ]
  %2018 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %2017
  %2019 = load i32, ptr %2018, align 4, !tbaa !85
  %2020 = zext i32 %2019 to i64
  %2021 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %2020
  %2022 = load i32, ptr %2021, align 4, !tbaa !85
  %2023 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2015, i64 0, i32 11, i64 %2020
  %2024 = load i32, ptr %2023, align 4, !tbaa !85
  %2025 = icmp sgt i32 %2022, %2024
  br i1 %2025, label %2026, label %2027, !prof !333

2026:                                             ; preds = %2016
  store i32 %2022, ptr %2023, align 4, !tbaa !85
  br label %2027

2027:                                             ; preds = %2026, %2016
  %2028 = add nuw nsw i64 %2017, 1
  %2029 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !85
  %2030 = sext i32 %2029 to i64
  %2031 = icmp slt i64 %2028, %2030
  br i1 %2031, label %2016, label %2032, !prof !334, !llvm.loop !335

2032:                                             ; preds = %2027, %2007
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @ira_compress_allocno_live_ranges() local_unnamed_addr #9 !prof !118 {
  %1 = tail call ptr @ira_allocate_bitmap() #17
  br label %3

2:                                                ; preds = %42, %38
  br label %3, !llvm.loop !336

3:                                                ; preds = %2, %0
  %4 = phi i32 [ 0, %0 ], [ %36, %2 ]
  %5 = phi ptr [ undef, %0 ], [ %37, %2 ]
  %6 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %34, !prof !98

8:                                                ; preds = %3
  %9 = load ptr, ptr @ira_allocnos, align 8, !tbaa !70
  %10 = sext i32 %4 to i64
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %21, !prof !99

15:                                               ; preds = %27
  %16 = getelementptr inbounds ptr, ptr %9, i64 %29
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19, !prof !99, !llvm.loop !100

19:                                               ; preds = %15
  %20 = icmp slt i64 %29, %11
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi i64 [ %10, %8 ], [ %29, %19 ]
  %23 = phi i1 [ %7, %8 ], [ %20, %19 ]
  %24 = phi ptr [ %13, %8 ], [ %17, %19 ]
  %25 = trunc i64 %22 to i32
  %26 = add nsw i32 %25, 1
  br label %34

27:                                               ; preds = %8, %15
  %28 = phi i64 [ %29, %15 ], [ %10, %8 ]
  %29 = add nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %6, %30
  br i1 %31, label %32, label %15, !prof !101, !llvm.loop !100

32:                                               ; preds = %27
  %33 = icmp slt i64 %29, %11
  br label %34

34:                                               ; preds = %32, %3, %21
  %35 = phi i1 [ %23, %21 ], [ %7, %3 ], [ %33, %32 ]
  %36 = phi i32 [ %26, %21 ], [ %4, %3 ], [ %4, %32 ]
  %37 = phi ptr [ %24, %21 ], [ %5, %3 ], [ %5, %32 ]
  br i1 %35, label %38, label %53, !prof !337

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %2, label %42, !prof !338

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %51, %42 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !104
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %45) #17
  %47 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %43, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !107
  %49 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %48) #17
  %50 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %43, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  %52 = icmp eq ptr %51, null
  br i1 %52, label %2, label %42, !prof !339, !llvm.loop !340

53:                                               ; preds = %34
  %54 = load i32, ptr @ira_max_point, align 4, !tbaa !85
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = tail call ptr @ira_allocate(i64 noundef %56) #17
  %58 = load ptr, ptr %1, align 8, !tbaa !147
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr @bitmap_zero_bits, ptr %58, !prof !121
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !150
  %63 = shl i32 %62, 7
  %64 = getelementptr inbounds %struct.bitmap_element_def, ptr %60, i64 0, i32 3, i64 0
  %65 = load i64, ptr %64, align 8, !tbaa !89
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = or disjoint i32 %63, %67
  br label %69

69:                                               ; preds = %131, %53
  %70 = phi i64 [ %65, %53 ], [ %135, %131 ]
  %71 = phi i32 [ 0, %53 ], [ %127, %131 ]
  %72 = phi i32 [ %68, %53 ], [ %136, %131 ]
  %73 = phi ptr [ %60, %53 ], [ %129, %131 ]
  %74 = phi i32 [ 0, %53 ], [ %132, %131 ]
  %75 = icmp eq i64 %70, 0
  br i1 %75, label %90, label %76, !prof !341

76:                                               ; preds = %104, %69
  %77 = phi i64 [ %70, %69 ], [ %109, %104 ]
  %78 = phi i32 [ %71, %69 ], [ %105, %104 ]
  %79 = phi i32 [ %72, %69 ], [ %106, %104 ]
  %80 = phi ptr [ %73, %69 ], [ %97, %104 ]
  %81 = and i64 %77, 1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %125, !prof !342

83:                                               ; preds = %76, %83
  %84 = phi i32 [ %87, %83 ], [ %79, %76 ]
  %85 = phi i64 [ %86, %83 ], [ %77, %76 ]
  %86 = lshr exact i64 %85, 1
  %87 = add i32 %84, 1
  %88 = and i64 %85, 2
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %83, label %125, !prof !343, !llvm.loop !156

90:                                               ; preds = %69
  %91 = add i32 %72, 63
  %92 = and i32 %91, -64
  %93 = add i32 %71, 1
  br label %94

94:                                               ; preds = %121, %90
  %95 = phi i64 [ %70, %90 ], [ %116, %121 ]
  %96 = phi i32 [ %92, %90 ], [ %124, %121 ]
  %97 = phi ptr [ %73, %90 ], [ %119, %121 ]
  %98 = phi i32 [ %93, %90 ], [ 0, %121 ]
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %115, label %100, !prof !344

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
  %109 = load i64, ptr %108, align 8, !tbaa !89
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %76, !prof !345

111:                                              ; preds = %104
  %112 = add i32 %106, 64
  %113 = add i32 %105, 1
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %104, !prof !346, !llvm.loop !160

115:                                              ; preds = %111, %94
  %116 = phi i64 [ %95, %94 ], [ %109, %111 ]
  %117 = phi i32 [ %96, %94 ], [ %103, %111 ]
  %118 = phi i32 [ %98, %94 ], [ 2, %111 ]
  %119 = load ptr, ptr %97, align 8, !tbaa !161
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121, !prof !347

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.bitmap_element_def, ptr %119, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !150
  %124 = shl i32 %123, 7
  br label %94, !llvm.loop !163

125:                                              ; preds = %115, %83, %76
  %126 = phi i64 [ %77, %76 ], [ %86, %83 ], [ %116, %115 ]
  %127 = phi i32 [ %78, %76 ], [ %78, %83 ], [ %118, %115 ]
  %128 = phi i32 [ %79, %76 ], [ %87, %83 ], [ %117, %115 ]
  %129 = phi ptr [ %80, %76 ], [ %80, %83 ], [ %119, %115 ]
  %130 = phi i1 [ false, %76 ], [ false, %83 ], [ true, %115 ]
  br i1 %130, label %137, label %131, !prof !348

131:                                              ; preds = %125
  %132 = add nuw nsw i32 %74, 1
  %133 = zext i32 %128 to i64
  %134 = getelementptr inbounds i32, ptr %57, i64 %133
  store i32 %74, ptr %134, align 4, !tbaa !85
  %135 = lshr i64 %126, 1
  %136 = add i32 %128, 1
  br label %69, !llvm.loop !349

137:                                              ; preds = %125
  tail call void @ira_free_bitmap(ptr noundef nonnull %1) #17
  %138 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !85
  %139 = icmp sgt i32 %138, 1
  %140 = load ptr, ptr @ira_dump_file, align 8
  %141 = icmp ne ptr %140, null
  %142 = select i1 %139, i1 %141, i1 false, !prof !120
  br i1 %142, label %143, label %148, !prof !121

143:                                              ; preds = %137
  %144 = load i32, ptr @ira_max_point, align 4, !tbaa !85
  %145 = mul nsw i32 %74, 100
  %146 = sdiv i32 %145, %144
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %140, ptr noundef nonnull @.str.9, i32 noundef %144, i32 noundef %74, i32 noundef %146)
  br label %148

148:                                              ; preds = %143, %137
  store i32 %74, ptr @ira_max_point, align 4, !tbaa !85
  %149 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !85
  %150 = load ptr, ptr @ira_allocnos, align 8
  br label %152

151:                                              ; preds = %189, %185
  br label %152, !llvm.loop !350

152:                                              ; preds = %151, %148
  %153 = phi i32 [ 0, %148 ], [ %183, %151 ]
  %154 = phi ptr [ %37, %148 ], [ %184, %151 ]
  %155 = icmp slt i32 %153, %149
  br i1 %155, label %156, label %181, !prof !98

156:                                              ; preds = %152
  %157 = sext i32 %153 to i64
  %158 = getelementptr inbounds ptr, ptr %150, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !70
  %160 = icmp eq ptr %159, null
  br i1 %160, label %173, label %167, !prof !99

161:                                              ; preds = %173
  %162 = getelementptr inbounds ptr, ptr %150, i64 %176
  %163 = load ptr, ptr %162, align 8, !tbaa !70
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165, !prof !99, !llvm.loop !100

165:                                              ; preds = %161
  %166 = icmp slt i64 %176, %175
  br label %167

167:                                              ; preds = %165, %156
  %168 = phi i64 [ %157, %156 ], [ %176, %165 ]
  %169 = phi i1 [ %155, %156 ], [ %166, %165 ]
  %170 = phi ptr [ %159, %156 ], [ %163, %165 ]
  %171 = trunc i64 %168 to i32
  %172 = add nsw i32 %171, 1
  br label %181

173:                                              ; preds = %156, %161
  %174 = phi i64 [ %176, %161 ], [ %157, %156 ]
  %175 = sext i32 %149 to i64
  %176 = add nsw i64 %174, 1
  %177 = trunc i64 %176 to i32
  %178 = icmp eq i32 %149, %177
  br i1 %178, label %179, label %161, !prof !101, !llvm.loop !100

179:                                              ; preds = %173
  %180 = icmp slt i64 %176, %175
  br label %181

181:                                              ; preds = %179, %152, %167
  %182 = phi i1 [ %169, %167 ], [ %155, %152 ], [ %180, %179 ]
  %183 = phi i32 [ %172, %167 ], [ %153, %152 ], [ %153, %179 ]
  %184 = phi ptr [ %170, %167 ], [ %154, %152 ], [ %154, %179 ]
  br i1 %182, label %185, label %204, !prof !337

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.ira_allocno, ptr %184, i64 0, i32 20
  %187 = load ptr, ptr %186, align 8, !tbaa !70
  %188 = icmp eq ptr %187, null
  br i1 %188, label %151, label %189, !prof !338

189:                                              ; preds = %185, %189
  %190 = phi ptr [ %202, %189 ], [ %187, %185 ]
  %191 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %190, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !104
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, ptr %57, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !85
  store i32 %195, ptr %191, align 8, !tbaa !104
  %196 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %190, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !107
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %57, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !85
  store i32 %200, ptr %196, align 4, !tbaa !107
  %201 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %190, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !70
  %203 = icmp eq ptr %202, null
  br i1 %203, label %151, label %189, !prof !339, !llvm.loop !351

204:                                              ; preds = %181
  tail call void @ira_free(ptr noundef %57) #17
  %205 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %205) #17
  %206 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %206) #17
  tail call fastcc void @create_start_finish_chains()
  %207 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !85
  %208 = icmp sgt i32 %207, 2
  %209 = load ptr, ptr @ira_dump_file, align 8
  %210 = icmp ne ptr %209, null
  %211 = select i1 %208, i1 %210, i1 false, !prof !120
  br i1 %211, label %212, label %215, !prof !121

212:                                              ; preds = %204
  %213 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 30, i64 1, ptr nonnull %209)
  %214 = load ptr, ptr @ira_dump_file, align 8, !tbaa !70
  tail call fastcc void @print_live_ranges(ptr noundef %214)
  br label %215

215:                                              ; preds = %212, %204
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_finish_allocno_live_ranges() local_unnamed_addr #9 !prof !118 {
  %1 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %1) #17
  %2 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !70
  tail call void @ira_free(ptr noundef %2) #17
  ret void
}

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @make_regno_born(i32 noundef %0) unnamed_addr #12 !prof !69 !PGOFuncName !352 {
  %2 = icmp slt i32 %0, 53
  br i1 %2, label %3, label %40, !prof !183

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl nuw i64 1, %4
  %6 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %7 = or i64 %6, %5
  store i64 %7, ptr @hard_regs_live, align 8, !tbaa !89
  %8 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.sparseset_def, ptr %8, i64 0, i32 4
  store i32 0, ptr %9, align 8, !tbaa !184
  %10 = getelementptr inbounds %struct.sparseset_def, ptr %8, i64 0, i32 5
  store i8 1, ptr %10, align 4, !tbaa !185
  %11 = getelementptr inbounds %struct.sparseset_def, ptr %8, i64 0, i32 6
  store i8 1, ptr %11, align 1, !tbaa !139
  %12 = getelementptr inbounds %struct.sparseset_def, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !137
  %14 = load ptr, ptr @ira_allocnos, align 8
  %15 = load i32, ptr %9, align 8, !tbaa !184
  %16 = icmp ult i32 %15, %13
  br i1 %16, label %17, label %21, !prof !232

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 8, !tbaa !170
  %19 = load i8, ptr %10, align 4, !tbaa !185
  br label %22

20:                                               ; preds = %22
  store i8 1, ptr %10, align 4, !tbaa !185
  br label %21

21:                                               ; preds = %20, %3
  store i8 0, ptr %11, align 1, !tbaa !139
  br label %61

22:                                               ; preds = %17, %22
  %23 = phi i8 [ 1, %22 ], [ %19, %17 ]
  %24 = phi i32 [ %38, %22 ], [ %15, %17 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %18, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !85
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %14, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 26
  %32 = load i64, ptr %31, align 8, !tbaa !173
  %33 = or i64 %32, %5
  store i64 %33, ptr %31, align 8, !tbaa !173
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %30, i64 0, i32 27
  %35 = load i64, ptr %34, align 8, !tbaa !174
  %36 = or i64 %35, %5
  store i64 %36, ptr %34, align 8, !tbaa !174
  %37 = zext i8 %23 to i32
  %38 = add i32 %24, %37
  store i32 %38, ptr %9, align 8, !tbaa !184
  %39 = icmp ult i32 %38, %13
  br i1 %39, label %22, label %20, !prof !187

40:                                               ; preds = %1
  %41 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %42 = zext nneg i32 %0 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46, !prof !171

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %44, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !116
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50, !prof !188

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %48, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !107
  %53 = load i32, ptr @curr_point, align 4, !tbaa !85
  %54 = icmp eq i32 %52, %53
  %55 = add nsw i32 %52, 1
  %56 = icmp eq i32 %55, %53
  %57 = select i1 %54, i1 true, i1 %56, !prof !189
  br i1 %57, label %61, label %58, !prof !190

58:                                               ; preds = %50, %46
  %59 = load i32, ptr @curr_point, align 4, !tbaa !85
  %60 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %44, i32 noundef %59, i32 noundef -1, ptr noundef %48) #17
  store ptr %60, ptr %47, align 8, !tbaa !116
  br label %61

61:                                               ; preds = %21, %50, %58, %40
  ret void
}

declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare void @preprocess_constraints() local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_reg_live(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !353 !PGOFuncName !354 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5, !prof !220

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 252, ptr noundef nonnull @.str.6) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !81
  %9 = icmp sgt i32 %8, 52
  %10 = zext nneg i32 %8 to i64
  br i1 %9, label %11, label %163, !prof !221

11:                                               ; preds = %6
  %12 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %143, label %16, !prof !222

16:                                               ; preds = %11
  %17 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %18 = load i32, ptr %14, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.sparseset_def, ptr %17, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !166
  %21 = icmp ugt i32 %20, %18
  br i1 %21, label %23, label %22, !prof !223

22:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds %struct.sparseset_def, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !168
  %26 = zext i32 %18 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = getelementptr inbounds %struct.sparseset_def, ptr %17, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !137
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %43, !prof !224

32:                                               ; preds = %23
  %33 = load ptr, ptr %17, align 8, !tbaa !170
  %34 = zext i32 %28 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !85
  %37 = icmp eq i32 %36, %18
  br i1 %37, label %38, label %43, !prof !225

38:                                               ; preds = %32
  %39 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %40 = load i32, ptr %14, align 8, !tbaa !113
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 0, ptr %42, align 4, !tbaa !85
  br label %299

43:                                               ; preds = %23, %32
  %44 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %45 = load i32, ptr %14, align 8, !tbaa !113
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  store i32 0, ptr %47, align 4, !tbaa !85
  %48 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %49 = load i32, ptr %14, align 8, !tbaa !113
  %50 = getelementptr inbounds %struct.sparseset_def, ptr %48, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !166
  %52 = icmp ugt i32 %51, %49
  br i1 %52, label %54, label %53, !prof !167

53:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %54

54:                                               ; preds = %53, %43
  %55 = getelementptr inbounds %struct.sparseset_def, ptr %48, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !168
  %57 = zext i32 %49 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !85
  %60 = getelementptr inbounds %struct.sparseset_def, ptr %48, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !137
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %69, !prof !169

63:                                               ; preds = %54
  %64 = load ptr, ptr %48, align 8, !tbaa !170
  %65 = zext i32 %59 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !85
  %68 = icmp eq i32 %67, %49
  br i1 %68, label %143, label %69, !prof !171

69:                                               ; preds = %63, %54
  %70 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %71 = load i32, ptr %14, align 8, !tbaa !113
  %72 = getelementptr inbounds %struct.sparseset_def, ptr %70, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !166
  %74 = icmp ugt i32 %73, %71
  br i1 %74, label %76, label %75, !prof !167

75:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %76

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.sparseset_def, ptr %70, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !168
  %79 = zext i32 %71 to i64
  %80 = getelementptr inbounds i32, ptr %78, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !85
  %82 = getelementptr inbounds %struct.sparseset_def, ptr %70, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !137
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %91, !prof !169

85:                                               ; preds = %76
  %86 = load ptr, ptr %70, align 8, !tbaa !170
  %87 = zext i32 %81 to i64
  %88 = getelementptr inbounds i32, ptr %86, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !85
  %90 = icmp eq i32 %89, %71
  br i1 %90, label %96, label %91, !prof !172

91:                                               ; preds = %85, %76
  %92 = add i32 %83, 1
  store i32 %92, ptr %82, align 8, !tbaa !137
  store i32 %83, ptr %80, align 4, !tbaa !85
  %93 = load ptr, ptr %70, align 8, !tbaa !170
  %94 = zext i32 %83 to i64
  %95 = getelementptr inbounds i32, ptr %93, i64 %94
  store i32 %71, ptr %95, align 4, !tbaa !85
  br label %96

96:                                               ; preds = %91, %85
  %97 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 26
  %99 = load i64, ptr %98, align 8, !tbaa !173
  %100 = or i64 %99, %97
  store i64 %100, ptr %98, align 8, !tbaa !173
  %101 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 27
  %102 = load i64, ptr %101, align 8, !tbaa !174
  %103 = or i64 %102, %97
  store i64 %103, ptr %101, align 8, !tbaa !174
  %104 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 9
  %105 = load i32, ptr %104, align 8, !tbaa !175
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %106, i64 0
  %108 = load i32, ptr %107, align 4, !tbaa !85
  %109 = icmp eq i32 %108, 27
  br i1 %109, label %143, label %110, !prof !176

110:                                              ; preds = %96
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 2
  %112 = load i32, ptr @curr_point, align 4
  %113 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %114

114:                                              ; preds = %138, %110
  %115 = phi i64 [ 0, %110 ], [ %139, %138 ]
  %116 = phi i32 [ %108, %110 ], [ %141, %138 ]
  %117 = zext i32 %116 to i64
  %118 = load i32, ptr %111, align 8, !tbaa !177
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %117, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !85
  %122 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %117
  %123 = load i32, ptr %122, align 4, !tbaa !85
  %124 = add nsw i32 %123, %121
  store i32 %124, ptr %122, align 4, !tbaa !85
  %125 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %117
  %126 = load i32, ptr %125, align 4, !tbaa !85
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133, !prof !178

128:                                              ; preds = %114
  %129 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %117
  %130 = load i32, ptr %129, align 4, !tbaa !85
  %131 = icmp sgt i32 %124, %130
  br i1 %131, label %132, label %133, !prof !179

132:                                              ; preds = %128
  store i32 %112, ptr %125, align 4, !tbaa !85
  br label %133

133:                                              ; preds = %132, %128, %114
  %134 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %113, i64 0, i32 11, i64 %117
  %135 = load i32, ptr %134, align 4, !tbaa !85
  %136 = icmp slt i32 %135, %124
  br i1 %136, label %137, label %138, !prof !180

137:                                              ; preds = %133
  store i32 %124, ptr %134, align 4, !tbaa !85
  br label %138

138:                                              ; preds = %137, %133
  %139 = add nuw nsw i64 %115, 1
  %140 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %106, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !85
  %142 = icmp eq i32 %141, 27
  br i1 %142, label %143, label %114, !prof !181, !llvm.loop !182

143:                                              ; preds = %138, %11, %63, %96
  %144 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %145 = getelementptr inbounds ptr, ptr %144, i64 %10
  %146 = load ptr, ptr %145, align 8, !tbaa !70
  %147 = icmp eq ptr %146, null
  br i1 %147, label %299, label %148, !prof !171

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 20
  %150 = load ptr, ptr %149, align 8, !tbaa !116
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152, !prof !188

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %150, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !107
  %155 = load i32, ptr @curr_point, align 4, !tbaa !85
  %156 = icmp eq i32 %154, %155
  %157 = add nsw i32 %154, 1
  %158 = icmp eq i32 %157, %155
  %159 = select i1 %156, i1 true, i1 %158, !prof !189
  br i1 %159, label %299, label %160, !prof !190

160:                                              ; preds = %152, %148
  %161 = load i32, ptr @curr_point, align 4, !tbaa !85
  %162 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %146, i32 noundef %161, i32 noundef -1, ptr noundef %150) #17
  store ptr %162, ptr %149, align 8, !tbaa !116
  br label %299

163:                                              ; preds = %6
  %164 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !89
  %165 = shl nuw i64 1, %10
  %166 = and i64 %164, %165
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %299, !prof !226

168:                                              ; preds = %163
  %169 = sext i32 %8 to i64
  %170 = load i32, ptr %0, align 8
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %169, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !81
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %299, label %177, !prof !227

177:                                              ; preds = %168
  %178 = zext i8 %175 to i32
  %179 = add nsw i32 %8, %178
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %177, %296
  %182 = phi i64 [ %169, %177 ], [ %297, %296 ]
  %183 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %184 = shl nuw i64 1, %182
  %185 = and i64 %183, %184
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %296, !prof !228

187:                                              ; preds = %181
  %188 = load i64, ptr @eliminable_regset, align 8, !tbaa !89
  %189 = and i64 %188, %184
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %296, !prof !229

191:                                              ; preds = %187
  %192 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %182
  %193 = load i32, ptr %192, align 4, !tbaa !85
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %194, i64 0
  %196 = load i32, ptr %195, align 4, !tbaa !85
  %197 = icmp eq i32 %196, 27
  br i1 %197, label %220, label %198, !prof !186

198:                                              ; preds = %191
  %199 = load i32, ptr @curr_point, align 4
  br label %200

200:                                              ; preds = %198, %215
  %201 = phi i64 [ 0, %198 ], [ %216, %215 ]
  %202 = phi i32 [ %196, %198 ], [ %218, %215 ]
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !85
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %204, align 4, !tbaa !85
  %207 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %203
  %208 = load i32, ptr %207, align 4, !tbaa !85
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %215, !prof !230

210:                                              ; preds = %200
  %211 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %203
  %212 = load i32, ptr %211, align 4, !tbaa !85
  %213 = icmp slt i32 %205, %212
  br i1 %213, label %215, label %214, !prof !231

214:                                              ; preds = %210
  store i32 %199, ptr %207, align 4, !tbaa !85
  br label %215

215:                                              ; preds = %200, %210, %214
  %216 = add nuw nsw i64 %201, 1
  %217 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %194, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !85
  %219 = icmp eq i32 %218, 27
  br i1 %219, label %220, label %200, !prof !232, !llvm.loop !233

220:                                              ; preds = %215, %191
  %221 = icmp slt i64 %182, 53
  br i1 %221, label %222, label %255, !prof !183

222:                                              ; preds = %220
  %223 = or i64 %183, %184
  store i64 %223, ptr @hard_regs_live, align 8, !tbaa !89
  %224 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %225 = getelementptr inbounds %struct.sparseset_def, ptr %224, i64 0, i32 4
  store i32 0, ptr %225, align 8, !tbaa !184
  %226 = getelementptr inbounds %struct.sparseset_def, ptr %224, i64 0, i32 5
  store i8 1, ptr %226, align 4, !tbaa !185
  %227 = getelementptr inbounds %struct.sparseset_def, ptr %224, i64 0, i32 6
  store i8 1, ptr %227, align 1, !tbaa !139
  %228 = getelementptr inbounds %struct.sparseset_def, ptr %224, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !137
  %230 = load ptr, ptr @ira_allocnos, align 8
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %236, label %232, !prof !186

232:                                              ; preds = %222
  %233 = load ptr, ptr %224, align 8, !tbaa !170
  %234 = load i8, ptr %226, align 4, !tbaa !185
  br label %237

235:                                              ; preds = %237
  store i8 1, ptr %226, align 4, !tbaa !185
  br label %236

236:                                              ; preds = %235, %222
  store i8 0, ptr %227, align 1, !tbaa !139
  br label %275

237:                                              ; preds = %232, %237
  %238 = phi i8 [ %234, %232 ], [ 1, %237 ]
  %239 = phi i32 [ 0, %232 ], [ %253, %237 ]
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %233, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !85
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds ptr, ptr %230, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !70
  %246 = getelementptr inbounds %struct.ira_allocno, ptr %245, i64 0, i32 26
  %247 = load i64, ptr %246, align 8, !tbaa !173
  %248 = or i64 %247, %184
  store i64 %248, ptr %246, align 8, !tbaa !173
  %249 = getelementptr inbounds %struct.ira_allocno, ptr %245, i64 0, i32 27
  %250 = load i64, ptr %249, align 8, !tbaa !174
  %251 = or i64 %250, %184
  store i64 %251, ptr %249, align 8, !tbaa !174
  %252 = zext i8 %238 to i32
  %253 = add i32 %239, %252
  store i32 %253, ptr %225, align 8, !tbaa !184
  %254 = icmp ult i32 %253, %229
  br i1 %254, label %237, label %235, !prof !187

255:                                              ; preds = %220
  %256 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %257 = getelementptr inbounds ptr, ptr %256, i64 %182
  %258 = load ptr, ptr %257, align 8, !tbaa !70
  %259 = icmp eq ptr %258, null
  br i1 %259, label %275, label %260, !prof !171

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.ira_allocno, ptr %258, i64 0, i32 20
  %262 = load ptr, ptr %261, align 8, !tbaa !116
  %263 = icmp eq ptr %262, null
  br i1 %263, label %272, label %264, !prof !188

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %262, i64 0, i32 2
  %266 = load i32, ptr %265, align 4, !tbaa !107
  %267 = load i32, ptr @curr_point, align 4, !tbaa !85
  %268 = icmp eq i32 %266, %267
  %269 = add nsw i32 %266, 1
  %270 = icmp eq i32 %269, %267
  %271 = select i1 %268, i1 true, i1 %270, !prof !189
  br i1 %271, label %275, label %272, !prof !190

272:                                              ; preds = %264, %260
  %273 = load i32, ptr @curr_point, align 4, !tbaa !85
  %274 = tail call ptr @ira_create_allocno_live_range(ptr noundef nonnull %258, i32 noundef %273, i32 noundef -1, ptr noundef %262) #17
  store ptr %274, ptr %261, align 8, !tbaa !116
  br label %275

275:                                              ; preds = %236, %255, %264, %272
  %276 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %194, i64 0
  %277 = load i32, ptr %276, align 4, !tbaa !85
  %278 = icmp eq i32 %277, 27
  br i1 %278, label %296, label %279, !prof !186

279:                                              ; preds = %275
  %280 = load ptr, ptr @curr_bb_node, align 8, !tbaa !70
  br label %281

281:                                              ; preds = %279, %291
  %282 = phi i64 [ 0, %279 ], [ %292, %291 ]
  %283 = phi i32 [ %277, %279 ], [ %294, %291 ]
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %280, i64 0, i32 11, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !85
  %287 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %284
  %288 = load i32, ptr %287, align 4, !tbaa !85
  %289 = icmp slt i32 %286, %288
  br i1 %289, label %290, label %291, !prof !235

290:                                              ; preds = %281
  store i32 %288, ptr %285, align 4, !tbaa !85
  br label %291

291:                                              ; preds = %281, %290
  %292 = add nuw nsw i64 %282, 1
  %293 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %194, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !85
  %295 = icmp eq i32 %294, 27
  br i1 %295, label %296, label %281, !prof !232, !llvm.loop !236

296:                                              ; preds = %291, %275, %187, %181
  %297 = add nsw i64 %182, 1
  %298 = icmp slt i64 %297, %180
  br i1 %298, label %181, label %299, !prof !227, !llvm.loop !237

299:                                              ; preds = %296, %168, %160, %152, %143, %163, %38
  ret void
}

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @single_reg_class(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !355 !PGOFuncName !356 {
  br label %3

3:                                                ; preds = %110, %2
  %4 = phi ptr [ %0, %2 ], [ %115, %110 ]
  %5 = phi i32 [ 0, %2 ], [ %111, %110 ]
  %6 = phi i32 [ 0, %2 ], [ %112, %110 ]
  %7 = load i8, ptr %4, align 1, !tbaa !81
  %8 = sext i8 %7 to i64
  switch i8 %7, label %10 [
    i8 0, label %116
    i8 35, label %110
    i8 44, label %9
  ], !prof !357

9:                                                ; preds = %3
  br label %110

10:                                               ; preds = %3
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %12, label %110, !prof !358

12:                                               ; preds = %10
  switch i8 %7, label %116 [
    i8 32, label %110
    i8 9, label %110
    i8 61, label %110
    i8 43, label %110
    i8 42, label %110
    i8 38, label %110
    i8 37, label %110
    i8 33, label %110
    i8 63, label %110
    i8 105, label %13
    i8 110, label %20
    i8 115, label %26
    i8 73, label %38
    i8 74, label %38
    i8 75, label %38
    i8 76, label %38
    i8 77, label %38
    i8 78, label %38
    i8 79, label %38
    i8 80, label %38
    i8 69, label %48
    i8 70, label %48
    i8 71, label %58
    i8 72, label %58
    i8 114, label %66
    i8 97, label %66
    i8 98, label %66
    i8 99, label %66
    i8 100, label %66
    i8 101, label %66
    i8 102, label %66
    i8 104, label %66
    i8 106, label %66
    i8 107, label %66
    i8 108, label %66
    i8 113, label %66
    i8 116, label %66
    i8 117, label %66
    i8 118, label %66
    i8 119, label %66
    i8 120, label %66
    i8 121, label %66
    i8 122, label %66
    i8 65, label %66
    i8 66, label %66
    i8 67, label %66
    i8 68, label %66
    i8 81, label %66
    i8 82, label %66
    i8 83, label %66
    i8 84, label %66
    i8 85, label %66
    i8 87, label %66
    i8 89, label %66
    i8 90, label %66
    i8 48, label %87
    i8 49, label %87
    i8 50, label %87
    i8 51, label %87
    i8 52, label %87
    i8 53, label %87
    i8 54, label %87
    i8 55, label %87
    i8 56, label %87
    i8 57, label %87
  ], !prof !359

13:                                               ; preds = %12
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %116, label %110, !prof !360

20:                                               ; preds = %12
  %21 = load i32, ptr %1, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %110 [
    i16 30, label %116
    i16 32, label %23
  ], !prof !361

23:                                               ; preds = %20
  %24 = and i32 %21, 16711680
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %116, label %110

26:                                               ; preds = %12
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 65535
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = icmp ne i32 %31, 9
  %33 = icmp eq i32 %28, 30
  %34 = or i1 %32, %33
  %35 = and i32 %27, 16777215
  %36 = icmp eq i32 %35, 32
  %37 = or i1 %36, %34
  br i1 %37, label %110, label %116

38:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %110, !prof !257

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !81
  %45 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #17
  %46 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %44, i32 noundef %45) #17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %110, label %116

48:                                               ; preds = %12, %12
  %49 = load i32, ptr %1, align 8
  %50 = trunc i32 %49 to i16
  switch i16 %50, label %110 [
    i16 32, label %116
    i16 33, label %51
  ]

51:                                               ; preds = %48
  %52 = lshr i32 %49, 16
  %53 = and i32 %52, 255
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !81
  %57 = icmp eq i8 %56, 17
  br i1 %57, label %116, label %110

58:                                               ; preds = %12, %12
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #17
  %64 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %1, i32 noundef %63) #17
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %58, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %62, %12
  %67 = icmp eq i8 %7, 114
  br i1 %67, label %71, label %68, !prof !362

68:                                               ; preds = %66
  %69 = tail call i32 @lookup_constraint(ptr noundef nonnull %4) #17
  %70 = tail call i32 @regclass_for_constraint(i32 noundef %69) #17
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ 13, %66 ]
  %73 = icmp eq i32 %6, 0
  %74 = icmp eq i32 %72, %6
  %75 = select i1 %73, i1 true, i1 %74, !prof !363
  br i1 %75, label %76, label %116, !prof !363

76:                                               ; preds = %71
  %77 = zext i32 %72 to i64
  %78 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !85
  %80 = load i32, ptr %1, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %77, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !85
  %86 = icmp sgt i32 %79, %85
  br i1 %86, label %116, label %110, !prof !364

87:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %88 = add nsw i64 %8, -48
  %89 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !70
  %91 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %88
  %92 = load ptr, ptr %91, align 8, !tbaa !70
  %93 = tail call fastcc i32 @single_reg_class(ptr noundef %90, ptr noundef %92)
  %94 = icmp eq i32 %6, 0
  br i1 %94, label %97, label %95, !prof !365

95:                                               ; preds = %87
  %96 = icmp eq i32 %93, %6
  br i1 %96, label %99, label %116

97:                                               ; preds = %87
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %116, label %99, !prof !365

99:                                               ; preds = %95, %97
  %100 = zext i32 %93 to i64
  %101 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !85
  %103 = load i32, ptr %1, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %100, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !85
  %109 = icmp sgt i32 %102, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %48, %38, %12, %12, %12, %12, %12, %12, %12, %12, %99, %76, %51, %42, %26, %23, %20, %13, %3, %10, %12, %9
  %111 = phi i32 [ 0, %9 ], [ 1, %10 ], [ 0, %12 ], [ 1, %3 ], [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 0, %26 ], [ 0, %42 ], [ 0, %51 ], [ 0, %76 ], [ 0, %99 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ 0, %38 ], [ 0, %48 ]
  %112 = phi i32 [ %6, %9 ], [ %6, %10 ], [ %6, %12 ], [ %6, %3 ], [ %6, %13 ], [ %6, %20 ], [ %6, %23 ], [ %6, %26 ], [ %6, %42 ], [ %6, %51 ], [ %72, %76 ], [ %93, %99 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %12 ], [ %6, %38 ], [ %6, %48 ]
  %113 = icmp eq i8 %7, 89
  %114 = select i1 %113, i64 2, i64 1, !prof !366
  %115 = getelementptr inbounds i8, ptr %4, i64 %114
  br label %3, !llvm.loop !367

116:                                              ; preds = %99, %97, %95, %76, %71, %62, %51, %48, %42, %26, %23, %20, %13, %12, %3
  %117 = phi i32 [ %6, %3 ], [ 0, %12 ], [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 0, %26 ], [ 0, %42 ], [ 0, %48 ], [ 0, %51 ], [ 0, %62 ], [ 0, %71 ], [ 0, %76 ], [ 0, %95 ], [ 0, %97 ], [ 0, %99 ]
  ret i32 %117
}

declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_reg_dead(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !368 !PGOFuncName !369 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %6, label %5, !prof !370

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 327, ptr noundef nonnull @.str.6) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !81
  %9 = icmp sgt i32 %8, 52
  %10 = zext nneg i32 %8 to i64
  br i1 %9, label %11, label %227, !prof !371

11:                                               ; preds = %6
  %12 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = icmp eq ptr %14, null
  br i1 %15, label %190, label %16, !prof !372

16:                                               ; preds = %11
  %17 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %18 = load i32, ptr %14, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.sparseset_def, ptr %17, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !166
  %21 = icmp ugt i32 %20, %18
  br i1 %21, label %23, label %22, !prof !373

22:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds %struct.sparseset_def, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !168
  %26 = zext i32 %18 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = getelementptr inbounds %struct.sparseset_def, ptr %17, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !137
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %38, !prof !373

32:                                               ; preds = %23
  %33 = load ptr, ptr %17, align 8, !tbaa !170
  %34 = zext i32 %28 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !85
  %37 = icmp eq i32 %36, %18
  br i1 %37, label %43, label %38, !prof !373

38:                                               ; preds = %23, %32
  %39 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %40 = load i32, ptr %14, align 8, !tbaa !113
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 0, ptr %42, align 4, !tbaa !85
  br label %409

43:                                               ; preds = %32
  %44 = load ptr, ptr @allocno_saved_at_call, align 8, !tbaa !70
  %45 = load i32, ptr %14, align 8, !tbaa !113
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  store i32 0, ptr %47, align 4, !tbaa !85
  %48 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %49 = load i32, ptr %14, align 8, !tbaa !113
  %50 = getelementptr inbounds %struct.sparseset_def, ptr %48, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !166
  %52 = icmp ugt i32 %51, %49
  br i1 %52, label %54, label %53, !prof !373

53:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 85, ptr noundef nonnull @.str.6) #17
  br label %54

54:                                               ; preds = %53, %43
  %55 = getelementptr inbounds %struct.sparseset_def, ptr %48, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !168
  %57 = zext i32 %49 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !85
  %60 = getelementptr inbounds %struct.sparseset_def, ptr %48, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !137
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %187, !prof !373

63:                                               ; preds = %54
  %64 = load ptr, ptr %48, align 8, !tbaa !170
  %65 = zext i32 %59 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !85
  %68 = icmp eq i32 %67, %49
  br i1 %68, label %69, label %187, !prof !373

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !175
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %72, i64 0
  %74 = load i32, ptr %73, align 4, !tbaa !85
  %75 = icmp eq i32 %74, 27
  br i1 %75, label %187, label %76, !prof !374

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !177
  %79 = zext i32 %78 to i64
  br label %80

80:                                               ; preds = %76, %98
  %81 = phi i64 [ 0, %76 ], [ %100, %98 ]
  %82 = phi i32 [ %74, %76 ], [ %102, %98 ]
  %83 = phi i8 [ 0, %76 ], [ %99, %98 ]
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %84, i64 %79
  %86 = load i32, ptr %85, align 4, !tbaa !85
  %87 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %84
  %88 = load i32, ptr %87, align 4, !tbaa !85
  %89 = sub nsw i32 %88, %86
  store i32 %89, ptr %87, align 4, !tbaa !85
  %90 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %84
  %91 = load i32, ptr %90, align 4, !tbaa !85
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %98, !prof !375

93:                                               ; preds = %80
  %94 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %84
  %95 = load i32, ptr %94, align 4, !tbaa !85
  %96 = icmp sgt i32 %89, %95
  %97 = select i1 %96, i8 %83, i8 1, !prof !376
  br label %98

98:                                               ; preds = %93, %80
  %99 = phi i8 [ %83, %80 ], [ %97, %93 ]
  %100 = add nuw nsw i64 %81, 1
  %101 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %72, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !85
  %103 = icmp eq i32 %102, 27
  br i1 %103, label %104, label %80, !prof !377, !llvm.loop !378

104:                                              ; preds = %98
  %105 = icmp eq i8 %99, 0
  br i1 %105, label %187, label %106, !prof !379

106:                                              ; preds = %104
  %107 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %108 = getelementptr inbounds %struct.sparseset_def, ptr %107, i64 0, i32 4
  store i32 0, ptr %108, align 8, !tbaa !184
  %109 = getelementptr inbounds %struct.sparseset_def, ptr %107, i64 0, i32 5
  store i8 1, ptr %109, align 4, !tbaa !185
  %110 = getelementptr inbounds %struct.sparseset_def, ptr %107, i64 0, i32 6
  store i8 1, ptr %110, align 1, !tbaa !139
  %111 = getelementptr inbounds %struct.sparseset_def, ptr %107, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !137
  %113 = load i32, ptr %108, align 8, !tbaa !184
  %114 = icmp ult i32 %113, %112
  br i1 %114, label %115, label %122, !prof !380

115:                                              ; preds = %106
  %116 = load ptr, ptr %107, align 8, !tbaa !170
  %117 = load ptr, ptr @ira_allocnos, align 8, !tbaa !70
  %118 = load i32, ptr @curr_point, align 4
  %119 = load i8, ptr %109, align 4, !tbaa !185
  %120 = zext i8 %119 to i32
  br label %126

121:                                              ; preds = %165
  store i8 1, ptr %109, align 4, !tbaa !185
  br label %122

122:                                              ; preds = %121, %106
  store i8 0, ptr %110, align 1, !tbaa !139
  %123 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %72, i64 0
  %124 = load i32, ptr %123, align 4, !tbaa !85
  %125 = icmp eq i32 %124, 27
  br i1 %125, label %187, label %168, !prof !381

126:                                              ; preds = %115, %165
  %127 = phi i32 [ %120, %115 ], [ 1, %165 ]
  %128 = phi i32 [ %113, %115 ], [ %166, %165 ]
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %116, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !85
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %117, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !70
  %135 = getelementptr inbounds %struct.ira_allocno, ptr %134, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !175
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %137, i64 0
  %139 = load i32, ptr %138, align 4, !tbaa !85
  %140 = icmp eq i32 %139, 27
  br i1 %140, label %165, label %141, !prof !382

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.ira_allocno, ptr %134, i64 0, i32 20
  %143 = getelementptr inbounds %struct.ira_allocno, ptr %134, i64 0, i32 14
  br label %144

144:                                              ; preds = %141, %160
  %145 = phi i64 [ 0, %141 ], [ %161, %160 ]
  %146 = phi i32 [ %139, %141 ], [ %163, %160 ]
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !85
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %160, label %151, !prof !383

151:                                              ; preds = %144
  %152 = load ptr, ptr %142, align 8, !tbaa !116
  %153 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %152, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !104
  %155 = tail call i32 @llvm.smax.i32(i32 %149, i32 %154)
  %156 = load i32, ptr %143, align 4, !tbaa !329
  %157 = sub i32 %118, %155
  %158 = add i32 %157, 1
  %159 = add nsw i32 %158, %156
  store i32 %159, ptr %143, align 4, !tbaa !329
  br label %160

160:                                              ; preds = %151, %144
  %161 = add nuw nsw i64 %145, 1
  %162 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %137, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !85
  %164 = icmp eq i32 %163, 27
  br i1 %164, label %165, label %144, !prof !384, !llvm.loop !330

165:                                              ; preds = %160, %126
  %166 = add i32 %127, %128
  store i32 %166, ptr %108, align 8, !tbaa !184
  %167 = icmp ult i32 %166, %112
  br i1 %167, label %126, label %121, !prof !385, !llvm.loop !386

168:                                              ; preds = %122, %182
  %169 = phi i64 [ %183, %182 ], [ 0, %122 ]
  %170 = phi i32 [ %185, %182 ], [ %124, %122 ]
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !85
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %182, !prof !387

175:                                              ; preds = %168
  %176 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %171
  %177 = load i32, ptr %176, align 4, !tbaa !85
  %178 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %171
  %179 = load i32, ptr %178, align 4, !tbaa !85
  %180 = icmp sgt i32 %177, %179
  br i1 %180, label %182, label %181, !prof !388

181:                                              ; preds = %175
  store i32 -1, ptr %172, align 4, !tbaa !85
  br label %182

182:                                              ; preds = %181, %175, %168
  %183 = add nuw nsw i64 %169, 1
  %184 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %72, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !85
  %186 = icmp eq i32 %185, 27
  br i1 %186, label %187, label %168, !prof !380, !llvm.loop !389

187:                                              ; preds = %182, %69, %122, %54, %63, %104
  %188 = load ptr, ptr @allocnos_live, align 8, !tbaa !70
  %189 = load i32, ptr %14, align 8, !tbaa !113
  tail call void @sparseset_clear_bit(ptr noundef %188, i32 noundef %189) #17
  br label %190

190:                                              ; preds = %11, %187
  %191 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %192 = getelementptr inbounds ptr, ptr %191, i64 %10
  %193 = load ptr, ptr %192, align 8, !tbaa !70
  %194 = icmp eq ptr %193, null
  br i1 %194, label %409, label %195, !prof !171

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.ira_allocno, ptr %193, i64 0, i32 20
  %197 = load ptr, ptr %196, align 8, !tbaa !116
  %198 = load i32, ptr @curr_point, align 4, !tbaa !85
  %199 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %197, i64 0, i32 2
  store i32 %198, ptr %199, align 4, !tbaa !107
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %193, i64 0, i32 9
  %201 = load i32, ptr %200, align 8, !tbaa !175
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %202, i64 0
  %204 = load i32, ptr %203, align 4, !tbaa !85
  %205 = icmp eq i32 %204, 27
  br i1 %205, label %409, label %206, !prof !176

206:                                              ; preds = %195, %222
  %207 = phi i64 [ %223, %222 ], [ 0, %195 ]
  %208 = phi i32 [ %225, %222 ], [ %204, %195 ]
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !85
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %222, label %213, !prof !178

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %197, i64 0, i32 1
  %215 = getelementptr inbounds %struct.ira_allocno, ptr %193, i64 0, i32 14
  %216 = add i32 %198, 1
  %217 = load i32, ptr %214, align 8, !tbaa !104
  %218 = tail call i32 @llvm.smax.i32(i32 %211, i32 %217)
  %219 = load i32, ptr %215, align 4, !tbaa !329
  %220 = sub i32 %216, %218
  %221 = add nsw i32 %220, %219
  store i32 %221, ptr %215, align 4, !tbaa !329
  br label %222

222:                                              ; preds = %213, %206
  %223 = add nuw nsw i64 %207, 1
  %224 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %202, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !85
  %226 = icmp eq i32 %225, 27
  br i1 %226, label %409, label %206, !prof !181, !llvm.loop !330

227:                                              ; preds = %6
  %228 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !89
  %229 = shl nuw i64 1, %10
  %230 = and i64 %228, %229
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %409, !prof !390

232:                                              ; preds = %227
  %233 = sext i32 %8 to i64
  %234 = load i32, ptr %0, align 8
  %235 = lshr i32 %234, 16
  %236 = and i32 %235, 255
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %233, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !81
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %409, label %241, !prof !391

241:                                              ; preds = %232
  %242 = zext i8 %239 to i32
  %243 = add nsw i32 %8, %242
  %244 = load i64, ptr @hard_regs_live, align 8, !tbaa !89
  %245 = load ptr, ptr @allocnos_live, align 8
  %246 = load ptr, ptr @ira_allocnos, align 8
  %247 = load i32, ptr @curr_point, align 4
  %248 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %249 = sext i32 %243 to i64
  br label %250

250:                                              ; preds = %241, %405
  %251 = phi i64 [ %233, %241 ], [ %407, %405 ]
  %252 = phi i64 [ %244, %241 ], [ %406, %405 ]
  %253 = shl nuw i64 1, %251
  %254 = and i64 %252, %253
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %405, label %256, !prof !392

256:                                              ; preds = %250
  %257 = getelementptr inbounds [53 x i32], ptr @ira_hard_regno_cover_class, i64 0, i64 %251
  %258 = load i32, ptr %257, align 4, !tbaa !85
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %259, i64 0
  %261 = load i32, ptr %260, align 4, !tbaa !85
  %262 = icmp eq i32 %261, 27
  br i1 %262, label %285, label %263, !prof !391

263:                                              ; preds = %256, %279
  %264 = phi i64 [ %281, %279 ], [ 0, %256 ]
  %265 = phi i32 [ %283, %279 ], [ %261, %256 ]
  %266 = phi i8 [ %280, %279 ], [ 0, %256 ]
  %267 = zext i32 %265 to i64
  %268 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !85
  %270 = add nsw i32 %269, -1
  store i32 %270, ptr %268, align 4, !tbaa !85
  %271 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %267
  %272 = load i32, ptr %271, align 4, !tbaa !85
  %273 = icmp sgt i32 %272, -1
  br i1 %273, label %274, label %279, !prof !393

274:                                              ; preds = %263
  %275 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %267
  %276 = load i32, ptr %275, align 4, !tbaa !85
  %277 = icmp sgt i32 %270, %276
  %278 = select i1 %277, i8 %266, i8 1, !prof !394
  br label %279

279:                                              ; preds = %274, %263
  %280 = phi i8 [ %266, %263 ], [ %278, %274 ]
  %281 = add nuw nsw i64 %264, 1
  %282 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %259, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !85
  %284 = icmp eq i32 %283, 27
  br i1 %284, label %285, label %263, !prof !395, !llvm.loop !396

285:                                              ; preds = %279, %256
  %286 = phi i8 [ 0, %256 ], [ %280, %279 ]
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %365, label %288, !prof !397

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.sparseset_def, ptr %245, i64 0, i32 4
  %290 = getelementptr inbounds %struct.sparseset_def, ptr %245, i64 0, i32 5
  %291 = getelementptr inbounds %struct.sparseset_def, ptr %245, i64 0, i32 6
  %292 = getelementptr inbounds %struct.sparseset_def, ptr %245, i64 0, i32 2
  store i32 0, ptr %289, align 8, !tbaa !184
  store i8 1, ptr %290, align 4, !tbaa !185
  store i8 1, ptr %291, align 1, !tbaa !139
  %293 = load i32, ptr %292, align 8, !tbaa !137
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %299, label %295, !prof !381

295:                                              ; preds = %288
  %296 = load ptr, ptr %245, align 8, !tbaa !170
  %297 = load i8, ptr %290, align 4, !tbaa !185
  br label %303

298:                                              ; preds = %342
  store i8 1, ptr %290, align 4, !tbaa !185
  br label %299

299:                                              ; preds = %298, %288
  store i8 0, ptr %291, align 1, !tbaa !139
  %300 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %259, i64 0
  %301 = load i32, ptr %300, align 4, !tbaa !85
  %302 = icmp eq i32 %301, 27
  br i1 %302, label %365, label %346, !prof !381

303:                                              ; preds = %295, %342
  %304 = phi i8 [ 1, %342 ], [ %297, %295 ]
  %305 = phi i32 [ %344, %342 ], [ 0, %295 ]
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, ptr %296, i64 %306
  %308 = load i32, ptr %307, align 4, !tbaa !85
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %246, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !70
  %312 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 9
  %313 = load i32, ptr %312, align 8, !tbaa !175
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %314, i64 0
  %316 = load i32, ptr %315, align 4, !tbaa !85
  %317 = icmp eq i32 %316, 27
  br i1 %317, label %342, label %318, !prof !398

318:                                              ; preds = %303
  %319 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 20
  %320 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 14
  br label %321

321:                                              ; preds = %318, %337
  %322 = phi i64 [ 0, %318 ], [ %338, %337 ]
  %323 = phi i32 [ %316, %318 ], [ %340, %337 ]
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !85
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %337, label %328, !prof !399

328:                                              ; preds = %321
  %329 = load ptr, ptr %319, align 8, !tbaa !116
  %330 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %329, i64 0, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !104
  %332 = tail call i32 @llvm.smax.i32(i32 %326, i32 %331)
  %333 = load i32, ptr %320, align 4, !tbaa !329
  %334 = sub i32 %247, %332
  %335 = add i32 %334, 1
  %336 = add nsw i32 %335, %333
  store i32 %336, ptr %320, align 4, !tbaa !329
  br label %337

337:                                              ; preds = %328, %321
  %338 = add nuw nsw i64 %322, 1
  %339 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %314, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !85
  %341 = icmp eq i32 %340, 27
  br i1 %341, label %342, label %321, !prof !400, !llvm.loop !330

342:                                              ; preds = %337, %303
  %343 = zext i8 %304 to i32
  %344 = add i32 %305, %343
  store i32 %344, ptr %289, align 8, !tbaa !184
  %345 = icmp ult i32 %344, %293
  br i1 %345, label %303, label %298, !prof !401

346:                                              ; preds = %299, %360
  %347 = phi i64 [ %361, %360 ], [ 0, %299 ]
  %348 = phi i32 [ %363, %360 ], [ %301, %299 ]
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !85
  %352 = icmp sgt i32 %351, -1
  br i1 %352, label %353, label %360, !prof !402

353:                                              ; preds = %346
  %354 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %349
  %355 = load i32, ptr %354, align 4, !tbaa !85
  %356 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %349
  %357 = load i32, ptr %356, align 4, !tbaa !85
  %358 = icmp sgt i32 %355, %357
  br i1 %358, label %360, label %359, !prof !403

359:                                              ; preds = %353
  store i32 -1, ptr %350, align 4, !tbaa !85
  br label %360

360:                                              ; preds = %346, %353, %359
  %361 = add nuw nsw i64 %347, 1
  %362 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %259, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !85
  %364 = icmp eq i32 %363, 27
  br i1 %364, label %365, label %346, !prof !380, !llvm.loop !404

365:                                              ; preds = %360, %299, %285
  %366 = icmp slt i64 %251, 53
  br i1 %366, label %367, label %370, !prof !328

367:                                              ; preds = %365
  %368 = xor i64 %253, -1
  %369 = and i64 %252, %368
  store i64 %369, ptr @hard_regs_live, align 8, !tbaa !89
  br label %405

370:                                              ; preds = %365
  %371 = getelementptr inbounds ptr, ptr %248, i64 %251
  %372 = load ptr, ptr %371, align 8, !tbaa !70
  %373 = icmp eq ptr %372, null
  br i1 %373, label %405, label %374, !prof !171

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.ira_allocno, ptr %372, i64 0, i32 20
  %376 = load ptr, ptr %375, align 8, !tbaa !116
  %377 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %376, i64 0, i32 2
  store i32 %247, ptr %377, align 4, !tbaa !107
  %378 = getelementptr inbounds %struct.ira_allocno, ptr %372, i64 0, i32 9
  %379 = load i32, ptr %378, align 8, !tbaa !175
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %380, i64 0
  %382 = load i32, ptr %381, align 4, !tbaa !85
  %383 = icmp eq i32 %382, 27
  br i1 %383, label %405, label %384, !prof !176

384:                                              ; preds = %374, %400
  %385 = phi i64 [ %401, %400 ], [ 0, %374 ]
  %386 = phi i32 [ %403, %400 ], [ %382, %374 ]
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [27 x i32], ptr @high_pressure_start_point, i64 0, i64 %387
  %389 = load i32, ptr %388, align 4, !tbaa !85
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %400, label %391, !prof !178

391:                                              ; preds = %384
  %392 = add i32 %247, 1
  %393 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %376, i64 0, i32 1
  %394 = getelementptr inbounds %struct.ira_allocno, ptr %372, i64 0, i32 14
  %395 = load i32, ptr %393, align 8, !tbaa !104
  %396 = tail call i32 @llvm.smax.i32(i32 %389, i32 %395)
  %397 = load i32, ptr %394, align 4, !tbaa !329
  %398 = sub i32 %392, %396
  %399 = add nsw i32 %398, %397
  store i32 %399, ptr %394, align 4, !tbaa !329
  br label %400

400:                                              ; preds = %391, %384
  %401 = add nuw nsw i64 %385, 1
  %402 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_super_classes, i64 0, i64 %380, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !85
  %404 = icmp eq i32 %403, 27
  br i1 %404, label %405, label %384, !prof !181, !llvm.loop !330

405:                                              ; preds = %400, %374, %370, %367, %250
  %406 = phi i64 [ %252, %374 ], [ %252, %370 ], [ %369, %367 ], [ %252, %250 ], [ %252, %400 ]
  %407 = add nsw i64 %251, 1
  %408 = icmp slt i64 %407, %249
  br i1 %408, label %250, label %409, !prof !391, !llvm.loop !405

409:                                              ; preds = %405, %222, %232, %195, %190, %227, %38
  ret void
}

declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_and_make_def_conflict(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !prof !69 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %130, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %6, %8 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %130

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !81
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %130, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !175
  %31 = tail call i32 @reg_classes_intersect_p(i32 noundef %30, i32 noundef %2) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %130, label %33

33:                                               ; preds = %24
  %34 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %35 = icmp sgt i8 %34, 0
  br i1 %35, label %36, label %130

36:                                               ; preds = %33
  %37 = zext nneg i8 %34 to i64
  %38 = sext i32 %0 to i64
  %39 = zext i32 %1 to i64
  br label %40

40:                                               ; preds = %36, %123
  %41 = phi i64 [ 0, %36 ], [ %125, %123 ]
  %42 = phi i64 [ %37, %36 ], [ %127, %123 ]
  %43 = phi i8 [ 1, %36 ], [ %124, %123 ]
  %44 = icmp eq i64 %41, %39
  br i1 %44, label %123, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !85
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %123, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 5
  %51 = load i8, ptr %50, align 8
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !281
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi i32 [ %55, %53 ], [ 26, %49 ]
  %58 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !277
  %59 = icmp sgt i8 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %56
  %61 = add nsw i64 %42, -1
  %62 = icmp slt i64 %41, %61
  %63 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %41
  %64 = add nuw nsw i64 %41, 1
  %65 = icmp eq i64 %41, 0
  %66 = add nsw i64 %41, -1
  %67 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %66
  %68 = zext nneg i8 %58 to i64
  %69 = zext nneg i8 %58 to i64
  %70 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 0, i32 3
  %71 = load i32, ptr %70, align 16, !tbaa !283
  %72 = icmp eq i32 %71, %1
  br i1 %72, label %101, label %78

73:                                               ; preds = %98
  %74 = icmp ult i64 %99, %68
  %75 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %99, i32 3
  %76 = load i32, ptr %75, align 16, !tbaa !283
  %77 = icmp eq i32 %76, %1
  br i1 %77, label %101, label %78, !llvm.loop !406

78:                                               ; preds = %60, %73
  %79 = phi i1 [ %74, %73 ], [ %59, %60 ]
  %80 = phi i64 [ %99, %73 ], [ 0, %60 ]
  br i1 %62, label %81, label %89

81:                                               ; preds = %78
  %82 = load ptr, ptr %63, align 8, !tbaa !70
  %83 = load i8, ptr %82, align 1, !tbaa !81
  %84 = icmp eq i8 %83, 37
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %64, i64 %80, i32 3
  %87 = load i32, ptr %86, align 16, !tbaa !283
  %88 = icmp eq i32 %87, %1
  br i1 %88, label %101, label %89

89:                                               ; preds = %85, %81, %78
  br i1 %65, label %98, label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %67, align 8, !tbaa !70
  %92 = load i8, ptr %91, align 1, !tbaa !81
  %93 = icmp eq i8 %92, 37
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %66, i64 %80, i32 3
  %96 = load i32, ptr %95, align 16, !tbaa !283
  %97 = icmp eq i32 %96, %1
  br i1 %97, label %101, label %98

98:                                               ; preds = %89, %90, %94
  %99 = add nuw nsw i64 %80, 1
  %100 = icmp eq i64 %99, %69
  br i1 %100, label %103, label %73, !llvm.loop !406

101:                                              ; preds = %94, %73, %85, %60
  %102 = phi i1 [ %59, %60 ], [ %79, %94 ], [ %74, %73 ], [ %79, %85 ]
  br i1 %102, label %123, label %103

103:                                              ; preds = %98, %56, %101
  %104 = trunc i64 %41 to i32
  %105 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %16, i32 noundef %2, i32 noundef %104, i32 noundef %57, i8 noundef zeroext %43), !range !407
  %106 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %41, i64 %38, i32 3
  %107 = load i32, ptr %106, align 16, !tbaa !283
  %108 = icmp slt i32 %107, 0
  %109 = icmp eq i32 %107, %1
  %110 = or i1 %108, %109
  br i1 %110, label %123, label %111

111:                                              ; preds = %103
  %112 = zext nneg i32 %107 to i64
  %113 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %112, i64 %38, i32 5
  %114 = load i8, ptr %113, align 8
  %115 = icmp sgt i8 %114, -1
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %112, i64 %38, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !281
  br label %119

119:                                              ; preds = %111, %116
  %120 = phi i32 [ %118, %116 ], [ 26, %111 ]
  %121 = trunc i64 %41 to i32
  %122 = tail call fastcc zeroext i8 @check_and_make_def_use_conflict(ptr noundef nonnull %16, i32 noundef %2, i32 noundef %121, i32 noundef %120, i8 noundef zeroext %105), !range !407
  br label %123

123:                                              ; preds = %103, %119, %101, %40, %45
  %124 = phi i8 [ %43, %45 ], [ %43, %40 ], [ %43, %101 ], [ %122, %119 ], [ %105, %103 ]
  %125 = add nuw nsw i64 %41, 1
  %126 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %127 = sext i8 %126 to i64
  %128 = sext i8 %126 to i64
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %40, label %130, !llvm.loop !408

130:                                              ; preds = %123, %33, %24, %15, %20, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @check_and_make_def_use_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #8 !prof !69 {
  %6 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %3) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %5
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %11, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %4), !range !407
  %13 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !90
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = load i8, ptr %19, align 1, !tbaa !81
  %21 = icmp eq i8 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = add nsw i32 %2, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %26, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %12), !range !407
  br label %28

28:                                               ; preds = %22, %17, %8
  %29 = phi i8 [ %27, %22 ], [ %12, %17 ], [ %12, %8 ]
  %30 = icmp sgt i32 %2, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = add nsw i32 %2, -1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = load i8, ptr %35, align 1, !tbaa !81
  %37 = icmp eq i8 %36, 37
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = tail call fastcc zeroext i8 @make_pseudo_conflict(ptr noundef %40, i32 noundef %3, ptr noundef %0, i8 noundef zeroext %29), !range !407
  br label %42

42:                                               ; preds = %28, %31, %38, %5
  %43 = phi i8 [ %4, %5 ], [ %41, %38 ], [ %29, %31 ], [ %29, %28 ]
  ret i8 %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @make_pseudo_conflict(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #8 !prof !69 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %0, %4 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !70
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !175
  %27 = tail call i32 @reg_classes_intersect_p(i32 noundef %1, i32 noundef %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = icmp eq i8 %3, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr @curr_point, align 4, !tbaa !85
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @curr_point, align 4, !tbaa !85
  br label %34

34:                                               ; preds = %31, %29
  tail call fastcc void @mark_reg_live(ptr noundef nonnull %12)
  tail call fastcc void @mark_reg_live(ptr noundef %2)
  tail call fastcc void @mark_reg_dead(ptr noundef nonnull %12)
  tail call fastcc void @mark_reg_dead(ptr noundef %2)
  br label %35

35:                                               ; preds = %20, %11, %16, %34
  %36 = phi i8 [ 0, %34 ], [ %3, %16 ], [ %3, %11 ], [ %3, %20 ]
  ret i8 %36
}

declare ptr @ira_allocate_bitmap() local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

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
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!68}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!35 = !{ptr @create_start_finish_chains, ptr @ira_allocate, i64 152}
!36 = !{ptr @ira_create_allocno_live_ranges, ptr @sparseset_alloc, i64 38}
!37 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_allocate, i64 38}
!38 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_traverse_loop_tree, i64 38}
!39 = !{ptr @ira_create_allocno_live_ranges, ptr @create_start_finish_chains, i64 38}
!40 = !{ptr @ira_create_allocno_live_ranges, ptr @ira_free, i64 38}
!41 = !{ptr @ira_create_allocno_live_ranges, ptr @free, i64 38}
!42 = !{ptr @process_bb_node_lives, ptr @reg_set_to_hard_reg_set, i64 155654}
!43 = !{ptr @process_bb_node_lives, ptr @ira_create_allocno_live_range, i64 181522}
!44 = !{ptr @process_bb_node_lives, ptr @multiple_sets, i64 8421}
!45 = !{ptr @process_bb_node_lives, ptr @reg_overlap_mentioned_p, i64 1232}
!46 = !{ptr @process_bb_node_lives, ptr @extract_insn, i64 623676}
!47 = !{ptr @process_bb_node_lives, ptr @preprocess_constraints, i64 623676}
!48 = !{ptr @process_bb_node_lives, ptr @single_reg_class, i64 805877}
!49 = !{ptr @process_bb_node_lives, ptr @reg_classes_intersect_p, i64 202}
!50 = !{ptr @process_bb_node_lives, ptr @ira_init_register_move_cost, i64 14}
!51 = !{ptr @process_bb_node_lives, ptr @ira_allocate_cost_vector, i64 202}
!52 = !{ptr @process_bb_node_lives, ptr @mark_reg_dead, i64 393014}
!53 = !{ptr @process_bb_node_lives, ptr @find_reg_note, i64 75358}
!54 = !{ptr @process_bb_node_lives, ptr @can_throw_internal, i64 75358}
!55 = !{ptr @process_bb_node_lives, ptr @mark_reg_live, i64 17400}
!56 = !{ptr @ira_compress_allocno_live_ranges, ptr @ira_allocate_bitmap, i64 38}
!57 = !{ptr @ira_compress_allocno_live_ranges, ptr @bitmap_set_bit, i64 338370}
!58 = !{ptr @ira_compress_allocno_live_ranges, ptr @ira_allocate, i64 38}
!59 = !{ptr @ira_compress_allocno_live_ranges, ptr @ira_free_bitmap, i64 38}
!60 = !{ptr @ira_compress_allocno_live_ranges, ptr @ira_free, i64 114}
!61 = !{ptr @ira_compress_allocno_live_ranges, ptr @create_start_finish_chains, i64 38}
!62 = !{ptr @ira_finish_allocno_live_ranges, ptr @ira_free, i64 76}
!63 = !{ptr @mark_reg_live, ptr @ira_create_allocno_live_range, i64 847}
!64 = !{ptr @single_reg_class, ptr @lookup_constraint, i64 12548}
!65 = !{ptr @single_reg_class, ptr @regclass_for_constraint, i64 12548}
!66 = !{ptr @single_reg_class, ptr @single_reg_class, i64 7401}
!67 = !{ptr @mark_reg_dead, ptr @sparseset_clear_bit, i64 166632}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!75, !71, i64 8}
!75 = !{!"_IO_FILE", !76, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !71, i64 104, !76, i64 112, !76, i64 116, !77, i64 120, !78, i64 128, !72, i64 130, !72, i64 131, !71, i64 136, !77, i64 144, !71, i64 152, !71, i64 160, !71, i64 168, !71, i64 176, !77, i64 184, !76, i64 192, !72, i64 196}
!76 = !{!"int", !72, i64 0}
!77 = !{!"long", !72, i64 0}
!78 = !{!"short", !72, i64 0}
!79 = !{!75, !71, i64 16}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!72, !72, i64 0}
!82 = !{!75, !71, i64 40}
!83 = !{!75, !71, i64 48}
!84 = !{!75, !76, i64 0}
!85 = !{!76, !76, i64 0}
!86 = distinct !{!86, !87, !88}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!77, !77, i64 0}
!90 = !{!91, !72, i64 1086}
!91 = !{!"recog_data", !72, i64 0, !72, i64 240, !72, i64 480, !72, i64 720, !72, i64 840, !72, i64 960, !72, i64 1072, !72, i64 1086, !72, i64 1087, !72, i64 1088, !72, i64 1089, !71, i64 1120}
!92 = distinct !{!92, !87, !88}
!93 = distinct !{!93, !87, !88}
!94 = !{!"function_entry_count", i64 76}
!95 = !{!"ira-lives.c;create_start_finish_chains"}
!96 = !{!"VP", i32 1, i64 76, i64 513, i64 67, i64 129, i64 5, i64 257, i64 3, i64 65, i64 1}
!97 = distinct !{!97, !87, !88}
!98 = !{!"branch_weights", i32 151, i32 1}
!99 = !{!"branch_weights", i32 0, i32 1}
!100 = distinct !{!100, !87, !88}
!101 = !{!"branch_weights", i32 151, i32 429581}
!102 = !{!"branch_weights", i32 214866, i32 76}
!103 = !{!"branch_weights", i32 1, i32 214865}
!104 = !{!105, !76, i64 8}
!105 = !{!"ira_allocno_live_range", !71, i64 0, !76, i64 8, !76, i64 12, !71, i64 16, !71, i64 24, !71, i64 32}
!106 = !{!105, !71, i64 24}
!107 = !{!105, !76, i64 12}
!108 = !{!105, !71, i64 32}
!109 = !{!"branch_weights", i32 214865, i32 123505}
!110 = distinct !{!110, !87, !88}
!111 = !{!105, !71, i64 16}
!112 = distinct !{!112, !87, !88}
!113 = !{!114, !76, i64 0}
!114 = !{!"ira_allocno", !76, i64 0, !76, i64 4, !76, i64 8, !76, i64 12, !71, i64 16, !71, i64 24, !71, i64 32, !76, i64 40, !76, i64 44, !76, i64 48, !76, i64 52, !76, i64 56, !76, i64 60, !76, i64 64, !76, i64 68, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !71, i64 104, !71, i64 112, !76, i64 120, !76, i64 124, !71, i64 128, !76, i64 136, !76, i64 140, !77, i64 144, !77, i64 152, !76, i64 160, !76, i64 164, !76, i64 168, !76, i64 172, !76, i64 172, !76, i64 172, !76, i64 172, !76, i64 172, !76, i64 172, !76, i64 172, !76, i64 172, !76, i64 173, !76, i64 173, !76, i64 173, !76, i64 173, !71, i64 176, !71, i64 184, !71, i64 192, !71, i64 200, !71, i64 208, !76, i64 216, !76, i64 220, !71, i64 224, !71, i64 232, !76, i64 240}
!115 = !{!114, !76, i64 4}
!116 = !{!114, !71, i64 112}
!117 = distinct !{!117, !87, !88}
!118 = !{!"function_entry_count", i64 38}
!119 = !{!"VP", i32 1, i64 38, i64 513, i64 17, i64 129, i64 5, i64 17, i64 5, i64 257, i64 4}
!120 = !{!"branch_weights", i32 38, i32 0}
!121 = !{!"branch_weights", i32 0, i32 38}
!122 = !{!"function_entry_count", i64 155692}
!123 = !{!"ira-lives.c;process_bb_node_lives"}
!124 = !{!125, !71, i64 0}
!125 = !{!"ira_loop_tree_node", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !76, i64 56, !72, i64 60, !71, i64 64, !72, i64 72, !72, i64 76, !71, i64 184, !71, i64 192, !71, i64 200, !71, i64 208}
!126 = !{!"branch_weights", i32 38, i32 155654}
!127 = !{!"branch_weights", i32 155653, i32 1}
!128 = !{!"branch_weights", i32 155653, i32 155655}
!129 = distinct !{!129, !87, !88}
!130 = !{!131, !76, i64 80}
!131 = !{!"basic_block_def", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !72, i64 32, !71, i64 48, !71, i64 56, !72, i64 64, !77, i64 72, !76, i64 80, !76, i64 84, !76, i64 88, !76, i64 92, !76, i64 96}
!132 = !{!133, !76, i64 16}
!133 = !{!"dataflow", !71, i64 0, !71, i64 8, !76, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !76, i64 48, !72, i64 52, !72, i64 53, !72, i64 54}
!134 = !{!133, !71, i64 8}
!135 = !{!136, !71, i64 24}
!136 = !{!"df_lr_bb_info", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24}
!137 = !{!138, !76, i64 16}
!138 = !{!"sparseset_def", !71, i64 0, !71, i64 8, !76, i64 16, !76, i64 20, !76, i64 24, !72, i64 28, !72, i64 29, !72, i64 32}
!139 = !{!138, !72, i64 29}
!140 = !{!"branch_weights", i32 8249605, i32 57}
!141 = !{!"branch_weights", i32 1, i32 227}
!142 = !{!"branch_weights", i32 0, i32 57}
!143 = !{!"branch_weights", i32 227, i32 1}
!144 = distinct !{!144, !87, !88}
!145 = !{!"branch_weights", i32 155654, i32 8094008}
!146 = distinct !{!146, !87, !88}
!147 = !{!148, !71, i64 0}
!148 = !{!"bitmap_head_def", !71, i64 0, !71, i64 8, !76, i64 16, !71, i64 24}
!149 = !{!"branch_weights", i32 0, i32 155654}
!150 = !{!151, !76, i64 16}
!151 = !{!"bitmap_element_def", !71, i64 0, !71, i64 8, !76, i64 16, !72, i64 24}
!152 = !{!"branch_weights", i32 155654, i32 0}
!153 = !{!"branch_weights", i32 321454, i32 68899}
!154 = !{!"branch_weights", i32 234698, i32 1}
!155 = !{!"branch_weights", i32 3210814, i32 234698}
!156 = distinct !{!156, !87, !88}
!157 = !{!"branch_weights", i32 1, i32 320579}
!158 = !{!"branch_weights", i32 319706, i32 165800}
!159 = !{!"branch_weights", i32 320579, i32 164927}
!160 = distinct !{!160, !87, !88}
!161 = !{!151, !71, i64 0}
!162 = !{!"branch_weights", i32 155654, i32 164926}
!163 = distinct !{!163, !88}
!164 = !{!"branch_weights", i32 155654, i32 234699}
!165 = !{!"branch_weights", i32 0, i32 234699}
!166 = !{!138, !76, i64 20}
!167 = !{!"branch_weights", i32 349419, i32 0}
!168 = !{!138, !71, i64 8}
!169 = !{!"branch_weights", i32 161996, i32 187423}
!170 = !{!138, !71, i64 0}
!171 = !{!"branch_weights", i32 0, i32 349419}
!172 = !{!"branch_weights", i32 0, i32 161996}
!173 = !{!114, !77, i64 144}
!174 = !{!114, !77, i64 152}
!175 = !{!114, !76, i64 48}
!176 = !{!"branch_weights", i32 1, i32 349418}
!177 = !{!114, !76, i64 8}
!178 = !{!"branch_weights", i32 349291, i32 128}
!179 = !{!"branch_weights", i32 128, i32 349163}
!180 = !{!"branch_weights", i32 325191, i32 24228}
!181 = !{!"branch_weights", i32 349418, i32 1}
!182 = distinct !{!182, !87, !88}
!183 = !{!"branch_weights", i32 66739, i32 349419}
!184 = !{!138, !76, i64 24}
!185 = !{!138, !72, i64 28}
!186 = !{!"branch_weights", i32 1, i32 66738}
!187 = !{!"branch_weights", i32 7088, i32 66738}
!188 = !{!"branch_weights", i32 107433, i32 241986}
!189 = !{!"branch_weights", i32 0, i32 241986}
!190 = !{!"branch_weights", i32 180234, i32 61752}
!191 = distinct !{!191, !87, !88}
!192 = !{!193, !71, i64 8}
!193 = !{!"function", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !76, i64 104, !76, i64 108, !76, i64 112, !76, i64 116, !76, i64 120, !76, i64 124, !71, i64 128, !76, i64 136, !76, i64 137, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 138, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139, !76, i64 139}
!194 = !{!195, !71, i64 0}
!195 = !{!"control_flow_graph", !71, i64 0, !71, i64 8, !71, i64 16, !76, i64 24, !76, i64 28, !76, i64 32, !71, i64 40, !76, i64 48, !72, i64 52, !72, i64 60, !76, i64 68, !76, i64 72}
!196 = !{!131, !77, i64 72}
!197 = !{!131, !76, i64 88}
!198 = !{!"branch_weights", i32 131438, i32 24216}
!199 = !{!200, !71, i64 0}
!200 = !{!"rtl_bb_info", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !76, i64 32}
!201 = !{!"branch_weights", i32 155654, i32 893503}
!202 = !{!"branch_weights", i32 269827, i32 623676}
!203 = !{!"branch_weights", i32 623676, i32 0}
!204 = !{!"branch_weights", i32 0, i32 623676}
!205 = !{!125, !71, i64 48}
!206 = !{!125, !71, i64 8}
!207 = !{!208, !76, i64 0}
!208 = !{!"loop", !76, i64 0, !76, i64 4, !71, i64 8, !71, i64 16, !209, i64 24, !76, i64 32, !76, i64 36, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !210, i64 80, !210, i64 96, !72, i64 112, !72, i64 113, !76, i64 116, !71, i64 120, !71, i64 128, !72, i64 136, !71, i64 144}
!209 = !{!"lpt_decision", !76, i64 0, !76, i64 4}
!210 = !{!"", !77, i64 0, !77, i64 8}
!211 = !{!212, !71, i64 248}
!212 = !{!"df", !72, i64 0, !72, i64 64, !71, i64 128, !213, i64 136, !213, i64 176, !71, i64 216, !71, i64 224, !71, i64 232, !76, i64 240, !76, i64 244, !71, i64 248, !76, i64 256, !76, i64 260, !71, i64 264, !71, i64 272, !71, i64 280, !71, i64 288, !71, i64 296, !71, i64 304, !71, i64 312, !71, i64 320, !71, i64 328, !71, i64 336, !76, i64 344, !76, i64 348, !71, i64 352, !76, i64 360, !76, i64 364, !72, i64 365, !72, i64 366}
!213 = !{!"df_ref_info", !71, i64 0, !71, i64 8, !71, i64 16, !76, i64 24, !76, i64 28, !76, i64 32, !76, i64 36}
!214 = !{!215, !71, i64 8}
!215 = !{!"df_insn_info", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !76, i64 40}
!216 = !{!"branch_weights", i32 1, i32 623675}
!217 = !{!"branch_weights", i32 3172068, i32 326041}
!218 = !{!"branch_weights", i32 66758, i32 3105310}
!219 = !{!"branch_weights", i32 0, i32 392799}
!220 = !{!"branch_weights", i32 961347, i32 0}
!221 = !{!"branch_weights", i32 357248, i32 604099}
!222 = !{!"branch_weights", i32 0, i32 357248}
!223 = !{!"branch_weights", i32 357248, i32 0}
!224 = !{!"branch_weights", i32 344239, i32 13009}
!225 = !{!"branch_weights", i32 242528, i32 114720}
!226 = !{!"branch_weights", i32 133499, i32 470600}
!227 = !{!"branch_weights", i32 1, i32 133498}
!228 = !{!"branch_weights", i32 66739, i32 66760}
!229 = !{!"branch_weights", i32 66739, i32 0}
!230 = !{!"branch_weights", i32 66611, i32 128}
!231 = !{!"branch_weights", i32 66547, i32 64}
!232 = !{!"branch_weights", i32 66738, i32 1}
!233 = distinct !{!233, !87, !88}
!234 = !{!"branch_weights", i32 66738, i32 7088}
!235 = !{!"branch_weights", i32 0, i32 66739}
!236 = distinct !{!236, !87, !88}
!237 = distinct !{!237, !87, !88}
!238 = !{!"branch_weights", i32 623675, i32 2874434}
!239 = distinct !{!239, !87, !88}
!240 = !{!"branch_weights", i32 8421, i32 615255}
!241 = !{!"branch_weights", i32 8267, i32 154}
!242 = !{!215, !71, i64 16}
!243 = !{!"branch_weights", i32 1, i32 153}
!244 = !{!245, !76, i64 0}
!245 = !{!"rtvec_def", !76, i64 0, !72, i64 8}
!246 = !{!"branch_weights", i32 615, i32 1}
!247 = !{!"branch_weights", i32 1232, i32 0}
!248 = !{!"branch_weights", i32 617, i32 615}
!249 = distinct !{!249, !87, !88}
!250 = !{!"branch_weights", i32 153, i32 463}
!251 = distinct !{!251, !87, !88}
!252 = !{!"branch_weights", i32 1247351, i32 1}
!253 = !{!"branch_weights", i32 248378, i32 1065658}
!254 = !{!"branch_weights", i32 508159, i32 805877}
!255 = !{!"branch_weights", i32 1313834, i32 202}
!256 = !{!"branch_weights", i32 202, i32 0}
!257 = !{!"branch_weights", i32 0, i32 202}
!258 = !{!78, !78, i64 0}
!259 = !{!"branch_weights", i32 201, i32 1}
!260 = !{!114, !71, i64 200}
!261 = distinct !{!261, !87, !88}
!262 = !{!"branch_weights", i32 1, i32 201}
!263 = !{!"branch_weights", i32 202, i32 202}
!264 = !{!"branch_weights", i32 203, i32 201}
!265 = !{!"branch_weights", i32 1380721, i32 1247351}
!266 = distinct !{!266, !87, !88}
!267 = !{!"branch_weights", i32 392799, i32 0}
!268 = distinct !{!268, !87, !88}
!269 = !{!"branch_weights", i32 68958, i32 554718}
!270 = !{!"branch_weights", i32 75358, i32 68958}
!271 = !{!"branch_weights", i32 1504, i32 73854}
!272 = !{!114, !76, i64 164}
!273 = !{!114, !76, i64 168}
!274 = !{!"branch_weights", i32 75358, i32 0}
!275 = !{!"branch_weights", i32 0, i32 144316}
!276 = distinct !{!276, !87, !88}
!277 = !{!91, !72, i64 1088}
!278 = !{!"branch_weights", i32 623675, i32 1}
!279 = !{!"branch_weights", i32 3170258, i32 1}
!280 = !{!"branch_weights", i32 6366236, i32 0}
!281 = !{!282, !76, i64 8}
!282 = !{!"operand_alternative", !71, i64 0, !76, i64 8, !76, i64 12, !76, i64 16, !76, i64 20, !76, i64 24, !76, i64 24, !76, i64 24, !76, i64 24, !76, i64 24, !76, i64 24, !76, i64 24, !76, i64 24}
!283 = !{!282, !76, i64 16}
!284 = !{!"branch_weights", i32 19485, i32 6346751}
!285 = !{!"branch_weights", i32 19485, i32 0}
!286 = !{!"branch_weights", i32 3195978, i32 3170258}
!287 = distinct !{!287, !87, !88}
!288 = !{!"branch_weights", i32 2546584, i32 623675}
!289 = distinct !{!289, !87, !88}
!290 = !{!"branch_weights", i32 64499, i32 559177}
!291 = !{!"branch_weights", i32 202, i32 558975}
!292 = !{!"branch_weights", i32 559177, i32 0}
!293 = distinct !{!293, !87, !88}
!294 = !{!"branch_weights", i32 248378, i32 1065658, i32 0}
!295 = !{!"branch_weights", i32 1, i32 631919}
!296 = !{!"branch_weights", i32 3498109, i32 16488}
!297 = !{!"branch_weights", i32 0, i32 16488}
!298 = !{!"branch_weights", i32 16488, i32 0}
!299 = !{!"branch_weights", i32 0, i32 8244}
!300 = !{!"branch_weights", i32 631919, i32 2882678}
!301 = distinct !{!301, !87, !88}
!302 = !{!"branch_weights", i32 615432, i32 8244}
!303 = !{!"branch_weights", i32 135927072, i32 0}
!304 = !{!"branch_weights", i32 1, i32 8243}
!305 = !{!"branch_weights", i32 202, i32 8918}
!306 = !{!"branch_weights", i32 9120, i32 0}
!307 = !{!"branch_weights", i32 7993, i32 1127}
!308 = !{!"branch_weights", i32 0, i32 1127}
!309 = !{!"branch_weights", i32 8243, i32 877}
!310 = distinct !{!310, !87, !88}
!311 = !{!"branch_weights", i32 0, i32 1049157}
!312 = distinct !{!312, !87, !88}
!313 = !{!"branch_weights", i32 0, i32 462145}
!314 = !{!315, !76, i64 0}
!315 = !{!"VEC_edge_base", !76, i64 0, !76, i64 4, !72, i64 8}
!316 = !{!"branch_weights", i32 155654, i32 306491}
!317 = !{!318, !76, i64 48}
!318 = !{!"edge_def", !71, i64 0, !71, i64 8, !72, i64 16, !71, i64 24, !71, i64 32, !76, i64 40, !76, i64 44, !76, i64 48, !76, i64 52, !77, i64 56}
!319 = !{!"branch_weights", i32 306491, i32 0}
!320 = !{!"branch_weights", i32 0, i32 306491}
!321 = distinct !{!321, !87, !88}
!322 = distinct !{!322, !88}
!323 = distinct !{!323, !87, !88}
!324 = distinct !{!324, !87, !88}
!325 = distinct !{!325, !87, !88}
!326 = distinct !{!326, !87, !88}
!327 = distinct !{!327, !87, !88}
!328 = !{!"branch_weights", i32 66796, i32 349419}
!329 = !{!114, !76, i64 68}
!330 = distinct !{!330, !87, !88}
!331 = !{!"branch_weights", i32 27134, i32 155653}
!332 = !{!"branch_weights", i32 -1266465789, i32 758813}
!333 = !{!"branch_weights", i32 119, i32 311189}
!334 = !{!"branch_weights", i32 155655, i32 155653}
!335 = distinct !{!335, !87, !88}
!336 = distinct !{!336, !87, !88}
!337 = !{!"branch_weights", i32 107433, i32 38}
!338 = !{!"branch_weights", i32 1, i32 107432}
!339 = !{!"branch_weights", i32 107432, i32 61753}
!340 = distinct !{!340, !87, !88}
!341 = !{!"branch_weights", i32 21937, i32 306975}
!342 = !{!"branch_weights", i32 328873, i32 1}
!343 = !{!"branch_weights", i32 665949, i32 328873}
!344 = !{!"branch_weights", i32 1, i32 10978}
!345 = !{!"branch_weights", i32 21, i32 21899}
!346 = !{!"branch_weights", i32 10978, i32 10942}
!347 = !{!"branch_weights", i32 38, i32 10941}
!348 = !{!"branch_weights", i32 38, i32 328874}
!349 = distinct !{!349, !87, !88}
!350 = distinct !{!350, !87, !88}
!351 = distinct !{!351, !87, !88}
!352 = !{!"ira-lives.c;make_regno_born"}
!353 = !{!"function_entry_count", i64 9371}
!354 = !{!"ira-lives.c;mark_reg_live"}
!355 = !{!"function_entry_count", i64 813278}
!356 = !{!"ira-lives.c;single_reg_class"}
!357 = !{!"branch_weights", i32 1045197, i32 35690, i32 0, i32 1345}
!358 = !{!"branch_weights", i32 1045197, i32 0}
!359 = !{!"branch_weights", i32 241047, i32 0, i32 0, i32 255779, i32 0, i32 1143, i32 0, i32 7997, i32 1143, i32 0, i32 19, i32 1124, i32 0, i32 202, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 516794, i32 1143, i32 0, i32 269, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11136, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7401, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!360 = !{!"branch_weights", i32 19, i32 0}
!361 = !{!"branch_weights", i32 0, i32 1124, i32 0}
!362 = !{!"branch_weights", i32 516794, i32 12548}
!363 = !{!"branch_weights", i32 528199, i32 1143}
!364 = !{!"branch_weights", i32 526854, i32 1345}
!365 = !{!"branch_weights", i32 7401, i32 0}
!366 = !{!"branch_weights", i32 0, i32 268954}
!367 = distinct !{!367, !87, !88}
!368 = !{!"function_entry_count", i64 401043}
!369 = !{!"ira-lives.c;mark_reg_dead"}
!370 = !{!"branch_weights", i32 401043, i32 0}
!371 = !{!"branch_weights", i32 166632, i32 234411}
!372 = !{!"branch_weights", i32 0, i32 166632}
!373 = !{!"branch_weights", i32 166632, i32 0}
!374 = !{!"branch_weights", i32 1, i32 166631}
!375 = !{!"branch_weights", i32 256, i32 166376}
!376 = !{!"branch_weights", i32 128, i32 128}
!377 = !{!"branch_weights", i32 166631, i32 1}
!378 = distinct !{!378, !87, !88}
!379 = !{!"branch_weights", i32 166504, i32 128}
!380 = !{!"branch_weights", i32 127, i32 1}
!381 = !{!"branch_weights", i32 1, i32 127}
!382 = !{!"branch_weights", i32 1, i32 895}
!383 = !{!"branch_weights", i32 0, i32 896}
!384 = !{!"branch_weights", i32 895, i32 1}
!385 = !{!"branch_weights", i32 769, i32 127}
!386 = distinct !{!386, !87, !88}
!387 = !{!"branch_weights", i32 128, i32 0}
!388 = !{!"branch_weights", i32 0, i32 128}
!389 = distinct !{!389, !87, !88}
!390 = !{!"branch_weights", i32 66796, i32 167615}
!391 = !{!"branch_weights", i32 1, i32 66795}
!392 = !{!"branch_weights", i32 0, i32 66796}
!393 = !{!"branch_weights", i32 192, i32 66604}
!394 = !{!"branch_weights", i32 128, i32 64}
!395 = !{!"branch_weights", i32 66795, i32 1}
!396 = distinct !{!396, !87, !88}
!397 = !{!"branch_weights", i32 66732, i32 64}
!398 = !{!"branch_weights", i32 1, i32 383}
!399 = !{!"branch_weights", i32 0, i32 384}
!400 = !{!"branch_weights", i32 383, i32 1}
!401 = !{!"branch_weights", i32 641, i32 127}
!402 = !{!"branch_weights", i32 64, i32 0}
!403 = !{!"branch_weights", i32 0, i32 64}
!404 = distinct !{!404, !87, !88}
!405 = distinct !{!405, !87, !88}
!406 = distinct !{!406, !87, !88}
!407 = !{i8 0, i8 2}
!408 = distinct !{!408, !87, !88}
