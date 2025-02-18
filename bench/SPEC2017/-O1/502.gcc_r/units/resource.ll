; ModuleID = 'resource.c'
source_filename = "resource.c"
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
%struct.resources = type { i8, i8, i8, i8, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.target_info = type { i32, ptr, i64, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"resource.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@end_of_function_needs = internal global %struct.resources zeroinitializer, align 8
@target_hash_table = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@bb_ticks = internal unnamed_addr global ptr null, align 8
@pending_dead_regs = internal unnamed_addr global i64 0, align 8
@current_live_regs = internal global i64 0, align 8
@start_of_epilogue_needs = internal unnamed_addr global %struct.resources zeroinitializer, align 8
@current_function_sp_is_unchanging = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@df = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
define dso_local void @mark_referenced_resources(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !34 {
  br label %4

4:                                                ; preds = %10, %219, %126, %103, %68, %3
  %5 = phi ptr [ %0, %3 ], [ %77, %68 ], [ %109, %103 ], [ %128, %126 ], [ %221, %219 ], [ %12, %10 ]
  %6 = phi i8 [ %2, %3 ], [ 0, %68 ], [ 0, %103 ], [ 0, %126 ], [ %6, %219 ], [ 0, %10 ]
  %7 = load i32, ptr %5, align 8
  %8 = and i32 %7, 65535
  %9 = trunc i32 %7 to i16
  switch i16 %9, label %222 [
    i16 35, label %261
    i16 30, label %261
    i16 32, label %261
    i16 31, label %261
    i16 33, label %261
    i16 36, label %261
    i16 45, label %261
    i16 44, label %261
    i16 39, label %10
    i16 37, label %36
    i16 43, label %62
    i16 46, label %78
    i16 19, label %80
    i16 29, label %80
    i16 16, label %80
    i16 17, label %82
    i16 26, label %103
    i16 23, label %110
    i16 25, label %261
    i16 10, label %129
    i16 8, label %219
    i16 9, label %219
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %4

16:                                               ; preds = %10
  %17 = tail call i32 @subreg_regno(ptr noundef nonnull %5) #15
  %18 = tail call i32 @subreg_nregs(ptr noundef nonnull %5) #15
  %19 = add i32 %18, %17
  %20 = icmp ult i32 %19, 54
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.1) #15
  br label %22

22:                                               ; preds = %16, %21
  %23 = icmp ult i32 %17, %19
  br i1 %23, label %24, label %261

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !54
  %27 = zext i32 %17 to i64
  %28 = zext i32 %19 to i64
  br label %29

29:                                               ; preds = %24, %29
  %30 = phi i64 [ %27, %24 ], [ %34, %29 ]
  %31 = phi i64 [ %26, %24 ], [ %33, %29 ]
  %32 = shl nuw i64 1, %30
  %33 = or i64 %31, %32
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %28
  br i1 %35, label %259, label %29, !llvm.loop !56

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #15
  br label %41

41:                                               ; preds = %36, %40
  %42 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %43 = load i32, ptr %5, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = load i32, ptr %37, align 8, !tbaa !46
  %47 = zext i32 %46 to i64
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %47, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !46
  %51 = zext i8 %50 to i32
  %52 = add i32 %46, %51
  %53 = load i64, ptr %42, align 8, !tbaa !57
  br label %54

54:                                               ; preds = %54, %41
  %55 = phi i64 [ %53, %41 ], [ %59, %54 ]
  %56 = phi i32 [ %46, %41 ], [ %60, %54 ]
  %57 = zext nneg i32 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = or i64 %58, %55
  %60 = add i32 %56, 1
  %61 = icmp ult i32 %60, %52
  br i1 %61, label %54, label %260, !llvm.loop !58

62:                                               ; preds = %4
  %63 = and i32 %7, 67108864
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 1
  store i8 1, ptr %66, align 1, !tbaa !59
  br label %68

67:                                               ; preds = %62
  store i8 1, ptr %1, align 8, !tbaa !60
  br label %68

68:                                               ; preds = %67, %65
  %69 = load i32, ptr %5, align 8
  %70 = lshr i32 %69, 27
  %71 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  %72 = load i8, ptr %71, align 2, !tbaa !61
  %73 = trunc i32 %70 to i8
  %74 = and i8 %73, 1
  %75 = or i8 %74, %72
  store i8 %75, ptr %71, align 2, !tbaa !61
  %76 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  br label %4

78:                                               ; preds = %4
  %79 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 3
  store i8 1, ptr %79, align 1, !tbaa !62
  br label %261

80:                                               ; preds = %4, %4, %4
  %81 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  store i8 1, ptr %81, align 2, !tbaa !61
  br label %222

82:                                               ; preds = %4
  %83 = lshr i32 %7, 27
  %84 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  %85 = load i8, ptr %84, align 2, !tbaa !61
  %86 = trunc i32 %83 to i8
  %87 = and i8 %86, 1
  %88 = or i8 %85, %87
  store i8 %88, ptr %84, align 2, !tbaa !61
  %89 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = load i32, ptr %90, align 8, !tbaa !63
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %261

93:                                               ; preds = %82, %93
  %94 = phi i64 [ %98, %93 ], [ 0, %82 ]
  %95 = phi ptr [ %99, %93 ], [ %90, %82 ]
  %96 = getelementptr inbounds %struct.rtvec_def, ptr %95, i64 0, i32 1, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !35
  tail call void @mark_referenced_resources(ptr noundef %97, ptr noundef %1, i8 noundef zeroext 0)
  %98 = add nuw nsw i64 %94, 1
  %99 = load ptr, ptr %89, align 8, !tbaa !46
  %100 = load i32, ptr %99, align 8, !tbaa !63
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %93, label %261, !llvm.loop !65

103:                                              ; preds = %4
  %104 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  tail call void @mark_referenced_resources(ptr noundef %107, ptr noundef %1, i8 noundef zeroext 0)
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  br label %4

110:                                              ; preds = %4
  %111 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %112 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  tail call void @mark_referenced_resources(ptr noundef %113, ptr noundef %1, i8 noundef zeroext 0)
  %114 = load ptr, ptr %111, align 8, !tbaa !46
  %115 = load i32, ptr %114, align 8
  %116 = trunc i32 %115 to i16
  switch i16 %116, label %121 [
    i16 120, label %117
    i16 40, label %117
    i16 39, label %118
  ]

117:                                              ; preds = %110, %110
  tail call void @mark_referenced_resources(ptr noundef nonnull %114, ptr noundef %1, i8 noundef zeroext 0)
  br label %121

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  br label %121

121:                                              ; preds = %110, %118, %117
  %122 = phi ptr [ %114, %117 ], [ %120, %118 ], [ %114, %110 ]
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 43
  br i1 %125, label %126, label %261

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !46
  br label %4

129:                                              ; preds = %4
  %130 = icmp eq i8 %6, 0
  br i1 %130, label %219, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = icmp eq ptr %135, %5
  br i1 %136, label %147, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !46
  %140 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = load i32, ptr %141, align 8, !tbaa !63
  %143 = load i32, ptr %139, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 5
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 329, ptr noundef nonnull @.str.1) #15
  br label %147

147:                                              ; preds = %146, %137, %131
  %148 = phi ptr [ %139, %137 ], [ %139, %146 ], [ null, %131 ]
  %149 = phi i32 [ %142, %137 ], [ %142, %146 ], [ 0, %131 ]
  store i8 1, ptr %1, align 8, !tbaa !60
  %150 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %151 = load i64, ptr %150, align 8, !tbaa !54
  %152 = or i64 %151, 128
  store i64 %152, ptr %150, align 8, !tbaa !54
  %153 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %147
  %156 = or i64 %151, 1048768
  store i64 %156, ptr %150, align 8, !tbaa !54
  br label %157

157:                                              ; preds = %155, %147
  br label %158

158:                                              ; preds = %157, %167
  %159 = phi i64 [ %168, %167 ], [ 0, %157 ]
  %160 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !46
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = shl nuw i64 1, %159
  %165 = load i64, ptr %150, align 8, !tbaa !54
  %166 = or i64 %165, %164
  store i64 %166, ptr %150, align 8, !tbaa !54
  br label %167

167:                                              ; preds = %158, %163
  %168 = add nuw nsw i64 %159, 1
  %169 = icmp eq i64 %168, 53
  br i1 %169, label %170, label %158, !llvm.loop !75

170:                                              ; preds = %167
  %171 = tail call ptr @find_reg_note(ptr noundef nonnull %5, i32 noundef 30, ptr noundef null) #15
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  store i64 -1, ptr %150, align 8, !tbaa !54
  br label %174

174:                                              ; preds = %173, %170
  %175 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = icmp eq ptr %176, null
  br i1 %177, label %219, label %178

178:                                              ; preds = %174
  %179 = icmp sgt i32 %149, 1
  %180 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1
  %181 = zext nneg i32 %149 to i64
  br label %182

182:                                              ; preds = %178, %215
  %183 = phi ptr [ %176, %178 ], [ %217, %215 ]
  %184 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 24
  br i1 %188, label %189, label %215

189:                                              ; preds = %182
  br i1 %179, label %190, label %211

190:                                              ; preds = %189, %208
  %191 = phi i64 [ %209, %208 ], [ 1, %189 ]
  %192 = load ptr, ptr %180, align 8, !tbaa !46
  %193 = getelementptr inbounds %struct.rtvec_def, ptr %192, i64 0, i32 1, i64 %191
  %194 = load ptr, ptr %193, align 8, !tbaa !35
  %195 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !46
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 23
  br i1 %199, label %200, label %208

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = load ptr, ptr %184, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  %206 = tail call i32 @rtx_equal_p(ptr noundef %202, ptr noundef %205) #15
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %200, %190
  %209 = add nuw nsw i64 %191, 1
  %210 = icmp eq i64 %209, %181
  br i1 %210, label %211, label %190, !llvm.loop !76

211:                                              ; preds = %208, %189
  %212 = load ptr, ptr %184, align 8, !tbaa !46
  %213 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  tail call void @mark_referenced_resources(ptr noundef %214, ptr noundef nonnull %1, i8 noundef zeroext 0)
  br label %215

215:                                              ; preds = %200, %182, %211
  %216 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !46
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %182, !llvm.loop !77

219:                                              ; preds = %215, %174, %4, %129, %4
  %220 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  br label %4

222:                                              ; preds = %4, %80
  %223 = zext nneg i32 %8 to i64
  %224 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !46
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %261, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %223
  %229 = load ptr, ptr %228, align 8, !tbaa !35
  %230 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %231 = zext i8 %225 to i64
  br label %232

232:                                              ; preds = %227, %256
  %233 = phi i64 [ 0, %227 ], [ %257, %256 ]
  %234 = phi ptr [ %229, %227 ], [ %235, %256 ]
  %235 = getelementptr inbounds i8, ptr %234, i64 1
  %236 = load i8, ptr %234, align 1, !tbaa !46
  switch i8 %236, label %256 [
    i8 101, label %242
    i8 69, label %237
  ]

237:                                              ; preds = %232
  %238 = getelementptr inbounds [1 x %union.rtunion_def], ptr %230, i64 0, i64 %233
  %239 = load ptr, ptr %238, align 8, !tbaa !46
  %240 = load i32, ptr %239, align 8, !tbaa !63
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %246, label %256

242:                                              ; preds = %232
  %243 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %244 = getelementptr inbounds [1 x %union.rtunion_def], ptr %243, i64 0, i64 %233
  %245 = load ptr, ptr %244, align 8, !tbaa !46
  tail call void @mark_referenced_resources(ptr noundef %245, ptr noundef %1, i8 noundef zeroext %6)
  br label %256

246:                                              ; preds = %237, %246
  %247 = phi i64 [ %251, %246 ], [ 0, %237 ]
  %248 = phi ptr [ %252, %246 ], [ %239, %237 ]
  %249 = getelementptr inbounds %struct.rtvec_def, ptr %248, i64 0, i32 1, i64 %247
  %250 = load ptr, ptr %249, align 8, !tbaa !35
  tail call void @mark_referenced_resources(ptr noundef %250, ptr noundef %1, i8 noundef zeroext %6)
  %251 = add nuw nsw i64 %247, 1
  %252 = load ptr, ptr %238, align 8, !tbaa !46
  %253 = load i32, ptr %252, align 8, !tbaa !63
  %254 = sext i32 %253 to i64
  %255 = icmp slt i64 %251, %254
  br i1 %255, label %246, label %256, !llvm.loop !78

256:                                              ; preds = %246, %237, %242, %232
  %257 = add nuw nsw i64 %233, 1
  %258 = icmp eq i64 %257, %231
  br i1 %258, label %261, label %232, !llvm.loop !79

259:                                              ; preds = %29
  store i64 %33, ptr %25, align 8, !tbaa !54
  br label %261

260:                                              ; preds = %54
  store i64 %59, ptr %42, align 8, !tbaa !57
  br label %261

261:                                              ; preds = %93, %256, %82, %22, %259, %222, %260, %4, %4, %4, %4, %4, %4, %4, %4, %4, %121, %78
  ret void
}

declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #3

declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_set_resources(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  br label %5

5:                                                ; preds = %140, %135, %111, %101, %98, %72, %68, %4
  %6 = phi ptr [ %0, %4 ], [ %71, %68 ], [ %74, %72 ], [ %100, %98 ], [ %110, %101 ], [ %117, %111 ], [ %137, %135 ], [ %142, %140 ]
  %7 = phi i32 [ %2, %4 ], [ 0, %68 ], [ 1, %72 ], [ 1, %98 ], [ 0, %101 ], [ 0, %111 ], [ 0, %135 ], [ %7, %140 ]
  %8 = phi i32 [ %3, %4 ], [ 0, %68 ], [ 0, %72 ], [ 0, %98 ], [ 0, %101 ], [ 0, %111 ], [ 0, %135 ], [ %8, %140 ]
  %9 = icmp eq i32 %8, 1
  br label %10

10:                                               ; preds = %51, %5
  %11 = phi ptr [ %6, %5 ], [ %53, %51 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %219 [
    i16 13, label %259
    i16 11, label %259
    i16 12, label %259
    i16 24, label %259
    i16 30, label %259
    i16 32, label %259
    i16 31, label %259
    i16 33, label %259
    i16 44, label %259
    i16 45, label %259
    i16 35, label %259
    i16 36, label %259
    i16 46, label %19
    i16 10, label %23
    i16 9, label %51
    i16 8, label %51
    i16 23, label %57
    i16 25, label %72
    i16 5, label %14
    i16 77, label %98
    i16 75, label %98
    i16 76, label %98
    i16 74, label %98
    i16 78, label %101
    i16 79, label %101
    i16 119, label %111
    i16 120, label %111
    i16 43, label %118
    i16 39, label %138
    i16 37, label %166
    i16 19, label %194
    i16 16, label %194
    i16 29, label %196
    i16 17, label %198
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load i32, ptr %16, align 8, !tbaa !63
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %75, label %259

19:                                               ; preds = %10
  %20 = icmp eq i32 %7, 0
  br i1 %20, label %259, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 3
  store i8 1, ptr %22, align 1, !tbaa !62
  br label %259

23:                                               ; preds = %10
  br i1 %9, label %24, label %51

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 3
  %26 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  store i8 1, ptr %1, align 8, !tbaa !60
  store i8 1, ptr %25, align 1, !tbaa !62
  %27 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !57
  %28 = load i64, ptr %26, align 8, !tbaa !54
  %29 = or i64 %28, %27
  store i64 %29, ptr %26, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %24, %43
  %34 = phi ptr [ %45, %43 ], [ %31, %24 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 25
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  tail call void @mark_set_resources(ptr noundef %42, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0)
  br label %43

43:                                               ; preds = %33, %40
  %44 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %33, !llvm.loop !80

47:                                               ; preds = %43, %24
  %48 = tail call ptr @find_reg_note(ptr noundef %11, i32 noundef 30, ptr noundef null) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i64 -1, ptr %26, align 8, !tbaa !54
  br label %51

51:                                               ; preds = %10, %10, %47, %50, %23
  %52 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65534
  %56 = icmp eq i32 %55, 24
  br i1 %56, label %259, label %10

57:                                               ; preds = %10
  %58 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq i32 %8, 1
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp ne i32 %65, 26
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %61, %57
  %69 = phi i32 [ 1, %57 ], [ %67, %61 ]
  tail call void @mark_set_resources(ptr noundef %59, ptr noundef %1, i32 noundef %69, i32 noundef %8)
  %70 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  br label %5

72:                                               ; preds = %10
  %73 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  br label %5

75:                                               ; preds = %14, %92
  %76 = phi i64 [ %93, %92 ], [ 0, %14 ]
  %77 = phi ptr [ %94, %92 ], [ %16, %14 ]
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 67108864
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1, i64 %76
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 268435456
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83, %75
  %90 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1, i64 %76
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  tail call void @mark_set_resources(ptr noundef %91, ptr noundef %1, i32 noundef 0, i32 noundef %8)
  br label %92

92:                                               ; preds = %83, %89
  %93 = add nuw nsw i64 %76, 1
  %94 = load ptr, ptr %15, align 8, !tbaa !46
  %95 = load i32, ptr %94, align 8, !tbaa !63
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %75, label %259, !llvm.loop !81

98:                                               ; preds = %10, %10, %10, %10
  %99 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  br label %5

101:                                              ; preds = %10, %10
  %102 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  tail call void @mark_set_resources(ptr noundef %103, ptr noundef %1, i32 noundef 1, i32 noundef 0)
  %104 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  tail call void @mark_set_resources(ptr noundef %107, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %108 = load ptr, ptr %104, align 8, !tbaa !46
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  br label %5

111:                                              ; preds = %10, %10
  %112 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  tail call void @mark_set_resources(ptr noundef %113, ptr noundef %1, i32 noundef %7, i32 noundef 0)
  %114 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  tail call void @mark_set_resources(ptr noundef %115, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %116 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  br label %5

118:                                              ; preds = %10
  %119 = icmp eq i32 %7, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %118
  store i8 1, ptr %1, align 8, !tbaa !60
  %121 = load i32, ptr %11, align 8
  %122 = lshr i32 %121, 26
  %123 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 1
  %124 = load i8, ptr %123, align 1, !tbaa !59
  %125 = trunc i32 %122 to i8
  %126 = and i8 %125, 1
  %127 = or i8 %126, %124
  store i8 %127, ptr %123, align 1, !tbaa !59
  %128 = load i32, ptr %11, align 8
  %129 = lshr i32 %128, 27
  %130 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  %131 = load i8, ptr %130, align 2, !tbaa !61
  %132 = trunc i32 %129 to i8
  %133 = and i8 %132, 1
  %134 = or i8 %133, %131
  store i8 %134, ptr %130, align 2, !tbaa !61
  br label %135

135:                                              ; preds = %120, %118
  %136 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  br label %5

138:                                              ; preds = %10
  %139 = icmp eq i32 %7, 0
  br i1 %139, label %259, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !46
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 37
  br i1 %145, label %146, label %5

146:                                              ; preds = %140
  %147 = tail call i32 @subreg_regno(ptr noundef %11) #15
  %148 = tail call i32 @subreg_nregs(ptr noundef %11) #15
  %149 = add i32 %148, %147
  %150 = icmp ult i32 %149, 54
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 758, ptr noundef nonnull @.str.1) #15
  br label %152

152:                                              ; preds = %146, %151
  %153 = icmp ult i32 %147, %149
  br i1 %153, label %154, label %259

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %156 = load i64, ptr %155, align 8, !tbaa !54
  %157 = zext i32 %147 to i64
  %158 = zext i32 %149 to i64
  br label %159

159:                                              ; preds = %154, %159
  %160 = phi i64 [ %157, %154 ], [ %164, %159 ]
  %161 = phi i64 [ %156, %154 ], [ %163, %159 ]
  %162 = shl nuw i64 1, %160
  %163 = or i64 %161, %162
  %164 = add nuw nsw i64 %160, 1
  %165 = icmp eq i64 %164, %158
  br i1 %165, label %257, label %159, !llvm.loop !82

166:                                              ; preds = %10
  %167 = icmp eq i32 %7, 0
  br i1 %167, label %259, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !46
  %171 = icmp ult i32 %170, 53
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 768, ptr noundef nonnull @.str.1) #15
  br label %173

173:                                              ; preds = %168, %172
  %174 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  %175 = load i32, ptr %11, align 8
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  %178 = load i32, ptr %169, align 8, !tbaa !46
  %179 = zext i32 %178 to i64
  %180 = zext nneg i32 %177 to i64
  %181 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %179, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !46
  %183 = zext i8 %182 to i32
  %184 = add i32 %178, %183
  %185 = load i64, ptr %174, align 8, !tbaa !57
  br label %186

186:                                              ; preds = %186, %173
  %187 = phi i64 [ %185, %173 ], [ %191, %186 ]
  %188 = phi i32 [ %178, %173 ], [ %192, %186 ]
  %189 = zext nneg i32 %188 to i64
  %190 = shl nuw i64 1, %189
  %191 = or i64 %190, %187
  %192 = add i32 %188, 1
  %193 = icmp ult i32 %192, %184
  br i1 %193, label %186, label %258, !llvm.loop !58

194:                                              ; preds = %10, %10
  %195 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  store i8 1, ptr %195, align 2, !tbaa !61
  br label %259

196:                                              ; preds = %10
  %197 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  store i8 1, ptr %197, align 2, !tbaa !61
  br label %219

198:                                              ; preds = %10
  %199 = lshr i32 %12, 27
  %200 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 2
  %201 = load i8, ptr %200, align 2, !tbaa !61
  %202 = trunc i32 %199 to i8
  %203 = and i8 %202, 1
  %204 = or i8 %201, %203
  store i8 %204, ptr %200, align 2, !tbaa !61
  %205 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  %207 = load i32, ptr %206, align 8, !tbaa !63
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %259

209:                                              ; preds = %198, %209
  %210 = phi i64 [ %214, %209 ], [ 0, %198 ]
  %211 = phi ptr [ %215, %209 ], [ %206, %198 ]
  %212 = getelementptr inbounds %struct.rtvec_def, ptr %211, i64 0, i32 1, i64 %210
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  tail call void @mark_set_resources(ptr noundef %213, ptr noundef %1, i32 noundef %7, i32 noundef 0)
  %214 = add nuw nsw i64 %210, 1
  %215 = load ptr, ptr %205, align 8, !tbaa !46
  %216 = load i32, ptr %215, align 8, !tbaa !63
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %214, %217
  br i1 %218, label %209, label %259, !llvm.loop !83

219:                                              ; preds = %10, %196
  %220 = and i32 %12, 65535
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !46
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %259, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %221
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  %228 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %229 = zext i8 %223 to i64
  br label %230

230:                                              ; preds = %225, %254
  %231 = phi i64 [ 0, %225 ], [ %255, %254 ]
  %232 = phi ptr [ %227, %225 ], [ %233, %254 ]
  %233 = getelementptr inbounds i8, ptr %232, i64 1
  %234 = load i8, ptr %232, align 1, !tbaa !46
  switch i8 %234, label %254 [
    i8 101, label %240
    i8 69, label %235
  ]

235:                                              ; preds = %230
  %236 = getelementptr inbounds [1 x %union.rtunion_def], ptr %228, i64 0, i64 %231
  %237 = load ptr, ptr %236, align 8, !tbaa !46
  %238 = load i32, ptr %237, align 8, !tbaa !63
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %244, label %254

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %242 = getelementptr inbounds [1 x %union.rtunion_def], ptr %241, i64 0, i64 %231
  %243 = load ptr, ptr %242, align 8, !tbaa !46
  tail call void @mark_set_resources(ptr noundef %243, ptr noundef %1, i32 noundef %7, i32 noundef %8)
  br label %254

244:                                              ; preds = %235, %244
  %245 = phi i64 [ %249, %244 ], [ 0, %235 ]
  %246 = phi ptr [ %250, %244 ], [ %237, %235 ]
  %247 = getelementptr inbounds %struct.rtvec_def, ptr %246, i64 0, i32 1, i64 %245
  %248 = load ptr, ptr %247, align 8, !tbaa !35
  tail call void @mark_set_resources(ptr noundef %248, ptr noundef %1, i32 noundef %7, i32 noundef %8)
  %249 = add nuw nsw i64 %245, 1
  %250 = load ptr, ptr %236, align 8, !tbaa !46
  %251 = load i32, ptr %250, align 8, !tbaa !63
  %252 = sext i32 %251 to i64
  %253 = icmp slt i64 %249, %252
  br i1 %253, label %244, label %254, !llvm.loop !84

254:                                              ; preds = %244, %235, %240, %230
  %255 = add nuw nsw i64 %231, 1
  %256 = icmp eq i64 %255, %229
  br i1 %256, label %259, label %230, !llvm.loop !85

257:                                              ; preds = %159
  store i64 %163, ptr %155, align 8, !tbaa !54
  br label %259

258:                                              ; preds = %186
  store i64 %191, ptr %174, align 8, !tbaa !57
  br label %259

259:                                              ; preds = %51, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %209, %92, %254, %198, %152, %257, %14, %219, %258, %166, %138, %19, %21, %194
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_target_live_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.resources, align 8
  %6 = alloca %struct.resources, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resources, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @end_of_function_needs, i64 16, i1 false), !tbaa.struct !86
  br label %473

11:                                               ; preds = %3
  %12 = tail call fastcc zeroext i8 @return_insn_p(ptr noundef nonnull %1), !range !87
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @end_of_function_needs, i64 16, i1 false), !tbaa.struct !86
  tail call void @mark_referenced_resources(ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext 0)
  br label %473

15:                                               ; preds = %11
  store i8 1, ptr %2, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 1
  store i8 0, ptr %16, align 1, !tbaa !59
  %17 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 2
  store i8 0, ptr %17, align 2, !tbaa !61
  %18 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 3
  store i8 0, ptr %18, align 1, !tbaa !62
  %19 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = srem i32 %23, 257
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %21, %33
  %30 = phi ptr [ %35, %33 ], [ %27, %21 ]
  %31 = load i32, ptr %30, align 8, !tbaa !88
  %32 = icmp eq i32 %31, %23
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.target_info, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %29, !llvm.loop !90

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.target_info, ptr %30, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !91
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @cfun, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = zext i32 %39 to i64
  %48 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %46, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = load ptr, ptr %51, align 8, !tbaa !96
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 134217728
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %39, i32 -1
  br label %57

57:                                               ; preds = %33, %21, %41, %37, %15
  %58 = phi ptr [ %30, %37 ], [ null, %15 ], [ %30, %41 ], [ null, %21 ], [ null, %33 ]
  %59 = phi i32 [ -1, %37 ], [ -1, %15 ], [ %56, %41 ], [ -1, %21 ], [ -1, %33 ]
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %63 = getelementptr inbounds %struct.param_info, ptr %62, i64 13, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !98
  %65 = tail call fastcc i32 @find_basic_block(ptr noundef nonnull %1, i32 noundef %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i32 [ %65, %61 ], [ %59, %57 ]
  %68 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %106, label %70

70:                                               ; preds = %66
  %71 = icmp eq ptr %58, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.target_info, ptr %58, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !91
  %75 = icmp eq i32 %67, %74
  %76 = icmp ne i32 %67, -1
  %77 = and i1 %76, %75
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.target_info, ptr %58, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !100
  %81 = load ptr, ptr @bb_ticks, align 8, !tbaa !35
  %82 = sext i32 %67 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.target_info, ptr %58, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !101
  %89 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  store i64 %88, ptr %89, align 8, !tbaa !54
  br label %473

90:                                               ; preds = %70
  %91 = tail call ptr @xmalloc(i64 noundef 32) #15
  %92 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !46
  store i32 %93, ptr %91, align 8, !tbaa !88
  %94 = getelementptr inbounds %struct.target_info, ptr %91, i64 0, i32 3
  store i32 %67, ptr %94, align 8, !tbaa !91
  %95 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  %96 = load i32, ptr %92, align 8, !tbaa !46
  %97 = srem i32 %96, 257
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = getelementptr inbounds %struct.target_info, ptr %91, i64 0, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !102
  %102 = load i32, ptr %92, align 8, !tbaa !46
  %103 = srem i32 %102, 257
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %95, i64 %104
  store ptr %91, ptr %105, align 8, !tbaa !35
  br label %106

106:                                              ; preds = %90, %78, %72, %66
  %107 = phi ptr [ %58, %78 ], [ %58, %72 ], [ %91, %90 ], [ %58, %66 ]
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !57
  %108 = icmp eq i32 %67, -1
  br i1 %108, label %436, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr @cfun, align 8, !tbaa !35
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !92
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !94
  %115 = zext i32 %67 to i64
  %116 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %114, i64 0, i32 2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !103
  %120 = load ptr, ptr @df, align 8, !tbaa !35
  %121 = getelementptr inbounds %struct.df, ptr %120, i64 0, i32 1, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = getelementptr inbounds %struct.dataflow, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !105
  %125 = icmp ugt i32 %124, %119
  tail call void @llvm.assume(i1 %125)
  %126 = getelementptr inbounds %struct.dataflow, ptr %122, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !107
  %128 = zext i32 %119 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  %131 = getelementptr inbounds %struct.df_lr_bb_info, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !108
  store i64 0, ptr @current_live_regs, align 8, !tbaa !57
  tail call void @reg_set_to_hard_reg_set(ptr noundef nonnull @current_live_regs, ptr noundef %132) #15
  %133 = load ptr, ptr @cfun, align 8, !tbaa !35
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !92
  %136 = load ptr, ptr %135, align 8, !tbaa !110
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %136, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !111
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 9
  %140 = load i32, ptr %139, align 8, !tbaa !103
  %141 = icmp eq i32 %67, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %109
  %143 = getelementptr inbounds %struct.control_flow_graph, ptr %135, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !94
  %145 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %144, i64 0, i32 2, i64 %115
  %146 = load ptr, ptr %145, align 8, !tbaa !35
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  %149 = load ptr, ptr %148, align 8, !tbaa !96
  br label %150

150:                                              ; preds = %109, %142
  %151 = phi ptr [ %149, %142 ], [ %0, %109 ]
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 8
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 5
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  %164 = getelementptr inbounds %struct.rtvec_def, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !35
  br label %166

166:                                              ; preds = %161, %155, %150
  %167 = phi ptr [ %165, %161 ], [ %151, %155 ], [ %151, %150 ]
  %168 = load i32, ptr %1, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 8
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !46
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 5
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = tail call ptr @next_insn(ptr noundef %179) #15
  br label %181

181:                                              ; preds = %177, %171, %166
  %182 = phi ptr [ %180, %177 ], [ %1, %171 ], [ %1, %166 ]
  %183 = icmp eq ptr %167, %182
  br i1 %183, label %425, label %184

184:                                              ; preds = %181, %422
  %185 = phi ptr [ %423, %422 ], [ %167, %181 ]
  %186 = load i32, ptr %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 7
  br i1 %188, label %375, label %189

189:                                              ; preds = %184
  %190 = and i32 %186, 65534
  %191 = icmp ne i32 %190, 8
  %192 = icmp ne i32 %187, 10
  %193 = and i1 %191, %192
  %194 = and i32 %186, 268435456
  %195 = icmp eq i32 %194, 0
  %196 = or i1 %195, %193
  br i1 %196, label %197, label %375

197:                                              ; preds = %189
  %198 = icmp eq i32 %187, 8
  br i1 %198, label %199, label %213

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 24
  br i1 %204, label %205, label %213

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = add nsw i32 %209, -7
  %211 = icmp ult i32 %210, 4
  %212 = select i1 %211, ptr %207, ptr %185
  br label %213

213:                                              ; preds = %205, %199, %197
  %214 = phi ptr [ %185, %199 ], [ %185, %197 ], [ %212, %205 ]
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 10
  br i1 %217, label %218, label %236

218:                                              ; preds = %213
  %219 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !57
  %220 = xor i64 %219, -1
  %221 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  %222 = and i64 %221, %220
  store i64 %222, ptr @current_live_regs, align 8, !tbaa !57
  br label %223

223:                                              ; preds = %218, %232
  %224 = phi i64 [ 0, %218 ], [ %234, %232 ]
  %225 = phi i64 [ %222, %218 ], [ %233, %232 ]
  %226 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %224
  %227 = load i8, ptr %226, align 1, !tbaa !46
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = shl nuw nsw i64 1, %224
  %231 = or i64 %225, %230
  store i64 %231, ptr @current_live_regs, align 8, !tbaa !57
  br label %232

232:                                              ; preds = %223, %229
  %233 = phi i64 [ %225, %223 ], [ %231, %229 ]
  %234 = add nuw nsw i64 %224, 1
  %235 = icmp eq i64 %234, 53
  br i1 %235, label %236, label %223, !llvm.loop !112

236:                                              ; preds = %232, %213
  %237 = load i32, ptr %214, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 8
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !46
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 65534
  %245 = icmp eq i32 %244, 24
  br i1 %245, label %246, label %248

246:                                              ; preds = %240, %236
  %247 = trunc i32 %237 to i16
  switch i16 %247, label %375 [
    i16 9, label %248
    i16 10, label %248
    i16 12, label %340
    i16 13, label %367
  ]

248:                                              ; preds = %246, %240, %246
  %249 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 1, i32 1, i32 0, i32 0, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !46
  %251 = icmp eq ptr %250, null
  br i1 %251, label %293, label %252

252:                                              ; preds = %248
  %253 = load i64, ptr @pending_dead_regs, align 8, !tbaa !57
  br label %254

254:                                              ; preds = %252, %288
  %255 = phi ptr [ %291, %288 ], [ %250, %252 ]
  %256 = phi i64 [ %289, %288 ], [ %253, %252 ]
  %257 = load i32, ptr %255, align 8
  %258 = and i32 %257, 16711680
  %259 = icmp eq i32 %258, 65536
  br i1 %259, label %260, label %288

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = load i32, ptr %262, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 37
  br i1 %265, label %266, label %288

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !46
  %269 = icmp ult i32 %268, 53
  br i1 %269, label %270, label %288

270:                                              ; preds = %266
  %271 = lshr i32 %263, 16
  %272 = and i32 %271, 255
  %273 = zext nneg i32 %268 to i64
  %274 = zext nneg i32 %272 to i64
  %275 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %273, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !46
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %268, %277
  %279 = zext nneg i32 %278 to i64
  br label %280

280:                                              ; preds = %280, %270
  %281 = phi i64 [ %285, %280 ], [ %273, %270 ]
  %282 = phi i64 [ %284, %280 ], [ %256, %270 ]
  %283 = shl nuw i64 1, %281
  %284 = or i64 %283, %282
  %285 = add nuw nsw i64 %281, 1
  %286 = icmp ult i64 %285, %279
  br i1 %286, label %280, label %287, !llvm.loop !58

287:                                              ; preds = %280
  store i64 %284, ptr @pending_dead_regs, align 8, !tbaa !57
  br label %288

288:                                              ; preds = %287, %254, %260, %266
  %289 = phi i64 [ %284, %287 ], [ %256, %254 ], [ %256, %260 ], [ %256, %266 ]
  %290 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !46
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %254, !llvm.loop !113

293:                                              ; preds = %288, %248
  %294 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !46
  call void @note_stores(ptr noundef %295, ptr noundef nonnull @update_live_status, ptr noundef null) #15
  %296 = load ptr, ptr %249, align 8, !tbaa !46
  %297 = icmp eq ptr %296, null
  br i1 %297, label %375, label %298

298:                                              ; preds = %293
  %299 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  br label %300

300:                                              ; preds = %298, %335
  %301 = phi ptr [ %338, %335 ], [ %296, %298 ]
  %302 = phi i64 [ %336, %335 ], [ %299, %298 ]
  %303 = load i32, ptr %301, align 8
  %304 = and i32 %303, 16711680
  %305 = icmp eq i32 %304, 393216
  br i1 %305, label %306, label %335

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  %309 = load i32, ptr %308, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %335

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 0, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !46
  %315 = icmp ult i32 %314, 53
  br i1 %315, label %316, label %335

316:                                              ; preds = %312
  %317 = lshr i32 %309, 16
  %318 = and i32 %317, 255
  %319 = zext nneg i32 %314 to i64
  %320 = zext nneg i32 %318 to i64
  %321 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %319, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !46
  %323 = zext i8 %322 to i32
  %324 = add nuw nsw i32 %314, %323
  %325 = zext nneg i32 %324 to i64
  br label %326

326:                                              ; preds = %326, %316
  %327 = phi i64 [ %332, %326 ], [ %319, %316 ]
  %328 = phi i64 [ %331, %326 ], [ %302, %316 ]
  %329 = shl nuw i64 1, %327
  %330 = xor i64 %329, -1
  %331 = and i64 %328, %330
  %332 = add nuw nsw i64 %327, 1
  %333 = icmp ult i64 %332, %325
  br i1 %333, label %326, label %334, !llvm.loop !114

334:                                              ; preds = %326
  store i64 %331, ptr @current_live_regs, align 8, !tbaa !57
  br label %335

335:                                              ; preds = %334, %300, %306, %312
  %336 = phi i64 [ %331, %334 ], [ %302, %300 ], [ %302, %306 ], [ %302, %312 ]
  %337 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1, i32 0, i32 0, i64 1
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  %339 = icmp eq ptr %338, null
  br i1 %339, label %375, label %300, !llvm.loop !115

340:                                              ; preds = %246
  %341 = load i64, ptr @pending_dead_regs, align 8, !tbaa !57
  %342 = xor i64 %341, -1
  %343 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  %344 = and i64 %343, %342
  store i64 %344, ptr @current_live_regs, align 8, !tbaa !57
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !57
  %345 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1, i32 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !46
  %347 = icmp eq ptr %346, null
  br i1 %347, label %375, label %348

348:                                              ; preds = %340
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8, !tbaa !57
  %349 = getelementptr inbounds %struct.basic_block_def, ptr %346, i64 0, i32 9
  %350 = load i32, ptr %349, align 8, !tbaa !103
  %351 = load ptr, ptr @df, align 8, !tbaa !35
  %352 = getelementptr inbounds %struct.df, ptr %351, i64 0, i32 1, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  %354 = getelementptr inbounds %struct.dataflow, ptr %353, i64 0, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !105
  %356 = icmp ugt i32 %355, %350
  call void @llvm.assume(i1 %356)
  %357 = getelementptr inbounds %struct.dataflow, ptr %353, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !107
  %359 = zext i32 %350 to i64
  %360 = getelementptr inbounds ptr, ptr %358, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !35
  %362 = getelementptr inbounds %struct.df_lr_bb_info, ptr %361, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !108
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %363) #15
  %364 = load i64, ptr %7, align 8, !tbaa !57
  %365 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  %366 = or i64 %365, %364
  store i64 %366, ptr @current_live_regs, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %375

367:                                              ; preds = %246
  %368 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 1
  %369 = load i32, ptr %368, align 8, !tbaa !46
  %370 = icmp eq i32 %369, 6
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = load i64, ptr getelementptr inbounds (%struct.resources, ptr @start_of_epilogue_needs, i64 0, i32 4), align 8, !tbaa !54
  %373 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  %374 = or i64 %373, %372
  store i64 %374, ptr @current_live_regs, align 8, !tbaa !57
  br label %375

375:                                              ; preds = %335, %293, %184, %189, %246, %340, %348, %371, %367
  %376 = load i32, ptr %185, align 8
  %377 = and i32 %376, 65535
  %378 = add nsw i32 %377, -11
  %379 = icmp ult i32 %378, -4
  %380 = and i32 %376, 67108864
  %381 = icmp eq i32 %380, 0
  %382 = or i1 %381, %379
  br i1 %382, label %402, label %383

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %385 = load ptr, ptr %384, align 8, !tbaa !46
  %386 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1, i32 0, i32 0, i64 2
  %387 = load ptr, ptr %386, align 8, !tbaa !46
  %388 = icmp eq ptr %387, %185
  br i1 %388, label %402, label %389

389:                                              ; preds = %383, %389
  %390 = phi ptr [ %392, %389 ], [ %185, %383 ]
  %391 = getelementptr inbounds %struct.rtx_def, ptr %390, i64 0, i32 1, i32 0, i32 0, i64 2
  %392 = load ptr, ptr %391, align 8, !tbaa !46
  %393 = load i32, ptr %392, align 8
  %394 = and i32 %393, 65535
  %395 = and i32 %393, 65534
  %396 = icmp ne i32 %395, 8
  %397 = icmp ne i32 %394, 10
  %398 = and i1 %396, %397
  %399 = and i32 %393, 268435456
  %400 = icmp eq i32 %399, 0
  %401 = or i1 %400, %398
  br i1 %401, label %402, label %389, !llvm.loop !116

402:                                              ; preds = %389, %383, %375
  %403 = phi ptr [ %185, %375 ], [ %185, %383 ], [ %390, %389 ]
  %404 = getelementptr inbounds %struct.rtx_def, ptr %403, i64 0, i32 1, i32 0, i32 0, i64 2
  %405 = load ptr, ptr %404, align 8, !tbaa !46
  %406 = icmp eq ptr %405, null
  br i1 %406, label %422, label %407

407:                                              ; preds = %402
  %408 = load i32, ptr %405, align 8
  %409 = and i32 %408, 65535
  %410 = icmp eq i32 %409, 8
  br i1 %410, label %411, label %422

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.rtx_def, ptr %405, i64 1
  %413 = load ptr, ptr %412, align 8, !tbaa !46
  %414 = load i32, ptr %413, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 5
  br i1 %416, label %417, label %422

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.rtx_def, ptr %413, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !46
  %420 = getelementptr inbounds %struct.rtvec_def, ptr %419, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !35
  br label %422

422:                                              ; preds = %402, %407, %411, %417
  %423 = phi ptr [ %421, %417 ], [ %405, %411 ], [ %405, %407 ], [ null, %402 ]
  %424 = icmp eq ptr %423, %182
  br i1 %424, label %425, label %184, !llvm.loop !117

425:                                              ; preds = %422, %181
  %426 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  %427 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  store i64 %426, ptr %427, align 8, !tbaa !54
  %428 = icmp eq ptr %107, null
  br i1 %428, label %438, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.target_info, ptr %107, i64 0, i32 3
  store i32 %67, ptr %430, align 8, !tbaa !91
  %431 = load ptr, ptr @bb_ticks, align 8, !tbaa !35
  %432 = sext i32 %67 to i64
  %433 = getelementptr inbounds i32, ptr %431, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !50
  %435 = getelementptr inbounds %struct.target_info, ptr %107, i64 0, i32 4
  store i32 %434, ptr %435, align 4, !tbaa !100
  br label %438

436:                                              ; preds = %106
  %437 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  store i64 -1, ptr %437, align 8, !tbaa !54
  br label %438

438:                                              ; preds = %425, %429, %436
  %439 = getelementptr inbounds %struct.resources, ptr %5, i64 0, i32 4
  store i64 0, ptr %439, align 8, !tbaa !54
  store i32 0, ptr %5, align 8
  %440 = getelementptr inbounds %struct.resources, ptr %6, i64 0, i32 4
  store i64 0, ptr %440, align 8, !tbaa !54
  store i32 0, ptr %6, align 8
  %441 = load i64, ptr %5, align 8
  %442 = call fastcc ptr @find_dead_or_set_registers(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef 0, i64 %441, i64 0, ptr noundef nonnull byval(%struct.resources) align 8 %6)
  %443 = icmp eq ptr %442, null
  br i1 %443, label %467, label %444

444:                                              ; preds = %438
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %445 = call ptr @next_active_insn(ptr noundef nonnull %442) #15
  %446 = load ptr, ptr %4, align 8, !tbaa !35
  %447 = call ptr @next_active_insn(ptr noundef %446) #15
  call void @mark_target_live_regs(ptr noundef %0, ptr noundef %447, ptr noundef nonnull %8)
  store i64 0, ptr %439, align 8, !tbaa !54
  store i32 0, ptr %5, align 8
  store i64 0, ptr %440, align 8, !tbaa !54
  %448 = icmp eq ptr %445, %1
  store i32 0, ptr %6, align 8
  br i1 %448, label %461, label %449

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.resources, ptr %8, i64 0, i32 4
  br label %451

451:                                              ; preds = %449, %451
  %452 = phi ptr [ %1, %449 ], [ %459, %451 ]
  call void @mark_referenced_resources(ptr noundef %452, ptr noundef nonnull %6, i8 noundef zeroext 1)
  %453 = load i64, ptr %440, align 8, !tbaa !54
  %454 = load i64, ptr %439, align 8, !tbaa !54
  %455 = xor i64 %454, -1
  %456 = and i64 %453, %455
  %457 = load i64, ptr %450, align 8, !tbaa !54
  %458 = or i64 %457, %456
  store i64 %458, ptr %450, align 8, !tbaa !54
  call void @mark_set_resources(ptr noundef %452, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1)
  %459 = call ptr @next_active_insn(ptr noundef %452) #15
  %460 = icmp eq ptr %459, %445
  br i1 %460, label %461, label %451, !llvm.loop !118

461:                                              ; preds = %451, %444
  %462 = getelementptr inbounds %struct.resources, ptr %8, i64 0, i32 4
  %463 = load i64, ptr %462, align 8, !tbaa !54
  %464 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  %465 = load i64, ptr %464, align 8, !tbaa !54
  %466 = or i64 %465, %463
  store i64 %466, ptr %464, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %467

467:                                              ; preds = %461, %438
  %468 = icmp eq ptr %107, null
  br i1 %468, label %473, label %469

469:                                              ; preds = %467
  %470 = getelementptr inbounds %struct.resources, ptr %2, i64 0, i32 4
  %471 = load i64, ptr %470, align 8, !tbaa !54
  %472 = getelementptr inbounds %struct.target_info, ptr %107, i64 0, i32 2
  store i64 %471, ptr %472, align 8, !tbaa !101
  br label %473

473:                                              ; preds = %467, %469, %86, %14, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @return_insn_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !34 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = phi ptr [ %0, %1 ], [ %25, %21 ]
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = trunc i32 %4 to i16
  switch i16 %6, label %26 [
    i16 9, label %7
    i16 8, label %15
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 27
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %5, 8
  br i1 %14, label %15, label %26

15:                                               ; preds = %2, %13
  %16 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  br label %2

26:                                               ; preds = %2, %13, %15, %7
  %27 = phi i8 [ 1, %7 ], [ 0, %15 ], [ 0, %13 ], [ 0, %2 ]
  ret i8 %27
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_basic_block(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @prev_nonnote_insn(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp ne i32 %7, 11
  %9 = icmp ne i32 %1, 0
  %10 = and i1 %8, %9
  br i1 %10, label %17, label %23

11:                                               ; preds = %17
  %12 = load i32, ptr %20, align 8
  %13 = and i32 %12, 65535
  %14 = icmp ne i32 %13, 11
  %15 = icmp ne i32 %21, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %23, !llvm.loop !119

17:                                               ; preds = %5, %11
  %18 = phi ptr [ %20, %11 ], [ %3, %5 ]
  %19 = phi i32 [ %21, %11 ], [ %1, %5 ]
  %20 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %18) #15
  %21 = add nsw i32 %19, -1
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %11, !llvm.loop !119

23:                                               ; preds = %11, %17, %5, %2
  %24 = phi ptr [ %3, %2 ], [ %3, %5 ], [ %20, %17 ], [ %20, %11 ]
  %25 = phi i32 [ %1, %2 ], [ %1, %5 ], [ %21, %17 ], [ %21, %11 ]
  %26 = phi i1 [ %4, %2 ], [ %4, %5 ], [ %22, %17 ], [ %22, %11 ]
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %23
  br i1 %26, label %29, label %36

29:                                               ; preds = %28
  %30 = load ptr, ptr @cfun, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  br label %51

36:                                               ; preds = %28
  %37 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %24) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %36, %48
  %40 = phi ptr [ %49, %48 ], [ %37, %36 ]
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 12
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %40) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %39, !llvm.loop !120

51:                                               ; preds = %44, %29
  %52 = phi ptr [ %35, %29 ], [ %46, %44 ]
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !103
  br label %55

55:                                               ; preds = %48, %39, %51, %36, %23
  %56 = phi i32 [ -1, %23 ], [ -1, %36 ], [ %54, %51 ], [ -1, %39 ], [ -1, %48 ]
  ret i32 %56
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_insn(ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @update_live_status(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #9 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %66 [
    i16 37, label %12
    i16 39, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %66

12:                                               ; preds = %3, %6
  %13 = and i32 %4, 65535
  %14 = icmp eq i32 %13, 39
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #15
  %17 = tail call i32 @subreg_nregs(ptr noundef nonnull %0) #15
  %18 = add i32 %17, %16
  br label %30

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = lshr i32 %4, 16
  %23 = and i32 %22, 255
  %24 = zext i32 %21 to i64
  %25 = zext nneg i32 %23 to i64
  %26 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %24, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !46
  %28 = zext i8 %27 to i32
  %29 = add i32 %21, %28
  br label %30

30:                                               ; preds = %19, %15
  %31 = phi i32 [ %16, %15 ], [ %21, %19 ]
  %32 = phi i32 [ %18, %15 ], [ %29, %19 ]
  %33 = load i32, ptr %1, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 25
  %36 = icmp slt i32 %31, %32
  br i1 %35, label %41, label %37

37:                                               ; preds = %30
  br i1 %36, label %38, label %66

38:                                               ; preds = %37
  %39 = load i64, ptr @pending_dead_regs, align 8, !tbaa !57
  %40 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  br label %53

41:                                               ; preds = %30
  br i1 %36, label %42, label %66

42:                                               ; preds = %41
  %43 = load i64, ptr @current_live_regs, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i32 [ %51, %44 ], [ %31, %42 ]
  %46 = phi i64 [ %50, %44 ], [ %43, %42 ]
  %47 = zext nneg i32 %45 to i64
  %48 = shl nuw i64 1, %47
  %49 = xor i64 %48, -1
  %50 = and i64 %46, %49
  %51 = add nsw i32 %45, 1
  %52 = icmp eq i32 %51, %32
  br i1 %52, label %64, label %44, !llvm.loop !121

53:                                               ; preds = %38, %53
  %54 = phi i32 [ %62, %53 ], [ %31, %38 ]
  %55 = phi i64 [ %59, %53 ], [ %40, %38 ]
  %56 = phi i64 [ %61, %53 ], [ %39, %38 ]
  %57 = zext nneg i32 %54 to i64
  %58 = shl nuw i64 1, %57
  %59 = or i64 %55, %58
  %60 = xor i64 %58, -1
  %61 = and i64 %56, %60
  %62 = add nsw i32 %54, 1
  %63 = icmp eq i32 %62, %32
  br i1 %63, label %65, label %53, !llvm.loop !122

64:                                               ; preds = %44
  store i64 %50, ptr @current_live_regs, align 8, !tbaa !57
  br label %66

65:                                               ; preds = %53
  store i64 %59, ptr @current_live_regs, align 8, !tbaa !57
  store i64 %61, ptr @pending_dead_regs, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %37, %65, %41, %64, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_dead_or_set_registers(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i64 %4, i64 %5, ptr noundef byval(%struct.resources) align 8 %6) unnamed_addr #9 !prof !34 {
  %8 = alloca %struct.resources, align 8
  %9 = alloca %struct.resources, align 8
  %10 = alloca %struct.resources, align 8
  %11 = alloca %struct.resources, align 8
  store i64 %4, ptr %8, align 8
  %12 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  store i64 %5, ptr %12, align 8
  %13 = getelementptr inbounds %struct.resources, ptr %6, i64 0, i32 4
  %14 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  br label %15

15:                                               ; preds = %191, %7
  %16 = phi i32 [ %3, %7 ], [ %192, %191 ]
  %17 = phi ptr [ %0, %7 ], [ %193, %191 ]
  %18 = phi ptr [ null, %7 ], [ %194, %191 ]
  %19 = icmp eq ptr %17, null
  br i1 %19, label %196, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %17) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %191

25:                                               ; preds = %20
  %26 = load i32, ptr %17, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %66 [
    i16 12, label %28
    i16 11, label %191
    i16 13, label %191
    i16 8, label %36
  ]

28:                                               ; preds = %25
  %29 = load i64, ptr %13, align 8, !tbaa !54
  %30 = xor i64 %29, -1
  %31 = load i64, ptr @pending_dead_regs, align 8, !tbaa !57
  %32 = and i64 %31, %30
  store i64 %32, ptr @pending_dead_regs, align 8, !tbaa !57
  %33 = xor i64 %32, -1
  %34 = load i64, ptr %14, align 8, !tbaa !54
  %35 = and i64 %34, %33
  store i64 %35, ptr %14, align 8, !tbaa !54
  store i64 0, ptr @pending_dead_regs, align 8, !tbaa !57
  br label %191

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = load i32, ptr %38, align 8
  %40 = trunc i32 %39 to i16
  switch i16 %40, label %66 [
    i16 24, label %48
    i16 25, label %191
    i16 5, label %41
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = load i32, ptr %43, align 8, !tbaa !63
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = zext nneg i32 %44 to i64
  br label %56

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -7
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %55, label %191

55:                                               ; preds = %48
  call void @mark_set_resources(ptr noundef nonnull %50, ptr noundef %1, i32 noundef 0, i32 noundef 1)
  br label %191

56:                                               ; preds = %46, %56
  %57 = phi i64 [ 0, %46 ], [ %63, %56 ]
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp ne i32 %61, 9
  %63 = add nuw nsw i64 %57, 1
  %64 = icmp ult i64 %63, %47
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %56, label %66, !llvm.loop !123

66:                                               ; preds = %56, %41, %36, %25
  %67 = phi ptr [ %17, %25 ], [ %17, %36 ], [ %17, %41 ], [ %59, %56 ]
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %179

71:                                               ; preds = %66
  %72 = add nsw i32 %16, 1
  %73 = icmp slt i32 %16, 10
  br i1 %73, label %74, label %191

74:                                               ; preds = %71
  %75 = call i32 @any_uncondjump_p(ptr noundef nonnull %67) #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 27
  br i1 %82, label %83, label %91

83:                                               ; preds = %77, %74
  %84 = icmp eq ptr %2, null
  %85 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 1, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = icmp ne ptr %18, null
  %88 = or i1 %87, %84
  %89 = select i1 %87, ptr %18, ptr %17
  br i1 %88, label %179, label %90

90:                                               ; preds = %83
  store ptr %86, ptr %2, align 8, !tbaa !35
  br label %179

91:                                               ; preds = %77
  %92 = call i32 @any_condjump_p(ptr noundef nonnull %67) #15
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %191, label %94

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  %95 = add nsw i32 %16, 5
  %96 = icmp sgt i32 %16, 4
  br i1 %96, label %178, label %97

97:                                               ; preds = %94
  call void @mark_referenced_resources(ptr noundef nonnull %17, ptr noundef nonnull %6, i8 noundef zeroext 1)
  %98 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 5
  br i1 %102, label %103, label %148

103:                                              ; preds = %97
  %104 = load i32, ptr %67, align 8
  %105 = and i32 %104, 67108864
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %148, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %98, align 8, !tbaa !46
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = load i32, ptr %110, align 8, !tbaa !63
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %127

113:                                              ; preds = %107, %113
  %114 = phi i64 [ %120, %113 ], [ 1, %107 ]
  %115 = phi ptr [ %123, %113 ], [ %110, %107 ]
  %116 = getelementptr inbounds %struct.rtvec_def, ptr %115, i64 0, i32 1, i64 %114
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  %118 = load i32, ptr %117, align 8
  %119 = xor i32 %118, 268435456
  store i32 %119, ptr %117, align 8
  %120 = add nuw nsw i64 %114, 1
  %121 = load ptr, ptr %98, align 8, !tbaa !46
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  %124 = load i32, ptr %123, align 8, !tbaa !63
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %120, %125
  br i1 %126, label %113, label %127, !llvm.loop !124

127:                                              ; preds = %113, %107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !86
  call void @mark_set_resources(ptr noundef nonnull %17, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1)
  %128 = load ptr, ptr %98, align 8, !tbaa !46
  %129 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  %131 = load i32, ptr %130, align 8, !tbaa !63
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %147

133:                                              ; preds = %127, %133
  %134 = phi i64 [ %140, %133 ], [ 1, %127 ]
  %135 = phi ptr [ %143, %133 ], [ %130, %127 ]
  %136 = getelementptr inbounds %struct.rtvec_def, ptr %135, i64 0, i32 1, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !35
  %138 = load i32, ptr %137, align 8
  %139 = xor i32 %138, 268435456
  store i32 %139, ptr %137, align 8
  %140 = add nuw nsw i64 %134, 1
  %141 = load ptr, ptr %98, align 8, !tbaa !46
  %142 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = load i32, ptr %143, align 8, !tbaa !63
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %140, %145
  br i1 %146, label %133, label %147, !llvm.loop !125

147:                                              ; preds = %133, %127
  call void @mark_set_resources(ptr noundef nonnull %17, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1)
  br label %149

148:                                              ; preds = %103, %97
  call void @mark_set_resources(ptr noundef nonnull %17, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !86
  br label %149

149:                                              ; preds = %148, %147
  %150 = getelementptr inbounds %struct.resources, ptr %9, i64 0, i32 4
  %151 = getelementptr inbounds %struct.resources, ptr %6, i64 0, i32 4
  %152 = getelementptr inbounds %struct.resources, ptr %10, i64 0, i32 4
  %153 = getelementptr inbounds %struct.resources, ptr %11, i64 0, i32 4
  %154 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !86
  %155 = load i64, ptr %150, align 8
  %156 = load i64, ptr %151, align 8, !tbaa !54
  %157 = xor i64 %155, -1
  %158 = or i64 %156, %157
  %159 = load i64, ptr %152, align 8, !tbaa !54
  %160 = and i64 %159, %158
  store i64 %160, ptr %152, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !86
  %161 = load i64, ptr %12, align 8, !tbaa !54
  %162 = xor i64 %161, -1
  %163 = or i64 %156, %162
  %164 = load i64, ptr %153, align 8, !tbaa !54
  %165 = and i64 %164, %163
  store i64 %165, ptr %153, align 8, !tbaa !54
  %166 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 1, i32 1, i32 0, i32 0, i64 2
  %167 = load ptr, ptr %166, align 8, !tbaa !46
  %168 = load i64, ptr %9, align 8
  %169 = call fastcc ptr @find_dead_or_set_registers(ptr noundef %167, ptr noundef nonnull %10, ptr noundef null, i32 noundef %95, i64 %168, i64 %155, ptr noundef nonnull byval(%struct.resources) align 8 %6)
  %170 = load i64, ptr %8, align 8
  %171 = load i64, ptr %12, align 8
  %172 = call fastcc ptr @find_dead_or_set_registers(ptr noundef %22, ptr noundef nonnull %11, ptr noundef null, i32 noundef %95, i64 %170, i64 %171, ptr noundef nonnull byval(%struct.resources) align 8 %6)
  %173 = load i64, ptr %152, align 8, !tbaa !54
  %174 = load i64, ptr %153, align 8, !tbaa !54
  %175 = or i64 %174, %173
  store i64 %175, ptr %153, align 8, !tbaa !54
  %176 = load i64, ptr %154, align 8, !tbaa !54
  %177 = and i64 %176, %175
  store i64 %177, ptr %154, align 8, !tbaa !54
  br label %178

178:                                              ; preds = %94, %149
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %191

179:                                              ; preds = %83, %90, %66
  %180 = phi i32 [ %72, %90 ], [ %72, %83 ], [ %16, %66 ]
  %181 = phi ptr [ %86, %90 ], [ %86, %83 ], [ %22, %66 ]
  %182 = phi ptr [ %17, %90 ], [ %89, %83 ], [ %18, %66 ]
  %183 = getelementptr inbounds %struct.resources, ptr %6, i64 0, i32 4
  %184 = getelementptr inbounds %struct.resources, ptr %1, i64 0, i32 4
  call void @mark_referenced_resources(ptr noundef nonnull %17, ptr noundef nonnull %6, i8 noundef zeroext 1)
  call void @mark_set_resources(ptr noundef nonnull %17, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1)
  %185 = load i64, ptr %12, align 8, !tbaa !54
  %186 = load i64, ptr %183, align 8, !tbaa !54
  %187 = xor i64 %185, -1
  %188 = or i64 %186, %187
  %189 = load i64, ptr %184, align 8, !tbaa !54
  %190 = and i64 %189, %188
  store i64 %190, ptr %184, align 8, !tbaa !54
  br label %191

191:                                              ; preds = %36, %25, %48, %71, %91, %55, %25, %20, %179, %178, %28
  %192 = phi i32 [ %180, %179 ], [ %95, %178 ], [ %16, %28 ], [ %16, %20 ], [ %16, %25 ], [ %16, %48 ], [ %16, %55 ], [ %72, %91 ], [ %72, %71 ], [ %16, %25 ], [ %16, %36 ]
  %193 = phi ptr [ %181, %179 ], [ %22, %178 ], [ %22, %28 ], [ %22, %20 ], [ %22, %25 ], [ %22, %48 ], [ %22, %55 ], [ %22, %91 ], [ %22, %71 ], [ %22, %25 ], [ %22, %36 ]
  %194 = phi ptr [ %182, %179 ], [ %18, %178 ], [ %18, %28 ], [ %18, %20 ], [ %18, %25 ], [ %18, %48 ], [ %18, %55 ], [ %18, %91 ], [ null, %71 ], [ %18, %25 ], [ %18, %36 ]
  %195 = phi i1 [ false, %179 ], [ true, %178 ], [ false, %28 ], [ true, %20 ], [ false, %25 ], [ false, %48 ], [ false, %55 ], [ true, %91 ], [ true, %71 ], [ false, %25 ], [ false, %36 ]
  br i1 %195, label %196, label %15, !llvm.loop !126

196:                                              ; preds = %191, %15
  %197 = phi ptr [ %18, %15 ], [ %194, %191 ]
  ret ptr %197
}

declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @init_resource_info(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  store i8 0, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 3), align 1, !tbaa !62
  store i8 1, ptr @end_of_function_needs, align 8, !tbaa !60
  store i8 0, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 1), align 1, !tbaa !59
  store i64 0, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8, !tbaa !54
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !66
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  store i64 1048640, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8, !tbaa !54
  %5 = load i32, ptr @current_function_sp_is_unchanging, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i64 1048640, i64 1048768
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i64 [ %7, %4 ], [ 128, %1 ]
  store i64 %9, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !127
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @mark_referenced_resources(ptr noundef nonnull %10, ptr noundef nonnull @end_of_function_needs, i8 noundef zeroext 1)
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i64, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8, !tbaa !54
  br label %15

15:                                               ; preds = %13, %24
  %16 = phi i64 [ 0, %13 ], [ %26, %24 ]
  %17 = phi i64 [ %14, %13 ], [ %25, %24 ]
  %18 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = shl nuw i64 1, %16
  %23 = or i64 %17, %22
  store i64 %23, ptr getelementptr inbounds (%struct.resources, ptr @end_of_function_needs, i64 0, i32 4), align 8, !tbaa !54
  br label %24

24:                                               ; preds = %15, %21
  %25 = phi i64 [ %17, %15 ], [ %23, %21 ]
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp eq i64 %26, 53
  br i1 %27, label %28, label %15, !llvm.loop !128

28:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @start_of_epilogue_needs, ptr noundef nonnull align 8 dereferenceable(16) @end_of_function_needs, i64 16, i1 false), !tbaa.struct !86
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi ptr [ %0, %28 ], [ %31, %33 ]
  %31 = tail call ptr @next_nonnote_insn(ptr noundef %30) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  tail call void @mark_set_resources(ptr noundef nonnull %31, ptr noundef nonnull @end_of_function_needs, i32 noundef 0, i32 noundef 1)
  %34 = tail call fastcc zeroext i8 @return_insn_p(ptr noundef nonnull %31), !range !87
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %29, label %36, !llvm.loop !129

36:                                               ; preds = %33, %29
  %37 = tail call ptr @xcalloc(i64 noundef 257, i64 noundef 8) #15
  store ptr %37, ptr @target_hash_table, align 8, !tbaa !35
  %38 = load ptr, ptr @cfun, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !130
  %43 = sext i32 %42 to i64
  %44 = tail call ptr @xcalloc(i64 noundef %43, i64 noundef 4) #15
  store ptr %44, ptr @bb_ticks, align 8, !tbaa !35
  %45 = load ptr, ptr @cfun, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  %48 = load ptr, ptr %47, align 8, !tbaa !110
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !131
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %36, %64
  %55 = phi ptr [ %66, %64 ], [ %50, %36 ]
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 1
  store ptr %55, ptr %63, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %54, %62
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !111
  %67 = load ptr, ptr %46, align 8, !tbaa !92
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !131
  %70 = icmp eq ptr %66, %69
  br i1 %70, label %71, label %54, !llvm.loop !132

71:                                               ; preds = %64, %36
  ret void
}

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @free_resource_info() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0, %14
  %4 = phi i64 [ %15, %14 ], [ 0, %0 ]
  %5 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.target_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  tail call void @free(ptr noundef %10)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !133

14:                                               ; preds = %9, %3
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 257
  br i1 %16, label %17, label %3, !llvm.loop !134

17:                                               ; preds = %14
  %18 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  tail call void @free(ptr noundef %18)
  store ptr null, ptr @target_hash_table, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %17, %0
  %20 = load ptr, ptr @bb_ticks, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free(ptr noundef %20)
  store ptr null, ptr @bb_ticks, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  %27 = load ptr, ptr %26, align 8, !tbaa !110
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !111
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !131
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %23, %43
  %34 = phi ptr [ %45, %43 ], [ %29, %23 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %42, align 8, !tbaa !46
  br label %43

43:                                               ; preds = %33, %41
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !111
  %46 = load ptr, ptr %25, align 8, !tbaa !92
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  %49 = icmp eq ptr %45, %48
  br i1 %49, label %50, label %33, !llvm.loop !135

50:                                               ; preds = %43, %23
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_hashed_info_for_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !34 {
  %2 = load ptr, ptr @target_hash_table, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = srem i32 %6, 257
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %4, %16
  %13 = phi ptr [ %18, %16 ], [ %10, %4 ]
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.target_info, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %12, !llvm.loop !136

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.target_info, ptr %13, i64 0, i32 3
  store i32 -1, ptr %21, align 8, !tbaa !91
  br label %22

22:                                               ; preds = %16, %4, %20, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @incr_ticks_for_insn(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 13, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = tail call fastcc i32 @find_basic_block(ptr noundef %0, i32 noundef %4)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @bb_ticks, align 8, !tbaa !35
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !50
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_end_of_function_resources(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !34 {
  tail call void @mark_referenced_resources(ptr noundef %0, ptr noundef nonnull @end_of_function_needs, i8 noundef zeroext %1)
  ret void
}

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

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
!54 = !{!55, !42, i64 8}
!55 = !{!"resources", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !42, i64 8}
!56 = distinct !{!56, !52, !53}
!57 = !{!42, !42, i64 0}
!58 = distinct !{!58, !52, !53}
!59 = !{!55, !37, i64 1}
!60 = !{!55, !37, i64 0}
!61 = !{!55, !37, i64 2}
!62 = !{!55, !37, i64 3}
!63 = !{!64, !41, i64 0}
!64 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !37, i64 477}
!67 = !{!"rtl_data", !68, i64 0, !69, i64 40, !70, i64 96, !71, i64 112, !73, i64 208, !74, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!68 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!69 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!70 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!71 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !72, i64 24, !36, i64 88}
!72 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!73 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!74 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!75 = distinct !{!75, !52, !53}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = !{i64 0, i64 1, !46, i64 1, i64 1, !46, i64 2, i64 1, !46, i64 3, i64 1, !46, i64 8, i64 8, !57}
!87 = !{i8 0, i8 2}
!88 = !{!89, !41, i64 0}
!89 = !{!"target_info", !41, i64 0, !36, i64 8, !42, i64 16, !41, i64 24, !41, i64 28}
!90 = distinct !{!90, !52, !53}
!91 = !{!89, !41, i64 24}
!92 = !{!93, !36, i64 8}
!93 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!94 = !{!95, !36, i64 16}
!95 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!96 = !{!97, !36, i64 0}
!97 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!98 = !{!99, !41, i64 8}
!99 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!100 = !{!89, !41, i64 28}
!101 = !{!89, !42, i64 16}
!102 = !{!89, !36, i64 8}
!103 = !{!104, !41, i64 80}
!104 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!105 = !{!106, !41, i64 16}
!106 = !{!"dataflow", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 53, !37, i64 54}
!107 = !{!106, !36, i64 8}
!108 = !{!109, !36, i64 16}
!109 = !{!"df_lr_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!110 = !{!95, !36, i64 0}
!111 = !{!104, !36, i64 56}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = distinct !{!119, !52, !53}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = !{!67, !36, i64 320}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = !{!95, !41, i64 32}
!131 = !{!95, !36, i64 8}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
