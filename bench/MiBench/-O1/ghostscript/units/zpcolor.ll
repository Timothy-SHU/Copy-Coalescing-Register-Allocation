; ModuleID = 'zpcolor.c'
source_filename = "zpcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_client_pattern_s = type { %struct.gs_uid_s, i32, i32, %struct.gs_rect_s, float, float, ptr, ptr }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_client_pattern_s, ptr, %struct.gs_matrix_s, %struct.gs_rect_s, i32, %struct.gs_int_point_s, i64 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_pattern_accum_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zpcolor_l2_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zbuildpattern }, %struct.op_def { ptr @.str.2, ptr @zsetpatternspace }, %struct.op_def { ptr @.str.3, ptr @pattern_paint_prepare }, %struct.op_def { ptr @.str.4, ptr @pattern_paint_finish }, %struct.op_def { ptr null, ptr @zpcolor_init }], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"2.buildpattern\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"1.setpatternspace\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"0%pattern_paint_prepare\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"0%pattern_paint_finish\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"PatternType\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"TilingType\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BBox\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"XStep\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"YStep\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"PaintProc\00", align 1
@st_int_pattern = internal constant %struct.gs_memory_struct_type_s { i32 16, ptr @.str.12, ptr null, ptr @ref_struct_clear_marks, ptr @ref_struct_enum_ptrs, ptr @ref_struct_reloc_ptrs, ptr null }, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"int_pattern\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_color_space_type_Pattern = external constant %struct.gs_color_space_type_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@st_pattern_instance = external constant %struct.gs_memory_struct_type_s, align 8
@zcolor2_st_pattern_instance_p = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"pattern_paint_prepare\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"pattern_paint_cleanup\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zpcolor_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zpcolor_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildpattern(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x float], align 16
  %5 = alloca %struct.gs_client_pattern_s, align 8
  %6 = alloca %struct.gs_client_color_s, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %9 = getelementptr inbounds i8, ptr %0, i64 -15
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %8) #6
  br label %103

14:                                               ; preds = %1
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i16, ptr %16, align 8, !tbaa !8
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %103, label %20

20:                                               ; preds = %14
  %21 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %25 = call i32 @dict_uid_param(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %24) #6
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = call i32 @dict_int_param(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 1
  %32 = call i32 @dict_int_param(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %31) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 2
  %36 = call i32 @dict_int_param(ptr noundef nonnull %8, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %35) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = call i32 @dict_float_array_param(ptr noundef nonnull %8, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef nonnull %4, ptr noundef null) #6
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 4
  %43 = call i32 @dict_float_param(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, double noundef 0.000000e+00, ptr noundef nonnull %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 5
  %47 = call i32 @dict_float_param(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, double noundef 0.000000e+00, ptr noundef nonnull %46) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = call i32 @dict_find_string(ptr noundef nonnull %8, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #6
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %45, %41, %38, %34, %30, %27, %23, %20
  %53 = phi i32 [ %21, %20 ], [ %25, %23 ], [ %28, %27 ], [ %32, %30 ], [ %36, %34 ], [ %39, %38 ], [ %43, %41 ], [ %47, %45 ], [ %50, %49 ]
  %54 = icmp slt i32 %53, 0
  %55 = select i1 %54, i32 %53, i32 -15
  br label %103

56:                                               ; preds = %49
  %57 = load ptr, ptr %7, align 8, !tbaa !17
  %58 = load i16, ptr %57, align 8, !tbaa !18
  %59 = and i16 %58, 15552
  %60 = icmp eq i16 %59, 1216
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 @check_proc_failed(ptr noundef nonnull %57) #6
  br label %103

63:                                               ; preds = %56
  %64 = load float, ptr %4, align 16, !tbaa !19
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 3
  store double %65, ptr %66, align 8, !tbaa !21
  %67 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !19
  %69 = fpext float %68 to double
  %70 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 3, i32 0, i32 1
  store double %69, ptr %70, align 8, !tbaa !28
  %71 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %72 = load float, ptr %71, align 8, !tbaa !19
  %73 = fpext float %72 to double
  %74 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 3, i32 1
  store double %73, ptr %74, align 8, !tbaa !29
  %75 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %76 = load float, ptr %75, align 4, !tbaa !19
  %77 = fpext float %76 to double
  %78 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 3, i32 1, i32 1
  store double %77, ptr %78, align 8, !tbaa !30
  %79 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 6
  store ptr @zPaintProc, ptr %79, align 8, !tbaa !31
  %80 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %81 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !32
  %83 = call ptr %82(ptr noundef %80, ptr noundef nonnull @st_int_pattern, ptr noundef nonnull @.str.12) #6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %103, label %85

85:                                               ; preds = %63
  %86 = getelementptr inbounds %struct.gs_client_pattern_s, ptr %5, i64 0, i32 7
  store ptr %83, ptr %86, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !36
  %87 = load ptr, ptr @igs, align 8, !tbaa !17
  %88 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %89 = call i32 @gs_makepattern(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef %87, ptr noundef %88) #6
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %93 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %92, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  call void %94(ptr noundef %92, ptr noundef nonnull %83, ptr noundef nonnull @.str.12) #6
  br label %103

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.gs_client_color_s, ptr %6, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !40
  %98 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %97, ptr %98, align 8, !tbaa !5
  %99 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !43
  %100 = trunc i32 %99 to i16
  %101 = or i16 %100, 96
  %102 = add i16 %101, 2048
  store i16 %102, ptr %0, align 8, !tbaa !18
  br label %103

103:                                              ; preds = %63, %14, %95, %91, %61, %52, %12
  %104 = phi i32 [ %55, %52 ], [ %89, %91 ], [ %89, %95 ], [ %62, %61 ], [ %13, %12 ], [ -7, %14 ], [ -25, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetpatternspace(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_color_space_s, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  %3 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #6
  %4 = load i16, ptr %0, align 8, !tbaa !18
  %5 = and i16 %4, 16160
  %6 = icmp eq i16 %5, 1056
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %41

13:                                               ; preds = %1
  %14 = load ptr, ptr @igs, align 8, !tbaa !17
  %15 = tail call ptr @gs_currentcolorspace(ptr noundef %14) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %15, i64 72, i1 false), !tbaa.struct !44
  %16 = load ptr, ptr %2, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !50
  switch i16 %22, label %41 [
    i16 1, label %23
    i16 2, label %25
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !5
  br label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1
  %27 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 56, i1 false)
  store i32 1, ptr %26, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %25, %23
  store ptr @gs_color_space_type_Pattern, ptr %2, align 8, !tbaa !46
  %29 = load ptr, ptr @igs, align 8, !tbaa !17
  %30 = call i32 @gs_setcolorspace(ptr noundef %29, ptr noundef nonnull %2) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #6
  %34 = sub i32 %33, %3
  call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %34) #6
  br label %41

35:                                               ; preds = %28
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !51
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -1
  store ptr %37, ptr @o_stack, align 8, !tbaa !51
  %38 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #6
  %39 = icmp eq i32 %38, %3
  %40 = select i1 %39, i32 0, i32 5
  br label %41

41:                                               ; preds = %20, %13, %11, %7, %35, %32
  %42 = phi i32 [ %30, %32 ], [ %40, %35 ], [ %12, %11 ], [ -7, %7 ], [ -15, %13 ], [ -15, %20 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_paint_prepare(ptr nocapture readnone %0) #1 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @igs, align 8, !tbaa !17
  %4 = tail call ptr @gs_currentcolor(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.gs_client_color_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 1, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %9 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -5
  %12 = icmp ugt ptr %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #6
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %61

16:                                               ; preds = %13, %1
  %17 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %18 = tail call ptr @gx_pattern_accum_alloc(ptr noundef %17, ptr noundef nonnull @.str.13) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %18, i64 0, i32 24
  store ptr %6, ptr %21, align 8, !tbaa !59
  %22 = tail call ptr @gstate_pattern_cache(ptr noundef %3) #6
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %18, i64 0, i32 23
  store ptr %23, ptr %24, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %18, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = tail call i32 %26(ptr noundef nonnull %18) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  tail call void %32(ptr noundef %30, ptr noundef nonnull %18, ptr noundef nonnull @.str.13) #6
  br label %61

33:                                               ; preds = %20
  %34 = tail call i32 @gs_gsave(ptr noundef %3) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = tail call i32 @gs_setgstate(ptr noundef %3, ptr noundef %38) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 @gs_grestore(ptr noundef %3) #6
  br label %61

43:                                               ; preds = %36
  tail call void @gx_set_device_only(ptr noundef %3, ptr noundef nonnull %18) #6
  %44 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %45 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1
  store ptr %45, ptr @e_stack, align 8, !tbaa !51
  %46 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1, i32 1
  store ptr @pattern_paint_cleanup, ptr %46, align 8, !tbaa !5
  store i16 3712, ptr %45, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.ref_s, ptr %44, i64 1, i32 0, i32 1
  store i16 0, ptr %47, align 2, !tbaa !50
  %48 = getelementptr inbounds %struct.ref_s, ptr %44, i64 2
  store ptr %48, ptr @e_stack, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.ref_s, ptr %44, i64 2, i32 1
  store ptr %18, ptr %49, align 8, !tbaa !5
  %50 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !43
  %51 = trunc i32 %50 to i16
  %52 = add i16 %51, 2048
  store i16 %52, ptr %48, align 8, !tbaa !18
  %53 = getelementptr inbounds %struct.ref_s, ptr %44, i64 3
  store ptr %53, ptr @e_stack, align 8, !tbaa !51
  %54 = getelementptr inbounds %struct.ref_s, ptr %44, i64 3, i32 1
  store ptr @pattern_paint_finish, ptr %54, align 8, !tbaa !5
  store i16 3968, ptr %53, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.ref_s, ptr %44, i64 3, i32 0, i32 1
  store i16 0, ptr %55, align 2, !tbaa !50
  %56 = call i32 @dict_find_string(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #6
  %57 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.ref_s, ptr %57, i64 1
  store ptr %58, ptr @e_stack, align 8, !tbaa !51
  %59 = load ptr, ptr %2, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false), !tbaa.struct !36
  %60 = getelementptr inbounds %struct.ref_s, ptr %57, i64 2
  store ptr %60, ptr @e_stack, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !36
  br label %61

61:                                               ; preds = %33, %16, %13, %43, %41, %29
  %62 = phi i32 [ %27, %29 ], [ %39, %41 ], [ 5, %43 ], [ %14, %13 ], [ -25, %16 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @pattern_paint_finish(ptr nocapture readnone %0) #1 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %6 = load ptr, ptr @igs, align 8, !tbaa !17
  %7 = call i32 @gx_pattern_cache_add_entry(ptr noundef %6, ptr noundef %5, ptr noundef nonnull %2) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -2
  store ptr %11, ptr @e_stack, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.ref_s, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load ptr, ptr @igs, align 8, !tbaa !17
  %15 = call i32 @gs_grestore(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %13, i64 0, i32 21, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = call i32 %17(ptr noundef %13) #6
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  call void %21(ptr noundef %19, ptr noundef %13, ptr noundef nonnull @.str.14) #6
  br label %22

22:                                               ; preds = %1, %9
  %23 = phi i32 [ 14, %9 ], [ %7, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @zpcolor_init() #1 {
  %1 = load ptr, ptr @igs, align 8, !tbaa !17
  %2 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  %3 = tail call i32 @gx_pat_cache_default_tiles() #6
  %4 = tail call i64 @gx_pat_cache_default_bits() #6
  %5 = tail call ptr @gx_pattern_alloc_cache(ptr noundef %2, i32 noundef %3, i64 noundef %4) #6
  tail call void @gstate_set_pattern_cache(ptr noundef %1, ptr noundef %5) #6
  store ptr @st_pattern_instance, ptr @zcolor2_st_pattern_instance_p, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_uid_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_float_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_float_param(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @zPaintProc(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -2
  %6 = icmp ugt ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 2) #6
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2
  store ptr %12, ptr @e_stack, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2, i32 1
  store ptr @pattern_paint_prepare, ptr %13, align 8, !tbaa !5
  store i16 3968, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.ref_s, ptr %11, i64 2, i32 0, i32 1
  store i16 0, ptr %14, align 2, !tbaa !50
  br label %15

15:                                               ; preds = %7, %10
  %16 = phi i32 [ %8, %7 ], [ -103, %10 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @gs_makepattern(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ref_struct_clear_marks(ptr noundef, i32 noundef) #3

declare ptr @ref_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare void @ref_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #3

declare ptr @gs_currentcolorspace(ptr noundef) local_unnamed_addr #3

declare i32 @gs_setcolorspace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gstate_set_pattern_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gx_pattern_alloc_cache(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_pat_cache_default_tiles() local_unnamed_addr #3

declare i64 @gx_pat_cache_default_bits() local_unnamed_addr #3

declare ptr @gs_currentcolor(ptr noundef) local_unnamed_addr #3

declare ptr @gx_pattern_accum_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gstate_pattern_cache(ptr noundef) local_unnamed_addr #3

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #3

declare i32 @gs_setgstate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #3

declare void @gx_set_device_only(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @pattern_paint_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr @igs, align 8, !tbaa !17
  %6 = tail call i32 @gs_grestore(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.gx_device_pattern_accum_s, ptr %4, i64 0, i32 21, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call i32 %8(ptr noundef %4) #6
  %10 = load ptr, ptr @gs_imemory, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  tail call void %12(ptr noundef %10, ptr noundef %4, ptr noundef nonnull @.str.14) #6
  ret i32 0
}

declare i32 @gx_pattern_cache_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 0}
!9 = !{!"dict_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
!10 = !{!"ref_s", !11, i64 0, !6, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"gs_dual_memory_s", !15, i64 0, !6, i64 8, !16, i64 40, !16, i64 44, !15, i64 48, !16, i64 56, !16, i64 60}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!10, !12, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !6, i64 0}
!21 = !{!22, !27, i64 24}
!22 = !{!"gs_client_pattern_s", !23, i64 0, !16, i64 16, !16, i64 20, !25, i64 24, !20, i64 56, !20, i64 60, !15, i64 64, !15, i64 72}
!23 = !{!"gs_uid_s", !24, i64 0, !15, i64 8}
!24 = !{!"long", !6, i64 0}
!25 = !{!"gs_rect_s", !26, i64 0, !26, i64 16}
!26 = !{!"gs_point_s", !27, i64 0, !27, i64 8}
!27 = !{!"double", !6, i64 0}
!28 = !{!22, !27, i64 32}
!29 = !{!22, !27, i64 40}
!30 = !{!22, !27, i64 48}
!31 = !{!22, !15, i64 64}
!32 = !{!33, !15, i64 16}
!33 = !{!"gs_memory_s", !34, i64 0}
!34 = !{!"gs_memory_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
!35 = !{!22, !15, i64 72}
!36 = !{i64 0, i64 2, !37, i64 2, i64 2, !37, i64 8, i64 8, !38, i64 8, i64 2, !37, i64 8, i64 4, !19, i64 8, i64 8, !38, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17}
!37 = !{!12, !12, i64 0}
!38 = !{!24, !24, i64 0}
!39 = !{!33, !15, i64 88}
!40 = !{!41, !15, i64 16}
!41 = !{!"gs_client_color_s", !42, i64 0, !15, i64 16}
!42 = !{!"gs_paint_color_s", !6, i64 0}
!43 = !{!14, !16, i64 40}
!44 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !38, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 4, !45, i64 32, i64 8, !17, i64 40, i64 4, !45, i64 32, i64 8, !17, i64 48, i64 4, !45, i64 8, i64 4, !45, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !17, i64 24, i64 8, !38, i64 32, i64 8, !17, i64 40, i64 8, !17, i64 40, i64 8, !17, i64 40, i64 8, !17, i64 40, i64 8, !17, i64 48, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 32, i64 8, !17, i64 32, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 4, !45, i64 48, i64 8, !17, i64 56, i64 4, !45, i64 48, i64 8, !17, i64 64, i64 4, !45}
!45 = !{!16, !16, i64 0}
!46 = !{!47, !15, i64 0}
!47 = !{!"gs_color_space_s", !15, i64 0, !6, i64 8}
!48 = !{!49, !16, i64 4}
!49 = !{!"gs_color_space_type_s", !16, i64 0, !16, i64 4, !16, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88}
!50 = !{!10, !12, i64 2}
!51 = !{!52, !15, i64 0}
!52 = !{!"ref_stack_s", !15, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !16, i64 40, !16, i64 44, !10, i64 48, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !10, i64 88, !16, i64 104, !16, i64 108, !16, i64 112, !15, i64 120}
!53 = !{!54, !15, i64 96}
!54 = !{!"gs_pattern_instance_s", !55, i64 0, !22, i64 24, !15, i64 104, !56, i64 112, !25, i64 136, !16, i64 168, !57, i64 172, !24, i64 184}
!55 = !{!"rc_header_s", !24, i64 0, !15, i64 8, !15, i64 16}
!56 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!57 = !{!"gs_int_point_s", !16, i64 0, !16, i64 4}
!58 = !{!52, !15, i64 16}
!59 = !{!60, !15, i64 504}
!60 = !{!"gx_device_pattern_accum_s", !16, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !16, i64 40, !16, i64 44, !61, i64 48, !16, i64 64, !16, i64 68, !6, i64 72, !6, i64 80, !16, i64 96, !6, i64 100, !6, i64 108, !6, i64 116, !6, i64 124, !24, i64 144, !24, i64 152, !16, i64 160, !62, i64 168, !63, i64 192, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !15, i64 520}
!61 = !{!"gx_device_color_info_s", !16, i64 0, !16, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!62 = !{!"gx_page_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16}
!63 = !{!"gx_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288}
!64 = !{!65, !15, i64 0}
!65 = !{!"gx_pattern_cache_s", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !24, i64 32, !24, i64 40, !15, i64 48}
!66 = !{!60, !15, i64 496}
!67 = !{!60, !15, i64 192}
!68 = !{!54, !15, i64 104}
!69 = !{!60, !15, i64 224}
