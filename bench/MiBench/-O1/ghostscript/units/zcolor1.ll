; ModuleID = 'zcolor1.c'
source_filename = "zcolor1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
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

@zcolor1_op_defs.op_defs_ = internal constant [10 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcurrentblackgeneration }, %struct.op_def { ptr @.str.1, ptr @zcurrentcmykcolor }, %struct.op_def { ptr @.str.2, ptr @zcurrentcolortransfer }, %struct.op_def { ptr @.str.3, ptr @zcurrentundercolorremoval }, %struct.op_def { ptr @.str.4, ptr @zsetblackgeneration }, %struct.op_def { ptr @.str.5, ptr @zsetcmykcolor }, %struct.op_def { ptr @.str.6, ptr @zsetcolortransfer }, %struct.op_def { ptr @.str.7, ptr @zsetundercolorremoval }, %struct.op_def { ptr @.str.8, ptr @zcolorimage }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [24 x i8] c"0currentblackgeneration\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"0currentcmykcolor\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"0currentcolortransfer\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0currentundercolorremoval\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"1setblackgeneration\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"4setcmykcolor\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"4setcolortransfer\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"1setundercolorremoval\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"7colorimage\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@zcolor_remap_one_ostack = external local_unnamed_addr constant i32, align 4
@e_stack = external global %struct.ref_stack_s, align 8
@zcolor_remap_one_estack = external local_unnamed_addr constant i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcolor1_op_defs() local_unnamed_addr #0 {
  ret ptr @zcolor1_op_defs.op_defs_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentblackgeneration(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = load ptr, ptr @igs, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.int_gstate_s, ptr %9, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !27
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentcmykcolor(ptr noundef %0) #2 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %3 = load ptr, ptr @igs, align 8, !tbaa !16
  %4 = call i32 @gs_currentcmykcolor(ptr noundef %3, ptr noundef nonnull %2) #6
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %11

9:                                                ; preds = %1
  store ptr %5, ptr @o_stack, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  call void @make_reals(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 4) #6
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ -16, %8 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentcolortransfer(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %20

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %8 = load ptr, ptr @igs, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %8, i64 0, i32 44
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.int_gstate_s, ptr %10, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !27
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %13 = load ptr, ptr %9, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.int_gstate_s, ptr %13, i64 0, i32 2, i32 0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !27
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %16 = load ptr, ptr %9, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.int_gstate_s, ptr %16, i64 0, i32 2, i32 0, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !27
  %18 = load ptr, ptr %9, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.int_gstate_s, ptr %18, i64 0, i32 2, i32 0, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !27
  br label %20

20:                                               ; preds = %6, %5
  %21 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentundercolorremoval(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = load ptr, ptr @igs, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.int_gstate_s, ptr %9, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !27
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetblackgeneration(ptr noundef %0) #2 {
  %2 = load i16, ptr %0, align 8, !tbaa !31
  %3 = and i16 %2, 15552
  %4 = icmp eq i16 %3, 1216
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #6
  br label %52

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = load i32, ptr @zcolor_remap_one_ostack, align 4, !tbaa !32
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 %15, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %52

19:                                               ; preds = %7
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !5
  %22 = load i32, ptr @zcolor_remap_one_estack, align 4, !tbaa !32
  %23 = xor i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %24
  %26 = icmp ugt ptr %20, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = add nsw i32 %22, 1
  %29 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %28) #6
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %52

31:                                               ; preds = %27, %19
  %32 = load ptr, ptr @igs, align 8, !tbaa !16
  %33 = tail call i32 @gs_setblackgeneration_remap(ptr noundef %32, ptr noundef nonnull @gs_mapped_transfer, i32 noundef 0) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @igs, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %36, i64 0, i32 44
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.int_gstate_s, ptr %38, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !27
  %40 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -1
  store ptr %41, ptr @o_stack, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %43 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1
  store ptr %44, ptr @e_stack, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 1
  store ptr @zcolor_remap_color, ptr %45, align 8, !tbaa !33
  store i16 3968, ptr %44, align 8, !tbaa !31
  %46 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 0, i32 1
  store i16 0, ptr %46, align 2, !tbaa !34
  %47 = load ptr, ptr %37, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.int_gstate_s, ptr %47, i64 0, i32 3
  %49 = getelementptr inbounds %struct.gs_state_s, ptr %36, i64 0, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = tail call i32 @zcolor_remap_one(ptr noundef nonnull %48, ptr noundef nonnull %42, ptr noundef %50, ptr noundef %36, ptr noundef nonnull @zcolor_remap_one_finish) #6
  br label %52

52:                                               ; preds = %31, %27, %35, %18, %5
  %53 = phi i32 [ -16, %18 ], [ %51, %35 ], [ %29, %27 ], [ %6, %5 ], [ %33, %31 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcmykcolor(ptr noundef %0) #2 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !16
  %7 = load float, ptr %2, align 16, !tbaa !30
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !30
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !30
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !30
  %17 = fpext float %16 to double
  %18 = call i32 @gs_setcmykcolor(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load ptr, ptr @igs, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.gs_state_s, ptr %21, i64 0, i32 44
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.int_gstate_s, ptr %23, i64 0, i32 5
  store i16 3584, ptr %24, align 8, !tbaa !36
  %25 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -4
  store ptr %26, ptr @o_stack, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %1, %5, %20
  %28 = phi i32 [ 0, %20 ], [ %3, %1 ], [ %18, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolortransfer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %3 = load i16, ptr %2, align 8, !tbaa !31
  %4 = and i16 %3, 15552
  %5 = icmp eq i16 %4, 1216
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_proc_failed(ptr noundef nonnull %2) #6
  br label %111

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %10 = load i16, ptr %9, align 8, !tbaa !31
  %11 = and i16 %10, 15552
  %12 = icmp eq i16 %11, 1216
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @check_proc_failed(ptr noundef nonnull %9) #6
  br label %111

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %17 = load i16, ptr %16, align 8, !tbaa !31
  %18 = and i16 %17, 15552
  %19 = icmp eq i16 %18, 1216
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @check_proc_failed(ptr noundef nonnull %16) #6
  br label %111

22:                                               ; preds = %15
  %23 = load i16, ptr %0, align 8, !tbaa !31
  %24 = and i16 %23, 15552
  %25 = icmp eq i16 %24, 1216
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #6
  br label %111

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %30 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 4
  %35 = load i32, ptr @zcolor_remap_one_ostack, align 4, !tbaa !32
  %36 = shl nsw i32 %35, 2
  %37 = add nsw i32 %36, -4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 %37, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %111

41:                                               ; preds = %28
  %42 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %43 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !5
  %44 = load i32, ptr @zcolor_remap_one_estack, align 4, !tbaa !32
  %45 = shl nsw i32 %44, 2
  %46 = or disjoint i32 %45, 1
  %47 = sub nsw i32 0, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ref_s, ptr %43, i64 %48
  %50 = icmp ugt ptr %42, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %46) #6
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %111

54:                                               ; preds = %51, %41
  %55 = load ptr, ptr @igs, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct.gs_state_s, ptr %55, i64 0, i32 44
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = getelementptr inbounds %struct.int_gstate_s, ptr %57, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %59 = load ptr, ptr %56, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.int_gstate_s, ptr %59, i64 0, i32 2, i32 0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !27
  %61 = load ptr, ptr %56, align 8, !tbaa !17
  %62 = getelementptr inbounds %struct.int_gstate_s, ptr %61, i64 0, i32 2, i32 0, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !27
  %63 = load ptr, ptr %56, align 8, !tbaa !17
  %64 = getelementptr inbounds %struct.int_gstate_s, ptr %63, i64 0, i32 2, i32 0, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !27
  %65 = tail call i32 @gs_setcolortransfer_remap(ptr noundef %55, ptr noundef nonnull @gs_mapped_transfer, ptr noundef nonnull @gs_mapped_transfer, ptr noundef nonnull @gs_mapped_transfer, ptr noundef nonnull @gs_mapped_transfer, i32 noundef 0) #6
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %54
  %68 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %69 = getelementptr inbounds %struct.ref_s, ptr %68, i64 -4
  store ptr %69, ptr @o_stack, align 8, !tbaa !15
  %70 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %71 = getelementptr inbounds %struct.ref_s, ptr %70, i64 1
  store ptr %71, ptr @e_stack, align 8, !tbaa !15
  %72 = getelementptr inbounds %struct.ref_s, ptr %70, i64 1, i32 1
  store ptr @zcolor_reset_transfer, ptr %72, align 8, !tbaa !33
  store i16 3968, ptr %71, align 8, !tbaa !31
  %73 = getelementptr inbounds %struct.ref_s, ptr %70, i64 1, i32 0, i32 1
  store i16 0, ptr %73, align 2, !tbaa !34
  %74 = load ptr, ptr @igs, align 8, !tbaa !16
  %75 = getelementptr inbounds %struct.gs_state_s, ptr %74, i64 0, i32 44
  %76 = load ptr, ptr %75, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct.int_gstate_s, ptr %76, i64 0, i32 2
  %78 = getelementptr inbounds %struct.gs_state_s, ptr %74, i64 0, i32 17
  %79 = load ptr, ptr %78, align 8, !tbaa !33
  %80 = tail call i32 @zcolor_remap_one(ptr noundef nonnull %77, ptr noundef nonnull %69, ptr noundef %79, ptr noundef %74, ptr noundef nonnull @zcolor_remap_one_finish) #6
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %67
  %83 = load ptr, ptr @igs, align 8, !tbaa !16
  %84 = getelementptr inbounds %struct.gs_state_s, ptr %83, i64 0, i32 44
  %85 = load ptr, ptr %84, align 8, !tbaa !17
  %86 = getelementptr inbounds %struct.int_gstate_s, ptr %85, i64 0, i32 2, i32 0, i64 1
  %87 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %88 = getelementptr inbounds %struct.gs_state_s, ptr %83, i64 0, i32 17, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !33
  %90 = tail call i32 @zcolor_remap_one(ptr noundef nonnull %86, ptr noundef %87, ptr noundef %89, ptr noundef %83, ptr noundef nonnull @zcolor_remap_one_finish) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %82
  %93 = load ptr, ptr @igs, align 8, !tbaa !16
  %94 = getelementptr inbounds %struct.gs_state_s, ptr %93, i64 0, i32 44
  %95 = load ptr, ptr %94, align 8, !tbaa !17
  %96 = getelementptr inbounds %struct.int_gstate_s, ptr %95, i64 0, i32 2, i32 0, i64 2
  %97 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %98 = getelementptr inbounds %struct.gs_state_s, ptr %93, i64 0, i32 17, i32 0, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !33
  %100 = tail call i32 @zcolor_remap_one(ptr noundef nonnull %96, ptr noundef %97, ptr noundef %99, ptr noundef %93, ptr noundef nonnull @zcolor_remap_one_finish) #6
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %92
  %103 = load ptr, ptr @igs, align 8, !tbaa !16
  %104 = getelementptr inbounds %struct.gs_state_s, ptr %103, i64 0, i32 44
  %105 = load ptr, ptr %104, align 8, !tbaa !17
  %106 = getelementptr inbounds %struct.int_gstate_s, ptr %105, i64 0, i32 2, i32 0, i64 3
  %107 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %108 = getelementptr inbounds %struct.gs_state_s, ptr %103, i64 0, i32 17, i32 0, i64 3
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  %110 = tail call i32 @zcolor_remap_one(ptr noundef nonnull %106, ptr noundef %107, ptr noundef %109, ptr noundef %103, ptr noundef nonnull @zcolor_remap_one_finish) #6
  br label %111

111:                                              ; preds = %67, %82, %92, %54, %51, %102, %40, %26, %20, %13, %6
  %112 = phi i32 [ -16, %40 ], [ %110, %102 ], [ %52, %51 ], [ %27, %26 ], [ %21, %20 ], [ %14, %13 ], [ %7, %6 ], [ %65, %54 ], [ %80, %67 ], [ %90, %82 ], [ %100, %92 ]
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetundercolorremoval(ptr noundef %0) #2 {
  %2 = load i16, ptr %0, align 8, !tbaa !31
  %3 = and i16 %2, 15552
  %4 = icmp eq i16 %3, 1216
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #6
  br label %52

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = load i32, ptr @zcolor_remap_one_ostack, align 4, !tbaa !32
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 %15, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %52

19:                                               ; preds = %7
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !5
  %22 = load i32, ptr @zcolor_remap_one_estack, align 4, !tbaa !32
  %23 = xor i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %24
  %26 = icmp ugt ptr %20, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = add nsw i32 %22, 1
  %29 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %28) #6
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %52

31:                                               ; preds = %27, %19
  %32 = load ptr, ptr @igs, align 8, !tbaa !16
  %33 = tail call i32 @gs_setundercolorremoval_remap(ptr noundef %32, ptr noundef nonnull @gs_mapped_transfer, i32 noundef 0) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @igs, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.gs_state_s, ptr %36, i64 0, i32 44
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.int_gstate_s, ptr %38, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !27
  %40 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -1
  store ptr %41, ptr @o_stack, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %43 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1
  store ptr %44, ptr @e_stack, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 1
  store ptr @zcolor_remap_color, ptr %45, align 8, !tbaa !33
  store i16 3968, ptr %44, align 8, !tbaa !31
  %46 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 0, i32 1
  store i16 0, ptr %46, align 2, !tbaa !34
  %47 = load ptr, ptr %37, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.int_gstate_s, ptr %47, i64 0, i32 4
  %49 = getelementptr inbounds %struct.gs_state_s, ptr %36, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = tail call i32 @zcolor_remap_one(ptr noundef nonnull %48, ptr noundef nonnull %42, ptr noundef %50, ptr noundef %36, ptr noundef nonnull @zcolor_remap_one_signed_finish) #6
  br label %52

52:                                               ; preds = %31, %27, %35, %18, %5
  %53 = phi i32 [ -16, %18 ], [ %51, %35 ], [ %29, %27 ], [ %6, %5 ], [ %33, %31 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @zcolorimage(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !33
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %45

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !33
  %11 = icmp ugt i64 %10, 4
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !33
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %18 = tail call i32 @check_type_failed(ptr noundef nonnull %17) #6
  br label %45

19:                                               ; preds = %12
  %20 = trunc i64 %10 to i32
  switch i32 %20, label %45 [
    i32 1, label %21
    i32 3, label %23
    i32 4, label %25
  ]

21:                                               ; preds = %19
  %22 = tail call ptr @gs_color_space_DeviceGray() #6
  br label %39

23:                                               ; preds = %19
  %24 = tail call ptr @gs_color_space_DeviceRGB() #6
  br label %27

25:                                               ; preds = %19
  %26 = tail call ptr @gs_color_space_DeviceCMYK() #6
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %26, %25 ], [ %24, %23 ]
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !33
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %20, 6
  %34 = shl nuw nsw i64 %10, 32
  %35 = add nsw i64 %34, -4294967296
  %36 = ashr exact i64 %35, 32
  %37 = sub nsw i64 0, %36
  %38 = getelementptr inbounds %struct.ref_s, ptr %2, i64 %37
  br label %39

39:                                               ; preds = %27, %32, %21
  %40 = phi i32 [ %33, %32 ], [ 7, %27 ], [ 7, %21 ]
  %41 = phi ptr [ %38, %32 ], [ %2, %27 ], [ %2, %21 ]
  %42 = phi ptr [ %28, %32 ], [ %28, %27 ], [ %22, %21 ]
  %43 = phi i32 [ 1, %32 ], [ 0, %27 ], [ 0, %21 ]
  %44 = tail call i32 @zimage_opaque_setup(ptr noundef %41, i32 noundef %43, ptr noundef %42, i32 noundef %40) #6
  br label %45

45:                                               ; preds = %19, %8, %39, %16, %6
  %46 = phi i32 [ %44, %39 ], [ %18, %16 ], [ %7, %6 ], [ -15, %8 ], [ -15, %19 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @gs_currentcmykcolor(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @make_reals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #5

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @gs_setblackgeneration_remap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @gs_mapped_transfer(double noundef, ptr noundef) #5

declare i32 @zcolor_remap_color(ptr noundef) #5

declare i32 @zcolor_remap_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @zcolor_remap_one_finish(ptr noundef) #5

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @gs_setcmykcolor(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare i32 @gs_setcolortransfer_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @zcolor_reset_transfer(ptr noundef) #5

declare i32 @gs_setundercolorremoval_remap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @zcolor_remap_one_signed_finish(ptr noundef) #5

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #5

declare ptr @gs_color_space_DeviceGray() local_unnamed_addr #5

declare ptr @gs_color_space_DeviceRGB() local_unnamed_addr #5

declare ptr @gs_color_space_DeviceCMYK() local_unnamed_addr #5

declare i32 @zimage_opaque_setup(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!6, !13, i64 64}
!15 = !{!6, !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !7, i64 544}
!18 = !{!"gs_state_s", !7, i64 0, !19, i64 8, !22, i64 80, !13, i64 128, !12, i64 132, !13, i64 136, !20, i64 140, !24, i64 144, !13, i64 160, !13, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !25, i64 336, !13, i64 360, !25, i64 364, !13, i64 388, !7, i64 392, !7, i64 400, !13, i64 408, !13, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !22, i64 456, !13, i64 504, !8, i64 508, !13, i64 512, !7, i64 520, !13, i64 528, !7, i64 536, !7, i64 544, !26, i64 552}
!19 = !{!"gx_line_params_s", !20, i64 0, !13, i64 4, !13, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !21, i64 32}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gx_dash_params_s", !7, i64 0, !13, i64 8, !20, i64 12, !13, i64 16, !20, i64 20, !13, i64 24, !13, i64 28, !20, i64 32}
!22 = !{!"gs_matrix_fixed_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !23, i64 24, !23, i64 32, !13, i64 40}
!23 = !{!"long", !8, i64 0}
!24 = !{!"gs_fixed_point_s", !23, i64 0, !23, i64 8}
!25 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!26 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!27 = !{i64 0, i64 2, !28, i64 2, i64 2, !28, i64 8, i64 8, !29, i64 8, i64 2, !28, i64 8, i64 4, !30, i64 8, i64 8, !29, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16}
!28 = !{!12, !12, i64 0}
!29 = !{!23, !23, i64 0}
!30 = !{!20, !20, i64 0}
!31 = !{!10, !12, i64 0}
!32 = !{!13, !13, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!10, !12, i64 2}
!35 = !{!18, !7, i64 216}
!36 = !{!37, !12, i64 176}
!37 = !{!"int_gstate_s", !10, i64 0, !8, i64 16, !8, i64 80, !10, i64 144, !10, i64 160, !38, i64 176, !10, i64 272, !41, i64 288, !10, i64 368, !10, i64 384}
!38 = !{!"ref_colorspace_s", !10, i64 0, !39, i64 16}
!39 = !{!"ref_color_procs_s", !40, i64 0, !8, i64 48}
!40 = !{!"ref_cie_procs_s", !8, i64 0, !8, i64 16, !10, i64 32}
!41 = !{!"", !10, i64 0, !42, i64 16}
!42 = !{!"ref_cie_render_procs_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
!43 = !{!18, !7, i64 224}
