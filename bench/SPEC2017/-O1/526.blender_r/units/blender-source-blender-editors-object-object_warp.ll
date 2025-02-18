; ModuleID = 'blender/source/blender/editors/object/object_warp.c'
source_filename = "blender/source/blender/editors/object/object_warp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.TransVertStore = type { ptr, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.TransVert = type { ptr, [3 x float], [3 x float], [3 x float], i32 }

@.str = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Warp vertices around the cursor\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_vertex_warp\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"warp_angle\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Warp Angle\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Amount to warp about the cursor\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"offset_angle\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Offset Angle\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Angle to use as the basis for warping\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"viewmat\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Center\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_warp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_warp_verts_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_transverts_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 0x401921FB60000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #6
  tail call void @RNA_def_property_subtype(ptr noundef %9, i32 noundef 327696) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #6
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 327696) #6
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.9, float noundef -1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, float noundef -1.000000e+02, float noundef 1.000000e+02) #6
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.12, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, float noundef -1.000000e+02, float noundef 1.000000e+02) #6
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_float_matrix(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 4, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  tail call void @RNA_def_property_flag(ptr noundef %17, i32 noundef 268959744) #6
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %18, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #6
  tail call void @RNA_def_property_flag(ptr noundef %19, i32 noundef 268959744) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_warp_verts_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca %struct.TransVertStore, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.3) #6
  %15 = load ptr, ptr %12, align 8, !tbaa !48
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %7, ptr noundef %17, i32 noundef 3) #6
  %18 = load ptr, ptr %7, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %190, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %12, align 8, !tbaa !48
  %22 = call ptr @RNA_struct_find_property(ptr noundef %21, ptr noundef nonnull @.str.14) #6
  %23 = load ptr, ptr %12, align 8, !tbaa !48
  %24 = call zeroext i8 @RNA_property_is_set(ptr noundef %23, ptr noundef %22) #6
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_property_float_get_array(ptr noundef %27, ptr noundef %22, ptr noundef nonnull %8) #6
  br label %36

28:                                               ; preds = %20
  %29 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %29, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %32) #6
  br label %34

33:                                               ; preds = %28
  call void @unit_m4(ptr noundef nonnull %8) #6
  br label %34

34:                                               ; preds = %33, %31
  %35 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_property_float_set_array(ptr noundef %35, ptr noundef %22, ptr noundef nonnull %8) #6
  br label %36

36:                                               ; preds = %34, %26
  %37 = load ptr, ptr %12, align 8, !tbaa !48
  %38 = call ptr @RNA_struct_find_property(ptr noundef %37, ptr noundef nonnull @.str.16) #6
  %39 = load ptr, ptr %12, align 8, !tbaa !48
  %40 = call zeroext i8 @RNA_property_is_set(ptr noundef %39, ptr noundef %38) #6
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_property_float_get_array(ptr noundef %43, ptr noundef %38, ptr noundef nonnull %9) #6
  br label %56

44:                                               ; preds = %36
  %45 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %46 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %47 = call ptr @ED_view3d_cursor3d_get(ptr noundef %45, ptr noundef %46) #6
  %48 = load float, ptr %47, align 4, !tbaa !53
  store float %48, ptr %9, align 4, !tbaa !53
  %49 = getelementptr inbounds float, ptr %47, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !53
  %51 = getelementptr inbounds float, ptr %9, i64 1
  store float %50, ptr %51, align 4, !tbaa !53
  %52 = getelementptr inbounds float, ptr %47, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !53
  %54 = getelementptr inbounds float, ptr %9, i64 2
  store float %53, ptr %54, align 4, !tbaa !53
  %55 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_property_float_set_array(ptr noundef %55, ptr noundef %38, ptr noundef nonnull %9) #6
  br label %56

56:                                               ; preds = %44, %42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  call void @unit_m4(ptr noundef nonnull %5) #6
  call void @rotate_m4(ptr noundef nonnull %5, i8 noundef zeroext 90, float noundef %16) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8) #6
  %57 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %57) #6
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  %58 = load ptr, ptr %12, align 8, !tbaa !48
  %59 = call ptr @RNA_struct_find_property(ptr noundef %58, ptr noundef nonnull @.str.9) #6
  %60 = load ptr, ptr %12, align 8, !tbaa !48
  %61 = call ptr @RNA_struct_find_property(ptr noundef %60, ptr noundef nonnull @.str.12) #6
  %62 = load ptr, ptr %12, align 8, !tbaa !48
  %63 = call zeroext i8 @RNA_property_is_set(ptr noundef %62, ptr noundef %59) #6
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load ptr, ptr %12, align 8, !tbaa !48
  %67 = call zeroext i8 @RNA_property_is_set(ptr noundef %66, ptr noundef %61) #6
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65, %56
  %70 = load ptr, ptr %12, align 8, !tbaa !48
  %71 = call float @RNA_property_float_get(ptr noundef %70, ptr noundef %59) #6
  %72 = load ptr, ptr %12, align 8, !tbaa !48
  %73 = call float @RNA_property_float_get(ptr noundef %72, ptr noundef %61) #6
  br label %117

74:                                               ; preds = %65
  %75 = getelementptr inbounds [4 x float], ptr %10, i64 3
  %76 = load float, ptr %75, align 16, !tbaa !53
  %77 = load float, ptr %11, align 4, !tbaa !53
  %78 = getelementptr inbounds %struct.TransVertStore, ptr %7, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !55
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %74
  %82 = load ptr, ptr %7, align 8, !tbaa !50
  %83 = load float, ptr %10, align 16, !tbaa !53
  %84 = getelementptr inbounds [4 x float], ptr %10, i64 1
  %85 = load float, ptr %84, align 16, !tbaa !53
  %86 = getelementptr inbounds [4 x float], ptr %10, i64 2
  %87 = load float, ptr %86, align 16, !tbaa !53
  br label %88

88:                                               ; preds = %81, %88
  %89 = phi float [ 0x47EFFFFFE0000000, %81 ], [ %103, %88 ]
  %90 = phi i32 [ 0, %81 ], [ %106, %88 ]
  %91 = phi ptr [ %82, %81 ], [ %107, %88 ]
  %92 = phi float [ 0xC7EFFFFFE0000000, %81 ], [ %105, %88 ]
  %93 = load ptr, ptr %91, align 8, !tbaa !56
  %94 = load float, ptr %93, align 4, !tbaa !53
  %95 = getelementptr inbounds float, ptr %93, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !53
  %97 = fmul float %85, %96
  %98 = call float @llvm.fmuladd.f32(float %83, float %94, float %97)
  %99 = getelementptr inbounds float, ptr %93, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !53
  %101 = call float @llvm.fmuladd.f32(float %87, float %100, float %98)
  %102 = fcmp olt float %89, %101
  %103 = select i1 %102, float %89, float %101
  %104 = fcmp ogt float %92, %101
  %105 = select i1 %104, float %92, float %101
  %106 = add nuw nsw i32 %90, 1
  %107 = getelementptr inbounds %struct.TransVert, ptr %91, i64 1
  %108 = icmp eq i32 %106, %79
  br i1 %108, label %109, label %88, !llvm.loop !58

109:                                              ; preds = %88, %74
  %110 = phi float [ 0xC7EFFFFFE0000000, %74 ], [ %105, %88 ]
  %111 = phi float [ 0x47EFFFFFE0000000, %74 ], [ %103, %88 ]
  %112 = fsub float %76, %77
  %113 = fadd float %112, %111
  %114 = fadd float %112, %110
  %115 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_property_float_set(ptr noundef %115, ptr noundef %59, float noundef %113) #6
  %116 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_property_float_set(ptr noundef %116, ptr noundef %61, float noundef %114) #6
  br label %117

117:                                              ; preds = %109, %69
  %118 = phi float [ %113, %109 ], [ %71, %69 ]
  %119 = phi float [ %114, %109 ], [ %73, %69 ]
  %120 = fcmp ogt float %118, %119
  %121 = select i1 %120, float %119, float %118
  %122 = select i1 %120, float %118, float %119
  %123 = fcmp une float %121, %122
  br i1 %123, label %124, label %189

124:                                              ; preds = %117
  %125 = fneg float %14
  %126 = fsub float %122, %121
  %127 = fdiv float 1.000000e+00, %126
  %128 = call float @llvm.fmuladd.f32(float %126, float 5.000000e-01, float %121)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %129 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %10) #6
  %130 = fmul float %14, -5.000000e-01
  %131 = call float @cosf(float noundef %130) #6
  %132 = call float @sinf(float noundef %130) #6
  %133 = fneg float %131
  %134 = getelementptr inbounds %struct.TransVertStore, ptr %7, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !55
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %188

137:                                              ; preds = %124
  %138 = load ptr, ptr %7, align 8, !tbaa !50
  %139 = getelementptr inbounds float, ptr %11, i64 1
  %140 = getelementptr inbounds float, ptr %4, i64 1
  br label %141

141:                                              ; preds = %137, %162
  %142 = phi ptr [ %138, %137 ], [ %185, %162 ]
  %143 = phi i32 [ 0, %137 ], [ %184, %162 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %144 = load ptr, ptr %142, align 8, !tbaa !56
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef %144) #6
  %145 = load float, ptr %11, align 4, !tbaa !53
  %146 = load float, ptr %4, align 4, !tbaa !53
  %147 = fsub float %146, %145
  store float %147, ptr %4, align 4, !tbaa !53
  %148 = load float, ptr %139, align 4, !tbaa !53
  %149 = load float, ptr %140, align 4, !tbaa !53
  %150 = fsub float %149, %148
  store float %150, ptr %140, align 4, !tbaa !53
  %151 = fcmp olt float %147, %121
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = fsub float %121, %147
  %154 = fmul float %153, %133
  %155 = fmul float %132, %153
  br label %162

156:                                              ; preds = %141
  %157 = fcmp ogt float %147, %122
  br i1 %157, label %158, label %162

158:                                              ; preds = %156
  %159 = fsub float %147, %122
  %160 = fmul float %131, %159
  %161 = fmul float %132, %159
  br label %162

162:                                              ; preds = %158, %156, %152
  %163 = phi float [ %155, %152 ], [ %161, %158 ], [ 0.000000e+00, %156 ]
  %164 = phi float [ %154, %152 ], [ %160, %158 ], [ 0.000000e+00, %156 ]
  %165 = phi float [ %121, %152 ], [ %122, %158 ], [ %147, %156 ]
  %166 = fsub float %165, %128
  %167 = fmul float %127, %166
  %168 = fmul float %167, %125
  %169 = call float @sinf(float noundef %168) #6
  %170 = fneg float %169
  %171 = load float, ptr %140, align 4, !tbaa !53
  %172 = fmul float %171, %170
  store float %172, ptr %4, align 4, !tbaa !53
  %173 = call float @cosf(float noundef %168) #6
  %174 = load float, ptr %140, align 4, !tbaa !53
  %175 = fmul float %173, %174
  store float %175, ptr %140, align 4, !tbaa !53
  %176 = load float, ptr %4, align 4, !tbaa !53
  %177 = fadd float %164, %176
  store float %177, ptr %4, align 4, !tbaa !53
  %178 = fadd float %163, %175
  store float %178, ptr %140, align 4, !tbaa !53
  %179 = load float, ptr %11, align 4, !tbaa !53
  %180 = fadd float %177, %179
  store float %180, ptr %4, align 4, !tbaa !53
  %181 = load float, ptr %139, align 4, !tbaa !53
  %182 = fadd float %178, %181
  store float %182, ptr %140, align 4, !tbaa !53
  %183 = load ptr, ptr %142, align 8, !tbaa !56
  call void @mul_v3_m4v3(ptr noundef %183, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  %184 = add nuw nsw i32 %143, 1
  %185 = getelementptr inbounds %struct.TransVert, ptr %142, i64 1
  %186 = load i32, ptr %134, align 8, !tbaa !55
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %141, label %188, !llvm.loop !61

188:                                              ; preds = %162, %124
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  br label %189

189:                                              ; preds = %188, %117
  call void @ED_transverts_update_obedit(ptr noundef nonnull %7, ptr noundef %17) #6
  call void @ED_transverts_free(ptr noundef nonnull %7) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %17) #6
  br label %190

190:                                              ; preds = %2, %189
  %191 = phi i32 [ 4, %189 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  ret i32 %191
}

declare i32 @ED_transverts_poll(ptr noundef) #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_matrix(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @ED_transverts_create_from_obedit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ED_transverts_update_obedit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_transverts_free(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!51, !36, i64 0}
!51 = !{!"TransVertStore", !36, i64 0, !52, i64 8, !52, i64 12}
!52 = !{!"int", !37, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!51, !52, i64 8}
!56 = !{!57, !36, i64 0}
!57 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !52, i64 44}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
