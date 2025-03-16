; ModuleID = 'zdevice.c'
source_filename = "zdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon, %union.anon, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.3, %struct.ref_s, %struct.ref_s }
%union.anon = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.2 }
%struct.ref_cie_procs_s = type { %union.anon.0, %union.anon.1, %struct.ref_s }
%union.anon.0 = type { %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.3 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.stack_param_list_s = type { ptr, %union.anon.4, ptr, i32, i32, ptr, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, %struct.ref_s, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@i_null_pagedevice = external local_unnamed_addr global %struct.ref_s, align 8
@zdevice_op_defs.op_defs_ = internal constant [13 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcopydevice }, %struct.op_def { ptr @.str.1, ptr @zcopyscanlines }, %struct.op_def { ptr @.str.2, ptr @zcurrentdevice }, %struct.op_def { ptr @.str.3, ptr @zdevicename }, %struct.op_def { ptr @.str.4, ptr @zflushpage }, %struct.op_def { ptr @.str.5, ptr @zgetdevice }, %struct.op_def { ptr @.str.6, ptr @zgetdeviceparams }, %struct.op_def { ptr @.str.7, ptr @zmakewordimagedevice }, %struct.op_def { ptr @.str.8, ptr @znulldevice }, %struct.op_def { ptr @.str.9, ptr @zoutputpage }, %struct.op_def { ptr @.str.10, ptr @zputdeviceparams }, %struct.op_def { ptr @.str.11, ptr @zsetdevice }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [12 x i8] c"1copydevice\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"3copyscanlines\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0currentdevice\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"1.devicename\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0flushpage\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"1.getdevice\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"2.getdeviceparams\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"5makewordimagedevice\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"0nulldevice\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"2.outputpage\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"3.putdeviceparams\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"1.setdevice\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zcurrentdevice(ptr noundef %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !17
  %8 = icmp ugt ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !21
  br label %20

10:                                               ; preds = %1
  store ptr %6, ptr @o_stack, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store ptr %3, ptr %11, align 8, !tbaa !23
  %12 = icmp eq ptr %5, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @imemory_space(ptr noundef nonnull %5) #7
  %15 = trunc i32 %14 to i16
  %16 = or i16 %15, 112
  %17 = add i16 %16, 4864
  br label %18

18:                                               ; preds = %10, %13
  %19 = phi i16 [ %17, %13 ], [ 4976, %10 ]
  store i16 %19, ptr %6, align 8, !tbaa !24
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i32 [ -16, %9 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #2

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zdevicename(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !24
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4896
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !23
  %8 = icmp eq i8 %7, 19
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  store ptr %15, ptr %12, align 8, !tbaa !23
  store i16 4704, ptr %0, align 8, !tbaa !24
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #8
  %17 = trunc i64 %16 to i16
  %18 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %17, ptr %18, align 2, !tbaa !26
  br label %19

19:                                               ; preds = %9, %5, %11
  %20 = phi i32 [ 0, %11 ], [ %10, %9 ], [ -7, %5 ]
  ret i32 %20
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zflushpage(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_flushpage(ptr noundef %2) #7
  ret i32 %3
}

declare i32 @gs_flushpage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetdevice(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !24
  %3 = and i16 %2, 16144
  %4 = icmp eq i16 %3, 4880
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !23
  %8 = icmp eq i8 %7, 19
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %23

11:                                               ; preds = %1
  %12 = load ptr, ptr @igs, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = tail call i32 @gs_setdevice_no_erase(ptr noundef %12, ptr noundef %14) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = icmp ne i32 %15, 0
  %19 = zext i1 %18 to i16
  store i16 %19, ptr %13, align 8, !tbaa !23
  store i16 256, ptr %0, align 8, !tbaa !24
  %20 = load ptr, ptr @igs, align 8, !tbaa !5
  %21 = tail call ptr @gs_state_client_data(ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.int_gstate_s, ptr %21, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !27
  br label %23

23:                                               ; preds = %11, %9, %5, %17
  %24 = phi i32 [ %15, %17 ], [ %10, %9 ], [ -7, %5 ], [ %15, %11 ]
  ret i32 %24
}

declare i32 @gs_setdevice_no_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zdevice_op_defs() local_unnamed_addr #5 {
  ret ptr @zdevice_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcopydevice(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = load i16, ptr %0, align 8, !tbaa !24
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4896
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !23
  %9 = icmp eq i8 %8, 19
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !32
  %16 = call i32 @gs_copydevice(ptr noundef nonnull %2, ptr noundef %14, ptr noundef %15) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !32
  %20 = load ptr, ptr %2, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %20, i64 0, i32 3
  store ptr %19, ptr %21, align 8, !tbaa !9
  store ptr %20, ptr %13, align 8, !tbaa !23
  %22 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !34
  %23 = trunc i32 %22 to i16
  %24 = or i16 %23, 112
  %25 = add i16 %24, 4864
  store i16 %25, ptr %0, align 8, !tbaa !24
  br label %26

26:                                               ; preds = %12, %10, %6, %18
  %27 = phi i32 [ 0, %18 ], [ %11, %10 ], [ -7, %6 ], [ %16, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zcopyscanlines(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %5 = load i16, ptr %4, align 8, !tbaa !24
  %6 = and i16 %5, 16160
  %7 = icmp eq i16 %6, 4896
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 -31
  %10 = load i8, ptr %9, align 1, !tbaa !23
  %11 = icmp eq i8 %10, 19
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %4) #7
  br label %56

14:                                               ; preds = %1
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = getelementptr inbounds i8, ptr %0, i64 -15
  %18 = load i8, ptr %17, align 1, !tbaa !23
  %19 = icmp eq i8 %18, 11
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #7
  br label %56

22:                                               ; preds = %14
  %23 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !23
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %16, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !35
  %29 = sext i32 %28 to i64
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %56, label %31

31:                                               ; preds = %26
  %32 = load i16, ptr %0, align 8, !tbaa !24
  %33 = and i16 %32, 16144
  %34 = icmp eq i16 %33, 4624
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %0, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !23
  %38 = icmp eq i8 %37, 18
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %56

41:                                               ; preds = %31
  %42 = trunc i64 %24 to i32
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !26
  %47 = zext i16 %46 to i32
  %48 = call i32 @gs_copyscanlines(ptr noundef %16, i32 noundef %42, ptr noundef %44, i32 noundef %47, ptr noundef null, ptr noundef nonnull %2) #7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !27
  %51 = load i32, ptr %2, align 4, !tbaa !36
  %52 = trunc i32 %51 to i16
  %53 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 0, i32 1
  store i16 %52, ptr %53, align 2, !tbaa !26
  %54 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 -2
  store ptr %55, ptr @o_stack, align 8, !tbaa !22
  br label %56

56:                                               ; preds = %41, %39, %35, %22, %26, %12, %8, %50, %20
  %57 = phi i32 [ 0, %50 ], [ %21, %20 ], [ %13, %12 ], [ -7, %8 ], [ -15, %26 ], [ -15, %22 ], [ %40, %39 ], [ -7, %35 ], [ -15, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetdevice(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !23
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !23
  %10 = add i64 %9, 2147483648
  %11 = icmp ult i64 %10, 4294967296
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = trunc i64 %9 to i32
  %14 = tail call ptr @gs_getdevice(i32 noundef %13) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr %14, ptr %8, align 8, !tbaa !23
  store i16 4960, ptr %0, align 8, !tbaa !24
  br label %17

17:                                               ; preds = %12, %7, %16, %5
  %18 = phi i32 [ 0, %16 ], [ %6, %5 ], [ -15, %7 ], [ -15, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetdeviceparams(ptr noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.stack_param_list_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %5 = load i16, ptr %4, align 8, !tbaa !24
  %6 = and i16 %5, 16160
  %7 = icmp eq i16 %6, 4896
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 -15
  %10 = load i8, ptr %9, align 1, !tbaa !23
  %11 = icmp eq i8 %10, 19
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %4) #7
  br label %37

14:                                               ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !27
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %18, ptr @o_stack, align 8, !tbaa !22
  %19 = call i32 @stack_param_list_write(ptr noundef nonnull %3, ptr noundef nonnull @o_stack, ptr noundef nonnull %2) #7
  %20 = call i32 @gs_getdeviceparams(ptr noundef %16, ptr noundef nonnull %3) #7
  %21 = icmp slt i32 %20, 0
  %22 = getelementptr inbounds %struct.stack_param_list_s, ptr %3, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !37
  br i1 %21, label %24, label %33

24:                                               ; preds = %14
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = shl i32 %23, 1
  %28 = add i32 %27, -1
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %28) #7
  br label %31

29:                                               ; preds = %24
  %30 = call i32 @ref_stack_push(ptr noundef nonnull @o_stack, i32 noundef 1) #7
  br label %31

31:                                               ; preds = %29, %26
  %32 = load ptr, ptr @o_stack, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  br label %37

33:                                               ; preds = %14
  %34 = shl i32 %23, 1
  %35 = zext i32 %34 to i64
  %36 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %35) #7
  store i16 3072, ptr %36, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %12, %8, %33, %31
  %38 = phi i32 [ %20, %31 ], [ 0, %33 ], [ %13, %12 ], [ -7, %8 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakewordimagedevice(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %5 = getelementptr inbounds i8, ptr %0, i64 -47
  %6 = load i8, ptr %5, align 1, !tbaa !23
  %7 = icmp eq i8 %6, 11
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %9) #7
  br label %80

11:                                               ; preds = %1
  %12 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !23
  %14 = icmp ugt i64 %13, 2147483647
  br i1 %14, label %80, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 -31
  %17 = load i8, ptr %16, align 1, !tbaa !23
  %18 = icmp eq i8 %17, 11
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %21 = tail call i32 @check_type_failed(ptr noundef nonnull %20) #7
  br label %80

22:                                               ; preds = %15
  %23 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !23
  %25 = icmp ugt i64 %24, 2147483647
  br i1 %25, label %80, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !23
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %80

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %0, i64 -15
  %34 = load i8, ptr %33, align 1, !tbaa !23
  switch i8 %34, label %41 [
    i8 14, label %51
    i8 11, label %35
    i8 18, label %43
  ]

35:                                               ; preds = %32
  %36 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !23
  switch i64 %37, label %80 [
    i64 16, label %38
    i64 24, label %38
    i64 32, label %38
  ]

38:                                               ; preds = %35, %35, %35
  %39 = trunc i64 %37 to i32
  %40 = sub i32 0, %39
  br label %51

41:                                               ; preds = %32
  %42 = tail call i32 @check_type_failed(ptr noundef nonnull %4) #7
  br label %80

43:                                               ; preds = %32
  %44 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %45 = load i16, ptr %44, align 2, !tbaa !26
  %46 = icmp ugt i16 %45, 768
  br i1 %46, label %80, label %47

47:                                               ; preds = %43
  %48 = zext nneg i16 %45 to i32
  %49 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  br label %51

51:                                               ; preds = %32, %38, %47
  %52 = phi ptr [ null, %38 ], [ %50, %47 ], [ null, %32 ]
  %53 = phi i32 [ %40, %38 ], [ %48, %47 ], [ -24, %32 ]
  %54 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %55 = call i32 @read_matrix(ptr noundef nonnull %54, ptr noundef nonnull %2) #7
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %51
  %58 = load i64, ptr %12, align 8, !tbaa !23
  %59 = trunc i64 %58 to i32
  %60 = load i64, ptr %23, align 8, !tbaa !23
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !23
  %64 = zext i16 %63 to i32
  %65 = load ptr, ptr @gs_imemory, align 8, !tbaa !32
  %66 = call i32 @gs_makewordimagedevice(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %59, i32 noundef %61, ptr noundef %52, i32 noundef %53, i32 noundef %64, i32 noundef 1, ptr noundef %65) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  %69 = load ptr, ptr @gs_imemory, align 8, !tbaa !32
  %70 = load ptr, ptr %3, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.gx_device_s, ptr %70, i64 0, i32 3
  store ptr %69, ptr %71, align 8, !tbaa !9
  %72 = getelementptr %struct.ref_s, ptr %0, i64 -4, i32 1
  store ptr %70, ptr %72, align 8, !tbaa !23
  %73 = load ptr, ptr @gs_imemory, align 8, !tbaa !32
  %74 = call i32 @imemory_space(ptr noundef %73) #7
  %75 = trunc i32 %74 to i16
  %76 = or i16 %75, 112
  %77 = add i16 %76, 4864
  store i16 %77, ptr %54, align 8, !tbaa !24
  %78 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.ref_s, ptr %78, i64 -4
  store ptr %79, ptr @o_stack, align 8, !tbaa !22
  br label %80

80:                                               ; preds = %57, %68, %51, %43, %35, %22, %11, %41, %30, %19, %8
  %81 = phi i32 [ %42, %41 ], [ %31, %30 ], [ %21, %19 ], [ %10, %8 ], [ -15, %11 ], [ -15, %22 ], [ -15, %35 ], [ -15, %43 ], [ %55, %51 ], [ %66, %68 ], [ %66, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @znulldevice(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  tail call void @gs_nulldevice(ptr noundef %2) #7
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = tail call ptr @gs_state_client_data(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.int_gstate_s, ptr %4, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zoutputpage(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -15
  %3 = load i8, ptr %2, align 1, !tbaa !23
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #7
  br label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !23
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %27

14:                                               ; preds = %8
  %15 = load ptr, ptr @igs, align 8, !tbaa !5
  %16 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !23
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !23
  %21 = zext i16 %20 to i32
  %22 = tail call i32 @gs_output_page(ptr noundef %15, i32 noundef %18, i32 noundef %21) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -2
  store ptr %26, ptr @o_stack, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %14, %24, %12, %5
  %28 = phi i32 [ 0, %24 ], [ %13, %12 ], [ %7, %5 ], [ %22, %14 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zputdeviceparams(ptr nocapture readnone %0) #0 {
  %2 = alloca %struct.stack_param_list_s, align 8
  %3 = tail call i32 @ref_stack_counttomark(ptr noundef nonnull @o_stack) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %118, label %5

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64
  %7 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %6) #7
  %8 = add i32 %3, 1
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %9) #7
  %11 = add i32 %3, 2
  %12 = zext i32 %11 to i64
  %13 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %12) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %118, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %7, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !23
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %118

19:                                               ; preds = %15
  %20 = load i16, ptr %13, align 8, !tbaa !24
  %21 = and i16 %20, 16144
  %22 = icmp eq i16 %21, 4880
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %13, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !23
  %26 = icmp eq i8 %25, 19
  %27 = select i1 %26, i32 -7, i32 -20
  br label %118

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ref_s, ptr %13, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !23
  %33 = zext i16 %32 to i32
  %34 = call i32 @stack_param_list_read(ptr noundef nonnull %2, ptr noundef nonnull @o_stack, i32 noundef 0, ptr noundef %10, i32 noundef %33) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %118, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %30, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %30, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !35
  %41 = call i32 @gs_putdeviceparams(ptr noundef %30, ptr noundef nonnull %2) #7
  %42 = add i32 %3, -2
  %43 = icmp eq i32 %3, 1
  br i1 %43, label %77, label %44

44:                                               ; preds = %36
  %45 = lshr i32 %3, 1
  %46 = getelementptr inbounds %struct.stack_param_list_s, ptr %2, i64 0, i32 2
  %47 = add i32 %3, -2
  %48 = call i32 @llvm.umax.i32(i32 %45, i32 1)
  %49 = zext nneg i32 %48 to i64
  br label %50

50:                                               ; preds = %44, %73
  %51 = phi i64 [ 0, %44 ], [ %75, %73 ]
  %52 = phi i32 [ %42, %44 ], [ %74, %73 ]
  %53 = load ptr, ptr %46, align 8, !tbaa !40
  %54 = getelementptr inbounds i32, ptr %53, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !36
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = sext i32 %52 to i64
  %59 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %58) #7
  %60 = trunc i64 %51 to i32
  %61 = shl i32 %60, 1
  %62 = sub i32 %47, %61
  %63 = zext i32 %62 to i64
  %64 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %63) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !27
  %65 = load ptr, ptr %46, align 8, !tbaa !40
  %66 = getelementptr inbounds i32, ptr %65, i64 %51
  %67 = load i32, ptr %66, align 4, !tbaa !36
  %68 = add nsw i32 %52, -1
  %69 = sext i32 %68 to i64
  %70 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %69) #7
  %71 = call i32 @gs_errorname(i32 noundef %67, ptr noundef %70) #7
  %72 = add nsw i32 %52, -2
  br label %73

73:                                               ; preds = %50, %57
  %74 = phi i32 [ %72, %57 ], [ %52, %50 ]
  %75 = add nuw nsw i64 %51, 1
  %76 = icmp eq i64 %75, %49
  br i1 %76, label %77, label %50, !llvm.loop !41

77:                                               ; preds = %73, %36
  %78 = phi i32 [ %42, %36 ], [ %74, %73 ]
  %79 = load ptr, ptr @gs_imemory, align 8, !tbaa !32
  %80 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %79, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.stack_param_list_s, ptr %2, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !40
  call void %81(ptr noundef %79, ptr noundef %83, ptr noundef nonnull @.str.12) #7
  %84 = icmp slt i32 %41, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = add nsw i32 %78, 1
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %86) #7
  br label %118

87:                                               ; preds = %77
  %88 = icmp eq i32 %41, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %87
  %90 = load i32, ptr %37, align 8, !tbaa !39
  %91 = icmp eq i32 %90, %38
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, ptr %39, align 4, !tbaa !35
  %94 = icmp eq i32 %93, %40
  br i1 %94, label %108, label %95

95:                                               ; preds = %92, %89, %87
  %96 = load ptr, ptr @igs, align 8, !tbaa !5
  %97 = call ptr @gs_currentdevice(ptr noundef %96) #7
  %98 = icmp eq ptr %97, %30
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.gx_device_s, ptr %30, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !46
  %102 = load ptr, ptr @igs, align 8, !tbaa !5
  %103 = call i32 @gs_setdevice_no_erase(ptr noundef %102, ptr noundef %30) #7
  %104 = icmp ne i32 %101, 0
  %105 = icmp sgt i32 %103, -1
  %106 = select i1 %104, i1 %105, i1 false
  %107 = select i1 %106, i32 1, i32 %103
  br label %108

108:                                              ; preds = %95, %99, %92
  %109 = phi i32 [ %107, %99 ], [ %41, %95 ], [ 0, %92 ]
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %8) #7
  %112 = trunc i32 %109 to i16
  %113 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %114 = getelementptr inbounds %struct.ref_s, ptr %113, i64 0, i32 1
  store i16 %112, ptr %114, align 8, !tbaa !23
  store i16 256, ptr %113, align 8, !tbaa !24
  %115 = load ptr, ptr @igs, align 8, !tbaa !5
  %116 = call ptr @gs_state_client_data(ptr noundef %115) #7
  %117 = getelementptr inbounds %struct.int_gstate_s, ptr %116, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !27
  br label %118

118:                                              ; preds = %108, %28, %15, %5, %1, %111, %85, %23
  %119 = phi i32 [ 0, %85 ], [ 0, %111 ], [ %27, %23 ], [ -24, %1 ], [ -17, %5 ], [ -20, %15 ], [ %34, %28 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  ret i32 %119
}

declare i32 @gs_copydevice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_copyscanlines(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_getdevice(i32 noundef) local_unnamed_addr #2

declare i32 @stack_param_list_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_getdeviceparams(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_makewordimagedevice(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_nulldevice(ptr noundef) local_unnamed_addr #2

declare i32 @gs_output_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ref_stack_counttomark(ptr noundef) local_unnamed_addr #2

declare i32 @stack_param_list_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_putdeviceparams(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_errorname(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 24}
!10 = !{!"gx_device_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !12, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !14, i64 144, !14, i64 152, !11, i64 160, !15, i64 168, !16, i64 192}
!11 = !{!"int", !7, i64 0}
!12 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!13 = !{!"short", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!16 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!17 = !{!18, !6, i64 16}
!18 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !19, i64 24, !11, i64 40, !11, i64 44, !19, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !19, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !6, i64 120}
!19 = !{!"ref_s", !20, i64 0, !7, i64 8}
!20 = !{!"tas_s", !13, i64 0, !13, i64 2}
!21 = !{!18, !11, i64 64}
!22 = !{!18, !6, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!19, !13, i64 0}
!25 = !{!10, !6, i64 16}
!26 = !{!19, !13, i64 2}
!27 = !{i64 0, i64 2, !28, i64 2, i64 2, !28, i64 8, i64 8, !29, i64 8, i64 2, !28, i64 8, i64 4, !30, i64 8, i64 8, !29, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!28 = !{!13, !13, i64 0}
!29 = !{!14, !14, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !7, i64 0}
!32 = !{!33, !6, i64 0}
!33 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !11, i64 40, !11, i64 44, !6, i64 48, !11, i64 56, !11, i64 60}
!34 = !{!33, !11, i64 40}
!35 = !{!10, !11, i64 68}
!36 = !{!11, !11, i64 0}
!37 = !{!38, !11, i64 48}
!38 = !{!"stack_param_list_s", !6, i64 0, !7, i64 8, !6, i64 40, !11, i64 48, !11, i64 52, !6, i64 56, !11, i64 64}
!39 = !{!10, !11, i64 64}
!40 = !{!38, !6, i64 40}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!44, !6, i64 88}
!44 = !{!"gs_memory_s", !45, i64 0}
!45 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!46 = !{!10, !11, i64 40}
