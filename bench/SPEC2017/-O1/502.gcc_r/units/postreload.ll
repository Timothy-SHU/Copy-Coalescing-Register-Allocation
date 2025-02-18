; ModuleID = 'postreload.c'
source_filename = "postreload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.anon = type { [6 x %struct.reg_use], i32, ptr, i32, i32 }
%struct.reg_use = type { ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"postreload\00", align 1
@pass_postreload_cse = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_postreload, ptr @rest_of_handle_postreload, ptr null, ptr null, i32 0, i32 150, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"postreload.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@which_alternative = external local_unnamed_addr global i32, align 4
@double_reg_address_ok = external local_unnamed_addr global i8, align 1
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@reload_combine_ruid = internal unnamed_addr global i32 0, align 4
@reg_state = internal unnamed_addr global [53 x %struct.anon] zeroinitializer, align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_set_luid = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@move2add_last_label_luid = internal unnamed_addr global i32 0, align 4
@move2add_luid = internal unnamed_addr global i32 0, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@reg_mode = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_base_reg = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@reg_offset = internal unnamed_addr global [53 x i64] zeroinitializer, align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@optimize = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !85 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !86
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !85 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !86
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !85 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !96

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !85 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !96

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !85 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !96

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !85 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !86
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !85 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !96

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !98
  store i8 %12, ptr %4, align 1, !tbaa !97
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !85 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !96

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !98
  store i8 %12, ptr %4, align 1, !tbaa !97
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !85 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !96

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !98
  store i8 %12, ptr %4, align 1, !tbaa !97
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !85 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !85 {
  %2 = load i32, ptr %0, align 8, !tbaa !100
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !85 {
  %2 = load i32, ptr %0, align 8, !tbaa !100
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !85 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !101
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !85 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !101
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !85 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !102

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !85 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @reload_cse_regs(ptr noundef %0) local_unnamed_addr #9 !prof !105 {
  %2 = alloca i64, align 8
  tail call fastcc void @reload_cse_regs_1(ptr noundef %0)
  %3 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !97
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %475, !prof !106

5:                                                ; preds = %1
  %6 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !107
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %20, %7 ]
  %9 = phi i32 [ -1, %5 ], [ %19, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %18, %7 ]
  %11 = shl nuw nsw i64 1, %8
  %12 = and i64 %6, %11
  %13 = icmp eq i64 %12, 0
  %14 = icmp eq i32 %9, -1
  %15 = trunc i64 %8 to i32
  %16 = select i1 %14, i32 %15, i32 %9
  %17 = trunc i64 %8 to i32
  %18 = select i1 %13, i32 %10, i32 %17
  %19 = select i1 %13, i32 %9, i32 %16
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %7, !llvm.loop !108

22:                                               ; preds = %7
  %23 = icmp eq i32 %19, -1
  br i1 %23, label %475, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @get_first_label_num() #15
  %26 = tail call i32 @max_label_num() #15
  %27 = sub nsw i32 %26, %25
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #15
  %31 = load ptr, ptr @cfun, align 8, !tbaa !86
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !109
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = load ptr, ptr @cfun, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  %42 = icmp eq ptr %37, %41
  br i1 %42, label %71, label %43

43:                                               ; preds = %24, %62
  %44 = phi ptr [ %65, %62 ], [ %37, %24 ]
  %45 = phi i64 [ %63, %62 ], [ 0, %24 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !97
  %48 = load ptr, ptr %47, align 8, !tbaa !116
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %53 = call ptr @df_get_live_in(ptr noundef %44) #15
  store i64 0, ptr %2, align 8, !tbaa !107
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %2, ptr noundef %53) #15
  call void @compute_use_by_pseudos(ptr noundef nonnull %2, ptr noundef %53) #15
  %54 = load i64, ptr %2, align 8, !tbaa !107
  %55 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !97
  %57 = sub nsw i32 %56, %25
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, ptr %30, i64 %58
  store i64 %54, ptr %59, align 8, !tbaa !107
  %60 = load i64, ptr %2, align 8, !tbaa !107
  %61 = or i64 %45, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %62

62:                                               ; preds = %52, %43
  %63 = phi i64 [ %61, %52 ], [ %45, %43 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !113
  %66 = load ptr, ptr @cfun, align 8, !tbaa !86
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !109
  %69 = load ptr, ptr %68, align 8, !tbaa !115
  %70 = icmp eq ptr %65, %69
  br i1 %70, label %71, label %43, !llvm.loop !118

71:                                               ; preds = %62, %24
  %72 = phi i64 [ 0, %24 ], [ %63, %62 ]
  store i32 0, ptr @reload_combine_ruid, align 4, !tbaa !101
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i64 [ 0, %71 ], [ %81, %73 ]
  %75 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %74, i32 3
  store i32 0, ptr %75, align 8, !tbaa !119
  %76 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !97
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %74, i32 1
  %80 = select i1 %78, i32 6, i32 -1
  store i32 %80, ptr %79, align 8, !tbaa !121
  %81 = add nuw nsw i64 %74, 1
  %82 = icmp eq i64 %81, 53
  br i1 %82, label %83, label %73, !llvm.loop !122

83:                                               ; preds = %73
  %84 = call ptr @get_last_insn() #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %474, label %86

86:                                               ; preds = %83
  %87 = icmp sgt i32 %19, %18
  %88 = sext i32 %19 to i64
  %89 = add i32 %18, 1
  br label %90

90:                                               ; preds = %86, %470
  %91 = phi ptr [ %84, %86 ], [ %472, %470 ]
  %92 = phi i32 [ 0, %86 ], [ %108, %470 ]
  %93 = load i32, ptr %91, align 8
  %94 = trunc i32 %93 to i16
  switch i16 %94, label %107 [
    i16 12, label %95
    i16 11, label %97
  ]

95:                                               ; preds = %90
  %96 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !101
  br label %107

97:                                               ; preds = %90, %104
  %98 = phi i64 [ %105, %104 ], [ 0, %90 ]
  %99 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !97
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %98, i32 1
  store i32 6, ptr %103, align 8, !tbaa !121
  br label %104

104:                                              ; preds = %102, %97
  %105 = add nuw nsw i64 %98, 1
  %106 = icmp eq i64 %105, 53
  br i1 %106, label %107, label %97, !llvm.loop !123

107:                                              ; preds = %104, %95, %90
  %108 = phi i32 [ %96, %95 ], [ %92, %90 ], [ %92, %104 ]
  %109 = and i32 %93, 65535
  %110 = add nsw i32 %109, -7
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %112, label %470

112:                                              ; preds = %107
  %113 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !101
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr @reload_combine_ruid, align 4, !tbaa !101
  %115 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !97
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 23
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = call ptr @single_set_2(ptr noundef nonnull %91, ptr noundef nonnull %116) #15
  br label %122

122:                                              ; preds = %120, %112
  %123 = phi ptr [ %121, %120 ], [ %116, %112 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %345, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !97
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 37
  br i1 %130, label %131, label %345

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !97
  %134 = zext i32 %133 to i64
  %135 = lshr i32 %128, 16
  %136 = and i32 %135, 255
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %134, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !97
  %140 = icmp eq i8 %139, 1
  br i1 %140, label %141, label %345

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !97
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 49
  br i1 %146, label %147, label %345

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !97
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 37
  br i1 %152, label %153, label %345

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !97
  %156 = call i32 @rtx_equal_p(ptr noundef %155, ptr noundef nonnull %127) #15
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %345, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %142, align 8, !tbaa !97
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !97
  %162 = load ptr, ptr %126, align 8, !tbaa !97
  %163 = call i32 @rtx_equal_p(ptr noundef %161, ptr noundef %162) #15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %345

165:                                              ; preds = %158
  %166 = load ptr, ptr %126, align 8, !tbaa !97
  %167 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !97
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %169, i32 4
  %171 = load i32, ptr %170, align 4, !tbaa !124
  %172 = icmp slt i32 %108, %171
  br i1 %172, label %173, label %345

173:                                              ; preds = %165
  %174 = load ptr, ptr %142, align 8, !tbaa !97
  %175 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !97
  %177 = call ptr @prev_nonnote_insn(ptr noundef nonnull %91) #15
  %178 = icmp eq ptr %177, null
  br i1 %178, label %192, label %179

179:                                              ; preds = %173
  %180 = load i32, ptr %177, align 8
  %181 = and i32 %180, 65535
  %182 = add nsw i32 %181, -7
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !97
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, 65535
  %189 = icmp eq i32 %188, 23
  br i1 %189, label %192, label %190

190:                                              ; preds = %184
  %191 = call ptr @single_set_2(ptr noundef nonnull %177, ptr noundef nonnull %186) #15
  br label %192

192:                                              ; preds = %190, %184, %179, %173
  %193 = phi ptr [ %191, %190 ], [ null, %173 ], [ null, %179 ], [ %186, %184 ]
  %194 = load i32, ptr %167, align 8, !tbaa !97
  %195 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @reg_class_contents, i64 0, i64 11), align 8, !tbaa !107
  %196 = zext i32 %194 to i64
  %197 = shl nuw i64 1, %196
  %198 = and i64 %197, %195
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %245

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %202 = load i32, ptr %201, align 8, !tbaa !97
  %203 = zext nneg i32 %202 to i64
  %204 = shl nuw i64 1, %203
  %205 = and i64 %204, %195
  %206 = icmp ne i64 %205, 0
  %207 = select i1 %206, i1 true, i1 %87
  %208 = select i1 %206, ptr %166, ptr null
  %209 = select i1 %206, ptr %174, ptr null
  br i1 %207, label %245, label %210

210:                                              ; preds = %200
  %211 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %196, i32 4
  br label %212

212:                                              ; preds = %210, %241
  %213 = phi i64 [ %88, %210 ], [ %242, %241 ]
  %214 = shl nuw i64 1, %213
  %215 = and i64 %214, %195
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %241, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %213, i32 1
  %219 = load i32, ptr %218, align 8, !tbaa !121
  %220 = icmp eq i32 %219, 6
  br i1 %220, label %221, label %241

221:                                              ; preds = %217
  %222 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %213, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !119
  %224 = load i32, ptr %211, align 4, !tbaa !124
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %241, label %226

226:                                              ; preds = %221
  %227 = load i32, ptr %166, align 8
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %213, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !97
  %233 = icmp eq i8 %232, 1
  br i1 %233, label %234, label %241

234:                                              ; preds = %226
  %235 = trunc i64 %213 to i32
  %236 = call ptr @gen_rtx_REG(i32 noundef %229, i32 noundef %235) #15
  %237 = load i32, ptr %166, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %239, ptr noundef %236, ptr noundef %176) #15
  br label %245

241:                                              ; preds = %226, %221, %217, %212
  %242 = add nsw i64 %213, 1
  %243 = trunc i64 %242 to i32
  %244 = icmp eq i32 %89, %243
  br i1 %244, label %245, label %212, !llvm.loop !125

245:                                              ; preds = %241, %200, %234, %192
  %246 = phi ptr [ %236, %234 ], [ %208, %200 ], [ %166, %192 ], [ null, %241 ]
  %247 = phi ptr [ %240, %234 ], [ %209, %200 ], [ %174, %192 ], [ null, %241 ]
  %248 = icmp ne ptr %247, null
  %249 = icmp ne ptr %193, null
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %345

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %253 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !97
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 30
  br i1 %257, label %258, label %345

258:                                              ; preds = %251
  %259 = load ptr, ptr %252, align 8, !tbaa !97
  %260 = call i32 @rtx_equal_p(ptr noundef %259, ptr noundef %166) #15
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %345, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %196
  %264 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %196, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !121
  %266 = icmp sgt i32 %265, -1
  br i1 %266, label %267, label %345

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %269 = load i32, ptr %268, align 8, !tbaa !97
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %270, i32 3
  %272 = load i32, ptr %271, align 8, !tbaa !119
  %273 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %196, i32 4
  %274 = load i32, ptr %273, align 4, !tbaa !124
  %275 = icmp sgt i32 %272, %274
  br i1 %275, label %345, label %276

276:                                              ; preds = %267
  %277 = call zeroext i8 @validate_change(ptr noundef %177, ptr noundef nonnull %252, ptr noundef %246, i8 noundef zeroext 1) #15
  %278 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %196, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !126
  %280 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !86
  %281 = icmp eq ptr %279, %280
  br i1 %281, label %291, label %282

282:                                              ; preds = %276
  %283 = load ptr, ptr %253, align 8, !tbaa !97
  %284 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1
  %285 = load i64, ptr %284, align 8, !tbaa !97
  %286 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1
  %287 = load i64, ptr %286, align 8, !tbaa !97
  %288 = add nsw i64 %287, %285
  %289 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %288) #15
  %290 = call zeroext i8 @validate_change(ptr noundef %177, ptr noundef nonnull %253, ptr noundef %289, i8 noundef zeroext 1) #15
  br label %291

291:                                              ; preds = %282, %276
  %292 = load i32, ptr %264, align 8, !tbaa !121
  %293 = icmp slt i32 %292, 6
  br i1 %293, label %294, label %306

294:                                              ; preds = %291
  %295 = sext i32 %292 to i64
  br label %296

296:                                              ; preds = %294, %296
  %297 = phi i64 [ %295, %294 ], [ %303, %296 ]
  %298 = getelementptr inbounds [6 x %struct.reg_use], ptr %263, i64 0, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !127
  %300 = getelementptr inbounds [6 x %struct.reg_use], ptr %263, i64 0, i64 %297, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !129
  %302 = call zeroext i8 @validate_unshare_change(ptr noundef %299, ptr noundef %301, ptr noundef nonnull %247, i8 noundef zeroext 1) #15
  %303 = add nsw i64 %297, 1
  %304 = and i64 %303, 4294967295
  %305 = icmp eq i64 %304, 6
  br i1 %305, label %306, label %296, !llvm.loop !130

306:                                              ; preds = %296, %291
  %307 = call i32 @apply_change_group() #15
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %345, label %309

309:                                              ; preds = %306
  %310 = load i32, ptr %264, align 8, !tbaa !121
  %311 = icmp slt i32 %310, 6
  br i1 %311, label %312, label %325

312:                                              ; preds = %309
  %313 = sext i32 %310 to i64
  br label %314

314:                                              ; preds = %312, %314
  %315 = phi i64 [ %313, %312 ], [ %322, %314 ]
  %316 = getelementptr inbounds [6 x %struct.reg_use], ptr %263, i64 0, i64 %315
  %317 = getelementptr inbounds [6 x %struct.reg_use], ptr %263, i64 0, i64 %315, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !129
  %319 = load ptr, ptr %318, align 8, !tbaa !86
  %320 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1, i32 0, i32 0, i64 1
  %321 = load ptr, ptr %316, align 8, !tbaa !127
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %320, ptr noundef %321)
  %322 = add nsw i64 %315, 1
  %323 = and i64 %322, 4294967295
  %324 = icmp eq i64 %323, 6
  br i1 %324, label %325, label %314, !llvm.loop !131

325:                                              ; preds = %314, %309
  %326 = load i32, ptr %268, align 8, !tbaa !97
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %327, i32 4
  %329 = load i32, ptr %328, align 4, !tbaa !124
  %330 = load i32, ptr %273, align 4, !tbaa !124
  %331 = icmp sgt i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  store i32 %330, ptr %328, align 4, !tbaa !124
  br label %333

333:                                              ; preds = %332, %325
  %334 = call ptr @delete_insn(ptr noundef nonnull %91) #15
  %335 = load ptr, ptr %278, align 8, !tbaa !126
  %336 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !86
  %337 = icmp eq ptr %335, %336
  br i1 %337, label %339, label %338

338:                                              ; preds = %333
  call void @remove_reg_equal_equiv_notes(ptr noundef %177) #15
  br label %339

339:                                              ; preds = %338, %333
  store i32 6, ptr %264, align 8, !tbaa !121
  %340 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !101
  %341 = getelementptr inbounds %struct.rtx_def, ptr %246, i64 0, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !97
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %343, i32 3
  store i32 %340, ptr %344, align 8, !tbaa !119
  br label %470

345:                                              ; preds = %267, %262, %258, %251, %245, %306, %165, %158, %153, %147, %141, %131, %125, %122
  %346 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !97
  call void @note_stores(ptr noundef %347, ptr noundef nonnull @reload_combine_note_store, ptr noundef null) #15
  %348 = load i32, ptr %91, align 8
  %349 = trunc i32 %348 to i16
  switch i16 %349, label %443 [
    i16 10, label %350
    i16 9, label %409
  ]

350:                                              ; preds = %345
  %351 = load i32, ptr @reload_combine_ruid, align 4
  br label %352

352:                                              ; preds = %350, %360
  %353 = phi i64 [ 0, %350 ], [ %361, %360 ]
  %354 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !97
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %353, i32 1
  store i32 6, ptr %358, align 8, !tbaa !121
  %359 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %353, i32 3
  store i32 %351, ptr %359, align 8, !tbaa !119
  br label %360

360:                                              ; preds = %357, %352
  %361 = add nuw nsw i64 %353, 1
  %362 = icmp eq i64 %361, 53
  br i1 %362, label %363, label %352, !llvm.loop !132

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1, i32 0, i32 0, i64 2
  %365 = load ptr, ptr %364, align 8, !tbaa !97
  %366 = icmp eq ptr %365, null
  br i1 %366, label %443, label %367

367:                                              ; preds = %363
  %368 = load i32, ptr @reload_combine_ruid, align 4
  br label %369

369:                                              ; preds = %367, %405
  %370 = phi ptr [ %365, %367 ], [ %407, %405 ]
  %371 = getelementptr inbounds %struct.rtx_def, ptr %370, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !97
  %373 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !97
  %375 = load i32, ptr %374, align 8
  %376 = and i32 %375, 65535
  %377 = icmp eq i32 %376, 37
  br i1 %377, label %378, label %405

378:                                              ; preds = %369
  %379 = getelementptr inbounds %struct.rtx_def, ptr %374, i64 0, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !97
  %381 = zext i32 %380 to i64
  %382 = lshr i32 %375, 16
  %383 = and i32 %382, 255
  %384 = zext nneg i32 %383 to i64
  %385 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %381, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !97
  %387 = zext i8 %386 to i32
  %388 = add i32 %380, -1
  %389 = add i32 %388, %387
  %390 = icmp ugt i32 %380, %389
  br i1 %390, label %405, label %391

391:                                              ; preds = %378, %402
  %392 = phi i32 [ %403, %402 ], [ %380, %378 ]
  %393 = load ptr, ptr %371, align 8, !tbaa !97
  %394 = load i32, ptr %393, align 8
  %395 = and i32 %394, 65535
  %396 = icmp eq i32 %395, 25
  %397 = zext i32 %392 to i64
  %398 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %397, i32 1
  br i1 %396, label %399, label %401

399:                                              ; preds = %391
  store i32 6, ptr %398, align 8, !tbaa !121
  %400 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %397, i32 3
  store i32 %368, ptr %400, align 8, !tbaa !119
  br label %402

401:                                              ; preds = %391
  store i32 -1, ptr %398, align 8, !tbaa !121
  br label %402

402:                                              ; preds = %401, %399
  %403 = add i32 %392, 1
  %404 = icmp ugt i32 %403, %389
  br i1 %404, label %405, label %391, !llvm.loop !133

405:                                              ; preds = %402, %378, %369
  %406 = getelementptr inbounds %struct.rtx_def, ptr %370, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !97
  %408 = icmp eq ptr %407, null
  br i1 %408, label %443, label %369, !llvm.loop !134

409:                                              ; preds = %345
  %410 = load ptr, ptr %346, align 8, !tbaa !97
  %411 = load i32, ptr %410, align 8
  %412 = and i32 %411, 65535
  %413 = icmp eq i32 %412, 27
  br i1 %413, label %443, label %414

414:                                              ; preds = %409
  %415 = call i32 @condjump_p(ptr noundef nonnull %91) #15
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = call i32 @condjump_in_parallel_p(ptr noundef nonnull %91) #15
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %431, label %420

420:                                              ; preds = %417, %414
  %421 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1, i32 0, i32 0, i64 2
  %422 = load ptr, ptr %421, align 8, !tbaa !97
  %423 = icmp eq ptr %422, null
  br i1 %423, label %431, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.rtx_def, ptr %422, i64 1, i32 1
  %426 = load i32, ptr %425, align 8, !tbaa !97
  %427 = sub nsw i32 %426, %25
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i64, ptr %30, i64 %428
  %430 = load i64, ptr %429, align 8, !tbaa !107
  br label %431

431:                                              ; preds = %417, %424, %420
  %432 = phi i64 [ %430, %424 ], [ %72, %420 ], [ %72, %417 ]
  br label %433

433:                                              ; preds = %431, %440
  %434 = phi i64 [ 52, %431 ], [ %441, %440 ]
  %435 = shl nuw i64 1, %434
  %436 = and i64 %432, %435
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %440, label %438

438:                                              ; preds = %433
  %439 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %434, i32 1
  store i32 -1, ptr %439, align 8, !tbaa !121
  br label %440

440:                                              ; preds = %438, %433
  %441 = add nsw i64 %434, -1
  %442 = icmp eq i64 %434, 0
  br i1 %442, label %443, label %433, !llvm.loop !135

443:                                              ; preds = %440, %405, %363, %409, %345
  call fastcc void @reload_combine_note_use(ptr noundef nonnull %346, ptr noundef nonnull %91)
  %444 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1, i32 0, i32 0, i64 1
  %445 = load ptr, ptr %444, align 8, !tbaa !97
  %446 = icmp eq ptr %445, null
  br i1 %446, label %470, label %447

447:                                              ; preds = %443
  %448 = load i32, ptr @reload_combine_ruid, align 4
  br label %449

449:                                              ; preds = %447, %466
  %450 = phi ptr [ %445, %447 ], [ %468, %466 ]
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 16711680
  %453 = icmp eq i32 %452, 131072
  br i1 %453, label %454, label %466

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !97
  %457 = load i32, ptr %456, align 8
  %458 = and i32 %457, 65535
  %459 = icmp eq i32 %458, 37
  br i1 %459, label %460, label %466

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.rtx_def, ptr %456, i64 0, i32 1
  %462 = load i32, ptr %461, align 8, !tbaa !97
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %463, i32 3
  store i32 %448, ptr %464, align 8, !tbaa !119
  %465 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %463, i32 1
  store i32 -1, ptr %465, align 8, !tbaa !121
  br label %466

466:                                              ; preds = %460, %454, %449
  %467 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1, i32 0, i32 0, i64 1
  %468 = load ptr, ptr %467, align 8, !tbaa !97
  %469 = icmp eq ptr %468, null
  br i1 %469, label %470, label %449, !llvm.loop !136

470:                                              ; preds = %466, %339, %443, %107
  %471 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !97
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %90, !llvm.loop !137

474:                                              ; preds = %470, %83
  call void @free(ptr noundef %30)
  br label %475

475:                                              ; preds = %1, %22, %474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @reg_set_luid, i8 0, i64 212, i1 false), !tbaa !101
  store i32 0, ptr @move2add_last_label_luid, align 4, !tbaa !101
  store i32 2, ptr @move2add_luid, align 4, !tbaa !101
  %476 = icmp eq ptr %0, null
  br i1 %476, label %829, label %477, !prof !138

477:                                              ; preds = %475
  %478 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %479 = icmp eq i8 %478, 0
  br label %480

480:                                              ; preds = %477, %822
  %481 = phi ptr [ %0, %477 ], [ %825, %822 ]
  %482 = phi i32 [ 2, %477 ], [ %827, %822 ]
  %483 = load i32, ptr %481, align 8
  %484 = trunc i32 %483 to i16
  switch i16 %484, label %822 [
    i16 12, label %485
    i16 8, label %487
    i16 7, label %487
    i16 9, label %487
    i16 10, label %487
  ], !prof !139

485:                                              ; preds = %480
  store i32 %482, ptr @move2add_last_label_luid, align 4, !tbaa !101
  %486 = add nsw i32 %482, 1
  store i32 %486, ptr @move2add_luid, align 4, !tbaa !101
  br label %822

487:                                              ; preds = %480, %480, %480, %480
  %488 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 1
  %489 = load ptr, ptr %488, align 8, !tbaa !97
  %490 = load i32, ptr %489, align 8
  %491 = and i32 %490, 65535
  %492 = icmp eq i32 %491, 23
  br i1 %492, label %493, label %733, !prof !140

493:                                              ; preds = %487
  %494 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !97
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 65535
  %498 = icmp eq i32 %497, 37
  br i1 %498, label %499, label %733, !prof !141

499:                                              ; preds = %493
  %500 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %501 = load i32, ptr %500, align 8, !tbaa !97
  %502 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 0, i64 1
  %503 = load ptr, ptr %502, align 8, !tbaa !97
  %504 = sext i32 %501 to i64
  %505 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %504
  %506 = load i32, ptr %505, align 4, !tbaa !101
  %507 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !101
  %508 = icmp sgt i32 %506, %507
  br i1 %508, label %509, label %730, !prof !142

509:                                              ; preds = %499
  %510 = lshr i32 %496, 16
  %511 = and i32 %510, 255
  %512 = zext nneg i32 %511 to i64
  %513 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !97
  %515 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %504
  %516 = load i32, ptr %515, align 4, !tbaa !101
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !97
  %520 = icmp ugt i8 %514, %519
  br i1 %520, label %730, label %521, !prof !143

521:                                              ; preds = %509
  %522 = call zeroext i8 @dbg_cnt(i32 noundef 3) #15
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %730, label %524, !prof !144

524:                                              ; preds = %521
  %525 = load i32, ptr %503, align 8
  %526 = and i32 %525, 65535
  %527 = trunc i32 %525 to i16
  switch i16 %527, label %730 [
    i16 30, label %528
    i16 37, label %613
  ], !prof !145

528:                                              ; preds = %524
  %529 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %504
  %530 = load i32, ptr %529, align 4, !tbaa !101
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %532, label %611, !prof !146

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %534 = load i64, ptr %533, align 8, !tbaa !97
  %535 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %504
  %536 = load i64, ptr %535, align 8, !tbaa !107
  %537 = sub nsw i64 %534, %536
  %538 = load i32, ptr %495, align 8
  %539 = lshr i32 %538, 16
  %540 = and i32 %539, 255
  %541 = call ptr @gen_int_mode(i64 noundef %537, i32 noundef %540) #15
  %542 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1, i32 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !97
  %544 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %543) #15
  %545 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !86
  %546 = icmp eq ptr %541, %545
  br i1 %546, label %547, label %553, !prof !147

547:                                              ; preds = %532
  %548 = load i64, ptr %533, align 8, !tbaa !97
  %549 = load i64, ptr %535, align 8, !tbaa !107
  %550 = icmp eq i64 %548, %549
  br i1 %550, label %551, label %605

551:                                              ; preds = %547
  %552 = call zeroext i8 @validate_change(ptr noundef nonnull %481, ptr noundef nonnull %502, ptr noundef nonnull %495, i8 noundef zeroext 0) #15
  br label %605

553:                                              ; preds = %532
  %554 = call i32 @rtx_cost(ptr noundef %541, i32 noundef 49, i8 noundef zeroext %544) #15
  %555 = call i32 @rtx_cost(ptr noundef nonnull %503, i32 noundef 23, i8 noundef zeroext %544) #15
  %556 = icmp slt i32 %554, %555
  br i1 %556, label %557, label %566, !prof !147

557:                                              ; preds = %553
  %558 = call i32 @have_add2_insn(ptr noundef nonnull %495, ptr noundef %541) #15
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %566, label %560

560:                                              ; preds = %557
  %561 = load i32, ptr %495, align 8
  %562 = lshr i32 %561, 16
  %563 = and i32 %562, 255
  %564 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %563, ptr noundef nonnull %495, ptr noundef %541) #15
  %565 = call zeroext i8 @validate_change(ptr noundef nonnull %481, ptr noundef nonnull %502, ptr noundef %564, i8 noundef zeroext 0) #15
  br label %605

566:                                              ; preds = %557, %553
  %567 = load i32, ptr %495, align 8
  %568 = and i32 %567, 16711680
  %569 = icmp eq i32 %568, 851968
  %570 = select i1 %569, i1 true, i1 %479
  br i1 %570, label %605, label %571, !prof !147

571:                                              ; preds = %566, %600
  %572 = phi i8 [ %603, %600 ], [ %478, %566 ]
  %573 = zext i8 %572 to i32
  %574 = load i32, ptr %495, align 8
  %575 = lshr i32 %574, 16
  %576 = trunc i32 %575 to i8
  %577 = icmp eq i8 %572, %576
  br i1 %577, label %605, label %578, !prof !148

578:                                              ; preds = %571
  %579 = call i32 @have_insn_for(i32 noundef 40, i32 noundef %573) #15
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %600, label %581, !prof !148

581:                                              ; preds = %578
  %582 = load i64, ptr %535, align 8, !tbaa !107
  %583 = zext i8 %572 to i64
  %584 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %583
  %585 = load i64, ptr %584, align 8, !tbaa !107
  %586 = xor i64 %585, -1
  %587 = load i64, ptr %533, align 8, !tbaa !97
  %588 = xor i64 %587, %582
  %589 = and i64 %588, %586
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %600, !prof !149

591:                                              ; preds = %581
  %592 = load i32, ptr %500, align 8, !tbaa !97
  %593 = call ptr @gen_rtx_REG(i32 noundef %573, i32 noundef %592) #15
  %594 = load i64, ptr %533, align 8, !tbaa !97
  %595 = call ptr @gen_int_mode(i64 noundef %594, i32 noundef %573) #15
  %596 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 40, i32 noundef 0, ptr noundef %593) #15
  %597 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %596, ptr noundef %595) #15
  %598 = call zeroext i8 @validate_change(ptr noundef nonnull %481, ptr noundef nonnull %488, ptr noundef %597, i8 noundef zeroext 0) #15
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %600, label %605, !prof !150

600:                                              ; preds = %591, %581, %578
  %601 = zext i8 %572 to i64
  %602 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %601
  %603 = load i8, ptr %602, align 1, !tbaa !97
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %605, label %571, !prof !148, !llvm.loop !151

605:                                              ; preds = %571, %591, %600, %566, %560, %551, %547
  %606 = load i32, ptr @move2add_luid, align 4, !tbaa !101
  store i32 %606, ptr %505, align 4, !tbaa !101
  %607 = load i32, ptr %495, align 8
  %608 = lshr i32 %607, 16
  %609 = and i32 %608, 255
  store i32 %609, ptr %515, align 4, !tbaa !101
  %610 = load i64, ptr %533, align 8, !tbaa !97
  store i64 %610, ptr %535, align 8, !tbaa !107
  br label %730

611:                                              ; preds = %528
  %612 = icmp eq i32 %526, 37
  br i1 %612, label %613, label %730, !prof !152

613:                                              ; preds = %524, %611
  %614 = load i32, ptr %505, align 4, !tbaa !101
  %615 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %616 = load i32, ptr %615, align 8, !tbaa !97
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !101
  %620 = icmp eq i32 %614, %619
  br i1 %620, label %621, label %730, !prof !153

621:                                              ; preds = %613
  %622 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %504
  %623 = load i32, ptr %622, align 4, !tbaa !101
  %624 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %617
  %625 = load i32, ptr %624, align 4, !tbaa !101
  %626 = icmp eq i32 %623, %625
  br i1 %626, label %627, label %730, !prof !154

627:                                              ; preds = %621
  %628 = load i32, ptr %495, align 8
  %629 = lshr i32 %628, 16
  %630 = and i32 %629, 255
  %631 = zext nneg i32 %630 to i64
  %632 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !97
  %634 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %617
  %635 = load i32, ptr %634, align 4, !tbaa !101
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !97
  %639 = icmp ugt i8 %633, %638
  br i1 %639, label %730, label %640, !prof !155

640:                                              ; preds = %627
  %641 = call ptr @next_nonnote_insn(ptr noundef nonnull %481) #15
  %642 = icmp eq ptr %641, null
  br i1 %642, label %656, label %643, !prof !155

643:                                              ; preds = %640
  %644 = load i32, ptr %641, align 8
  %645 = and i32 %644, 65535
  %646 = add nsw i32 %645, -7
  %647 = icmp ult i32 %646, 4
  br i1 %647, label %648, label %656, !prof !154

648:                                              ; preds = %643
  %649 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 1
  %650 = load ptr, ptr %649, align 8, !tbaa !97
  %651 = load i32, ptr %650, align 8
  %652 = and i32 %651, 65535
  %653 = icmp eq i32 %652, 23
  br i1 %653, label %656, label %654, !prof !154

654:                                              ; preds = %648
  %655 = call ptr @single_set_2(ptr noundef nonnull %641, ptr noundef nonnull %650) #15
  br label %656

656:                                              ; preds = %654, %648, %643, %640
  %657 = phi ptr [ null, %640 ], [ %655, %654 ], [ null, %643 ], [ %650, %648 ]
  %658 = icmp eq ptr %657, null
  br i1 %658, label %730, label %659, !prof !155

659:                                              ; preds = %656
  %660 = getelementptr inbounds %struct.rtx_def, ptr %657, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !97
  %662 = icmp eq ptr %661, %495
  br i1 %662, label %663, label %730, !prof !155

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.rtx_def, ptr %657, i64 0, i32 1, i32 0, i32 0, i64 1
  %665 = load ptr, ptr %664, align 8, !tbaa !97
  %666 = load i32, ptr %665, align 8
  %667 = and i32 %666, 65535
  %668 = icmp eq i32 %667, 49
  br i1 %668, label %669, label %730

669:                                              ; preds = %663
  %670 = getelementptr inbounds %struct.rtx_def, ptr %665, i64 0, i32 1
  %671 = load ptr, ptr %670, align 8, !tbaa !97
  %672 = icmp eq ptr %671, %495
  br i1 %672, label %673, label %730

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.rtx_def, ptr %665, i64 0, i32 1, i32 0, i32 0, i64 1
  %675 = load ptr, ptr %674, align 8, !tbaa !97
  %676 = load i32, ptr %675, align 8
  %677 = and i32 %676, 65535
  %678 = icmp eq i32 %677, 30
  br i1 %678, label %679, label %730

679:                                              ; preds = %673
  %680 = getelementptr inbounds %struct.rtx_def, ptr %675, i64 0, i32 1
  %681 = load i64, ptr %680, align 8, !tbaa !97
  %682 = load i32, ptr %615, align 8, !tbaa !97
  %683 = zext i32 %682 to i64
  %684 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %683
  %685 = load i64, ptr %684, align 8, !tbaa !107
  %686 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %504
  %687 = load i64, ptr %686, align 8, !tbaa !107
  %688 = add nsw i64 %685, %681
  %689 = sub nsw i64 %688, %687
  %690 = load i32, ptr %495, align 8
  %691 = lshr i32 %690, 16
  %692 = and i32 %691, 255
  %693 = call ptr @gen_int_mode(i64 noundef %689, i32 noundef %692) #15
  %694 = getelementptr inbounds %struct.rtx_def, ptr %481, i64 0, i32 1, i32 0, i32 1
  %695 = load ptr, ptr %694, align 8, !tbaa !97
  %696 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %695) #15
  %697 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !86
  %698 = icmp eq ptr %693, %697
  br i1 %698, label %699, label %701

699:                                              ; preds = %679
  %700 = call zeroext i8 @validate_change(ptr noundef %641, ptr noundef nonnull %664, ptr noundef nonnull %495, i8 noundef zeroext 0) #15
  br label %717

701:                                              ; preds = %679
  %702 = call i32 @rtx_cost(ptr noundef %693, i32 noundef 49, i8 noundef zeroext %696) #15
  %703 = call i32 @rtx_cost(ptr noundef nonnull %675, i32 noundef 23, i8 noundef zeroext %696) #15
  %704 = add nsw i32 %703, 4
  %705 = icmp slt i32 %702, %704
  br i1 %705, label %706, label %717

706:                                              ; preds = %701
  %707 = call i32 @have_add2_insn(ptr noundef nonnull %495, ptr noundef %693) #15
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %717, label %709

709:                                              ; preds = %706
  %710 = load i32, ptr %495, align 8
  %711 = lshr i32 %710, 16
  %712 = and i32 %711, 255
  %713 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %712, ptr noundef nonnull %495, ptr noundef %693) #15
  %714 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %495, ptr noundef %713) #15
  %715 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 1
  %716 = call zeroext i8 @validate_change(ptr noundef %641, ptr noundef nonnull %715, ptr noundef %714, i8 noundef zeroext 0) #15
  br label %717

717:                                              ; preds = %709, %706, %701, %699
  %718 = phi i8 [ %700, %699 ], [ %716, %709 ], [ 0, %706 ], [ 0, %701 ]
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %722, label %720

720:                                              ; preds = %717
  %721 = call ptr @delete_insn(ptr noundef nonnull %481) #15
  br label %722

722:                                              ; preds = %720, %717
  %723 = load i32, ptr %495, align 8
  %724 = lshr i32 %723, 16
  %725 = and i32 %724, 255
  store i32 %725, ptr %515, align 4, !tbaa !101
  %726 = load i32, ptr %495, align 8
  %727 = lshr i32 %726, 16
  %728 = and i32 %727, 255
  %729 = call i64 @trunc_int_for_mode(i64 noundef %688, i32 noundef %728) #15
  store i64 %729, ptr %686, align 8, !tbaa !107
  br label %730

730:                                              ; preds = %524, %656, %659, %663, %669, %673, %722, %627, %621, %613, %611, %605, %521, %509, %499
  %731 = phi i1 [ false, %605 ], [ true, %509 ], [ true, %621 ], [ true, %613 ], [ true, %611 ], [ true, %521 ], [ true, %499 ], [ true, %627 ], [ false, %722 ], [ true, %673 ], [ true, %669 ], [ true, %663 ], [ true, %659 ], [ true, %656 ], [ true, %524 ]
  %732 = phi ptr [ %481, %605 ], [ %481, %509 ], [ %481, %621 ], [ %481, %613 ], [ %481, %611 ], [ %481, %521 ], [ %481, %499 ], [ %481, %627 ], [ %641, %722 ], [ %481, %673 ], [ %481, %669 ], [ %481, %663 ], [ %481, %659 ], [ %481, %656 ], [ %481, %524 ]
  br i1 %731, label %733, label %822, !prof !156

733:                                              ; preds = %730, %493, %487
  %734 = phi ptr [ %732, %730 ], [ %481, %493 ], [ %481, %487 ]
  %735 = getelementptr inbounds %struct.rtx_def, ptr %734, i64 1, i32 1, i32 0, i32 0, i64 1
  %736 = load ptr, ptr %735, align 8, !tbaa !97
  %737 = icmp eq ptr %736, null
  br i1 %737, label %760, label %738, !prof !157

738:                                              ; preds = %733, %756
  %739 = phi ptr [ %758, %756 ], [ %736, %733 ]
  %740 = load i32, ptr %739, align 8
  %741 = and i32 %740, 16711680
  %742 = icmp eq i32 %741, 131072
  br i1 %742, label %743, label %756, !prof !158

743:                                              ; preds = %738
  %744 = getelementptr inbounds %struct.rtx_def, ptr %739, i64 0, i32 1
  %745 = load ptr, ptr %744, align 8, !tbaa !97
  %746 = load i32, ptr %745, align 8
  %747 = and i32 %746, 65535
  %748 = icmp eq i32 %747, 37
  br i1 %748, label %749, label %756

749:                                              ; preds = %743
  %750 = getelementptr inbounds %struct.rtx_def, ptr %745, i64 0, i32 1
  %751 = load i32, ptr %750, align 8, !tbaa !97
  %752 = icmp slt i32 %751, 53
  br i1 %752, label %753, label %756

753:                                              ; preds = %749
  %754 = sext i32 %751 to i64
  %755 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %754
  store i32 0, ptr %755, align 4, !tbaa !101
  br label %756

756:                                              ; preds = %753, %749, %743, %738
  %757 = getelementptr inbounds %struct.rtx_def, ptr %739, i64 0, i32 1, i32 0, i32 0, i64 1
  %758 = load ptr, ptr %757, align 8, !tbaa !97
  %759 = icmp eq ptr %758, null
  br i1 %759, label %760, label %738, !prof !159, !llvm.loop !160

760:                                              ; preds = %756, %733
  %761 = getelementptr inbounds %struct.rtx_def, ptr %734, i64 1
  %762 = load ptr, ptr %761, align 8, !tbaa !97
  call void @note_stores(ptr noundef %762, ptr noundef nonnull @move2add_note_store, ptr noundef null) #15
  %763 = call i32 @any_condjump_p(ptr noundef %734) #15
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %808, label %765, !prof !161

765:                                              ; preds = %760
  %766 = call ptr @fis_get_condition(ptr noundef %734) #15
  %767 = icmp eq ptr %766, null
  br i1 %767, label %808, label %768, !prof !162

768:                                              ; preds = %765
  %769 = load i32, ptr %766, align 8
  %770 = and i32 %769, 65535
  %771 = icmp eq i32 %770, 80
  br i1 %771, label %772, label %808, !prof !163

772:                                              ; preds = %768
  %773 = getelementptr inbounds %struct.rtx_def, ptr %766, i64 0, i32 1
  %774 = load ptr, ptr %773, align 8, !tbaa !97
  %775 = load i32, ptr %774, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 37
  br i1 %777, label %778, label %808, !prof !164

778:                                              ; preds = %772
  %779 = call i32 @reg_set_p(ptr noundef nonnull %774, ptr noundef %734) #15
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %808, !prof !165

781:                                              ; preds = %778
  %782 = load ptr, ptr %773, align 8, !tbaa !97
  %783 = load i32, ptr %782, align 8
  %784 = lshr i32 %783, 16
  %785 = and i32 %784, 255
  %786 = zext nneg i32 %785 to i64
  %787 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %786
  %788 = load i8, ptr %787, align 1, !tbaa !97
  %789 = and i8 %788, -2
  %790 = icmp eq i8 %789, 2
  br i1 %790, label %791, label %808, !prof !165

791:                                              ; preds = %781
  %792 = getelementptr inbounds %struct.rtx_def, ptr %782, i64 0, i32 1
  %793 = load i32, ptr %792, align 8, !tbaa !97
  %794 = zext i32 %793 to i64
  %795 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %794, i64 %786
  %796 = load i8, ptr %795, align 1, !tbaa !97
  %797 = icmp eq i8 %796, 1
  br i1 %797, label %798, label %808, !prof !165

798:                                              ; preds = %791
  %799 = getelementptr inbounds %struct.rtx_def, ptr %766, i64 0, i32 1, i32 0, i32 0, i64 1
  %800 = load ptr, ptr %799, align 8, !tbaa !97
  %801 = load i32, ptr %800, align 8
  %802 = and i32 %801, 65535
  %803 = icmp eq i32 %802, 30
  br i1 %803, label %804, label %808, !prof !165

804:                                              ; preds = %798
  %805 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %782, ptr noundef nonnull %800) #15
  %806 = getelementptr inbounds %struct.rtx_def, ptr %805, i64 0, i32 1
  %807 = load ptr, ptr %806, align 8, !tbaa !97
  call void @move2add_note_store(ptr noundef %807, ptr noundef %805, ptr poison)
  br label %808

808:                                              ; preds = %804, %798, %791, %781, %778, %772, %768, %765, %760
  %809 = load i32, ptr %734, align 8
  %810 = and i32 %809, 65535
  %811 = icmp eq i32 %810, 10
  br i1 %811, label %812, label %822, !prof !166

812:                                              ; preds = %808, %819
  %813 = phi i64 [ %820, %819 ], [ 52, %808 ]
  %814 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %813
  %815 = load i8, ptr %814, align 1, !tbaa !97
  %816 = icmp eq i8 %815, 0
  br i1 %816, label %819, label %817, !prof !167

817:                                              ; preds = %812
  %818 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %813
  store i32 0, ptr %818, align 4, !tbaa !101
  br label %819

819:                                              ; preds = %817, %812
  %820 = add nsw i64 %813, -1
  %821 = icmp eq i64 %813, 0
  br i1 %821, label %822, label %812, !prof !168, !llvm.loop !169

822:                                              ; preds = %819, %808, %730, %485, %480
  %823 = phi ptr [ %481, %485 ], [ %481, %480 ], [ %732, %730 ], [ %734, %808 ], [ %734, %819 ]
  %824 = getelementptr inbounds %struct.rtx_def, ptr %823, i64 0, i32 1, i32 0, i32 0, i64 2
  %825 = load ptr, ptr %824, align 8, !tbaa !97
  %826 = load i32, ptr @move2add_luid, align 4, !tbaa !101
  %827 = add nsw i32 %826, 1
  store i32 %827, ptr @move2add_luid, align 4, !tbaa !101
  %828 = icmp eq ptr %825, null
  br i1 %828, label %829, label %480, !prof !170, !llvm.loop !171

829:                                              ; preds = %822, %475
  %830 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !101
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %833, label %832, !prof !106

832:                                              ; preds = %829
  call fastcc void @reload_cse_regs_1(ptr noundef %0)
  br label %833

833:                                              ; preds = %832, %829
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reload_cse_regs_1(ptr noundef %0) unnamed_addr #9 !prof !172 !PGOFuncName !173 {
  %2 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #15
  tail call void @cselib_init(i32 noundef 1) #15
  tail call void @init_alias_analysis() #15
  %3 = icmp eq ptr %0, null
  br i1 %3, label %346, label %4, !prof !138

4:                                                ; preds = %1, %342
  %5 = phi ptr [ %344, %342 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %342, !prof !174

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %342 [
    i16 23, label %15
    i16 15, label %138
  ], !prof !175

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %17) #15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = tail call i32 @true_regnum(ptr noundef %20) #15
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %115, label %23, !prof !176

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = tail call i32 @side_effects_p(ptr noundef %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %115, !prof !177

28:                                               ; preds = %23
  %29 = tail call i32 @true_regnum(ptr noundef %25) #15
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %115, label %31, !prof !178

31:                                               ; preds = %28
  %32 = zext nneg i32 %21 to i64
  %33 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !101
  %35 = load ptr, ptr %19, align 8, !tbaa !97
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = tail call ptr @cselib_lookup(ptr noundef %25, i32 noundef %38, i32 noundef 0) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %115, label %41, !prof !179

41:                                               ; preds = %31
  %42 = load i32, ptr %25, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %57 [
    i16 43, label %44
    i16 37, label %48
  ], !prof !180

44:                                               ; preds = %41
  %45 = lshr i32 %42, 16
  %46 = and i32 %45, 255
  %47 = tail call i32 @ix86_memory_move_cost(i32 noundef %46, i32 noundef %34, i32 noundef 1) #15
  br label %59

48:                                               ; preds = %41
  %49 = lshr i32 %42, 16
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !97
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !101
  %56 = tail call i32 @ix86_register_move_cost(i32 noundef %50, i32 noundef %55, i32 noundef %34) #15
  br label %59

57:                                               ; preds = %41
  %58 = tail call i32 @rtx_cost(ptr noundef nonnull %25, i32 noundef 23, i8 noundef zeroext %18) #15
  br label %59

59:                                               ; preds = %57, %48, %44
  %60 = phi i32 [ %47, %44 ], [ %56, %48 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.cselib_val_struct, ptr %39, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  %63 = icmp eq ptr %62, null
  br i1 %63, label %115, label %64, !prof !181

64:                                               ; preds = %59, %110
  %65 = phi ptr [ %113, %110 ], [ %62, %59 ]
  %66 = phi i32 [ %112, %110 ], [ 0, %59 ]
  %67 = phi i32 [ %111, %110 ], [ %60, %59 ]
  %68 = getelementptr inbounds %struct.elt_loc_list, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !182
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !101
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %76, label %81, !prof !184

76:                                               ; preds = %64
  %77 = tail call i32 @references_value_p(ptr noundef nonnull %69, i32 noundef 0) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81, !prof !185

79:                                               ; preds = %76
  %80 = tail call i32 @rtx_cost(ptr noundef nonnull %69, i32 noundef 23, i8 noundef zeroext %18) #15
  br label %94

81:                                               ; preds = %76, %64
  %82 = load i32, ptr %69, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %110, !prof !186

85:                                               ; preds = %81
  %86 = lshr i32 %82, 16
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !97
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !101
  %93 = tail call i32 @ix86_register_move_cost(i32 noundef %87, i32 noundef %92, i32 noundef %34) #15
  br label %94

94:                                               ; preds = %85, %79
  %95 = phi i32 [ %93, %85 ], [ %80, %79 ]
  %96 = icmp slt i32 %95, %67
  br i1 %96, label %108, label %97, !prof !187

97:                                               ; preds = %94
  %98 = icmp eq i32 %95, %67
  br i1 %98, label %99, label %110, !prof !184

99:                                               ; preds = %97
  %100 = load i32, ptr %69, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 37
  br i1 %102, label %103, label %110, !prof !188

103:                                              ; preds = %99
  %104 = load ptr, ptr %24, align 8, !tbaa !97
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 37
  br i1 %107, label %110, label %108

108:                                              ; preds = %103, %94
  %109 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %69, i8 noundef zeroext 1) #15
  br label %110

110:                                              ; preds = %108, %103, %99, %97, %81
  %111 = phi i32 [ %67, %81 ], [ %95, %108 ], [ %67, %103 ], [ %67, %99 ], [ %67, %97 ]
  %112 = phi i32 [ %66, %81 ], [ 1, %108 ], [ %66, %103 ], [ %66, %99 ], [ %66, %97 ]
  %113 = load ptr, ptr %65, align 8, !tbaa !86
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %64, !prof !189, !llvm.loop !190

115:                                              ; preds = %110, %15, %23, %28, %31, %59
  %116 = phi i32 [ 0, %15 ], [ 0, %28 ], [ 0, %23 ], [ 0, %31 ], [ 0, %59 ], [ %112, %110 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %135, !prof !191

118:                                              ; preds = %115
  %119 = load ptr, ptr %19, align 8, !tbaa !97
  %120 = tail call i32 @cselib_reg_set_mode(ptr noundef %119) #15
  %121 = load ptr, ptr %19, align 8, !tbaa !97
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %126, label %130, !prof !192

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !97
  %129 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %121, ptr noundef %128) #15
  br label %130

130:                                              ; preds = %118, %126
  %131 = phi i32 [ %129, %126 ], [ 0, %118 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133, !prof !193

133:                                              ; preds = %130
  %134 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %5) #15
  br label %342

135:                                              ; preds = %115
  %136 = tail call i32 @apply_change_group() #15
  br label %342

137:                                              ; preds = %130
  tail call fastcc void @reload_cse_simplify_operands(ptr noundef nonnull %5, ptr noundef %2)
  br label %342

138:                                              ; preds = %10
  %139 = tail call i32 @asm_noperands(ptr noundef nonnull %12) #15
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %141, label %166, !prof !194

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !97
  %144 = load i32, ptr %143, align 8, !tbaa !195
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  %147 = zext nneg i32 %144 to i64
  br label %148

148:                                              ; preds = %146, %164
  %149 = phi i64 [ %147, %146 ], [ %150, %164 ]
  %150 = add nsw i64 %149, -1
  %151 = load ptr, ptr %142, align 8, !tbaa !97
  %152 = getelementptr inbounds %struct.rtvec_def, ptr %151, i64 0, i32 1, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !86
  %154 = load i32, ptr %153, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 25
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !97
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 37
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  tail call void @cselib_invalidate_rtx(ptr noundef nonnull %159) #15
  br label %164

164:                                              ; preds = %163, %157, %148
  %165 = icmp sgt i64 %149, 1
  br i1 %165, label %148, label %166, !llvm.loop !197

166:                                              ; preds = %164, %141, %138
  %167 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !97
  %169 = load i32, ptr %168, align 8, !tbaa !195
  %170 = zext i32 %169 to i64
  br label %171

171:                                              ; preds = %209, %166
  %172 = phi i64 [ %174, %209 ], [ %170, %166 ]
  %173 = phi ptr [ %211, %209 ], [ null, %166 ]
  %174 = add nsw i64 %172, -1
  %175 = trunc i64 %172 to i32
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %212, !prof !198

177:                                              ; preds = %171
  %178 = add nsw i64 %172, -1
  %179 = load ptr, ptr %167, align 8, !tbaa !97
  %180 = getelementptr inbounds %struct.rtvec_def, ptr %179, i64 0, i32 1, i64 %178
  %181 = load ptr, ptr %180, align 8, !tbaa !86
  %182 = load i32, ptr %181, align 8
  %183 = trunc i32 %182 to i16
  switch i16 %183, label %209 [
    i16 23, label %184
    i16 25, label %207
  ], !prof !199

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !97
  %187 = tail call i32 @cselib_reg_set_mode(ptr noundef %186) #15
  %188 = load ptr, ptr %185, align 8, !tbaa !97
  %189 = load i32, ptr %188, align 8
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  %192 = icmp eq i32 %187, %191
  br i1 %192, label %193, label %197, !prof !192

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !97
  %196 = tail call i32 @rtx_equal_for_cselib_p(ptr noundef nonnull %188, ptr noundef %195) #15
  br label %197

197:                                              ; preds = %184, %193
  %198 = phi i32 [ %196, %193 ], [ 0, %184 ]
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %209, label %200, !prof !200

200:                                              ; preds = %197
  %201 = load ptr, ptr %185, align 8, !tbaa !97
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, -2147418113
  %204 = icmp eq i32 %203, -2147483611
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = icmp eq ptr %173, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %205, %200, %177
  %208 = phi ptr [ %173, %200 ], [ %173, %177 ], [ %201, %205 ]
  br label %209

209:                                              ; preds = %207, %205, %197, %177
  %210 = phi i1 [ true, %207 ], [ false, %197 ], [ false, %205 ], [ false, %177 ]
  %211 = phi ptr [ %208, %207 ], [ %173, %197 ], [ %173, %205 ], [ %173, %177 ]
  br i1 %210, label %171, label %214, !prof !201, !llvm.loop !202

212:                                              ; preds = %171
  %213 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %5) #15
  br label %342

214:                                              ; preds = %209
  %215 = load ptr, ptr %167, align 8, !tbaa !97
  %216 = load i32, ptr %215, align 8, !tbaa !195
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %336, !prof !203

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 1
  %220 = zext nneg i32 %216 to i64
  br label %221

221:                                              ; preds = %218, %333
  %222 = phi i64 [ %220, %218 ], [ %224, %333 ]
  %223 = phi i32 [ 0, %218 ], [ %334, %333 ]
  %224 = add nsw i64 %222, -1
  %225 = load ptr, ptr %167, align 8, !tbaa !97
  %226 = getelementptr inbounds %struct.rtvec_def, ptr %225, i64 0, i32 1, i64 %224
  %227 = load ptr, ptr %226, align 8, !tbaa !86
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 23
  br i1 %230, label %231, label %333, !prof !204

231:                                              ; preds = %221
  %232 = load ptr, ptr %219, align 8, !tbaa !97
  %233 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %232) #15
  %234 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !97
  %236 = tail call i32 @true_regnum(ptr noundef %235) #15
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %330, label %238, !prof !176

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !97
  %241 = tail call i32 @side_effects_p(ptr noundef %240) #15
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %330, !prof !177

243:                                              ; preds = %238
  %244 = tail call i32 @true_regnum(ptr noundef %240) #15
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %330, label %246, !prof !178

246:                                              ; preds = %243
  %247 = zext nneg i32 %236 to i64
  %248 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !101
  %250 = load ptr, ptr %234, align 8, !tbaa !97
  %251 = load i32, ptr %250, align 8
  %252 = lshr i32 %251, 16
  %253 = and i32 %252, 255
  %254 = tail call ptr @cselib_lookup(ptr noundef %240, i32 noundef %253, i32 noundef 0) #15
  %255 = icmp eq ptr %254, null
  br i1 %255, label %330, label %256, !prof !179

256:                                              ; preds = %246
  %257 = load i32, ptr %240, align 8
  %258 = trunc i32 %257 to i16
  switch i16 %258, label %272 [
    i16 43, label %259
    i16 37, label %263
  ], !prof !180

259:                                              ; preds = %256
  %260 = lshr i32 %257, 16
  %261 = and i32 %260, 255
  %262 = tail call i32 @ix86_memory_move_cost(i32 noundef %261, i32 noundef %249, i32 noundef 1) #15
  br label %274

263:                                              ; preds = %256
  %264 = lshr i32 %257, 16
  %265 = and i32 %264, 255
  %266 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !97
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !101
  %271 = tail call i32 @ix86_register_move_cost(i32 noundef %265, i32 noundef %270, i32 noundef %249) #15
  br label %274

272:                                              ; preds = %256
  %273 = tail call i32 @rtx_cost(ptr noundef nonnull %240, i32 noundef 23, i8 noundef zeroext %233) #15
  br label %274

274:                                              ; preds = %272, %263, %259
  %275 = phi i32 [ %262, %259 ], [ %271, %263 ], [ %273, %272 ]
  %276 = getelementptr inbounds %struct.cselib_val_struct, ptr %254, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !86
  %278 = icmp eq ptr %277, null
  br i1 %278, label %330, label %279, !prof !181

279:                                              ; preds = %274, %325
  %280 = phi ptr [ %328, %325 ], [ %277, %274 ]
  %281 = phi i32 [ %327, %325 ], [ 0, %274 ]
  %282 = phi i32 [ %326, %325 ], [ %275, %274 ]
  %283 = getelementptr inbounds %struct.elt_loc_list, ptr %280, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !182
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 65535
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !101
  %290 = icmp eq i32 %289, 9
  br i1 %290, label %291, label %296, !prof !184

291:                                              ; preds = %279
  %292 = tail call i32 @references_value_p(ptr noundef nonnull %284, i32 noundef 0) #15
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %296, !prof !185

294:                                              ; preds = %291
  %295 = tail call i32 @rtx_cost(ptr noundef nonnull %284, i32 noundef 23, i8 noundef zeroext %233) #15
  br label %309

296:                                              ; preds = %291, %279
  %297 = load i32, ptr %284, align 8
  %298 = and i32 %297, 65535
  %299 = icmp eq i32 %298, 37
  br i1 %299, label %300, label %325, !prof !186

300:                                              ; preds = %296
  %301 = lshr i32 %297, 16
  %302 = and i32 %301, 255
  %303 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1
  %304 = load i32, ptr %303, align 8, !tbaa !97
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !101
  %308 = tail call i32 @ix86_register_move_cost(i32 noundef %302, i32 noundef %307, i32 noundef %249) #15
  br label %309

309:                                              ; preds = %300, %294
  %310 = phi i32 [ %308, %300 ], [ %295, %294 ]
  %311 = icmp slt i32 %310, %282
  br i1 %311, label %323, label %312, !prof !187

312:                                              ; preds = %309
  %313 = icmp eq i32 %310, %282
  br i1 %313, label %314, label %325, !prof !184

314:                                              ; preds = %312
  %315 = load i32, ptr %284, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 37
  br i1 %317, label %318, label %325, !prof !188

318:                                              ; preds = %314
  %319 = load ptr, ptr %239, align 8, !tbaa !97
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 37
  br i1 %322, label %325, label %323

323:                                              ; preds = %318, %309
  %324 = tail call zeroext i8 @validate_unshare_change(ptr noundef nonnull %5, ptr noundef nonnull %239, ptr noundef nonnull %284, i8 noundef zeroext 1) #15
  br label %325

325:                                              ; preds = %323, %318, %314, %312, %296
  %326 = phi i32 [ %282, %296 ], [ %310, %323 ], [ %282, %318 ], [ %282, %314 ], [ %282, %312 ]
  %327 = phi i32 [ %281, %296 ], [ 1, %323 ], [ %281, %318 ], [ %281, %314 ], [ %281, %312 ]
  %328 = load ptr, ptr %280, align 8, !tbaa !86
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %279, !prof !189, !llvm.loop !190

330:                                              ; preds = %325, %231, %238, %243, %246, %274
  %331 = phi i32 [ 0, %231 ], [ 0, %243 ], [ 0, %238 ], [ 0, %246 ], [ 0, %274 ], [ %327, %325 ]
  %332 = add nsw i32 %331, %223
  br label %333

333:                                              ; preds = %330, %221
  %334 = phi i32 [ %332, %330 ], [ %223, %221 ]
  %335 = icmp sgt i64 %222, 1
  br i1 %335, label %221, label %336, !prof !205, !llvm.loop !206

336:                                              ; preds = %333, %214
  %337 = phi i32 [ 0, %214 ], [ %334, %333 ]
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %341, !prof !194

339:                                              ; preds = %336
  %340 = tail call i32 @apply_change_group() #15
  br label %342

341:                                              ; preds = %336
  tail call fastcc void @reload_cse_simplify_operands(ptr noundef nonnull %5, ptr noundef %2)
  br label %342

342:                                              ; preds = %341, %339, %212, %137, %135, %133, %10, %4
  tail call void @cselib_process_insn(ptr noundef nonnull %5) #15
  %343 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %344 = load ptr, ptr %343, align 8, !tbaa !97
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %4, !prof !207, !llvm.loop !208

346:                                              ; preds = %342, %1
  tail call void @end_alias_analysis() #15
  tail call void @cselib_finish() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_postreload() #10 !prof !105 !PGOFuncName !209 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !101
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !210
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_postreload() #9 !prof !105 !PGOFuncName !211 {
  %1 = tail call zeroext i8 @dbg_cnt(i32 noundef 22) #15
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3, !prof !106

3:                                                ; preds = %0
  %4 = tail call ptr @get_insns() #15
  tail call void @reload_cse_regs(ptr noundef %4)
  %5 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !101
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !210

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @purge_all_dead_edges() #15
  br label %9

9:                                                ; preds = %3, %7, %0
  ret i32 0
}

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cselib_init(i32 noundef) local_unnamed_addr #3

declare void @init_alias_analysis() local_unnamed_addr #3

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

declare void @end_alias_analysis() local_unnamed_addr #3

declare void @cselib_finish() local_unnamed_addr #3

declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @reload_cse_simplify_operands(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !212 !PGOFuncName !213 {
  %3 = alloca [30 x i64], align 16
  %4 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #15
  tail call void @extract_insn(ptr noundef %0) #15
  %5 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !214
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8, !prof !216
  br i1 %9, label %328, label %10, !prof !216

10:                                               ; preds = %2
  %11 = tail call i32 @constrain_operands(i32 noundef 1) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !217

13:                                               ; preds = %10
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 396, ptr noundef nonnull @.str.2) #15
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !214
  %16 = sext i8 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = alloca i8, i64 %17, align 16
  %19 = alloca i8, i64 %17, align 16
  %20 = alloca i8, i64 %17, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %18, i8 0, i64 %17, i1 false), !prof !218
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %19, i8 0, i64 %17, i1 false), !prof !218
  %21 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !219
  %22 = icmp sgt i8 %21, 0
  br i1 %22, label %26, label %23, !prof !220

23:                                               ; preds = %69, %14
  %24 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !219
  %25 = icmp sgt i8 %24, 0
  br i1 %25, label %83, label %74, !prof !220

26:                                               ; preds = %14, %69
  %27 = phi i64 [ %70, %69 ], [ 0, %14 ]
  %28 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %27
  store i64 0, ptr %28, align 8, !tbaa !107
  %29 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %69, label %34, !prof !221

34:                                               ; preds = %26
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !101
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %43, !prof !222

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %27
  %41 = load i32, ptr %40, align 4, !tbaa !101
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43, !prof !223

43:                                               ; preds = %39, %34
  %44 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %27
  %45 = load i32, ptr %44, align 4, !tbaa !101
  %46 = tail call ptr @cselib_lookup(ptr noundef nonnull %30, i32 noundef %45, i32 noundef 0) #15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48, !prof !224

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cselib_val_struct, ptr %46, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !225

52:                                               ; preds = %48, %66
  %53 = phi ptr [ %67, %66 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.elt_loc_list, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %66, !prof !226

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !97
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = load i64, ptr %28, align 8, !tbaa !107
  %65 = or i64 %63, %64
  store i64 %65, ptr %28, align 8, !tbaa !107
  br label %66

66:                                               ; preds = %52, %59
  %67 = load ptr, ptr %53, align 8, !tbaa !86
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %52, !prof !227, !llvm.loop !228

69:                                               ; preds = %66, %48, %39, %43, %26
  %70 = add nuw nsw i64 %27, 1
  %71 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !219
  %72 = sext i8 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %26, label %23, !prof !229, !llvm.loop !230

74:                                               ; preds = %202, %23
  %75 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !214
  %76 = icmp sgt i8 %75, 0
  br i1 %76, label %77, label %222, !prof !220

77:                                               ; preds = %74
  %78 = zext nneg i8 %75 to i64
  %79 = load i32, ptr @which_alternative, align 4, !tbaa !101
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %18, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !101
  br label %207

83:                                               ; preds = %23, %202
  %84 = phi i64 [ %203, %202 ], [ 0, %23 ]
  %85 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !214
  %86 = sext i8 %85 to i64
  %87 = shl nsw i64 %86, 2
  %88 = alloca i8, i64 %87, align 16
  %89 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %84
  store ptr %88, ptr %89, align 8, !tbaa !86
  %90 = icmp sgt i8 %85, 0
  br i1 %90, label %91, label %94, !prof !231

91:                                               ; preds = %83
  %92 = zext nneg i8 %85 to i64
  %93 = shl nuw nsw i64 %92, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %88, i8 -1, i64 %93, i1 false), !tbaa !101
  br label %94

94:                                               ; preds = %91, %83
  %95 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %84
  %96 = load ptr, ptr %95, align 8, !tbaa !86
  %97 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %84
  %98 = load i32, ptr %97, align 4, !tbaa !101
  %99 = load i8, ptr %96, align 1, !tbaa !97
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %122, label %101, !prof !232

101:                                              ; preds = %94, %118
  %102 = phi i8 [ %120, %118 ], [ %99, %94 ]
  %103 = phi i32 [ %119, %118 ], [ 0, %94 ]
  %104 = phi ptr [ %105, %118 ], [ %96, %94 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  switch i8 %102, label %118 [
    i8 44, label %106
    i8 63, label %108
    i8 33, label %113
  ], !prof !233

106:                                              ; preds = %101
  %107 = add nsw i32 %103, 1
  br label %118

108:                                              ; preds = %101
  %109 = sext i32 %103 to i64
  %110 = getelementptr inbounds i32, ptr %18, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !101
  %112 = add nsw i32 %111, 3
  store i32 %112, ptr %110, align 4, !tbaa !101
  br label %118

113:                                              ; preds = %101
  %114 = sext i32 %103 to i64
  %115 = getelementptr inbounds i32, ptr %18, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !101
  %117 = add nsw i32 %116, 300
  store i32 %117, ptr %115, align 4, !tbaa !101
  br label %118

118:                                              ; preds = %101, %108, %113, %106
  %119 = phi i32 [ %107, %106 ], [ %103, %108 ], [ %103, %113 ], [ %103, %101 ]
  %120 = load i8, ptr %105, align 1, !tbaa !97
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %101, !prof !234, !llvm.loop !235

122:                                              ; preds = %118, %94
  %123 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %84
  %124 = load ptr, ptr %123, align 8, !tbaa !86
  %125 = call i32 @true_regnum(ptr noundef %124) #15
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %202, label %127, !prof !236

127:                                              ; preds = %122
  %128 = load i8, ptr %96, align 1, !tbaa !97
  switch i8 %128, label %129 [
    i8 61, label %202
    i8 43, label %202
  ], !prof !237

129:                                              ; preds = %127
  %130 = getelementptr inbounds [30 x i64], ptr %3, i64 0, i64 %84
  %131 = load i64, ptr %130, align 8, !tbaa !107
  br label %132

132:                                              ; preds = %129, %199
  %133 = phi i64 [ 0, %129 ], [ %200, %199 ]
  %134 = shl nuw i64 1, %133
  %135 = and i64 %131, %134
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %199, label %137, !prof !238

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %139 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %140 = shl i32 %98, 16
  %141 = and i32 %140, 16711680
  %142 = load i32, ptr %138, align 8, !tbaa !97
  %143 = trunc i64 %133 to i32
  call void @df_ref_change_reg_with_loc(i32 noundef %142, i32 noundef %143, ptr noundef %1) #15
  %144 = trunc i64 %133 to i32
  store i32 %144, ptr %138, align 8, !tbaa !97
  %145 = load i32, ptr %1, align 8
  %146 = and i32 %145, -16711681
  %147 = or disjoint i32 %146, %141
  store i32 %147, ptr %1, align 8
  br label %148

148:                                              ; preds = %192, %137
  %149 = phi i32 [ 0, %137 ], [ %193, %192 ]
  %150 = phi ptr [ %96, %137 ], [ %197, %192 ]
  %151 = phi i32 [ 0, %137 ], [ %194, %192 ]
  %152 = load i8, ptr %150, align 1, !tbaa !97
  switch i8 %152, label %157 [
    i8 61, label %192
    i8 43, label %192
    i8 63, label %192
    i8 35, label %192
    i8 38, label %192
    i8 33, label %192
    i8 42, label %192
    i8 37, label %192
    i8 48, label %192
    i8 49, label %192
    i8 50, label %192
    i8 51, label %192
    i8 52, label %192
    i8 53, label %192
    i8 54, label %192
    i8 55, label %192
    i8 56, label %192
    i8 57, label %192
    i8 60, label %192
    i8 62, label %192
    i8 86, label %192
    i8 111, label %192
    i8 69, label %192
    i8 70, label %192
    i8 71, label %192
    i8 72, label %192
    i8 115, label %192
    i8 105, label %192
    i8 110, label %192
    i8 73, label %192
    i8 74, label %192
    i8 75, label %192
    i8 76, label %192
    i8 77, label %192
    i8 78, label %192
    i8 79, label %192
    i8 80, label %192
    i8 112, label %192
    i8 88, label %192
    i8 109, label %192
    i8 103, label %153
    i8 114, label %153
    i8 44, label %164
    i8 0, label %164
  ], !prof !239

153:                                              ; preds = %148, %148
  %154 = sext i32 %149 to i64
  %155 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %154, i64 13
  %156 = load i32, ptr %155, align 4, !tbaa !101
  br label %192

157:                                              ; preds = %148
  %158 = sext i32 %149 to i64
  %159 = call i32 @lookup_constraint(ptr noundef nonnull %150) #15
  %160 = call i32 @regclass_for_constraint(i32 noundef %159) #15
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %158, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !101
  br label %192

164:                                              ; preds = %148, %148
  %165 = sext i32 %151 to i64
  %166 = getelementptr inbounds i32, ptr %88, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !101
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %190, !prof !240

169:                                              ; preds = %164
  %170 = call i32 @reg_fits_class_p(ptr noundef nonnull %1, i32 noundef %149, i32 noundef 0, i32 noundef %98) #15
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %190, label %172, !prof !241

172:                                              ; preds = %169
  %173 = load ptr, ptr %123, align 8, !tbaa !86
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 30
  br i1 %176, label %177, label %185, !prof !242

177:                                              ; preds = %172
  %178 = load ptr, ptr %139, align 8, !tbaa !97
  %179 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %178) #15
  %180 = call i32 @rtx_cost(ptr noundef nonnull %173, i32 noundef 23, i8 noundef zeroext %179) #15
  %181 = load ptr, ptr %139, align 8, !tbaa !97
  %182 = call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %181) #15
  %183 = call i32 @rtx_cost(ptr noundef nonnull %1, i32 noundef 23, i8 noundef zeroext %182) #15
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %190, !prof !243

185:                                              ; preds = %177, %172
  %186 = trunc i64 %133 to i32
  %187 = getelementptr inbounds i32, ptr %19, i64 %165
  %188 = load i32, ptr %187, align 4, !tbaa !101
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %187, align 4, !tbaa !101
  store i32 %186, ptr %166, align 4, !tbaa !101
  br label %190

190:                                              ; preds = %185, %177, %169, %164
  %191 = add nsw i32 %151, 1
  br label %192

192:                                              ; preds = %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %190, %157, %153
  %193 = phi i32 [ %163, %157 ], [ 0, %190 ], [ %156, %153 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ], [ %149, %148 ]
  %194 = phi i32 [ %151, %157 ], [ %191, %190 ], [ %151, %153 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ], [ %151, %148 ]
  %195 = icmp eq i8 %152, 89
  %196 = select i1 %195, i64 2, i64 1, !prof !244
  %197 = getelementptr inbounds i8, ptr %150, i64 %196
  %198 = icmp eq i8 %152, 0
  br i1 %198, label %199, label %148, !prof !245

199:                                              ; preds = %192, %132
  %200 = add nuw nsw i64 %133, 1
  %201 = icmp eq i64 %200, 53
  br i1 %201, label %202, label %132, !prof !246, !llvm.loop !247

202:                                              ; preds = %199, %127, %122, %127
  %203 = add nuw nsw i64 %84, 1
  %204 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !219
  %205 = sext i8 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %83, label %74, !prof !229, !llvm.loop !248

207:                                              ; preds = %77, %218
  %208 = phi i64 [ 0, %77 ], [ %220, %218 ]
  %209 = phi i32 [ 0, %77 ], [ %219, %218 ]
  %210 = getelementptr inbounds i32, ptr %18, i64 %208
  %211 = load i32, ptr %210, align 4, !tbaa !101
  %212 = icmp sgt i32 %211, %82
  br i1 %212, label %218, label %213, !prof !249

213:                                              ; preds = %207
  %214 = add nsw i32 %209, 1
  %215 = sext i32 %209 to i64
  %216 = getelementptr inbounds i32, ptr %20, i64 %215
  %217 = trunc i64 %208 to i32
  store i32 %217, ptr %216, align 4, !tbaa !101
  br label %218

218:                                              ; preds = %207, %213
  %219 = phi i32 [ %214, %213 ], [ %209, %207 ]
  %220 = add nuw nsw i64 %208, 1
  %221 = icmp eq i64 %220, %78
  br i1 %221, label %222, label %207, !prof !250, !llvm.loop !251

222:                                              ; preds = %218, %74
  %223 = phi i32 [ 0, %74 ], [ %219, %218 ]
  %224 = trunc i32 %223 to i8
  store i8 %224, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !214
  %225 = shl i32 %223, 24
  %226 = ashr exact i32 %225, 24
  %227 = icmp sgt i32 %226, 1
  br i1 %227, label %228, label %275, !prof !220

228:                                              ; preds = %222
  %229 = add nsw i32 %226, -1
  %230 = zext i32 %229 to i64
  %231 = zext nneg i32 %226 to i64
  br label %232

232:                                              ; preds = %228, %269
  %233 = phi i64 [ 0, %228 ], [ %237, %269 ]
  %234 = phi i64 [ 1, %228 ], [ %273, %269 ]
  %235 = getelementptr inbounds i32, ptr %20, i64 %233
  %236 = load i32, ptr %235, align 4, !tbaa !101
  %237 = add nuw nsw i64 %233, 1
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, ptr %19, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !101
  %241 = getelementptr inbounds i32, ptr %18, i64 %238
  %242 = load i32, ptr %241, align 4, !tbaa !101
  %243 = trunc i64 %233 to i32
  br label %244

244:                                              ; preds = %232, %263
  %245 = phi i64 [ %234, %232 ], [ %267, %263 ]
  %246 = phi i32 [ %240, %232 ], [ %266, %263 ]
  %247 = phi i32 [ %242, %232 ], [ %265, %263 ]
  %248 = phi i32 [ %243, %232 ], [ %264, %263 ]
  %249 = getelementptr inbounds i32, ptr %20, i64 %245
  %250 = load i32, ptr %249, align 4, !tbaa !101
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %18, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !101
  %254 = getelementptr inbounds i32, ptr %19, i64 %251
  %255 = load i32, ptr %254, align 4, !tbaa !101
  %256 = icmp slt i32 %253, %247
  br i1 %256, label %261, label %257, !prof !252

257:                                              ; preds = %244
  %258 = icmp eq i32 %253, %247
  %259 = icmp sgt i32 %255, %246
  %260 = select i1 %258, i1 %259, i1 false, !prof !253
  br i1 %260, label %261, label %263, !prof !254

261:                                              ; preds = %257, %244
  %262 = trunc i64 %245 to i32
  br label %263

263:                                              ; preds = %261, %257
  %264 = phi i32 [ %262, %261 ], [ %248, %257 ]
  %265 = phi i32 [ %253, %261 ], [ %247, %257 ]
  %266 = phi i32 [ %255, %261 ], [ %246, %257 ]
  %267 = add nuw nsw i64 %245, 1
  %268 = icmp eq i64 %267, %231
  br i1 %268, label %269, label %244, !prof !255, !llvm.loop !256

269:                                              ; preds = %263
  %270 = sext i32 %264 to i64
  %271 = getelementptr inbounds i32, ptr %20, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !101
  store i32 %236, ptr %271, align 4, !tbaa !101
  store i32 %272, ptr %235, align 4, !tbaa !101
  %273 = add nuw nsw i64 %234, 1
  %274 = icmp eq i64 %237, %230
  br i1 %274, label %275, label %232, !prof !257, !llvm.loop !258

275:                                              ; preds = %269, %222
  %276 = load i32, ptr %20, align 16, !tbaa !101
  %277 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !219
  %278 = icmp sgt i8 %277, 0
  br i1 %278, label %279, label %300, !prof !220

279:                                              ; preds = %275
  %280 = sext i32 %276 to i64
  br label %281

281:                                              ; preds = %279, %295
  %282 = phi i64 [ 0, %279 ], [ %296, %295 ]
  %283 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !86
  %285 = getelementptr inbounds i32, ptr %284, i64 %280
  %286 = load i32, ptr %285, align 4, !tbaa !101
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %295, label %288, !prof !259

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %282
  %290 = load i32, ptr %289, align 4, !tbaa !101
  %291 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %282
  %292 = load ptr, ptr %291, align 8, !tbaa !86
  %293 = call ptr @gen_rtx_REG(i32 noundef %290, i32 noundef %286) #15
  %294 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %292, ptr noundef %293, i8 noundef zeroext 1) #15
  br label %295

295:                                              ; preds = %281, %288
  %296 = add nuw nsw i64 %282, 1
  %297 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !219
  %298 = sext i8 %297 to i64
  %299 = icmp slt i64 %296, %298
  br i1 %299, label %281, label %300, !prof !229, !llvm.loop !260

300:                                              ; preds = %295, %275
  %301 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !261
  %302 = icmp sgt i8 %301, 0
  br i1 %302, label %303, label %326, !prof !262

303:                                              ; preds = %300
  %304 = sext i32 %276 to i64
  %305 = zext nneg i8 %301 to i64
  br label %306

306:                                              ; preds = %303, %324
  %307 = phi i64 [ %305, %303 ], [ %308, %324 ]
  %308 = add nsw i64 %307, -1
  %309 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !97
  %311 = sext i8 %310 to i64
  %312 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !86
  %314 = getelementptr inbounds i32, ptr %313, i64 %304
  %315 = load i32, ptr %314, align 4, !tbaa !101
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %324, label %317, !prof !263

317:                                              ; preds = %306
  %318 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %311
  %319 = load i32, ptr %318, align 4, !tbaa !101
  %320 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %308
  %321 = load ptr, ptr %320, align 8, !tbaa !86
  %322 = call ptr @gen_rtx_REG(i32 noundef %319, i32 noundef %315) #15
  %323 = call zeroext i8 @validate_change(ptr noundef %0, ptr noundef %321, ptr noundef %322, i8 noundef zeroext 1) #15
  br label %324

324:                                              ; preds = %306, %317
  %325 = icmp sgt i64 %307, 1
  br i1 %325, label %306, label %326, !prof !264, !llvm.loop !265

326:                                              ; preds = %324, %300
  %327 = call i32 @apply_change_group() #15
  br label %328

328:                                              ; preds = %2, %326
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #15
  ret void
}

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare void @cselib_invalidate_rtx(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @true_regnum(ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_memory_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @references_value_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @cselib_reg_set_mode(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_for_cselib_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @get_first_label_num() local_unnamed_addr #3

declare i32 @max_label_num() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @compute_use_by_pseudos(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @reload_combine_note_use(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !85 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi ptr [ %0, %2 ], [ %17, %16 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !86
  %9 = trunc i32 %6 to i16
  switch i16 %9, label %112 [
    i16 23, label %10
    i16 24, label %18
    i16 25, label %43
    i16 49, label %54
    i16 37, label %66
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %112

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %3

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -2147418113
  %23 = icmp eq i32 %22, -2147483611
  br i1 %23, label %24, label %112

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = sext i32 %26 to i64
  %28 = lshr i32 %21, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %27, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !97
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %145, label %34

34:                                               ; preds = %24
  %35 = zext i8 %32 to i64
  %36 = sext i32 %26 to i64
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i64 [ %35, %34 ], [ %39, %37 ]
  %39 = add nsw i64 %38, -1
  %40 = add nsw i64 %39, %36
  %41 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %40, i32 1
  store i32 -1, ptr %41, align 8, !tbaa !121
  %42 = icmp sgt i64 %38, 1
  br i1 %42, label %37, label %145, !llvm.loop !266

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !97
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %112

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !97
  %52 = icmp ult i32 %51, 53
  br i1 %52, label %145, label %53

53:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1075, ptr noundef nonnull @.str.2) #15
  br label %145

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %112

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !97
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 30
  br i1 %65, label %66, label %112

66:                                               ; preds = %60, %3
  %67 = phi ptr [ %8, %3 ], [ %62, %60 ]
  %68 = phi ptr [ %5, %3 ], [ %56, %60 ]
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !97
  %71 = icmp slt i32 %70, 53
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1095, ptr noundef nonnull @.str.2) #15
  br label %73

73:                                               ; preds = %66, %72
  %74 = sext i32 %70 to i64
  %75 = load i32, ptr %68, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %74, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !97
  %81 = icmp ugt i8 %80, 1
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = zext i8 %80 to i64
  %84 = sext i32 %70 to i64
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi i64 [ %83, %82 ], [ %87, %85 ]
  %87 = add nsw i64 %86, -1
  %88 = add nsw i64 %87, %84
  %89 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %88, i32 1
  store i32 -1, ptr %89, align 8, !tbaa !121
  %90 = icmp sgt i64 %86, 1
  br i1 %90, label %85, label %145, !llvm.loop !267

91:                                               ; preds = %73
  %92 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %74
  %93 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %74, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !121
  %95 = add nsw i32 %94, -1
  store i32 %95, ptr %93, align 8, !tbaa !121
  %96 = icmp slt i32 %94, 1
  br i1 %96, label %145, label %97

97:                                               ; preds = %91
  %98 = icmp eq i32 %95, 5
  %99 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %74, i32 2
  br i1 %98, label %105, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %99, align 8, !tbaa !126
  %102 = tail call i32 @rtx_equal_p(ptr noundef %67, ptr noundef %101) #15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  store i32 -1, ptr %93, align 8, !tbaa !121
  br label %145

105:                                              ; preds = %97
  store ptr %67, ptr %99, align 8, !tbaa !126
  %106 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !101
  %107 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %74, i32 4
  store i32 %106, ptr %107, align 4, !tbaa !124
  br label %108

108:                                              ; preds = %100, %105
  %109 = zext nneg i32 %95 to i64
  %110 = getelementptr inbounds [6 x %struct.reg_use], ptr %92, i64 0, i64 %109
  store ptr %1, ptr %110, align 8, !tbaa !127
  %111 = getelementptr inbounds [6 x %struct.reg_use], ptr %92, i64 0, i64 %109, i32 1
  store ptr %4, ptr %111, align 8, !tbaa !129
  br label %145

112:                                              ; preds = %60, %3, %54, %43, %18, %10
  %113 = zext nneg i32 %7 to i64
  %114 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !86
  %116 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %113
  %117 = load i8, ptr %116, align 1, !tbaa !97
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %121 = zext i8 %117 to i64
  br label %122

122:                                              ; preds = %119, %143
  %123 = phi i64 [ %121, %119 ], [ %124, %143 ]
  %124 = add nsw i64 %123, -1
  %125 = getelementptr inbounds i8, ptr %115, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !97
  switch i8 %126, label %143 [
    i8 101, label %127
    i8 69, label %130
  ]

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %129 = getelementptr inbounds [1 x %union.rtunion_def], ptr %128, i64 0, i64 %124
  tail call fastcc void @reload_combine_note_use(ptr noundef nonnull %129, ptr noundef %1)
  br label %143

130:                                              ; preds = %122
  %131 = getelementptr inbounds [1 x %union.rtunion_def], ptr %120, i64 0, i64 %124
  %132 = load ptr, ptr %131, align 8, !tbaa !97
  %133 = load i32, ptr %132, align 8, !tbaa !195
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = zext nneg i32 %133 to i64
  br label %137

137:                                              ; preds = %135, %137
  %138 = phi i64 [ %136, %135 ], [ %139, %137 ]
  %139 = add nsw i64 %138, -1
  %140 = load ptr, ptr %131, align 8, !tbaa !97
  %141 = getelementptr inbounds %struct.rtvec_def, ptr %140, i64 0, i32 1, i64 %139
  tail call fastcc void @reload_combine_note_use(ptr noundef nonnull %141, ptr noundef %1)
  %142 = icmp sgt i64 %138, 1
  br i1 %142, label %137, label %143, !llvm.loop !268

143:                                              ; preds = %137, %130, %122, %127
  %144 = icmp sgt i64 %123, 1
  br i1 %144, label %122, label %145, !llvm.loop !269

145:                                              ; preds = %85, %37, %143, %24, %112, %104, %108, %91, %53, %49
  ret void
}

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare void @remove_reg_equal_equiv_notes(ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @reload_combine_note_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #13 !prof !85 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !97
  %14 = load i32, ptr %11, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load i32, ptr %17, align 8, !tbaa !97
  %19 = tail call i32 @subreg_regno_offset(i32 noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %6) #15
  %20 = load ptr, ptr %10, align 8, !tbaa !97
  br label %21

21:                                               ; preds = %9, %3
  %22 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %23 = phi ptr [ %20, %9 ], [ %0, %3 ]
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %77

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !97
  %30 = add i32 %29, %22
  %31 = load i32, ptr %1, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 23
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %58 [
    i16 120, label %39
    i16 40, label %39
  ]

39:                                               ; preds = %34, %34, %27
  %40 = sext i32 %30 to i64
  %41 = zext nneg i32 %6 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %40, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !97
  %44 = zext i8 %43 to i32
  %45 = add i32 %30, -1
  %46 = add i32 %45, %44
  %47 = icmp slt i32 %46, %30
  br i1 %47, label %77, label %48

48:                                               ; preds = %39
  %49 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !101
  %50 = sext i32 %46 to i64
  %51 = sext i32 %30 to i64
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %50, %48 ], [ %56, %52 ]
  %54 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %53, i32 1
  store i32 -1, ptr %54, align 8, !tbaa !121
  %55 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %53, i32 3
  store i32 %49, ptr %55, align 8, !tbaa !119
  %56 = add nsw i64 %53, -1
  %57 = icmp sgt i64 %53, %51
  br i1 %57, label %52, label %77, !llvm.loop !270

58:                                               ; preds = %34
  %59 = sext i32 %30 to i64
  %60 = zext nneg i32 %6 to i64
  %61 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %59, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !97
  %63 = zext i8 %62 to i32
  %64 = add i32 %30, -1
  %65 = add i32 %64, %63
  %66 = icmp slt i32 %65, %30
  br i1 %66, label %77, label %67

67:                                               ; preds = %58
  %68 = load i32, ptr @reload_combine_ruid, align 4, !tbaa !101
  %69 = sext i32 %65 to i64
  %70 = sext i32 %30 to i64
  br label %71

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %69, %67 ], [ %75, %71 ]
  %73 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %72, i32 3
  store i32 %68, ptr %73, align 8, !tbaa !119
  %74 = getelementptr inbounds [53 x %struct.anon], ptr @reg_state, i64 0, i64 %72, i32 1
  store i32 6, ptr %74, align 8, !tbaa !121
  %75 = add nsw i64 %72, -1
  %76 = icmp sgt i64 %72, %70
  br i1 %76, label %71, label %77, !llvm.loop !271

77:                                               ; preds = %52, %71, %39, %58, %21
  ret void
}

declare i32 @condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @condjump_in_parallel_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @have_add2_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @move2add_note_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #11 !prof !272 !PGOFuncName !273 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = and i32 %4, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %22, !prof !274

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !97
  %14 = load i32, ptr %11, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load i32, ptr %17, align 8, !tbaa !97
  %19 = tail call i32 @subreg_regno_offset(i32 noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %6) #15
  %20 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #15
  %21 = load ptr, ptr %10, align 8, !tbaa !97
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i32 [ %20, %9 ], [ 0, %3 ]
  %24 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %25 = phi ptr [ %21, %9 ], [ %0, %3 ]
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %195 [
    i16 43, label %28
    i16 37, label %42
  ], !prof !275

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65534
  %33 = add nsw i32 %32, -74
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %195, !prof !276

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !97
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %40
  store i32 0, ptr %41, align 4, !tbaa !101
  br label %195

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !97
  %45 = add i32 %44, %24
  %46 = icmp eq i32 %23, 0
  br i1 %46, label %47, label %53, !prof !277

47:                                               ; preds = %42
  %48 = zext i32 %45 to i64
  %49 = zext nneg i32 %6 to i64
  %50 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !97
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i32 [ %23, %42 ], [ %52, %47 ]
  %55 = lshr i32 %26, 16
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !97
  %60 = icmp eq i8 %59, 2
  br i1 %60, label %65, label %61, !prof !278

61:                                               ; preds = %53
  %62 = icmp eq i8 %59, 3
  %63 = icmp eq i32 %54, 1
  %64 = select i1 %62, i1 %63, i1 false, !prof !279
  br i1 %64, label %67, label %184, !prof !279

65:                                               ; preds = %53
  %66 = icmp eq i32 %54, 1
  br i1 %66, label %67, label %184, !prof !280

67:                                               ; preds = %61, %65
  %68 = load i32, ptr %1, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 23
  br i1 %70, label %71, label %184, !prof !280

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !97
  %74 = load i32, ptr %73, align 8
  %75 = trunc i32 %74 to i16
  switch i16 %75, label %76 [
    i16 120, label %184
    i16 40, label %184
  ], !prof !281

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !97
  %79 = load i32, ptr %78, align 8
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %140 [
    i16 49, label %81
    i16 37, label %147
    i16 30, label %130
  ], !prof !282

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !97
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %140, !prof !283

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !97
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %140 [
    i16 30, label %92
    i16 37, label %94
  ], !prof !284

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  br label %143

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !97
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !101
  %100 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !101
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %140, !prof !285

102:                                              ; preds = %94
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %104 = load i8, ptr %103, align 1, !tbaa !97
  %105 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %97
  %106 = load i32, ptr %105, align 4, !tbaa !101
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !97
  %110 = icmp ugt i8 %104, %109
  br i1 %110, label %140, label %111, !prof !286

111:                                              ; preds = %102
  %112 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %97
  %113 = load i32, ptr %112, align 4, !tbaa !101
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117, !prof !286

115:                                              ; preds = %111
  %116 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %97
  br label %143

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !97
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !101
  %123 = icmp sgt i32 %122, %100
  br i1 %123, label %124, label %140, !prof !286

124:                                              ; preds = %117
  %125 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %120
  %126 = load i32, ptr %125, align 4, !tbaa !101
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %120
  br label %143

130:                                              ; preds = %76
  %131 = zext i32 %45 to i64
  %132 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %131
  store i32 -1, ptr %132, align 4, !tbaa !101
  %133 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !97
  %135 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %131
  store i64 %134, ptr %135, align 8, !tbaa !107
  %136 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !101
  %137 = add nsw i32 %136, 1
  %138 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %131
  store i32 %137, ptr %138, align 4, !tbaa !101
  %139 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %131
  store i32 %6, ptr %139, align 4, !tbaa !101
  br label %195

140:                                              ; preds = %102, %162, %87, %76, %81, %94, %117, %124
  %141 = zext i32 %45 to i64
  %142 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %141
  store i32 0, ptr %142, align 4, !tbaa !101
  br label %195

143:                                              ; preds = %128, %115, %92
  %144 = phi ptr [ %93, %92 ], [ %116, %115 ], [ %129, %128 ]
  %145 = phi ptr [ %83, %92 ], [ %83, %115 ], [ %89, %128 ]
  %146 = load i64, ptr %144, align 8, !tbaa !97
  br label %147

147:                                              ; preds = %143, %76
  %148 = phi ptr [ %78, %76 ], [ %145, %143 ]
  %149 = phi i64 [ 0, %76 ], [ %146, %143 ]
  %150 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !97
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !101
  %155 = load i32, ptr @move2add_last_label_luid, align 4, !tbaa !101
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %162, label %157, !prof !287

157:                                              ; preds = %147
  %158 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %152
  store i32 %151, ptr %158, align 4, !tbaa !101
  %159 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %152
  store i64 0, ptr %159, align 8, !tbaa !107
  %160 = load i32, ptr @move2add_luid, align 4, !tbaa !101
  store i32 %160, ptr %153, align 4, !tbaa !101
  %161 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %152
  store i32 %6, ptr %161, align 4, !tbaa !101
  br label %171

162:                                              ; preds = %147
  %163 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %164 = load i8, ptr %163, align 1, !tbaa !97
  %165 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %152
  %166 = load i32, ptr %165, align 4, !tbaa !101
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !97
  %170 = icmp ugt i8 %164, %169
  br i1 %170, label %140, label %171, !prof !155

171:                                              ; preds = %162, %157
  %172 = zext i32 %45 to i64
  %173 = getelementptr inbounds [53 x i32], ptr @reg_mode, i64 0, i64 %172
  store i32 %6, ptr %173, align 4, !tbaa !101
  %174 = load i32, ptr %153, align 4, !tbaa !101
  %175 = getelementptr inbounds [53 x i32], ptr @reg_set_luid, i64 0, i64 %172
  store i32 %174, ptr %175, align 4, !tbaa !101
  %176 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %152
  %177 = load i32, ptr %176, align 4, !tbaa !101
  %178 = getelementptr inbounds [53 x i32], ptr @reg_base_reg, i64 0, i64 %172
  store i32 %177, ptr %178, align 4, !tbaa !101
  %179 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %152
  %180 = load i64, ptr %179, align 8, !tbaa !107
  %181 = add nsw i64 %180, %149
  %182 = tail call i64 @trunc_int_for_mode(i64 noundef %181, i32 noundef %56) #15
  %183 = getelementptr inbounds [53 x i64], ptr @reg_offset, i64 0, i64 %172
  store i64 %182, ptr %183, align 8, !tbaa !107
  br label %195

184:                                              ; preds = %71, %67, %65, %71, %61
  %185 = add i32 %54, %45
  %186 = icmp ult i32 %45, %185
  br i1 %186, label %187, label %195, !prof !288

187:                                              ; preds = %184
  %188 = zext i32 %45 to i64
  %189 = shl nuw nsw i64 %188, 2
  %190 = getelementptr i8, ptr @reg_set_luid, i64 %189
  %191 = add i32 %54, -1
  %192 = zext i32 %191 to i64
  %193 = shl nuw nsw i64 %192, 2
  %194 = add nuw nsw i64 %193, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %190, i8 0, i64 %194, i1 false), !tbaa !101
  br label %195

195:                                              ; preds = %187, %184, %28, %140, %130, %171, %22, %35
  ret void
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @fis_get_condition(ptr noundef) local_unnamed_addr #3

declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!84}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!35 = !{ptr @reload_cse_regs, ptr @reload_cse_regs_1, i64 76}
!36 = !{ptr @reload_cse_regs, ptr @dbg_cnt, i64 26336}
!37 = !{ptr @reload_cse_regs, ptr @gen_int_mode, i64 25949}
!38 = !{ptr @reload_cse_regs, ptr @optimize_bb_for_speed_p, i64 12951}
!39 = !{ptr @reload_cse_regs, ptr @rtx_cost, i64 25902}
!40 = !{ptr @reload_cse_regs, ptr @have_insn_for, i64 13392}
!41 = !{ptr @reload_cse_regs, ptr @gen_rtx_REG, i64 12998}
!42 = !{ptr @reload_cse_regs, ptr @gen_rtx_fmt_e_stat, i64 12998}
!43 = !{ptr @reload_cse_regs, ptr @gen_rtx_fmt_ee_stat, i64 45234}
!44 = !{ptr @reload_cse_regs, ptr @validate_change, i64 12998}
!45 = !{ptr @reload_cse_regs, ptr @next_nonnote_insn, i64 8}
!46 = !{ptr @reload_cse_regs, ptr @note_stores, i64 544767}
!47 = !{ptr @reload_cse_regs, ptr @any_condjump_p, i64 544767}
!48 = !{ptr @reload_cse_regs, ptr @fis_get_condition, i64 148179}
!49 = !{ptr @reload_cse_regs, ptr @reg_set_p, i64 32236}
!50 = !{ptr @reload_cse_regs, ptr @move2add_note_store, i64 32236}
!51 = !{ptr @reload_cse_regs_1, ptr @gen_rtx_REG, i64 76}
!52 = !{ptr @reload_cse_regs_1, ptr @cselib_init, i64 76}
!53 = !{ptr @reload_cse_regs_1, ptr @init_alias_analysis, i64 76}
!54 = !{ptr @reload_cse_regs_1, ptr @optimize_bb_for_speed_p, i64 1111360}
!55 = !{ptr @reload_cse_regs_1, ptr @true_regnum, i64 1601431}
!56 = !{ptr @reload_cse_regs_1, ptr @side_effects_p, i64 623586}
!57 = !{ptr @reload_cse_regs_1, ptr @cselib_lookup, i64 489057}
!58 = !{ptr @reload_cse_regs_1, ptr @rtx_cost, i64 3492}
!59 = !{ptr @reload_cse_regs_1, ptr @references_value_p, i64 1746}
!60 = !{ptr @reload_cse_regs_1, ptr @ix86_register_move_cost, i64 251}
!61 = !{ptr @reload_cse_regs_1, ptr @cselib_reg_set_mode, i64 1111006}
!62 = !{ptr @reload_cse_regs_1, ptr @rtx_equal_for_cselib_p, i64 620581}
!63 = !{ptr @reload_cse_regs_1, ptr @delete_insn_and_edges, i64 140}
!64 = !{ptr @reload_cse_regs_1, ptr @reload_cse_simplify_operands, i64 1110912}
!65 = !{ptr @reload_cse_regs_1, ptr @asm_noperands, i64 16842}
!66 = !{ptr @reload_cse_regs_1, ptr @cselib_process_insn, i64 1669928}
!67 = !{ptr @reload_cse_regs_1, ptr @end_alias_analysis, i64 76}
!68 = !{ptr @reload_cse_regs_1, ptr @cselib_finish, i64 76}
!69 = !{ptr @rest_of_handle_postreload, ptr @dbg_cnt, i64 38}
!70 = !{ptr @rest_of_handle_postreload, ptr @get_insns, i64 38}
!71 = !{ptr @rest_of_handle_postreload, ptr @reload_cse_regs, i64 38}
!72 = !{ptr @reload_cse_simplify_operands, ptr @extract_insn, i64 1110912}
!73 = !{ptr @reload_cse_simplify_operands, ptr @constrain_operands, i64 666784}
!74 = !{ptr @reload_cse_simplify_operands, ptr @cselib_lookup, i64 1347780}
!75 = !{ptr @reload_cse_simplify_operands, ptr @true_regnum, i64 1347826}
!76 = !{ptr @reload_cse_simplify_operands, ptr @df_ref_change_reg_with_loc, i64 11532}
!77 = !{ptr @reload_cse_simplify_operands, ptr @lookup_constraint, i64 5019}
!78 = !{ptr @reload_cse_simplify_operands, ptr @regclass_for_constraint, i64 5019}
!79 = !{ptr @reload_cse_simplify_operands, ptr @reg_fits_class_p, i64 27965}
!80 = !{ptr @reload_cse_simplify_operands, ptr @optimize_bb_for_speed_p, i64 39896}
!81 = !{ptr @reload_cse_simplify_operands, ptr @rtx_cost, i64 39896}
!82 = !{ptr @reload_cse_simplify_operands, ptr @apply_change_group, i64 666784}
!83 = !{ptr @move2add_note_store, ptr @trunc_int_for_mode, i64 4755}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = !{!"function_entry_count", i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !{!91, !87, i64 8}
!91 = !{!"_IO_FILE", !92, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !87, i64 104, !92, i64 112, !92, i64 116, !93, i64 120, !94, i64 128, !88, i64 130, !88, i64 131, !87, i64 136, !93, i64 144, !87, i64 152, !87, i64 160, !87, i64 168, !87, i64 176, !93, i64 184, !92, i64 192, !88, i64 196}
!92 = !{!"int", !88, i64 0}
!93 = !{!"long", !88, i64 0}
!94 = !{!"short", !88, i64 0}
!95 = !{!91, !87, i64 16}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{!88, !88, i64 0}
!98 = !{!91, !87, i64 40}
!99 = !{!91, !87, i64 48}
!100 = !{!91, !92, i64 0}
!101 = !{!92, !92, i64 0}
!102 = distinct !{!102, !103, !104}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = !{!"function_entry_count", i64 38}
!106 = !{!"branch_weights", i32 0, i32 38}
!107 = !{!93, !93, i64 0}
!108 = distinct !{!108, !103, !104}
!109 = !{!110, !87, i64 8}
!110 = !{!"function", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !87, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !92, i64 104, !92, i64 108, !92, i64 112, !92, i64 116, !92, i64 120, !92, i64 124, !87, i64 128, !92, i64 136, !92, i64 137, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 138, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139, !92, i64 139}
!111 = !{!112, !87, i64 8}
!112 = !{!"control_flow_graph", !87, i64 0, !87, i64 8, !87, i64 16, !92, i64 24, !92, i64 28, !92, i64 32, !87, i64 40, !92, i64 48, !88, i64 52, !88, i64 60, !92, i64 68, !92, i64 72}
!113 = !{!114, !87, i64 48}
!114 = !{!"basic_block_def", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !88, i64 32, !87, i64 48, !87, i64 56, !88, i64 64, !93, i64 72, !92, i64 80, !92, i64 84, !92, i64 88, !92, i64 92, !92, i64 96}
!115 = !{!112, !87, i64 0}
!116 = !{!117, !87, i64 0}
!117 = !{!"rtl_bb_info", !87, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !92, i64 32}
!118 = distinct !{!118, !103, !104}
!119 = !{!120, !92, i64 112}
!120 = !{!"", !88, i64 0, !92, i64 96, !87, i64 104, !92, i64 112, !92, i64 116}
!121 = !{!120, !92, i64 96}
!122 = distinct !{!122, !103, !104}
!123 = distinct !{!123, !103, !104}
!124 = !{!120, !92, i64 116}
!125 = distinct !{!125, !103, !104}
!126 = !{!120, !87, i64 104}
!127 = !{!128, !87, i64 0}
!128 = !{!"reg_use", !87, i64 0, !87, i64 8}
!129 = !{!128, !87, i64 8}
!130 = distinct !{!130, !103, !104}
!131 = distinct !{!131, !103, !104}
!132 = distinct !{!132, !103, !104}
!133 = distinct !{!133, !103, !104}
!134 = distinct !{!134, !103, !104}
!135 = distinct !{!135, !103, !104}
!136 = distinct !{!136, !103, !104}
!137 = distinct !{!137, !103, !104}
!138 = !{!"branch_weights", i32 1, i32 151}
!139 = !{!"branch_weights", i32 224530, i32 52647, i32 333407, i32 0, i32 155352, i32 68958}
!140 = !{!"branch_weights", i32 547035, i32 10682}
!141 = !{!"branch_weights", i32 309648, i32 237387}
!142 = !{!"branch_weights", i32 26615, i32 283033}
!143 = !{!"branch_weights", i32 279, i32 26336}
!144 = !{!"branch_weights", i32 0, i32 26336}
!145 = !{!"branch_weights", i32 177927897, i32 173536525, i32 1042938}
!146 = !{!"branch_weights", i32 12951, i32 14}
!147 = !{!"branch_weights", i32 0, i32 12951}
!148 = !{!"branch_weights", i32 0, i32 13392}
!149 = !{!"branch_weights", i32 12998, i32 394}
!150 = !{!"branch_weights", i32 47, i32 12951}
!151 = distinct !{!151, !103, !104}
!152 = !{!"branch_weights", i32 78, i32 13307}
!153 = !{!"branch_weights", i32 8, i32 70}
!154 = !{!"branch_weights", i32 8, i32 0}
!155 = !{!"branch_weights", i32 0, i32 8}
!156 = !{!"branch_weights", i32 296697, i32 12951}
!157 = !{!"branch_weights", i32 318293, i32 226473}
!158 = !{!"branch_weights", i32 0, i32 226473}
!159 = !{!"branch_weights", i32 226473, i32 0}
!160 = distinct !{!160, !103, !104}
!161 = !{!"branch_weights", i32 396587, i32 148179}
!162 = !{!"branch_weights", i32 221, i32 147958}
!163 = !{!"branch_weights", i32 75481, i32 72477}
!164 = !{!"branch_weights", i32 32236, i32 43245}
!165 = !{!"branch_weights", i32 32236, i32 0}
!166 = !{!"branch_weights", i32 68958, i32 475808}
!167 = !{!"branch_weights", i32 275832, i32 3378942}
!168 = !{!"branch_weights", i32 68958, i32 3585816}
!169 = distinct !{!169, !103, !104}
!170 = !{!"branch_weights", i32 151, i32 3339425}
!171 = distinct !{!171, !103, !104}
!172 = !{!"function_entry_count", i64 76}
!173 = !{!"postreload.c;reload_cse_regs_1"}
!174 = !{!"branch_weights", i32 1115574, i32 554354}
!175 = !{!"branch_weights", i32 4522, i32 1094210, i32 16842}
!176 = !{!"branch_weights", i32 487774, i32 623586}
!177 = !{!"branch_weights", i32 490070, i32 133516}
!178 = !{!"branch_weights", i32 1013, i32 489057}
!179 = !{!"branch_weights", i32 487311, i32 1746}
!180 = !{!"branch_weights", i32 1746, i32 0, i32 0}
!181 = !{!"branch_weights", i32 1, i32 1745}
!182 = !{!183, !87, i64 8}
!183 = !{!"elt_loc_list", !87, i64 0, !87, i64 8, !87, i64 16}
!184 = !{!"branch_weights", i32 1746, i32 251}
!185 = !{!"branch_weights", i32 1746, i32 0}
!186 = !{!"branch_weights", i32 251, i32 0}
!187 = !{!"branch_weights", i32 0, i32 1997}
!188 = !{!"branch_weights", i32 0, i32 1746}
!189 = !{!"branch_weights", i32 1745, i32 252}
!190 = distinct !{!190, !103, !104}
!191 = !{!"branch_weights", i32 1094210, i32 0}
!192 = !{!"branch_weights", i32 620581, i32 490425}
!193 = !{!"branch_weights", i32 1094070, i32 140}
!194 = !{!"branch_weights", i32 0, i32 16842}
!195 = !{!196, !92, i64 0}
!196 = !{!"rtvec_def", !92, i64 0, !88, i64 8}
!197 = distinct !{!197, !103, !104}
!198 = !{!"branch_weights", i32 33330, i32 0}
!199 = !{!"branch_weights", i32 46, i32 16796, i32 16488}
!200 = !{!"branch_weights", i32 16796, i32 0}
!201 = !{!"branch_weights", i32 16488, i32 16842}
!202 = distinct !{!202, !103, !104}
!203 = !{!"branch_weights", i32 16841, i32 1}
!204 = !{!"branch_weights", i32 17150, i32 16534}
!205 = !{!"branch_weights", i32 16843, i32 16841}
!206 = distinct !{!206, !103, !104}
!207 = !{!"branch_weights", i32 151, i32 3339705}
!208 = distinct !{!208, !103, !104}
!209 = !{!"postreload.c;gate_handle_postreload"}
!210 = !{!"branch_weights", i32 38, i32 0}
!211 = !{!"postreload.c;rest_of_handle_postreload"}
!212 = !{!"function_entry_count", i64 1110912}
!213 = !{!"postreload.c;reload_cse_simplify_operands"}
!214 = !{!215, !88, i64 1088}
!215 = !{!"recog_data", !88, i64 0, !88, i64 240, !88, i64 480, !88, i64 720, !88, i64 840, !88, i64 960, !88, i64 1072, !88, i64 1086, !88, i64 1087, !88, i64 1088, !88, i64 1089, !87, i64 1120}
!216 = !{!"branch_weights", i32 444128, i32 666784}
!217 = !{!"branch_weights", i32 0, i32 666784}
!218 = !{!"VP", i32 1, i64 666784, i64 33, i64 330313, i64 8, i64 300025, i64 4, i64 20782, i64 16, i64 11792}
!219 = !{!215, !88, i64 1086}
!220 = !{!"branch_weights", i32 666783, i32 1}
!221 = !{!"branch_weights", i32 46, i32 1347780}
!222 = !{!"branch_weights", i32 440532, i32 907248}
!223 = !{!"branch_weights", i32 0, i32 440532}
!224 = !{!"branch_weights", i32 1089015, i32 258765}
!225 = !{!"branch_weights", i32 1, i32 258764}
!226 = !{!"branch_weights", i32 238727, i32 185991}
!227 = !{!"branch_weights", i32 258764, i32 165954}
!228 = distinct !{!228, !103, !104}
!229 = !{!"branch_weights", i32 681043, i32 666783}
!230 = distinct !{!230, !103, !104}
!231 = !{!"branch_weights", i32 1347825, i32 1}
!232 = !{!"branch_weights", i32 1, i32 1347825}
!233 = !{!"branch_weights", i32 16033885, i32 7925470, i32 1386154, i32 2286}
!234 = !{!"branch_weights", i32 1347825, i32 23999970}
!235 = distinct !{!235, !103, !104}
!236 = !{!"branch_weights", i32 580648, i32 767178}
!237 = !{!"branch_weights", i32 603016, i32 164162, i32 0}
!238 = !{!"branch_weights", i32 31948316, i32 11532}
!239 = !{!"branch_weights", i32 5019, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3585, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9257, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9974, i32 717, i32 19231, i32 16433, i32 11532}
!240 = !{!"branch_weights", i32 27965, i32 0}
!241 = !{!"branch_weights", i32 8017, i32 19948}
!242 = !{!"branch_weights", i32 19948, i32 0}
!243 = !{!"branch_weights", i32 0, i32 19948}
!244 = !{!"branch_weights", i32 717, i32 75037}
!245 = !{!"branch_weights", i32 11532, i32 64222}
!246 = !{!"branch_weights", i32 603016, i32 31356832}
!247 = distinct !{!247, !103, !104}
!248 = distinct !{!248, !103, !104}
!249 = !{!"branch_weights", i32 1372266, i32 3271114}
!250 = !{!"branch_weights", i32 666783, i32 3976597}
!251 = distinct !{!251, !103, !104}
!252 = !{!"branch_weights", i32 60, i32 9575605}
!253 = !{!"branch_weights", i32 9559461, i32 16144}
!254 = !{!"branch_weights", i32 0, i32 9575605}
!255 = !{!"branch_weights", i32 2604329, i32 6971336}
!256 = distinct !{!256, !103, !104}
!257 = !{!"branch_weights", i32 666783, i32 1937547}
!258 = distinct !{!258, !103, !104}
!259 = !{!"branch_weights", i32 1347826, i32 0}
!260 = distinct !{!260, !103, !104}
!261 = !{!215, !88, i64 1087}
!262 = !{!"branch_weights", i32 616, i32 666168}
!263 = !{!"branch_weights", i32 616, i32 0}
!264 = !{!"branch_weights", i32 0, i32 616}
!265 = distinct !{!265, !103, !104}
!266 = distinct !{!266, !103, !104}
!267 = distinct !{!267, !103, !104}
!268 = distinct !{!268, !103, !104}
!269 = distinct !{!269, !103, !104}
!270 = distinct !{!270, !103, !104}
!271 = distinct !{!271, !103, !104}
!272 = !{!"function_entry_count", i64 583139}
!273 = !{!"postreload.c;move2add_note_store"}
!274 = !{!"branch_weights", i32 0, i32 583139}
!275 = !{!"branch_weights", i32 155329, i32 82081, i32 345729}
!276 = !{!"branch_weights", i32 0, i32 82081}
!277 = !{!"branch_weights", i32 345729, i32 0}
!278 = !{!"branch_weights", i32 186358, i32 159371}
!279 = !{!"branch_weights", i32 0, i32 159371}
!280 = !{!"branch_weights", i32 186358, i32 0}
!281 = !{!"branch_weights", i32 186358, i32 0, i32 0}
!282 = !{!"branch_weights", i32 104200, i32 5015, i32 505, i32 76638}
!283 = !{!"branch_weights", i32 4772, i32 243}
!284 = !{!"branch_weights", i32 302, i32 4250, i32 220}
!285 = !{!"branch_weights", i32 110, i32 110}
!286 = !{!"branch_weights", i32 0, i32 110}
!287 = !{!"branch_weights", i32 8, i32 4747}
!288 = !{!"branch_weights", i32 159370, i32 1}
