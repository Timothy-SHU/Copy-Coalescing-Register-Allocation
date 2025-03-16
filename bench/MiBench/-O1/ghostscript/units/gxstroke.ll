; ModuleID = 'gxstroke.c'
source_filename = "gxstroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.partial_line_s = type { %struct.endpoint_s, %struct.endpoint_s, %struct.gs_fixed_point_s, i32 }
%struct.endpoint_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gx_stroke_path_expansion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !17
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = icmp eq ptr %5, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.subpath_s, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.segment_s, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.segment_s, ptr %21, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !24
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %38, label %27

27:                                               ; preds = %23, %9, %3
  %28 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1, i32 3
  %33 = load float, ptr %32, align 4, !tbaa !31
  %34 = fpext float %33 to double
  br label %38

35:                                               ; preds = %27
  %36 = icmp eq i32 %29, 4
  %37 = select i1 %36, double 2.000000e+00, double 1.000000e+00
  br label %38

38:                                               ; preds = %31, %35, %13, %15, %19, %23
  %39 = phi double [ 1.000000e+00, %23 ], [ 1.000000e+00, %19 ], [ 1.000000e+00, %15 ], [ 1.000000e+00, %13 ], [ %34, %31 ], [ %37, %35 ]
  %40 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1
  %41 = load float, ptr %40, align 8, !tbaa !32
  %42 = fpext float %41 to double
  %43 = fmul double %39, %42
  %44 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2
  %45 = load float, ptr %44, align 8, !tbaa !33
  %46 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 2
  %47 = load float, ptr %46, align 8, !tbaa !34
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !35
  %51 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 2, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !36
  %53 = fadd float %50, %52
  %54 = fsub float %45, %47
  %55 = fsub float %50, %52
  %56 = fcmp olt float %48, 0.000000e+00
  %57 = fneg float %48
  %58 = select i1 %56, float %57, float %48
  %59 = fcmp olt float %53, 0.000000e+00
  %60 = fneg float %53
  %61 = select i1 %59, float %60, float %53
  %62 = fcmp olt float %54, 0.000000e+00
  %63 = fneg float %54
  %64 = select i1 %62, float %63, float %54
  %65 = fcmp olt float %55, 0.000000e+00
  %66 = fneg float %55
  %67 = select i1 %65, float %66, float %55
  %68 = fcmp ogt float %58, %64
  %69 = select i1 %68, float %58, float %64
  %70 = fpext float %69 to double
  %71 = fmul double %43, %70
  %72 = fptrunc double %71 to float
  %73 = fcmp ogt float %61, %67
  %74 = select i1 %73, float %61, float %67
  %75 = fpext float %74 to double
  %76 = fmul double %43, %75
  %77 = fptrunc double %76 to float
  %78 = fcmp ult float %72, 0xC320000000000000
  %79 = fcmp uge float %72, 0x4320000000000000
  %80 = or i1 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %38
  %82 = fmul float %72, 4.096000e+03
  %83 = fptosi float %82 to i64
  store i64 %83, ptr %2, align 8, !tbaa !37
  br label %84

84:                                               ; preds = %38, %81
  %85 = phi i32 [ 0, %81 ], [ -13, %38 ]
  br i1 %80, label %94, label %86

86:                                               ; preds = %84
  %87 = fcmp oge float %77, 0xC320000000000000
  %88 = fcmp olt float %77, 0x4320000000000000
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = fmul float %77, 4.096000e+03
  %92 = fptosi float %91 to i64
  %93 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  store i64 %92, ptr %93, align 8, !tbaa !38
  br label %94

94:                                               ; preds = %90, %86, %84
  %95 = phi i32 [ %85, %84 ], [ 0, %90 ], [ -13, %86 ]
  ret i32 %95
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = tail call i32 @gx_stroke_path_only(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_stroke_path_only(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.gs_fixed_rect_s, align 8
  %9 = alloca %struct.gs_fixed_rect_s, align 8
  %10 = alloca %struct.gx_device_clip_s, align 8
  %11 = alloca %struct.gx_fill_params_s, align 8
  %12 = alloca %struct.gx_path_s, align 8
  %13 = alloca %struct.gx_path_s, align 8
  %14 = alloca %struct.gx_path_s, align 8
  %15 = alloca %struct.gs_fixed_point_s, align 8
  %16 = alloca %struct.gs_fixed_rect_s, align 8
  %17 = alloca %struct.gs_matrix_s, align 4
  %18 = alloca %struct.partial_line_s, align 8
  %19 = alloca %struct.partial_line_s, align 8
  %20 = alloca %struct.partial_line_s, align 8
  %21 = alloca %struct.gs_point_s, align 8
  %22 = icmp eq ptr %1, null
  %23 = select i1 %22, ptr @stroke_fill, ptr @stroke_add
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  %24 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1, i32 7, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #11
  %27 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !33
  %29 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 2, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !35
  %31 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 2, i32 2
  %32 = load float, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 2, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !36
  %35 = fpext float %30 to double
  %36 = fcmp oeq float %30, 0.000000e+00
  %37 = fcmp oeq float %32, 0.000000e+00
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %53

39:                                               ; preds = %7
  %40 = fcmp oeq float %28, %34
  %41 = fneg float %34
  %42 = fcmp oeq float %28, %41
  %43 = sext i1 %42 to i32
  %44 = select i1 %40, i32 1, i32 %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = lshr i32 %44, 31
  br label %76

48:                                               ; preds = %39
  %49 = fcmp olt float %28, 0.000000e+00
  %50 = fcmp olt float %34, 0.000000e+00
  %51 = xor i1 %49, %50
  %52 = zext i1 %51 to i32
  br label %76

53:                                               ; preds = %7
  %54 = fcmp oeq float %28, 0.000000e+00
  %55 = fcmp oeq float %34, 0.000000e+00
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = fcmp oeq float %30, %32
  %59 = fneg float %32
  %60 = fcmp oeq float %30, %59
  %61 = zext i1 %60 to i32
  %62 = select i1 %58, i32 -1, i32 %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = lshr i32 %62, 31
  br label %76

66:                                               ; preds = %57
  %67 = fcmp olt float %30, 0.000000e+00
  %68 = fcmp uge float %32, 0.000000e+00
  %69 = xor i1 %67, %68
  %70 = zext i1 %69 to i32
  br label %76

71:                                               ; preds = %53
  %72 = fmul float %30, %32
  %73 = fmul float %28, %34
  %74 = fcmp ogt float %72, %73
  %75 = zext i1 %74 to i32
  br label %76

76:                                               ; preds = %64, %66, %46, %48, %71
  %77 = phi i32 [ %75, %71 ], [ %47, %46 ], [ %52, %48 ], [ %65, %64 ], [ %70, %66 ]
  %78 = phi i1 [ true, %71 ], [ false, %46 ], [ true, %48 ], [ false, %64 ], [ true, %66 ]
  %79 = phi i32 [ 0, %71 ], [ 1, %46 ], [ 1, %48 ], [ 2, %64 ], [ 2, %66 ]
  %80 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1, i32 5
  %81 = load float, ptr %80, align 4, !tbaa !40
  %82 = fcmp une float %81, 0.000000e+00
  %83 = zext i1 %82 to i32
  %84 = load float, ptr %24, align 8, !tbaa !41
  %85 = fmul float %81, 4.096000e+03
  %86 = fpext float %85 to double
  %87 = call i32 @gx_path_bbox(ptr noundef %0, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #11
  %88 = call i32 @gx_stroke_path_expansion(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %15), !range !42
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  store i64 -9223372036854775808, ptr %91, align 8, !tbaa !43
  store i64 -9223372036854775808, ptr %8, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  %93 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  store i64 9223372036854775807, ptr %93, align 8, !tbaa !45
  store i64 9223372036854775807, ptr %92, align 8, !tbaa !46
  br label %127

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 7
  %96 = load i64, ptr %95, align 8, !tbaa !47
  %97 = load i64, ptr %15, align 8, !tbaa !37
  %98 = add nsw i64 %97, %96
  store i64 %98, ptr %15, align 8, !tbaa !37
  %99 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 7, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !48
  %101 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %15, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !38
  %103 = add nsw i64 %102, %100
  store i64 %103, ptr %101, align 8, !tbaa !38
  %104 = load i64, ptr %8, align 8
  %105 = or i64 %98, -9223372036854775808
  %106 = icmp slt i64 %104, %105
  %107 = sub nsw i64 %104, %98
  %108 = select i1 %106, i64 -9223372036854775808, i64 %107
  store i64 %108, ptr %8, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %110 = load i64, ptr %109, align 8
  %111 = or i64 %103, -9223372036854775808
  %112 = icmp slt i64 %110, %111
  %113 = sub nsw i64 %110, %103
  %114 = select i1 %112, i64 -9223372036854775808, i64 %113
  store i64 %114, ptr %109, align 8, !tbaa !43
  %115 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  %116 = load i64, ptr %115, align 8
  %117 = sub nsw i64 9223372036854775807, %98
  %118 = icmp sgt i64 %116, %117
  %119 = add nsw i64 %116, %98
  %120 = select i1 %118, i64 9223372036854775807, i64 %119
  store i64 %120, ptr %115, align 8, !tbaa !46
  %121 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %122 = load i64, ptr %121, align 8
  %123 = sub nsw i64 9223372036854775807, %103
  %124 = icmp sgt i64 %122, %123
  %125 = add nsw i64 %122, %98
  %126 = select i1 %124, i64 9223372036854775807, i64 %125
  store i64 %126, ptr %121, align 8, !tbaa !45
  br label %127

127:                                              ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  %128 = icmp eq ptr %6, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = call i32 @gx_cpath_inner_box(ptr noundef nonnull %6, ptr noundef nonnull %9) #11
  br label %134

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 21, i32 36
  %133 = load ptr, ptr %132, align 8, !tbaa !49
  call void %133(ptr noundef %2, ptr noundef nonnull %9) #11
  br label %134

134:                                              ; preds = %131, %129
  %135 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  %136 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !45
  %138 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %9, i64 0, i32 1
  %139 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %9, i64 0, i32 1, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !45
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %156, label %142

142:                                              ; preds = %134
  %143 = load i64, ptr %135, align 8, !tbaa !46
  %144 = load i64, ptr %138, align 8, !tbaa !46
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !43
  %149 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !43
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = load i64, ptr %8, align 8, !tbaa !44
  %154 = load i64, ptr %9, align 8, !tbaa !44
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %224

156:                                              ; preds = %152, %146, %142, %134
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #11
  br i1 %128, label %181, label %157

157:                                              ; preds = %156
  %158 = call i32 @gx_cpath_outer_box(ptr noundef nonnull %6, ptr noundef nonnull %16) #11
  %159 = load i64, ptr %16, align 8, !tbaa !44
  %160 = load i64, ptr %8, align 8, !tbaa !44
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i64 %159, ptr %8, align 8, !tbaa !44
  br label %163

163:                                              ; preds = %162, %157
  %164 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %16, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !46
  %166 = load i64, ptr %135, align 8, !tbaa !46
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i64 %165, ptr %135, align 8, !tbaa !46
  br label %169

169:                                              ; preds = %168, %163
  %170 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %16, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !43
  %172 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !43
  %174 = icmp sgt i64 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i64 %171, ptr %172, align 8, !tbaa !43
  br label %176

176:                                              ; preds = %175, %169
  %177 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %16, i64 0, i32 1, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !45
  %179 = load i64, ptr %136, align 8, !tbaa !45
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %199, label %201

181:                                              ; preds = %156
  %182 = load i64, ptr %9, align 8, !tbaa !44
  %183 = load i64, ptr %8, align 8, !tbaa !44
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i64 %182, ptr %8, align 8, !tbaa !44
  br label %186

186:                                              ; preds = %185, %181
  %187 = load i64, ptr %138, align 8, !tbaa !46
  %188 = load i64, ptr %135, align 8, !tbaa !46
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i64 %187, ptr %135, align 8, !tbaa !46
  br label %191

191:                                              ; preds = %190, %186
  %192 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !43
  %194 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !43
  %196 = icmp sgt i64 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  store i64 %193, ptr %194, align 8, !tbaa !43
  br label %198

198:                                              ; preds = %197, %191
  br i1 %141, label %199, label %201

199:                                              ; preds = %198, %176
  %200 = phi i64 [ %178, %176 ], [ %140, %198 ]
  store i64 %200, ptr %136, align 8, !tbaa !45
  br label %201

201:                                              ; preds = %199, %198, %176
  %202 = load i64, ptr %8, align 8, !tbaa !44
  %203 = load i64, ptr %135, align 8, !tbaa !46
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !43
  %208 = load i64, ptr %136, align 8, !tbaa !45
  %209 = icmp sge i64 %207, %208
  %210 = or i1 %128, %209
  %211 = xor i1 %209, true
  br i1 %210, label %221, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.gx_clip_path_s, ptr %6, i64 0, i32 4
  call void @gx_make_clip_translate_device(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %213, i32 noundef 0, i32 noundef 0) #11
  %214 = getelementptr inbounds %struct.gx_device_clip_s, ptr %10, i64 0, i32 22
  store ptr %2, ptr %214, align 8, !tbaa !54
  %215 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 6
  %216 = load i32, ptr %215, align 4, !tbaa !59
  %217 = getelementptr inbounds %struct.gx_device_clip_s, ptr %10, i64 0, i32 6
  store i32 %216, ptr %217, align 4, !tbaa !60
  %218 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21
  %219 = load ptr, ptr %218, align 8, !tbaa !61
  %220 = call i32 %219(ptr noundef nonnull %10) #11
  br label %221

221:                                              ; preds = %205, %212, %201
  %222 = phi i1 [ %211, %205 ], [ false, %201 ], [ true, %212 ]
  %223 = phi ptr [ %2, %205 ], [ %2, %201 ], [ %10, %212 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #11
  br i1 %222, label %224, label %871

224:                                              ; preds = %221, %152
  %225 = phi ptr [ %2, %152 ], [ %223, %221 ]
  store i32 -1, ptr %11, align 8, !tbaa !62
  %226 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 6
  %227 = load float, ptr %226, align 4, !tbaa !64
  %228 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 2
  store float %227, ptr %228, align 8, !tbaa !65
  %229 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 7
  %230 = load i64, ptr %229, align 8, !tbaa !47
  %231 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 7, i32 1
  %232 = load i64, ptr %231, align 8, !tbaa !48
  %233 = or i64 %232, %230
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 3
  store i32 %235, ptr %236, align 4, !tbaa !66
  %237 = fcmp olt float %84, 0.000000e+00
  %238 = fneg float %84
  %239 = select i1 %237, float %238, float %84
  %240 = fpext float %239 to double
  %241 = fmul double %240, 4.096000e+03
  %242 = fcmp oeq float %239, 0.000000e+00
  br i1 %242, label %281, label %243

243:                                              ; preds = %224
  switch i32 %79, label %262 [
    i32 1, label %245
    i32 2, label %244
  ]

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %243, %244
  %246 = phi float [ %30, %244 ], [ %28, %243 ]
  %247 = phi float [ %32, %244 ], [ %34, %243 ]
  %248 = fcmp olt float %246, 0.000000e+00
  %249 = fneg float %246
  %250 = select i1 %248, float %249, float %246
  %251 = fcmp olt float %247, 0.000000e+00
  %252 = fneg float %247
  %253 = select i1 %251, float %252, float %247
  %254 = fcmp ogt float %250, %253
  %255 = select i1 %254, float %250, float %253
  %256 = fmul float %239, %255
  %257 = fcmp olt float %256, 5.000000e-01
  %258 = or i1 %78, %257
  br i1 %258, label %277, label %259

259:                                              ; preds = %245
  %260 = fpext float %250 to double
  %261 = fmul double %241, %260
  br label %277

262:                                              ; preds = %243
  %263 = fmul float %30, %30
  %264 = call float @llvm.fmuladd.f32(float %28, float %28, float %263)
  %265 = fmul float %34, %34
  %266 = call float @llvm.fmuladd.f32(float %32, float %32, float %265)
  %267 = fmul float %30, %34
  %268 = call float @llvm.fmuladd.f32(float %28, float %32, float %267)
  %269 = fcmp olt float %268, 0.000000e+00
  %270 = select i1 %269, float 0.000000e+00, float %268
  %271 = fcmp ogt float %264, %266
  %272 = select i1 %271, float %264, float %266
  %273 = fadd float %272, %270
  %274 = fmul float %273, %239
  %275 = fmul float %239, %274
  %276 = fcmp olt float %275, 2.500000e-01
  br label %277

277:                                              ; preds = %245, %259, %262
  %278 = phi double [ undef, %262 ], [ %261, %259 ], [ undef, %245 ]
  %279 = phi i1 [ %276, %262 ], [ false, %259 ], [ %257, %245 ]
  %280 = xor i1 %279, true
  br label %281

281:                                              ; preds = %224, %277
  %282 = phi double [ %278, %277 ], [ undef, %224 ]
  %283 = phi i1 [ %280, %277 ], [ false, %224 ]
  %284 = fcmp une float %85, 0.000000e+00
  br i1 %284, label %285, label %302

285:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  %286 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1, i32 6
  %287 = load float, ptr %286, align 8, !tbaa !67
  %288 = fcmp une float %287, 0.000000e+00
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  call void @gs_deviceinitialmatrix(ptr noundef %2, ptr noundef nonnull %17) #11
  br label %290

290:                                              ; preds = %285, %289
  %291 = phi ptr [ %17, %289 ], [ %27, %285 ]
  %292 = getelementptr inbounds %struct.gs_matrix_s, ptr %291, i64 0, i32 1
  %293 = load float, ptr %292, align 4, !tbaa !68
  %294 = call float @llvm.fabs.f32(float %293)
  %295 = fpext float %294 to double
  %296 = getelementptr inbounds %struct.gs_matrix_s, ptr %291, i64 0, i32 3
  %297 = load float, ptr %296, align 4, !tbaa !70
  %298 = call float @llvm.fabs.f32(float %297)
  %299 = fpext float %298 to double
  %300 = fadd double %295, %299
  %301 = fmul double %300, %86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  br label %302

302:                                              ; preds = %290, %281
  %303 = phi double [ %301, %290 ], [ %86, %281 ]
  %304 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 6
  %305 = load i32, ptr %304, align 4, !tbaa !16
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !5
  %310 = icmp eq ptr %309, null
  br i1 %310, label %871, label %321

311:                                              ; preds = %302
  %312 = load float, ptr %4, align 4, !tbaa !71
  %313 = fmul float %312, 4.096000e+03
  %314 = fptosi float %313 to i64
  %315 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 9
  %316 = load i32, ptr %315, align 4, !tbaa !73
  %317 = icmp eq i32 %316, 0
  %318 = select i1 %317, i32 1, i32 5
  %319 = call i32 @gx_path_copy_reducing(ptr noundef %0, ptr noundef nonnull %12, i64 noundef %314, i32 noundef %318) #11
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %871, label %321

321:                                              ; preds = %311, %307
  %322 = phi ptr [ %0, %307 ], [ %12, %311 ]
  %323 = phi i32 [ 0, %307 ], [ %319, %311 ]
  %324 = icmp eq i32 %26, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %321
  %326 = call i32 @gx_path_expand_dashes(ptr noundef %322, ptr noundef nonnull %13, ptr noundef %3) #11
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %866, label %328

328:                                              ; preds = %325, %321
  %329 = phi ptr [ %322, %321 ], [ %13, %325 ]
  %330 = phi i32 [ %323, %321 ], [ %326, %325 ]
  br i1 %22, label %331, label %333

331:                                              ; preds = %328
  %332 = load ptr, ptr %0, align 8, !tbaa !74
  call void @gx_path_init(ptr noundef nonnull %14, ptr noundef %332) #11
  br label %333

333:                                              ; preds = %331, %328
  %334 = phi ptr [ %14, %331 ], [ %1, %328 ]
  %335 = getelementptr inbounds %struct.gx_path_s, ptr %329, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %18, i64 0, i32 1
  %338 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1
  %339 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 0, i32 1
  %340 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1, i32 1
  %341 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1
  %342 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 0, i32 1
  %343 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3
  %344 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 3
  %345 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3
  %346 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3, i32 1
  %347 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2
  %348 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2, i32 1
  %349 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 3
  %350 = getelementptr inbounds %struct.gs_point_s, ptr %21, i64 0, i32 1
  %351 = fpext float %28 to double
  %352 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3
  %353 = fpext float %34 to double
  %354 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3, i32 1
  %355 = fpext float %32 to double
  %356 = icmp eq i32 %77, 0
  %357 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2
  %358 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2, i32 1
  %359 = fpext float %32 to double
  %360 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 3
  %361 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 3
  %362 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 8
  %363 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2
  %364 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2, i32 1
  %365 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2
  %366 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2, i32 1
  %367 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2
  %368 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 2, i32 1
  %369 = getelementptr inbounds %struct.endpoint_s, ptr %18, i64 0, i32 1
  %370 = getelementptr inbounds %struct.endpoint_s, ptr %18, i64 0, i32 1, i32 1
  %371 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3
  %372 = getelementptr inbounds %struct.endpoint_s, ptr %18, i64 0, i32 3
  %373 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 3, i32 1
  %374 = getelementptr inbounds %struct.endpoint_s, ptr %18, i64 0, i32 3, i32 1
  %375 = getelementptr inbounds %struct.endpoint_s, ptr %18, i64 0, i32 2
  %376 = getelementptr inbounds %struct.endpoint_s, ptr %18, i64 0, i32 2, i32 1
  %377 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 1
  %378 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 1, i32 1
  %379 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 2
  %380 = getelementptr inbounds %struct.partial_line_s, ptr %18, i64 0, i32 1, i32 2, i32 1
  %381 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1, i32 2
  %382 = icmp ne ptr %334, %14
  %383 = getelementptr inbounds %struct.gx_path_s, ptr %14, i64 0, i32 3
  %384 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 1
  %385 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 1
  %386 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 1, i32 1
  %387 = getelementptr inbounds %struct.gx_device_s, ptr %225, i64 0, i32 21, i32 24
  %388 = getelementptr inbounds %struct.gs_imager_state_s, ptr %3, i64 0, i32 1, i32 2
  %389 = icmp ne ptr %334, %14
  %390 = getelementptr inbounds %struct.gx_path_s, ptr %14, i64 0, i32 3
  %391 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 1
  %392 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 1
  %393 = getelementptr inbounds %struct.gx_fill_params_s, ptr %11, i64 0, i32 1, i32 1
  %394 = getelementptr inbounds %struct.gx_device_s, ptr %225, i64 0, i32 21, i32 24
  br label %395

395:                                              ; preds = %856, %333
  %396 = phi ptr [ %336, %333 ], [ %857, %856 ]
  %397 = phi i32 [ %330, %333 ], [ %859, %856 ]
  %398 = icmp eq ptr %396, null
  br i1 %398, label %860, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.segment_s, ptr %396, i64 0, i32 4
  %401 = load i64, ptr %400, align 8, !tbaa !75
  %402 = getelementptr inbounds %struct.segment_s, ptr %396, i64 0, i32 4, i32 1
  %403 = load i64, ptr %402, align 8, !tbaa !76
  %404 = getelementptr inbounds %struct.subpath_s, ptr %396, i64 0, i32 8
  %405 = load i8, ptr %404, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %20) #11
  %406 = getelementptr inbounds %struct.segment_s, ptr %396, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !22
  %408 = icmp eq ptr %407, null
  br i1 %408, label %807, label %409

409:                                              ; preds = %399
  %410 = getelementptr inbounds %struct.subpath_s, ptr %396, i64 0, i32 5
  %411 = icmp eq i8 %405, 0
  br label %412

412:                                              ; preds = %409, %803
  %413 = phi ptr [ %407, %409 ], [ %805, %803 ]
  %414 = phi i32 [ %397, %409 ], [ %802, %803 ]
  %415 = phi i64 [ %403, %409 ], [ %801, %803 ]
  %416 = phi i64 [ %401, %409 ], [ %800, %803 ]
  %417 = phi i32 [ 0, %409 ], [ %798, %803 ]
  %418 = getelementptr inbounds %struct.segment_s, ptr %413, i64 0, i32 2
  %419 = load i16, ptr %418, align 8, !tbaa !24
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %807, label %421

421:                                              ; preds = %412
  %422 = getelementptr inbounds %struct.segment_s, ptr %413, i64 0, i32 4
  %423 = load i64, ptr %422, align 8, !tbaa !75
  %424 = sub nsw i64 %423, %416
  %425 = getelementptr inbounds %struct.segment_s, ptr %413, i64 0, i32 4, i32 1
  %426 = load i64, ptr %425, align 8, !tbaa !76
  %427 = sub nsw i64 %426, %415
  store i64 %416, ptr %18, align 8, !tbaa !78
  store i64 %415, ptr %337, align 8, !tbaa !81
  store i64 %423, ptr %338, align 8, !tbaa !82
  store i64 %426, ptr %339, align 8, !tbaa !83
  %428 = or i64 %427, %424
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %545

430:                                              ; preds = %421
  %431 = icmp eq i32 %417, 0
  br label %432

432:                                              ; preds = %430, %537
  %433 = phi i64 [ %426, %430 ], [ %541, %537 ]
  %434 = phi i64 [ %423, %430 ], [ %539, %537 ]
  %435 = phi ptr [ %413, %430 ], [ %538, %537 ]
  br i1 %431, label %436, label %796, !llvm.loop !84

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.segment_s, ptr %435, i64 0, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !22
  %439 = icmp eq ptr %438, null
  br i1 %439, label %462, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.segment_s, ptr %438, i64 0, i32 2
  %442 = load i16, ptr %441, align 8, !tbaa !24
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %462, label %452

444:                                              ; preds = %452
  %445 = getelementptr inbounds %struct.segment_s, ptr %453, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !22
  %447 = icmp eq ptr %446, null
  br i1 %447, label %462, label %448, !llvm.loop !86

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.segment_s, ptr %446, i64 0, i32 2
  %450 = load i16, ptr %449, align 8, !tbaa !24
  %451 = icmp eq i16 %450, 0
  br i1 %451, label %462, label %452, !llvm.loop !86

452:                                              ; preds = %440, %448
  %453 = phi ptr [ %446, %448 ], [ %438, %440 ]
  %454 = getelementptr inbounds %struct.segment_s, ptr %453, i64 0, i32 4
  %455 = load i64, ptr %454, align 8, !tbaa !75
  %456 = sub nsw i64 %455, %416
  %457 = getelementptr inbounds %struct.segment_s, ptr %453, i64 0, i32 4, i32 1
  %458 = load i64, ptr %457, align 8, !tbaa !76
  %459 = sub nsw i64 %458, %415
  %460 = or i64 %459, %456
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %444, label %537, !llvm.loop !86

462:                                              ; preds = %444, %448, %440, %436
  %463 = phi i64 [ %434, %436 ], [ %434, %440 ], [ %455, %448 ], [ %455, %444 ]
  %464 = phi i64 [ %433, %436 ], [ %433, %440 ], [ %458, %448 ], [ %458, %444 ]
  %465 = phi ptr [ %438, %436 ], [ %438, %440 ], [ %446, %448 ], [ %446, %444 ]
  %466 = phi i1 [ %439, %436 ], [ %439, %440 ], [ %447, %448 ], [ %447, %444 ]
  %467 = load i32, ptr %340, align 4, !tbaa !87
  %468 = icmp eq i32 %467, 1
  br i1 %468, label %472, label %469

469:                                              ; preds = %462
  %470 = load float, ptr %80, align 4, !tbaa !40
  %471 = fcmp une float %470, 0.000000e+00
  br i1 %471, label %472, label %796

472:                                              ; preds = %469, %462
  %473 = load ptr, ptr %396, align 8, !tbaa !88
  %474 = icmp eq ptr %473, null
  br i1 %474, label %483, label %475

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.segment_s, ptr %473, i64 0, i32 4
  %477 = load i64, ptr %476, align 8, !tbaa !75
  %478 = icmp eq i64 %477, %416
  br i1 %478, label %479, label %492

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.segment_s, ptr %473, i64 0, i32 4, i32 1
  %481 = load i64, ptr %480, align 8, !tbaa !76
  %482 = icmp eq i64 %481, %415
  br i1 %482, label %483, label %492

483:                                              ; preds = %479, %472
  br i1 %466, label %497, label %484

484:                                              ; preds = %483
  %485 = getelementptr inbounds %struct.segment_s, ptr %465, i64 0, i32 4
  %486 = load i64, ptr %485, align 8, !tbaa !75
  %487 = icmp eq i64 %486, %416
  br i1 %487, label %488, label %492

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.segment_s, ptr %465, i64 0, i32 4, i32 1
  %490 = load i64, ptr %489, align 8, !tbaa !76
  %491 = icmp eq i64 %490, %415
  br i1 %491, label %497, label %492

492:                                              ; preds = %484, %488, %475, %479
  %493 = phi ptr [ %473, %479 ], [ %473, %475 ], [ %465, %488 ], [ %465, %484 ]
  %494 = phi i64 [ %477, %479 ], [ %477, %475 ], [ %486, %488 ], [ %486, %484 ]
  %495 = getelementptr inbounds %struct.segment_s, ptr %493, i64 0, i32 4, i32 1
  %496 = load i64, ptr %495, align 8, !tbaa !76
  br label %497

497:                                              ; preds = %492, %483, %488
  %498 = phi i64 [ %463, %488 ], [ %463, %483 ], [ %494, %492 ]
  %499 = phi i64 [ %464, %488 ], [ %464, %483 ], [ %496, %492 ]
  %500 = sub nsw i64 %498, %416
  %501 = sub nsw i64 %499, %415
  %502 = or i64 %501, %500
  %503 = icmp eq i64 %502, 0
  %504 = select i1 %503, i64 4096, i64 %501
  %505 = sitofp i64 %500 to double
  %506 = sitofp i64 %504 to double
  %507 = fmul double %506, %506
  %508 = call double @llvm.fmuladd.f64(double %505, double %505, double %507)
  %509 = call double @sqrt(double noundef %508) #11
  %510 = fdiv double %303, %509
  %511 = load i32, ptr %340, align 4, !tbaa !87
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %524

513:                                              ; preds = %497
  %514 = call i64 @llvm.abs.i64(i64 %500, i1 true)
  %515 = call i64 @llvm.abs.i64(i64 %504, i1 true)
  %516 = call i64 @llvm.umax.i64(i64 %514, i64 %515)
  %517 = sitofp i64 %516 to double
  %518 = fmul double %510, %517
  %519 = fcmp olt double %518, 4.096000e+03
  %520 = sitofp i64 %516 to float
  %521 = fdiv float 4.096000e+03, %520
  %522 = fpext float %521 to double
  %523 = select i1 %519, double %522, double %510
  br label %524

524:                                              ; preds = %513, %497
  %525 = phi double [ %523, %513 ], [ %510, %497 ]
  %526 = fmul double %525, %505
  %527 = fptosi double %526 to i64
  %528 = fmul double %525, %506
  %529 = fptosi double %528 to i64
  %530 = or i64 %527, %529
  %531 = icmp eq i64 %530, 0
  %532 = select i1 %531, i64 1, i64 %529
  %533 = add nsw i64 %416, %527
  %534 = add nsw i64 %532, %415
  %535 = select i1 %466, ptr %410, ptr %465
  %536 = load ptr, ptr %535, align 8, !tbaa !89
  br label %537

537:                                              ; preds = %452, %524
  %538 = phi ptr [ %536, %524 ], [ %453, %452 ]
  %539 = phi i64 [ %533, %524 ], [ %455, %452 ]
  %540 = phi i64 [ %527, %524 ], [ %456, %452 ]
  %541 = phi i64 [ %534, %524 ], [ %458, %452 ]
  %542 = phi i64 [ %532, %524 ], [ %459, %452 ]
  store i64 %539, ptr %338, align 8, !tbaa !82
  store i64 %541, ptr %339, align 8, !tbaa !83
  %543 = or i64 %542, %540
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %432, label %545

545:                                              ; preds = %537, %421
  %546 = phi ptr [ %413, %421 ], [ %538, %537 ]
  %547 = phi i64 [ %423, %421 ], [ %539, %537 ]
  %548 = phi i64 [ %424, %421 ], [ %540, %537 ]
  %549 = phi i64 [ %426, %421 ], [ %541, %537 ]
  %550 = phi i64 [ %427, %421 ], [ %542, %537 ]
  br i1 %283, label %552, label %551

551:                                              ; preds = %545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %343, i8 0, i64 32, i1 false)
  store i32 1, ptr %344, align 8, !tbaa !90
  br label %751

552:                                              ; preds = %545
  br i1 %78, label %567, label %553

553:                                              ; preds = %552
  %554 = sitofp i64 %548 to float
  %555 = sitofp i64 %550 to float
  %556 = fmul float %555, %555
  %557 = call float @llvm.fmuladd.f32(float %554, float %554, float %556)
  %558 = fpext float %557 to double
  %559 = call double @sqrt(double noundef %558) #11
  %560 = fdiv double %282, %559
  %561 = fptrunc double %560 to float
  %562 = fmul float %554, %561
  %563 = fptosi float %562 to i64
  store i64 %563, ptr %345, align 8, !tbaa !91
  %564 = fmul float %555, %561
  %565 = fptosi float %564 to i64
  store i64 %565, ptr %346, align 8, !tbaa !92
  %566 = sub nsw i64 0, %565
  store i64 %566, ptr %347, align 8, !tbaa !93
  store i64 %563, ptr %348, align 8, !tbaa !94
  store i32 0, ptr %349, align 8, !tbaa !90
  br label %678

567:                                              ; preds = %552
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #11
  %568 = sitofp i64 %548 to float
  %569 = fpext float %568 to double
  %570 = sitofp i64 %550 to float
  %571 = fpext float %570 to double
  %572 = call i32 @gs_imager_idtransform(ptr noundef %3, double noundef %569, double noundef %571, ptr noundef nonnull %21) #11
  %573 = load double, ptr %21, align 8, !tbaa !95
  %574 = load double, ptr %350, align 8, !tbaa !96
  %575 = fmul double %574, %574
  %576 = call double @llvm.fmuladd.f64(double %573, double %573, double %575)
  %577 = call double @sqrt(double noundef %576) #11
  %578 = fdiv double %241, %577
  %579 = fptrunc double %578 to float
  %580 = fpext float %579 to double
  %581 = load double, ptr %21, align 8, !tbaa !95
  %582 = fmul double %581, %580
  store double %582, ptr %21, align 8, !tbaa !95
  %583 = load double, ptr %350, align 8, !tbaa !96
  %584 = fmul double %583, %580
  store double %584, ptr %350, align 8, !tbaa !96
  %585 = fmul double %582, %351
  %586 = fptosi double %585 to i64
  store i64 %586, ptr %352, align 8, !tbaa !91
  %587 = fmul double %584, %353
  %588 = fptosi double %587 to i64
  store i64 %588, ptr %354, align 8, !tbaa !92
  br i1 %38, label %596, label %589

589:                                              ; preds = %567
  %590 = fmul double %584, %355
  %591 = fptosi double %590 to i64
  %592 = add nsw i64 %586, %591
  store i64 %592, ptr %352, align 8, !tbaa !91
  %593 = fmul double %582, %35
  %594 = fptosi double %593 to i64
  %595 = add nsw i64 %588, %594
  store i64 %595, ptr %354, align 8, !tbaa !92
  br label %596

596:                                              ; preds = %589, %567
  br i1 %356, label %597, label %600

597:                                              ; preds = %596
  %598 = fneg double %582
  store double %598, ptr %21, align 8, !tbaa !95
  %599 = fneg double %584
  store double %599, ptr %350, align 8, !tbaa !96
  br label %600

600:                                              ; preds = %597, %596
  %601 = load double, ptr %350, align 8, !tbaa !96
  %602 = fmul double %601, %351
  %603 = fptosi double %602 to i64
  store i64 %603, ptr %357, align 8, !tbaa !93
  %604 = load double, ptr %21, align 8, !tbaa !95
  %605 = fmul double %604, %353
  %606 = fptosi double %605 to i64
  %607 = sub nsw i64 0, %606
  store i64 %607, ptr %358, align 8, !tbaa !94
  br i1 %38, label %615, label %608

608:                                              ; preds = %600
  %609 = fmul double %604, %359
  %610 = fptosi double %609 to i64
  %611 = sub nsw i64 %603, %610
  store i64 %611, ptr %357, align 8, !tbaa !93
  %612 = fmul double %601, %35
  %613 = fptosi double %612 to i64
  %614 = sub nsw i64 %613, %606
  store i64 %614, ptr %358, align 8, !tbaa !94
  br label %615

615:                                              ; preds = %608, %600
  %616 = load i64, ptr %357, align 8, !tbaa !93
  %617 = load i64, ptr %358, align 8, !tbaa !94
  %618 = load i64, ptr %342, align 8, !tbaa !83
  %619 = load i64, ptr %337, align 8, !tbaa !81
  %620 = sub nsw i64 %618, %619
  %621 = icmp eq i64 %618, %619
  br i1 %621, label %622, label %626

622:                                              ; preds = %615
  %623 = call i64 @llvm.abs.i64(i64 %617, i1 true)
  %624 = icmp ult i64 %623, 2048
  %625 = zext i1 %624 to i32
  br label %676

626:                                              ; preds = %615
  %627 = load i64, ptr %341, align 8, !tbaa !82
  %628 = load i64, ptr %18, align 8, !tbaa !78
  %629 = sub nsw i64 %627, %628
  %630 = icmp eq i64 %627, %628
  br i1 %630, label %631, label %635

631:                                              ; preds = %626
  %632 = call i64 @llvm.abs.i64(i64 %616, i1 true)
  %633 = icmp ult i64 %632, 2048
  %634 = zext i1 %633 to i32
  br label %676

635:                                              ; preds = %626
  %636 = call i64 @llvm.abs.i64(i64 %620, i1 true)
  %637 = call i64 @llvm.abs.i64(i64 %629, i1 true)
  %638 = icmp ugt i64 %636, %637
  br i1 %638, label %639, label %650

639:                                              ; preds = %635
  %640 = call i64 @llvm.abs.i64(i64 %616, i1 true)
  %641 = icmp ugt i64 %640, 2895
  br i1 %641, label %647, label %642

642:                                              ; preds = %639
  %643 = icmp ugt i64 %640, 2047
  %644 = call i64 @llvm.abs.i64(i64 %617, i1 true)
  %645 = icmp ugt i64 %644, 2047
  %646 = select i1 %643, i1 true, i1 %645
  br label %647

647:                                              ; preds = %642, %639
  %648 = phi i1 [ false, %639 ], [ %646, %642 ]
  %649 = phi i32 [ 0, %639 ], [ 1, %642 ]
  br i1 %648, label %661, label %676

650:                                              ; preds = %635
  %651 = call i64 @llvm.abs.i64(i64 %617, i1 true)
  %652 = icmp ugt i64 %651, 2895
  br i1 %652, label %658, label %653

653:                                              ; preds = %650
  %654 = icmp ugt i64 %651, 2047
  %655 = call i64 @llvm.abs.i64(i64 %616, i1 true)
  %656 = icmp ugt i64 %655, 2047
  %657 = select i1 %654, i1 true, i1 %656
  br label %658

658:                                              ; preds = %653, %650
  %659 = phi i1 [ false, %650 ], [ %657, %653 ]
  %660 = phi i32 [ 0, %650 ], [ 1, %653 ]
  br i1 %659, label %661, label %676

661:                                              ; preds = %658, %647
  %662 = sitofp i64 %629 to double
  %663 = sitofp i64 %620 to double
  %664 = sitofp i64 %617 to double
  %665 = sitofp i64 %616 to double
  %666 = fneg double %663
  %667 = fmul double %665, %666
  %668 = call double @llvm.fmuladd.f64(double %662, double %664, double %667)
  %669 = fmul double %663, %663
  %670 = call double @llvm.fmuladd.f64(double %662, double %662, double %669)
  %671 = call double @sqrt(double noundef %670) #11
  %672 = call double @llvm.fabs.f64(double %668)
  %673 = fmul double %671, 5.000000e-01
  %674 = fcmp olt double %672, %673
  %675 = zext i1 %674 to i32
  br label %676

676:                                              ; preds = %622, %631, %647, %658, %661
  %677 = phi i32 [ %625, %622 ], [ %634, %631 ], [ %675, %661 ], [ %649, %647 ], [ %660, %658 ]
  store i32 %677, ptr %360, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  br label %678

678:                                              ; preds = %676, %553
  %679 = load i32, ptr %361, align 8, !tbaa !90
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %751

681:                                              ; preds = %678
  %682 = load i32, ptr %362, align 8, !tbaa !97
  %683 = icmp ne i32 %682, 0
  %684 = load i64, ptr %363, align 8
  %685 = icmp eq i64 %684, 0
  %686 = select i1 %683, i1 true, i1 %685
  %687 = load i64, ptr %364, align 8
  %688 = icmp eq i64 %687, 0
  %689 = select i1 %686, i1 true, i1 %688
  br i1 %689, label %690, label %732

690:                                              ; preds = %681
  %691 = load i64, ptr %365, align 8, !tbaa !93
  %692 = call i64 @llvm.abs.i64(i64 %691, i1 true)
  %693 = load i64, ptr %366, align 8, !tbaa !94
  %694 = call i64 @llvm.abs.i64(i64 %693, i1 true)
  %695 = icmp ult i64 %692, %694
  %696 = select i1 %695, ptr %337, ptr %18
  %697 = select i1 %695, ptr %342, ptr %341
  %698 = select i1 %695, ptr %366, ptr %365
  %699 = select i1 %695, ptr %231, ptr %229
  %700 = load i64, ptr %699, align 8, !tbaa !98
  %701 = shl i64 %700, 1
  %702 = load i64, ptr %698, align 8, !tbaa !98
  %703 = shl i64 %702, 1
  %704 = add nsw i64 %703, 2048
  %705 = and i64 %704, -4096
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %707, label %715

707:                                              ; preds = %690
  %708 = icmp eq i64 %702, 0
  br i1 %708, label %715, label %709

709:                                              ; preds = %707
  %710 = icmp slt i64 %702, 0
  %711 = add nsw i64 %701, -4096
  %712 = sub nsw i64 4096, %701
  %713 = select i1 %710, i64 %711, i64 %712
  %714 = ashr exact i64 %713, 1
  store i64 %714, ptr %698, align 8, !tbaa !98
  br label %715

715:                                              ; preds = %709, %707, %690
  %716 = phi i64 [ %713, %709 ], [ 0, %707 ], [ %705, %690 ]
  %717 = load i64, ptr %696, align 8, !tbaa !98
  %718 = load i64, ptr %697, align 8, !tbaa !98
  %719 = icmp eq i64 %717, %718
  br i1 %719, label %720, label %732

720:                                              ; preds = %715
  %721 = icmp slt i64 %702, 0
  %722 = sub i64 0, %716
  %723 = select i1 %721, i64 %722, i64 %716
  %724 = add i64 %723, %701
  %725 = and i64 %724, 4096
  %726 = icmp eq i64 %725, 0
  %727 = and i64 %717, -4096
  %728 = or disjoint i64 %727, 2048
  %729 = add nsw i64 %717, 2048
  %730 = and i64 %729, -4096
  %731 = select i1 %726, i64 %730, i64 %728
  store i64 %731, ptr %697, align 8, !tbaa !98
  store i64 %731, ptr %696, align 8, !tbaa !98
  br label %732

732:                                              ; preds = %720, %681, %715
  %733 = load i64, ptr %367, align 8, !tbaa !93
  %734 = load i64, ptr %368, align 8, !tbaa !94
  %735 = load i64, ptr %18, align 8, !tbaa !78
  %736 = add nsw i64 %735, %733
  store i64 %736, ptr %369, align 8, !tbaa !99
  %737 = load i64, ptr %337, align 8, !tbaa !81
  %738 = add nsw i64 %737, %734
  store i64 %738, ptr %370, align 8, !tbaa !100
  %739 = load i64, ptr %371, align 8, !tbaa !91
  %740 = sub nsw i64 0, %739
  store i64 %740, ptr %372, align 8, !tbaa !101
  %741 = load i64, ptr %373, align 8, !tbaa !92
  %742 = sub nsw i64 0, %741
  store i64 %742, ptr %374, align 8, !tbaa !102
  %743 = sub nsw i64 %735, %733
  store i64 %743, ptr %375, align 8, !tbaa !103
  %744 = sub nsw i64 %737, %734
  store i64 %744, ptr %376, align 8, !tbaa !104
  %745 = load i64, ptr %341, align 8, !tbaa !82
  %746 = sub nsw i64 %745, %733
  store i64 %746, ptr %377, align 8, !tbaa !105
  %747 = load i64, ptr %342, align 8, !tbaa !83
  %748 = sub nsw i64 %747, %734
  store i64 %748, ptr %378, align 8, !tbaa !106
  %749 = add nsw i64 %745, %733
  store i64 %749, ptr %379, align 8, !tbaa !107
  %750 = add nsw i64 %747, %734
  store i64 %750, ptr %380, align 8, !tbaa !108
  br label %751

751:                                              ; preds = %678, %732, %551
  %752 = add nsw i32 %417, 1
  %753 = icmp eq i32 %417, 0
  br i1 %753, label %792, label %754

754:                                              ; preds = %751
  %755 = load i32, ptr %381, align 8, !tbaa !109
  %756 = icmp eq i32 %755, 3
  br i1 %756, label %757, label %763

757:                                              ; preds = %754
  %758 = getelementptr inbounds %struct.segment_s, ptr %546, i64 0, i32 3
  %759 = load i16, ptr %758, align 2, !tbaa !110
  %760 = zext i16 %759 to i32
  %761 = and i32 %760, %83
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %766, label %763

763:                                              ; preds = %757, %754
  %764 = add nsw i32 %417, -1
  %765 = select i1 %411, i32 %764, i32 1
  br label %766

766:                                              ; preds = %757, %763
  %767 = phi i32 [ %752, %763 ], [ 1, %757 ]
  %768 = phi i32 [ %765, %763 ], [ 0, %757 ]
  %769 = phi ptr [ %18, %763 ], [ null, %757 ]
  %770 = call i32 %23(ptr noundef nonnull %334, i32 noundef %768, ptr noundef nonnull %19, ptr noundef %769, ptr noundef %5, ptr noundef %225, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #11, !callees !111
  %771 = icmp slt i32 %770, 0
  br i1 %771, label %788, label %772

772:                                              ; preds = %766
  %773 = load ptr, ptr %383, align 8
  %774 = icmp eq ptr %773, null
  %775 = select i1 %382, i1 true, i1 %774
  br i1 %775, label %788, label %776

776:                                              ; preds = %772
  br i1 %283, label %777, label %780

777:                                              ; preds = %776
  %778 = load i64, ptr %229, align 8, !tbaa !47
  store i64 %778, ptr %385, align 8, !tbaa !112
  %779 = load i64, ptr %231, align 8, !tbaa !48
  br label %781

780:                                              ; preds = %776
  store i64 0, ptr %384, align 8, !tbaa !112
  br label %781

781:                                              ; preds = %780, %777
  %782 = phi i64 [ %779, %777 ], [ 0, %780 ]
  store i64 %782, ptr %386, align 8, !tbaa !113
  %783 = load ptr, ptr %387, align 8, !tbaa !114
  %784 = call i32 %783(ptr noundef %225, ptr noundef %3, ptr noundef nonnull %334, ptr noundef nonnull %11, ptr noundef %5, ptr noundef null) #11
  call void @gx_path_release(ptr noundef nonnull %334) #11
  %785 = icmp slt i32 %784, 0
  br i1 %785, label %788, label %786

786:                                              ; preds = %781
  %787 = load ptr, ptr %0, align 8, !tbaa !74
  call void @gx_path_init(ptr noundef nonnull %334, ptr noundef %787) #11
  br label %788

788:                                              ; preds = %772, %786, %781, %766
  %789 = phi i1 [ false, %766 ], [ false, %781 ], [ true, %786 ], [ true, %772 ]
  %790 = phi i32 [ 16, %766 ], [ 16, %781 ], [ 0, %786 ], [ 0, %772 ]
  %791 = phi i32 [ %770, %766 ], [ %784, %781 ], [ %784, %786 ], [ %770, %772 ]
  br i1 %789, label %793, label %796

792:                                              ; preds = %751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %20, ptr noundef nonnull align 8 dereferenceable(152) %18, i64 152, i1 false), !tbaa.struct !115
  br label %793

793:                                              ; preds = %788, %792
  %794 = phi i32 [ %767, %788 ], [ %752, %792 ]
  %795 = phi i32 [ %791, %788 ], [ %414, %792 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %19, ptr noundef nonnull align 8 dereferenceable(152) %18, i64 152, i1 false), !tbaa.struct !115
  br label %796

796:                                              ; preds = %469, %432, %788, %793
  %797 = phi i32 [ 0, %793 ], [ %790, %788 ], [ 11, %432 ], [ 12, %469 ]
  %798 = phi i32 [ %794, %793 ], [ %767, %788 ], [ %417, %432 ], [ %417, %469 ]
  %799 = phi ptr [ %546, %793 ], [ %546, %788 ], [ %413, %432 ], [ %465, %469 ]
  %800 = phi i64 [ %547, %793 ], [ %416, %788 ], [ %416, %432 ], [ %416, %469 ]
  %801 = phi i64 [ %549, %793 ], [ %415, %788 ], [ %415, %432 ], [ %415, %469 ]
  %802 = phi i32 [ %795, %793 ], [ %791, %788 ], [ %414, %432 ], [ %414, %469 ]
  switch i32 %797, label %856 [
    i32 0, label %803
    i32 11, label %803
    i32 12, label %807
  ]

803:                                              ; preds = %796, %796
  %804 = getelementptr inbounds %struct.segment_s, ptr %799, i64 0, i32 1
  %805 = load ptr, ptr %804, align 8, !tbaa !22
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %412, !llvm.loop !84

807:                                              ; preds = %412, %796, %803, %399
  %808 = phi i32 [ 0, %399 ], [ %417, %412 ], [ %798, %796 ], [ %798, %803 ]
  %809 = phi ptr [ null, %399 ], [ %413, %412 ], [ %799, %796 ], [ null, %803 ]
  %810 = phi i32 [ %397, %399 ], [ %414, %412 ], [ %802, %796 ], [ %802, %803 ]
  %811 = icmp eq i32 %808, 0
  br i1 %811, label %856, label %812

812:                                              ; preds = %807
  %813 = icmp eq i8 %405, 0
  br i1 %813, label %829, label %814

814:                                              ; preds = %812
  %815 = load i32, ptr %388, align 8, !tbaa !109
  %816 = icmp eq i32 %815, 3
  br i1 %816, label %817, label %828

817:                                              ; preds = %814
  %818 = icmp eq ptr %809, null
  br i1 %818, label %819, label %821

819:                                              ; preds = %817
  %820 = load ptr, ptr %335, align 8, !tbaa !5
  br label %821

821:                                              ; preds = %817, %819
  %822 = phi ptr [ %820, %819 ], [ %809, %817 ]
  %823 = getelementptr inbounds %struct.segment_s, ptr %822, i64 0, i32 3
  %824 = load i16, ptr %823, align 2, !tbaa !110
  %825 = zext i16 %824 to i32
  %826 = and i32 %825, %83
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %829, label %828

828:                                              ; preds = %821, %814
  br label %829

829:                                              ; preds = %812, %821, %828
  %830 = phi ptr [ %20, %828 ], [ null, %821 ], [ null, %812 ]
  %831 = add nsw i32 %808, -1
  %832 = call i32 %23(ptr noundef nonnull %334, i32 noundef %831, ptr noundef nonnull %19, ptr noundef %830, ptr noundef %5, ptr noundef %225, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #11, !callees !111
  %833 = icmp slt i32 %832, 0
  br i1 %833, label %850, label %834

834:                                              ; preds = %829
  %835 = load ptr, ptr %390, align 8
  %836 = icmp eq ptr %835, null
  %837 = select i1 %389, i1 true, i1 %836
  br i1 %837, label %850, label %838

838:                                              ; preds = %834
  br i1 %283, label %839, label %842

839:                                              ; preds = %838
  %840 = load i64, ptr %229, align 8, !tbaa !47
  store i64 %840, ptr %392, align 8, !tbaa !112
  %841 = load i64, ptr %231, align 8, !tbaa !48
  br label %843

842:                                              ; preds = %838
  store i64 0, ptr %391, align 8, !tbaa !112
  br label %843

843:                                              ; preds = %842, %839
  %844 = phi i64 [ %841, %839 ], [ 0, %842 ]
  store i64 %844, ptr %393, align 8, !tbaa !113
  %845 = load ptr, ptr %394, align 8, !tbaa !114
  %846 = call i32 %845(ptr noundef %225, ptr noundef %3, ptr noundef nonnull %334, ptr noundef nonnull %11, ptr noundef %5, ptr noundef null) #11
  call void @gx_path_release(ptr noundef nonnull %334) #11
  %847 = icmp slt i32 %846, 0
  br i1 %847, label %850, label %848

848:                                              ; preds = %843
  %849 = load ptr, ptr %0, align 8, !tbaa !74
  call void @gx_path_init(ptr noundef nonnull %334, ptr noundef %849) #11
  br label %850

850:                                              ; preds = %834, %848, %843, %829
  %851 = phi i1 [ false, %829 ], [ false, %843 ], [ true, %848 ], [ true, %834 ]
  %852 = phi i32 [ 16, %829 ], [ 16, %843 ], [ 0, %848 ], [ 0, %834 ]
  %853 = phi i32 [ %832, %829 ], [ %846, %843 ], [ %846, %848 ], [ %832, %834 ]
  %854 = select i1 %851, ptr %809, ptr %396
  %855 = select i1 %851, i32 0, i32 %852
  br label %856

856:                                              ; preds = %796, %850, %807
  %857 = phi ptr [ %809, %807 ], [ %854, %850 ], [ %396, %796 ]
  %858 = phi i32 [ 0, %807 ], [ %855, %850 ], [ %797, %796 ]
  %859 = phi i32 [ %810, %807 ], [ %853, %850 ], [ %802, %796 ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %18) #11
  switch i32 %858, label %871 [
    i32 0, label %395
    i32 16, label %860
  ], !llvm.loop !117

860:                                              ; preds = %395, %856
  %861 = phi i32 [ %859, %856 ], [ %397, %395 ]
  %862 = icmp eq ptr %334, %14
  br i1 %862, label %863, label %864

863:                                              ; preds = %860
  call void @gx_path_release(ptr noundef nonnull %334) #11
  br label %864

864:                                              ; preds = %863, %860
  br i1 %324, label %866, label %865

865:                                              ; preds = %864
  call void @gx_path_release(ptr noundef nonnull %13) #11
  br label %866

866:                                              ; preds = %864, %865, %325
  %867 = phi i32 [ %326, %325 ], [ %861, %865 ], [ %861, %864 ]
  %868 = load i32, ptr %304, align 4, !tbaa !16
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %871, label %870

870:                                              ; preds = %866
  call void @gx_path_release(ptr noundef nonnull %12) #11
  br label %871

871:                                              ; preds = %856, %866, %870, %311, %307, %221
  %872 = phi i32 [ 0, %221 ], [ 0, %307 ], [ %319, %311 ], [ %867, %870 ], [ %867, %866 ], [ 0, %856 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  ret i32 %872
}

; Function Attrs: nounwind uwtable
define internal i32 @stroke_fill(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readnone %7, ptr nocapture noundef readonly %8) unnamed_addr #2 {
  %10 = alloca [6 x %struct.gs_fixed_point_s], align 16
  %11 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %2, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !83
  %22 = tail call i64 @llvm.smin.i64(i64 %15, i64 %19)
  %23 = add nsw i64 %22, -8192
  %24 = tail call i64 @llvm.smax.i64(i64 %17, i64 %21)
  %25 = tail call i64 @llvm.smin.i64(i64 %17, i64 %21)
  %26 = add nsw i64 %25, -8192
  %27 = add nsw i64 %24, 8192
  %28 = load i64, ptr %8, align 8, !tbaa !44
  %29 = icmp sgt i64 %28, %23
  br i1 %29, label %50, label %30

30:                                               ; preds = %14
  %31 = tail call i64 @llvm.smax.i64(i64 %15, i64 %19)
  %32 = add nsw i64 %31, 8192
  %33 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !46
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !43
  %39 = icmp sgt i64 %38, %26
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !45
  %43 = icmp sgt i64 %27, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 30
  %46 = load ptr, ptr %45, align 8, !tbaa !118
  %47 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !119
  %49 = tail call i32 %46(ptr noundef %5, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21, ptr noundef %4, i32 noundef %48) #11
  br label %50

50:                                               ; preds = %14, %30, %36, %40, %44
  %51 = phi i1 [ false, %44 ], [ true, %40 ], [ true, %36 ], [ true, %30 ], [ true, %14 ]
  %52 = phi i32 [ %49, %44 ], [ undef, %40 ], [ undef, %36 ], [ undef, %30 ], [ undef, %14 ]
  br i1 %51, label %53, label %201

53:                                               ; preds = %50, %9
  %54 = phi i32 [ %52, %50 ], [ undef, %9 ]
  %55 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1
  %56 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !87
  %58 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !109
  %60 = load i32, ptr %11, align 8, !tbaa !90
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %196

62:                                               ; preds = %53
  %63 = icmp eq ptr %3, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.partial_line_s, ptr %3, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !90
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %196

68:                                               ; preds = %64, %62
  %69 = icmp ne i32 %1, 0
  %70 = icmp ne ptr %3, null
  %71 = and i1 %69, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  switch i32 %57, label %196 [
    i32 2, label %73
    i32 0, label %73
  ]

73:                                               ; preds = %72, %72, %68
  %74 = icmp eq i32 %59, 0
  switch i32 %59, label %196 [
    i32 3, label %75
    i32 2, label %75
    i32 0, label %75
  ]

75:                                               ; preds = %73, %73, %73
  %76 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 7
  %77 = load i64, ptr %76, align 8, !tbaa !47
  %78 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 7, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !48
  %80 = or i64 %79, %77
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %196

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !119
  %85 = shl i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = and i32 %84, 170
  %88 = and i32 %87, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %196

90:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #11
  %91 = icmp eq i32 %1, 0
  %92 = select i1 %91, i32 %57, i32 0
  %93 = call fastcc i32 @cap_points(i32 noundef %92, ptr noundef %2, ptr noundef nonnull %10), !range !120
  br i1 %63, label %94, label %99

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %96
  %98 = call fastcc i32 @cap_points(i32 noundef %57, ptr noundef nonnull %95, ptr noundef nonnull %97), !range !120
  br label %103

99:                                               ; preds = %90
  %100 = sext i32 %93 to i64
  %101 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %100
  %102 = call fastcc i32 @line_join_points(ptr noundef nonnull %55, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %101), !range !121
  br label %103

103:                                              ; preds = %99, %94
  %104 = phi i32 [ %98, %94 ], [ %102, %99 ]
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %194, label %106

106:                                              ; preds = %103
  br i1 %70, label %107, label %168

107:                                              ; preds = %106
  br i1 %74, label %108, label %132

108:                                              ; preds = %107
  %109 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2
  %110 = load i64, ptr %109, align 16, !tbaa !37
  %111 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !105
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %188

114:                                              ; preds = %108
  %115 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !38
  %117 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !106
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %188

120:                                              ; preds = %114
  %121 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 5
  %122 = load i64, ptr %121, align 16, !tbaa !37
  %123 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !107
  %125 = icmp eq i64 %122, %124
  br i1 %125, label %126, label %188

126:                                              ; preds = %120
  %127 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 5, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !108
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %132, label %188

132:                                              ; preds = %126, %107
  %133 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 2
  %134 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 3
  %135 = load i64, ptr %134, align 16, !tbaa !37
  %136 = load i64, ptr %3, align 8, !tbaa !78
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 3, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !38
  %141 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !81
  %143 = icmp eq i64 %140, %142
  %144 = select i1 %143, ptr %134, ptr %133
  br label %145

145:                                              ; preds = %138, %132
  %146 = phi ptr [ %133, %132 ], [ %144, %138 ]
  %147 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 29
  %148 = load ptr, ptr %147, align 8, !tbaa !122
  %149 = load i64, ptr %146, align 8, !tbaa !37
  %150 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %146, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %146, i64 1
  %153 = load i64, ptr %152, align 8, !tbaa !37
  %154 = sub nsw i64 %153, %149
  %155 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %146, i64 1, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !38
  %157 = sub nsw i64 %156, %151
  %158 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %146, i64 2
  %159 = load i64, ptr %158, align 8, !tbaa !37
  %160 = sub nsw i64 %159, %149
  %161 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %146, i64 2, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !38
  %163 = sub nsw i64 %162, %151
  %164 = load i32, ptr %83, align 8, !tbaa !119
  %165 = tail call i32 %148(ptr noundef %5, i64 noundef %149, i64 noundef %151, i64 noundef %154, i64 noundef %157, i64 noundef %160, i64 noundef %163, ptr noundef %4, i32 noundef %164) #11
  %166 = icmp sgt i32 %165, -1
  %167 = select i1 %166, i32 %54, i32 %165
  br i1 %166, label %168, label %194

168:                                              ; preds = %145, %106
  %169 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 28
  %170 = load ptr, ptr %169, align 8, !tbaa !123
  %171 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 1
  %172 = load i64, ptr %171, align 16, !tbaa !37
  %173 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 1, i32 1
  %174 = load i64, ptr %173, align 8, !tbaa !38
  %175 = load i64, ptr %10, align 16, !tbaa !37
  %176 = sub nsw i64 %175, %172
  %177 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !38
  %179 = sub nsw i64 %178, %174
  %180 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2
  %181 = load i64, ptr %180, align 16, !tbaa !37
  %182 = sub nsw i64 %181, %172
  %183 = getelementptr inbounds [6 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 2, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !38
  %185 = sub nsw i64 %184, %174
  %186 = load i32, ptr %83, align 8, !tbaa !119
  %187 = tail call i32 %170(ptr noundef %5, i64 noundef %172, i64 noundef %174, i64 noundef %176, i64 noundef %179, i64 noundef %182, i64 noundef %185, ptr noundef %4, i32 noundef %186) #11
  br label %194

188:                                              ; preds = %108, %114, %120, %126
  %189 = add nsw i32 %104, %93
  %190 = call fastcc i32 @add_points(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %189, i32 noundef 1)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = call i32 @gx_path_close_subpath_notes(ptr noundef %0, i32 noundef 0) #11
  br label %194

194:                                              ; preds = %188, %103, %145, %192, %168
  %195 = phi i32 [ %187, %168 ], [ %167, %145 ], [ %193, %192 ], [ %104, %103 ], [ %190, %188 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #11
  br label %196

196:                                              ; preds = %53, %64, %75, %82, %72, %73, %194
  %197 = phi i1 [ false, %194 ], [ true, %73 ], [ true, %72 ], [ true, %82 ], [ true, %75 ], [ true, %64 ], [ true, %53 ]
  %198 = phi i32 [ %195, %194 ], [ %54, %73 ], [ %54, %72 ], [ %54, %82 ], [ %54, %75 ], [ %54, %64 ], [ %54, %53 ]
  br i1 %197, label %199, label %201

199:                                              ; preds = %196
  %200 = call i32 @stroke_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr poison, ptr noundef %6, ptr poison, ptr poison)
  br label %201

201:                                              ; preds = %196, %50, %199
  %202 = phi i32 [ %52, %50 ], [ %198, %196 ], [ %200, %199 ]
  ret i32 %202
}

; Function Attrs: nounwind uwtable
define internal i32 @stroke_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture readnone %4, ptr nocapture readnone %5, ptr nocapture noundef readonly %6, ptr nocapture readnone %7, ptr nocapture readnone %8) unnamed_addr #2 {
  %10 = alloca [8 x %struct.gs_fixed_point_s], align 16
  %11 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #11
  %12 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !90
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %124, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !82
  %18 = load i64, ptr %2, align 8, !tbaa !78
  %19 = sub nsw i64 %17, %18
  %20 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !81
  %24 = sub nsw i64 %21, %23
  %25 = tail call i64 @llvm.abs.i64(i64 %19, i1 true)
  %26 = tail call i64 @llvm.abs.i64(i64 %24, i1 true)
  %27 = icmp ugt i64 %25, %26
  %28 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3
  br i1 %27, label %29, label %34

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  %31 = icmp sgt i64 %19, -1
  %32 = select i1 %31, i64 2048, i64 -2048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store i64 %32, ptr %28, align 8, !tbaa !91
  %33 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2, i32 1
  store i64 %32, ptr %33, align 8, !tbaa !94
  br label %41

34:                                               ; preds = %15
  store i64 0, ptr %28, align 8, !tbaa !91
  %35 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2
  %36 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2, i32 1
  store i64 0, ptr %36, align 8, !tbaa !94
  %37 = icmp sgt i64 %24, -1
  %38 = select i1 %37, i64 -2048, i64 2048
  %39 = select i1 %37, i64 2048, i64 -2048
  %40 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  store i64 %39, ptr %40, align 8, !tbaa !92
  store i64 %38, ptr %35, align 8, !tbaa !93
  br label %41

41:                                               ; preds = %29, %34
  %42 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !97
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !93
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !94
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %49, %45, %41
  %54 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !93
  %56 = tail call i64 @llvm.abs.i64(i64 %55, i1 true)
  %57 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !94
  %59 = tail call i64 @llvm.abs.i64(i64 %58, i1 true)
  %60 = icmp ult i64 %56, %59
  %61 = select i1 %60, ptr %22, ptr %2
  %62 = select i1 %60, ptr %20, ptr %16
  %63 = select i1 %60, ptr %57, ptr %54
  %64 = load i64, ptr %63, align 8, !tbaa !98
  %65 = shl i64 %64, 1
  %66 = add nsw i64 %65, 2048
  %67 = and i64 %66, -4096
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %53
  %70 = icmp eq i64 %64, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %69
  %72 = icmp slt i64 %64, 0
  %73 = select i1 %72, i64 -4096, i64 4096
  %74 = ashr exact i64 %73, 1
  store i64 %74, ptr %63, align 8, !tbaa !98
  br label %75

75:                                               ; preds = %71, %69, %53
  %76 = phi i64 [ %73, %71 ], [ 0, %69 ], [ %67, %53 ]
  %77 = load i64, ptr %61, align 8, !tbaa !98
  %78 = load i64, ptr %62, align 8, !tbaa !98
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = icmp slt i64 %64, 0
  %82 = sub i64 0, %76
  %83 = select i1 %81, i64 %82, i64 %76
  %84 = and i64 %83, 4096
  %85 = icmp eq i64 %84, 0
  %86 = and i64 %77, -4096
  %87 = or disjoint i64 %86, 2048
  %88 = add nsw i64 %77, 2048
  %89 = and i64 %88, -4096
  %90 = select i1 %85, i64 %89, i64 %87
  store i64 %90, ptr %62, align 8, !tbaa !98
  store i64 %90, ptr %61, align 8, !tbaa !98
  br label %91

91:                                               ; preds = %80, %49, %75
  %92 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !93
  %94 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !94
  %96 = load i64, ptr %2, align 8, !tbaa !78
  %97 = add nsw i64 %96, %93
  %98 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1
  store i64 %97, ptr %98, align 8, !tbaa !99
  %99 = load i64, ptr %22, align 8, !tbaa !81
  %100 = add nsw i64 %99, %95
  %101 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1, i32 1
  store i64 %100, ptr %101, align 8, !tbaa !100
  %102 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3
  %103 = load i64, ptr %102, align 8, !tbaa !91
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3
  store i64 %104, ptr %105, align 8, !tbaa !101
  %106 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !92
  %108 = sub nsw i64 0, %107
  %109 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3, i32 1
  store i64 %108, ptr %109, align 8, !tbaa !102
  %110 = sub nsw i64 %96, %93
  %111 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2
  store i64 %110, ptr %111, align 8, !tbaa !103
  %112 = sub nsw i64 %99, %95
  %113 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2, i32 1
  store i64 %112, ptr %113, align 8, !tbaa !104
  %114 = load i64, ptr %16, align 8, !tbaa !82
  %115 = sub nsw i64 %114, %93
  %116 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  store i64 %115, ptr %116, align 8, !tbaa !105
  %117 = load i64, ptr %20, align 8, !tbaa !83
  %118 = sub nsw i64 %117, %95
  %119 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  store i64 %118, ptr %119, align 8, !tbaa !106
  %120 = add nsw i64 %114, %93
  %121 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  store i64 %120, ptr %121, align 8, !tbaa !107
  %122 = add nsw i64 %117, %95
  %123 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  store i64 %122, ptr %123, align 8, !tbaa !108
  br label %124

124:                                              ; preds = %91, %9
  %125 = icmp eq i32 %1, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !87
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %167

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !99
  %133 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !100
  %135 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %132, i64 noundef %134) #11
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %448, label %137

137:                                              ; preds = %130
  %138 = load i64, ptr %2, align 8, !tbaa !124
  %139 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3
  %140 = load i64, ptr %139, align 8, !tbaa !125
  %141 = add nsw i64 %140, %138
  %142 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !126
  %144 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !127
  %146 = add nsw i64 %145, %143
  %147 = load i64, ptr %131, align 8, !tbaa !128
  %148 = add nsw i64 %147, %140
  %149 = load i64, ptr %133, align 8, !tbaa !129
  %150 = add nsw i64 %149, %145
  %151 = tail call i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %141, i64 noundef %146, i64 noundef %148, i64 noundef %150, double noundef 5.522850e-01, i32 noundef 0) #11
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %137
  %154 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !130
  %156 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !131
  %158 = load i64, ptr %139, align 8, !tbaa !125
  %159 = add nsw i64 %158, %155
  %160 = load i64, ptr %144, align 8, !tbaa !127
  %161 = add nsw i64 %160, %157
  %162 = tail call i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %155, i64 noundef %157, i64 noundef %159, i64 noundef %161, double noundef 5.522850e-01, i32 noundef 0) #11
  %163 = tail call i32 @llvm.smin.i32(i32 %162, i32 0)
  br label %164

164:                                              ; preds = %137, %153
  %165 = phi i32 [ %151, %137 ], [ %163, %153 ]
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %448, label %229

167:                                              ; preds = %126, %124
  %168 = phi i32 [ 0, %124 ], [ %128, %126 ]
  switch i32 %168, label %226 [
    i32 0, label %169
    i32 2, label %180
    i32 3, label %199
  ]

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !128
  store i64 %171, ptr %10, align 16, !tbaa !37
  %172 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !129
  %174 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %173, ptr %174, align 8, !tbaa !38
  %175 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !130
  %177 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1
  store i64 %176, ptr %177, align 16, !tbaa !37
  %178 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !131
  br label %221

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !128
  %183 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3
  %184 = load i64, ptr %183, align 8, !tbaa !125
  %185 = add nsw i64 %184, %182
  store i64 %185, ptr %10, align 16, !tbaa !37
  %186 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !129
  %188 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !127
  %190 = add nsw i64 %189, %187
  %191 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %190, ptr %191, align 8, !tbaa !38
  %192 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2
  %193 = load i64, ptr %192, align 8, !tbaa !130
  %194 = add nsw i64 %193, %184
  %195 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1
  store i64 %194, ptr %195, align 16, !tbaa !37
  %196 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !131
  %198 = add nsw i64 %197, %189
  br label %221

199:                                              ; preds = %167
  %200 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !128
  store i64 %201, ptr %10, align 16, !tbaa !37
  %202 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !129
  %204 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  store i64 %203, ptr %204, align 8, !tbaa !38
  %205 = load i64, ptr %2, align 8, !tbaa !124
  %206 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3
  %207 = load i64, ptr %206, align 8, !tbaa !125
  %208 = add nsw i64 %207, %205
  %209 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1
  store i64 %208, ptr %209, align 16, !tbaa !37
  %210 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !126
  %212 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3, i32 1
  %213 = load i64, ptr %212, align 8, !tbaa !127
  %214 = add nsw i64 %213, %211
  %215 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1, i32 1
  store i64 %214, ptr %215, align 8, !tbaa !38
  %216 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2
  %217 = load i64, ptr %216, align 8, !tbaa !130
  %218 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 2
  store i64 %217, ptr %218, align 16, !tbaa !37
  %219 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2, i32 1
  %220 = load i64, ptr %219, align 8, !tbaa !131
  br label %221

221:                                              ; preds = %199, %180, %169
  %222 = phi i64 [ 1, %169 ], [ 1, %180 ], [ 2, %199 ]
  %223 = phi i64 [ %179, %169 ], [ %198, %180 ], [ %220, %199 ]
  %224 = phi i32 [ 2, %169 ], [ 2, %180 ], [ 3, %199 ]
  %225 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %222, i32 1
  store i64 %223, ptr %225, align 8, !tbaa !38
  br label %226

226:                                              ; preds = %221, %167
  %227 = phi i1 [ true, %167 ], [ false, %221 ]
  %228 = phi i32 [ -29, %167 ], [ %224, %221 ]
  br i1 %227, label %448, label %229

229:                                              ; preds = %164, %226
  %230 = phi i32 [ %228, %226 ], [ 0, %164 ]
  %231 = phi i1 [ false, %226 ], [ true, %164 ]
  %232 = icmp eq ptr %3, null
  br i1 %232, label %233, label %349

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !87
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %290

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %239 = load i64, ptr %238, align 8, !tbaa !105
  %240 = zext nneg i32 %230 to i64
  %241 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 %240
  store i64 %239, ptr %241, align 16, !tbaa !37
  %242 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !106
  %244 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 %240, i32 1
  store i64 %243, ptr %244, align 8, !tbaa !38
  br i1 %231, label %254, label %245

245:                                              ; preds = %237
  %246 = load i64, ptr %10, align 16, !tbaa !37
  %247 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !38
  %249 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %246, i64 noundef %248) #11
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1
  %253 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %252, i32 noundef %230, i32 noundef 0) #11
  br label %257

254:                                              ; preds = %237
  %255 = add nuw nsw i32 %230, 1
  %256 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %255, i32 noundef 0) #11
  br label %257

257:                                              ; preds = %245, %251, %254
  %258 = phi i32 [ %256, %254 ], [ %253, %251 ], [ %249, %245 ]
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %448, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1
  %262 = load i64, ptr %261, align 8, !tbaa !124
  %263 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3
  %264 = load i64, ptr %263, align 8, !tbaa !125
  %265 = add nsw i64 %264, %262
  %266 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  %267 = load i64, ptr %266, align 8, !tbaa !126
  %268 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  %269 = load i64, ptr %268, align 8, !tbaa !127
  %270 = add nsw i64 %269, %267
  %271 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %272 = load i64, ptr %271, align 8, !tbaa !128
  %273 = add nsw i64 %272, %264
  %274 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %275 = load i64, ptr %274, align 8, !tbaa !129
  %276 = add nsw i64 %275, %269
  %277 = call i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %265, i64 noundef %270, i64 noundef %273, i64 noundef %276, double noundef 5.522850e-01, i32 noundef 0) #11
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %443, label %279

279:                                              ; preds = %260
  %280 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !130
  %282 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %283 = load i64, ptr %282, align 8, !tbaa !131
  %284 = load i64, ptr %263, align 8, !tbaa !125
  %285 = add nsw i64 %284, %281
  %286 = load i64, ptr %268, align 8, !tbaa !127
  %287 = add nsw i64 %286, %283
  %288 = call i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %281, i64 noundef %283, i64 noundef %285, i64 noundef %287, double noundef 5.522850e-01, i32 noundef 0) #11
  %289 = call i32 @llvm.smin.i32(i32 %288, i32 0)
  br label %443

290:                                              ; preds = %233
  %291 = zext nneg i32 %230 to i64
  %292 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %291
  switch i32 %235, label %426 [
    i32 0, label %293
    i32 2, label %305
    i32 3, label %325
  ]

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %295 = load i64, ptr %294, align 8, !tbaa !128
  store i64 %295, ptr %292, align 16, !tbaa !37
  %296 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %297 = load i64, ptr %296, align 8, !tbaa !129
  %298 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %291, i32 1
  store i64 %297, ptr %298, align 8, !tbaa !38
  %299 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %300 = load i64, ptr %299, align 8, !tbaa !130
  %301 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 1
  store i64 %300, ptr %301, align 16, !tbaa !37
  %302 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %303 = load i64, ptr %302, align 8, !tbaa !131
  %304 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 1, i32 1
  store i64 %303, ptr %304, align 8, !tbaa !38
  br label %426

305:                                              ; preds = %290
  %306 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %307 = load i64, ptr %306, align 8, !tbaa !128
  %308 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3
  %309 = load i64, ptr %308, align 8, !tbaa !125
  %310 = add nsw i64 %309, %307
  store i64 %310, ptr %292, align 16, !tbaa !37
  %311 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %312 = load i64, ptr %311, align 8, !tbaa !129
  %313 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  %314 = load i64, ptr %313, align 8, !tbaa !127
  %315 = add nsw i64 %314, %312
  %316 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %291, i32 1
  store i64 %315, ptr %316, align 8, !tbaa !38
  %317 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %318 = load i64, ptr %317, align 8, !tbaa !130
  %319 = add nsw i64 %318, %309
  %320 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 1
  store i64 %319, ptr %320, align 16, !tbaa !37
  %321 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %322 = load i64, ptr %321, align 8, !tbaa !131
  %323 = add nsw i64 %322, %314
  %324 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 1, i32 1
  store i64 %323, ptr %324, align 8, !tbaa !38
  br label %426

325:                                              ; preds = %290
  %326 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1
  %327 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %328 = load i64, ptr %327, align 8, !tbaa !128
  store i64 %328, ptr %292, align 16, !tbaa !37
  %329 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %330 = load i64, ptr %329, align 8, !tbaa !129
  %331 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %291, i32 1
  store i64 %330, ptr %331, align 8, !tbaa !38
  %332 = load i64, ptr %326, align 8, !tbaa !124
  %333 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3
  %334 = load i64, ptr %333, align 8, !tbaa !125
  %335 = add nsw i64 %334, %332
  %336 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 1
  store i64 %335, ptr %336, align 16, !tbaa !37
  %337 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !126
  %339 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  %340 = load i64, ptr %339, align 8, !tbaa !127
  %341 = add nsw i64 %340, %338
  %342 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 1, i32 1
  store i64 %341, ptr %342, align 8, !tbaa !38
  %343 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %344 = load i64, ptr %343, align 8, !tbaa !130
  %345 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 2
  store i64 %344, ptr %345, align 16, !tbaa !37
  %346 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %347 = load i64, ptr %346, align 8, !tbaa !131
  %348 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %292, i64 2, i32 1
  store i64 %347, ptr %348, align 8, !tbaa !38
  br label %426

349:                                              ; preds = %229
  %350 = getelementptr inbounds %struct.gs_imager_state_s, ptr %6, i64 0, i32 1, i32 2
  %351 = load i32, ptr %350, align 8, !tbaa !109
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %406

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !105
  %356 = zext nneg i32 %230 to i64
  %357 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 %356
  store i64 %355, ptr %357, align 16, !tbaa !37
  %358 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %359 = load i64, ptr %358, align 8, !tbaa !106
  %360 = getelementptr inbounds [8 x %struct.gs_fixed_point_s], ptr %10, i64 0, i64 %356, i32 1
  store i64 %359, ptr %360, align 8, !tbaa !38
  br i1 %231, label %370, label %361

361:                                              ; preds = %353
  %362 = load i64, ptr %10, align 16, !tbaa !37
  %363 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %364 = load i64, ptr %363, align 8, !tbaa !38
  %365 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %362, i64 noundef %364) #11
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %373, label %367

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1
  %369 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %368, i32 noundef %230, i32 noundef 0) #11
  br label %373

370:                                              ; preds = %353
  %371 = add nuw nsw i32 %230, 1
  %372 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %371, i32 noundef 0) #11
  br label %373

373:                                              ; preds = %361, %367, %370
  %374 = phi i32 [ %372, %370 ], [ %369, %367 ], [ %365, %361 ]
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %448, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !124
  %379 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3
  %380 = load i64, ptr %379, align 8, !tbaa !125
  %381 = add nsw i64 %380, %378
  %382 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  %383 = load i64, ptr %382, align 8, !tbaa !126
  %384 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 3, i32 1
  %385 = load i64, ptr %384, align 8, !tbaa !127
  %386 = add nsw i64 %385, %383
  %387 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %388 = load i64, ptr %387, align 8, !tbaa !128
  %389 = add nsw i64 %388, %380
  %390 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %391 = load i64, ptr %390, align 8, !tbaa !129
  %392 = add nsw i64 %391, %385
  %393 = call i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %381, i64 noundef %386, i64 noundef %389, i64 noundef %392, double noundef 5.522850e-01, i32 noundef 0) #11
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %443, label %395

395:                                              ; preds = %376
  %396 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %397 = load i64, ptr %396, align 8, !tbaa !130
  %398 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %399 = load i64, ptr %398, align 8, !tbaa !131
  %400 = load i64, ptr %379, align 8, !tbaa !125
  %401 = add nsw i64 %400, %397
  %402 = load i64, ptr %384, align 8, !tbaa !127
  %403 = add nsw i64 %402, %399
  %404 = call i32 @gx_path_add_partial_arc_notes(ptr noundef %0, i64 noundef %397, i64 noundef %399, i64 noundef %401, i64 noundef %403, double noundef 5.522850e-01, i32 noundef 0) #11
  %405 = call i32 @llvm.smin.i32(i32 %404, i32 0)
  br label %443

406:                                              ; preds = %349
  %407 = getelementptr inbounds %struct.partial_line_s, ptr %3, i64 0, i32 3
  %408 = load i32, ptr %407, align 8, !tbaa !90
  %409 = icmp eq i32 %408, 0
  %410 = zext nneg i32 %230 to i64
  %411 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %410
  br i1 %409, label %424, label %412

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1
  %414 = load i64, ptr %413, align 8, !tbaa !128
  store i64 %414, ptr %411, align 16, !tbaa !37
  %415 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 1, i32 1
  %416 = load i64, ptr %415, align 8, !tbaa !129
  %417 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 %410, i32 1
  store i64 %416, ptr %417, align 8, !tbaa !38
  %418 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2
  %419 = load i64, ptr %418, align 8, !tbaa !130
  %420 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %411, i64 1
  store i64 %419, ptr %420, align 16, !tbaa !37
  %421 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 1, i32 2, i32 1
  %422 = load i64, ptr %421, align 8, !tbaa !131
  %423 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %411, i64 1, i32 1
  store i64 %422, ptr %423, align 8, !tbaa !38
  br label %426

424:                                              ; preds = %406
  %425 = call fastcc i32 @line_join_points(ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %411), !range !121
  br label %426

426:                                              ; preds = %325, %305, %293, %290, %424, %412
  %427 = phi i32 [ 2, %412 ], [ %425, %424 ], [ 3, %325 ], [ 2, %305 ], [ 2, %293 ], [ -29, %290 ]
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %448, label %429

429:                                              ; preds = %426
  %430 = add nuw nsw i32 %427, %230
  br i1 %231, label %441, label %431

431:                                              ; preds = %429
  %432 = load i64, ptr %10, align 16, !tbaa !37
  %433 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %434 = load i64, ptr %433, align 8, !tbaa !38
  %435 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %432, i64 noundef %434) #11
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %443, label %437

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 1
  %439 = add nsw i32 %430, -1
  %440 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %438, i32 noundef %439, i32 noundef 0) #11
  br label %443

441:                                              ; preds = %429
  %442 = call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %430, i32 noundef 0) #11
  br label %443

443:                                              ; preds = %441, %437, %431, %395, %376, %279, %260
  %444 = phi i32 [ %277, %260 ], [ %289, %279 ], [ %393, %376 ], [ %405, %395 ], [ %442, %441 ], [ %440, %437 ], [ %435, %431 ]
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %443
  %447 = call i32 @gx_path_close_subpath_notes(ptr noundef %0, i32 noundef 0) #11
  br label %448

448:                                              ; preds = %443, %426, %373, %257, %226, %130, %164, %446
  %449 = phi i32 [ %447, %446 ], [ %135, %130 ], [ %165, %164 ], [ %228, %226 ], [ %258, %257 ], [ %374, %373 ], [ %427, %426 ], [ %444, %443 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #11
  ret i32 %449
}

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_cpath_inner_box(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_cpath_outer_box(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_make_clip_translate_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @gs_deviceinitialmatrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @gx_path_copy_reducing(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_path_expand_dashes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @gs_imager_idtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_path_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @cap_points(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  switch i32 %0, label %63 [
    i32 0, label %4
    i32 2, label %15
    i32 3, label %36
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !128
  store i64 %6, ptr %2, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 1
  store i64 %11, ptr %12, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !131
  br label %58

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !128
  %18 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !125
  %20 = add nsw i64 %19, %17
  store i64 %20, ptr %2, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !129
  %23 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 3, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !127
  %25 = add nsw i64 %24, %22
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !130
  %29 = load i64, ptr %18, align 8, !tbaa !125
  %30 = add nsw i64 %29, %28
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 1
  store i64 %30, ptr %31, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 2, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !131
  %34 = load i64, ptr %23, align 8, !tbaa !127
  %35 = add nsw i64 %34, %33
  br label %58

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !128
  store i64 %38, ptr %2, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 1, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !129
  %41 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  store i64 %40, ptr %41, align 8, !tbaa !38
  %42 = load i64, ptr %1, align 8, !tbaa !124
  %43 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !125
  %45 = add nsw i64 %44, %42
  %46 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 1
  store i64 %45, ptr %46, align 8, !tbaa !37
  %47 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !126
  %49 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 3, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !127
  %51 = add nsw i64 %50, %48
  %52 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 1, i32 1
  store i64 %51, ptr %52, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !130
  %55 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 2
  store i64 %54, ptr %55, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.endpoint_s, ptr %1, i64 0, i32 2, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !131
  br label %58

58:                                               ; preds = %4, %15, %36
  %59 = phi i64 [ 2, %36 ], [ 1, %15 ], [ 1, %4 ]
  %60 = phi i64 [ %57, %36 ], [ %35, %15 ], [ %14, %4 ]
  %61 = phi i32 [ 3, %36 ], [ 2, %15 ], [ 2, %4 ]
  %62 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 %59, i32 1
  store i64 %60, ptr %62, align 8, !tbaa !38
  br label %63

63:                                               ; preds = %58, %3
  %64 = phi i32 [ -29, %3 ], [ %61, %58 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @line_join_points(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.gx_line_params_s, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !93
  %9 = sitofp i64 %8 to double
  %10 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2
  %11 = getelementptr inbounds %struct.partial_line_s, ptr %2, i64 0, i32 2, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !94
  %13 = sitofp i64 %12 to double
  %14 = fmul double %9, %13
  %15 = load i64, ptr %10, align 8, !tbaa !93
  %16 = sitofp i64 %15 to double
  %17 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !94
  %19 = sitofp i64 %18 to double
  %20 = fmul double %16, %19
  %21 = fcmp ogt double %14, %20
  %22 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !105
  store i64 %23, ptr %3, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !106
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !107
  %29 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 3
  store i64 %28, ptr %29, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 2, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 3, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  br i1 %21, label %39, label %34

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 2
  store i64 %36, ptr %37, align 8, !tbaa !37
  %38 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 1, i32 1
  br label %44

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !103
  %42 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 1
  store i64 %41, ptr %42, align 8, !tbaa !37
  %43 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 2, i32 1
  br label %44

44:                                               ; preds = %34, %39
  %45 = phi ptr [ %38, %34 ], [ %43, %39 ]
  %46 = phi i64 [ 2, %34 ], [ 1, %39 ]
  %47 = phi i64 [ 1, %34 ], [ 2, %39 ]
  %48 = phi ptr [ %37, %34 ], [ %42, %39 ]
  %49 = phi ptr [ %29, %34 ], [ %3, %39 ]
  %50 = load i64, ptr %45, align 8, !tbaa !98
  %51 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 %46, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !38
  %52 = load i64, ptr %2, align 8, !tbaa !78
  %53 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 %47
  store i64 %52, ptr %53, align 8, !tbaa !37
  %54 = load i64, ptr %33, align 8, !tbaa !81
  %55 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 %47, i32 1
  store i64 %54, ptr %55, align 8, !tbaa !38
  switch i32 %6, label %196 [
    i32 4, label %56
    i32 0, label %82
  ]

56:                                               ; preds = %44
  %57 = load i64, ptr %49, align 8, !tbaa !37
  %58 = load i64, ptr %2, align 8, !tbaa !78
  %59 = sub nsw i64 %57, %58
  %60 = load i64, ptr %48, align 8, !tbaa !37
  %61 = add nsw i64 %59, %60
  %62 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %49, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !81
  %66 = sub nsw i64 %63, %65
  %67 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %48, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !38
  %69 = add nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 4
  store i64 %28, ptr %70, align 8, !tbaa !37
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 4, i32 1
  store i64 %31, ptr %71, align 8, !tbaa !38
  br i1 %21, label %73, label %72

72:                                               ; preds = %56
  store i64 %61, ptr %29, align 8, !tbaa !37
  store i64 %69, ptr %32, align 8, !tbaa !38
  br label %196

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 2
  %75 = load i64, ptr %74, align 8, !tbaa !37
  store i64 %75, ptr %29, align 8, !tbaa !37
  %76 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 2, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !38
  store i64 %77, ptr %32, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 1
  %79 = load i64, ptr %78, align 8, !tbaa !37
  store i64 %79, ptr %74, align 8, !tbaa !37
  %80 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 1, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !38
  store i64 %81, ptr %76, align 8, !tbaa !38
  store i64 %61, ptr %78, align 8, !tbaa !37
  store i64 %69, ptr %80, align 8, !tbaa !38
  br label %196

82:                                               ; preds = %44
  %83 = load i64, ptr %49, align 8, !tbaa !37
  %84 = load i64, ptr %48, align 8, !tbaa !37
  %85 = xor i64 %84, %83
  %86 = and i64 %85, 9223372036854773760
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %49, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %48, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !38
  %93 = xor i64 %92, %90
  %94 = and i64 %93, 9223372036854773760
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %196, label %96

96:                                               ; preds = %88, %82
  %97 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 3
  %98 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 3, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !92
  %100 = sitofp i64 %99 to float
  %101 = load i64, ptr %97, align 8, !tbaa !37
  %102 = sitofp i64 %101 to float
  %103 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3
  %104 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !102
  %106 = sitofp i64 %105 to float
  %107 = load i64, ptr %103, align 8, !tbaa !37
  %108 = sitofp i64 %107 to float
  %109 = fneg float %106
  %110 = fmul float %102, %109
  %111 = tail call float @llvm.fmuladd.f32(float %100, float %108, float %110)
  %112 = fpext float %111 to double
  %113 = fmul float %102, %108
  %114 = tail call float @llvm.fmuladd.f32(float %100, float %106, float %113)
  %115 = fpext float %114 to double
  %116 = getelementptr inbounds %struct.gx_line_params_s, ptr %0, i64 0, i32 4
  %117 = load float, ptr %116, align 8, !tbaa !132
  %118 = fneg double %112
  %119 = select i1 %21, double %112, double %118
  %120 = fcmp olt float %114, 0.000000e+00
  %121 = fneg double %119
  %122 = fneg double %115
  %123 = select i1 %120, double %121, double %119
  %124 = select i1 %120, double %122, double %115
  %125 = fcmp ogt float %117, 0.000000e+00
  %126 = fcmp olt double %123, 0.000000e+00
  br i1 %125, label %127, label %132

127:                                              ; preds = %96
  br i1 %126, label %137, label %128

128:                                              ; preds = %127
  %129 = fpext float %117 to double
  %130 = fmul double %124, %129
  %131 = fcmp ult double %123, %130
  br i1 %131, label %196, label %137

132:                                              ; preds = %96
  br i1 %126, label %133, label %196

133:                                              ; preds = %132
  %134 = fpext float %117 to double
  %135 = fmul double %124, %134
  %136 = fcmp ult double %123, %135
  br i1 %136, label %196, label %137

137:                                              ; preds = %133, %128, %127
  %138 = getelementptr inbounds %struct.partial_line_s, ptr %1, i64 0, i32 1, i32 3, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !38
  %140 = sitofp i64 %139 to float
  %141 = getelementptr inbounds %struct.endpoint_s, ptr %2, i64 0, i32 3, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !38
  %143 = sitofp i64 %142 to float
  %144 = fneg float %108
  %145 = fmul float %144, %140
  %146 = tail call float @llvm.fmuladd.f32(float %102, float %143, float %145)
  %147 = fpext float %146 to double
  %148 = sub nsw i64 %84, %83
  %149 = sitofp i64 %148 to float
  %150 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %48, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %49, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !38
  %154 = sub nsw i64 %151, %153
  %155 = sitofp i64 %154 to float
  %156 = fcmp olt float %146, 0.000000e+00
  %157 = fneg double %147
  %158 = select i1 %156, double %157, double %147
  %159 = fmul double %158, 0x43E0000000000000
  %160 = icmp slt i64 %148, 0
  %161 = fneg float %149
  %162 = select i1 %160, float %161, float %149
  %163 = fpext float %162 to double
  %164 = fcmp ugt double %159, %163
  br i1 %164, label %165, label %191

165:                                              ; preds = %137
  %166 = icmp slt i64 %154, 0
  %167 = fneg float %155
  %168 = select i1 %166, float %167, float %155
  %169 = fpext float %168 to double
  %170 = fcmp ugt double %159, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = fmul float %144, %155
  %173 = tail call float @llvm.fmuladd.f32(float %143, float %149, float %172)
  %174 = fpext float %173 to double
  %175 = fdiv double %174, %147
  %176 = fpext float %102 to double
  %177 = fmul double %175, %176
  %178 = fptosi double %177 to i64
  %179 = add nsw i64 %83, %178
  %180 = fpext float %140 to double
  %181 = fmul double %175, %180
  %182 = fptosi double %181 to i64
  %183 = add nsw i64 %153, %182
  %184 = fcmp ult double %175, 0.000000e+00
  br i1 %184, label %191, label %185

185:                                              ; preds = %171
  %186 = fmul float %149, %140
  %187 = fmul float %102, %155
  %188 = fcmp ult float %186, %187
  %189 = fcmp oge float %146, 0.000000e+00
  %190 = select i1 %188, i1 %156, i1 %189
  br label %191

191:                                              ; preds = %137, %165, %171, %185
  %192 = phi i64 [ %183, %171 ], [ %183, %185 ], [ undef, %165 ], [ undef, %137 ]
  %193 = phi i64 [ %179, %171 ], [ %179, %185 ], [ undef, %165 ], [ undef, %137 ]
  %194 = phi i1 [ false, %171 ], [ %190, %185 ], [ false, %165 ], [ false, %137 ]
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i64 %193, ptr %49, align 8, !tbaa !37
  store i64 %192, ptr %152, align 8, !tbaa !38
  br label %196

196:                                              ; preds = %191, %195, %88, %44, %133, %132, %128, %72, %73
  %197 = phi i32 [ 5, %73 ], [ 5, %72 ], [ 4, %128 ], [ 4, %132 ], [ 4, %133 ], [ 4, %44 ], [ 4, %88 ], [ 4, %195 ], [ 4, %191 ]
  ret i32 %197
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_points(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load i64, ptr %1, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !38
  %10 = tail call i32 @gx_path_add_point(ptr noundef %0, i64 noundef %7, i64 noundef %9) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 1
  %14 = add nsw i32 %2, -1
  %15 = tail call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %14, i32 noundef 0) #11
  br label %18

16:                                               ; preds = %4
  %17 = tail call i32 @gx_path_add_lines_notes(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #11
  br label %18

18:                                               ; preds = %12, %6, %16
  %19 = phi i32 [ %17, %16 ], [ %15, %12 ], [ %10, %6 ]
  ret i32 %19
}

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_lines_notes(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_partial_arc_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"gx_path_s", !7, i64 0, !10, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !13, i64 64, !13, i64 68, !11, i64 72, !14, i64 88, !14, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gs_fixed_rect_s", !11, i64 0, !11, i64 16}
!11 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!12 = !{!"long", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!"gs_point_s", !15, i64 0, !15, i64 8}
!15 = !{!"double", !8, i64 0}
!16 = !{!6, !13, i64 68}
!17 = !{!6, !13, i64 64}
!18 = !{!19, !7, i64 8}
!19 = !{!"subpath_s", !7, i64 0, !7, i64 8, !20, i64 16, !20, i64 18, !11, i64 24, !7, i64 40, !13, i64 48, !21, i64 56, !8, i64 104}
!20 = !{!"short", !8, i64 0}
!21 = !{!"", !7, i64 0, !7, i64 8, !20, i64 16, !20, i64 18, !11, i64 24, !7, i64 40}
!22 = !{!23, !7, i64 8}
!23 = !{!"segment_s", !7, i64 0, !7, i64 8, !20, i64 16, !20, i64 18, !11, i64 24}
!24 = !{!23, !20, i64 16}
!25 = !{!26, !13, i64 16}
!26 = !{!"gs_imager_state_s", !7, i64 0, !27, i64 8, !30, i64 80, !13, i64 128, !20, i64 132, !13, i64 136, !28, i64 140, !11, i64 144, !13, i64 160, !13, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!27 = !{!"gx_line_params_s", !28, i64 0, !13, i64 4, !13, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !29, i64 32}
!28 = !{!"float", !8, i64 0}
!29 = !{!"gx_dash_params_s", !7, i64 0, !13, i64 8, !28, i64 12, !13, i64 16, !28, i64 20, !13, i64 24, !13, i64 28, !28, i64 32}
!30 = !{!"gs_matrix_fixed_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !12, i64 24, !12, i64 32, !13, i64 40}
!31 = !{!26, !28, i64 20}
!32 = !{!26, !28, i64 8}
!33 = !{!26, !28, i64 80}
!34 = !{!26, !28, i64 88}
!35 = !{!26, !28, i64 84}
!36 = !{!26, !28, i64 92}
!37 = !{!11, !12, i64 0}
!38 = !{!11, !12, i64 8}
!39 = !{!27, !13, i64 40}
!40 = !{!27, !28, i64 20}
!41 = !{!27, !28, i64 0}
!42 = !{i32 -13, i32 1}
!43 = !{!10, !12, i64 8}
!44 = !{!10, !12, i64 0}
!45 = !{!10, !12, i64 24}
!46 = !{!10, !12, i64 16}
!47 = !{!26, !12, i64 144}
!48 = !{!26, !12, i64 152}
!49 = !{!50, !7, i64 480}
!50 = !{!"gx_device_s", !13, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !13, i64 44, !51, i64 48, !13, i64 64, !13, i64 68, !8, i64 72, !8, i64 80, !13, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !13, i64 160, !52, i64 168, !53, i64 192}
!51 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14}
!52 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!53 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!54 = !{!55, !7, i64 488}
!55 = !{!"gx_device_clip_s", !13, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !13, i64 44, !51, i64 48, !13, i64 64, !13, i64 68, !8, i64 72, !8, i64 80, !13, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !13, i64 160, !52, i64 168, !53, i64 192, !7, i64 488, !56, i64 496, !7, i64 560, !58, i64 568}
!56 = !{!"gx_clip_list_s", !57, i64 0, !7, i64 40, !7, i64 48, !13, i64 56, !13, i64 60}
!57 = !{!"gx_clip_rect_s", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !8, i64 32}
!58 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!59 = !{!50, !13, i64 44}
!60 = !{!55, !13, i64 44}
!61 = !{!50, !7, i64 192}
!62 = !{!63, !13, i64 0}
!63 = !{!"gx_fill_params_s", !13, i64 0, !11, i64 8, !28, i64 24, !13, i64 28}
!64 = !{!26, !28, i64 140}
!65 = !{!63, !28, i64 24}
!66 = !{!63, !13, i64 28}
!67 = !{!27, !28, i64 24}
!68 = !{!69, !28, i64 4}
!69 = !{!"gs_matrix_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!70 = !{!69, !28, i64 12}
!71 = !{!72, !28, i64 0}
!72 = !{!"gx_stroke_params_s", !28, i64 0}
!73 = !{!26, !13, i64 164}
!74 = !{!6, !7, i64 0}
!75 = !{!23, !12, i64 24}
!76 = !{!23, !12, i64 32}
!77 = !{!19, !8, i64 104}
!78 = !{!79, !12, i64 0}
!79 = !{!"partial_line_s", !80, i64 0, !80, i64 64, !11, i64 128, !13, i64 144}
!80 = !{!"endpoint_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!81 = !{!79, !12, i64 8}
!82 = !{!79, !12, i64 64}
!83 = !{!79, !12, i64 72}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !85}
!87 = !{!27, !13, i64 4}
!88 = !{!19, !7, i64 0}
!89 = !{!7, !7, i64 0}
!90 = !{!79, !13, i64 144}
!91 = !{!79, !12, i64 112}
!92 = !{!79, !12, i64 120}
!93 = !{!79, !12, i64 128}
!94 = !{!79, !12, i64 136}
!95 = !{!14, !15, i64 0}
!96 = !{!14, !15, i64 8}
!97 = !{!26, !13, i64 160}
!98 = !{!12, !12, i64 0}
!99 = !{!79, !12, i64 16}
!100 = !{!79, !12, i64 24}
!101 = !{!79, !12, i64 48}
!102 = !{!79, !12, i64 56}
!103 = !{!79, !12, i64 32}
!104 = !{!79, !12, i64 40}
!105 = !{!79, !12, i64 80}
!106 = !{!79, !12, i64 88}
!107 = !{!79, !12, i64 96}
!108 = !{!79, !12, i64 104}
!109 = !{!27, !13, i64 8}
!110 = !{!23, !20, i64 18}
!111 = !{ptr @stroke_add, ptr @stroke_fill}
!112 = !{!63, !12, i64 8}
!113 = !{!63, !12, i64 16}
!114 = !{!50, !7, i64 384}
!115 = !{i64 0, i64 8, !98, i64 8, i64 8, !98, i64 16, i64 8, !98, i64 24, i64 8, !98, i64 32, i64 8, !98, i64 40, i64 8, !98, i64 48, i64 8, !98, i64 56, i64 8, !98, i64 64, i64 8, !98, i64 72, i64 8, !98, i64 80, i64 8, !98, i64 88, i64 8, !98, i64 96, i64 8, !98, i64 104, i64 8, !98, i64 112, i64 8, !98, i64 120, i64 8, !98, i64 128, i64 8, !98, i64 136, i64 8, !98, i64 144, i64 4, !116}
!116 = !{!13, !13, i64 0}
!117 = distinct !{!117, !85}
!118 = !{!50, !7, i64 432}
!119 = !{!26, !13, i64 128}
!120 = !{i32 -29, i32 4}
!121 = !{i32 4, i32 6}
!122 = !{!50, !7, i64 424}
!123 = !{!50, !7, i64 416}
!124 = !{!80, !12, i64 0}
!125 = !{!80, !12, i64 48}
!126 = !{!80, !12, i64 8}
!127 = !{!80, !12, i64 56}
!128 = !{!80, !12, i64 16}
!129 = !{!80, !12, i64 24}
!130 = !{!80, !12, i64 32}
!131 = !{!80, !12, i64 40}
!132 = !{!27, !28, i64 16}
