; ModuleID = 'zchar2.c'
source_filename = "zchar2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_point_s = type { double, double }

@zchar2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcshow }, %struct.op_def { ptr @.str.1, ptr @zrootfont }, %struct.op_def { ptr @.str.2, ptr @cshow_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"2cshow\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"0rootfont\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"0%cshow_continue\00", align 1
@zchar2_l2_op_defs.op_defs_ = internal constant [9 x %struct.op_def] [%struct.op_def { ptr @.str.3, ptr null }, %struct.op_def { ptr @.str.4, ptr @zglyphshow }, %struct.op_def { ptr @.str.5, ptr @zxshow }, %struct.op_def { ptr @.str.6, ptr @zxyshow }, %struct.op_def { ptr @.str.7, ptr @zyshow }, %struct.op_def { ptr @.str.8, ptr @xshow_continue }, %struct.op_def { ptr @.str.9, ptr @yshow_continue }, %struct.op_def { ptr @.str.10, ptr @xyshow_continue }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"1glyphshow\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"2xshow\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"2xyshow\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"2yshow\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"0%xshow_continue\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"0%yshow_continue\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"0%xyshow_continue\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"op_show_enum_setup\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"op_show_glyph\00", align 1
@xyshow_continues = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @xshow_continue, ptr @yshow_continue, ptr @xyshow_continue], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zchar2_op_defs() local_unnamed_addr #0 {
  ret ptr @zchar2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcshow(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %4 = load i16, ptr %3, align 8, !tbaa !5
  %5 = and i16 %4, 15552
  %6 = icmp eq i16 %5, 1216
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr %0, align 8, !tbaa !5
  %9 = and i16 %8, 15552
  %10 = icmp eq i16 %9, 1216
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1
  %14 = icmp ugt ptr %13, %0
  %15 = select i1 %14, i32 -17, i32 -20
  br label %42

16:                                               ; preds = %7, %1
  %17 = phi ptr [ %3, %1 ], [ %0, %7 ]
  %18 = phi ptr [ %0, %1 ], [ %3, %7 ]
  %19 = call i32 @op_show_setup(ptr noundef %18, ptr noundef nonnull %2) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !tbaa !15
  %23 = load ptr, ptr @igs, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.tas_s, ptr %18, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !17
  %28 = zext i16 %27 to i32
  %29 = call i32 @gs_cshow_n_init(ptr noundef %22, ptr noundef %23, ptr noundef %25, i32 noundef %28) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %32, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  %35 = load ptr, ptr %2, align 8, !tbaa !15
  call void %34(ptr noundef %32, ptr noundef %35, ptr noundef nonnull @.str.11) #5
  br label %42

36:                                               ; preds = %21
  %37 = load ptr, ptr %2, align 8, !tbaa !15
  call void @op_show_finish_setup(ptr noundef %37, i32 noundef 2, ptr noundef null) #5
  %38 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %39 = getelementptr inbounds %struct.ref_s, ptr %38, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !24
  %40 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %41 = call i32 @cshow_continue(ptr noundef nonnull %40)
  br label %42

42:                                               ; preds = %16, %11, %36, %31
  %43 = phi i32 [ %29, %31 ], [ %41, %36 ], [ %15, %11 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zrootfont(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !30
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !23
  %7 = load ptr, ptr @igs, align 8, !tbaa !15
  %8 = tail call ptr @gs_rootfont(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.gs_font_s, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !24
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @cshow_continue(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_point_s, align 8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 -4
  %8 = icmp ugt ptr %3, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 4) #5
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %63

12:                                               ; preds = %9, %1
  %13 = tail call i32 @gs_show_next(ptr noundef %5) #5
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @op_show_continue_dispatch(ptr noundef %0, i32 noundef %13) #5
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %63

18:                                               ; preds = %15
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %20 = getelementptr %struct.ref_s, ptr %19, i64 -1, i32 1
  store ptr @cshow_continue, ptr %20, align 8, !tbaa !16
  %21 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  store i16 3968, ptr %22, align 8, !tbaa !5
  %23 = getelementptr %struct.ref_s, ptr %21, i64 -1, i32 0, i32 1
  store i16 0, ptr %23, align 2, !tbaa !17
  br label %63

24:                                               ; preds = %12
  %25 = load ptr, ptr @e_stack, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %26 = call i32 @gs_show_current_width(ptr noundef %5, ptr noundef nonnull %2) #5
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %28 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !30
  %29 = icmp ugt ptr %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %61

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  store ptr %27, ptr @o_stack, align 8, !tbaa !23
  %33 = call i64 @gs_show_current_char(ptr noundef %5) #5
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %33, ptr %35, align 8, !tbaa !16
  store i16 2816, ptr %34, align 8, !tbaa !5
  %36 = load double, ptr %2, align 8, !tbaa !38
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %39 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %37, ptr %39, align 8, !tbaa !16
  store i16 4096, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %41 = load double, ptr %40, align 8, !tbaa !41
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3, i32 1
  store float %42, ptr %43, align 8, !tbaa !16
  store i16 4096, ptr %27, align 8, !tbaa !5
  %44 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1
  store ptr %45, ptr @e_stack, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1, i32 1
  store ptr @cshow_continue, ptr %46, align 8, !tbaa !16
  store i16 3968, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1, i32 0, i32 1
  store i16 0, ptr %47, align 2, !tbaa !17
  %48 = getelementptr inbounds %struct.ref_s, ptr %44, i64 2
  store ptr %48, ptr @e_stack, align 8, !tbaa !23
  %49 = getelementptr inbounds %struct.ref_s, ptr %44, i64 2, i32 1
  store ptr @zsetfont, ptr %49, align 8, !tbaa !16
  store i16 3968, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.ref_s, ptr %44, i64 2, i32 0, i32 1
  store i16 0, ptr %50, align 2, !tbaa !17
  %51 = getelementptr inbounds %struct.ref_s, ptr %44, i64 3
  store ptr %51, ptr @e_stack, align 8, !tbaa !23
  %52 = load ptr, ptr @igs, align 8, !tbaa !15
  %53 = call ptr @gs_currentfont(ptr noundef %52) #5
  %54 = getelementptr inbounds %struct.gs_font_s, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !24
  %56 = load ptr, ptr @igs, align 8, !tbaa !15
  %57 = call ptr @gs_show_current_font(ptr noundef %5) #5
  %58 = call i32 @gs_setfont(ptr noundef %56, ptr noundef %57) #5
  %59 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 1
  store ptr %60, ptr @e_stack, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !24
  br label %61

61:                                               ; preds = %31, %30
  %62 = phi i32 [ -16, %30 ], [ 5, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  br label %63

63:                                               ; preds = %61, %15, %18, %9
  %64 = phi i32 [ %10, %9 ], [ %16, %18 ], [ %16, %15 ], [ %62, %61 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zchar2_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zchar2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zglyphshow(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %3 = load ptr, ptr @igs, align 8, !tbaa !15
  %4 = tail call ptr @gs_currentfont(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.gs_font_s, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = add i32 %6, -9
  %8 = icmp ult i32 %7, 3
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !16
  br i1 %8, label %11, label %21

11:                                               ; preds = %1
  %12 = icmp eq i8 %10, 11
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !16
  %18 = icmp ugt i64 %17, -2147483649
  br i1 %18, label %46, label %19

19:                                               ; preds = %15
  %20 = add nuw i64 %17, 2147483648
  br label %28

21:                                               ; preds = %1
  %22 = icmp eq i8 %10, 13
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %46

25:                                               ; preds = %21
  %26 = tail call i32 @name_index(ptr noundef %0) #5
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i64 [ %27, %25 ], [ %20, %19 ]
  %30 = call i32 @op_show_enum_setup(ptr noundef %0, ptr noundef nonnull %2) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 8, !tbaa !15
  %34 = load ptr, ptr @igs, align 8, !tbaa !15
  %35 = call i32 @gs_glyphshow_init(ptr noundef %33, ptr noundef %34, i64 noundef %29) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %38, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = load ptr, ptr %2, align 8, !tbaa !15
  call void %40(ptr noundef %38, ptr noundef %41, ptr noundef nonnull @.str.12) #5
  br label %46

42:                                               ; preds = %32
  %43 = load ptr, ptr %2, align 8, !tbaa !15
  call void @op_show_finish_setup(ptr noundef %43, i32 noundef 1, ptr noundef null) #5
  %44 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %45 = call i32 @op_show_continue(ptr noundef nonnull %44) #5
  br label %46

46:                                               ; preds = %28, %15, %42, %37, %23, %13
  %47 = phi i32 [ %35, %37 ], [ %45, %42 ], [ %24, %23 ], [ %14, %13 ], [ -15, %15 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @zxshow(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @moveshow(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zxyshow(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @moveshow(ptr noundef %0, i32 noundef 3)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zyshow(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @moveshow(ptr noundef %0, i32 noundef 2)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @xshow_continue(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @moveshow_continue(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @yshow_continue(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @moveshow_continue(ptr noundef %0, i32 noundef 2)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @xyshow_continue(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @moveshow_continue(ptr noundef %0, i32 noundef 3)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @op_show_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_cshow_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @op_show_finish_setup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @gs_rootfont(ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_show_next(ptr noundef) local_unnamed_addr #3

declare i32 @op_show_continue_dispatch(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_show_current_width(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @gs_show_current_char(ptr noundef) local_unnamed_addr #3

declare i32 @zsetfont(ptr noundef) #3

declare ptr @gs_currentfont(ptr noundef) local_unnamed_addr #3

declare i32 @gs_setfont(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gs_show_current_font(ptr noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @name_index(ptr noundef) local_unnamed_addr #3

declare i32 @op_show_enum_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_glyphshow_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @op_show_continue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @moveshow(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %5 = call i32 @op_show_setup(ptr noundef nonnull %4, ptr noundef nonnull %3) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !15
  %9 = load ptr, ptr @igs, align 8, !tbaa !15
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !17
  %14 = zext i16 %13 to i32
  %15 = call i32 @gs_xyshow_n_init(ptr noundef %8, ptr noundef %9, ptr noundef %11, i32 noundef %14) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %18, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = load ptr, ptr %3, align 8, !tbaa !15
  call void %20(ptr noundef %18, ptr noundef %21, ptr noundef nonnull @.str.11) #5
  br label %36

22:                                               ; preds = %7
  %23 = call i32 @num_array_format(ptr noundef %0) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load ptr, ptr @gs_imemory, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %26, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = load ptr, ptr %3, align 8, !tbaa !15
  call void %28(ptr noundef %26, ptr noundef %29, ptr noundef nonnull @.str.11) #5
  br label %36

30:                                               ; preds = %22
  %31 = load ptr, ptr %3, align 8, !tbaa !15
  call void @op_show_finish_setup(ptr noundef %31, i32 noundef 2, ptr noundef null) #5
  %32 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %35 = call fastcc i32 @moveshow_continue(ptr noundef nonnull %34, i32 noundef %1)
  br label %36

36:                                               ; preds = %2, %30, %25, %17
  %37 = phi i32 [ 1, %17 ], [ %23, %25 ], [ %35, %30 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %37
}

declare i32 @gs_xyshow_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @num_array_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @moveshow_continue(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -1
  %7 = tail call i32 @num_array_format(ptr noundef nonnull %6) #5
  %8 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr %struct.ref_s, ptr %8, i64 -2, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !16
  %13 = trunc i64 %12 to i32
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds [4 x ptr], ptr @xyshow_continues, i64 0, i64 %14
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %19 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %20 = and i32 %1, 2
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %24 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  br label %26

26:                                               ; preds = %79, %2
  %27 = phi i32 [ undef, %2 ], [ %81, %79 ]
  %28 = phi i32 [ %13, %2 ], [ %82, %79 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %29 = call i32 @gs_show_next(ptr noundef %10) #5
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = zext i32 %28 to i64
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %34 = getelementptr %struct.ref_s, ptr %33, i64 -2, i32 1
  store i64 %32, ptr %34, align 8, !tbaa !16
  %35 = call i32 @op_show_continue_dispatch(ptr noundef %0, i32 noundef %29) #5
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %79

37:                                               ; preds = %31
  %38 = load ptr, ptr %15, align 8, !tbaa !15
  %39 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %40 = getelementptr %struct.ref_s, ptr %39, i64 -1, i32 1
  store ptr %38, ptr %40, align 8, !tbaa !16
  %41 = load ptr, ptr @e_stack, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 -1
  store i16 3968, ptr %42, align 8, !tbaa !5
  %43 = getelementptr %struct.ref_s, ptr %41, i64 -1, i32 0, i32 1
  store i16 0, ptr %43, align 2, !tbaa !17
  br label %79

44:                                               ; preds = %26
  br i1 %17, label %55, label %45

45:                                               ; preds = %44
  %46 = add i32 %28, 1
  %47 = call i32 @num_array_get(ptr noundef nonnull %6, i32 noundef %7, i32 noundef %28, ptr noundef nonnull %3) #5
  switch i32 %47, label %52 [
    i32 11, label %48
    i32 14, label %51
  ]

48:                                               ; preds = %45
  %49 = load i64, ptr %18, align 8, !tbaa !16
  %50 = sitofp i64 %49 to float
  store float %50, ptr %18, align 8, !tbaa !16
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %45, %48, %51
  %53 = phi i32 [ 16, %48 ], [ -15, %51 ], [ %47, %45 ]
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %79, label %56

55:                                               ; preds = %44
  store float 0.000000e+00, ptr %19, align 8, !tbaa !16
  br label %56

56:                                               ; preds = %52, %55
  %57 = phi i32 [ %46, %52 ], [ %28, %55 ]
  br i1 %21, label %68, label %58

58:                                               ; preds = %56
  %59 = add i32 %57, 1
  %60 = call i32 @num_array_get(ptr noundef nonnull %6, i32 noundef %7, i32 noundef %57, ptr noundef nonnull %4) #5
  switch i32 %60, label %65 [
    i32 11, label %61
    i32 14, label %64
  ]

61:                                               ; preds = %58
  %62 = load i64, ptr %22, align 8, !tbaa !16
  %63 = sitofp i64 %62 to float
  store float %63, ptr %22, align 8, !tbaa !16
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %58, %61, %64
  %66 = phi i32 [ 16, %61 ], [ -15, %64 ], [ %60, %58 ]
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %79, label %69

68:                                               ; preds = %56
  store float 0.000000e+00, ptr %23, align 8, !tbaa !16
  br label %69

69:                                               ; preds = %65, %68
  %70 = phi i32 [ %59, %65 ], [ %57, %68 ]
  %71 = load ptr, ptr @igs, align 8, !tbaa !15
  %72 = load float, ptr %24, align 8, !tbaa !16
  %73 = fpext float %72 to double
  %74 = load float, ptr %25, align 8, !tbaa !16
  %75 = fpext float %74 to double
  %76 = call i32 @gs_rmoveto(ptr noundef %71, double noundef %73, double noundef %75) #5
  %77 = lshr i32 %76, 30
  %78 = and i32 %77, 2
  br label %79

79:                                               ; preds = %69, %65, %52, %31, %37
  %80 = phi i32 [ %35, %37 ], [ %35, %31 ], [ %53, %52 ], [ %66, %65 ], [ %76, %69 ]
  %81 = phi i32 [ %35, %37 ], [ %35, %31 ], [ %27, %52 ], [ %27, %65 ], [ %27, %69 ]
  %82 = phi i32 [ %28, %37 ], [ %28, %31 ], [ %46, %52 ], [ %59, %65 ], [ %70, %69 ]
  %83 = phi i32 [ 1, %37 ], [ 1, %31 ], [ 2, %52 ], [ 2, %65 ], [ %78, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  switch i32 %83, label %86 [
    i32 0, label %26
    i32 2, label %84
  ], !llvm.loop !43

84:                                               ; preds = %79
  %85 = call i32 @op_show_free(i32 noundef %80) #5
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi i32 [ %85, %84 ], [ %81, %79 ]
  ret i32 %87
}

declare i32 @gs_rmoveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @op_show_free(i32 noundef) local_unnamed_addr #3

declare i32 @num_array_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 0}
!6 = !{!"ref_s", !7, i64 0, !9, i64 8}
!7 = !{!"tas_s", !8, i64 0, !8, i64 2}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 8}
!12 = !{!"ref_stack_s", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !14, i64 40, !14, i64 44, !6, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !6, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !13, i64 120}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!6, !8, i64 2}
!18 = !{!19, !13, i64 0}
!19 = !{!"gs_dual_memory_s", !13, i64 0, !9, i64 8, !14, i64 40, !14, i64 44, !13, i64 48, !14, i64 56, !14, i64 60}
!20 = !{!21, !13, i64 88}
!21 = !{!"gs_memory_s", !22, i64 0}
!22 = !{!"gs_memory_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!23 = !{!12, !13, i64 0}
!24 = !{i64 0, i64 2, !25, i64 2, i64 2, !25, i64 8, i64 8, !26, i64 8, i64 2, !25, i64 8, i64 4, !28, i64 8, i64 8, !26, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15}
!25 = !{!8, !8, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !9, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !9, i64 0}
!30 = !{!12, !13, i64 16}
!31 = !{!12, !14, i64 64}
!32 = !{!33, !13, i64 40}
!33 = !{!"gs_font_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !34, i64 48, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !29, i64 100, !35, i64 104, !37, i64 176, !37, i64 228}
!34 = !{!"gs_matrix_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!35 = !{!"gs_font_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !36, i64 32, !13, i64 48, !13, i64 56, !13, i64 64}
!36 = !{!"gx_xfont_callbacks_s", !13, i64 0, !13, i64 8}
!37 = !{!"gs_font_name_s", !9, i64 0, !14, i64 48}
!38 = !{!39, !40, i64 0}
!39 = !{!"gs_point_s", !40, i64 0, !40, i64 8}
!40 = !{!"double", !9, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!33, !14, i64 72}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
