; ModuleID = 'caller-save.c'
source_filename = "caller-save.c"
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.insn_chain = type { ptr, ptr, ptr, ptr, i32, i8, %struct.bitmap_head_def, %struct.bitmap_head_def, ptr, i32, i64 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.saved_hard_reg = type { i32, i32, i32, ptr, i32, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@caller_save_initialized_p = dso_local local_unnamed_addr global i8 0, align 1
@no_caller_save_reg_set = dso_local local_unnamed_addr global i64 0, align 8
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@call_fixed_reg_set = external local_unnamed_addr global i64, align 8
@regno_save_mode = internal unnamed_addr global [53 x [5 x i32]] zeroinitializer, align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@.str = private unnamed_addr constant [14 x i8] c"caller-save.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@test_reg = internal global ptr null, align 8
@test_mem = internal global ptr null, align 8
@savepat = internal global ptr null, align 8
@restpat = internal global ptr null, align 8
@saveinsn = internal global ptr null, align 8
@restinsn = internal global ptr null, align 8
@regno_save_mem = internal unnamed_addr global [53 x [5 x ptr]] zeroinitializer, align 16
@save_slots_num = internal unnamed_addr global i32 0, align 4
@max_regno = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@reg_info_p = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_ira_share_save_slots = external local_unnamed_addr global i32, align 4
@reload_insn_chain = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@hard_reg_map = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@saved_regs_num = internal unnamed_addr global i32 0, align 4
@all_saved_regs = internal global [53 x ptr] zeroinitializer, align 16
@save_slots = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%d uses slot of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d uses a slot from prev iteration\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%d uses a new slot\0A\00", align 1
@hard_regs_saved = internal unnamed_addr global i64 0, align 8
@n_regs_saved = internal unnamed_addr global i32 0, align 4
@referenced_regs = internal unnamed_addr global i64 0, align 8
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@gt_ggc_r_gt_caller_save_h = dso_local local_unnamed_addr constant [7 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @restinsn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @saveinsn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @test_mem, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @test_reg, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @restpat, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @savepat, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@cached_reg_save_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16
@cached_reg_restore_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@reg_equiv_mem = external local_unnamed_addr global ptr, align 8
@reg_equiv_address = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !86 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !87
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !86 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !87
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !86 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !86 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !87
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !86 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !86 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !86 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !86 {
  %2 = load i32, ptr %0, align 8, !tbaa !101
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !86 {
  %2 = load i32, ptr %0, align 8, !tbaa !101
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !86 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !86 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !86 {
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
  br i1 %23, label %7, label %24, !llvm.loop !103

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @init_caller_save() local_unnamed_addr #9 !prof !106 {
  %1 = load i8, ptr @caller_save_initialized_p, align 1, !tbaa !98
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %122, !prof !107

3:                                                ; preds = %0
  store i8 1, ptr @caller_save_initialized_p, align 1, !tbaa !98
  store i64 0, ptr @no_caller_save_reg_set, align 8, !tbaa !108
  br label %6

4:                                                ; preds = %41
  %5 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 13), align 8, !tbaa !108
  br label %44

6:                                                ; preds = %3, %41
  %7 = phi i64 [ 0, %3 ], [ %42, %41 ]
  %8 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !98
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11, !prof !109

11:                                               ; preds = %6
  %12 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %13 = shl nuw i64 1, %7
  %14 = and i64 %12, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %39, !prof !110

16:                                               ; preds = %11
  %17 = trunc i64 %7 to i32
  %18 = add i32 %17, -17
  %19 = icmp ult i32 %18, 2
  br label %20

20:                                               ; preds = %16, %36
  %21 = phi i64 [ 1, %16 ], [ %37, %36 ]
  %22 = icmp ne i64 %21, 1
  %23 = or i1 %19, %22
  br i1 %23, label %27, label %24, !prof !111

24:                                               ; preds = %20
  %25 = trunc i64 %7 to i32
  %26 = tail call i32 @choose_hard_reg_mode(i32 noundef %25, i32 noundef 1, i8 noundef zeroext 0) #18
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ 0, %20 ], [ %26, %24 ]
  %29 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 %21
  store i32 %28, ptr %29, align 4, !tbaa !102
  %30 = icmp eq i32 %28, 0
  %31 = icmp eq i64 %21, 1
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %36, !prof !112

33:                                               ; preds = %27
  %34 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %35 = or i64 %34, %13
  store i64 %35, ptr @call_fixed_reg_set, align 8, !tbaa !108
  br label %36

36:                                               ; preds = %27, %33
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, 5
  br i1 %38, label %41, label %20, !prof !113, !llvm.loop !114

39:                                               ; preds = %11, %6
  %40 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %7, i64 1
  store i32 0, ptr %40, align 4, !tbaa !102
  br label %41

41:                                               ; preds = %36, %39
  %42 = add nuw nsw i64 %7, 1
  %43 = icmp eq i64 %42, 53
  br i1 %43, label %4, label %6, !prof !115, !llvm.loop !116

44:                                               ; preds = %4, %49
  %45 = phi i64 [ 0, %4 ], [ %50, %49 ]
  %46 = shl nuw i64 1, %45
  %47 = and i64 %5, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53, !prof !117

49:                                               ; preds = %44
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, 53
  br i1 %51, label %52, label %44, !prof !117, !llvm.loop !118

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.1) #18
  br label %55

53:                                               ; preds = %44
  %54 = trunc i64 %45 to i32
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 53, %52 ], [ %54, %53 ]
  %57 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %56) #18
  br label %61

58:                                               ; preds = %79
  %59 = lshr i32 %62, 1
  %60 = icmp ult i32 %62, 2
  br i1 %60, label %82, label %61, !prof !117, !llvm.loop !119

61:                                               ; preds = %55, %58
  %62 = phi i32 [ 65536, %55 ], [ %59, %58 ]
  %63 = zext nneg i32 %62 to i64
  %64 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %63) #18
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %57, ptr noundef %64) #18
  br label %66

66:                                               ; preds = %61, %74
  %67 = phi i64 [ 0, %61 ], [ %75, %74 ]
  %68 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %67, i64 1
  %69 = load i32, ptr %68, align 4, !tbaa !102
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !120

71:                                               ; preds = %66
  %72 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %69, ptr noundef %65, i8 noundef zeroext 0) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74, !prof !121

74:                                               ; preds = %66, %71
  %75 = add nuw nsw i64 %67, 1
  %76 = icmp eq i64 %75, 53
  br i1 %76, label %79, label %66, !prof !115, !llvm.loop !122

77:                                               ; preds = %71
  %78 = trunc i64 %67 to i32
  br label %79

79:                                               ; preds = %74, %77
  %80 = phi i32 [ %78, %77 ], [ 53, %74 ]
  %81 = icmp eq i32 %80, 53
  br i1 %81, label %82, label %58, !prof !123

82:                                               ; preds = %79, %58
  %83 = phi ptr [ %65, %79 ], [ %57, %58 ]
  %84 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 0) #18
  store ptr %84, ptr @test_reg, align 8, !tbaa !87
  %85 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %83) #18
  store ptr %85, ptr @test_mem, align 8, !tbaa !87
  %86 = load ptr, ptr @test_reg, align 8, !tbaa !87
  %87 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %85, ptr noundef %86) #18
  store ptr %87, ptr @savepat, align 8, !tbaa !87
  %88 = load ptr, ptr @test_reg, align 8, !tbaa !87
  %89 = load ptr, ptr @test_mem, align 8, !tbaa !87
  %90 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %88, ptr noundef %89) #18
  store ptr %90, ptr @restpat, align 8, !tbaa !87
  %91 = load ptr, ptr @savepat, align 8, !tbaa !87
  %92 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %91, i32 noundef -1, ptr noundef null) #18
  store ptr %92, ptr @saveinsn, align 8, !tbaa !87
  %93 = load ptr, ptr @restpat, align 8, !tbaa !87
  %94 = tail call ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %93, i32 noundef -1, ptr noundef null) #18
  store ptr %94, ptr @restinsn, align 8, !tbaa !87
  br label %95

95:                                               ; preds = %82, %119
  %96 = phi i64 [ 0, %82 ], [ %120, %119 ]
  %97 = trunc i64 %96 to i32
  br label %98

98:                                               ; preds = %95, %116
  %99 = phi i64 [ 1, %95 ], [ %117, %116 ]
  %100 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %96, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !102
  %102 = tail call fastcc i32 @reg_save_code(i32 noundef %97, i32 noundef %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %116, !prof !124

104:                                              ; preds = %98
  store i32 0, ptr %100, align 4, !tbaa !102
  %105 = icmp eq i64 %99, 1
  br i1 %105, label %106, label %116, !prof !125

106:                                              ; preds = %104
  %107 = shl nuw i64 1, %96
  %108 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %96
  %109 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %110 = or i64 %109, %107
  store i64 %110, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %111 = load i8, ptr %108, align 1, !tbaa !98
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113, !prof !126

113:                                              ; preds = %106
  %114 = load i64, ptr @no_caller_save_reg_set, align 8, !tbaa !108
  %115 = or i64 %114, %107
  store i64 %115, ptr @no_caller_save_reg_set, align 8, !tbaa !108
  br label %116

116:                                              ; preds = %98, %106, %113, %104
  %117 = add nuw nsw i64 %99, 1
  %118 = icmp eq i64 %117, 5
  br i1 %118, label %119, label %98, !prof !127, !llvm.loop !128

119:                                              ; preds = %116
  %120 = add nuw nsw i64 %96, 1
  %121 = icmp eq i64 %120, 53
  br i1 %121, label %122, label %95, !prof !115, !llvm.loop !129

122:                                              ; preds = %119, %0
  ret void
}

declare i32 @choose_hard_reg_mode(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_iuuBieie_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reg_save_code(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !130 !PGOFuncName !131 {
  %3 = sext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_save_code, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !102
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %70, !prof !132

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %0, i32 noundef %1) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !133

11:                                               ; preds = %8
  store i32 -1, ptr %5, align 4, !tbaa !102
  %12 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 -1, ptr %12, align 4, !tbaa !102
  br label %70

13:                                               ; preds = %8
  %14 = load ptr, ptr @test_reg, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !98
  tail call void @df_ref_change_reg_with_loc(i32 noundef %16, i32 noundef %0, ptr noundef %14) #18
  %17 = load ptr, ptr @test_reg, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  store i32 %0, ptr %18, align 8, !tbaa !98
  %19 = load i32, ptr %17, align 8
  %20 = shl i32 %1, 16
  %21 = and i32 %20, 16711680
  %22 = and i32 %19, -16711681
  %23 = or disjoint i32 %22, %21
  store i32 %23, ptr %17, align 8
  %24 = load ptr, ptr @test_mem, align 8, !tbaa !87
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, -16711681
  %27 = or disjoint i32 %26, %21
  store i32 %27, ptr %24, align 8
  %28 = load ptr, ptr @saveinsn, align 8, !tbaa !87
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1
  store i32 -1, ptr %29, align 8, !tbaa !98
  %30 = load ptr, ptr @restinsn, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1
  store i32 -1, ptr %31, align 8, !tbaa !98
  %32 = load i32, ptr %29, align 8, !tbaa !98
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38, !prof !134

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = tail call i32 @recog(ptr noundef %36, ptr noundef %28, ptr noundef null) #18
  store i32 %37, ptr %29, align 8, !tbaa !98
  br label %38

38:                                               ; preds = %13, %34
  %39 = load i32, ptr %29, align 8, !tbaa !98
  store i32 %39, ptr %5, align 4, !tbaa !102
  %40 = load ptr, ptr @restinsn, align 8, !tbaa !87
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !98
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48, !prof !134

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = tail call i32 @recog(ptr noundef %46, ptr noundef %40, ptr noundef null) #18
  store i32 %47, ptr %41, align 8, !tbaa !98
  br label %48

48:                                               ; preds = %38, %44
  %49 = load i32, ptr %41, align 8, !tbaa !98
  %50 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %3, i64 %4
  store i32 %49, ptr %50, align 4, !tbaa !102
  %51 = load i32, ptr %5, align 4, !tbaa !102
  %52 = icmp eq i32 %51, -1
  %53 = icmp eq i32 %49, -1
  %54 = select i1 %52, i1 true, i1 %53, !prof !121
  br i1 %54, label %63, label %55, !prof !121

55:                                               ; preds = %48
  %56 = load ptr, ptr @saveinsn, align 8, !tbaa !87
  tail call void @extract_insn(ptr noundef %56) #18
  %57 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %58 = load ptr, ptr @restinsn, align 8, !tbaa !87
  tail call void @extract_insn(ptr noundef %58) #18
  %59 = tail call i32 @constrain_operands(i32 noundef 1) #18
  %60 = and i32 %57, 255
  %61 = and i32 %60, %59
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64, !prof !121

63:                                               ; preds = %48, %55
  store i32 -1, ptr %5, align 4, !tbaa !102
  store i32 -1, ptr %50, align 4, !tbaa !102
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, ptr %5, align 4, !tbaa !102
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68, !prof !121

67:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.1) #18
  br label %68

68:                                               ; preds = %64, %67
  %69 = load i32, ptr %5, align 4, !tbaa !102
  br label %70

70:                                               ; preds = %2, %68, %11
  %71 = phi i32 [ %69, %68 ], [ -1, %11 ], [ %6, %2 ]
  ret i32 %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_save_areas() local_unnamed_addr #10 !prof !106 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = mul nuw nsw i64 %2, 40
  %4 = getelementptr i8, ptr getelementptr (i8, ptr @regno_save_mem, i64 8), i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !87
  %5 = add nuw nsw i64 %2, 1
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %7, label %1, !prof !135, !llvm.loop !136

7:                                                ; preds = %1
  store i32 0, ptr @save_slots_num, align 4, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setup_save_areas() local_unnamed_addr #9 !prof !137 {
  %1 = alloca [53 x ptr], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [53 x ptr], align 16
  %5 = load i32, ptr @max_regno, align 4, !tbaa !102
  %6 = icmp sgt i32 %5, 53
  br i1 %6, label %7, label %53, !prof !138

7:                                                ; preds = %0
  %8 = load ptr, ptr @reg_renumber, align 8, !tbaa !87
  %9 = load ptr, ptr @reg_info_p, align 8
  %10 = load ptr, ptr @regno_reg_rtx, align 8
  %11 = zext nneg i32 %5 to i64
  br label %12

12:                                               ; preds = %7, %49
  %13 = phi i64 [ 53, %7 ], [ %51, %49 ]
  %14 = phi i64 [ 0, %7 ], [ %50, %49 ]
  %15 = getelementptr inbounds i16, ptr %8, i64 %13
  %16 = load i16, ptr %15, align 2, !tbaa !139
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i16 %16, -1
  br i1 %18, label %19, label %49, !prof !140

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.reg_info_t, ptr %9, i64 %13, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !141
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %49, !prof !143

23:                                               ; preds = %19
  %24 = getelementptr inbounds ptr, ptr %10, i64 %13
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %17 to i64
  %30 = zext nneg i32 %28 to i64
  %31 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %29, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !98
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %49, label %34, !prof !144

34:                                               ; preds = %23
  %35 = zext i8 %32 to i32
  %36 = add nuw nsw i32 %35, %17
  %37 = zext nneg i32 %36 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %29, %34 ], [ %47, %38 ]
  %40 = phi i64 [ %14, %34 ], [ %46, %38 ]
  %41 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %39
  %42 = load i8, ptr %41, align 1, !tbaa !98
  %43 = icmp eq i8 %42, 0
  %44 = shl nuw i64 1, %39
  %45 = select i1 %43, i64 0, i64 %44, !prof !145
  %46 = or i64 %45, %40
  %47 = add nuw nsw i64 %39, 1
  %48 = icmp ult i64 %47, %37
  br i1 %48, label %38, label %49, !prof !144, !llvm.loop !146

49:                                               ; preds = %38, %23, %12, %19
  %50 = phi i64 [ %14, %19 ], [ %14, %12 ], [ %14, %23 ], [ %46, %38 ]
  %51 = add nuw nsw i64 %13, 1
  %52 = icmp eq i64 %51, %11
  br i1 %52, label %53, label %12, !prof !147, !llvm.loop !148

53:                                               ; preds = %49, %0
  %54 = phi i64 [ 0, %0 ], [ %50, %49 ]
  %55 = load i32, ptr @optimize, align 4, !tbaa !102
  %56 = icmp ne i32 %55, 0
  %57 = load i32, ptr @flag_ira_share_save_slots, align 4
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false, !prof !149
  br i1 %59, label %60, label %688, !prof !149

60:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 424, ptr nonnull %4) #18
  store i32 0, ptr @saved_regs_num, align 4, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(424) @hard_reg_map, i8 0, i64 424, i1 false), !tbaa !87
  %61 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !87
  %62 = icmp eq ptr %61, null
  br i1 %62, label %281, label %63, !prof !150

63:                                               ; preds = %60, %279
  %64 = phi ptr [ %67, %279 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.insn_chain, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !151
  %67 = load ptr, ptr %64, align 8, !tbaa !154
  %68 = load i32, ptr %66, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %279, !prof !155

71:                                               ; preds = %63
  %72 = call ptr @find_reg_note(ptr noundef nonnull %66, i32 noundef 27, ptr noundef null) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %279, !prof !156

74:                                               ; preds = %71
  %75 = load i32, ptr @optimize_size, align 4, !tbaa !102
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %97, !prof !157

77:                                               ; preds = %74
  %78 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !102
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80, !prof !157

80:                                               ; preds = %77
  %81 = load ptr, ptr @cfun, align 8, !tbaa !87
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !158
  %84 = load ptr, ptr %83, align 8, !tbaa !160
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 8
  %86 = load i64, ptr %85, align 8, !tbaa !162
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %80, %77
  %89 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 11
  %92 = load i32, ptr %91, align 8, !tbaa !164
  %93 = add i32 %92, 9
  %94 = icmp ult i32 %93, 19
  br i1 %94, label %97, label %95, !prof !165

95:                                               ; preds = %88
  %96 = sdiv i32 %92, 10
  br label %97

97:                                               ; preds = %80, %95, %88, %74
  %98 = phi i32 [ 1000, %74 ], [ %96, %95 ], [ 1, %88 ], [ 1000, %80 ]
  store i64 0, ptr %2, align 8, !tbaa !108
  %99 = getelementptr inbounds %struct.insn_chain, ptr %64, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %2, ptr noundef nonnull %99) #18
  %100 = load i64, ptr @call_used_reg_set, align 8, !tbaa !108
  store i64 0, ptr %3, align 8, !tbaa !108
  %101 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !98
  call void @note_stores(ptr noundef %102, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %3) #18
  %103 = load i32, ptr %66, align 8
  %104 = and i32 %103, 16777216
  %105 = icmp ne i32 %104, 0
  %106 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8
  %107 = icmp ne ptr %106, null
  %108 = select i1 %105, i1 %107, i1 false, !prof !166
  br i1 %108, label %109, label %110, !prof !166

109:                                              ; preds = %97
  call void @mark_set_regs(ptr noundef nonnull %106, ptr poison, ptr noundef nonnull %3)
  br label %110

110:                                              ; preds = %109, %97
  %111 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %112 = load i64, ptr %3, align 8, !tbaa !108
  %113 = or i64 %112, %111
  %114 = xor i64 %113, -1
  %115 = and i64 %100, %114
  %116 = load i64, ptr %2, align 8, !tbaa !108
  %117 = and i64 %115, %116
  store i64 %117, ptr %2, align 8, !tbaa !108
  br label %118

118:                                              ; preds = %110, %143
  %119 = phi i64 [ 0, %110 ], [ %144, %143 ]
  %120 = load i64, ptr %2, align 8, !tbaa !108
  %121 = shl nuw nsw i64 1, %119
  %122 = and i64 %120, %121
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %143, label %124, !prof !167

124:                                              ; preds = %118
  %125 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %119
  %126 = load ptr, ptr %125, align 8, !tbaa !87
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.saved_hard_reg, ptr %126, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !168
  %131 = add nsw i32 %130, %98
  store i32 %131, ptr %129, align 8, !tbaa !168
  br label %143

132:                                              ; preds = %124
  %133 = call ptr @xmalloc(i64 noundef 32) #18
  %134 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %135
  store ptr %133, ptr %136, align 8, !tbaa !87
  store ptr %133, ptr %125, align 8, !tbaa !87
  %137 = add nsw i32 %134, 1
  store i32 %137, ptr @saved_regs_num, align 4, !tbaa !102
  store i32 %134, ptr %133, align 8, !tbaa !170
  %138 = getelementptr inbounds %struct.saved_hard_reg, ptr %133, i64 0, i32 1
  %139 = trunc i64 %119 to i32
  store i32 %139, ptr %138, align 4, !tbaa !171
  %140 = getelementptr inbounds %struct.saved_hard_reg, ptr %133, i64 0, i32 2
  store i32 %98, ptr %140, align 8, !tbaa !168
  %141 = getelementptr inbounds %struct.saved_hard_reg, ptr %133, i64 0, i32 4
  store i32 0, ptr %141, align 8, !tbaa !172
  %142 = getelementptr inbounds %struct.saved_hard_reg, ptr %133, i64 0, i32 5
  store i32 -1, ptr %142, align 4, !tbaa !173
  br label %143

143:                                              ; preds = %118, %132, %128
  %144 = add nuw nsw i64 %119, 1
  %145 = icmp eq i64 %144, 53
  br i1 %145, label %146, label %118, !prof !174, !llvm.loop !175

146:                                              ; preds = %143
  %147 = load ptr, ptr %99, align 8, !tbaa !176
  %148 = icmp eq ptr %147, null
  %149 = select i1 %148, ptr @bitmap_zero_bits, ptr %147, !prof !166
  %150 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 2
  %151 = load i32, ptr %150, align 8, !tbaa !177
  %152 = icmp eq i32 %151, 0
  %153 = shl i32 %151, 7
  %154 = select i1 %152, i32 53, i32 %153, !prof !157
  %155 = getelementptr inbounds %struct.bitmap_element_def, ptr %149, i64 0, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !108
  %157 = and i32 %154, 53
  %158 = zext nneg i32 %157 to i64
  %159 = lshr i64 %156, %158
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = add nuw nsw i32 %154, %161
  br label %163

163:                                              ; preds = %276, %146
  %164 = phi i64 [ %159, %146 ], [ %277, %276 ]
  %165 = phi i32 [ %162, %146 ], [ %278, %276 ]
  %166 = phi i32 [ 0, %146 ], [ %221, %276 ]
  %167 = phi ptr [ %149, %146 ], [ %222, %276 ]
  %168 = icmp eq i64 %164, 0
  br i1 %168, label %183, label %169, !prof !179

169:                                              ; preds = %197, %163
  %170 = phi i64 [ %164, %163 ], [ %202, %197 ]
  %171 = phi i32 [ %165, %163 ], [ %199, %197 ]
  %172 = phi i32 [ %166, %163 ], [ %198, %197 ]
  %173 = phi ptr [ %167, %163 ], [ %190, %197 ]
  %174 = and i64 %170, 1
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %218, !prof !180

176:                                              ; preds = %169, %176
  %177 = phi i32 [ %180, %176 ], [ %171, %169 ]
  %178 = phi i64 [ %179, %176 ], [ %170, %169 ]
  %179 = lshr exact i64 %178, 1
  %180 = add i32 %177, 1
  %181 = and i64 %178, 2
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %176, label %218, !prof !181, !llvm.loop !182

183:                                              ; preds = %163
  %184 = add i32 %165, 63
  %185 = and i32 %184, -64
  %186 = add i32 %166, 1
  br label %187

187:                                              ; preds = %214, %183
  %188 = phi i64 [ %164, %183 ], [ %209, %214 ]
  %189 = phi i32 [ %185, %183 ], [ %217, %214 ]
  %190 = phi ptr [ %167, %183 ], [ %212, %214 ]
  %191 = phi i32 [ %186, %183 ], [ 0, %214 ]
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %208, label %193, !prof !183

193:                                              ; preds = %187
  %194 = add i32 %189, 128
  %195 = shl i32 %191, 6
  %196 = sub i32 %194, %195
  br label %197

197:                                              ; preds = %193, %204
  %198 = phi i32 [ %206, %204 ], [ %191, %193 ]
  %199 = phi i32 [ %205, %204 ], [ %189, %193 ]
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds %struct.bitmap_element_def, ptr %190, i64 0, i32 3, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !108
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %169, !prof !184

204:                                              ; preds = %197
  %205 = add i32 %199, 64
  %206 = add i32 %198, 1
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %197, !prof !185, !llvm.loop !186

208:                                              ; preds = %204, %187
  %209 = phi i64 [ %188, %187 ], [ %202, %204 ]
  %210 = phi i32 [ %189, %187 ], [ %196, %204 ]
  %211 = phi i32 [ %191, %187 ], [ 2, %204 ]
  %212 = load ptr, ptr %190, align 8, !tbaa !187
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214, !prof !188

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !177
  %217 = shl i32 %216, 7
  br label %187, !llvm.loop !189

218:                                              ; preds = %208, %176, %169
  %219 = phi i64 [ %170, %169 ], [ %179, %176 ], [ %209, %208 ]
  %220 = phi i32 [ %171, %169 ], [ %180, %176 ], [ %210, %208 ]
  %221 = phi i32 [ %172, %169 ], [ %172, %176 ], [ %211, %208 ]
  %222 = phi ptr [ %173, %169 ], [ %173, %176 ], [ %212, %208 ]
  %223 = phi i1 [ false, %169 ], [ false, %176 ], [ true, %208 ]
  br i1 %223, label %279, label %224, !prof !190

224:                                              ; preds = %218
  %225 = load ptr, ptr @reg_renumber, align 8, !tbaa !87
  %226 = zext i32 %220 to i64
  %227 = getelementptr inbounds i16, ptr %225, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !139
  %229 = icmp slt i16 %228, 0
  br i1 %229, label %276, label %230, !prof !191

230:                                              ; preds = %224
  %231 = zext nneg i16 %228 to i64
  %232 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %233 = getelementptr inbounds ptr, ptr %232, i64 %226
  %234 = load ptr, ptr %233, align 8, !tbaa !87
  %235 = load i32, ptr %234, align 8
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  %238 = zext nneg i32 %237 to i64
  %239 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %231, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !98
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %276, label %242, !prof !192

242:                                              ; preds = %230
  %243 = zext i8 %240 to i64
  %244 = zext nneg i16 %228 to i64
  %245 = add nuw nsw i64 %243, %244
  br label %246

246:                                              ; preds = %242, %273
  %247 = phi i64 [ %231, %242 ], [ %274, %273 ]
  %248 = shl nuw i64 1, %247
  %249 = and i64 %248, %115
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %273, label %251, !prof !193

251:                                              ; preds = %246
  %252 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %247
  %253 = load ptr, ptr %252, align 8, !tbaa !87
  %254 = icmp eq ptr %253, null
  br i1 %254, label %259, label %255, !prof !194

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.saved_hard_reg, ptr %253, i64 0, i32 2
  %257 = load i32, ptr %256, align 8, !tbaa !168
  %258 = add nsw i32 %257, %98
  store i32 %258, ptr %256, align 8, !tbaa !168
  br label %270

259:                                              ; preds = %251
  %260 = call ptr @xmalloc(i64 noundef 32) #18
  %261 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %262
  store ptr %260, ptr %263, align 8, !tbaa !87
  store ptr %260, ptr %252, align 8, !tbaa !87
  %264 = add nsw i32 %261, 1
  store i32 %264, ptr @saved_regs_num, align 4, !tbaa !102
  store i32 %261, ptr %260, align 8, !tbaa !170
  %265 = getelementptr inbounds %struct.saved_hard_reg, ptr %260, i64 0, i32 1
  %266 = trunc i64 %247 to i32
  store i32 %266, ptr %265, align 4, !tbaa !171
  %267 = getelementptr inbounds %struct.saved_hard_reg, ptr %260, i64 0, i32 2
  store i32 %98, ptr %267, align 8, !tbaa !168
  %268 = getelementptr inbounds %struct.saved_hard_reg, ptr %260, i64 0, i32 4
  store i32 0, ptr %268, align 8, !tbaa !172
  %269 = getelementptr inbounds %struct.saved_hard_reg, ptr %260, i64 0, i32 5
  store i32 -1, ptr %269, align 4, !tbaa !173
  br label %270

270:                                              ; preds = %259, %255
  %271 = load i64, ptr %2, align 8, !tbaa !108
  %272 = or i64 %271, %248
  store i64 %272, ptr %2, align 8, !tbaa !108
  br label %273

273:                                              ; preds = %246, %270
  %274 = add nuw nsw i64 %247, 1
  %275 = icmp ult i64 %274, %245
  br i1 %275, label %246, label %276, !prof !192, !llvm.loop !195

276:                                              ; preds = %273, %230, %224
  %277 = lshr i64 %219, 1
  %278 = add i32 %220, 1
  br label %163, !llvm.loop !196

279:                                              ; preds = %218, %63, %71
  %280 = icmp eq ptr %67, null
  br i1 %280, label %281, label %63, !prof !197, !llvm.loop !198

281:                                              ; preds = %279, %60
  %282 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %283 = mul nsw i32 %282, %282
  %284 = zext nneg i32 %283 to i64
  %285 = call ptr @xmalloc(i64 noundef %284) #18
  %286 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %287 = mul nsw i32 %286, %286
  %288 = zext nneg i32 %287 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %285, i8 0, i64 %288, i1 false), !prof !199
  %289 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !87
  %290 = icmp eq ptr %289, null
  br i1 %290, label %500, label %291, !prof !150

291:                                              ; preds = %281, %498
  %292 = phi ptr [ %295, %498 ], [ %289, %281 ]
  %293 = getelementptr inbounds %struct.insn_chain, ptr %292, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !151
  %295 = load ptr, ptr %292, align 8, !tbaa !154
  %296 = load i32, ptr %294, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 10
  br i1 %298, label %299, label %498, !prof !155

299:                                              ; preds = %291
  %300 = call ptr @find_reg_note(ptr noundef nonnull %294, i32 noundef 27, ptr noundef null) #18
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %498, !prof !156

302:                                              ; preds = %299
  store i64 0, ptr %2, align 8, !tbaa !108
  %303 = getelementptr inbounds %struct.insn_chain, ptr %292, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %2, ptr noundef nonnull %303) #18
  %304 = load i64, ptr @call_used_reg_set, align 8, !tbaa !108
  store i64 0, ptr %3, align 8, !tbaa !108
  %305 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !98
  call void @note_stores(ptr noundef %306, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %3) #18
  %307 = load i32, ptr %294, align 8
  %308 = and i32 %307, 16777216
  %309 = icmp ne i32 %308, 0
  %310 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8
  %311 = icmp ne ptr %310, null
  %312 = select i1 %309, i1 %311, i1 false, !prof !166
  br i1 %312, label %313, label %314, !prof !166

313:                                              ; preds = %302
  call void @mark_set_regs(ptr noundef nonnull %310, ptr poison, ptr noundef nonnull %3)
  br label %314

314:                                              ; preds = %313, %302
  %315 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %316 = load i64, ptr %3, align 8, !tbaa !108
  %317 = or i64 %316, %315
  %318 = xor i64 %317, -1
  %319 = and i64 %304, %318
  %320 = load i64, ptr %2, align 8, !tbaa !108
  %321 = and i64 %319, %320
  store i64 %321, ptr %2, align 8, !tbaa !108
  br label %322

322:                                              ; preds = %314, %339
  %323 = phi i64 [ 0, %314 ], [ %341, %339 ]
  %324 = phi i32 [ 0, %314 ], [ %340, %339 ]
  %325 = load i64, ptr %2, align 8, !tbaa !108
  %326 = shl nuw nsw i64 1, %323
  %327 = and i64 %325, %326
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %339, label %329, !prof !167

329:                                              ; preds = %322
  %330 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %323
  %331 = load ptr, ptr %330, align 8, !tbaa !87
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #18
  br label %334

334:                                              ; preds = %329, %333
  %335 = load ptr, ptr %330, align 8, !tbaa !87
  %336 = add nsw i32 %324, 1
  %337 = sext i32 %324 to i64
  %338 = getelementptr inbounds [53 x ptr], ptr %1, i64 0, i64 %337
  store ptr %335, ptr %338, align 8, !tbaa !87
  br label %339

339:                                              ; preds = %322, %334
  %340 = phi i32 [ %336, %334 ], [ %324, %322 ]
  %341 = add nuw nsw i64 %323, 1
  %342 = icmp eq i64 %341, 53
  br i1 %342, label %343, label %322, !prof !174, !llvm.loop !200

343:                                              ; preds = %339
  %344 = load ptr, ptr %303, align 8, !tbaa !176
  %345 = icmp eq ptr %344, null
  %346 = select i1 %345, ptr @bitmap_zero_bits, ptr %344, !prof !166
  %347 = getelementptr inbounds %struct.bitmap_element_def, ptr %346, i64 0, i32 2
  %348 = load i32, ptr %347, align 8, !tbaa !177
  %349 = icmp eq i32 %348, 0
  %350 = shl i32 %348, 7
  %351 = select i1 %349, i32 53, i32 %350, !prof !157
  %352 = getelementptr inbounds %struct.bitmap_element_def, ptr %346, i64 0, i32 3
  %353 = load i64, ptr %352, align 8, !tbaa !108
  %354 = and i32 %351, 53
  %355 = zext nneg i32 %354 to i64
  %356 = lshr i64 %353, %355
  %357 = icmp eq i64 %356, 0
  %358 = zext i1 %357 to i32
  %359 = add nuw nsw i32 %351, %358
  %360 = load ptr, ptr @reg_renumber, align 8
  %361 = load ptr, ptr @regno_reg_rtx, align 8
  br label %362

362:                                              ; preds = %466, %343
  %363 = phi i64 [ %356, %343 ], [ %468, %466 ]
  %364 = phi i32 [ %359, %343 ], [ %469, %466 ]
  %365 = phi i32 [ 0, %343 ], [ %421, %466 ]
  %366 = phi ptr [ %346, %343 ], [ %422, %466 ]
  %367 = phi i32 [ %340, %343 ], [ %467, %466 ]
  %368 = icmp eq i64 %363, 0
  br i1 %368, label %383, label %369, !prof !179

369:                                              ; preds = %397, %362
  %370 = phi i64 [ %363, %362 ], [ %402, %397 ]
  %371 = phi i32 [ %364, %362 ], [ %399, %397 ]
  %372 = phi i32 [ %365, %362 ], [ %398, %397 ]
  %373 = phi ptr [ %366, %362 ], [ %390, %397 ]
  %374 = and i64 %370, 1
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %418, !prof !180

376:                                              ; preds = %369, %376
  %377 = phi i32 [ %380, %376 ], [ %371, %369 ]
  %378 = phi i64 [ %379, %376 ], [ %370, %369 ]
  %379 = lshr exact i64 %378, 1
  %380 = add i32 %377, 1
  %381 = and i64 %378, 2
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %376, label %418, !prof !181, !llvm.loop !182

383:                                              ; preds = %362
  %384 = add i32 %364, 63
  %385 = and i32 %384, -64
  %386 = add i32 %365, 1
  br label %387

387:                                              ; preds = %414, %383
  %388 = phi i64 [ %363, %383 ], [ %409, %414 ]
  %389 = phi i32 [ %385, %383 ], [ %417, %414 ]
  %390 = phi ptr [ %366, %383 ], [ %412, %414 ]
  %391 = phi i32 [ %386, %383 ], [ 0, %414 ]
  %392 = icmp eq i32 %391, 2
  br i1 %392, label %408, label %393, !prof !183

393:                                              ; preds = %387
  %394 = add i32 %389, 128
  %395 = shl i32 %391, 6
  %396 = sub i32 %394, %395
  br label %397

397:                                              ; preds = %393, %404
  %398 = phi i32 [ %406, %404 ], [ %391, %393 ]
  %399 = phi i32 [ %405, %404 ], [ %389, %393 ]
  %400 = zext i32 %398 to i64
  %401 = getelementptr inbounds %struct.bitmap_element_def, ptr %390, i64 0, i32 3, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !108
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %369, !prof !184

404:                                              ; preds = %397
  %405 = add i32 %399, 64
  %406 = add i32 %398, 1
  %407 = icmp eq i32 %406, 2
  br i1 %407, label %408, label %397, !prof !185, !llvm.loop !186

408:                                              ; preds = %404, %387
  %409 = phi i64 [ %388, %387 ], [ %402, %404 ]
  %410 = phi i32 [ %389, %387 ], [ %396, %404 ]
  %411 = phi i32 [ %391, %387 ], [ 2, %404 ]
  %412 = load ptr, ptr %390, align 8, !tbaa !187
  %413 = icmp eq ptr %412, null
  br i1 %413, label %418, label %414, !prof !188

414:                                              ; preds = %408
  %415 = getelementptr inbounds %struct.bitmap_element_def, ptr %412, i64 0, i32 2
  %416 = load i32, ptr %415, align 8, !tbaa !177
  %417 = shl i32 %416, 7
  br label %387, !llvm.loop !189

418:                                              ; preds = %408, %376, %369
  %419 = phi i64 [ %370, %369 ], [ %379, %376 ], [ %409, %408 ]
  %420 = phi i32 [ %371, %369 ], [ %380, %376 ], [ %410, %408 ]
  %421 = phi i32 [ %372, %369 ], [ %372, %376 ], [ %411, %408 ]
  %422 = phi ptr [ %373, %369 ], [ %373, %376 ], [ %412, %408 ]
  %423 = phi i1 [ false, %369 ], [ false, %376 ], [ true, %408 ]
  br i1 %423, label %424, label %430, !prof !190

424:                                              ; preds = %418
  %425 = icmp sgt i32 %367, 0
  br i1 %425, label %426, label %498, !prof !201

426:                                              ; preds = %424
  %427 = load i32, ptr @saved_regs_num, align 4
  %428 = zext nneg i32 %367 to i64
  %429 = zext nneg i32 %367 to i64
  br label %470

430:                                              ; preds = %418
  %431 = zext i32 %420 to i64
  %432 = getelementptr inbounds i16, ptr %360, i64 %431
  %433 = load i16, ptr %432, align 2, !tbaa !139
  %434 = icmp slt i16 %433, 0
  br i1 %434, label %466, label %435, !prof !191

435:                                              ; preds = %430
  %436 = zext nneg i16 %433 to i64
  %437 = getelementptr inbounds ptr, ptr %361, i64 %431
  %438 = load ptr, ptr %437, align 8, !tbaa !87
  %439 = load i32, ptr %438, align 8
  %440 = lshr i32 %439, 16
  %441 = and i32 %440, 255
  %442 = zext nneg i32 %441 to i64
  %443 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %436, i64 %442
  %444 = load i8, ptr %443, align 1, !tbaa !98
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %466, label %446, !prof !192

446:                                              ; preds = %435
  %447 = zext i8 %444 to i64
  %448 = zext nneg i16 %433 to i64
  %449 = add nuw nsw i64 %447, %448
  br label %450

450:                                              ; preds = %446, %462
  %451 = phi i64 [ %436, %446 ], [ %464, %462 ]
  %452 = phi i32 [ %367, %446 ], [ %463, %462 ]
  %453 = shl nuw i64 1, %451
  %454 = and i64 %453, %319
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %462, label %456, !prof !193

456:                                              ; preds = %450
  %457 = getelementptr inbounds [53 x ptr], ptr @hard_reg_map, i64 0, i64 %451
  %458 = load ptr, ptr %457, align 8, !tbaa !87
  %459 = add nsw i32 %452, 1
  %460 = sext i32 %452 to i64
  %461 = getelementptr inbounds [53 x ptr], ptr %1, i64 0, i64 %460
  store ptr %458, ptr %461, align 8, !tbaa !87
  br label %462

462:                                              ; preds = %450, %456
  %463 = phi i32 [ %459, %456 ], [ %452, %450 ]
  %464 = add nuw nsw i64 %451, 1
  %465 = icmp ult i64 %464, %449
  br i1 %465, label %450, label %466, !prof !192, !llvm.loop !202

466:                                              ; preds = %462, %435, %430
  %467 = phi i32 [ %367, %430 ], [ %367, %435 ], [ %463, %462 ]
  %468 = lshr i64 %419, 1
  %469 = add i32 %420, 1
  br label %362, !llvm.loop !203

470:                                              ; preds = %426, %495
  %471 = phi i64 [ 0, %426 ], [ %496, %495 ]
  %472 = getelementptr inbounds [53 x ptr], ptr %1, i64 0, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !87
  br label %474

474:                                              ; preds = %470, %492
  %475 = phi i64 [ 0, %470 ], [ %493, %492 ]
  %476 = icmp eq i64 %471, %475
  br i1 %476, label %492, label %477, !prof !204

477:                                              ; preds = %474
  %478 = getelementptr inbounds [53 x ptr], ptr %1, i64 0, i64 %475
  %479 = load ptr, ptr %478, align 8, !tbaa !87
  %480 = load i32, ptr %479, align 8, !tbaa !170
  %481 = mul nsw i32 %427, %480
  %482 = load i32, ptr %473, align 8, !tbaa !170
  %483 = add nsw i32 %481, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, ptr %285, i64 %484
  store i8 1, ptr %485, align 1, !tbaa !98
  %486 = load i32, ptr %473, align 8, !tbaa !170
  %487 = mul nsw i32 %486, %427
  %488 = load i32, ptr %479, align 8, !tbaa !170
  %489 = add nsw i32 %487, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, ptr %285, i64 %490
  store i8 1, ptr %491, align 1, !tbaa !98
  br label %492

492:                                              ; preds = %474, %477
  %493 = add nuw nsw i64 %475, 1
  %494 = icmp eq i64 %493, %429
  br i1 %494, label %495, label %474, !prof !205, !llvm.loop !206

495:                                              ; preds = %492
  %496 = add nuw nsw i64 %471, 1
  %497 = icmp eq i64 %496, %428
  br i1 %497, label %498, label %470, !prof !204, !llvm.loop !207

498:                                              ; preds = %495, %424, %291, %299
  %499 = icmp eq ptr %295, null
  br i1 %499, label %500, label %291, !prof !197, !llvm.loop !208

500:                                              ; preds = %498, %281
  %501 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %502 = sext i32 %501 to i64
  call void @spec_qsort(ptr noundef nonnull @all_saved_regs, i64 noundef %502, i64 noundef 8, ptr noundef nonnull @saved_hard_reg_compare_func) #18
  %503 = load i32, ptr @save_slots_num, align 4, !tbaa !102
  %504 = sext i32 %503 to i64
  %505 = shl nsw i64 %504, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 16 @save_slots, i64 %505, i1 false), !prof !209
  store i32 0, ptr @save_slots_num, align 4, !tbaa !102
  %506 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %507 = icmp sgt i32 %506, 0
  br i1 %507, label %508, label %676, !prof !138

508:                                              ; preds = %500, %669
  %509 = phi i64 [ %671, %669 ], [ 0, %500 ]
  %510 = phi i32 [ %675, %669 ], [ -1, %500 ]
  %511 = phi i32 [ %672, %669 ], [ %506, %500 ]
  %512 = phi i32 [ %670, %669 ], [ %503, %500 ]
  %513 = add i32 %510, 1
  %514 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %509
  %515 = load ptr, ptr %514, align 8, !tbaa !87
  %516 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 1
  %517 = load i32, ptr %516, align 4, !tbaa !171
  %518 = icmp eq i64 %509, 0
  br i1 %518, label %586, label %519, !prof !123

519:                                              ; preds = %508
  %520 = zext i32 %517 to i64
  br label %521

521:                                              ; preds = %519, %583
  %522 = phi i64 [ 0, %519 ], [ %584, %583 ]
  %523 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !87
  %525 = getelementptr inbounds %struct.saved_hard_reg, ptr %524, i64 0, i32 4
  %526 = load i32, ptr %525, align 8, !tbaa !172
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %583, label %528

528:                                              ; preds = %521
  %529 = load i32, ptr %515, align 8, !tbaa !170
  %530 = mul nsw i32 %529, %511
  %531 = trunc i64 %522 to i32
  br label %532

532:                                              ; preds = %528, %543
  %533 = phi i32 [ %531, %528 ], [ %545, %543 ]
  %534 = zext nneg i32 %533 to i64
  %535 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !87
  %537 = load i32, ptr %536, align 8, !tbaa !170
  %538 = add nsw i32 %530, %537
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i8, ptr %285, i64 %539
  %541 = load i8, ptr %540, align 1, !tbaa !98
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %543, label %583

543:                                              ; preds = %532
  %544 = getelementptr inbounds %struct.saved_hard_reg, ptr %536, i64 0, i32 5
  %545 = load i32, ptr %544, align 4, !tbaa !173
  %546 = icmp sgt i32 %545, -1
  br i1 %546, label %532, label %547, !llvm.loop !210

547:                                              ; preds = %543
  br i1 %542, label %548, label %583

548:                                              ; preds = %547
  %549 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %520, i64 1
  %550 = load i32, ptr %549, align 4, !tbaa !102
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !98
  %554 = getelementptr inbounds %struct.saved_hard_reg, ptr %524, i64 0, i32 1
  %555 = load i32, ptr %554, align 4, !tbaa !171
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %556, i64 1
  %558 = load i32, ptr %557, align 4, !tbaa !102
  %559 = zext i32 %558 to i64
  %560 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !98
  %562 = icmp ugt i8 %553, %561
  br i1 %562, label %583, label %563

563:                                              ; preds = %548
  %564 = trunc i64 %522 to i32
  %565 = getelementptr inbounds %struct.saved_hard_reg, ptr %524, i64 0, i32 3
  %566 = load ptr, ptr %565, align 8, !tbaa !211
  %567 = sext i32 %517 to i64
  %568 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %567, i64 1
  %569 = load i32, ptr %568, align 4, !tbaa !102
  %570 = call ptr @adjust_address_1(ptr noundef %566, i32 noundef %569, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  %571 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 3
  store ptr %570, ptr %571, align 8, !tbaa !211
  %572 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %520, i64 1
  store ptr %570, ptr %572, align 8, !tbaa !87
  %573 = getelementptr inbounds %struct.saved_hard_reg, ptr %524, i64 0, i32 5
  %574 = load i32, ptr %573, align 4, !tbaa !173
  %575 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 5
  store i32 %574, ptr %575, align 4, !tbaa !173
  %576 = trunc i64 %509 to i32
  store i32 %576, ptr %573, align 4, !tbaa !173
  %577 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %578 = icmp eq ptr %577, null
  br i1 %578, label %586, label %579

579:                                              ; preds = %563
  %580 = getelementptr inbounds %struct.saved_hard_reg, ptr %524, i64 0, i32 1
  %581 = load i32, ptr %580, align 4, !tbaa !171
  %582 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %577, ptr noundef nonnull @.str.2, i32 noundef %517, i32 noundef %581)
  br label %586

583:                                              ; preds = %532, %547, %548, %521
  %584 = add nuw nsw i64 %522, 1
  %585 = icmp eq i64 %584, %509
  br i1 %585, label %586, label %521, !prof !123, !llvm.loop !212

586:                                              ; preds = %583, %508, %563, %579
  %587 = phi i32 [ %564, %563 ], [ %564, %579 ], [ 0, %508 ], [ %513, %583 ]
  %588 = zext i32 %587 to i64
  %589 = icmp eq i64 %509, %588
  br i1 %589, label %590, label %669, !prof !149

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 4
  store i32 1, ptr %591, align 8, !tbaa !172
  %592 = zext i32 %517 to i64
  %593 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %592, i64 1
  %594 = icmp sgt i32 %512, 0
  br i1 %594, label %595, label %623, !prof !213

595:                                              ; preds = %590, %618
  %596 = phi i64 [ %621, %618 ], [ 0, %590 ]
  %597 = phi i32 [ %619, %618 ], [ -1, %590 ]
  %598 = getelementptr inbounds [53 x ptr], ptr %4, i64 0, i64 %596
  %599 = load ptr, ptr %598, align 8, !tbaa !87
  %600 = icmp eq ptr %599, null
  br i1 %600, label %618, label %601, !prof !214

601:                                              ; preds = %595
  %602 = load i32, ptr %593, align 4, !tbaa !102
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !98
  %606 = load i32, ptr %599, align 8
  %607 = lshr i32 %606, 16
  %608 = and i32 %607, 255
  %609 = zext nneg i32 %608 to i64
  %610 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !98
  %612 = icmp ule i8 %605, %611
  %613 = icmp slt i32 %597, 0
  %614 = select i1 %612, i1 %613, i1 false, !prof !215
  %615 = trunc i64 %596 to i32
  %616 = select i1 %614, i32 %615, i32 %597, !prof !215
  %617 = icmp eq i32 %608, %602
  br i1 %617, label %623, label %618, !prof !215

618:                                              ; preds = %601, %595
  %619 = phi i32 [ %597, %595 ], [ %616, %601 ]
  %620 = zext nneg i32 %512 to i64
  %621 = add nuw nsw i64 %596, 1
  %622 = icmp eq i64 %621, %620
  br i1 %622, label %623, label %595, !prof !216, !llvm.loop !217

623:                                              ; preds = %618, %601, %590
  %624 = phi i32 [ -1, %590 ], [ %619, %618 ], [ %616, %601 ]
  %625 = icmp sgt i32 %624, -1
  br i1 %625, label %626, label %645, !prof !218

626:                                              ; preds = %623
  %627 = zext nneg i32 %624 to i64
  %628 = getelementptr inbounds [53 x ptr], ptr %4, i64 0, i64 %627
  %629 = load ptr, ptr %628, align 8, !tbaa !87
  %630 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 3
  store ptr %629, ptr %630, align 8, !tbaa !211
  %631 = load i32, ptr %516, align 4, !tbaa !171
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %632, i64 1
  %634 = load i32, ptr %633, align 4, !tbaa !102
  %635 = call ptr @adjust_address_1(ptr noundef %629, i32 noundef %634, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  store ptr %635, ptr %630, align 8, !tbaa !211
  %636 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %637 = icmp eq ptr %636, null
  br i1 %637, label %640, label %638, !prof !215

638:                                              ; preds = %626
  %639 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %636, ptr noundef nonnull @.str.3, i32 noundef %517)
  br label %640

640:                                              ; preds = %638, %626
  store ptr null, ptr %628, align 8, !tbaa !87
  %641 = add nuw nsw i32 %624, 1
  %642 = icmp eq i32 %641, %512
  %643 = sext i1 %642 to i32
  %644 = add nsw i32 %512, %643
  br label %659

645:                                              ; preds = %623
  %646 = zext i32 %517 to i64
  %647 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %646, i64 1
  %648 = load i32, ptr %647, align 4, !tbaa !102
  %649 = zext i32 %648 to i64
  %650 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %649
  %651 = load i8, ptr %650, align 1, !tbaa !98
  %652 = zext i8 %651 to i64
  %653 = call ptr @assign_stack_local_1(i32 noundef %648, i64 noundef %652, i32 noundef 0, i8 noundef zeroext 1) #18
  %654 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 3
  store ptr %653, ptr %654, align 8, !tbaa !211
  %655 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %656 = icmp eq ptr %655, null
  br i1 %656, label %659, label %657, !prof !219

657:                                              ; preds = %645
  %658 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %655, ptr noundef nonnull @.str.4, i32 noundef %517)
  br label %659

659:                                              ; preds = %640, %645, %657
  %660 = phi i32 [ %512, %657 ], [ %512, %645 ], [ %644, %640 ]
  %661 = getelementptr inbounds %struct.saved_hard_reg, ptr %515, i64 0, i32 3
  %662 = load ptr, ptr %661, align 8, !tbaa !211
  %663 = zext i32 %517 to i64
  %664 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %663, i64 1
  store ptr %662, ptr %664, align 8, !tbaa !87
  %665 = load i32, ptr @save_slots_num, align 4, !tbaa !102
  %666 = add nsw i32 %665, 1
  store i32 %666, ptr @save_slots_num, align 4, !tbaa !102
  %667 = sext i32 %665 to i64
  %668 = getelementptr inbounds [53 x ptr], ptr @save_slots, i64 0, i64 %667
  store ptr %662, ptr %668, align 8, !tbaa !87
  br label %669

669:                                              ; preds = %586, %659
  %670 = phi i32 [ %660, %659 ], [ %512, %586 ]
  %671 = add nuw nsw i64 %509, 1
  %672 = load i32, ptr @saved_regs_num, align 4, !tbaa !102
  %673 = sext i32 %672 to i64
  %674 = icmp slt i64 %671, %673
  %675 = add nsw i32 %510, 1
  br i1 %674, label %508, label %676, !prof !150, !llvm.loop !220

676:                                              ; preds = %669, %500
  %677 = phi i32 [ %506, %500 ], [ %672, %669 ]
  call void @free(ptr noundef %285)
  %678 = icmp sgt i32 %677, 0
  br i1 %678, label %679, label %687, !prof !138

679:                                              ; preds = %676
  %680 = zext nneg i32 %677 to i64
  br label %681

681:                                              ; preds = %679, %681
  %682 = phi i64 [ 0, %679 ], [ %685, %681 ]
  %683 = getelementptr inbounds [53 x ptr], ptr @all_saved_regs, i64 0, i64 %682
  %684 = load ptr, ptr %683, align 8, !tbaa !87
  call void @free(ptr noundef %684)
  %685 = add nuw nsw i64 %682, 1
  %686 = icmp eq i64 %685, %680
  br i1 %686, label %687, label %681, !prof !138, !llvm.loop !221

687:                                              ; preds = %681, %676
  call void @llvm.lifetime.end.p0(i64 424, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 424, ptr nonnull %1) #18
  br label %741

688:                                              ; preds = %53, %738
  %689 = phi i64 [ %739, %738 ], [ 0, %53 ]
  %690 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %689, i64 1
  br label %691

691:                                              ; preds = %688, %735
  %692 = phi i64 [ 4, %688 ], [ %736, %735 ]
  %693 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %689, i64 %692
  %694 = load i32, ptr %693, align 4, !tbaa !102
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %735, label %696

696:                                              ; preds = %691
  %697 = load ptr, ptr %690, align 8, !tbaa !87
  %698 = icmp eq ptr %697, null
  br i1 %698, label %702, label %735

699:                                              ; preds = %702
  %700 = add nuw nsw i64 %703, 1
  %701 = icmp eq i64 %700, %692
  br i1 %701, label %711, label %702, !llvm.loop !222

702:                                              ; preds = %696, %699
  %703 = phi i64 [ %700, %699 ], [ 0, %696 ]
  %704 = add nuw nsw i64 %703, %689
  %705 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %704, i64 1
  %706 = load ptr, ptr %705, align 8, !tbaa !87
  %707 = icmp eq ptr %706, null
  br i1 %707, label %699, label %735

708:                                              ; preds = %711
  %709 = add nuw nsw i64 %712, 1
  %710 = icmp eq i64 %709, %692
  br i1 %710, label %717, label %711, !llvm.loop !223

711:                                              ; preds = %699, %708
  %712 = phi i64 [ %709, %708 ], [ 0, %699 ]
  %713 = add nuw nsw i64 %712, %689
  %714 = shl nuw i64 1, %713
  %715 = and i64 %714, %54
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %735, label %708

717:                                              ; preds = %708
  %718 = zext i32 %694 to i64
  %719 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %718
  %720 = load i8, ptr %719, align 1, !tbaa !98
  %721 = zext i8 %720 to i64
  %722 = tail call ptr @assign_stack_local_1(i32 noundef %694, i64 noundef %721, i32 noundef 0, i8 noundef zeroext 1) #18
  %723 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %689, i64 %692
  store ptr %722, ptr %723, align 8, !tbaa !87
  br label %724

724:                                              ; preds = %717, %724
  %725 = phi i64 [ 0, %717 ], [ %733, %724 ]
  %726 = load ptr, ptr %723, align 8, !tbaa !87
  %727 = add nuw nsw i64 %725, %689
  %728 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %727, i64 1
  %729 = load i32, ptr %728, align 4, !tbaa !102
  %730 = shl nsw i64 %725, 2
  %731 = tail call ptr @adjust_address_1(ptr noundef %726, i32 noundef %729, i64 noundef %730, i32 noundef 0, i32 noundef 1) #18
  %732 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %727, i64 1
  store ptr %731, ptr %732, align 8, !tbaa !87
  %733 = add nuw nsw i64 %725, 1
  %734 = icmp eq i64 %733, %692
  br i1 %734, label %735, label %724, !llvm.loop !224

735:                                              ; preds = %702, %711, %724, %691, %696
  %736 = add nsw i64 %692, -1
  %737 = icmp ugt i64 %692, 1
  br i1 %737, label %691, label %738, !llvm.loop !225

738:                                              ; preds = %735
  %739 = add nuw nsw i64 %689, 1
  %740 = icmp eq i64 %739, 53
  br i1 %740, label %741, label %688, !llvm.loop !226

741:                                              ; preds = %738, %687
  br label %742

742:                                              ; preds = %741, %754
  %743 = phi i64 [ %755, %754 ], [ 0, %741 ]
  br label %744

744:                                              ; preds = %742, %751
  %745 = phi i64 [ 4, %742 ], [ %752, %751 ]
  %746 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %743, i64 %745
  %747 = load ptr, ptr %746, align 8, !tbaa !87
  %748 = icmp eq ptr %747, null
  br i1 %748, label %751, label %749, !prof !227

749:                                              ; preds = %744
  %750 = call i32 @get_frame_alias_set() #18
  call void @set_mem_alias_set(ptr noundef nonnull %747, i32 noundef %750) #18
  br label %751

751:                                              ; preds = %744, %749
  %752 = add nsw i64 %745, -1
  %753 = icmp ugt i64 %745, 1
  br i1 %753, label %744, label %754, !prof !228, !llvm.loop !229

754:                                              ; preds = %751
  %755 = add nuw nsw i64 %743, 1
  %756 = icmp eq i64 %755, 53
  br i1 %756, label %757, label %742, !prof !230, !llvm.loop !231

757:                                              ; preds = %754
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @mark_set_regs(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #9 !prof !232 !PGOFuncName !233 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %52 [
    i16 39, label %6
    i16 37, label %24
  ], !prof !234

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !98
  %15 = icmp ugt i32 %14, 52
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #18
  %18 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #18
  %19 = add i32 %18, %17
  br label %20

20:                                               ; preds = %6, %12, %16
  %21 = phi i32 [ %19, %16 ], [ undef, %12 ], [ undef, %6 ]
  %22 = phi i32 [ %17, %16 ], [ undef, %12 ], [ undef, %6 ]
  %23 = phi i1 [ true, %16 ], [ false, %12 ], [ false, %6 ]
  br i1 %23, label %37, label %52

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !98
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %52, !prof !235

28:                                               ; preds = %24
  %29 = lshr i32 %4, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %26 to i64
  %32 = zext nneg i32 %30 to i64
  %33 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !98
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %26, %35
  br label %37

37:                                               ; preds = %20, %28
  %38 = phi i32 [ %21, %20 ], [ %36, %28 ]
  %39 = phi i32 [ %22, %20 ], [ %26, %28 ]
  %40 = icmp slt i32 %39, %38
  br i1 %40, label %41, label %52, !prof !236

41:                                               ; preds = %37
  %42 = load i64, ptr %2, align 8, !tbaa !108
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %42, %41 ], [ %48, %43 ]
  %45 = phi i32 [ %39, %41 ], [ %49, %43 ]
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = or i64 %44, %47
  %49 = add nsw i32 %45, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %51, label %43, !prof !236, !llvm.loop !237

51:                                               ; preds = %43
  store i64 %48, ptr %2, align 8, !tbaa !108
  br label %52

52:                                               ; preds = %37, %51, %24, %3, %20
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @saved_hard_reg_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !87
  %5 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !102
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !168
  %12 = sub nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.saved_hard_reg, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !168
  %17 = getelementptr inbounds %struct.saved_hard_reg, ptr %3, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !168
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %7
  %22 = load i32, ptr %3, align 8, !tbaa !170
  %23 = load i32, ptr %4, align 8, !tbaa !170
  %24 = sub nsw i32 %22, %23
  br label %25

25:                                               ; preds = %14, %7, %21
  %26 = phi i32 [ %24, %21 ], [ %12, %7 ], [ %19, %14 ]
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @assign_stack_local_1(i32 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_frame_alias_set() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @save_call_clobbered_regs() local_unnamed_addr #9 !prof !238 {
  %1 = alloca [53 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 0, ptr @hard_regs_saved, align 8, !tbaa !108
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !102
  %4 = load ptr, ptr @reload_insn_chain, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %467, label %6, !prof !239

6:                                                ; preds = %0, %464
  %7 = phi ptr [ %13, %464 ], [ %4, %0 ]
  %8 = phi ptr [ %465, %464 ], [ null, %0 ]
  %9 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !151
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = load ptr, ptr %7, align 8, !tbaa !154
  %14 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18, !prof !240

18:                                               ; preds = %6
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 787, ptr noundef nonnull @.str.1) #18
  br label %19

19:                                               ; preds = %6, %18
  %20 = load i32, ptr %10, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -11
  %23 = icmp ult i32 %22, -3
  br i1 %23, label %376, label %24, !prof !241

24:                                               ; preds = %19
  %25 = load i32, ptr @n_regs_saved, align 4, !tbaa !102
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %52, label %27, !prof !242

27:                                               ; preds = %24
  %28 = icmp eq i32 %12, 9
  br i1 %28, label %29, label %31, !prof !243

29:                                               ; preds = %27
  %30 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  br label %36

31:                                               ; preds = %27
  store i64 0, ptr @referenced_regs, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %32, ptr noundef nonnull @mark_reg_as_referenced, ptr noundef null)
  %33 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %34 = load i64, ptr @referenced_regs, align 8, !tbaa !108
  %35 = and i64 %34, %33
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i64 [ %35, %31 ], [ %30, %29 ]
  store i64 %37, ptr @referenced_regs, align 8, !tbaa !108
  br label %38

38:                                               ; preds = %36, %48
  %39 = phi i32 [ 0, %36 ], [ %50, %48 ]
  %40 = load i64, ptr @referenced_regs, align 8, !tbaa !108
  %41 = zext nneg i32 %39 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %40, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45, !prof !244

45:                                               ; preds = %38
  %46 = call fastcc i32 @insert_restore(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %39, ptr noundef nonnull %1)
  %47 = add nsw i32 %46, %39
  br label %48

48:                                               ; preds = %38, %45
  %49 = phi i32 [ %47, %45 ], [ %39, %38 ]
  %50 = add nsw i32 %49, 1
  %51 = icmp slt i32 %49, 52
  br i1 %51, label %38, label %52, !prof !245, !llvm.loop !246

52:                                               ; preds = %48, %24
  %53 = icmp eq i32 %12, 10
  br i1 %53, label %54, label %383, !prof !247

54:                                               ; preds = %52
  %55 = load i32, ptr %10, align 8
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %383, !prof !248

58:                                               ; preds = %54
  %59 = call ptr @find_reg_note(ptr noundef nonnull %10, i32 noundef 27, ptr noundef null) #18
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %383, !prof !249

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %3, ptr noundef nonnull %62) #18
  %63 = load i64, ptr %3, align 8, !tbaa !108
  br label %64

64:                                               ; preds = %61, %72
  %65 = phi i64 [ 0, %61 ], [ %75, %72 ]
  %66 = shl nuw nsw i64 1, %65
  %67 = and i64 %63, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69, !prof !250

69:                                               ; preds = %64
  %70 = getelementptr inbounds [53 x [5 x i32]], ptr @regno_save_mode, i64 0, i64 %65, i64 1
  %71 = load i32, ptr %70, align 4, !tbaa !102
  br label %72

72:                                               ; preds = %64, %69
  %73 = phi i32 [ %71, %69 ], [ 0, %64 ]
  %74 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %65
  store i32 %73, ptr %74, align 4, !tbaa !102
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, 53
  br i1 %76, label %77, label %64, !prof !251, !llvm.loop !252

77:                                               ; preds = %72
  %78 = load ptr, ptr %62, align 8, !tbaa !176
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr @bitmap_zero_bits, ptr %78, !prof !253
  %81 = getelementptr inbounds %struct.bitmap_element_def, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !177
  %83 = icmp eq i32 %82, 0
  %84 = shl i32 %82, 7
  %85 = select i1 %83, i32 53, i32 %84, !prof !254
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %80, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !108
  %88 = and i32 %85, 53
  %89 = zext nneg i32 %88 to i64
  %90 = lshr i64 %87, %89
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = add nuw nsw i32 %85, %92
  br label %94

94:                                               ; preds = %220, %77
  %95 = phi i64 [ %90, %77 ], [ %221, %220 ]
  %96 = phi i32 [ 0, %77 ], [ %151, %220 ]
  %97 = phi i32 [ %93, %77 ], [ %222, %220 ]
  %98 = phi ptr [ %80, %77 ], [ %153, %220 ]
  %99 = icmp eq i64 %95, 0
  br i1 %99, label %114, label %100, !prof !255

100:                                              ; preds = %128, %94
  %101 = phi i64 [ %95, %94 ], [ %133, %128 ]
  %102 = phi i32 [ %96, %94 ], [ %129, %128 ]
  %103 = phi i32 [ %97, %94 ], [ %130, %128 ]
  %104 = phi ptr [ %98, %94 ], [ %121, %128 ]
  %105 = and i64 %101, 1
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %149, !prof !256

107:                                              ; preds = %100, %107
  %108 = phi i32 [ %111, %107 ], [ %103, %100 ]
  %109 = phi i64 [ %110, %107 ], [ %101, %100 ]
  %110 = lshr exact i64 %109, 1
  %111 = add i32 %108, 1
  %112 = and i64 %109, 2
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %107, label %149, !prof !257, !llvm.loop !182

114:                                              ; preds = %94
  %115 = add i32 %97, 63
  %116 = and i32 %115, -64
  %117 = add i32 %96, 1
  br label %118

118:                                              ; preds = %145, %114
  %119 = phi i64 [ %95, %114 ], [ %140, %145 ]
  %120 = phi i32 [ %116, %114 ], [ %148, %145 ]
  %121 = phi ptr [ %98, %114 ], [ %143, %145 ]
  %122 = phi i32 [ %117, %114 ], [ 0, %145 ]
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %139, label %124, !prof !258

124:                                              ; preds = %118
  %125 = add i32 %120, 128
  %126 = shl i32 %122, 6
  %127 = sub i32 %125, %126
  br label %128

128:                                              ; preds = %124, %135
  %129 = phi i32 [ %137, %135 ], [ %122, %124 ]
  %130 = phi i32 [ %136, %135 ], [ %120, %124 ]
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds %struct.bitmap_element_def, ptr %121, i64 0, i32 3, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !108
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %100, !prof !259

135:                                              ; preds = %128
  %136 = add i32 %130, 64
  %137 = add i32 %129, 1
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %128, !prof !260, !llvm.loop !186

139:                                              ; preds = %135, %118
  %140 = phi i64 [ %119, %118 ], [ %133, %135 ]
  %141 = phi i32 [ %120, %118 ], [ %127, %135 ]
  %142 = phi i32 [ %122, %118 ], [ 2, %135 ]
  %143 = load ptr, ptr %121, align 8, !tbaa !187
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145, !prof !261

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.bitmap_element_def, ptr %143, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !177
  %148 = shl i32 %147, 7
  br label %118, !llvm.loop !189

149:                                              ; preds = %139, %107, %100
  %150 = phi i64 [ %101, %100 ], [ %110, %107 ], [ %140, %139 ]
  %151 = phi i32 [ %102, %100 ], [ %102, %107 ], [ %142, %139 ]
  %152 = phi i32 [ %103, %100 ], [ %111, %107 ], [ %141, %139 ]
  %153 = phi ptr [ %104, %100 ], [ %104, %107 ], [ %143, %139 ]
  %154 = phi i1 [ false, %100 ], [ false, %107 ], [ true, %139 ]
  br i1 %154, label %223, label %155, !prof !262

155:                                              ; preds = %149
  %156 = load ptr, ptr @reg_renumber, align 8, !tbaa !87
  %157 = zext i32 %152 to i64
  %158 = getelementptr inbounds i16, ptr %156, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !139
  %160 = sext i16 %159 to i32
  %161 = icmp slt i16 %159, 0
  br i1 %161, label %220, label %162, !prof !263

162:                                              ; preds = %155
  %163 = zext nneg i32 %160 to i64
  %164 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %165 = getelementptr inbounds ptr, ptr %164, i64 %157
  %166 = load ptr, ptr %165, align 8, !tbaa !87
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %163, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !98
  %173 = zext i8 %172 to i32
  %174 = add nsw i16 %159, -17
  %175 = icmp ult i16 %174, 2
  br i1 %175, label %193, label %176, !prof !264

176:                                              ; preds = %162
  %177 = icmp eq i32 %169, 0
  %178 = icmp ne i8 %172, 1
  %179 = select i1 %177, i1 %178, i1 false, !prof !264
  br i1 %179, label %193, label %180, !prof !264

180:                                              ; preds = %176
  br i1 %177, label %181, label %183, !prof !264

181:                                              ; preds = %180
  %182 = call i32 @choose_hard_reg_mode(i32 noundef %160, i32 noundef %173, i8 noundef zeroext 0) #18
  br label %193

183:                                              ; preds = %180
  %184 = icmp ne i32 %169, 15
  %185 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 9), align 1
  %186 = icmp ne i8 %185, 0
  %187 = select i1 %184, i1 true, i1 %186, !prof !265
  br i1 %187, label %188, label %193, !prof !265

188:                                              ; preds = %183
  %189 = icmp eq i32 %169, 14
  %190 = icmp sgt i16 %159, 3
  %191 = and i1 %190, %189
  %192 = select i1 %191, i32 16, i32 %169, !prof !264
  br label %193

193:                                              ; preds = %188, %176, %183, %181, %162
  %194 = phi i32 [ 0, %162 ], [ 0, %176 ], [ %182, %181 ], [ 16, %183 ], [ %192, %188 ]
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !98
  %198 = getelementptr inbounds [53 x i32], ptr %1, i64 0, i64 %163
  %199 = load i32, ptr %198, align 4, !tbaa !102
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !98
  %203 = icmp ugt i8 %197, %202
  br i1 %203, label %204, label %205, !prof !265

204:                                              ; preds = %193
  store i32 %194, ptr %198, align 4, !tbaa !102
  br label %205

205:                                              ; preds = %204, %193
  %206 = icmp eq i8 %172, 0
  br i1 %206, label %220, label %207, !prof !266

207:                                              ; preds = %205
  %208 = load i64, ptr %3, align 8, !tbaa !108
  %209 = zext i8 %172 to i64
  %210 = zext nneg i16 %159 to i64
  br label %211

211:                                              ; preds = %207, %211
  %212 = phi i64 [ %209, %207 ], [ %214, %211 ]
  %213 = phi i64 [ %208, %207 ], [ %217, %211 ]
  %214 = add nsw i64 %212, -1
  %215 = add nsw i64 %214, %210
  %216 = shl nuw i64 1, %215
  %217 = or i64 %213, %216
  %218 = icmp sgt i64 %212, 1
  br i1 %218, label %211, label %219, !prof !266, !llvm.loop !267

219:                                              ; preds = %211
  store i64 %217, ptr %3, align 8, !tbaa !108
  br label %220

220:                                              ; preds = %205, %219, %155
  %221 = lshr i64 %150, 1
  %222 = add i32 %152, 1
  br label %94, !llvm.loop !268

223:                                              ; preds = %149
  store i64 0, ptr %2, align 8, !tbaa !108
  %224 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !98
  call void @note_stores(ptr noundef %225, ptr noundef nonnull @mark_set_regs, ptr noundef nonnull %2) #18
  %226 = load i64, ptr @call_fixed_reg_set, align 8, !tbaa !108
  %227 = xor i64 %226, -1
  %228 = load i64, ptr %3, align 8, !tbaa !108
  %229 = and i64 %228, %227
  store i64 %229, ptr %3, align 8, !tbaa !108
  %230 = load i64, ptr %2, align 8, !tbaa !108
  %231 = xor i64 %230, -1
  %232 = and i64 %229, %231
  store i64 %232, ptr %3, align 8, !tbaa !108
  %233 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %234 = xor i64 %233, -1
  %235 = and i64 %232, %234
  store i64 %235, ptr %3, align 8, !tbaa !108
  %236 = load i64, ptr @call_used_reg_set, align 8, !tbaa !108
  %237 = and i64 %236, %235
  store i64 %237, ptr %3, align 8, !tbaa !108
  br label %238

238:                                              ; preds = %223, %357
  %239 = phi i32 [ 0, %223 ], [ %359, %357 ]
  %240 = load i64, ptr %3, align 8, !tbaa !108
  %241 = zext nneg i32 %239 to i64
  %242 = shl nuw nsw i64 1, %241
  %243 = and i64 %240, %242
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %357, label %245, !prof !269

245:                                              ; preds = %238
  %246 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %241, i64 1
  %247 = load ptr, ptr %246, align 8, !tbaa !87
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %250, !prof !270

249:                                              ; preds = %245
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1267, ptr noundef nonnull @.str.1) #18
  br label %250

250:                                              ; preds = %249, %245
  %251 = load i64, ptr %3, align 8
  %252 = zext nneg i32 %239 to i64
  br label %253

253:                                              ; preds = %270, %250
  %254 = phi i64 [ %273, %270 ], [ 4, %250 ]
  %255 = phi i32 [ %271, %270 ], [ 0, %250 ]
  %256 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %241, i64 %254
  %257 = load ptr, ptr %256, align 8, !tbaa !87
  %258 = icmp eq ptr %257, null
  br i1 %258, label %270, label %259, !prof !271

259:                                              ; preds = %253
  %260 = trunc i64 %254 to i32
  br label %264

261:                                              ; preds = %264
  %262 = add nuw nsw i64 %265, 1
  %263 = icmp eq i64 %262, %254
  br i1 %263, label %270, label %264, !prof !272, !llvm.loop !273

264:                                              ; preds = %259, %261
  %265 = phi i64 [ 0, %259 ], [ %262, %261 ]
  %266 = add nuw nsw i64 %265, %252
  %267 = shl nuw i64 1, %266
  %268 = and i64 %251, %267
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %261, !prof !270

270:                                              ; preds = %264, %261, %253
  %271 = phi i32 [ %255, %253 ], [ %260, %261 ], [ %255, %264 ]
  %272 = phi i1 [ true, %253 ], [ %269, %261 ], [ %269, %264 ]
  %273 = add nsw i64 %254, -1
  %274 = icmp ugt i64 %254, 1
  %275 = and i1 %272, %274
  br i1 %275, label %253, label %276, !prof !274, !llvm.loop !275

276:                                              ; preds = %270
  %277 = zext nneg i32 %271 to i64
  %278 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %241, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !87
  %280 = getelementptr inbounds i32, ptr %1, i64 %241
  %281 = load i32, ptr %280, align 4, !tbaa !102
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %300, label %283, !prof !270

283:                                              ; preds = %276
  %284 = load i32, ptr %279, align 8
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = icmp eq i32 %281, %286
  br i1 %287, label %300, label %288, !prof !276

288:                                              ; preds = %283
  %289 = zext i32 %281 to i64
  %290 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %241, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !98
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %271, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = call fastcc i32 @reg_save_code(i32 noundef %239, i32 noundef %281)
  %296 = icmp sgt i32 %295, -1
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load i32, ptr %280, align 4, !tbaa !102
  %299 = call ptr @adjust_address_1(ptr noundef nonnull %279, i32 noundef %298, i64 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %302

300:                                              ; preds = %294, %288, %283, %276
  %301 = call ptr @copy_rtx(ptr noundef %279) #18
  br label %302

302:                                              ; preds = %300, %297
  %303 = phi ptr [ %299, %297 ], [ %301, %300 ]
  %304 = load i32, ptr %303, align 8
  %305 = lshr i32 %304, 16
  %306 = and i32 %305, 255
  %307 = call i32 @get_mode_alignment(i32 noundef %306) #18
  %308 = icmp ugt i32 %307, -2147483648
  br i1 %308, label %314, label %309, !prof !270

309:                                              ; preds = %302
  %310 = load i32, ptr %303, align 8
  %311 = lshr i32 %310, 16
  %312 = and i32 %311, 255
  %313 = call i32 @get_mode_alignment(i32 noundef %312) #18
  br label %314

314:                                              ; preds = %309, %302
  %315 = phi i32 [ %313, %309 ], [ -2147483648, %302 ]
  %316 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !98
  %318 = icmp eq ptr %317, null
  br i1 %318, label %322, label %319, !prof !270

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.mem_attrs, ptr %317, i64 0, i32 4
  %321 = load i32, ptr %320, align 4, !tbaa !277
  br label %322

322:                                              ; preds = %319, %314
  %323 = phi i32 [ %321, %319 ], [ 8, %314 ]
  %324 = icmp ugt i32 %315, %323
  br i1 %324, label %325, label %326, !prof !270

325:                                              ; preds = %322
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.1) #18
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i32, ptr %303, align 8
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  %330 = call ptr @gen_rtx_REG(i32 noundef %329, i32 noundef %239) #18
  %331 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %303, ptr noundef %330) #18
  %332 = load i32, ptr %303, align 8
  %333 = lshr i32 %332, 16
  %334 = and i32 %333, 255
  %335 = call fastcc i32 @reg_save_code(i32 noundef %239, i32 noundef %334)
  %336 = call fastcc ptr @insert_one_insn(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %335, ptr noundef %331)
  %337 = icmp eq i32 %271, 0
  br i1 %337, label %354, label %338, !prof !279

338:                                              ; preds = %326
  %339 = getelementptr inbounds %struct.insn_chain, ptr %336, i64 0, i32 7
  %340 = zext nneg i32 %239 to i64
  %341 = zext i32 %271 to i64
  br label %342

342:                                              ; preds = %338, %342
  %343 = phi i64 [ 0, %338 ], [ %352, %342 ]
  %344 = add nuw nsw i64 %343, %340
  %345 = shl nuw i64 1, %344
  %346 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %347 = or i64 %346, %345
  store i64 %347, ptr @hard_regs_saved, align 8, !tbaa !108
  %348 = trunc i64 %344 to i32
  %349 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %339, i32 noundef %348) #18
  %350 = load i32, ptr @n_regs_saved, align 4, !tbaa !102
  %351 = add nsw i32 %350, 1
  store i32 %351, ptr @n_regs_saved, align 4, !tbaa !102
  %352 = add nuw nsw i64 %343, 1
  %353 = icmp eq i64 %352, %341
  br i1 %353, label %354, label %342, !prof !272, !llvm.loop !280

354:                                              ; preds = %342, %326
  %355 = add nsw i32 %239, -1
  %356 = add i32 %355, %271
  br label %357

357:                                              ; preds = %238, %354
  %358 = phi i32 [ %239, %238 ], [ %356, %354 ]
  %359 = add i32 %358, 1
  %360 = icmp ult i32 %359, 53
  br i1 %360, label %238, label %361, !prof !250, !llvm.loop !281

361:                                              ; preds = %357
  store i32 0, ptr @n_regs_saved, align 4, !tbaa !102
  %362 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  br label %363

363:                                              ; preds = %361, %371
  %364 = phi i64 [ 0, %361 ], [ %373, %371 ]
  %365 = phi i32 [ 0, %361 ], [ %372, %371 ]
  %366 = shl nuw nsw i64 1, %364
  %367 = and i64 %362, %366
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %371, label %369, !prof !282

369:                                              ; preds = %363
  %370 = add nsw i32 %365, 1
  store i32 %370, ptr @n_regs_saved, align 4, !tbaa !102
  br label %371

371:                                              ; preds = %363, %369
  %372 = phi i32 [ %365, %363 ], [ %370, %369 ]
  %373 = add nuw nsw i64 %364, 1
  %374 = icmp eq i64 %373, 53
  br i1 %374, label %375, label %363, !prof !251, !llvm.loop !283

375:                                              ; preds = %371
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %383

376:                                              ; preds = %19
  %377 = icmp eq i32 %21, 7
  %378 = load i32, ptr @n_regs_saved, align 4
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %377, i1 %379, i1 false, !prof !284
  br i1 %380, label %381, label %383, !prof !284

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  call fastcc void @mark_referenced_regs(ptr noundef nonnull %382, ptr noundef nonnull @replace_reg_with_saved_mem, ptr noundef nonnull %1)
  br label %383

383:                                              ; preds = %52, %54, %58, %375, %376, %381
  %384 = phi ptr [ %8, %381 ], [ %8, %376 ], [ %7, %375 ], [ %7, %58 ], [ %7, %54 ], [ %7, %52 ]
  %385 = load ptr, ptr %7, align 8, !tbaa !154
  %386 = icmp eq ptr %385, null
  br i1 %386, label %393, label %387, !prof !285

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.insn_chain, ptr %385, i64 0, i32 4
  %389 = load i32, ptr %388, align 8, !tbaa !286
  %390 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 4
  %391 = load i32, ptr %390, align 8, !tbaa !286
  %392 = icmp eq i32 %389, %391
  br i1 %392, label %464, label %393, !prof !287

393:                                              ; preds = %387, %383
  %394 = load i32, ptr %10, align 8
  %395 = and i32 %394, 65535
  %396 = icmp eq i32 %395, 7
  %397 = icmp ne ptr %384, null
  %398 = select i1 %396, i1 %397, i1 false, !prof !288
  br i1 %398, label %399, label %443, !prof !288

399:                                              ; preds = %393
  %400 = getelementptr inbounds %struct.insn_chain, ptr %384, i64 0, i32 4
  %401 = load i32, ptr %400, align 8, !tbaa !286
  %402 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 4
  %403 = load i32, ptr %402, align 8, !tbaa !286
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %443

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !98
  %408 = getelementptr inbounds %struct.insn_chain, ptr %384, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !151
  %410 = icmp eq ptr %407, %409
  br i1 %410, label %443, label %411

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !98
  %414 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %415 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 7
  br label %416

416:                                              ; preds = %411, %440
  %417 = phi ptr [ %407, %411 ], [ %419, %440 ]
  %418 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1, i32 0, i32 0, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !98
  %420 = load i32, ptr %417, align 8
  %421 = trunc i32 %420 to i16
  switch i16 %421, label %439 [
    i16 13, label %422
    i16 7, label %440
  ]

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1, i32 0, i32 0, i64 2
  %424 = load ptr, ptr %423, align 8, !tbaa !98
  %425 = getelementptr inbounds %struct.rtx_def, ptr %419, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %424, ptr %425, align 8, !tbaa !98
  %426 = load ptr, ptr %423, align 8, !tbaa !98
  %427 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %419, ptr %427, align 8, !tbaa !98
  store ptr %10, ptr %418, align 8, !tbaa !98
  %428 = load ptr, ptr %414, align 8, !tbaa !98
  store ptr %428, ptr %423, align 8, !tbaa !98
  store ptr %417, ptr %414, align 8, !tbaa !98
  %429 = load ptr, ptr %423, align 8, !tbaa !98
  %430 = icmp eq ptr %429, null
  br i1 %430, label %433, label %431

431:                                              ; preds = %422
  %432 = getelementptr inbounds %struct.rtx_def, ptr %429, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %417, ptr %432, align 8, !tbaa !98
  br label %433

433:                                              ; preds = %431, %422
  %434 = load ptr, ptr %415, align 8, !tbaa !98
  %435 = getelementptr inbounds %struct.rtl_bb_info, ptr %434, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !289
  %437 = icmp eq ptr %436, %10
  br i1 %437, label %438, label %440

438:                                              ; preds = %433
  store ptr %417, ptr %435, align 8, !tbaa !289
  br label %440

439:                                              ; preds = %416
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 916, ptr noundef nonnull @.str.1) #18
  br label %440

440:                                              ; preds = %416, %439, %438, %433
  %441 = load ptr, ptr %408, align 8, !tbaa !151
  %442 = icmp eq ptr %419, %441
  br i1 %442, label %443, label %416, !llvm.loop !291

443:                                              ; preds = %440, %405, %399, %393
  %444 = load i32, ptr @n_regs_saved, align 4, !tbaa !102
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %464, label %446, !prof !292

446:                                              ; preds = %443, %460
  %447 = phi i32 [ %462, %460 ], [ 0, %443 ]
  %448 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %449 = zext nneg i32 %447 to i64
  %450 = shl nuw i64 1, %449
  %451 = and i64 %448, %450
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %460, label %453

453:                                              ; preds = %446
  %454 = load i32, ptr %10, align 8
  %455 = and i32 %454, 65535
  %456 = icmp eq i32 %455, 9
  %457 = zext i1 %456 to i32
  %458 = call fastcc i32 @insert_restore(ptr noundef nonnull %7, i32 noundef %457, i32 noundef %447, ptr noundef nonnull %1)
  %459 = add nsw i32 %458, %447
  br label %460

460:                                              ; preds = %446, %453
  %461 = phi i32 [ %459, %453 ], [ %447, %446 ]
  %462 = add nsw i32 %461, 1
  %463 = icmp slt i32 %461, 52
  br i1 %463, label %446, label %464, !llvm.loop !293

464:                                              ; preds = %460, %443, %387
  %465 = phi ptr [ %384, %387 ], [ null, %443 ], [ null, %460 ]
  %466 = icmp eq ptr %13, null
  br i1 %466, label %467, label %6, !prof !294, !llvm.loop !295

467:                                              ; preds = %464, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_referenced_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !296 !PGOFuncName !297 {
  br label %4

4:                                                ; preds = %94, %92, %3
  %5 = phi ptr [ %0, %3 ], [ %93, %92 ], [ %96, %94 ]
  %6 = phi ptr [ %2, %3 ], [ null, %92 ], [ null, %94 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !87
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %52 [
    i16 23, label %11
    i16 25, label %13
  ], !prof !298

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %6)
  br label %13

13:                                               ; preds = %11, %4
  %14 = load ptr, ptr %5, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = trunc i32 %17 to i16
  switch i16 %19, label %52 [
    i16 37, label %20
    i16 36, label %137
    i16 46, label %137
    i16 39, label %28
  ], !prof !299

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !98
  %23 = icmp ult i32 %22, 53
  %24 = icmp eq i32 %18, 46
  %25 = or i1 %24, %23
  br i1 %25, label %137, label %26, !prof !300

26:                                               ; preds = %20
  %27 = icmp eq i32 %18, 39
  br i1 %27, label %28, label %52, !prof !301

28:                                               ; preds = %13, %26
  %29 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !98
  %37 = icmp ult i32 %36, 53
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = lshr i32 %17, 16
  %40 = and i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !98
  %44 = lshr i32 %31, 16
  %45 = and i32 %44, 255
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !98
  %49 = icmp uge i8 %43, %48
  %50 = icmp ult i8 %48, 5
  %51 = or i1 %49, %50
  br i1 %51, label %137, label %52

52:                                               ; preds = %38, %28, %26, %13, %4, %34
  %53 = phi i32 [ 39, %34 ], [ %9, %4 ], [ %18, %13 ], [ %18, %26 ], [ 39, %28 ], [ 39, %38 ]
  %54 = phi ptr [ %15, %34 ], [ %5, %4 ], [ %15, %13 ], [ %15, %26 ], [ %15, %28 ], [ %15, %38 ]
  %55 = trunc i32 %53 to i16
  switch i16 %55, label %62 [
    i16 43, label %56
    i16 39, label %56
  ], !prof !302

56:                                               ; preds = %52, %52
  %57 = load ptr, ptr %54, align 8, !tbaa !87
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !87
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  br label %62

62:                                               ; preds = %52, %56
  %63 = phi i32 [ %61, %56 ], [ %53, %52 ]
  %64 = phi ptr [ %58, %56 ], [ %54, %52 ]
  %65 = icmp eq i32 %63, 37
  br i1 %65, label %66, label %99, !prof !303

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !87
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !98
  %70 = icmp slt i32 %69, 53
  br i1 %70, label %77, label %71, !prof !304

71:                                               ; preds = %66
  %72 = load ptr, ptr @reg_renumber, align 8, !tbaa !87
  %73 = zext nneg i32 %69 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !139
  %76 = sext i16 %75 to i32
  br label %77

77:                                               ; preds = %66, %71
  %78 = phi i32 [ %76, %71 ], [ %69, %66 ]
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %84, !prof !304

80:                                               ; preds = %77
  %81 = load i32, ptr %67, align 8
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  tail call void %1(ptr noundef nonnull %64, i32 noundef %83, i32 noundef %78, ptr noundef %6) #18, !prof !305, !callees !306
  br label %137

84:                                               ; preds = %77
  %85 = icmp eq ptr %6, null
  br i1 %85, label %86, label %137, !prof !307

86:                                               ; preds = %84
  %87 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !87
  %88 = sext i32 %69 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !87
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92, !prof !301

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  br label %4

94:                                               ; preds = %86
  %95 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !87
  %96 = getelementptr inbounds ptr, ptr %95, i64 %88
  %97 = load ptr, ptr %96, align 8, !tbaa !87
  %98 = icmp eq ptr %97, null
  br i1 %98, label %137, label %4

99:                                               ; preds = %62
  %100 = zext nneg i32 %63 to i64
  %101 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  %103 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %100
  %104 = load i8, ptr %103, align 1, !tbaa !98
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %137, label %106, !prof !308

106:                                              ; preds = %99
  %107 = zext i8 %104 to i64
  br label %108

108:                                              ; preds = %106, %135
  %109 = phi i64 [ %107, %106 ], [ %110, %135 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds i8, ptr %102, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !98
  switch i8 %112, label %135 [
    i8 101, label %113
    i8 69, label %117
  ], !prof !309

113:                                              ; preds = %108
  %114 = load ptr, ptr %64, align 8, !tbaa !87
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = getelementptr inbounds [1 x %union.rtunion_def], ptr %115, i64 0, i64 %110
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %116, ptr noundef %1, ptr noundef %6)
  br label %135

117:                                              ; preds = %108
  %118 = load ptr, ptr %64, align 8, !tbaa !87
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %120 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %110
  %121 = load ptr, ptr %120, align 8, !tbaa !98
  %122 = load i32, ptr %121, align 8, !tbaa !310
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = zext nneg i32 %122 to i64
  br label %126

126:                                              ; preds = %124, %126
  %127 = phi i64 [ %125, %124 ], [ %128, %126 ]
  %128 = add nsw i64 %127, -1
  %129 = load ptr, ptr %64, align 8, !tbaa !87
  %130 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1
  %131 = getelementptr inbounds [1 x %union.rtunion_def], ptr %130, i64 0, i64 %110
  %132 = load ptr, ptr %131, align 8, !tbaa !98
  %133 = getelementptr inbounds %struct.rtvec_def, ptr %132, i64 0, i32 1, i64 %128
  tail call fastcc void @mark_referenced_regs(ptr noundef nonnull %133, ptr noundef %1, ptr noundef %6)
  %134 = icmp sgt i64 %127, 1
  br i1 %134, label %126, label %135, !llvm.loop !312

135:                                              ; preds = %126, %117, %108, %113
  %136 = icmp sgt i64 %109, 1
  br i1 %136, label %108, label %137, !prof !313, !llvm.loop !314

137:                                              ; preds = %135, %99, %13, %84, %94, %80, %20, %38, %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @mark_reg_as_referenced(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #15 !prof !315 !PGOFuncName !316 {
  %5 = zext i32 %2 to i64
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !98
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, %2
  %11 = load i64, ptr @referenced_regs, align 8, !tbaa !108
  br label %12

12:                                               ; preds = %12, %4
  %13 = phi i64 [ %11, %4 ], [ %17, %12 ]
  %14 = phi i32 [ %2, %4 ], [ %18, %12 ]
  %15 = zext nneg i32 %14 to i64
  %16 = shl nuw i64 1, %15
  %17 = or i64 %16, %13
  %18 = add i32 %14, 1
  %19 = icmp ult i32 %18, %10
  br i1 %19, label %12, label %20, !prof !317, !llvm.loop !318

20:                                               ; preds = %12
  store i64 %17, ptr @referenced_regs, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insert_restore(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !prof !319 !PGOFuncName !320 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !270

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1185, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %4, %9
  br label %11

11:                                               ; preds = %10, %33
  %12 = phi i64 [ 4, %10 ], [ %34, %33 ]
  %13 = phi i32 [ 0, %10 ], [ %31, %33 ]
  %14 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !271

17:                                               ; preds = %11
  %18 = load i64, ptr @hard_regs_saved, align 8
  %19 = sext i32 %2 to i64
  %20 = trunc i64 %12 to i32
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %30, label %24, !prof !272, !llvm.loop !321

24:                                               ; preds = %17, %21
  %25 = phi i64 [ 0, %17 ], [ %22, %21 ]
  %26 = add nsw i64 %25, %19
  %27 = shl nuw i64 1, %26
  %28 = and i64 %18, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %21, !prof !270

30:                                               ; preds = %24, %21, %11
  %31 = phi i32 [ %13, %11 ], [ %20, %21 ], [ %13, %24 ]
  %32 = phi i1 [ true, %11 ], [ %29, %21 ], [ %29, %24 ]
  br i1 %32, label %33, label %36, !prof !271

33:                                               ; preds = %30
  %34 = add nsw i64 %12, -1
  %35 = icmp ugt i64 %12, 1
  br i1 %35, label %11, label %38, !prof !322, !llvm.loop !323

36:                                               ; preds = %30
  %37 = trunc i64 %12 to i32
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %33 ]
  %40 = zext nneg i32 %31 to i64
  %41 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = getelementptr inbounds i32, ptr %3, i64 %5
  %44 = load i32, ptr %43, align 4, !tbaa !102
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46, !prof !270

46:                                               ; preds = %38
  %47 = load i32, ptr %42, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %63, label %51, !prof !276

51:                                               ; preds = %46
  %52 = zext i32 %44 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !98
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %31, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = tail call fastcc i32 @reg_save_code(i32 noundef %2, i32 noundef %44)
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, ptr %43, align 4, !tbaa !102
  %62 = tail call ptr @adjust_address_1(ptr noundef nonnull %42, i32 noundef %61, i64 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %65

63:                                               ; preds = %57, %51, %46, %38
  %64 = tail call ptr @copy_rtx(ptr noundef %42) #18
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi ptr [ %62, %60 ], [ %64, %63 ]
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = tail call i32 @get_mode_alignment(i32 noundef %69) #18
  %71 = icmp ugt i32 %70, -2147483648
  br i1 %71, label %77, label %72, !prof !270

72:                                               ; preds = %65
  %73 = load i32, ptr %66, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = tail call i32 @get_mode_alignment(i32 noundef %75) #18
  br label %77

77:                                               ; preds = %65, %72
  %78 = phi i32 [ %76, %72 ], [ -2147483648, %65 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82, !prof !270

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.mem_attrs, ptr %80, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !277
  br label %85

85:                                               ; preds = %77, %82
  %86 = phi i32 [ %84, %82 ], [ 8, %77 ]
  %87 = icmp ugt i32 %78, %86
  br i1 %87, label %88, label %89, !prof !270

88:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1227, ptr noundef nonnull @.str.1) #18
  br label %89

89:                                               ; preds = %85, %88
  %90 = load i32, ptr %66, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = tail call ptr @gen_rtx_REG(i32 noundef %92, i32 noundef %2) #18
  %94 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %93, ptr noundef nonnull %66) #18
  %95 = load i32, ptr %66, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [53 x [87 x i32]], ptr @cached_reg_restore_code, i64 0, i64 %5, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !102
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105, !prof !270

102:                                              ; preds = %89
  %103 = tail call fastcc i32 @reg_save_code(i32 noundef %2, i32 noundef %97)
  %104 = load i32, ptr %99, align 4, !tbaa !102
  br label %105

105:                                              ; preds = %89, %102
  %106 = phi i32 [ %104, %102 ], [ %100, %89 ]
  %107 = tail call fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef %1, i32 noundef %106, ptr noundef %94)
  %108 = icmp sgt i32 %39, 0
  br i1 %108, label %109, label %126, !prof !272

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.insn_chain, ptr %107, i64 0, i32 7
  %111 = sext i32 %2 to i64
  %112 = zext nneg i32 %39 to i64
  br label %113

113:                                              ; preds = %109, %113
  %114 = phi i64 [ 0, %109 ], [ %124, %113 ]
  %115 = add nsw i64 %114, %111
  %116 = shl nuw i64 1, %115
  %117 = xor i64 %116, -1
  %118 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %119 = and i64 %118, %117
  store i64 %119, ptr @hard_regs_saved, align 8, !tbaa !108
  %120 = trunc i64 %115 to i32
  %121 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %110, i32 noundef %120) #18
  %122 = load i32, ptr @n_regs_saved, align 4, !tbaa !102
  %123 = add nsw i32 %122, -1
  store i32 %123, ptr @n_regs_saved, align 4, !tbaa !102
  %124 = add nuw nsw i64 %114, 1
  %125 = icmp eq i64 %124, %112
  br i1 %125, label %126, label %113, !prof !272, !llvm.loop !324

126:                                              ; preds = %113, %105
  %127 = add nsw i32 %31, -1
  ret i32 %127
}

; Function Attrs: cold nounwind uwtable
define internal void @replace_reg_with_saved_mem(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #16 !prof !86 {
  %5 = sext i32 %2 to i64
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !98
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %13 = zext i8 %8 to i64
  br label %14

14:                                               ; preds = %11, %22
  %15 = phi i64 [ 0, %11 ], [ %23, %22 ]
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, %2
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 1, %18
  %20 = and i64 %12, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = add nuw nsw i64 %15, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %27, label %14, !llvm.loop !325

25:                                               ; preds = %14
  %26 = trunc i64 %15 to i32
  br label %27

27:                                               ; preds = %25, %22, %4
  %28 = phi i32 [ 0, %4 ], [ %26, %25 ], [ %9, %22 ]
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %121, label %30

30:                                               ; preds = %27
  %31 = load i64, ptr @hard_regs_saved, align 8
  %32 = zext nneg i32 %28 to i64
  %33 = zext i8 %8 to i64
  %34 = add nuw nsw i32 %28, 1
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 %9)
  br label %36

36:                                               ; preds = %30, %40
  %37 = phi i64 [ %32, %30 ], [ %38, %40 ]
  %38 = add nuw nsw i64 %37, 1
  %39 = icmp ult i64 %38, %33
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = trunc i64 %38 to i32
  %42 = add i32 %41, %2
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = and i64 %31, %44
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %36, !llvm.loop !326

47:                                               ; preds = %40
  %48 = trunc i64 %38 to i32
  br label %49

49:                                               ; preds = %36, %47
  %50 = phi i32 [ %48, %47 ], [ %35, %36 ]
  %51 = icmp eq i32 %50, %9
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = zext i8 %8 to i64
  %54 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %5, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !87
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %52
  %58 = tail call ptr @copy_rtx(ptr noundef nonnull %55) #18
  %59 = getelementptr inbounds i32, ptr %3, i64 %5
  %60 = load i32, ptr %59, align 4, !tbaa !102
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %5, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !98
  %64 = icmp eq i8 %8, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = tail call ptr @adjust_address_1(ptr noundef %58, i32 noundef %60, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %66, %65 ], [ %58, %57 ]
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %71, %1
  br i1 %72, label %113, label %73

73:                                               ; preds = %67
  %74 = tail call ptr @adjust_address_1(ptr noundef nonnull %68, i32 noundef %1, i64 noundef 0, i32 noundef 0, i32 noundef 1) #18
  br label %113

75:                                               ; preds = %52, %49
  %76 = tail call ptr @rtvec_alloc(i32 noundef %9) #18
  %77 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 42, i32 noundef %1, ptr noundef %76) #18
  %78 = icmp eq i8 %8, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i32, ptr %3, i64 %5
  %81 = zext i8 %8 to i64
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  br label %83

83:                                               ; preds = %79, %107
  %84 = phi i64 [ 0, %79 ], [ %111, %107 ]
  %85 = load i64, ptr @hard_regs_saved, align 8, !tbaa !108
  %86 = trunc i64 %84 to i32
  %87 = add i32 %86, %2
  %88 = zext i32 %87 to i64
  %89 = shl nuw i64 1, %88
  %90 = and i64 %85, %89
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %83
  %93 = getelementptr inbounds [53 x [5 x ptr]], ptr @regno_save_mem, i64 0, i64 %88, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !87
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1139, ptr noundef nonnull @.str.1) #18
  br label %97

97:                                               ; preds = %92, %96
  %98 = load ptr, ptr %93, align 8, !tbaa !87
  %99 = tail call ptr @copy_rtx(ptr noundef %98) #18
  br label %107

100:                                              ; preds = %83
  %101 = load i32, ptr %80, align 4, !tbaa !102
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1144, ptr noundef nonnull @.str.1) #18
  br label %104

104:                                              ; preds = %100, %103
  %105 = load i32, ptr %80, align 4, !tbaa !102
  %106 = tail call ptr @gen_rtx_REG(i32 noundef %105, i32 noundef %87) #18
  br label %107

107:                                              ; preds = %97, %104
  %108 = phi ptr [ %99, %97 ], [ %106, %104 ]
  %109 = load ptr, ptr %82, align 8, !tbaa !98
  %110 = getelementptr inbounds %struct.rtvec_def, ptr %109, i64 0, i32 1, i64 %84
  store ptr %108, ptr %110, align 8, !tbaa !87
  %111 = add nuw nsw i64 %84, 1
  %112 = icmp eq i64 %111, %81
  br i1 %112, label %113, label %83, !llvm.loop !327

113:                                              ; preds = %107, %75, %67, %73
  %114 = phi ptr [ %74, %73 ], [ %68, %67 ], [ %77, %75 ], [ %77, %107 ]
  %115 = load i32, ptr %114, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = icmp eq i32 %117, %1
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1150, ptr noundef nonnull @.str.1) #18
  br label %120

120:                                              ; preds = %113, %119
  store ptr %114, ptr %0, align 8, !tbaa !87
  br label %121

121:                                              ; preds = %27, %120
  ret void
}

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #3

declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @insert_one_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 !prof !328 !PGOFuncName !329 {
  %5 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  %7 = tail call ptr @new_insn_chain() #18
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %52, label %9, !prof !330

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !331
  %12 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !331
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, ptr @reload_insn_chain, ptr %11, !prof !330
  store ptr %7, ptr %14, align 8, !tbaa !87
  store ptr %7, ptr %10, align 8, !tbaa !331
  store ptr %0, ptr %7, align 8, !tbaa !154
  %15 = tail call ptr @emit_insn_before(ptr noundef %3, ptr noundef %6) #18
  %16 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !151
  %17 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %18 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %19 = load ptr, ptr %5, align 8, !tbaa !151
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  tail call void @note_uses(ptr noundef nonnull %20, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %21 = load ptr, ptr %5, align 8, !tbaa !151
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %35, !prof !332

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !123

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %33, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  tail call void @note_uses(ptr noundef nonnull %31, ptr noundef nonnull @add_used_regs, ptr noundef nonnull %17) #18
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !prof !123, !llvm.loop !333

35:                                               ; preds = %29, %25, %9
  %36 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %36) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !151
  %38 = load ptr, ptr @cfun, align 8, !tbaa !87
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !158
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !334
  %43 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !286
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %42, i64 0, i32 2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  %50 = load ptr, ptr %49, align 8, !tbaa !335
  %51 = icmp eq ptr %37, %50
  br i1 %51, label %83, label %87, !prof !330

52:                                               ; preds = %4
  %53 = load ptr, ptr %0, align 8, !tbaa !154
  store ptr %53, ptr %7, align 8, !tbaa !154
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.insn_chain, ptr %53, i64 0, i32 1
  store ptr %7, ptr %56, align 8, !tbaa !331
  br label %57

57:                                               ; preds = %55, %52
  store ptr %7, ptr %0, align 8, !tbaa !154
  %58 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 1
  store ptr %0, ptr %58, align 8, !tbaa !331
  %59 = tail call ptr @emit_insn_after(ptr noundef %3, ptr noundef %6) #18
  %60 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !151
  %61 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 6
  %62 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 6
  tail call void @bitmap_copy(ptr noundef nonnull %61, ptr noundef nonnull %62) #18
  %63 = load ptr, ptr %5, align 8, !tbaa !151
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !98
  tail call void @note_stores(ptr noundef %65, ptr noundef nonnull @add_stored_regs, ptr noundef nonnull %61) #18
  %66 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 7
  tail call void @bitmap_clear(ptr noundef nonnull %66) #18
  %67 = load ptr, ptr %5, align 8, !tbaa !151
  %68 = load ptr, ptr @cfun, align 8, !tbaa !87
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !158
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !334
  %73 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !286
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %72, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !87
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !98
  %80 = getelementptr inbounds %struct.rtl_bb_info, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !289
  %82 = icmp eq ptr %67, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %57, %35
  %84 = phi ptr [ %16, %35 ], [ %60, %57 ]
  %85 = phi ptr [ %49, %35 ], [ %80, %57 ]
  %86 = load ptr, ptr %84, align 8, !tbaa !151
  store ptr %86, ptr %85, align 8, !tbaa !87
  br label %87

87:                                               ; preds = %83, %35, %57
  %88 = getelementptr inbounds %struct.insn_chain, ptr %0, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !286
  %90 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 4
  store i32 %89, ptr %90, align 8, !tbaa !286
  %91 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 5
  %92 = load i8, ptr %91, align 4
  %93 = or i8 %92, 8
  store i8 %93, ptr %91, align 4
  %94 = getelementptr inbounds %struct.insn_chain, ptr %7, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !151
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 1, i32 1
  store i32 %2, ptr %96, align 8, !tbaa !98
  ret ptr %7
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @new_insn_chain() local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @add_used_regs(ptr noundef %0, ptr noundef %1) #9 !prof !328 !PGOFuncName !336 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @add_used_regs_1, ptr noundef %1) #18
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @add_stored_regs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #16 !prof !86 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 25
  br i1 %9, label %57, label %10

10:                                               ; preds = %3
  %11 = and i32 %4, 65535
  %12 = trunc i32 %4 to i16
  switch i16 %12, label %57 [
    i16 39, label %13
    i16 37, label %37
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = lshr i32 %16, 16
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !98
  %28 = tail call i32 @subreg_regno_offset(i32 noundef %21, i32 noundef %25, i32 noundef %27, i32 noundef %6) #18
  %29 = load ptr, ptr %14, align 8, !tbaa !98
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !98
  %32 = add i32 %31, %28
  %33 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #18
  %34 = add i32 %32, %33
  br label %48

35:                                               ; preds = %19, %13
  %36 = icmp eq i32 %11, 37
  br i1 %36, label %37, label %57

37:                                               ; preds = %10, %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !98
  %40 = icmp ugt i32 %39, 52
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = zext nneg i32 %39 to i64
  %43 = zext nneg i32 %6 to i64
  %44 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %42, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !98
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %39, %46
  br label %48

48:                                               ; preds = %41, %23
  %49 = phi i32 [ %34, %23 ], [ %47, %41 ]
  %50 = phi i32 [ %32, %23 ], [ %39, %41 ]
  %51 = icmp slt i32 %50, %49
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %52
  %53 = phi i32 [ %55, %52 ], [ %50, %48 ]
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %53) #18
  %55 = add i32 %53, 1
  %56 = icmp eq i32 %55, %49
  br i1 %56, label %57, label %52, !llvm.loop !337

57:                                               ; preds = %52, %48, %10, %35, %37, %3
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_used_regs_1(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !338 !PGOFuncName !339 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %36, !prof !340

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = icmp slt i32 %9, 53
  br i1 %10, label %17, label %11, !prof !341

11:                                               ; preds = %7
  %12 = load ptr, ptr @reg_renumber, align 8, !tbaa !87
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !139
  %16 = sext i16 %15 to i32
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i32 [ %9, %7 ], [ %16, %11 ]
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %36, !prof !341

20:                                               ; preds = %17
  %21 = zext nneg i32 %18 to i64
  %22 = lshr i32 %4, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !98
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %36, label %28, !prof !342

28:                                               ; preds = %20
  %29 = zext i8 %26 to i32
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i32 [ %32, %30 ], [ %29, %28 ]
  %32 = add nsw i32 %31, -1
  %33 = add nuw nsw i32 %32, %18
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %33) #18
  %35 = icmp sgt i32 %31, 1
  br i1 %35, label %30, label %36, !prof !342, !llvm.loop !343

36:                                               ; preds = %30, %20, %17, %2
  ret i32 0
}

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

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
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @init_caller_save, ptr @choose_hard_reg_mode, i64 11}
!36 = !{ptr @init_caller_save, ptr @gen_rtx_REG, i64 2}
!37 = !{ptr @init_caller_save, ptr @gen_rtx_CONST_INT, i64 1}
!38 = !{ptr @init_caller_save, ptr @gen_rtx_fmt_ee_stat, i64 3}
!39 = !{ptr @init_caller_save, ptr @strict_memory_address_addr_space_p, i64 11}
!40 = !{ptr @init_caller_save, ptr @gen_rtx_MEM, i64 1}
!41 = !{ptr @init_caller_save, ptr @gen_rtx_fmt_iuuBieie_stat, i64 2}
!42 = !{ptr @init_caller_save, ptr @reg_save_code, i64 212}
!43 = !{ptr @reg_save_code, ptr @ix86_hard_regno_mode_ok, i64 64}
!44 = !{ptr @reg_save_code, ptr @df_ref_change_reg_with_loc, i64 11}
!45 = !{ptr @reg_save_code, ptr @recog, i64 22}
!46 = !{ptr @reg_save_code, ptr @extract_insn, i64 22}
!47 = !{ptr @reg_save_code, ptr @constrain_operands, i64 22}
!48 = !{ptr @setup_save_areas, ptr @find_reg_note, i64 7608}
!49 = !{ptr @setup_save_areas, ptr @reg_set_to_hard_reg_set, i64 7584}
!50 = !{ptr @setup_save_areas, ptr @note_stores, i64 7584}
!51 = !{ptr @setup_save_areas, ptr @xmalloc, i64 24}
!52 = !{ptr @setup_save_areas, ptr @spec_qsort, i64 12}
!53 = !{ptr @setup_save_areas, ptr @adjust_address_1, i64 8}
!54 = !{ptr @setup_save_areas, ptr @assign_stack_local_1, i64 4}
!55 = !{ptr @setup_save_areas, ptr @free, i64 24}
!56 = !{ptr @setup_save_areas, ptr @get_frame_alias_set, i64 12}
!57 = !{ptr @setup_save_areas, ptr @set_mem_alias_set, i64 12}
!58 = !{ptr @save_call_clobbered_regs, ptr @mark_referenced_regs, i64 1300}
!59 = !{ptr @save_call_clobbered_regs, ptr @insert_restore, i64 74}
!60 = !{ptr @save_call_clobbered_regs, ptr @find_reg_note, i64 1268}
!61 = !{ptr @save_call_clobbered_regs, ptr @reg_set_to_hard_reg_set, i64 1264}
!62 = !{ptr @save_call_clobbered_regs, ptr @note_stores, i64 1264}
!63 = !{ptr @save_call_clobbered_regs, ptr @copy_rtx, i64 74}
!64 = !{ptr @save_call_clobbered_regs, ptr @get_mode_alignment, i64 148}
!65 = !{ptr @save_call_clobbered_regs, ptr @gen_rtx_REG, i64 74}
!66 = !{ptr @save_call_clobbered_regs, ptr @gen_rtx_fmt_ee_stat, i64 74}
!67 = !{ptr @save_call_clobbered_regs, ptr @reg_save_code, i64 74}
!68 = !{ptr @save_call_clobbered_regs, ptr @insert_one_insn, i64 74}
!69 = !{ptr @save_call_clobbered_regs, ptr @bitmap_set_bit, i64 74}
!70 = !{ptr @mark_referenced_regs, ptr @mark_referenced_regs, i64 3032}
!71 = !{ptr @mark_referenced_regs, ptr @mark_reg_as_referenced, i64 1620}
!72 = !{ptr @insert_restore, ptr @copy_rtx, i64 74}
!73 = !{ptr @insert_restore, ptr @get_mode_alignment, i64 148}
!74 = !{ptr @insert_restore, ptr @gen_rtx_REG, i64 74}
!75 = !{ptr @insert_restore, ptr @gen_rtx_fmt_ee_stat, i64 74}
!76 = !{ptr @insert_restore, ptr @insert_one_insn, i64 74}
!77 = !{ptr @insert_restore, ptr @bitmap_set_bit, i64 74}
!78 = !{ptr @insert_one_insn, ptr @new_insn_chain, i64 148}
!79 = !{ptr @insert_one_insn, ptr @emit_insn_before, i64 148}
!80 = !{ptr @insert_one_insn, ptr @bitmap_copy, i64 148}
!81 = !{ptr @insert_one_insn, ptr @note_uses, i64 148}
!82 = !{ptr @insert_one_insn, ptr @bitmap_clear, i64 148}
!83 = !{ptr @add_used_regs, ptr @for_each_rtx, i64 148}
!84 = !{ptr @add_used_regs_1, ptr @bitmap_set_bit, i64 138}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!92, !88, i64 8}
!92 = !{!"_IO_FILE", !93, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !93, i64 112, !93, i64 116, !94, i64 120, !95, i64 128, !89, i64 130, !89, i64 131, !88, i64 136, !94, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !94, i64 184, !93, i64 192, !89, i64 196}
!93 = !{!"int", !89, i64 0}
!94 = !{!"long", !89, i64 0}
!95 = !{!"short", !89, i64 0}
!96 = !{!92, !88, i64 16}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!89, !89, i64 0}
!99 = !{!92, !88, i64 40}
!100 = !{!92, !88, i64 48}
!101 = !{!92, !93, i64 0}
!102 = !{!93, !93, i64 0}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!"function_entry_count", i64 38}
!107 = !{!"branch_weights", i32 1, i32 37}
!108 = !{!94, !94, i64 0}
!109 = !{!"branch_weights", i32 4, i32 49}
!110 = !{!"branch_weights", i32 11, i32 38}
!111 = !{!"branch_weights", i32 33, i32 11}
!112 = !{!"branch_weights", i32 0, i32 44}
!113 = !{!"branch_weights", i32 11, i32 33}
!114 = distinct !{!114, !104, !105}
!115 = !{!"branch_weights", i32 1, i32 52}
!116 = distinct !{!116, !104, !105}
!117 = !{!"branch_weights", i32 0, i32 1}
!118 = distinct !{!118, !104, !105}
!119 = distinct !{!119, !104, !105}
!120 = !{!"branch_weights", i32 42, i32 11}
!121 = !{!"branch_weights", i32 0, i32 11}
!122 = distinct !{!122, !104, !105}
!123 = !{!"branch_weights", i32 1, i32 0}
!124 = !{!"branch_weights", i32 201, i32 11}
!125 = !{!"branch_weights", i32 42, i32 159}
!126 = !{!"branch_weights", i32 4, i32 38}
!127 = !{!"branch_weights", i32 53, i32 159}
!128 = distinct !{!128, !104, !105}
!129 = distinct !{!129, !104, !105}
!130 = !{!"function_entry_count", i64 286}
!131 = !{!"caller-save.c;reg_save_code"}
!132 = !{!"branch_weights", i32 64, i32 222}
!133 = !{!"branch_weights", i32 53, i32 11}
!134 = !{!"branch_weights", i32 11, i32 0}
!135 = !{!"branch_weights", i32 38, i32 1976}
!136 = distinct !{!136, !104, !105}
!137 = !{!"function_entry_count", i64 12}
!138 = !{!"branch_weights", i32 191, i32 1}
!139 = !{!95, !95, i64 0}
!140 = !{!"branch_weights", i32 5082, i32 6414}
!141 = !{!142, !93, i64 12}
!142 = !{!"reg_info_t", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24}
!143 = !{!"branch_weights", i32 1002, i32 4080}
!144 = !{!"branch_weights", i32 1, i32 1001}
!145 = !{!"branch_weights", i32 804, i32 198}
!146 = distinct !{!146, !104, !105}
!147 = !{!"branch_weights", i32 191, i32 183745}
!148 = distinct !{!148, !104, !105}
!149 = !{!"branch_weights", i32 12, i32 0}
!150 = !{!"branch_weights", i32 1, i32 191}
!151 = !{!152, !88, i64 24}
!152 = !{!"insn_chain", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !93, i64 32, !93, i64 36, !93, i64 36, !93, i64 36, !93, i64 36, !153, i64 40, !153, i64 72, !88, i64 104, !93, i64 112, !94, i64 120}
!153 = !{!"bitmap_head_def", !88, i64 0, !88, i64 8, !93, i64 16, !88, i64 24}
!154 = !{!152, !88, i64 0}
!155 = !{!"branch_weights", i32 3804, i32 17631}
!156 = !{!"branch_weights", i32 3792, i32 12}
!157 = !{!"branch_weights", i32 3792, i32 0}
!158 = !{!159, !88, i64 8}
!159 = !{!"function", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !93, i64 104, !93, i64 108, !93, i64 112, !93, i64 116, !93, i64 120, !93, i64 124, !88, i64 128, !93, i64 136, !93, i64 137, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139}
!160 = !{!161, !88, i64 0}
!161 = !{!"control_flow_graph", !88, i64 0, !88, i64 8, !88, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !88, i64 40, !93, i64 48, !89, i64 52, !89, i64 60, !93, i64 68, !93, i64 72}
!162 = !{!163, !94, i64 72}
!163 = !{!"basic_block_def", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !89, i64 32, !88, i64 48, !88, i64 56, !89, i64 64, !94, i64 72, !93, i64 80, !93, i64 84, !93, i64 88, !93, i64 92, !93, i64 96}
!164 = !{!163, !93, i64 88}
!165 = !{!"branch_weights", i32 210, i32 3582}
!166 = !{!"branch_weights", i32 0, i32 3792}
!167 = !{!"branch_weights", i32 200976, i32 0}
!168 = !{!169, !93, i64 8}
!169 = !{!"saved_hard_reg", !93, i64 0, !93, i64 4, !93, i64 8, !88, i64 16, !93, i64 24, !93, i64 28}
!170 = !{!169, !93, i64 0}
!171 = !{!169, !93, i64 4}
!172 = !{!169, !93, i64 24}
!173 = !{!169, !93, i64 28}
!174 = !{!"branch_weights", i32 3792, i32 197184}
!175 = distinct !{!175, !104, !105}
!176 = !{!153, !88, i64 0}
!177 = !{!178, !93, i64 16}
!178 = !{!"bitmap_element_def", !88, i64 0, !88, i64 8, !93, i64 16, !89, i64 24}
!179 = !{!"branch_weights", i32 8061, i32 4500}
!180 = !{!"branch_weights", i32 8768, i32 1}
!181 = !{!"branch_weights", i32 139210, i32 8768}
!182 = distinct !{!182, !104, !105}
!183 = !{!"branch_weights", i32 1, i32 7751}
!184 = !{!"branch_weights", i32 7443, i32 4269}
!185 = !{!"branch_weights", i32 7751, i32 3961}
!186 = distinct !{!186, !104, !105}
!187 = !{!178, !88, i64 0}
!188 = !{!"branch_weights", i32 3792, i32 3960}
!189 = distinct !{!189, !105}
!190 = !{!"branch_weights", i32 3792, i32 8769}
!191 = !{!"branch_weights", i32 2196, i32 6573}
!192 = !{!"branch_weights", i32 1, i32 6572}
!193 = !{!"branch_weights", i32 5199, i32 1374}
!194 = !{!"branch_weights", i32 12, i32 1362}
!195 = distinct !{!195, !104, !105}
!196 = distinct !{!196, !104, !105}
!197 = !{!"branch_weights", i32 191, i32 342769}
!198 = distinct !{!198, !104, !105}
!199 = !{!"VP", i32 1, i64 12, i64 1, i64 12}
!200 = distinct !{!200, !104, !105}
!201 = !{!"branch_weights", i32 1374, i32 2418}
!202 = distinct !{!202, !104, !105}
!203 = distinct !{!203, !104, !105}
!204 = !{!"branch_weights", i32 1374, i32 0}
!205 = !{!"branch_weights", i32 1373, i32 1}
!206 = distinct !{!206, !104, !105}
!207 = distinct !{!207, !104, !105}
!208 = distinct !{!208, !104, !105}
!209 = !{!"VP", i32 1, i64 12, i64 8, i64 8, i64 0, i64 4}
!210 = distinct !{!210, !104, !105}
!211 = !{!169, !88, i64 16}
!212 = distinct !{!212, !104, !105}
!213 = !{!"branch_weights", i32 127, i32 1}
!214 = !{!"branch_weights", i32 0, i32 8}
!215 = !{!"branch_weights", i32 8, i32 0}
!216 = !{!"branch_weights", i32 127, i32 129}
!217 = distinct !{!217, !104, !105}
!218 = !{!"branch_weights", i32 8, i32 4}
!219 = !{!"branch_weights", i32 4, i32 0}
!220 = distinct !{!220, !104, !105}
!221 = distinct !{!221, !104, !105}
!222 = distinct !{!222, !104, !105}
!223 = distinct !{!223, !104, !105}
!224 = distinct !{!224, !104, !105}
!225 = distinct !{!225, !104, !105}
!226 = distinct !{!226, !104, !105}
!227 = !{!"branch_weights", i32 2532, i32 12}
!228 = !{!"branch_weights", i32 1908, i32 636}
!229 = distinct !{!229, !104, !105}
!230 = !{!"branch_weights", i32 12, i32 624}
!231 = distinct !{!231, !104, !105}
!232 = !{!"function_entry_count", i64 7721}
!233 = !{!"caller-save.c;mark_set_regs"}
!234 = !{!"branch_weights", i32 0, i32 0, i32 7721}
!235 = !{!"branch_weights", i32 7721, i32 0}
!236 = !{!"branch_weights", i32 7720, i32 1}
!237 = distinct !{!237, !104, !105}
!238 = !{!"function_entry_count", i64 4}
!239 = !{!"branch_weights", i32 1, i32 127}
!240 = !{!"branch_weights", i32 7145, i32 0}
!241 = !{!"branch_weights", i32 393, i32 6752}
!242 = !{!"branch_weights", i32 5442, i32 1310}
!243 = !{!"branch_weights", i32 10, i32 1300}
!244 = !{!"branch_weights", i32 69356, i32 74}
!245 = !{!"branch_weights", i32 68120, i32 1310}
!246 = distinct !{!246, !104, !105}
!247 = !{!"branch_weights", i32 1268, i32 5484}
!248 = !{!"branch_weights", i32 1268, i32 0}
!249 = !{!"branch_weights", i32 1264, i32 4}
!250 = !{!"branch_weights", i32 65728, i32 1264}
!251 = !{!"branch_weights", i32 1264, i32 65728}
!252 = distinct !{!252, !104, !105}
!253 = !{!"branch_weights", i32 0, i32 1264}
!254 = !{!"branch_weights", i32 1264, i32 0}
!255 = !{!"branch_weights", i32 2687, i32 1500}
!256 = !{!"branch_weights", i32 2922, i32 1}
!257 = !{!"branch_weights", i32 46404, i32 2922}
!258 = !{!"branch_weights", i32 1, i32 2583}
!259 = !{!"branch_weights", i32 2481, i32 1423}
!260 = !{!"branch_weights", i32 2583, i32 1321}
!261 = !{!"branch_weights", i32 1264, i32 1320}
!262 = !{!"branch_weights", i32 1264, i32 2923}
!263 = !{!"branch_weights", i32 732, i32 2191}
!264 = !{!"branch_weights", i32 0, i32 2191}
!265 = !{!"branch_weights", i32 2191, i32 0}
!266 = !{!"branch_weights", i32 1, i32 2190}
!267 = distinct !{!267, !104, !105}
!268 = distinct !{!268, !104, !105}
!269 = !{!"branch_weights", i32 66918, i32 74}
!270 = !{!"branch_weights", i32 0, i32 74}
!271 = !{!"branch_weights", i32 222, i32 74}
!272 = !{!"branch_weights", i32 147, i32 1}
!273 = distinct !{!273, !104, !105}
!274 = !{!"branch_weights", i32 65712, i32 21904}
!275 = distinct !{!275, !104, !105}
!276 = !{!"branch_weights", i32 74, i32 0}
!277 = !{!278, !93, i64 28}
!278 = !{!"mem_attrs", !88, i64 0, !88, i64 8, !88, i64 16, !93, i64 24, !93, i64 28, !89, i64 32}
!279 = !{!"branch_weights", i32 1, i32 147}
!280 = distinct !{!280, !104, !105}
!281 = distinct !{!281, !104, !105}
!282 = !{!"branch_weights", i32 66534, i32 458}
!283 = distinct !{!283, !104, !105}
!284 = !{!"branch_weights", i32 0, i32 393}
!285 = !{!"branch_weights", i32 4, i32 7141}
!286 = !{!152, !93, i64 32}
!287 = !{!"branch_weights", i32 6299, i32 842}
!288 = !{!"branch_weights", i32 0, i32 846}
!289 = !{!290, !88, i64 8}
!290 = !{!"rtl_bb_info", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !93, i64 32}
!291 = distinct !{!291, !104, !105}
!292 = !{!"branch_weights", i32 846, i32 0}
!293 = distinct !{!293, !104, !105}
!294 = !{!"branch_weights", i32 127, i32 228513}
!295 = distinct !{!295, !104, !105}
!296 = !{!"function_entry_count", i64 4412}
!297 = !{!"caller-save.c;mark_referenced_regs"}
!298 = !{!"branch_weights", i32 3112, i32 1300, i32 0}
!299 = !{!"branch_weights", i32 384, i32 916, i32 0, i32 0, i32 0}
!300 = !{!"branch_weights", i32 660, i32 256}
!301 = !{!"branch_weights", i32 0, i32 256}
!302 = !{!"branch_weights", i32 2984, i32 768, i32 0}
!303 = !{!"branch_weights", i32 1876, i32 1876}
!304 = !{!"branch_weights", i32 1620, i32 256}
!305 = !{!"VP", i32 0, i64 1620, i64 -3641383701427636550, i64 1620}
!306 = !{ptr @mark_reg_as_referenced, ptr @replace_reg_with_saved_mem}
!307 = !{!"branch_weights", i32 256, i32 0}
!308 = !{!"branch_weights", i32 1, i32 1875}
!309 = !{!"branch_weights", i32 1866, i32 1556, i32 0}
!310 = !{!311, !93, i64 0}
!311 = !{!"rtvec_def", !93, i64 0, !89, i64 8}
!312 = distinct !{!312, !104, !105}
!313 = !{!"branch_weights", i32 1547, i32 1875}
!314 = distinct !{!314, !104, !105}
!315 = !{!"function_entry_count", i64 1620}
!316 = !{!"caller-save.c;mark_reg_as_referenced"}
!317 = !{!"branch_weights", i32 0, i32 1620}
!318 = distinct !{!318, !104, !105}
!319 = !{!"function_entry_count", i64 74}
!320 = !{!"caller-save.c;insert_restore"}
!321 = distinct !{!321, !104, !105}
!322 = !{!"branch_weights", i32 296, i32 0}
!323 = distinct !{!323, !104, !105}
!324 = distinct !{!324, !104, !105}
!325 = distinct !{!325, !104, !105}
!326 = distinct !{!326, !104, !105}
!327 = distinct !{!327, !104, !105}
!328 = !{!"function_entry_count", i64 148}
!329 = !{!"caller-save.c;insert_one_insn"}
!330 = !{!"branch_weights", i32 0, i32 148}
!331 = !{!152, !88, i64 8}
!332 = !{!"branch_weights", i32 74, i32 74}
!333 = distinct !{!333, !104, !105}
!334 = !{!161, !88, i64 16}
!335 = !{!290, !88, i64 0}
!336 = !{!"caller-save.c;add_used_regs"}
!337 = distinct !{!337, !104, !105}
!338 = !{!"function_entry_count", i64 676}
!339 = !{!"caller-save.c;add_used_regs_1"}
!340 = !{!"branch_weights", i32 138, i32 538}
!341 = !{!"branch_weights", i32 138, i32 0}
!342 = !{!"branch_weights", i32 1, i32 137}
!343 = distinct !{!343, !104, !105}
