; ModuleID = 'zcolor.c'
source_filename = "zcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.rc_header_s = type { i64, ptr, ptr }
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
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zcolor_remap_one_ostack = dso_local local_unnamed_addr constant i32 4, align 4
@zcolor_remap_one_estack = dso_local local_unnamed_addr constant i32 3, align 4
@o_stack = external global %struct.ref_stack_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@zcolor_op_defs.op_defs_ = internal constant [14 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcurrentalpha }, %struct.op_def { ptr @.str.1, ptr @zcurrentgray }, %struct.op_def { ptr @.str.2, ptr @zcurrentrgbcolor }, %struct.op_def { ptr @.str.3, ptr @zcurrenttransfer }, %struct.op_def { ptr @.str.4, ptr @zprocesscolors }, %struct.op_def { ptr @.str.5, ptr @zsetalpha }, %struct.op_def { ptr @.str.6, ptr @zsetgray }, %struct.op_def { ptr @.str.7, ptr @zsetrgbcolor }, %struct.op_def { ptr @.str.8, ptr @zsettransfer }, %struct.op_def { ptr @.str.9, ptr @zcolor_remap_one_finish }, %struct.op_def { ptr @.str.10, ptr @zcolor_remap_one_signed_finish }, %struct.op_def { ptr @.str.11, ptr @zcolor_reset_transfer }, %struct.op_def { ptr @.str.12, ptr @zcolor_remap_color }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"0currentalpha\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0currentgray\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"0currentrgbcolor\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"0currenttransfer\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"0processcolors\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"1setalpha\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"1setgray\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"3setrgbcolor\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"1settransfer\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"1%zcolor_remap_one_finish\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"1%zcolor_remap_one_signed_finish\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"0%zcolor_reset_transfer\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"0%zcolor_remap_color\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zcolor_remap_one(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ref_s, ptr %1, i64 4
  store ptr %6, ptr @o_stack, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ref_s, ptr %1, i64 1
  %8 = getelementptr inbounds %struct.ref_s, ptr %1, i64 1, i32 1
  store i64 0, ptr %8, align 8, !tbaa !14
  store i16 2816, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.ref_s, ptr %1, i64 2
  %10 = getelementptr inbounds %struct.ref_s, ptr %1, i64 2, i32 1
  store i64 1, ptr %10, align 8, !tbaa !14
  store i16 2816, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.ref_s, ptr %1, i64 3
  %12 = getelementptr inbounds %struct.ref_s, ptr %1, i64 3, i32 1
  store i64 255, ptr %12, align 8, !tbaa !14
  store i16 2816, ptr %11, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %13 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1
  store ptr %14, ptr @e_stack, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !14
  %16 = load ptr, ptr %3, align 8, !tbaa !23
  %17 = tail call i32 @imemory_space(ptr noundef %16) #7
  %18 = trunc i32 %17 to i16
  %19 = add i16 %18, 2048
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !5
  store i16 %19, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1
  store ptr %21, ptr @e_stack, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 1
  store ptr %4, ptr %22, align 8, !tbaa !14
  store i16 3968, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 0, i32 1
  store i16 0, ptr %23, align 2, !tbaa !31
  %24 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2
  store ptr %24, ptr @e_stack, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2, i32 1
  store ptr @zfor_fraction, ptr %25, align 8, !tbaa !14
  store i16 3968, ptr %24, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2, i32 0, i32 1
  store i16 0, ptr %26, align 2, !tbaa !31
  ret i32 5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #2

declare i32 @zfor_fraction(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zcolor_remap_one_finish(ptr nocapture readnone %0) #0 {
  %2 = tail call fastcc i32 @zcolor_remap_one_store(double noundef 0.000000e+00)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zcolor_remap_one_store(double noundef %0) unnamed_addr #0 {
  %2 = alloca float, align 4
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #7
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = fadd double %0, 0x3EF0010010010010
  %10 = fmul double %9, 3.276000e+04
  %11 = fptosi double %10 to i16
  br label %15

12:                                               ; preds = %36
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, 256
  br i1 %14, label %38, label %15, !llvm.loop !32

15:                                               ; preds = %8, %12
  %16 = phi i64 [ 0, %8 ], [ %13, %12 ]
  %17 = phi i32 [ undef, %8 ], [ %37, %12 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %18 = and i64 %16, 4294967295
  %19 = xor i64 %18, 255
  %20 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %19) #7
  %21 = call i32 @real_param(ptr noundef %20, ptr noundef nonnull %2) #7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load float, ptr %2, align 4, !tbaa !20
  %25 = fpext float %24 to double
  %26 = fcmp olt double %25, %0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = fcmp ult float %24, 1.000000e+00
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = fadd double %25, 0x3EF0010010010010
  %31 = fmul double %30, 3.276000e+04
  %32 = fptosi double %31 to i16
  br label %33

33:                                               ; preds = %23, %29, %27
  %34 = phi i16 [ %32, %29 ], [ 32760, %27 ], [ %11, %23 ]
  %35 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %5, i64 0, i32 3, i64 %16
  store i16 %34, ptr %35, align 2, !tbaa !17
  br label %36

36:                                               ; preds = %15, %33
  %37 = phi i32 [ %17, %33 ], [ %21, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %22, label %12, label %41

38:                                               ; preds = %12
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 256) #7
  %39 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 -1
  store ptr %40, ptr @e_stack, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %36, %1, %38
  %42 = phi i32 [ 14, %38 ], [ -17, %1 ], [ %37, %36 ]
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zcolor_remap_one_signed_finish(ptr nocapture readnone %0) #0 {
  %2 = tail call fastcc i32 @zcolor_remap_one_store(double noundef -1.000000e+00)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zcolor_reset_transfer(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !22
  tail call void @gx_set_effective_transfer(ptr noundef %2) #7
  %3 = load ptr, ptr @igs, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  store ptr @gx_dc_procs_none, ptr %5, align 8, !tbaa !35
  ret i32 0
}

declare void @gx_set_effective_transfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @zcolor_remap_color(ptr nocapture readnone %0) #3 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 34
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr @gx_dc_procs_none, ptr %4, align 8, !tbaa !35
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcolor_op_defs() local_unnamed_addr #4 {
  ret ptr @zcolor_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentalpha(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !41
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !5
  %7 = load ptr, ptr @igs, align 8, !tbaa !22
  %8 = tail call float @gs_currentalpha(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %8, ptr %9, align 8, !tbaa !14
  store i16 4096, ptr %2, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentgray(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !41
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !5
  %7 = load ptr, ptr @igs, align 8, !tbaa !22
  %8 = tail call float @gs_currentgray(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %8, ptr %9, align 8, !tbaa !14
  store i16 4096, ptr %2, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentrgbcolor(ptr noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %3 = load ptr, ptr @igs, align 8, !tbaa !22
  %4 = call i32 @gs_currentrgbcolor(ptr noundef %3, ptr noundef nonnull %2) #7
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !41
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %11

9:                                                ; preds = %1
  store ptr %5, ptr @o_stack, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  call void @make_reals(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 3) #7
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ -16, %8 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrenttransfer(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !41
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !5
  %7 = load ptr, ptr @igs, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %7, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.int_gstate_s, ptr %9, i64 0, i32 2, i32 0, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !16
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zprocesscolors(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !41
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %13

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !5
  %7 = load ptr, ptr @igs, align 8, !tbaa !22
  %8 = tail call ptr @gs_currentdevice(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %11, ptr %12, align 8, !tbaa !14
  store i16 2816, ptr %2, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %6, %5
  %14 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetalpha(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %3 = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @check_type_failed(ptr noundef %0) #7
  br label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !22
  %9 = load float, ptr %2, align 4, !tbaa !20
  %10 = fpext float %9 to double
  %11 = call i32 @gs_setalpha(ptr noundef %8, double noundef %10) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -1
  store ptr %15, ptr @o_stack, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %7, %13, %5
  %17 = phi i32 [ %6, %5 ], [ 0, %13 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetgray(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %3 = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @check_type_failed(ptr noundef %0) #7
  br label %20

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !22
  %9 = load float, ptr %2, align 4, !tbaa !20
  %10 = fpext float %9 to double
  %11 = call i32 @gs_setgray(ptr noundef %8, double noundef %10) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @igs, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.gs_state_s, ptr %14, i64 0, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.int_gstate_s, ptr %16, i64 0, i32 5
  store i16 3584, ptr %17, align 8, !tbaa !49
  %18 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -1
  store ptr %19, ptr @o_stack, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %7, %13, %5
  %21 = phi i32 [ %6, %5 ], [ 0, %13 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetrgbcolor(ptr noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !22
  %7 = load float, ptr %2, align 4, !tbaa !20
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !20
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !20
  %14 = fpext float %13 to double
  %15 = call i32 @gs_setrgbcolor(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @igs, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %18, i64 0, i32 44
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.int_gstate_s, ptr %20, i64 0, i32 5
  store i16 3584, ptr %21, align 8, !tbaa !49
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -3
  store ptr %23, ptr @o_stack, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %1, %5, %17
  %25 = phi i32 [ 0, %17 ], [ %3, %1 ], [ %15, %5 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zsettransfer(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !15
  %3 = and i16 %2, 15552
  %4 = icmp eq i16 %3, 1216
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %65

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !41
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 48
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !42
  br label %65

15:                                               ; preds = %7
  %16 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %17 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -4
  %19 = icmp ugt ptr %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 4) #7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %65

23:                                               ; preds = %20, %15
  %24 = load ptr, ptr @igs, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.gs_state_s, ptr %24, i64 0, i32 44
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.int_gstate_s, ptr %26, i64 0, i32 2
  %28 = getelementptr inbounds %struct.int_gstate_s, ptr %26, i64 0, i32 2, i32 0, i64 1
  %29 = getelementptr inbounds %struct.int_gstate_s, ptr %26, i64 0, i32 2, i32 0, i64 2
  %30 = getelementptr inbounds %struct.int_gstate_s, ptr %26, i64 0, i32 2, i32 0, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  %31 = tail call i32 @gs_settransfer_remap(ptr noundef %24, ptr noundef nonnull @gs_mapped_transfer, i32 noundef 0) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr @e_stack, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.ref_s, ptr %34, i64 1
  store ptr %35, ptr @e_stack, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.ref_s, ptr %34, i64 1, i32 1
  store ptr @zcolor_reset_transfer, ptr %36, align 8, !tbaa !14
  store i16 3968, ptr %35, align 8, !tbaa !15
  %37 = getelementptr inbounds %struct.ref_s, ptr %34, i64 1, i32 0, i32 1
  store i16 0, ptr %37, align 2, !tbaa !31
  %38 = load ptr, ptr @o_stack, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.ref_s, ptr %38, i64 -1
  store ptr %39, ptr @o_stack, align 8, !tbaa !5
  %40 = load ptr, ptr @igs, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %40, i64 0, i32 44
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = getelementptr inbounds %struct.int_gstate_s, ptr %42, i64 0, i32 2, i32 0, i64 3
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %40, i64 0, i32 17, i32 0, i64 3
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  store ptr %46, ptr @o_stack, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i64 0, ptr %47, align 8, !tbaa !14
  store i16 2816, ptr %0, align 8, !tbaa !15
  %48 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %49 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 1, ptr %49, align 8, !tbaa !14
  store i16 2816, ptr %48, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 255, ptr %51, align 8, !tbaa !14
  store i16 2816, ptr %50, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false), !tbaa.struct !16
  %52 = getelementptr inbounds %struct.ref_s, ptr %34, i64 2
  store ptr %52, ptr @e_stack, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.ref_s, ptr %34, i64 2, i32 1
  store ptr %45, ptr %53, align 8, !tbaa !14
  %54 = load ptr, ptr %40, align 8, !tbaa !23
  %55 = tail call i32 @imemory_space(ptr noundef %54) #7
  %56 = trunc i32 %55 to i16
  %57 = add i16 %56, 2048
  %58 = load ptr, ptr @e_stack, align 8, !tbaa !5
  store i16 %57, ptr %58, align 8, !tbaa !15
  %59 = getelementptr inbounds %struct.ref_s, ptr %58, i64 1
  store ptr %59, ptr @e_stack, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.ref_s, ptr %58, i64 1, i32 1
  store ptr @zcolor_remap_one_finish, ptr %60, align 8, !tbaa !14
  store i16 3968, ptr %59, align 8, !tbaa !15
  %61 = getelementptr inbounds %struct.ref_s, ptr %58, i64 1, i32 0, i32 1
  store i16 0, ptr %61, align 2, !tbaa !31
  %62 = getelementptr inbounds %struct.ref_s, ptr %58, i64 2
  store ptr %62, ptr @e_stack, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.ref_s, ptr %58, i64 2, i32 1
  store ptr @zfor_fraction, ptr %63, align 8, !tbaa !14
  store i16 3968, ptr %62, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.ref_s, ptr %58, i64 2, i32 0, i32 1
  store i16 0, ptr %64, align 2, !tbaa !31
  br label %65

65:                                               ; preds = %23, %20, %33, %14, %5
  %66 = phi i32 [ -16, %14 ], [ 5, %33 ], [ %21, %20 ], [ %6, %5 ], [ %31, %23 ]
  ret i32 %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

declare i32 @real_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @gs_currentalpha(ptr noundef) local_unnamed_addr #2

declare float @gs_currentgray(ptr noundef) local_unnamed_addr #2

declare i32 @gs_currentrgbcolor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @make_reals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @gs_setalpha(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @gs_setgray(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_setrgbcolor(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_settransfer_remap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @gs_mapped_transfer(double noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!14 = !{!8, !8, i64 0}
!15 = !{!10, !12, i64 0}
!16 = !{i64 0, i64 2, !17, i64 2, i64 2, !17, i64 8, i64 8, !18, i64 8, i64 2, !17, i64 8, i64 4, !20, i64 8, i64 8, !18, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !8, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !7, i64 0}
!24 = !{!"gs_state_s", !7, i64 0, !25, i64 8, !27, i64 80, !13, i64 128, !12, i64 132, !13, i64 136, !21, i64 140, !28, i64 144, !13, i64 160, !13, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !29, i64 336, !13, i64 360, !29, i64 364, !13, i64 388, !7, i64 392, !7, i64 400, !13, i64 408, !13, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !27, i64 456, !13, i64 504, !8, i64 508, !13, i64 512, !7, i64 520, !13, i64 528, !7, i64 536, !7, i64 544, !30, i64 552}
!25 = !{!"gx_line_params_s", !21, i64 0, !13, i64 4, !13, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !26, i64 32}
!26 = !{!"gx_dash_params_s", !7, i64 0, !13, i64 8, !21, i64 12, !13, i64 16, !21, i64 20, !13, i64 24, !13, i64 28, !21, i64 32}
!27 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !19, i64 24, !19, i64 32, !13, i64 40}
!28 = !{!"gs_fixed_point_s", !19, i64 0, !19, i64 8}
!29 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!30 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!31 = !{!10, !12, i64 2}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!24, !7, i64 432}
!35 = !{!36, !7, i64 0}
!36 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !37, i64 48, !38, i64 56}
!37 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!38 = !{!"_mask", !39, i64 0, !19, i64 24, !7, i64 32}
!39 = !{!"gs_client_color_s", !40, i64 0, !7, i64 16}
!40 = !{!"gs_paint_color_s", !8, i64 0}
!41 = !{!6, !7, i64 16}
!42 = !{!6, !13, i64 64}
!43 = !{!24, !7, i64 544}
!44 = !{!45, !13, i64 48}
!45 = !{!"gx_device_s", !13, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !13, i64 44, !46, i64 48, !13, i64 64, !13, i64 68, !8, i64 72, !8, i64 80, !13, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !13, i64 160, !47, i64 168, !48, i64 192}
!46 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!47 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!48 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!49 = !{!50, !12, i64 176}
!50 = !{!"int_gstate_s", !10, i64 0, !8, i64 16, !8, i64 80, !10, i64 144, !10, i64 160, !51, i64 176, !10, i64 272, !54, i64 288, !10, i64 368, !10, i64 384}
!51 = !{!"ref_colorspace_s", !10, i64 0, !52, i64 16}
!52 = !{!"ref_color_procs_s", !53, i64 0, !8, i64 48}
!53 = !{!"ref_cie_procs_s", !8, i64 0, !8, i64 16, !10, i64 32}
!54 = !{!"", !10, i64 0, !55, i64 16}
!55 = !{!"ref_cie_render_procs_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
