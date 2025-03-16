; ModuleID = 'gximage5.c'
source_filename = "gximage5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_image_strategies_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_point_s = type { double, double }
%struct.gx_image_enum_s = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i64, i64, i64, ptr, ptr, ptr, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, [4 x %struct.sample_map_s], [256 x %struct.gx_image_clue_s] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i64, i32 }
%struct._e = type { i64, i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], double, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_IScale_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.CLIST, i32, [8 x %struct.CONTRIB] }
%struct.CLIST = type { i32, i32, i32 }
%struct.CONTRIB = type { float }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@image_strategies = external local_unnamed_addr global %struct.gx_image_strategies_s, align 8
@.str = private unnamed_addr constant [21 x i8] c"image scale src line\00", align 1
@st_IScale_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"image scale state\00", align 1
@s_IScale_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gximage5_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @image_strategy_interpolate, ptr @image_strategies, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @image_strategy_interpolate(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_point_s, align 8
  %3 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %9 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !27
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %108, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 6
  %18 = load i8, ptr %17, align 2, !tbaa !29
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12
  store i8 0, ptr %9, align 1, !tbaa !27
  br label %108

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 9, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !30
  %24 = sitofp i32 %23 to float
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 9, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !31
  %28 = sitofp i32 %27 to float
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 8
  %31 = call i32 @gs_distance_transform(double noundef %25, double noundef %29, ptr noundef nonnull %30, ptr noundef nonnull %2) #7
  %32 = load i8, ptr %0, align 8, !tbaa !32
  %33 = icmp ult i8 %32, 9
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %36 = load i8, ptr %35, align 1, !tbaa !33
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %21
  br label %39

39:                                               ; preds = %34, %38
  %40 = phi i32 [ 16, %38 ], [ 8, %34 ]
  %41 = phi i32 [ 32760, %38 ], [ 255, %34 ]
  %42 = load double, ptr %2, align 8, !tbaa !34
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = call double @llvm.ceil.f64(double %43)
  %45 = fptosi double %44 to i32
  %46 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %47 = load double, ptr %46, align 8, !tbaa !37
  %48 = load i32, ptr %22, align 8, !tbaa !30
  %49 = load i32, ptr %26, align 4, !tbaa !31
  %50 = load ptr, ptr %8, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = call ptr %52(ptr noundef nonnull %8, ptr noundef %4) #7
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  %55 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %54, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !42
  %57 = lshr exact i32 %40, 3
  %58 = mul i32 %48, %57
  %59 = mul i32 %58, %56
  %60 = shl i32 %45, 3
  %61 = mul i32 %60, %56
  %62 = load ptr, ptr %6, align 8, !tbaa !43
  %63 = call i32 @llvm.umax.i32(i32 %59, i32 %61)
  %64 = call ptr %62(ptr noundef nonnull %6, i32 noundef %63, ptr noundef nonnull @.str) #7
  %65 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = call ptr %66(ptr noundef nonnull %6, ptr noundef nonnull @st_IScale_state, ptr noundef nonnull @.str.1) #7
  %68 = icmp eq ptr %64, null
  %69 = icmp eq ptr %67, null
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %88, label %71

71:                                               ; preds = %39
  %72 = call double @llvm.fabs.f64(double %47)
  %73 = call double @llvm.ceil.f64(double %72)
  %74 = fptosi double %73 to i32
  %75 = getelementptr inbounds i8, ptr %67, i64 8
  store ptr %6, ptr %75, align 8, !tbaa.struct !47
  %76 = getelementptr inbounds i8, ptr %67, i64 24
  store i32 %56, ptr %76, align 8, !tbaa.struct !52
  %77 = getelementptr inbounds i8, ptr %67, i64 28
  store i32 %40, ptr %77, align 4, !tbaa.struct !53
  %78 = getelementptr inbounds i8, ptr %67, i64 32
  store i32 %41, ptr %78, align 8, !tbaa.struct !54
  %79 = getelementptr inbounds i8, ptr %67, i64 36
  store i32 %48, ptr %79, align 4, !tbaa.struct !55
  %80 = getelementptr inbounds i8, ptr %67, i64 40
  store i32 %49, ptr %80, align 8, !tbaa.struct !56
  %81 = getelementptr inbounds i8, ptr %67, i64 44
  store i32 16, ptr %81, align 4, !tbaa.struct !57
  %82 = getelementptr inbounds i8, ptr %67, i64 48
  store i32 32760, ptr %82, align 8, !tbaa.struct !58
  %83 = getelementptr inbounds i8, ptr %67, i64 52
  store i32 %45, ptr %83, align 4, !tbaa.struct !59
  %84 = getelementptr inbounds i8, ptr %67, i64 56
  store i32 %74, ptr %84, align 8, !tbaa.struct !60
  %85 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_IScale_template, i64 0, i32 1), align 8, !tbaa !61
  %86 = call i32 %85(ptr noundef %67) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %71, %39
  %89 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 11
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  call void %90(ptr noundef nonnull %6, ptr noundef %67, ptr noundef nonnull @.str.1) #7
  %91 = load ptr, ptr %89, align 8, !tbaa !63
  call void %91(ptr noundef nonnull %6, ptr noundef %64, ptr noundef nonnull @.str) #7
  store i8 0, ptr %9, align 1, !tbaa !27
  br label %108

92:                                               ; preds = %71
  %93 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  store ptr %64, ptr %93, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 36
  store ptr %67, ptr %94, align 8, !tbaa !65
  %95 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  store i32 0, ptr %95, align 8, !tbaa !66
  %96 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !67
  %98 = add nsw i64 %97, 2047
  %99 = lshr i64 %98, 12
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 43
  store i32 %100, ptr %101, align 8, !tbaa !68
  %102 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !69
  %104 = add nsw i64 %103, 2047
  %105 = lshr i64 %104, 12
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 43, i32 1
  store i32 %106, ptr %107, align 4, !tbaa !70
  br label %108

108:                                              ; preds = %1, %92, %88, %20
  %109 = phi ptr [ null, %20 ], [ null, %88 ], [ @image_render_interpolate, %92 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret ptr %109
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_interpolate(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = alloca %struct.stream_cursor_read_s, align 8
  %8 = alloca %struct.stream_cursor_write_s, align 8
  %9 = alloca %struct.gs_client_color_s, align 8
  %10 = alloca %struct.gx_device_color_s, align 8
  %11 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %12, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %123, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %12, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !75
  %25 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %12, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !76
  %27 = mul i32 %26, %20
  %28 = mul i32 %27, %24
  %29 = mul nsw i32 %20, %2
  %30 = mul nsw i32 %29, %26
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = icmp eq i32 %26, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = getelementptr inbounds i8, ptr %32, i64 -1
  store ptr %35, ptr %7, align 8, !tbaa !77
  br label %118

36:                                               ; preds = %22
  %37 = load i8, ptr %0, align 8, !tbaa !32
  %38 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !79
  %40 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %42 = getelementptr inbounds i8, ptr %41, i64 -1
  store ptr %42, ptr %7, align 8, !tbaa !77
  %43 = load i32, ptr %23, align 4, !tbaa !75
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %117

45:                                               ; preds = %36
  %46 = icmp ult i8 %37, 9
  %47 = icmp eq i8 %39, 0
  %48 = icmp eq i8 %39, 0
  %49 = sext i32 %20 to i64
  %50 = zext i8 %39 to i64
  %51 = zext i8 %39 to i64
  br label %52

52:                                               ; preds = %45, %107
  %53 = phi ptr [ %32, %45 ], [ %108, %107 ]
  %54 = phi ptr [ %41, %45 ], [ %114, %107 ]
  %55 = phi i32 [ 0, %45 ], [ %113, %107 ]
  br i1 %46, label %57, label %56

56:                                               ; preds = %52
  br i1 %47, label %107, label %91

57:                                               ; preds = %52
  br i1 %48, label %107, label %58

58:                                               ; preds = %57, %87
  %59 = phi i64 [ %89, %87 ], [ 0, %57 ]
  %60 = phi ptr [ %88, %87 ], [ %53, %57 ]
  %61 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %59, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !80
  switch i32 %62, label %87 [
    i32 0, label %63
    i32 1, label %68
    i32 2, label %74
  ]

63:                                               ; preds = %58
  %64 = load i8, ptr %60, align 1, !tbaa !51
  %65 = uitofp i8 %64 to double
  %66 = fmul double %65, 0x3F70101010101010
  %67 = fptrunc double %66 to float
  br label %84

68:                                               ; preds = %58
  %69 = load i8, ptr %60, align 1, !tbaa !51
  %70 = lshr i8 %69, 4
  %71 = zext nneg i8 %70 to i64
  %72 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %59, i32 1, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !82
  br label %84

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %59, i32 1
  %76 = load float, ptr %75, align 8, !tbaa !82
  %77 = fpext float %76 to double
  %78 = load i8, ptr %60, align 1, !tbaa !51
  %79 = uitofp i8 %78 to double
  %80 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %59, i32 2
  %81 = load double, ptr %80, align 8, !tbaa !83
  %82 = call double @llvm.fmuladd.f64(double %79, double %81, double %77)
  %83 = fptrunc double %82 to float
  br label %84

84:                                               ; preds = %74, %68, %63
  %85 = phi float [ %67, %63 ], [ %73, %68 ], [ %83, %74 ]
  %86 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 %59
  store float %85, ptr %86, align 4, !tbaa !82
  br label %87

87:                                               ; preds = %84, %58
  %88 = getelementptr inbounds i8, ptr %60, i64 1
  %89 = add nuw nsw i64 %59, 1
  %90 = icmp eq i64 %89, %51
  br i1 %90, label %107, label %58, !llvm.loop !84

91:                                               ; preds = %56, %91
  %92 = phi i64 [ %105, %91 ], [ 0, %56 ]
  %93 = phi ptr [ %104, %91 ], [ %53, %56 ]
  %94 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %92, i32 1
  %95 = load float, ptr %94, align 8, !tbaa !82
  %96 = fpext float %95 to double
  %97 = load i16, ptr %93, align 2, !tbaa !86
  %98 = sitofp i16 %97 to double
  %99 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 %92, i32 2
  %100 = load double, ptr %99, align 8, !tbaa !83
  %101 = call double @llvm.fmuladd.f64(double %98, double %100, double %96)
  %102 = fptrunc double %101 to float
  %103 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 %92
  store float %102, ptr %103, align 4, !tbaa !82
  %104 = getelementptr inbounds i8, ptr %93, i64 2
  %105 = add nuw nsw i64 %92, 1
  %106 = icmp eq i64 %105, %50
  br i1 %106, label %107, label %91, !llvm.loop !88

107:                                              ; preds = %91, %87, %56, %57
  %108 = phi ptr [ %53, %57 ], [ %53, %56 ], [ %88, %87 ], [ %104, %91 ]
  %109 = load ptr, ptr %16, align 8, !tbaa !38
  %110 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %109, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !89
  %112 = call i32 %111(ptr noundef nonnull %9, ptr noundef nonnull %16, ptr noundef %54, ptr noundef %14) #7
  %113 = add nuw nsw i32 %55, 1
  %114 = getelementptr inbounds i16, ptr %54, i64 %49
  %115 = load i32, ptr %23, align 4, !tbaa !75
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %52, label %117, !llvm.loop !90

117:                                              ; preds = %107, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  br label %118

118:                                              ; preds = %117, %34
  %119 = load ptr, ptr %7, align 8, !tbaa !77
  %120 = zext i32 %28 to i64
  %121 = getelementptr inbounds i8, ptr %119, i64 %120
  %122 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %7, i64 0, i32 1
  store ptr %121, ptr %122, align 8, !tbaa !91
  br label %124

123:                                              ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %124

124:                                              ; preds = %123, %118
  %125 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 43
  %126 = load i32, ptr %125, align 8, !tbaa !68
  %127 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 43, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !70
  %129 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %12, i64 0, i32 10
  %130 = load i32, ptr %129, align 4, !tbaa !92
  %131 = load ptr, ptr %16, align 8, !tbaa !38
  %132 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %131, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !40
  %134 = call ptr %133(ptr noundef nonnull %16, ptr noundef %14) #7
  %135 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 7, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !93
  %137 = mul nsw i32 %136, %130
  %138 = add nsw i32 %137, 63
  %139 = ashr i32 %138, 3
  %140 = and i32 %139, -8
  %141 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 8, i32 3
  %142 = load float, ptr %141, align 4, !tbaa !98
  %143 = fcmp ule float %142, 0.000000e+00
  %144 = sext i1 %143 to i32
  %145 = add nsw i32 %128, %144
  %146 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  %147 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  %148 = sub nsw i32 8, %136
  %149 = mul nsw i32 %130, %20
  %150 = sext i32 %149 to i64
  %151 = shl nsw i64 %150, 3
  %152 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %8, i64 0, i32 2
  %153 = getelementptr inbounds %struct.stream_IScale_state_s, ptr %12, i64 0, i32 13
  %154 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %8, i64 0, i32 1
  %155 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_IScale_template, i64 0, i32 2), align 8, !tbaa !99
  %156 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %7, i64 0, i32 1
  %157 = add nsw i32 %130, %126
  %158 = icmp sgt i32 %130, 0
  %159 = icmp slt i32 %136, 8
  %160 = lshr i32 %136, 3
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 10
  %163 = getelementptr inbounds %struct.gx_device_color_s, ptr %10, i64 0, i32 1
  %164 = ashr i32 %136, 3
  %165 = sext i32 %20 to i64
  %166 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 10
  br label %167

167:                                              ; preds = %314, %124
  %168 = phi i32 [ undef, %124 ], [ %313, %314 ]
  %169 = load i32, ptr %146, align 8, !tbaa !66
  %170 = sub nsw i32 0, %169
  %171 = select i1 %143, i32 %170, i32 %169
  %172 = add nsw i32 %145, %171
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #7
  %173 = load ptr, ptr %147, align 8, !tbaa !64
  %174 = getelementptr inbounds i8, ptr %173, i64 %151
  %175 = getelementptr inbounds i8, ptr %174, i64 -1
  store ptr %175, ptr %152, align 8, !tbaa !100
  %176 = load i32, ptr %153, align 8, !tbaa !102
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, -8
  %179 = mul nsw i64 %178, %150
  %180 = getelementptr inbounds i8, ptr %175, i64 %179
  store ptr %180, ptr %154, align 8, !tbaa !103
  %181 = call i32 %155(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #7
  %182 = icmp slt i32 %181, -1
  br i1 %182, label %311, label %183

183:                                              ; preds = %167
  %184 = load ptr, ptr %154, align 8, !tbaa !103
  %185 = load ptr, ptr %152, align 8, !tbaa !100
  %186 = icmp eq ptr %184, %185
  br i1 %186, label %187, label %304

187:                                              ; preds = %183
  br i1 %158, label %188, label %280

188:                                              ; preds = %187
  %189 = getelementptr inbounds i8, ptr %180, i64 1
  br label %190

190:                                              ; preds = %188, %271
  %191 = phi i32 [ %276, %271 ], [ %168, %188 ]
  %192 = phi i32 [ %275, %271 ], [ %126, %188 ]
  %193 = phi i32 [ %274, %271 ], [ %148, %188 ]
  %194 = phi i32 [ %273, %271 ], [ 0, %188 ]
  %195 = phi ptr [ %272, %271 ], [ %173, %188 ]
  %196 = phi ptr [ %278, %271 ], [ %189, %188 ]
  %197 = phi i32 [ %277, %271 ], [ %126, %188 ]
  %198 = load ptr, ptr %134, align 8, !tbaa !38
  %199 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %198, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !104
  %201 = call i32 %200(ptr noundef %196, ptr noundef nonnull %10, ptr noundef %14, ptr noundef %5, i32 noundef 1) #7
  %202 = load ptr, ptr %10, align 8, !tbaa !105
  %203 = icmp eq ptr %202, @gx_dc_procs_pure
  br i1 %203, label %204, label %235

204:                                              ; preds = %190
  %205 = load i64, ptr %163, align 8, !tbaa !51
  switch i32 %164, label %271 [
    i32 0, label %206
    i32 4, label %217
    i32 3, label %221
    i32 2, label %226
    i32 1, label %231
  ]

206:                                              ; preds = %204
  %207 = zext nneg i32 %193 to i64
  %208 = shl i64 %205, %207
  %209 = trunc i64 %208 to i32
  %210 = add i32 %194, %209
  %211 = sub nsw i32 %193, %136
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %271

213:                                              ; preds = %206
  %214 = trunc i32 %210 to i8
  %215 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 %214, ptr %195, align 1, !tbaa !51
  %216 = add nsw i32 %211, 8
  br label %271

217:                                              ; preds = %204
  %218 = lshr i64 %205, 24
  %219 = trunc i64 %218 to i8
  %220 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 %219, ptr %195, align 1, !tbaa !51
  br label %221

221:                                              ; preds = %204, %217
  %222 = phi ptr [ %195, %204 ], [ %220, %217 ]
  %223 = lshr i64 %205, 16
  %224 = trunc i64 %223 to i8
  %225 = getelementptr inbounds i8, ptr %222, i64 1
  store i8 %224, ptr %222, align 1, !tbaa !51
  br label %226

226:                                              ; preds = %204, %221
  %227 = phi ptr [ %195, %204 ], [ %225, %221 ]
  %228 = lshr i64 %205, 8
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds i8, ptr %227, i64 1
  store i8 %229, ptr %227, align 1, !tbaa !51
  br label %231

231:                                              ; preds = %204, %226
  %232 = phi ptr [ %195, %204 ], [ %230, %226 ]
  %233 = trunc i64 %205 to i8
  %234 = getelementptr inbounds i8, ptr %232, i64 1
  store i8 %233, ptr %232, align 1, !tbaa !51
  br label %271

235:                                              ; preds = %190
  br i1 %159, label %236, label %243

236:                                              ; preds = %235
  %237 = sub nsw i32 %193, %136
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = trunc i32 %194 to i8
  %241 = getelementptr inbounds i8, ptr %195, i64 1
  store i8 %240, ptr %195, align 1, !tbaa !51
  %242 = add nsw i32 %237, 8
  br label %245

243:                                              ; preds = %235
  %244 = getelementptr inbounds i8, ptr %195, i64 %161
  br label %245

245:                                              ; preds = %236, %239, %243
  %246 = phi ptr [ %241, %239 ], [ %195, %236 ], [ %244, %243 ]
  %247 = phi i32 [ 0, %239 ], [ %194, %236 ], [ %194, %243 ]
  %248 = phi i32 [ %242, %239 ], [ %237, %236 ], [ %193, %243 ]
  %249 = icmp sgt i32 %197, %192
  br i1 %249, label %250, label %262

250:                                              ; preds = %245
  %251 = icmp eq i32 %248, %148
  br i1 %251, label %254, label %252

252:                                              ; preds = %250
  %253 = trunc i32 %247 to i8
  store i8 %253, ptr %246, align 1, !tbaa !51
  br label %254

254:                                              ; preds = %252, %250
  %255 = load ptr, ptr %162, align 8, !tbaa !110
  %256 = load ptr, ptr %147, align 8, !tbaa !64
  %257 = sub nsw i32 %192, %126
  %258 = sub nsw i32 %197, %192
  %259 = call i32 %255(ptr noundef %5, ptr noundef %256, i32 noundef %257, i32 noundef %140, i64 noundef 0, i32 noundef %192, i32 noundef %172, i32 noundef %258, i32 noundef 1) #7
  %260 = icmp sgt i32 %259, -1
  %261 = select i1 %260, i32 %191, i32 %259
  br i1 %260, label %262, label %311

262:                                              ; preds = %254, %245
  %263 = phi i32 [ %261, %254 ], [ %191, %245 ]
  %264 = load ptr, ptr %10, align 8, !tbaa !105
  %265 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !111
  %267 = call i32 %266(ptr noundef nonnull %10, i32 noundef %197, i32 noundef %172, i32 noundef 1, i32 noundef 1, ptr noundef %5, i32 noundef %18, ptr noundef null) #7
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %311, label %269

269:                                              ; preds = %262
  %270 = add nsw i32 %197, 1
  br label %271

271:                                              ; preds = %204, %231, %213, %206, %269
  %272 = phi ptr [ %246, %269 ], [ %195, %204 ], [ %234, %231 ], [ %215, %213 ], [ %195, %206 ]
  %273 = phi i32 [ %247, %269 ], [ %194, %204 ], [ %194, %231 ], [ 0, %213 ], [ %210, %206 ]
  %274 = phi i32 [ %248, %269 ], [ %193, %204 ], [ %193, %231 ], [ %216, %213 ], [ %211, %206 ]
  %275 = phi i32 [ %270, %269 ], [ %192, %204 ], [ %192, %231 ], [ %192, %213 ], [ %192, %206 ]
  %276 = phi i32 [ %263, %269 ], [ %191, %204 ], [ %191, %231 ], [ %191, %213 ], [ %191, %206 ]
  %277 = add nsw i32 %197, 1
  %278 = getelementptr inbounds i16, ptr %196, i64 %165
  %279 = icmp slt i32 %277, %157
  br i1 %279, label %190, label %280, !llvm.loop !113

280:                                              ; preds = %271, %187
  %281 = phi i32 [ %126, %187 ], [ %277, %271 ]
  %282 = phi ptr [ %173, %187 ], [ %272, %271 ]
  %283 = phi i32 [ 0, %187 ], [ %273, %271 ]
  %284 = phi i32 [ %148, %187 ], [ %274, %271 ]
  %285 = phi i32 [ %126, %187 ], [ %275, %271 ]
  %286 = phi i32 [ %168, %187 ], [ %276, %271 ]
  %287 = icmp sgt i32 %281, %285
  br i1 %287, label %288, label %300

288:                                              ; preds = %280
  %289 = icmp eq i32 %284, %148
  br i1 %289, label %292, label %290

290:                                              ; preds = %288
  %291 = trunc i32 %283 to i8
  store i8 %291, ptr %282, align 1, !tbaa !51
  br label %292

292:                                              ; preds = %290, %288
  %293 = load ptr, ptr %166, align 8, !tbaa !110
  %294 = load ptr, ptr %147, align 8, !tbaa !64
  %295 = sub nsw i32 %285, %126
  %296 = sub nsw i32 %281, %285
  %297 = call i32 %293(ptr noundef %5, ptr noundef %294, i32 noundef %295, i32 noundef %140, i64 noundef 0, i32 noundef %285, i32 noundef %172, i32 noundef %296, i32 noundef 1) #7
  %298 = icmp sgt i32 %297, -1
  %299 = select i1 %298, i32 %286, i32 %297
  br i1 %298, label %300, label %311

300:                                              ; preds = %292, %280
  %301 = phi i32 [ %299, %292 ], [ %286, %280 ]
  %302 = load i32, ptr %146, align 8, !tbaa !66
  %303 = add nsw i32 %302, 1
  store i32 %303, ptr %146, align 8, !tbaa !66
  br label %311, !llvm.loop !114

304:                                              ; preds = %183
  %305 = load ptr, ptr %7, align 8, !tbaa !77
  %306 = load ptr, ptr %156, align 8, !tbaa !91
  %307 = icmp eq ptr %305, %306
  %308 = icmp eq i32 %181, -1
  %309 = or i1 %308, %307
  %310 = select i1 %309, i32 12, i32 0
  br label %311

311:                                              ; preds = %262, %254, %304, %167, %292, %300
  %312 = phi i32 [ 13, %300 ], [ 1, %292 ], [ 1, %167 ], [ %310, %304 ], [ 1, %254 ], [ 1, %262 ]
  %313 = phi i32 [ %301, %300 ], [ %299, %292 ], [ -12, %167 ], [ %168, %304 ], [ %267, %262 ], [ %261, %254 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #7
  switch i32 %312, label %316 [
    i32 0, label %314
    i32 13, label %314
    i32 12, label %315
  ]

314:                                              ; preds = %311, %311
  br label %167, !llvm.loop !114

315:                                              ; preds = %311
  br label %316

316:                                              ; preds = %311, %315
  %317 = phi i1 [ true, %315 ], [ false, %311 ]
  %318 = icmp ne i32 %4, 0
  %319 = zext i1 %318 to i32
  %320 = select i1 %317, i32 %319, i32 %313
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret i32 %320
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gx_image_strategies_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 96}
!11 = !{!"gx_image_enum_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !14, i64 32, !16, i64 48, !16, i64 64, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !15, i64 136, !7, i64 144, !15, i64 152, !15, i64 156, !15, i64 160, !8, i64 164, !8, i64 165, !8, i64 166, !8, i64 167, !18, i64 168, !18, i64 200, !15, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !15, i64 288, !16, i64 296, !16, i64 312, !19, i64 328, !15, i64 456, !15, i64 460, !24, i64 464, !15, i64 472, !15, i64 476, !15, i64 480, !15, i64 484, !8, i64 488, !8, i64 1832}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !8, i64 0}
!14 = !{!"r_", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!15 = !{!"int", !8, i64 0}
!16 = !{!"gs_fixed_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!"gs_fixed_rect_s", !16, i64 0, !16, i64 16}
!19 = !{!"dd_", !20, i64 0, !20, i64 64}
!20 = !{!"gx_dda_fixed_point_s", !21, i64 0, !21, i64 32}
!21 = !{!"gx_dda_fixed_s", !22, i64 0, !23, i64 16}
!22 = !{!"_a", !17, i64 0, !15, i64 8}
!23 = !{!"_e", !17, i64 0, !15, i64 8, !15, i64 12}
!24 = !{!"gs_int_point_s", !15, i64 0, !15, i64 4}
!25 = !{!11, !7, i64 112}
!26 = !{!11, !7, i64 104}
!27 = !{!11, !8, i64 7}
!28 = !{!11, !15, i64 160}
!29 = !{!11, !8, i64 6}
!30 = !{!11, !15, i64 40}
!31 = !{!11, !15, i64 44}
!32 = !{!11, !8, i64 0}
!33 = !{!11, !8, i64 167}
!34 = !{!35, !36, i64 0}
!35 = !{!"gs_point_s", !36, i64 0, !36, i64 8}
!36 = !{!"double", !8, i64 0}
!37 = !{!35, !36, i64 8}
!38 = !{!39, !7, i64 0}
!39 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!40 = !{!41, !7, i64 24}
!41 = !{!"gs_color_space_type_s", !15, i64 0, !15, i64 4, !15, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!42 = !{!41, !15, i64 4}
!43 = !{!44, !7, i64 0}
!44 = !{!"gs_memory_s", !45, i64 0}
!45 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!46 = !{!44, !7, i64 16}
!47 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 36, i64 4, !49, i64 40, i64 4, !49, i64 44, i64 4, !49, i64 48, i64 4, !49, i64 52, i64 4, !49, i64 56, i64 4, !49, i64 64, i64 8, !50, i64 72, i64 8, !50, i64 80, i64 8, !48, i64 88, i64 8, !48, i64 96, i64 8, !48, i64 104, i64 8, !48, i64 112, i64 8, !48, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 4, !49, i64 132, i64 4, !49, i64 136, i64 4, !49, i64 140, i64 4, !49, i64 144, i64 4, !49, i64 148, i64 4, !49, i64 152, i64 4, !49, i64 156, i64 4, !49, i64 160, i64 32, !51}
!48 = !{!7, !7, i64 0}
!49 = !{!15, !15, i64 0}
!50 = !{!36, !36, i64 0}
!51 = !{!8, !8, i64 0}
!52 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 36, i64 4, !49, i64 40, i64 4, !49, i64 48, i64 8, !50, i64 56, i64 8, !50, i64 64, i64 8, !48, i64 72, i64 8, !48, i64 80, i64 8, !48, i64 88, i64 8, !48, i64 96, i64 8, !48, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 4, !49, i64 132, i64 4, !49, i64 136, i64 4, !49, i64 140, i64 4, !49, i64 144, i64 32, !51}
!53 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 36, i64 4, !49, i64 44, i64 8, !50, i64 52, i64 8, !50, i64 60, i64 8, !48, i64 68, i64 8, !48, i64 76, i64 8, !48, i64 84, i64 8, !48, i64 92, i64 8, !48, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 4, !49, i64 132, i64 4, !49, i64 136, i64 4, !49, i64 140, i64 32, !51}
!54 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 40, i64 8, !50, i64 48, i64 8, !50, i64 56, i64 8, !48, i64 64, i64 8, !48, i64 72, i64 8, !48, i64 80, i64 8, !48, i64 88, i64 8, !48, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 4, !49, i64 132, i64 4, !49, i64 136, i64 32, !51}
!55 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 28, i64 4, !49, i64 36, i64 8, !50, i64 44, i64 8, !50, i64 52, i64 8, !48, i64 60, i64 8, !48, i64 68, i64 8, !48, i64 76, i64 8, !48, i64 84, i64 8, !48, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 4, !49, i64 132, i64 32, !51}
!56 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 24, i64 4, !49, i64 32, i64 8, !50, i64 40, i64 8, !50, i64 48, i64 8, !48, i64 56, i64 8, !48, i64 64, i64 8, !48, i64 72, i64 8, !48, i64 80, i64 8, !48, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 4, !49, i64 128, i64 32, !51}
!57 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 20, i64 4, !49, i64 28, i64 8, !50, i64 36, i64 8, !50, i64 44, i64 8, !48, i64 52, i64 8, !48, i64 60, i64 8, !48, i64 68, i64 8, !48, i64 76, i64 8, !48, i64 84, i64 4, !49, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 4, !49, i64 124, i64 32, !51}
!58 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 16, i64 4, !49, i64 24, i64 8, !50, i64 32, i64 8, !50, i64 40, i64 8, !48, i64 48, i64 8, !48, i64 56, i64 8, !48, i64 64, i64 8, !48, i64 72, i64 8, !48, i64 80, i64 4, !49, i64 84, i64 4, !49, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 4, !49, i64 120, i64 32, !51}
!59 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 12, i64 4, !49, i64 20, i64 8, !50, i64 28, i64 8, !50, i64 36, i64 8, !48, i64 44, i64 8, !48, i64 52, i64 8, !48, i64 60, i64 8, !48, i64 68, i64 8, !48, i64 76, i64 4, !49, i64 80, i64 4, !49, i64 84, i64 4, !49, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 4, !49, i64 116, i64 32, !51}
!60 = !{i64 0, i64 4, !49, i64 4, i64 4, !49, i64 8, i64 4, !49, i64 16, i64 8, !50, i64 24, i64 8, !50, i64 32, i64 8, !48, i64 40, i64 8, !48, i64 48, i64 8, !48, i64 56, i64 8, !48, i64 64, i64 8, !48, i64 72, i64 4, !49, i64 76, i64 4, !49, i64 80, i64 4, !49, i64 84, i64 4, !49, i64 88, i64 4, !49, i64 92, i64 4, !49, i64 96, i64 4, !49, i64 100, i64 4, !49, i64 104, i64 4, !49, i64 108, i64 4, !49, i64 112, i64 32, !51}
!61 = !{!62, !7, i64 8}
!62 = !{!"stream_template_s", !7, i64 0, !7, i64 8, !7, i64 16, !15, i64 24, !15, i64 28, !7, i64 32, !7, i64 40, !7, i64 48}
!63 = !{!44, !7, i64 88}
!64 = !{!11, !7, i64 144}
!65 = !{!11, !7, i64 280}
!66 = !{!11, !15, i64 456}
!67 = !{!11, !17, i64 392}
!68 = !{!11, !15, i64 464}
!69 = !{!11, !17, i64 424}
!70 = !{!11, !15, i64 468}
!71 = !{!11, !15, i64 232}
!72 = !{!73, !15, i64 24}
!73 = !{!"stream_IScale_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !36, i64 72, !36, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !74, i64 152, !15, i64 164, !8, i64 168}
!74 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!75 = !{!73, !15, i64 36}
!76 = !{!73, !15, i64 60}
!77 = !{!78, !7, i64 0}
!78 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!79 = !{!11, !8, i64 3}
!80 = !{!81, !15, i64 328}
!81 = !{!"sample_map_s", !8, i64 0, !8, i64 256, !36, i64 320, !15, i64 328}
!82 = !{!13, !13, i64 0}
!83 = !{!81, !36, i64 320}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !8, i64 0}
!88 = distinct !{!88, !85}
!89 = !{!41, !7, i64 32}
!90 = distinct !{!90, !85}
!91 = !{!78, !7, i64 8}
!92 = !{!73, !15, i64 52}
!93 = !{!94, !15, i64 52}
!94 = !{!"gx_device_s", !15, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !15, i64 40, !15, i64 44, !95, i64 48, !15, i64 64, !15, i64 68, !8, i64 72, !8, i64 80, !15, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !17, i64 144, !17, i64 152, !15, i64 160, !96, i64 168, !97, i64 192}
!95 = !{!"gx_device_color_info_s", !15, i64 0, !15, i64 4, !87, i64 8, !87, i64 10, !87, i64 12, !87, i64 14}
!96 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!97 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!98 = !{!11, !13, i64 20}
!99 = !{!62, !7, i64 16}
!100 = !{!101, !7, i64 16}
!101 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!102 = !{!73, !15, i64 64}
!103 = !{!101, !7, i64 8}
!104 = !{!41, !7, i64 40}
!105 = !{!106, !7, i64 0}
!106 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !24, i64 48, !107, i64 56}
!107 = !{!"_mask", !108, i64 0, !17, i64 24, !7, i64 32}
!108 = !{!"gs_client_color_s", !109, i64 0, !7, i64 16}
!109 = !{!"gs_paint_color_s", !8, i64 0}
!110 = !{!94, !7, i64 272}
!111 = !{!112, !7, i64 8}
!112 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!113 = distinct !{!113, !85}
!114 = distinct !{!114, !85}
