; ModuleID = 'blender/source/blender/modifiers/intern/MOD_uvproject.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_uvproject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Projector = type { ptr, [4 x [4 x float]], [3 x float], ptr }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.rctf = type { float, float, float, float }
%struct.UVProjectModifierData = type { %struct.ModifierData, [10 x ptr], ptr, i32, i32, float, float, float, float, [64 x i8], i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }

@modifierType_UVProject = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"UVProject\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"UVProjectModifierData\00\00\00\00\00\00\00\00\00\00\00", i32 296, i32 5, i32 29, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr @foreachIDLink, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"uvprojectModifier_do coords\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"UV Project Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 {
  %5 = alloca [10 x %struct.Projector], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca %struct.CameraParams, align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %17 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !43
  %19 = fcmp une float %18, 0.000000e+00
  %20 = select i1 %19, float %18, float 1.000000e+00
  %21 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 6
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = fcmp une float %22, 0.000000e+00
  %24 = select i1 %23, float %22, float 1.000000e+00
  %25 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !45
  %27 = fcmp une float %26, 0.000000e+00
  %28 = select i1 %27, float %26, float 1.000000e+00
  %29 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 8
  %30 = load float, ptr %29, align 4, !tbaa !46
  %31 = fcmp une float %30, 0.000000e+00
  %32 = select i1 %31, float %30, float 1.000000e+00
  %33 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !47
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %4
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %48
  %39 = phi i64 [ 0, %36 ], [ %50, %48 ]
  %40 = phi i32 [ 0, %36 ], [ %49, %48 ]
  %41 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = add nsw i32 %40, 1
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %46
  store ptr %42, ptr %47, align 16, !tbaa !49
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i32 [ %45, %44 ], [ %40, %38 ]
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %37
  br i1 %51, label %52, label %38, !llvm.loop !51

52:                                               ; preds = %48, %4
  %53 = phi i32 [ 0, %4 ], [ %49, %48 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %320, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %57 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %56, i32 noundef 16) #6
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %320, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 9
  call void @CustomData_validate_layer_name(ptr noundef nonnull %56, i32 noundef 16, ptr noundef nonnull %60, ptr noundef nonnull %6) #6
  %61 = icmp sgt i32 %53, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 19
  %64 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 19, i32 1
  %65 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 19, i32 2
  %66 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 19, i32 3
  %67 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 20
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 2
  %70 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 1
  %71 = zext nneg i32 %53 to i64
  br label %72

72:                                               ; preds = %62, %104
  %73 = phi i64 [ 0, %62 ], [ %111, %104 ]
  %74 = phi i32 [ 0, %62 ], [ %105, %104 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  %75 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %73
  %76 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %73, i32 1
  %77 = load ptr, ptr %75, align 16, !tbaa !49
  %78 = getelementptr inbounds %struct.Object, ptr %77, i64 0, i32 47
  %79 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %76, ptr noundef nonnull %78) #6
  %80 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %73, i32 3
  store ptr null, ptr %80, align 8, !tbaa !54
  %81 = load ptr, ptr %75, align 16, !tbaa !49
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !55
  %84 = icmp eq i16 %83, 11
  br i1 %84, label %85, label %103

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 19
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.Camera, ptr %87, i64 0, i32 2
  %89 = load i8, ptr %88, align 8, !tbaa !63
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call ptr @BLI_uvproject_camera_info(ptr noundef %81, ptr noundef null, float noundef %20, float noundef %24) #6
  store ptr %92, ptr %80, align 8, !tbaa !54
  call void @BLI_uvproject_camera_info_scale(ptr noundef %92, float noundef %28, float noundef %32) #6
  br label %104

93:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %9) #6
  call void @BKE_camera_params_init(ptr noundef nonnull %9) #6
  %94 = load ptr, ptr %75, align 16, !tbaa !49
  call void @BKE_camera_params_from_object(ptr noundef nonnull %9, ptr noundef %94) #6
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %9, i32 noundef 1, i32 noundef 1, float noundef %20, float noundef %24) #6
  %95 = load float, ptr %63, align 4, !tbaa !65
  %96 = fmul float %28, %95
  store float %96, ptr %63, align 4, !tbaa !65
  %97 = load float, ptr %64, align 4, !tbaa !68
  %98 = fmul float %28, %97
  store float %98, ptr %64, align 4, !tbaa !68
  %99 = load float, ptr %65, align 4, !tbaa !69
  %100 = fmul float %32, %99
  store float %100, ptr %65, align 4, !tbaa !69
  %101 = load float, ptr %66, align 4, !tbaa !70
  %102 = fmul float %32, %101
  store float %102, ptr %66, align 4, !tbaa !70
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %9) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %67, ptr noundef nonnull %76) #6
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %9) #6
  br label %104

103:                                              ; preds = %72
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %76) #6
  br label %104

104:                                              ; preds = %103, %93, %91
  %105 = phi i32 [ 1, %91 ], [ %74, %93 ], [ %74, %103 ]
  call void @unit_m4(ptr noundef nonnull %8) #6
  call void @mul_mat3_m4_fl(ptr noundef nonnull %8, float noundef 5.000000e-01) #6
  store float 5.000000e-01, ptr %69, align 8, !tbaa !71
  store float 5.000000e-01, ptr %70, align 4, !tbaa !71
  store float 5.000000e-01, ptr %68, align 16, !tbaa !71
  call void @mul_m4_m4m4(ptr noundef nonnull %76, ptr noundef nonnull %8, ptr noundef nonnull %7) #6
  %106 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %73, i32 2
  store float 0.000000e+00, ptr %106, align 8, !tbaa !71
  %107 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %73, i32 2, i64 1
  store float 0.000000e+00, ptr %107, align 4, !tbaa !71
  %108 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %73, i32 2, i64 2
  store float 1.000000e+00, ptr %108, align 16, !tbaa !71
  %109 = load ptr, ptr %75, align 16, !tbaa !49
  %110 = getelementptr inbounds %struct.Object, ptr %109, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %110, ptr noundef nonnull %106) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  %111 = add nuw nsw i64 %73, 1
  %112 = icmp eq i64 %111, %71
  br i1 %112, label %113, label %72, !llvm.loop !72

113:                                              ; preds = %104
  %114 = icmp ne i32 %105, 0
  br label %115

115:                                              ; preds = %113, %59
  %116 = phi i1 [ false, %59 ], [ %114, %113 ]
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %118 = load ptr, ptr %117, align 8, !tbaa !73
  %119 = call i32 %118(ptr noundef %2) #6
  %120 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %121 = load ptr, ptr %120, align 8, !tbaa !76
  %122 = call i32 %121(ptr noundef %2) #6
  %123 = call ptr @CustomData_duplicate_referenced_layer_named(ptr noundef nonnull %56, i32 noundef 16, ptr noundef nonnull %6, i32 noundef %122) #6
  %124 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %125 = call ptr @CustomData_duplicate_referenced_layer_named(ptr noundef nonnull %124, i32 noundef 15, ptr noundef nonnull %6, i32 noundef %119) #6
  %126 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %127 = load ptr, ptr %126, align 8, !tbaa !77
  %128 = call i32 %127(ptr noundef %2) #6
  %129 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %130 = sext i32 %128 to i64
  %131 = mul nsw i64 %130, 12
  %132 = call ptr %129(i64 noundef %131, ptr noundef nonnull @.str) #6
  %133 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %134 = load ptr, ptr %133, align 8, !tbaa !78
  call void %134(ptr noundef %2, ptr noundef %132) #6
  %135 = icmp sgt i32 %128, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %115
  %137 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %138

138:                                              ; preds = %136, %138
  %139 = phi ptr [ %132, %136 ], [ %142, %138 ]
  %140 = phi i32 [ 0, %136 ], [ %141, %138 ]
  call void @mul_m4_v3(ptr noundef nonnull %137, ptr noundef %139) #6
  %141 = add nuw nsw i32 %140, 1
  %142 = getelementptr inbounds [3 x float], ptr %139, i64 1
  %143 = icmp eq i32 %141, %128
  br i1 %143, label %144, label %138, !llvm.loop !79

144:                                              ; preds = %138, %115
  %145 = icmp eq i32 %53, 1
  %146 = getelementptr inbounds %struct.Projector, ptr %5, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, null
  %149 = select i1 %145, i1 %148, i1 false
  %150 = icmp sgt i32 %128, 0
  %151 = and i1 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.Projector, ptr %5, i64 0, i32 1
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi ptr [ %132, %152 ], [ %158, %154 ]
  %156 = phi i32 [ 0, %152 ], [ %157, %154 ]
  call void @mul_project_m4_v3(ptr noundef nonnull %153, ptr noundef %155) #6
  %157 = add nuw nsw i32 %156, 1
  %158 = getelementptr inbounds [3 x float], ptr %155, i64 1
  %159 = icmp eq i32 %157, %128
  br i1 %159, label %160, label %154, !llvm.loop !80

160:                                              ; preds = %154, %144
  %161 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %162 = load ptr, ptr %161, align 8, !tbaa !81
  %163 = call ptr %162(ptr noundef %2) #6
  %164 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %165 = load ptr, ptr %164, align 8, !tbaa !82
  %166 = call ptr %165(ptr noundef %2) #6
  %167 = icmp sgt i32 %119, 0
  br i1 %167, label %168, label %300

168:                                              ; preds = %160
  %169 = icmp eq ptr %12, null
  %170 = select i1 %16, i1 true, i1 %169
  %171 = icmp eq ptr %125, null
  %172 = select i1 %170, i1 true, i1 %171
  %173 = getelementptr inbounds %struct.Projector, ptr %5, i64 0, i32 2
  %174 = getelementptr inbounds %struct.Projector, ptr %5, i64 0, i32 2, i64 1
  %175 = getelementptr inbounds float, ptr %10, i64 1
  %176 = getelementptr inbounds %struct.Projector, ptr %5, i64 0, i32 2, i64 2
  %177 = getelementptr inbounds float, ptr %10, i64 2
  %178 = icmp sgt i32 %53, 1
  %179 = icmp ne ptr %125, null
  %180 = select i1 %16, i1 %179, i1 false
  %181 = zext nneg i32 %53 to i64
  br label %182

182:                                              ; preds = %168, %295
  %183 = phi ptr [ %125, %168 ], [ %298, %295 ]
  %184 = phi i32 [ 0, %168 ], [ %296, %295 ]
  %185 = phi ptr [ %163, %168 ], [ %297, %295 ]
  br i1 %172, label %189, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr %183, align 8, !tbaa !83
  %188 = icmp eq ptr %187, %12
  br i1 %188, label %189, label %293

189:                                              ; preds = %186, %182
  br i1 %145, label %190, label %225

190:                                              ; preds = %189
  %191 = load ptr, ptr %146, align 8, !tbaa !54
  %192 = icmp eq ptr %191, null
  %193 = getelementptr inbounds %struct.MPoly, ptr %185, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !85
  br i1 %192, label %208, label %195

195:                                              ; preds = %190, %195
  %196 = phi i32 [ %197, %195 ], [ %194, %190 ]
  %197 = add i32 %196, -1
  %198 = load i32, ptr %185, align 4, !tbaa !87
  %199 = add i32 %198, %197
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.MLoop, ptr %166, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !88
  %203 = getelementptr inbounds %struct.MLoopUV, ptr %123, i64 %200
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds [3 x float], ptr %132, i64 %204
  %206 = load ptr, ptr %146, align 8, !tbaa !54
  call void @BLI_uvproject_from_camera(ptr noundef %203, ptr noundef %205, ptr noundef %206) #6
  %207 = icmp eq i32 %197, 0
  br i1 %207, label %293, label %195, !llvm.loop !90

208:                                              ; preds = %190
  %209 = load i32, ptr %185, align 4, !tbaa !87
  br label %210

210:                                              ; preds = %210, %208
  %211 = phi i32 [ %194, %208 ], [ %212, %210 ]
  %212 = add i32 %211, -1
  %213 = add i32 %209, %212
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.MLoop, ptr %166, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !88
  %217 = getelementptr inbounds %struct.MLoopUV, ptr %123, i64 %214
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds [3 x float], ptr %132, i64 %218
  %220 = load float, ptr %219, align 4, !tbaa !71
  store float %220, ptr %217, align 4, !tbaa !71
  %221 = getelementptr inbounds float, ptr %219, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !71
  %223 = getelementptr inbounds float, ptr %217, i64 1
  store float %222, ptr %223, align 4, !tbaa !71
  %224 = icmp eq i32 %212, 0
  br i1 %224, label %293, label %210, !llvm.loop !91

225:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #6
  %226 = load i32, ptr %185, align 4, !tbaa !87
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.MLoop, ptr %166, i64 %227
  call void @BKE_mesh_calc_poly_normal_coords(ptr noundef nonnull %185, ptr noundef %228, ptr noundef %132, ptr noundef nonnull %10) #6
  %229 = load float, ptr %10, align 4, !tbaa !71
  %230 = load float, ptr %175, align 4, !tbaa !71
  %231 = load float, ptr %177, align 4, !tbaa !71
  br i1 %178, label %232, label %258

232:                                              ; preds = %225
  %233 = load float, ptr %176, align 16, !tbaa !71
  %234 = load float, ptr %173, align 8, !tbaa !71
  %235 = load float, ptr %174, align 4, !tbaa !71
  %236 = fmul float %235, %230
  %237 = call float @llvm.fmuladd.f32(float %234, float %229, float %236)
  %238 = call float @llvm.fmuladd.f32(float %233, float %231, float %237)
  br label %239

239:                                              ; preds = %232, %239
  %240 = phi i64 [ 1, %232 ], [ %256, %239 ]
  %241 = phi float [ %238, %232 ], [ %255, %239 ]
  %242 = phi ptr [ %5, %232 ], [ %254, %239 ]
  %243 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %240, i32 2
  %244 = load float, ptr %243, align 8, !tbaa !71
  %245 = getelementptr inbounds float, ptr %243, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !71
  %247 = fmul float %230, %246
  %248 = call float @llvm.fmuladd.f32(float %244, float %229, float %247)
  %249 = getelementptr inbounds float, ptr %243, i64 2
  %250 = load float, ptr %249, align 16, !tbaa !71
  %251 = call float @llvm.fmuladd.f32(float %250, float %231, float %248)
  %252 = fcmp ogt float %251, %241
  %253 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %240
  %254 = select i1 %252, ptr %253, ptr %242
  %255 = select i1 %252, float %251, float %241
  %256 = add nuw nsw i64 %240, 1
  %257 = icmp eq i64 %256, %181
  br i1 %257, label %258, label %239, !llvm.loop !92

258:                                              ; preds = %239, %225
  %259 = phi ptr [ %5, %225 ], [ %254, %239 ]
  %260 = getelementptr inbounds %struct.Projector, ptr %259, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !54
  %262 = icmp eq ptr %261, null
  %263 = getelementptr inbounds %struct.MPoly, ptr %185, i64 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !85
  br i1 %262, label %278, label %265

265:                                              ; preds = %258, %265
  %266 = phi i32 [ %267, %265 ], [ %264, %258 ]
  %267 = add i32 %266, -1
  %268 = load i32, ptr %185, align 4, !tbaa !87
  %269 = add i32 %268, %267
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.MLoop, ptr %166, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !88
  %273 = getelementptr inbounds %struct.MLoopUV, ptr %123, i64 %270
  %274 = zext i32 %272 to i64
  %275 = getelementptr inbounds [3 x float], ptr %132, i64 %274
  %276 = load ptr, ptr %260, align 8, !tbaa !54
  call void @BLI_uvproject_from_camera(ptr noundef %273, ptr noundef %275, ptr noundef %276) #6
  %277 = icmp eq i32 %267, 0
  br i1 %277, label %292, label %265, !llvm.loop !93

278:                                              ; preds = %258
  %279 = getelementptr inbounds %struct.Projector, ptr %259, i64 0, i32 1
  br label %280

280:                                              ; preds = %280, %278
  %281 = phi i32 [ %264, %278 ], [ %282, %280 ]
  %282 = add i32 %281, -1
  %283 = load i32, ptr %185, align 4, !tbaa !87
  %284 = add i32 %283, %282
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.MLoop, ptr %166, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !88
  %288 = getelementptr inbounds %struct.MLoopUV, ptr %123, i64 %285
  %289 = zext i32 %287 to i64
  %290 = getelementptr inbounds [3 x float], ptr %132, i64 %289
  call void @mul_v2_project_m4_v3(ptr noundef %288, ptr noundef nonnull %279, ptr noundef %290) #6
  %291 = icmp eq i32 %282, 0
  br i1 %291, label %292, label %280, !llvm.loop !94

292:                                              ; preds = %265, %280
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #6
  br label %293

293:                                              ; preds = %195, %210, %292, %186
  br i1 %180, label %294, label %295

294:                                              ; preds = %293
  store ptr %12, ptr %183, align 8, !tbaa !83
  br label %295

295:                                              ; preds = %294, %293
  %296 = add nuw nsw i32 %184, 1
  %297 = getelementptr inbounds %struct.MPoly, ptr %185, i64 1
  %298 = getelementptr inbounds %struct.MTexPoly, ptr %183, i64 1
  %299 = icmp eq i32 %296, %119
  br i1 %299, label %300, label %182, !llvm.loop !95

300:                                              ; preds = %295, %160
  %301 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %301(ptr noundef %132) #6
  %302 = icmp sgt i32 %53, 0
  %303 = and i1 %116, %302
  br i1 %303, label %304, label %316

304:                                              ; preds = %300
  %305 = zext i32 %53 to i64
  br label %306

306:                                              ; preds = %304, %313
  %307 = phi i64 [ 0, %304 ], [ %314, %313 ]
  %308 = getelementptr inbounds [10 x %struct.Projector], ptr %5, i64 0, i64 %307, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !54
  %310 = icmp eq ptr %309, null
  br i1 %310, label %313, label %311

311:                                              ; preds = %306
  %312 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %312(ptr noundef nonnull %309) #6
  br label %313

313:                                              ; preds = %311, %306
  %314 = add nuw nsw i64 %307, 1
  %315 = icmp eq i64 %314, %305
  br i1 %315, label %316, label %306, !llvm.loop !96

316:                                              ; preds = %313, %300
  %317 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %318 = load i32, ptr %317, align 8, !tbaa !97
  %319 = or i32 %318, 1
  store i32 %319, ptr %317, align 8, !tbaa !97
  br label %320

320:                                              ; preds = %52, %55, %316
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #6
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 4
  store i32 1, ptr %3, align 4, !tbaa !47
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %7, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i64 31
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %5, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %5 ]
  %11 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %12) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %15, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #6
  br label %16

16:                                               ; preds = %9, %14
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %6, align 4, !tbaa !47
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %9, label %21, !llvm.loop !98

21:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  br label %5

5:                                                ; preds = %4, %5
  %6 = phi i64 [ 0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #6
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 10
  br i1 %9, label %10, label %5, !llvm.loop !99

10:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %8) #6
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 10
  br i1 %10, label %11, label %6, !llvm.loop !99

11:                                               ; preds = %6
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_uvproject_camera_info(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @BLI_uvproject_camera_info_scale(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #3

declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #3

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CustomData_duplicate_referenced_layer_named(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_project_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_uvproject_from_camera(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mesh_calc_poly_normal_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_v2_project_m4_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !37, i64 192}
!35 = !{!"UVProjectModifierData", !36, i64 0, !38, i64 112, !37, i64 192, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !38, i64 224, !40, i64 288, !40, i64 292}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !40, i64 200}
!43 = !{!35, !41, i64 208}
!44 = !{!35, !41, i64 212}
!45 = !{!35, !41, i64 216}
!46 = !{!35, !41, i64 220}
!47 = !{!35, !40, i64 204}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !37, i64 0}
!50 = !{!"Projector", !37, i64 0, !38, i64 8, !38, i64 72, !37, i64 88}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!50, !37, i64 88}
!55 = !{!56, !58, i64 136}
!56 = !{!"Object", !57, i64 0, !37, i64 120, !37, i64 128, !58, i64 136, !58, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !59, i64 312, !37, i64 360, !60, i64 368, !60, i64 384, !60, i64 400, !60, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !58, i64 948, !58, i64 950, !58, i64 952, !58, i64 954, !58, i64 956, !58, i64 958, !58, i64 960, !58, i64 962, !58, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !58, i64 1036, !58, i64 1038, !58, i64 1040, !38, i64 1042, !38, i64 1043, !58, i64 1044, !38, i64 1046, !38, i64 1047, !41, i64 1048, !41, i64 1052, !60, i64 1056, !60, i64 1072, !60, i64 1088, !60, i64 1104, !41, i64 1120, !58, i64 1124, !58, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !58, i64 1162, !38, i64 1164, !60, i64 1176, !60, i64 1192, !60, i64 1208, !60, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !58, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !61, i64 1304, !61, i64 1312, !40, i64 1320, !40, i64 1324, !60, i64 1328, !60, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !60, i64 1400, !37, i64 1416}
!57 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !58, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!58 = !{!"short", !38, i64 0}
!59 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !58, i64 16, !58, i64 18, !58, i64 20, !58, i64 22, !58, i64 24, !58, i64 26, !58, i64 28, !58, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!60 = !{!"ListBase", !37, i64 0, !37, i64 8}
!61 = !{!"long", !38, i64 0}
!62 = !{!56, !37, i64 296}
!63 = !{!64, !38, i64 128}
!64 = !{!"Camera", !57, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !58, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!65 = !{!66, !41, i64 76}
!66 = !{!"CameraParams", !38, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !67, i64 76, !38, i64 92}
!67 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!68 = !{!66, !41, i64 80}
!69 = !{!66, !41, i64 84}
!70 = !{!66, !41, i64 88}
!71 = !{!41, !41, i64 0}
!72 = distinct !{!72, !52, !53}
!73 = !{!74, !37, i64 1136}
!74 = !{!"DerivedMesh", !75, i64 0, !75, i64 200, !75, i64 400, !75, i64 600, !75, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!75 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!76 = !{!74, !37, i64 1128}
!77 = !{!74, !37, i64 1104}
!78 = !{!74, !37, i64 1536}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = !{!74, !37, i64 1200}
!82 = !{!74, !37, i64 1192}
!83 = !{!84, !37, i64 0}
!84 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !58, i64 10, !58, i64 12, !58, i64 14}
!85 = !{!86, !40, i64 4}
!86 = !{!"MPoly", !40, i64 0, !40, i64 4, !58, i64 8, !38, i64 10, !38, i64 11}
!87 = !{!86, !40, i64 0}
!88 = !{!89, !40, i64 0}
!89 = !{!"MLoop", !40, i64 0, !40, i64 4}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = !{!74, !40, i64 1056}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
