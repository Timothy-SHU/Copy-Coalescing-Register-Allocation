; ModuleID = 'zcolor2.c'
source_filename = "zcolor2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_client_pattern_s, ptr, %struct.gs_matrix_s, %struct.gs_rect_s, i32, %struct.gs_int_point_s, i64 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_client_pattern_s = type { %struct.gs_uid_s, i32, i32, %struct.gs_rect_s, float, float, ptr, ptr }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.3, %union.anon.3, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.7, %struct.ref_s, %struct.ref_s }
%union.anon.3 = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.6 }
%struct.ref_cie_procs_s = type { %union.anon.4, %union.anon.5, %struct.ref_s }
%union.anon.4 = type { %struct.ref_s }
%union.anon.5 = type { %struct.ref_s }
%union.anon.6 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.7 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zcolor2_st_pattern_instance_p = dso_local local_unnamed_addr global ptr null, align 8
@zcolor2_l2_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zcurrentcolor }, %struct.op_def { ptr @.str.2, ptr @zcurrentcolorspace }, %struct.op_def { ptr @.str.3, ptr @zsetcolor }, %struct.op_def { ptr @.str.4, ptr @zsetcolorspace }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"0currentcolor\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0.currentcolorspace\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1setcolor\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"1.setcolorspace\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Implementation\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcolor2_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zcolor2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentcolor(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call ptr @gs_currentcolor(ptr noundef %2) #5
  %4 = load ptr, ptr @igs, align 8, !tbaa !5
  %5 = tail call ptr @gs_currentcolorspace(ptr noundef %4) #5
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !9
  %7 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 80
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 5, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %69

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 8, !tbaa !17
  %15 = load i32, ptr %14, align 8, !tbaa !19
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_client_color_s, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %19, i64 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !24
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gs_color_space_s, ptr %5, i64 0, i32 1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !36
  %30 = load i32, ptr %27, align 8, !tbaa !19
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load float, ptr %3, align 4, !tbaa !37
  %34 = fptosi float %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %35, ptr %37, align 8, !tbaa !38
  store i16 2816, ptr %36, align 8, !tbaa !39
  br label %40

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  tail call void @make_reals(ptr noundef nonnull %39, ptr noundef %3, i32 noundef %29) #5
  br label %40

40:                                               ; preds = %32, %38
  %41 = add nsw i32 %29, 1
  br label %42

42:                                               ; preds = %40, %21, %17
  %43 = phi i32 [ %41, %40 ], [ 1, %21 ], [ 1, %17 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %44
  %46 = load ptr, ptr @igs, align 8, !tbaa !5
  %47 = tail call ptr @gs_state_client_data(ptr noundef %46) #5
  %48 = getelementptr inbounds %struct.int_gstate_s, ptr %47, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa.struct !40
  br label %61

49:                                               ; preds = %13
  %50 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %14, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !36
  %52 = icmp eq i32 %15, 8
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load float, ptr %3, align 4, !tbaa !37
  %55 = fptosi float %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %58 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %56, ptr %58, align 8, !tbaa !38
  store i16 2816, ptr %57, align 8, !tbaa !39
  br label %61

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  tail call void @make_reals(ptr noundef nonnull %60, ptr noundef %3, i32 noundef %51) #5
  br label %61

61:                                               ; preds = %59, %53, %42
  %62 = phi i32 [ %43, %42 ], [ %51, %53 ], [ %51, %59 ]
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %63
  %65 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !9
  %66 = icmp ugt ptr %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 %62, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %69

68:                                               ; preds = %61
  store ptr %64, ptr @o_stack, align 8, !tbaa !15
  br label %69

69:                                               ; preds = %68, %67, %12
  %70 = phi i32 [ -16, %12 ], [ -16, %67 ], [ 0, %68 ]
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentcolorspace(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !9
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %22

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = tail call ptr @gs_state_client_data(ptr noundef %7) #5
  %9 = getelementptr inbounds i8, ptr %8, i64 177
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = icmp eq i8 %10, 14
  %12 = load ptr, ptr @igs, align 8, !tbaa !5
  br i1 %11, label %13, label %19

13:                                               ; preds = %6
  %14 = tail call ptr @gs_currentcolorspace(ptr noundef %12) #5
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = load i32, ptr %15, align 8, !tbaa !19
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !38
  store i16 2816, ptr %2, align 8, !tbaa !39
  br label %22

19:                                               ; preds = %6
  %20 = tail call ptr @gs_state_client_data(ptr noundef %12) #5
  %21 = getelementptr inbounds %struct.int_gstate_s, ptr %20, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !40
  br label %22

22:                                               ; preds = %13, %19, %5
  %23 = phi i32 [ -16, %5 ], [ 0, %19 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolor(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_client_color_s, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  %4 = load ptr, ptr @igs, align 8, !tbaa !5
  %5 = tail call ptr @gs_currentcolorspace(ptr noundef %4) #5
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = load i32, ptr %6, align 8, !tbaa !19
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %67

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !38
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %62

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = load i16, ptr %17, align 8, !tbaa !43
  %19 = and i16 %18, 32
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %15
  %22 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #5
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %62, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !5
  %26 = load i16, ptr %25, align 8, !tbaa !39
  %27 = and i16 %26, 15872
  %28 = icmp eq i16 %27, 2048
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load ptr, ptr @gs_imemory, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.ref_s, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = call ptr %32(ptr noundef %30, ptr noundef %34) #5
  %36 = load ptr, ptr @zcolor2_st_pattern_instance_p, align 8, !tbaa !5
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %29
  %39 = load ptr, ptr %3, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.ref_s, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.gs_client_color_s, ptr %2, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !21
  %43 = getelementptr inbounds %struct.gs_pattern_instance_s, ptr %41, i64 0, i32 1, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !24
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gs_color_space_s, ptr %5, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !38
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %52 = getelementptr inbounds %struct.gs_color_space_s, ptr %5, i64 0, i32 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !17
  %54 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !36
  %56 = call i32 @num_params(ptr noundef nonnull %51, i32 noundef %55, ptr noundef nonnull %2) #5
  %57 = icmp slt i32 %56, 0
  %58 = select i1 %57, i32 %56, i32 %55
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = add nuw nsw i32 %58, 1
  br label %62

62:                                               ; preds = %60, %38, %50, %46, %21, %24, %29, %15, %13
  %63 = phi i32 [ undef, %13 ], [ undef, %15 ], [ undef, %29 ], [ undef, %24 ], [ undef, %21 ], [ undef, %46 ], [ %58, %50 ], [ %61, %60 ], [ 1, %38 ]
  %64 = phi i32 [ %14, %13 ], [ -7, %15 ], [ -15, %29 ], [ -15, %24 ], [ -15, %21 ], [ -15, %46 ], [ %58, %50 ], [ undef, %60 ], [ undef, %38 ]
  %65 = phi ptr [ null, %13 ], [ null, %15 ], [ null, %29 ], [ null, %24 ], [ null, %21 ], [ %41, %46 ], [ %41, %50 ], [ %41, %60 ], [ %41, %38 ]
  %66 = phi i1 [ false, %13 ], [ false, %15 ], [ false, %29 ], [ false, %24 ], [ false, %21 ], [ false, %46 ], [ false, %50 ], [ true, %60 ], [ true, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  br i1 %66, label %74, label %93

67:                                               ; preds = %1
  %68 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %6, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !36
  %70 = call i32 @num_params(ptr noundef %0, i32 noundef %69, ptr noundef nonnull %2) #5
  %71 = icmp slt i32 %70, 0
  %72 = select i1 %71, i32 %70, i32 %69
  %73 = getelementptr inbounds %struct.gs_client_color_s, ptr %2, i64 0, i32 1
  store ptr null, ptr %73, align 8, !tbaa !21
  br label %74

74:                                               ; preds = %62, %67
  %75 = phi i32 [ %63, %62 ], [ %72, %67 ]
  %76 = phi ptr [ %65, %62 ], [ null, %67 ]
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @igs, align 8, !tbaa !5
  %80 = call i32 @gs_setcolor(ptr noundef %79, ptr noundef nonnull %2) #5
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = icmp eq ptr %76, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = load ptr, ptr @igs, align 8, !tbaa !5
  %86 = call ptr @gs_state_client_data(ptr noundef %85) #5
  %87 = getelementptr inbounds %struct.int_gstate_s, ptr %86, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !40
  br label %88

88:                                               ; preds = %84, %82
  %89 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %90 = zext nneg i32 %75 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds %struct.ref_s, ptr %89, i64 %91
  store ptr %92, ptr @o_stack, align 8, !tbaa !15
  br label %93

93:                                               ; preds = %78, %74, %62, %88
  %94 = phi i32 [ %80, %88 ], [ %64, %62 ], [ %75, %74 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolorspace(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = icmp eq i8 %3, 4
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !5
  %9 = tail call ptr @gs_state_client_data(ptr noundef %8) #5
  %10 = getelementptr inbounds %struct.int_gstate_s, ptr %9, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !40
  %11 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 -1
  store ptr %12, ptr @o_stack, align 8, !tbaa !15
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @gs_currentcolor(ptr noundef) local_unnamed_addr #3

declare ptr @gs_currentcolorspace(ptr noundef) local_unnamed_addr #3

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @make_reals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_setcolor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !6, i64 120}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!10, !6, i64 0}
!16 = !{!10, !14, i64 64}
!17 = !{!18, !6, i64 0}
!18 = !{!"gs_color_space_s", !6, i64 0, !7, i64 8}
!19 = !{!20, !14, i64 0}
!20 = !{!"gs_color_space_type_s", !14, i64 0, !14, i64 4, !14, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!21 = !{!22, !6, i64 16}
!22 = !{!"gs_client_color_s", !23, i64 0, !6, i64 16}
!23 = !{!"gs_paint_color_s", !7, i64 0}
!24 = !{!25, !14, i64 40}
!25 = !{!"gs_pattern_instance_s", !26, i64 0, !28, i64 24, !6, i64 104, !34, i64 112, !30, i64 136, !14, i64 168, !35, i64 172, !27, i64 184}
!26 = !{!"rc_header_s", !27, i64 0, !6, i64 8, !6, i64 16}
!27 = !{!"long", !7, i64 0}
!28 = !{!"gs_client_pattern_s", !29, i64 0, !14, i64 16, !14, i64 20, !30, i64 24, !33, i64 56, !33, i64 60, !6, i64 64, !6, i64 72}
!29 = !{!"gs_uid_s", !27, i64 0, !6, i64 8}
!30 = !{!"gs_rect_s", !31, i64 0, !31, i64 16}
!31 = !{!"gs_point_s", !32, i64 0, !32, i64 8}
!32 = !{!"double", !7, i64 0}
!33 = !{!"float", !7, i64 0}
!34 = !{!"gs_matrix_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!35 = !{!"gs_int_point_s", !14, i64 0, !14, i64 4}
!36 = !{!20, !14, i64 4}
!37 = !{!33, !33, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!11, !13, i64 0}
!40 = !{i64 0, i64 2, !41, i64 2, i64 2, !41, i64 8, i64 8, !42, i64 8, i64 2, !41, i64 8, i64 4, !37, i64 8, i64 8, !42, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!41 = !{!13, !13, i64 0}
!42 = !{!27, !27, i64 0}
!43 = !{!44, !13, i64 0}
!44 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!45 = !{!46, !6, i64 0}
!46 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !14, i64 40, !14, i64 44, !6, i64 48, !14, i64 56, !14, i64 60}
!47 = !{!48, !6, i64 80}
!48 = !{!"gs_memory_s", !49, i64 0}
!49 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
