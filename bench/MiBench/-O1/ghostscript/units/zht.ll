; ModuleID = 'zht.c'
source_filename = "zht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_point_s = type { double, double }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.0, %union.anon.0, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.4, %struct.ref_s, %struct.ref_s }
%union.anon.0 = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.3 }
%struct.ref_cie_procs_s = type { %union.anon.1, %union.anon.2, %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_s }
%union.anon.3 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.4 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }

@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@zht_op_defs.op_defs_ = internal constant [7 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zcurrenthalftone }, %struct.op_def { ptr @.str.2, ptr @zcurrentscreenlevels }, %struct.op_def { ptr @.str.3, ptr @zsetscreen }, %struct.op_def { ptr @.str.4, ptr @screen_sample }, %struct.op_def { ptr @.str.5, ptr @set_screen_continue }, %struct.op_def { ptr @.str.6, ptr @setscreen_finish }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"0.currenthalftone\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"0.currentscreenlevels\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"3setscreen\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"0%screen_sample\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"1%set_screen_continue\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"0%setscreen_finish\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"screen_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zscreen_enum_init(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -5
  %11 = icmp ugt ptr %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #5
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %53

15:                                               ; preds = %12, %7
  %16 = load ptr, ptr @gs_imemory, align 8, !tbaa !15
  %17 = tail call ptr @gs_screen_enum_alloc(ptr noundef %16, ptr noundef nonnull @.str) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 4, i32 1
  store ptr %17, ptr %21, align 8, !tbaa !17
  %22 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !18
  %23 = trunc i32 %22 to i16
  %24 = add i16 %23, 2048
  %25 = getelementptr inbounds %struct.ref_s, ptr %20, i64 4
  store i16 %24, ptr %25, align 8, !tbaa !19
  %26 = load ptr, ptr @igs, align 8, !tbaa !20
  %27 = tail call i32 @gs_screen_enum_init_memory(ptr noundef nonnull %17, ptr noundef %1, ptr noundef %26, ptr noundef %2, ptr noundef %6) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load ptr, ptr @gs_imemory, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 4, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !17
  tail call void %32(ptr noundef %30, ptr noundef %35, ptr noundef nonnull @.str.7) #5
  br label %53

36:                                               ; preds = %19
  %37 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1, i32 1
  store ptr @screen_cleanup, ptr %38, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1
  store i16 3712, ptr %39, align 8, !tbaa !19
  %40 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1, i32 0, i32 1
  store i16 0, ptr %40, align 2, !tbaa !24
  %41 = getelementptr inbounds %struct.ref_s, ptr %37, i64 4
  store ptr %41, ptr @e_stack, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2, i32 1
  store ptr %5, ptr %42, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2
  store i16 3968, ptr %43, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2, i32 0, i32 1
  store i16 0, ptr %44, align 2, !tbaa !24
  %45 = getelementptr inbounds %struct.ref_s, ptr %37, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25
  %46 = getelementptr inbounds %struct.ref_s, ptr %37, i64 5
  store ptr %46, ptr @e_stack, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ref_s, ptr %37, i64 5, i32 1
  store ptr @screen_sample, ptr %47, align 8, !tbaa !17
  store i16 3968, ptr %46, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.ref_s, ptr %37, i64 5, i32 0, i32 1
  store i16 0, ptr %48, align 2, !tbaa !24
  %49 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %50 = sext i32 %4 to i64
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds %struct.ref_s, ptr %49, i64 %51
  store ptr %52, ptr @o_stack, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %15, %12, %36, %29
  %54 = phi i32 [ %27, %29 ], [ 5, %36 ], [ %13, %12 ], [ -25, %15 ]
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @gs_screen_enum_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_screen_enum_init_memory(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_cleanup(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @gs_imemory, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void %4(ptr noundef %2, ptr noundef %7, ptr noundef nonnull @.str.7) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal i32 @screen_sample(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %7 = call i32 @gs_screen_currentpoint(ptr noundef %6, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  switch i32 %7, label %46 [
    i32 1, label %8
    i32 0, label %26
  ]

8:                                                ; preds = %1
  %9 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %10 = getelementptr %struct.ref_s, ptr %9, i64 -2, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 %11(ptr noundef %0) #5
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 1, %8 ]
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -4
  store ptr %18, ptr @e_stack, align 8, !tbaa !5
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  call void %21(ptr noundef %19, ptr noundef %23, ptr noundef nonnull @.str.7) #5
  %24 = icmp slt i32 %16, 0
  %25 = select i1 %24, i32 %16, i32 14
  br label %46

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %28 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !14
  %29 = icmp ugt ptr %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %46

31:                                               ; preds = %26
  store ptr %27, ptr @o_stack, align 8, !tbaa !5
  %32 = load double, ptr %2, align 8, !tbaa !32
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %33, ptr %35, align 8, !tbaa !17
  store i16 4096, ptr %34, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %37 = load double, ptr %36, align 8, !tbaa !35
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %38, ptr %39, align 8, !tbaa !17
  store i16 4096, ptr %27, align 8, !tbaa !19
  %40 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !25
  %42 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1
  store ptr %42, ptr @e_stack, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1, i32 1
  store ptr @set_screen_continue, ptr %43, align 8, !tbaa !17
  store i16 3968, ptr %42, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1, i32 0, i32 1
  store i16 0, ptr %44, align 2, !tbaa !24
  %45 = getelementptr inbounds %struct.ref_s, ptr %40, i64 2
  store ptr %45, ptr @e_stack, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25
  br label %46

46:                                               ; preds = %1, %31, %30, %15
  %47 = phi i32 [ -16, %30 ], [ 5, %31 ], [ %25, %15 ], [ %7, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zscreen_params(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %5 = call i32 @num_params(ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull %3) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i16, ptr %0, align 8, !tbaa !19
  %9 = and i16 %8, 15552
  %10 = icmp eq i16 %9, 1216
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call i32 @check_proc_failed(ptr noundef nonnull %0) #5
  br label %18

13:                                               ; preds = %7
  %14 = load float, ptr %3, align 4, !tbaa !29
  store float %14, ptr %1, align 8, !tbaa !36
  %15 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !29
  %17 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %1, i64 0, i32 1
  store float %16, ptr %17, align 4, !tbaa !38
  br label %18

18:                                               ; preds = %2, %13, %11
  %19 = phi i32 [ 0, %13 ], [ %12, %11 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %19
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zht_op_defs() local_unnamed_addr #4 {
  ret ptr @zht_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrenthalftone(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_halftone_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #5
  %3 = load ptr, ptr @igs, align 8, !tbaa !20
  %4 = call i32 @gs_currenthalftone(ptr noundef %3, ptr noundef nonnull %2) #5
  %5 = load i32, ptr %2, align 8, !tbaa !39
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !14
  switch i32 %5, label %52 [
    i32 1, label %7
    i32 2, label %25
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %9 = icmp ugt ptr %8, %6
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %62

11:                                               ; preds = %7
  store ptr %8, ptr @o_stack, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.gs_halftone_s, ptr %2, i64 0, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %13, ptr %15, align 8, !tbaa !17
  store i16 4096, ptr %14, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.gs_halftone_s, ptr %2, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !17
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %17, ptr %19, align 8, !tbaa !17
  store i16 4096, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %21 = load ptr, ptr @igs, align 8, !tbaa !20
  %22 = call ptr @gs_state_client_data(ptr noundef %21) #5
  %23 = getelementptr inbounds %struct.int_gstate_s, ptr %22, i64 0, i32 1, i32 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !25
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4, i32 1
  store i64 1, ptr %24, align 8, !tbaa !17
  store i16 2816, ptr %8, align 8, !tbaa !19
  br label %62

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 13
  %27 = icmp ugt ptr %26, %6
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 13, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %62

29:                                               ; preds = %25
  store ptr %26, ptr @o_stack, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %31 = getelementptr inbounds %struct.gs_halftone_s, ptr %2, i64 0, i32 2
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %48, %32 ]
  %34 = mul nuw nsw i64 %33, 3
  %35 = getelementptr inbounds %struct.ref_s, ptr %30, i64 %34
  %36 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], ptr %31, i64 0, i64 %33
  %37 = load float, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.ref_s, ptr %30, i64 %34, i32 1
  store float %37, ptr %38, align 8, !tbaa !17
  store i16 4096, ptr %35, align 8, !tbaa !19
  %39 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], ptr %31, i64 0, i64 %33, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !38
  %41 = getelementptr inbounds %struct.ref_s, ptr %35, i64 1
  %42 = getelementptr inbounds %struct.ref_s, ptr %35, i64 1, i32 1
  store float %40, ptr %42, align 8, !tbaa !17
  store i16 4096, ptr %41, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.ref_s, ptr %35, i64 2
  %44 = load ptr, ptr @igs, align 8, !tbaa !20
  %45 = call ptr @gs_state_client_data(ptr noundef %44) #5
  %46 = getelementptr inbounds %struct.int_gstate_s, ptr %45, i64 0, i32 1
  %47 = getelementptr inbounds [4 x %struct.ref_s], ptr %46, i64 0, i64 %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !25
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %50, label %32, !llvm.loop !42

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 13, i32 1
  store i64 2, ptr %51, align 8, !tbaa !17
  store i16 2816, ptr %26, align 8, !tbaa !19
  br label %62

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %54 = icmp ugt ptr %53, %6
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %62

56:                                               ; preds = %52
  store ptr %53, ptr @o_stack, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %58 = load ptr, ptr @igs, align 8, !tbaa !20
  %59 = call ptr @gs_state_client_data(ptr noundef %58) #5
  %60 = getelementptr inbounds %struct.int_gstate_s, ptr %59, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false), !tbaa.struct !25
  %61 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 0, ptr %61, align 8, !tbaa !17
  store i16 2816, ptr %53, align 8, !tbaa !19
  br label %62

62:                                               ; preds = %11, %50, %56, %55, %28, %10
  %63 = phi i32 [ -16, %55 ], [ -16, %28 ], [ -16, %10 ], [ 0, %56 ], [ 0, %50 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #5
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentscreenlevels(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !14
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !31
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !5
  %7 = load ptr, ptr @igs, align 8, !tbaa !20
  %8 = tail call i32 @gs_currentscreenlevels(ptr noundef %7) #5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !17
  store i16 2816, ptr %2, align 8, !tbaa !19
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetscreen(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  %3 = alloca %struct.gs_screen_halftone_s, align 8
  %4 = alloca %struct.gx_ht_order_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %6 = call i32 @num_params(ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %2) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i16, ptr %0, align 8, !tbaa !19
  %10 = and i16 %9, 15552
  %11 = icmp eq i16 %10, 1216
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @check_proc_failed(ptr noundef nonnull %0) #5
  br label %19

14:                                               ; preds = %8
  %15 = load float, ptr %2, align 4, !tbaa !29
  store float %15, ptr %3, align 8, !tbaa !36
  %16 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !29
  %18 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %3, i64 0, i32 1
  store float %17, ptr %18, align 4, !tbaa !38
  br label %19

19:                                               ; preds = %1, %12, %14
  %20 = phi i32 [ 0, %14 ], [ %13, %12 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = load i16, ptr %0, align 8, !tbaa !19
  %24 = lshr i16 %23, 2
  %25 = and i16 %24, 3
  %26 = zext nneg i16 %25 to i64
  %27 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1), i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = load ptr, ptr @igs, align 8, !tbaa !20
  %30 = call i32 @gs_currentaccuratescreens() #5
  %31 = call i32 @gs_screen_order_init_memory(ptr noundef nonnull %4, ptr noundef %29, ptr noundef nonnull %3, i32 noundef %30, ptr noundef %28) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = call i32 @zscreen_enum_init(ptr nonnull poison, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @setscreen_finish, ptr noundef %28)
  br label %35

35:                                               ; preds = %22, %19, %33
  %36 = phi i32 [ %34, %33 ], [ %20, %19 ], [ %31, %22 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @set_screen_continue(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = load float, ptr %2, align 4, !tbaa !29
  %10 = fpext float %9 to double
  %11 = call i32 @gs_screen_next(ptr noundef %8, double noundef %10) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  store ptr %15, ptr @o_stack, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %17 = call i32 @screen_sample(ptr noundef nonnull %16)
  br label %18

18:                                               ; preds = %5, %1, %13
  %19 = phi i32 [ %17, %13 ], [ %3, %1 ], [ %11, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @setscreen_finish(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = tail call i32 @gs_screen_install(ptr noundef %4) #5
  %6 = load ptr, ptr @igs, align 8, !tbaa !20
  %7 = tail call ptr @gs_state_client_data(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !25
  %11 = load ptr, ptr @igs, align 8, !tbaa !20
  %12 = tail call ptr @gs_state_client_data(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.int_gstate_s, ptr %12, i64 0, i32 1, i32 0, i64 1
  %14 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !25
  %16 = load ptr, ptr @igs, align 8, !tbaa !20
  %17 = tail call ptr @gs_state_client_data(ptr noundef %16) #5
  %18 = getelementptr inbounds %struct.int_gstate_s, ptr %17, i64 0, i32 1, i32 0, i64 2
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !25
  %21 = load ptr, ptr @igs, align 8, !tbaa !20
  %22 = tail call ptr @gs_state_client_data(ptr noundef %21) #5
  %23 = getelementptr inbounds %struct.int_gstate_s, ptr %22, i64 0, i32 1, i32 0, i64 3
  %24 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !25
  %26 = load ptr, ptr @igs, align 8, !tbaa !20
  %27 = tail call ptr @gs_state_client_data(ptr noundef %26) #5
  %28 = getelementptr inbounds %struct.int_gstate_s, ptr %27, i64 0, i32 8
  store i16 3584, ptr %28, align 8, !tbaa !44
  ret i32 0
}

declare i32 @gs_screen_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_currenthalftone(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentscreenlevels(ptr noundef) local_unnamed_addr #2

declare i32 @gs_screen_order_init_memory(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentaccuratescreens() local_unnamed_addr #2

declare i32 @gs_screen_next(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_screen_install(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!6, !7, i64 16}
!15 = !{!16, !7, i64 0}
!16 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !13, i64 40, !13, i64 44, !7, i64 48, !13, i64 56, !13, i64 60}
!17 = !{!8, !8, i64 0}
!18 = !{!16, !13, i64 40}
!19 = !{!10, !12, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 88}
!22 = !{!"gs_memory_s", !23, i64 0}
!23 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!24 = !{!10, !12, i64 2}
!25 = !{i64 0, i64 2, !26, i64 2, i64 2, !26, i64 8, i64 8, !27, i64 8, i64 2, !26, i64 8, i64 4, !29, i64 8, i64 8, !27, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20, i64 8, i64 8, !20}
!26 = !{!12, !12, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !8, i64 0}
!31 = !{!6, !13, i64 64}
!32 = !{!33, !34, i64 0}
!33 = !{!"gs_point_s", !34, i64 0, !34, i64 8}
!34 = !{!"double", !8, i64 0}
!35 = !{!33, !34, i64 8}
!36 = !{!37, !30, i64 0}
!37 = !{!"gs_screen_halftone_s", !30, i64 0, !30, i64 4, !7, i64 8, !30, i64 16, !30, i64 20}
!38 = !{!37, !30, i64 4}
!39 = !{!40, !13, i64 0}
!40 = !{!"gs_halftone_s", !13, i64 0, !41, i64 8, !8, i64 32}
!41 = !{!"rc_header_s", !28, i64 0, !7, i64 8, !7, i64 16}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !12, i64 368}
!45 = !{!"int_gstate_s", !10, i64 0, !8, i64 16, !8, i64 80, !10, i64 144, !10, i64 160, !46, i64 176, !10, i64 272, !49, i64 288, !10, i64 368, !10, i64 384}
!46 = !{!"ref_colorspace_s", !10, i64 0, !47, i64 16}
!47 = !{!"ref_color_procs_s", !48, i64 0, !8, i64 48}
!48 = !{!"ref_cie_procs_s", !8, i64 0, !8, i64 16, !10, i64 32}
!49 = !{!"", !10, i64 0, !50, i64 16}
!50 = !{!"ref_cie_render_procs_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
