; ModuleID = 'zcssepr.c'
source_filename = "zcssepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.1, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.5 }
%struct.ref_cie_procs_s = type { %union.anon.3, %union.anon.4, %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_s }
%union.anon.5 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.6, i32, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon.6 = type { ptr }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.7, %union.anon.7, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.8, %struct.ref_s, %struct.ref_s }
%union.anon.7 = type { [4 x %struct.ref_s] }
%struct.anon.8 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_separation_params_s = type { i64, %struct.gs_base_color_space_s, ptr }

@zcssepr_l2_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zcurrentoverprint }, %struct.op_def { ptr @.str.2, ptr @zsetoverprint }, %struct.op_def { ptr @.str.3, ptr @zsetseparationspace }, %struct.op_def { ptr @.str.4, ptr @separation_map1 }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"0currentoverprint\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"1setoverprint\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"1.setseparationspace\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"1%separation_map1\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_color_space_type_Separation = external constant %struct.gs_color_space_type_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcssepr_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zcssepr_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentoverprint(ptr noundef %0) #1 {
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
  %8 = tail call i32 @gs_currentoverprint(ptr noundef %7) #7
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !17
  store i16 256, ptr %2, align 8, !tbaa !18
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetoverprint(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !17
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !17
  %11 = zext i16 %10 to i32
  tail call void @gs_setoverprint(ptr noundef %8, i32 noundef %11) #7
  %12 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -1
  store ptr %13, ptr @o_stack, align 8, !tbaa !15
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetseparationspace(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_color_space_s, align 8
  %3 = alloca %struct.ref_colorspace_s, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3)
  %5 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = load i16, ptr %0, align 8, !tbaa !18
  %7 = and i16 %6, 16160
  %8 = icmp eq i16 %7, 1056
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !17
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %71

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !19
  %18 = icmp eq i16 %17, 4
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 1
  %23 = getelementptr inbounds i8, ptr %21, i64 17
  %24 = load i8, ptr %23, align 1, !tbaa !17
  switch i8 %24, label %71 [
    i8 18, label %25
    i8 13, label %25
  ]

25:                                               ; preds = %19, %19
  %26 = getelementptr inbounds %struct.ref_s, ptr %21, i64 3
  %27 = load i16, ptr %26, align 8, !tbaa !18
  %28 = and i16 %27, 15552
  %29 = icmp eq i16 %28, 1216
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @check_proc_failed(ptr noundef nonnull %26) #7
  br label %71

32:                                               ; preds = %25
  %33 = load ptr, ptr @igs, align 8, !tbaa !16
  %34 = tail call ptr @gs_currentcolorspace(ptr noundef %33) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %34, i64 72, i1 false), !tbaa.struct !20
  %35 = load ptr, ptr %2, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !26
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %32
  %40 = call i32 @zcs_begin_map(ptr noundef nonnull %4, ptr noundef nonnull %26, i32 noundef 361, ptr noundef nonnull %2, ptr noundef nonnull @separation_map1) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %4, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %43, i64 0, i32 1
  store ptr @lookup_tint, ptr %44, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !28
  %46 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !17
  %47 = load ptr, ptr @igs, align 8, !tbaa !16
  %48 = call ptr @gs_state_client_data(ptr noundef %47) #7
  %49 = getelementptr inbounds %struct.int_gstate_s, ptr %48, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %49, i64 96, i1 false), !tbaa.struct !29
  %50 = load ptr, ptr @igs, align 8, !tbaa !16
  %51 = call ptr @gs_state_client_data(ptr noundef %50) #7
  %52 = getelementptr inbounds %struct.int_gstate_s, ptr %51, i64 0, i32 5, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !33
  %53 = load ptr, ptr @igs, align 8, !tbaa !16
  %54 = call ptr @gs_state_client_data(ptr noundef %53) #7
  %55 = getelementptr inbounds %struct.int_gstate_s, ptr %54, i64 0, i32 5, i32 1, i32 1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !33
  store ptr @gs_color_space_type_Separation, ptr %2, align 8, !tbaa !24
  %56 = load ptr, ptr @igs, align 8, !tbaa !16
  %57 = call i32 @gs_setcolorspace(ptr noundef %56, ptr noundef nonnull %2) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load ptr, ptr @igs, align 8, !tbaa !16
  %61 = call ptr @gs_state_client_data(ptr noundef %60) #7
  %62 = getelementptr inbounds %struct.int_gstate_s, ptr %61, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %62, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !tbaa.struct !29
  %63 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %64 = sub i32 %63, %5
  call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %64) #7
  br label %71

65:                                               ; preds = %42
  %66 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %67 = getelementptr inbounds %struct.ref_s, ptr %66, i64 -1
  store ptr %67, ptr @o_stack, align 8, !tbaa !15
  %68 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %69 = icmp eq i32 %68, %5
  %70 = select i1 %69, i32 0, i32 5
  br label %71

71:                                               ; preds = %39, %32, %19, %15, %13, %9, %65, %59, %30
  %72 = phi i32 [ %57, %59 ], [ %70, %65 ], [ %31, %30 ], [ %14, %13 ], [ -7, %9 ], [ -15, %15 ], [ -20, %19 ], [ -15, %32 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @separation_map1(ptr noundef %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !17
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = getelementptr %struct.ref_s, ptr %2, i64 -4, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !17
  %10 = trunc i64 %9 to i32
  %11 = getelementptr %struct.ref_s, ptr %2, i64 -3, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = shl i64 %4, 32
  %16 = mul i64 %15, %9
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr inbounds float, ptr %14, i64 %17
  %19 = tail call i32 @num_params(ptr noundef %0, i32 noundef %10, ptr noundef %18) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %7
  %22 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %23 = shl i64 %9, 32
  %24 = ashr exact i64 %23, 32
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds %struct.ref_s, ptr %22, i64 %25
  store ptr %26, ptr @o_stack, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %25
  %28 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !17
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %5, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -5
  store ptr %34, ptr @e_stack, align 8, !tbaa !15
  br label %35

35:                                               ; preds = %21, %7, %32
  %36 = phi ptr [ %27, %32 ], [ %0, %7 ], [ %27, %21 ]
  %37 = phi i32 [ 14, %32 ], [ %19, %7 ], [ undef, %21 ]
  %38 = phi i1 [ false, %32 ], [ false, %7 ], [ true, %21 ]
  br i1 %38, label %39, label %56

39:                                               ; preds = %1, %35
  %40 = phi ptr [ %36, %35 ], [ %0, %1 ]
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1
  %42 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %43 = icmp ugt ptr %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %56

45:                                               ; preds = %39
  store ptr %41, ptr @o_stack, align 8, !tbaa !15
  %46 = add nsw i32 %5, 1
  %47 = sext i32 %46 to i64
  store i64 %47, ptr %3, align 8, !tbaa !17
  %48 = sitofp i32 %46 to float
  %49 = fdiv float %48, 3.600000e+02
  %50 = getelementptr inbounds %struct.ref_s, ptr %40, i64 1, i32 1
  store float %49, ptr %50, align 8, !tbaa !17
  store i16 4096, ptr %41, align 8, !tbaa !18
  %51 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %52 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1, i32 1
  store ptr @separation_map1, ptr %52, align 8, !tbaa !17
  store i16 3968, ptr %51, align 8, !tbaa !18
  %53 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1, i32 0, i32 1
  store i16 0, ptr %53, align 2, !tbaa !19
  %54 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  %55 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false), !tbaa.struct !33
  store ptr %54, ptr @e_stack, align 8, !tbaa !15
  br label %56

56:                                               ; preds = %35, %45, %44
  %57 = phi i32 [ -16, %44 ], [ 5, %45 ], [ %37, %35 ]
  ret i32 %57
}

declare i32 @gs_currentoverprint(ptr noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare void @gs_setoverprint(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

declare ptr @gs_currentcolorspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @zcs_begin_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @lookup_tint(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.gs_separation_params_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !40
  %8 = getelementptr inbounds %struct.gs_separation_params_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = fcmp olt double %1, 0.000000e+00
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = fcmp ogt double %1, 1.000000e+00
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %9, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = sub i32 %15, %7
  br label %21

17:                                               ; preds = %11
  %18 = tail call double @llvm.fmuladd.f64(double %1, double 3.600000e+02, double 5.000000e-01)
  %19 = fptosi double %18 to i32
  %20 = mul nsw i32 %7, %19
  br label %21

21:                                               ; preds = %13, %17, %3
  %22 = phi i32 [ 0, %3 ], [ %16, %13 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %9, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds float, ptr %24, i64 %25
  switch i32 %7, label %40 [
    i32 4, label %27
    i32 3, label %31
    i32 1, label %38
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds float, ptr %26, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !31
  %30 = getelementptr inbounds float, ptr %2, i64 3
  store float %29, ptr %30, align 4, !tbaa !31
  br label %31

31:                                               ; preds = %21, %27
  %32 = getelementptr inbounds float, ptr %26, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !31
  %34 = getelementptr inbounds float, ptr %2, i64 2
  store float %33, ptr %34, align 4, !tbaa !31
  %35 = getelementptr inbounds float, ptr %26, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !31
  %37 = getelementptr inbounds float, ptr %2, i64 1
  store float %36, ptr %37, align 4, !tbaa !31
  br label %38

38:                                               ; preds = %21, %31
  %39 = load float, ptr %26, align 4, !tbaa !31
  store float %39, ptr %2, align 4, !tbaa !31
  br label %40

40:                                               ; preds = %21, %38
  %41 = phi i32 [ 0, %38 ], [ -15, %21 ]
  ret i32 %41
}

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #2

declare i32 @gs_setcolorspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!17 = !{!8, !8, i64 0}
!18 = !{!10, !12, i64 0}
!19 = !{!10, !12, i64 2}
!20 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !21, i64 16, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 16, i64 8, !16, i64 16, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 4, !23, i64 32, i64 8, !16, i64 40, i64 4, !23, i64 32, i64 8, !16, i64 48, i64 4, !23, i64 8, i64 4, !23, i64 16, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !21, i64 32, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 48, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 8, !16, i64 32, i64 8, !16, i64 32, i64 8, !16, i64 32, i64 8, !16, i64 40, i64 4, !23, i64 48, i64 8, !16, i64 56, i64 4, !23, i64 48, i64 8, !16, i64 64, i64 4, !23}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!13, !13, i64 0}
!24 = !{!25, !7, i64 0}
!25 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!26 = !{!27, !13, i64 8}
!27 = !{!"gs_color_space_type_s", !13, i64 0, !13, i64 4, !13, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!28 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16}
!29 = !{i64 0, i64 2, !30, i64 2, i64 2, !30, i64 8, i64 8, !21, i64 8, i64 2, !30, i64 8, i64 4, !31, i64 8, i64 8, !21, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 2, !30, i64 18, i64 2, !30, i64 24, i64 8, !21, i64 24, i64 2, !30, i64 24, i64 4, !31, i64 24, i64 8, !21, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 16, i64 2, !30, i64 18, i64 2, !30, i64 24, i64 8, !21, i64 24, i64 2, !30, i64 24, i64 4, !31, i64 24, i64 8, !21, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 2, !30, i64 34, i64 2, !30, i64 40, i64 8, !21, i64 40, i64 2, !30, i64 40, i64 4, !31, i64 40, i64 8, !21, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 32, i64 2, !30, i64 34, i64 2, !30, i64 40, i64 8, !21, i64 40, i64 2, !30, i64 40, i64 4, !31, i64 40, i64 8, !21, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 40, i64 8, !16, i64 48, i64 2, !30, i64 50, i64 2, !30, i64 56, i64 8, !21, i64 56, i64 2, !30, i64 56, i64 4, !31, i64 56, i64 8, !21, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 56, i64 8, !16, i64 64, i64 2, !30, i64 66, i64 2, !30, i64 72, i64 8, !21, i64 72, i64 2, !30, i64 72, i64 4, !31, i64 72, i64 8, !21, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 80, i64 2, !30, i64 82, i64 2, !30, i64 88, i64 8, !21, i64 88, i64 2, !30, i64 88, i64 4, !31, i64 88, i64 8, !21, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 88, i64 8, !16, i64 64, i64 2, !30, i64 66, i64 2, !30, i64 72, i64 8, !21, i64 72, i64 2, !30, i64 72, i64 4, !31, i64 72, i64 8, !21, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16, i64 72, i64 8, !16}
!30 = !{!12, !12, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !8, i64 0}
!33 = !{i64 0, i64 2, !30, i64 2, i64 2, !30, i64 8, i64 8, !21, i64 8, i64 2, !30, i64 8, i64 4, !31, i64 8, i64 8, !21, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16, i64 8, i64 8, !16}
!34 = !{!35, !7, i64 40}
!35 = !{!"gs_indexed_map_s", !36, i64 0, !8, i64 24, !13, i64 32, !7, i64 40}
!36 = !{!"rc_header_s", !22, i64 0, !7, i64 8, !7, i64 16}
!37 = !{!38, !7, i64 8}
!38 = !{!"gs_separation_params_s", !22, i64 0, !39, i64 8, !7, i64 24}
!39 = !{!"gs_base_color_space_s", !7, i64 0, !8, i64 8}
!40 = !{!27, !13, i64 4}
!41 = !{!38, !7, i64 24}
!42 = !{!35, !13, i64 32}
