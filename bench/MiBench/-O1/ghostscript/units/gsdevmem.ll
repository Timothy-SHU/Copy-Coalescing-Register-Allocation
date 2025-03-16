; ModuleID = 'gsdevmem.c'
source_filename = "gsdevmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"gs_makeimagedevice(palette)\00", align 1
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"gs_makeimagedevice(device)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_initialize_wordimagedevice(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [768 x i8], align 16
  %11 = alloca %struct.gs_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %10) #6
  switch i32 %5, label %176 [
    i32 6, label %12
    i32 2, label %22
    i32 12, label %13
    i32 4, label %14
    i32 48, label %15
    i32 16, label %16
    i32 768, label %17
    i32 256, label %18
    i32 -16, label %19
    i32 -24, label %20
    i32 -32, label %21
  ]

12:                                               ; preds = %9
  br label %22

13:                                               ; preds = %9
  br label %22

14:                                               ; preds = %9
  br label %22

15:                                               ; preds = %9
  br label %22

16:                                               ; preds = %9
  br label %22

17:                                               ; preds = %9
  br label %22

18:                                               ; preds = %9
  br label %22

19:                                               ; preds = %9
  br label %22

20:                                               ; preds = %9
  br label %22

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %17, %15, %13, %12, %9, %21, %20, %19, %18, %16, %14
  %23 = phi i32 [ 0, %21 ], [ 0, %20 ], [ 0, %19 ], [ %5, %9 ], [ 2, %12 ], [ 4, %13 ], [ %5, %14 ], [ 16, %15 ], [ %5, %16 ], [ 256, %17 ], [ %5, %18 ]
  %24 = phi i1 [ true, %21 ], [ true, %20 ], [ true, %19 ], [ true, %9 ], [ false, %12 ], [ false, %13 ], [ true, %14 ], [ false, %15 ], [ true, %16 ], [ false, %17 ], [ true, %18 ]
  %25 = phi i1 [ false, %21 ], [ false, %20 ], [ false, %19 ], [ true, %9 ], [ true, %12 ], [ true, %13 ], [ true, %14 ], [ true, %15 ], [ true, %16 ], [ true, %17 ], [ true, %18 ]
  %26 = phi i1 [ false, %21 ], [ false, %20 ], [ false, %19 ], [ true, %9 ], [ true, %12 ], [ false, %13 ], [ false, %14 ], [ false, %15 ], [ false, %16 ], [ false, %17 ], [ false, %18 ]
  %27 = phi i32 [ 32, %21 ], [ 24, %20 ], [ 16, %19 ], [ 1, %9 ], [ 1, %12 ], [ 2, %13 ], [ 2, %14 ], [ 4, %15 ], [ 4, %16 ], [ 8, %17 ], [ 8, %18 ]
  %28 = icmp eq i32 %6, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @gdev_mem_word_device_for_bits(i32 noundef %27) #6
  br label %33

31:                                               ; preds = %22
  %32 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %27) #6
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %30, %29 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %176, label %36

36:                                               ; preds = %33
  %37 = mul nuw nsw i32 %23, 3
  br i1 %25, label %38, label %91

38:                                               ; preds = %36
  %39 = tail call i32 @llvm.umax.i32(i32 %23, i32 1)
  br label %40

40:                                               ; preds = %38, %78
  %41 = phi i32 [ %85, %78 ], [ 0, %38 ]
  %42 = phi i32 [ %80, %78 ], [ 0, %38 ]
  %43 = phi ptr [ %86, %78 ], [ %10, %38 ]
  %44 = phi ptr [ %60, %78 ], [ %4, %38 ]
  %45 = phi i32 [ %84, %78 ], [ 0, %38 ]
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  br i1 %24, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = load i8, ptr %44, align 1, !tbaa !5
  %50 = getelementptr inbounds i8, ptr %43, i64 2
  store i8 %49, ptr %50, align 1, !tbaa !5
  store i8 %49, ptr %46, align 1, !tbaa !5
  store i8 %49, ptr %43, align 1, !tbaa !5
  br label %59

51:                                               ; preds = %40
  %52 = load i8, ptr %44, align 1, !tbaa !5
  store i8 %52, ptr %43, align 1, !tbaa !5
  %53 = getelementptr inbounds i8, ptr %44, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !5
  store i8 %54, ptr %46, align 1, !tbaa !5
  %55 = getelementptr inbounds i8, ptr %44, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = getelementptr inbounds i8, ptr %43, i64 2
  store i8 %56, ptr %57, align 1, !tbaa !5
  %58 = getelementptr inbounds i8, ptr %44, i64 3
  br label %59

59:                                               ; preds = %51, %47
  %60 = phi ptr [ %48, %47 ], [ %58, %51 ]
  %61 = load i8, ptr %43, align 1, !tbaa !5
  %62 = icmp eq i8 %61, 0
  %63 = zext i1 %62 to i32
  %64 = icmp eq i8 %61, -1
  %65 = select i1 %64, i32 16, i32 %63
  %66 = getelementptr inbounds i8, ptr %43, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !5
  switch i8 %67, label %70 [
    i8 -1, label %68
    i8 0, label %71
  ]

68:                                               ; preds = %59
  %69 = shl nuw nsw i32 %65, 2
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %68, %59
  %72 = phi i32 [ 0, %70 ], [ %65, %59 ], [ %69, %68 ]
  %73 = getelementptr inbounds i8, ptr %43, i64 2
  %74 = load i8, ptr %73, align 1, !tbaa !5
  switch i8 %74, label %77 [
    i8 -1, label %75
    i8 0, label %78
  ]

75:                                               ; preds = %71
  %76 = shl nuw nsw i32 %72, 1
  br label %78

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %75, %71
  %79 = phi i32 [ 0, %77 ], [ %72, %71 ], [ %76, %75 ]
  %80 = or i32 %79, %42
  %81 = icmp eq i8 %61, %67
  %82 = icmp eq i8 %61, %74
  %83 = and i1 %81, %82
  %84 = select i1 %83, i32 %45, i32 1
  %85 = add nuw nsw i32 %41, 1
  %86 = getelementptr inbounds i8, ptr %43, i64 3
  %87 = icmp eq i32 %85, %39
  br i1 %87, label %88, label %40, !llvm.loop !8

88:                                               ; preds = %78
  switch i32 %80, label %176 [
    i32 129, label %89
    i32 255, label %91
  ]

89:                                               ; preds = %88
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %91, label %176

91:                                               ; preds = %88, %89, %36
  %92 = phi i32 [ 1, %36 ], [ %84, %89 ], [ %84, %88 ]
  %93 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !10
  %95 = fcmp oeq float %94, 0.000000e+00
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  %98 = load float, ptr %97, align 4, !tbaa !13
  %99 = fcmp oeq float %98, 0.000000e+00
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  br label %111

102:                                              ; preds = %96, %91
  %103 = load float, ptr %1, align 4, !tbaa !14
  %104 = fcmp oeq float %103, 0.000000e+00
  br i1 %104, label %105, label %176

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  %107 = load float, ptr %106, align 4, !tbaa !15
  %108 = fcmp oeq float %107, 0.000000e+00
  br i1 %108, label %109, label %176

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  br label %111

111:                                              ; preds = %109, %100
  %112 = phi ptr [ %1, %100 ], [ %110, %109 ]
  %113 = phi ptr [ %101, %100 ], [ %93, %109 ]
  %114 = load float, ptr %113, align 4, !tbaa !16
  %115 = load float, ptr %112, align 4, !tbaa !16
  br i1 %26, label %121, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 12
  %118 = load ptr, ptr %117, align 8, !tbaa !17
  %119 = tail call ptr %118(ptr noundef %8, i32 noundef %37, ptr noundef nonnull @.str) #6
  %120 = icmp eq ptr %119, null
  br i1 %120, label %176, label %121

121:                                              ; preds = %116, %111
  %122 = phi ptr [ %119, %116 ], [ undef, %111 ]
  %123 = icmp eq i32 %7, 0
  %124 = select i1 %123, i32 -1, i32 1
  tail call void @gs_make_mem_device(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %8, i32 noundef %124, ptr noundef null) #6
  %125 = icmp eq i32 %92, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7
  store i32 1, ptr %127, align 8, !tbaa !21
  %128 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 3
  store i16 0, ptr %128, align 2, !tbaa !32
  %129 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 5
  store i16 0, ptr %129, align 2, !tbaa !33
  br label %130

130:                                              ; preds = %126, %121
  br i1 %26, label %131, label %141

131:                                              ; preds = %130
  %132 = load i8, ptr %10, align 16, !tbaa !5
  %133 = getelementptr inbounds [768 x i8], ptr %10, i64 0, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !5
  %135 = or i8 %134, %132
  %136 = getelementptr inbounds [768 x i8], ptr %10, i64 0, i64 2
  %137 = load i8, ptr %136, align 2, !tbaa !5
  %138 = or i8 %135, %137
  %139 = icmp ne i8 %138, 0
  %140 = zext i1 %139 to i32
  tail call void @gdev_mem_mono_set_inverted(ptr noundef %0, i32 noundef %140) #6
  br label %145

141:                                              ; preds = %130
  %142 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  %143 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29, i32 1
  store i32 %37, ptr %143, align 8, !tbaa !34
  store ptr %122, ptr %142, align 8, !tbaa !35
  %144 = zext nneg i32 %37 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr nonnull align 16 %10, i64 %144, i1 false)
  br label %145

145:                                              ; preds = %141, %131
  %146 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %146, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !36
  %147 = tail call float @llvm.fabs.f32(float %115)
  %148 = fmul float %147, 7.200000e+01
  %149 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 13
  store float %148, ptr %149, align 4, !tbaa !16
  %150 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 14
  store float %148, ptr %150, align 4, !tbaa !16
  %151 = tail call float @llvm.fabs.f32(float %114)
  %152 = fmul float %151, 7.200000e+01
  %153 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 13, i64 1
  store float %152, ptr %153, align 4, !tbaa !16
  %154 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 14, i64 1
  store float %152, ptr %154, align 4, !tbaa !16
  tail call void @gx_device_set_width_height(ptr noundef %0, i32 noundef %2, i32 noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #6
  %155 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  %156 = uitofp i32 %2 to double
  %157 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store double %156, ptr %157, align 8, !tbaa !37
  %158 = uitofp i32 %3 to double
  %159 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  store double %158, ptr %159, align 8, !tbaa !41
  %160 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %11) #6
  %161 = load double, ptr %11, align 8, !tbaa !42
  %162 = fptrunc double %161 to float
  %163 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 11
  store float %162, ptr %163, align 8, !tbaa !16
  %164 = load double, ptr %155, align 8, !tbaa !43
  %165 = fptrunc double %164 to float
  %166 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 11, i64 1
  store float %165, ptr %166, align 4, !tbaa !16
  %167 = load double, ptr %157, align 8, !tbaa !37
  %168 = fptrunc double %167 to float
  %169 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 11, i64 2
  store float %168, ptr %169, align 8, !tbaa !16
  %170 = load double, ptr %159, align 8, !tbaa !41
  %171 = fptrunc double %170 to float
  %172 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 11, i64 3
  store float %171, ptr %172, align 4, !tbaa !16
  %173 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 12
  store i32 1, ptr %173, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #6
  %174 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %174, align 8, !tbaa !45
  %175 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 28
  store ptr %8, ptr %175, align 8, !tbaa !46
  br label %176

176:                                              ; preds = %116, %102, %105, %89, %88, %33, %9, %145
  %177 = phi i32 [ 0, %145 ], [ -15, %9 ], [ -15, %33 ], [ -15, %88 ], [ -15, %89 ], [ -23, %105 ], [ -23, %102 ], [ -25, %116 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %10) #6
  ret i32 %177
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gdev_mem_word_device_for_bits(i32 noundef) local_unnamed_addr #2

declare ptr @gdev_mem_device_for_bits(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @gs_make_mem_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gdev_mem_mono_set_inverted(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @gx_device_set_width_height(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_bbox_transform_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_makewordimagedevice(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = tail call ptr %11(ptr noundef %8, ptr noundef nonnull @st_device_memory, ptr noundef nonnull @.str.1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @gs_initialize_wordimagedevice(ptr noundef nonnull %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8), !range !48
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  tail call void %19(ptr noundef %8, ptr noundef nonnull %12, ptr noundef nonnull @.str.1) #6
  br label %21

20:                                               ; preds = %14
  store ptr %12, ptr %0, align 8, !tbaa !50
  br label %21

21:                                               ; preds = %9, %20, %17
  %22 = phi i32 [ %15, %17 ], [ 0, %20 ], [ -25, %9 ]
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !12, i64 4}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !12, i64 12}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !20, i64 96}
!18 = !{!"gs_memory_s", !19, i64 0}
!19 = !{!"gs_memory_procs_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!22, !23, i64 48}
!22 = !{!"gx_device_memory_s", !23, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !23, i64 40, !23, i64 44, !24, i64 48, !23, i64 64, !23, i64 68, !6, i64 72, !6, i64 80, !23, i64 96, !6, i64 100, !6, i64 108, !6, i64 116, !6, i64 124, !26, i64 144, !26, i64 152, !23, i64 160, !27, i64 168, !28, i64 192, !20, i64 488, !11, i64 496, !23, i64 520, !23, i64 524, !20, i64 528, !20, i64 536, !20, i64 544, !29, i64 552, !30, i64 568, !31, i64 592, !23, i64 600, !23, i64 604, !23, i64 608, !23, i64 612, !23, i64 616, !26, i64 624}
!23 = !{!"int", !6, i64 0}
!24 = !{!"gx_device_color_info_s", !23, i64 0, !23, i64 4, !25, i64 8, !25, i64 10, !25, i64 12, !25, i64 14}
!25 = !{!"short", !6, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"gx_page_device_procs_s", !20, i64 0, !20, i64 8, !20, i64 16}
!28 = !{!"gx_device_procs_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !20, i64 128, !20, i64 136, !20, i64 144, !20, i64 152, !20, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !20, i64 208, !20, i64 216, !20, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !20, i64 288}
!29 = !{!"gs_const_string_s", !20, i64 0, !23, i64 8}
!30 = !{!"_c24", !26, i64 0, !23, i64 8, !23, i64 12, !23, i64 16}
!31 = !{!"gs_log2_scale_point_s", !23, i64 0, !23, i64 4}
!32 = !{!22, !25, i64 58}
!33 = !{!22, !25, i64 62}
!34 = !{!22, !23, i64 560}
!35 = !{!22, !20, i64 552}
!36 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16}
!37 = !{!38, !40, i64 16}
!38 = !{!"gs_rect_s", !39, i64 0, !39, i64 16}
!39 = !{!"gs_point_s", !40, i64 0, !40, i64 8}
!40 = !{!"double", !6, i64 0}
!41 = !{!38, !40, i64 24}
!42 = !{!38, !40, i64 0}
!43 = !{!38, !40, i64 8}
!44 = !{!22, !23, i64 96}
!45 = !{!22, !23, i64 40}
!46 = !{!22, !20, i64 544}
!47 = !{!18, !20, i64 16}
!48 = !{i32 -25, i32 1}
!49 = !{!18, !20, i64 88}
!50 = !{!20, !20, i64 0}
