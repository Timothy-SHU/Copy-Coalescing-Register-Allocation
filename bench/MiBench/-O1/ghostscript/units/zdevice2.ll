; ModuleID = 'zdevice2.c'
source_filename = "zdevice2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zdevice2_l2_op_defs.op_defs_ = internal constant [17 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zcurrentshowpagecount }, %struct.op_def { ptr @.str.2, ptr @zcurrentpagedevice }, %struct.op_def { ptr @.str.3, ptr @zdoneshowpage }, %struct.op_def { ptr @.str.4, ptr @zsetpagedevice }, %struct.op_def { ptr @.str.5, ptr @z2gsave }, %struct.op_def { ptr @.str.6, ptr @z2save }, %struct.op_def { ptr @.str.7, ptr @z2gstate }, %struct.op_def { ptr @.str.8, ptr @z2currentgstate }, %struct.op_def { ptr @.str.9, ptr @z2grestore }, %struct.op_def { ptr @.str.10, ptr @z2grestoreall }, %struct.op_def { ptr @.str.11, ptr @z2restore }, %struct.op_def { ptr @.str.12, ptr @z2setgstate }, %struct.op_def { ptr @.str.13, ptr @zcallinstall }, %struct.op_def { ptr @.str.14, ptr @zcallbeginpage }, %struct.op_def { ptr @.str.15, ptr @zcallendpage }, %struct.op_def { ptr null, ptr @zdevice2_init }], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"0.currentshowpagecount\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0.currentpagedevice\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"0.doneshowpage\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"1.setpagedevice\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0gsave\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0gstate\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"1currentgstate\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"0grestore\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"0grestoreall\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"1setgstate\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"0.callinstall\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"1.callbeginpage\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"2.callendpage\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@i_null_pagedevice = external local_unnamed_addr global %struct.ref_s, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"%gsavepagedevice\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"%savepagedevice\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%gstatepagedevice\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%currentgstatepagedevice\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"%grestorepagedevice\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"%grestoreallpagedevice\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"%restorepagedevice\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@st_igstate_obj = external constant %struct.gs_memory_struct_type_s, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"%setgstatepagedevice\00", align 1
@zcopy_procs = external local_unnamed_addr global [21 x ptr], align 16
@.str.24 = private unnamed_addr constant [22 x i8] c"%copygstatepagedevice\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zdevice2_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zdevice2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentshowpagecount(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr %5(ptr noundef %3) #5
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !17
  br i1 %7, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %11 = icmp ugt ptr %10, %8
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !21
  br label %25

13:                                               ; preds = %9
  store ptr %10, ptr @o_stack, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 0, ptr %14, align 8, !tbaa !23
  store i16 256, ptr %10, align 8, !tbaa !24
  br label %25

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %17 = icmp ugt ptr %16, %8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !21
  br label %25

19:                                               ; preds = %15
  store ptr %16, ptr @o_stack, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 18
  %21 = load i64, ptr %20, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %21, ptr %23, align 8, !tbaa !23
  store i16 2816, ptr %22, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i16 1, ptr %24, align 8, !tbaa !23
  store i16 256, ptr %16, align 8, !tbaa !24
  br label %25

25:                                               ; preds = %13, %19, %18, %12
  %26 = phi i32 [ -16, %12 ], [ -16, %18 ], [ 0, %19 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentpagedevice(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !17
  %6 = icmp ugt ptr %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !21
  br label %22

8:                                                ; preds = %1
  store ptr %4, ptr @o_stack, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call ptr %10(ptr noundef %3) #5
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  br i1 %12, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr @igs, align 8, !tbaa !5
  %16 = tail call ptr @gs_state_client_data(ptr noundef %15) #5
  %17 = getelementptr inbounds %struct.int_gstate_s, ptr %16, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !26
  br label %19

18:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !26
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i16 [ 0, %18 ], [ 1, %14 ]
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i16 %20, ptr %21, align 8, !tbaa !23
  store i16 256, ptr %4, align 8, !tbaa !24
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi i32 [ -16, %7 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zdoneshowpage(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr %5(ptr noundef %3) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 18
  %10 = load i64, ptr %9, align 8, !tbaa !25
  %11 = add nsw i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !25
  br label %12

12:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetpagedevice(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !23
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = load i16, ptr %9, align 8, !tbaa !31
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @zreadonly(ptr noundef %0) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @igs, align 8, !tbaa !5
  %18 = tail call ptr @gs_state_client_data(ptr noundef %17) #5
  %19 = getelementptr inbounds %struct.int_gstate_s, ptr %18, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -1
  store ptr %21, ptr @o_stack, align 8, !tbaa !22
  br label %22

22:                                               ; preds = %13, %7, %16, %5
  %23 = phi i32 [ 0, %16 ], [ %6, %5 ], [ -7, %7 ], [ %14, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @z2gsave(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_client_data(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.int_gstate_s, ptr %3, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @i_null_pagedevice, i64 0, i32 1), align 8, !tbaa !23
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @igs, align 8, !tbaa !5
  %10 = tail call ptr @gs_currentdevice(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr @igs, align 8, !tbaa !5
  %14 = tail call ptr @gs_currentdevice(ptr noundef %13) #5
  %15 = tail call ptr %12(ptr noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8, %1
  %18 = load ptr, ptr @igs, align 8, !tbaa !5
  %19 = tail call i32 @gs_gsave(ptr noundef %18) #5
  br label %38

20:                                               ; preds = %8
  %21 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %22 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -1
  %24 = icmp ugt ptr %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %25, %20
  %29 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.ref_s, ptr %29, i64 1
  %31 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %30) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.ref_s, ptr %34, i64 1
  store ptr %35, ptr @e_stack, align 8, !tbaa !22
  %36 = load i16, ptr %35, align 8, !tbaa !24
  %37 = or i16 %36, 128
  store i16 %37, ptr %35, align 8, !tbaa !24
  br label %38

38:                                               ; preds = %33, %28, %25, %17
  %39 = phi i32 [ %19, %17 ], [ 5, %33 ], [ %26, %25 ], [ %31, %28 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @z2save(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_client_data(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.int_gstate_s, ptr %3, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @i_null_pagedevice, i64 0, i32 1), align 8, !tbaa !23
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @igs, align 8, !tbaa !5
  %10 = tail call ptr @gs_currentdevice(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr @igs, align 8, !tbaa !5
  %14 = tail call ptr @gs_currentdevice(ptr noundef %13) #5
  %15 = tail call ptr %12(ptr noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8, %1
  %18 = tail call i32 @zsave(ptr noundef %0) #5
  br label %37

19:                                               ; preds = %8
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  %23 = icmp ugt ptr %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1
  %30 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.17, ptr noundef nonnull %29) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 1
  store ptr %34, ptr @e_stack, align 8, !tbaa !22
  %35 = load i16, ptr %34, align 8, !tbaa !24
  %36 = or i16 %35, 128
  store i16 %36, ptr %34, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %32, %27, %24, %17
  %38 = phi i32 [ %18, %17 ], [ 5, %32 ], [ %25, %24 ], [ %30, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @z2gstate(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_client_data(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.int_gstate_s, ptr %3, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @i_null_pagedevice, i64 0, i32 1), align 8, !tbaa !23
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @igs, align 8, !tbaa !5
  %10 = tail call ptr @gs_currentdevice(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr @igs, align 8, !tbaa !5
  %14 = tail call ptr @gs_currentdevice(ptr noundef %13) #5
  %15 = tail call ptr %12(ptr noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8, %1
  %18 = tail call i32 @zgstate(ptr noundef %0) #5
  br label %37

19:                                               ; preds = %8
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  %23 = icmp ugt ptr %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1
  %30 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.18, ptr noundef nonnull %29) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 1
  store ptr %34, ptr @e_stack, align 8, !tbaa !22
  %35 = load i16, ptr %34, align 8, !tbaa !24
  %36 = or i16 %35, 128
  store i16 %36, ptr %34, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %32, %27, %24, %17
  %38 = phi i32 [ %18, %17 ], [ 5, %32 ], [ %25, %24 ], [ %30, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @z2currentgstate(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_client_data(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.int_gstate_s, ptr %3, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @i_null_pagedevice, i64 0, i32 1), align 8, !tbaa !23
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @igs, align 8, !tbaa !5
  %10 = tail call ptr @gs_currentdevice(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr @igs, align 8, !tbaa !5
  %14 = tail call ptr @gs_currentdevice(ptr noundef %13) #5
  %15 = tail call ptr %12(ptr noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8, %1
  %18 = tail call i32 @zcurrentgstate(ptr noundef %0) #5
  br label %37

19:                                               ; preds = %8
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  %23 = icmp ugt ptr %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1
  %30 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.19, ptr noundef nonnull %29) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 1
  store ptr %34, ptr @e_stack, align 8, !tbaa !22
  %35 = load i16, ptr %34, align 8, !tbaa !24
  %36 = or i16 %35, 128
  store i16 %36, ptr %34, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %32, %27, %24, %17
  %38 = phi i32 [ %18, %17 ], [ 5, %32 ], [ %25, %24 ], [ %30, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @z2grestore(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_saved(ptr noundef %2) #5
  %4 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %4, i64 0, i32 21, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call ptr %6(ptr noundef %4) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @gs_currentdevice(ptr noundef %3) #5
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = tail call ptr %14(ptr noundef %10) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %7, %15
  br i1 %18, label %19, label %30

19:                                               ; preds = %17, %9
  %20 = tail call ptr @gs_state_client_data(ptr noundef %2) #5
  %21 = tail call ptr @gs_state_client_data(ptr noundef %3) #5
  %22 = getelementptr inbounds %struct.int_gstate_s, ptr %20, i64 0, i32 9, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.int_gstate_s, ptr %21, i64 0, i32 9, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1, %12, %19
  %28 = load ptr, ptr @igs, align 8, !tbaa !5
  %29 = tail call i32 @gs_grestore(ptr noundef %28) #5
  br label %48

30:                                               ; preds = %17, %19
  %31 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %32 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 -1
  %34 = icmp ugt ptr %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %35, %30
  %39 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 1
  %41 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.20, ptr noundef nonnull %40) #5
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1
  store ptr %45, ptr @e_stack, align 8, !tbaa !22
  %46 = load i16, ptr %45, align 8, !tbaa !24
  %47 = or i16 %46, 128
  store i16 %47, ptr %45, align 8, !tbaa !24
  br label %48

48:                                               ; preds = %43, %38, %35, %27
  %49 = phi i32 [ %29, %27 ], [ 5, %43 ], [ %36, %35 ], [ %41, %38 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @z2grestoreall(ptr nocapture readnone %0) #1 {
  br label %2

2:                                                ; preds = %32, %1
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = tail call ptr @gs_state_saved(ptr noundef %3) #5
  %5 = tail call ptr @gs_currentdevice(ptr noundef %3) #5
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call ptr %7(ptr noundef %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @gs_currentdevice(ptr noundef %4) #5
  %12 = icmp eq ptr %5, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 21, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call ptr %15(ptr noundef %11) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %8, %16
  br i1 %19, label %20, label %29

20:                                               ; preds = %18, %10
  %21 = tail call ptr @gs_state_client_data(ptr noundef %3) #5
  %22 = tail call ptr @gs_state_client_data(ptr noundef %4) #5
  %23 = getelementptr inbounds %struct.int_gstate_s, ptr %21, i64 0, i32 9, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.int_gstate_s, ptr %22, i64 0, i32 9, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = icmp ne ptr %24, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %2, %13, %18, %20
  %30 = phi i32 [ %28, %20 ], [ 0, %2 ], [ 0, %13 ], [ 1, %18 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load ptr, ptr @igs, align 8, !tbaa !5
  %34 = tail call ptr @gs_state_saved(ptr noundef %33) #5
  %35 = tail call ptr @gs_state_saved(ptr noundef %34) #5
  %36 = icmp eq ptr %35, null
  %37 = load ptr, ptr @igs, align 8, !tbaa !5
  %38 = tail call i32 @gs_grestore(ptr noundef %37) #5
  br i1 %36, label %57, label %2

39:                                               ; preds = %29
  %40 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %41 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 -1
  %43 = icmp ugt ptr %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %57

47:                                               ; preds = %44, %39
  %48 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 1
  %50 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.21, ptr noundef nonnull %49) #5
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1
  store ptr %54, ptr @e_stack, align 8, !tbaa !22
  %55 = load i16, ptr %54, align 8, !tbaa !24
  %56 = or i16 %55, 128
  store i16 %56, ptr %54, align 8, !tbaa !24
  br label %57

57:                                               ; preds = %32, %52, %47, %44
  %58 = phi i32 [ 5, %52 ], [ %45, %44 ], [ %50, %47 ], [ 0, %32 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @z2restore(ptr noundef %0) #1 {
  br label %2

2:                                                ; preds = %32, %1
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = tail call ptr @gs_state_saved(ptr noundef %3) #5
  %5 = tail call ptr @gs_currentdevice(ptr noundef %3) #5
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call ptr %7(ptr noundef %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @gs_currentdevice(ptr noundef %4) #5
  %12 = icmp eq ptr %5, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %11, i64 0, i32 21, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call ptr %15(ptr noundef %11) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %8, %16
  br i1 %19, label %20, label %29

20:                                               ; preds = %18, %10
  %21 = tail call ptr @gs_state_client_data(ptr noundef %3) #5
  %22 = tail call ptr @gs_state_client_data(ptr noundef %4) #5
  %23 = getelementptr inbounds %struct.int_gstate_s, ptr %21, i64 0, i32 9, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.int_gstate_s, ptr %22, i64 0, i32 9, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = icmp ne ptr %24, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %2, %13, %18, %20
  %30 = phi i32 [ %28, %20 ], [ 0, %2 ], [ 0, %13 ], [ 1, %18 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = tail call i32 @zgrestore(ptr noundef %0) #5
  %34 = load ptr, ptr @igs, align 8, !tbaa !5
  %35 = tail call ptr @gs_state_saved(ptr noundef %34) #5
  %36 = tail call ptr @gs_state_saved(ptr noundef %35) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %2, !llvm.loop !33

38:                                               ; preds = %29
  %39 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %40 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -1
  %42 = icmp ugt ptr %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43, %38
  %47 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.ref_s, ptr %47, i64 1
  %49 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.22, ptr noundef nonnull %48) #5
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.ref_s, ptr %52, i64 1
  store ptr %53, ptr @e_stack, align 8, !tbaa !22
  %54 = load i16, ptr %53, align 8, !tbaa !24
  %55 = or i16 %54, 128
  store i16 %55, ptr %53, align 8, !tbaa !24
  br label %58

56:                                               ; preds = %32
  %57 = tail call i32 @zrestore(ptr noundef %0) #5
  br label %58

58:                                               ; preds = %51, %46, %43, %56
  %59 = phi i32 [ %57, %56 ], [ 5, %51 ], [ %44, %43 ], [ %49, %46 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i32 @z2setgstate(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8, !tbaa !24
  %3 = and i16 %2, 15872
  %4 = icmp eq i16 %3, 2048
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr @gs_imemory, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = tail call ptr %8(ptr noundef %6, ptr noundef %10) #5
  %12 = icmp eq ptr %11, @st_igstate_obj
  br i1 %12, label %15, label %13

13:                                               ; preds = %5, %1
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #5
  br label %63

15:                                               ; preds = %5
  %16 = load ptr, ptr @igs, align 8, !tbaa !5
  %17 = load ptr, ptr %9, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = tail call ptr @gs_currentdevice(ptr noundef %16) #5
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %20, i64 0, i32 21, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = tail call ptr %22(ptr noundef %20) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %15
  %26 = tail call ptr @gs_currentdevice(ptr noundef %19) #5
  %27 = icmp eq ptr %20, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %26, i64 0, i32 21, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = tail call ptr %30(ptr noundef %26) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = icmp eq ptr %23, %31
  br i1 %34, label %35, label %45

35:                                               ; preds = %33, %25
  %36 = tail call ptr @gs_state_client_data(ptr noundef %16) #5
  %37 = tail call ptr @gs_state_client_data(ptr noundef %19) #5
  %38 = getelementptr inbounds %struct.int_gstate_s, ptr %36, i64 0, i32 9, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.int_gstate_s, ptr %37, i64 0, i32 9, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %15, %28, %35
  %44 = tail call i32 @zsetgstate(ptr noundef nonnull %0) #5
  br label %63

45:                                               ; preds = %33, %35
  %46 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %47 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.ref_s, ptr %47, i64 -1
  %49 = icmp ugt ptr %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %63

53:                                               ; preds = %50, %45
  %54 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 1
  %56 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.23, ptr noundef nonnull %55) #5
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 1
  store ptr %60, ptr @e_stack, align 8, !tbaa !22
  %61 = load i16, ptr %60, align 8, !tbaa !24
  %62 = or i16 %61, 128
  store i16 %62, ptr %60, align 8, !tbaa !24
  br label %63

63:                                               ; preds = %58, %53, %50, %43, %13
  %64 = phi i32 [ %44, %43 ], [ %14, %13 ], [ 5, %58 ], [ %51, %50 ], [ %56, %53 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @zcallinstall(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr %5(ptr noundef %3) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %6, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load ptr, ptr @igs, align 8, !tbaa !5
  %12 = tail call i32 %10(ptr noundef nonnull %6, ptr noundef %11) #5
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  br label %15

15:                                               ; preds = %8, %14
  %16 = phi i32 [ 0, %14 ], [ %12, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zcallbeginpage(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !23
  %6 = icmp eq i8 %5, 11
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call ptr %11(ptr noundef %3) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %12, i64 0, i32 20, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = load ptr, ptr @igs, align 8, !tbaa !5
  %18 = tail call i32 %16(ptr noundef nonnull %12, ptr noundef %17) #5
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %9
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  store ptr %22, ptr @o_stack, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %14, %20, %7
  %24 = phi i32 [ 0, %20 ], [ %18, %14 ], [ %8, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @zcallendpage(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentdevice(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %5 = getelementptr inbounds i8, ptr %0, i64 -15
  %6 = load i8, ptr %5, align 1, !tbaa !23
  %7 = icmp eq i8 %6, 11
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @check_type_failed(ptr noundef nonnull %4) #5
  br label %43

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !23
  %13 = icmp eq i8 %12, 11
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %43

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = tail call ptr %18(ptr noundef %3) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %19, i64 0, i32 20, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !23
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr @igs, align 8, !tbaa !5
  %28 = tail call i32 %23(ptr noundef nonnull %19, i32 noundef %26, ptr noundef %27) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %21
  %31 = icmp sgt i32 %28, 1
  br i1 %31, label %43, label %37

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !23
  %35 = icmp ne i64 %34, 2
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %30, %32
  %38 = phi i32 [ %28, %30 ], [ %36, %32 ]
  %39 = trunc i32 %38 to i16
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %39, ptr %40, align 8, !tbaa !23
  store i16 256, ptr %4, align 8, !tbaa !24
  %41 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 -1
  store ptr %42, ptr @o_stack, align 8, !tbaa !22
  br label %43

43:                                               ; preds = %30, %21, %37, %14, %8
  %44 = phi i32 [ 0, %37 ], [ %15, %14 ], [ %9, %8 ], [ %28, %21 ], [ -15, %30 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @zdevice2_init() #2 {
  store ptr @z2copy_gstate, ptr getelementptr inbounds ([21 x ptr], ptr @zcopy_procs, i64 0, i64 9), align 8, !tbaa !5
  ret void
}

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #3

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @zreadonly(ptr noundef) local_unnamed_addr #3

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @name_enter_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zsave(ptr noundef) local_unnamed_addr #3

declare i32 @zgstate(ptr noundef) local_unnamed_addr #3

declare i32 @zcurrentgstate(ptr noundef) local_unnamed_addr #3

declare ptr @gs_state_saved(ptr noundef) local_unnamed_addr #3

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #3

declare i32 @zgrestore(ptr noundef) local_unnamed_addr #3

declare i32 @zrestore(ptr noundef) local_unnamed_addr #3

declare i32 @zsetgstate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @z2copy_gstate(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_state_client_data(ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.int_gstate_s, ptr %3, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @i_null_pagedevice, i64 0, i32 1), align 8, !tbaa !23
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @igs, align 8, !tbaa !5
  %10 = tail call ptr @gs_currentdevice(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr @igs, align 8, !tbaa !5
  %14 = tail call ptr @gs_currentdevice(ptr noundef %13) #5
  %15 = tail call ptr %12(ptr noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %8, %1
  %18 = tail call i32 @zcopy_gstate(ptr noundef %0) #5
  br label %37

19:                                               ; preds = %8
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  %23 = icmp ugt ptr %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1
  %30 = tail call i32 @name_enter_string(ptr noundef nonnull @.str.24, ptr noundef nonnull %29) #5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 1
  store ptr %34, ptr @e_stack, align 8, !tbaa !22
  %35 = load i16, ptr %34, align 8, !tbaa !24
  %36 = or i16 %35, 128
  store i16 %36, ptr %34, align 8, !tbaa !24
  br label %37

37:                                               ; preds = %32, %27, %24, %17
  %38 = phi i32 [ %18, %17 ], [ 5, %32 ], [ %25, %24 ], [ %30, %27 ]
  ret i32 %38
}

declare i32 @zcopy_gstate(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 344}
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
!25 = !{!10, !14, i64 152}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 8, i64 8, !28, i64 8, i64 2, !27, i64 8, i64 4, !29, i64 8, i64 8, !28, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!27 = !{!13, !13, i64 0}
!28 = !{!14, !14, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !7, i64 0}
!31 = !{!32, !13, i64 0}
!32 = !{!"dict_s", !19, i64 0, !19, i64 16, !19, i64 32, !19, i64 48}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!36, !6, i64 0}
!36 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !11, i64 40, !11, i64 44, !6, i64 48, !11, i64 56, !11, i64 60}
!37 = !{!38, !6, i64 80}
!38 = !{!"gs_memory_s", !39, i64 0}
!39 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!40 = !{!10, !6, i64 168}
!41 = !{!10, !6, i64 176}
!42 = !{!10, !6, i64 184}
